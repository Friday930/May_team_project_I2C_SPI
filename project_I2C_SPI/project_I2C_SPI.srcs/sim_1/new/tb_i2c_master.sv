`timescale 1ns / 1ps

module tb_I2C_master_only ();
    localparam
        IDLE_CMD = 0,
        START_CMD = 1,
        STOP_CMD = 2,
        RESTART_CMD = 3,
        RD_CMD = 4,
        WR_CMD = 5;

    localparam
        IDLE= 0,
        START1= 1,
        START2= 2,
        HOLD= 3,
        STOP1= 4,
        STOP2= 5,
        RESTART= 6,
        DATA1= 7,
        DATA2= 8,
        DATA3= 9,
        DATA4= 10,
        DATA_END1= 11,
        DATA_END2= 12;

    logic clk;
    logic reset;
    logic [3:0] CMD;
    logic [7:0] tx_data;
    logic [7:0] rx_data;
    logic done;
    logic ready;
    wire sda;
    logic scl;

    I2C_Master u_I2C_Master (
        .clk    (clk),
        .reset  (reset),
        .ready  (ready),
        .CMD    (CMD),
        .tx_data(tx_data),
        .rx_data(rx_data),
        .done   (done),
        .sda    (sda),
        .scl    (scl)
    );

    // three state buffer
    logic sda_SOMI;
    assign master_IO_sel = u_I2C_Master.sda_IO;
    assign sda = master_IO_sel ? sda_SOMI : 1'bz;

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        sda_SOMI = 1'bz;
        CMD = IDLE_CMD;
        #10 reset = 0;
        repeat(3) @(posedge clk);

        // idle: start protocol
        CMD = START_CMD;
        wait (u_I2C_Master.state == START1);  // wait for start1
        CMD = IDLE_CMD;
        wait (u_I2C_Master.state == HOLD);  // wait for HOLD

        begin  // I2C_Init(choose Slave target, set start address)
            // Slave Addr Write
            CMD = WR_CMD;
            tx_data = 8'b0000000_0;  // use slave0
            wait (u_I2C_Master.state == DATA1);
            CMD = IDLE_CMD;
            wait (u_I2C_Master.state == DATA_END1);  // wait data_end
            sda_SOMI = 0;  // sda Slave Out Master In ACK: 0
            wait (u_I2C_Master.state == HOLD);
            sda_SOMI = 1'bz;

            // Word Addr Write
            CMD = WR_CMD;
            tx_data = 8'b0000000_0;  // use slv_reg0
            wait (u_I2C_Master.state == DATA1);
            CMD = IDLE_CMD;
            wait (u_I2C_Master.state == DATA_END1);  // wait data_end
            sda_SOMI = 0;  // SLAVE Response(ACK): 0 (continue protocol)
            wait (u_I2C_Master.state == HOLD);
            sda_SOMI = 1'bz;
        end

        // Data Write
        CMD = WR_CMD;
        tx_data = 8'haa;  // write data set
        wait (u_I2C_Master.state == DATA1);
        CMD = IDLE_CMD;
        wait (u_I2C_Master.state == DATA_END1);  // wait data_end
        sda_SOMI = 1;  // SLAVE Response(ACK): 1 (end protocol)
        wait (u_I2C_Master.state == DATA_END2);  // wait SCL on
        wait (u_I2C_Master.state == STOP1);
        sda_SOMI = 1'bz;
        wait(ready == 1) $display("protocol finish.");
        #100 $finish;
    end
endmodule
