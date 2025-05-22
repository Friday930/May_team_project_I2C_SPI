`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/05/21 16:26:02
// Design Name: 
// Module Name: I2C_Master
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module I2C_Master (
    input            clk,
    input            reset,
    input      [7:0] tx_data,
    output reg       tx_done,
    output reg       ready,
    input            start,
    input            i2c_en,
    input            stop,
    // external port
    output reg       SCL,
    inout            SDA
);
    localparam IDLE, START1, START2, 
    WDATA1, WDATA2, WDATA3, WDATA4, HOLD,
    ADRR_WITE, READ, ACK1, ACK2, 
    STOP1, STOP2;

    reg [3:0] state, next;
    reg [7:0] temp_tx_data_reg, temp_tx_data_next;
    reg [$clog2(499)-1:0] clk_counter_reg, clk_counter_next;
    reg [2:0] bit_counter_reg, bit_counter_next;
    reg Master_Mode, Master_Mode_next;

    reg Master_SDA, SDA_IO;
    assign SDA = SDA_IO ? SDA : Master_SDA;

    always @(posedge clk, posedge reset) begin  // Write state_logic
        if (reset) begin
            state <= 0;
            temp_tx_data_reg <= 0;
            clk_counter_reg <= 0;
            bit_counter_reg <= 0;
            Master_Mode <= 1'b0;
        end else begin
            state            <= next;
            temp_tx_data_reg <= temp_tx_data_next;
            clk_counter_reg  <= clk_counter_next;
            bit_counter_reg  <= bit_counter_next;
            Master_Mode      <= Master_Mode_next;
        end
    end

    always @(*) begin  // Write next_logic
        Master_SDA        = 1;
        SCL               = 1;
        tx_done           = 0;
        ready             = 0;
        next              = state;
        temp_tx_data_next = temp_tx_data_reg;
        clk_counter_next  = clk_counter_reg;
        bit_counter_next  = bit_counter_reg;
        Master_Mode_next  = Master_Mode;
        SDA_IO = Master_Mode;
        case (state)
            IDLE: begin
                Master_Mode_next = 1'b0;
                tx_done = 0;
                ready = 0;
                Master_SDA = 1;
                SCL = 1;
                if (i2c_en) begin
                    if (start) begin
                        Master_Mode_next = tx_data[0];
                        temp_tx_data_next = tx_data;
                        next = START1;
                    end
                end
            end
            START1: begin
                Master_SDA = 0;
                SCL = 1;
                if (clk_counter_reg == 499) begin
                    clk_counter_next = 0;
                    next = START2;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            START2: begin
                Master_SDA = 0;
                SCL = 0;
                if (clk_counter_reg == 499) begin
                    clk_counter_next = 0;
                    next = Master_Mode ? ADRR_WITE : WDATA1;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            ////////////////////////////////write/////////////////////////////////
            WDATA1: begin
                Master_SDA = temp_tx_data_reg[7];
                SCL = 0;
                if (clk_counter_reg == 249) begin
                    clk_counter_next = 0;
                    next = WDATA2;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            WDATA2: begin
                Master_SDA = temp_tx_data_reg[7];
                SCL = 1;
                if (clk_counter_reg == 249) begin
                    clk_counter_next = 0;
                    next = WDATA3;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            WDATA3: begin
                Master_SDA = temp_tx_data_reg[7];
                SCL = 1;
                if (clk_counter_reg == 249) begin
                    clk_counter_next = 0;
                    next = WDATA3;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            WDATA4: begin
                Master_SDA = temp_tx_data_reg[7];
                SCL = 0;
                if (clk_counter_reg == 249) begin
                    clk_counter_next = 0;
                    if (bit_counter_reg == 7) begin
                        next = HOLD;
                        bit_counter_next = 0;
                    end else begin
                        bit_counter_next  = bit_counter_reg;
                        temp_tx_data_next = {temp_tx_data_reg[6:0], 1'b0};
                    end
                end else begin
                    clk_counter_next = clk_counter_reg;
                end
            end
            HOLD: begin
                tx_done = 1'b0;
                Master_SDA = 0;
                SCL = 0;
                ready = 1'b1;
                if (SCL == 1 && Master_SDA == 1) begin
                    next = STOP1;
                end else if (SCL == 1 && Master_SDA == 0) begin
                    next = WDATA1;
                end
            end
            //////////////////////////////////////////////////////////////////////
            ACK1: begin
                Master_SDA = 0;
                SCL = 1;
                if (clk_counter_reg == 499) begin
                    clk_counter_next = 0;
                    next = ACK2;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            ACK2: begin
                Master_SDA = 0;
                SCL = 1;
                if (clk_counter_reg == 499) begin
                    clk_counter_next = 0;
                    next = HOLD;
                    tx_done = 1'b1;
                    ready = 1'b1;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            STOP1: begin
                Master_SDA = 0;
                SCL = 1;
                if (clk_counter_reg == 499) begin
                    clk_counter_next = 0;
                    next = STOP2;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
            STOP2: begin
                Master_SDA = 1;
                SCL = 1;
                if (clk_counter_reg == 499) begin
                    clk_counter_next = 0;
                    next = IDLE;
                end else begin
                    clk_counter_next = clk_counter_reg + 1;
                end
            end
        endcase
    end
endmodule
