`timescale 1ns / 1ps

module top_I2C_Slave (
    input  logic       clk,
    input  logic       reset,
    inout  logic       sda,
    input  logic       scl,
    input  logic [3:0] btn,
    output logic [3:0] an,
    output logic [7:0] seg
);
    logic [7:0] slv_reg0;
    logic [7:0] slv_reg1;
    logic [7:0] slv_reg2;
    logic [7:0] slv_reg3;

    I2C_Slave u_I2C_Slave (
        .clk     (clk),
        .reset   (reset),
        .sda     (sda),
        .scl     (scl),
        .slv_reg0(slv_reg0),
        .slv_reg1(slv_reg1),
        .slv_reg2(slv_reg2),
        .slv_reg3(slv_reg3)
    );

    logic [7:0] bcd;
    always_ff @( posedge clk ) begin : blockName
        case (bcd)
            4'b0001: bcd = slv_reg0;
            4'b0010: bcd = slv_reg1;
            4'b0100: bcd = slv_reg2;
            4'b1000: bcd = slv_reg3;
        endcase
    end

    fndController u_fndController (
        .clk    (clk),
        .reset  (reset),
        .fndData(slv_reg0),
        .fndDot (4'b1111),
        .fndCom (an),
        .fndFont(seg)
    );

endmodule
