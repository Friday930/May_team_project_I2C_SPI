`timescale 1ns / 1ps

module top_I2C_Slave (
    input  logic       clk,
    input  logic       reset,
    inout  logic       sda,
    input  logic       scl,
    input  logic       btn,
    output logic [3:0] an,
    output logic [7:0] seg,
    output logic       ready
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
        .slv_reg3(slv_reg3),
        .ready   (ready)
    );

    btn_debounce u_btn_debounce (
        .clk  (clk),
        .reset(reset),
        .i_btn(btn),
        .o_btn(btdb)
    );

    logic [1:0] sel;
    always_ff @(posedge btdb, posedge reset) begin : blockName
        if (reset) begin
            sel = 0;
        end else sel <= sel + 1;
    end

    logic [7:0] bcd;
    always_comb begin : fndDataSel
        case (sel)
            0: bcd = slv_reg0;
            1: bcd = slv_reg1;
            2: bcd = slv_reg2;
            3: bcd = slv_reg3;
        endcase
    end

    fndController u_fndController (
        .clk    (clk),
        .reset  (reset),
        .fndData(bcd),
        .fndDot (4'b1111),
        .fndCom (an),
        .fndFont(seg)
    );

endmodule
