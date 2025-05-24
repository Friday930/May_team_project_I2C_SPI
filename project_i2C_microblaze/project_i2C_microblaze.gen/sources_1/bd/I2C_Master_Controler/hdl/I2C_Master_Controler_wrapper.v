//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun May 25 02:38:52 2025
//Host        : HYPC running 64-bit major release  (build 9200)
//Command     : generate_target I2C_Master_Controler_wrapper.bd
//Design      : I2C_Master_Controler_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module I2C_Master_Controler_wrapper
   (ready,
    reset,
    scl,
    sda,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  output ready;
  input reset;
  output scl;
  inout sda;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire ready;
  wire reset;
  wire scl;
  wire sda;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  I2C_Master_Controler I2C_Master_Controler_i
       (.ready(ready),
        .reset(reset),
        .scl(scl),
        .sda(sda),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
