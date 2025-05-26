`timescale 1ns / 1ps

module TB_I2C_MASTER_SLAVE ();

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

    I2C_Master MS (.*);

    I2C_Slave #(7'b0000000) SL (
        .*,
        .slv_reg0(),
        .slv_reg1(),
        .slv_reg2(),
        .slv_reg3(),
        .ready()
    );

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
        ACK1 = 11,
        ACK2 = 12,
        ACK3 = 13,
        DATA_END= 15;

    logic [7:0] data_box;
    int box_count;

    always #5 clk = ~clk;

    logic d1, d2, fall, rising;
    always_ff @(posedge clk) begin
        d1 <= scl;
        d2 <= d1;
    end
    assign rising = d1 && ~d2;

    task WriteData(logic [7:0] data);
        tx_data = data;  // write to slave 0
        CMD = WR_CMD;
        wait (MS.state == DATA1);
        CMD = IDLE_CMD;
        wait (MS.state == HOLD);
    endtask  //

    task startTransmission();
        // START
        CMD = START_CMD;
        wait (MS.state == START1);
        CMD = IDLE_CMD;
        wait (MS.state == HOLD);
    endtask  //

    task stopTransmission();
        CMD = STOP_CMD;
        wait (MS.state == STOP1);
    endtask  //

    initial begin
        clk   = 0;
        reset = 1;
        CMD   = IDLE_CMD;
        #10 reset = 0;
        repeat (3) @(posedge clk);

        // START
        startTransmission();
        WriteData(0);  // Slave Addr Write
        WriteData(1);  // Word Addr Write
        WriteData(8'haa);  // data Write_1

        stopTransmission();
        startTransmission();
        WriteData(0);  // Slave Addr Write
        WriteData(3);  // Word Addr Write
        WriteData(8'hbb);  // data Write_1

        stopTransmission();
        startTransmission();
        WriteData(0);  // Slave Addr Write
        WriteData(2);  // Word Addr Write
        WriteData(8'hcc);  // data Write_1

        stopTransmission();
        startTransmission();
        WriteData(0);  // Slave Addr Write
        WriteData(0);  // Word Addr Write
        WriteData(8'hdd);  // data Write_1

        repeat (3000) @(posedge clk);

        #100 $finish;
    end

endmodule
