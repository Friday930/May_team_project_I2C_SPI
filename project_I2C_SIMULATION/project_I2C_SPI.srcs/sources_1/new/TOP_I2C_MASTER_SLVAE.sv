`timescale 1ns / 1ps

module TOP_I2C_MASTER_SLAVE(
    input logic clk,
    input logic reset,

    input logic [3:0] CMD,
    input logic [7:0] tx_data,
    output logic [7:0] rx_data,
    output logic ready,
    output logic tx_done,
    output logic rx_done
    
    );
    logic sda_IO_out;
    logic [3:0] curr_state;
    wire sda;
    logic scl;
    logic [7:0] slv_reg0, slv_reg1, slv_reg2, slv_reg3;

    I2C_Slave u_I2C_Slave (.*);

    I2C_Master u_I2C_MASTER (.*);

endmodule
