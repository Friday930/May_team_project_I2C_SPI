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
    logic tx_done;
    logic rx_done;
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
        .tx_done(tx_done),
        .rx_done(rx_done),
        .sda    (sda),
        .scl    (scl)
    );

    // three state buffer
    logic sda_SOMI;
    assign master_IO_sel = u_I2C_Master.sda_IO;
    assign sda = master_IO_sel ? sda_SOMI : 1'bz;

    // data_box
    logic [7:0] data_box;
    int box_count;

    always #5 clk = ~clk;

    logic d1, d2, fall, rising;
    // edge detector
    always_ff @(posedge clk) begin : edge_detector
        d1 <= scl;
        d2 <= d1;
    end
    assign rising = d1 && ~d2;

    initial begin
        clk = 0;
        reset = 1;
        sda_SOMI = 1'bz;
        CMD = IDLE_CMD;
        #10 reset = 0;
        repeat (3) @(posedge clk);

        // idle: start protocol
        CMD = START_CMD;
        wait (u_I2C_Master.state == START1);  // wait for start1
        CMD = IDLE_CMD;
        wait (u_I2C_Master.state == HOLD);  // wait for HOLD

        begin  // I2C_Write_Init(choose Slave target, set start address)
            // Slave Addr Write
            CMD = WR_CMD;
            tx_data = 8'b0000000_0;  // write at slave0
            wait (u_I2C_Master.state == DATA1);
            CMD = IDLE_CMD;
            wait (u_I2C_Master.state == DATA_END1);  // wait data_end
            sda_SOMI = 0;  // sda Slave Out Master In ACK: 0
            wait (u_I2C_Master.state == HOLD);
            sda_SOMI = 1'bz;

            // Word Addr Write
            CMD = WR_CMD;
            tx_data = 8'b0000000_0;  // start slv_reg0
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
        box_count = 0;
        // save data in temp box
        data_box = 0;
        while (1) begin
            if (box_count == 8) begin
                box_count = 0;
                break;
            end else begin
                @(posedge rising) data_box = {data_box[6:0], sda};
                box_count++;
            end
        end
        $display("Wtire Data End!! data_box: %h, TxData: %h", data_box,
                 tx_data);
        wait (u_I2C_Master.state == DATA_END1);
        sda_SOMI = 1;  // SLAVE Response(ACK): 1 (end protocol)
        wait (u_I2C_Master.state == STOP1);
        sda_SOMI = 1'bz;
        wait (ready == 1) $display("protocol finish.");

        repeat(3000) @(posedge clk);

        // idle: start protocol
        CMD = START_CMD;
        wait (u_I2C_Master.state == START1);  // wait for start1
        CMD = IDLE_CMD;
        wait (u_I2C_Master.state == HOLD);  // wait for HOLD

        begin  // I2C_Read_Init(choose Slave target, set start address)
            // Slave Addr Write
            CMD = WR_CMD;
            tx_data = 8'b0000000_1;  // read at slave0
            wait (u_I2C_Master.state == DATA1);
            CMD = IDLE_CMD;
            wait (u_I2C_Master.state == DATA_END1);  // wait data_end
            sda_SOMI = 0;  // sda Slave Out Master In ACK: 0
            wait (u_I2C_Master.state == HOLD);
            sda_SOMI = 1'bz;

            // Word Addr Write
            CMD = WR_CMD;
            tx_data = 8'b0000000_0;  // start slv_reg0
            wait (u_I2C_Master.state == DATA1);
            CMD = IDLE_CMD;
            wait (u_I2C_Master.state == DATA_END1);  // wait data_end
            sda_SOMI = 0;  // SLAVE Response(ACK): 0 (continue protocol)
            wait (u_I2C_Master.state == HOLD);
            sda_SOMI = 1'bz;

            // restart
            CMD = RESTART_CMD;
            wait (u_I2C_Master.state == START1);  // wait for start1
            CMD = IDLE_CMD;
            wait (u_I2C_Master.state == HOLD);  // wait for HOLD
        end

        // Data Read
        CMD = RD_CMD;
        wait (u_I2C_Master.state == DATA1);  // wait for DATA1
        sda_SOMI = 1'b1;
        wait (u_I2C_Master.state == DATA_END1);  // wait for DATA_END1
        $display("Read Data End!! RxData: %h", rx_data);
        sda_SOMI = 1'b0;
        wait (u_I2C_Master.state == HOLD);  // wait for HOLD
        sda_SOMI = 1'bz;
        wait (u_I2C_Master.state == DATA1);  // wait for DATA1
        sda_SOMI = 1'b0;
        wait (u_I2C_Master.state == DATA_END1);  // wait for DATA_END1
        $display("Read Data End!! RxData: %h", rx_data);
        sda_SOMI = 1'b1;
        wait (u_I2C_Master.state == STOP1);
        sda_SOMI = 1'bz;
        wait (ready == 1) $display("protocol finish.");

        #100 $finish;
    end
endmodule
