`timescale 1ns / 1ps

module tb_master ();

    logic       clk;
    logic       reset;
    logic       cpol;
    logic       cpha;
    logic       start;
    logic [7:0] tx_data;
    logic [7:0] rx_data;
    logic       done;
    logic       ready;
    logic       SCLK;
    logic       MOSI;
    logic       MISO;
    logic       SS;
    logic [3:0 ] fndCom;
    logic [7:0 ] fndFont;
    

    SPI_Master dut (.*);
    SPI_Slave slave_dut (.*);

    always #5 clk = ~clk;

    initial begin
        clk   = 0;
        reset = 1;
        #10 reset = 0;
        SS = 1;

        repeat (5) @(posedge clk);

        SS = 0;
        @(posedge clk);
        tx_data = 8'b10000000;
        start = 1;
        cpol = 0;
        cpha = 0;
        @(posedge clk);
        start = 0;
        wait (done == 1);
        @(posedge clk);

        @(posedge clk);
        tx_data = 8'h11;
        start = 1;
        cpol = 0;
        cpha = 0;
        @(posedge clk);
        start = 0;
        wait (done == 1);
        @(posedge clk);

        @(posedge clk);
        tx_data = 8'h21;
        start = 1;
        cpol = 0;
        cpha = 0;
        @(posedge clk);
        start = 0;
        wait (done == 1);
        @(posedge clk);

        @(posedge clk);
        tx_data = 8'h31;
        start = 1;
        cpol = 0;
        cpha = 0;
        @(posedge clk);
        start = 0;
        wait (done == 1);
        @(posedge clk);

        @(posedge clk);
        tx_data = 8'h41;
        start = 1;
        cpol = 0;
        cpha = 0;
        @(posedge clk);
        start = 0;
        wait (done == 1);
        @(posedge clk);

        SS = 1; // 통신종료(slave select = 1)

        repeat (5) @(posedge clk)

        SS = 0;
        @(posedge clk);
        tx_data = 8'b00000001;
        start = 1;
        cpol = 0;
        cpha = 0;
        @(posedge clk);
        start = 0;
        wait (done == 1);

        for (int i = 0; i < 4; i++) begin
            @(posedge clk);
            start = 1;
            @(posedge clk);
            start = 0;
            wait (done == 1);
            @(posedge clk);
        end

        SS = 1;

        #2000 $finish;

    end

endmodule
