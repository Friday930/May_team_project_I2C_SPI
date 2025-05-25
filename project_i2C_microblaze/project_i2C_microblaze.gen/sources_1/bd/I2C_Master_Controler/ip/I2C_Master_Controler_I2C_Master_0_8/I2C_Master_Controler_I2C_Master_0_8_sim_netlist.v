// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun May 25 14:47:16 2025
// Host        : korchamHoyoun24 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/harman/May_team_project_I2C_SPI/project_i2C_microblaze/project_i2C_microblaze.gen/sources_1/bd/I2C_Master_Controler/ip/I2C_Master_Controler_I2C_Master_0_8/I2C_Master_Controler_I2C_Master_0_8_sim_netlist.v
// Design      : I2C_Master_Controler_I2C_Master_0_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_Master_Controler_I2C_Master_0_8,I2C_Master_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "I2C_Master_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2C_Master_Controler_I2C_Master_0_8
   (sda,
    scl,
    ready,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  inout sda;
  output scl;
  output ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire ready;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  I2C_Master_Controler_I2C_Master_0_8_I2C_Master_v1_0 inst
       (.ready(ready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .scl(scl),
        .sda(sda));
endmodule

(* ORIG_REF_NAME = "I2C_Master" *) 
module I2C_Master_Controler_I2C_Master_0_8_I2C_Master
   (master_mode,
    Q,
    \state_reg[2]_0 ,
    \state_reg[0]_0 ,
    \axi_araddr_reg[2] ,
    ready,
    \state_reg[1]_0 ,
    scl,
    \state_reg[3]_0 ,
    \state_reg[3]_1 ,
    \temp_rx_data_reg[7]_0 ,
    sda,
    master_mode_reg_0,
    s00_axi_aclk,
    AR,
    \state_reg[3]_2 ,
    \state_reg[0]_1 ,
    sda_IO_reg_0,
    axi_araddr,
    D,
    \temp_tx_data_reg[7]_0 );
  output master_mode;
  output [2:0]Q;
  output \state_reg[2]_0 ;
  output \state_reg[0]_0 ;
  output \axi_araddr_reg[2] ;
  output ready;
  output \state_reg[1]_0 ;
  output scl;
  output \state_reg[3]_0 ;
  output \state_reg[3]_1 ;
  output [7:0]\temp_rx_data_reg[7]_0 ;
  inout sda;
  input master_mode_reg_0;
  input s00_axi_aclk;
  input [0:0]AR;
  input [3:0]\state_reg[3]_2 ;
  input \state_reg[0]_1 ;
  input sda_IO_reg_0;
  input [1:0]axi_araddr;
  input [0:0]D;
  input [6:0]\temp_tx_data_reg[7]_0 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [2:0]Q;
  wire [1:0]axi_araddr;
  wire \axi_araddr_reg[2] ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire [7:0]bit_count;
  wire \bit_count[4]_i_2_n_0 ;
  wire \bit_count[7]_i_1_n_0 ;
  wire \bit_count[7]_i_3_n_0 ;
  wire \bit_count[7]_i_4_n_0 ;
  wire \bit_count[7]_i_5_n_0 ;
  wire [7:0]bit_count_next;
  wire [9:0]clk_count;
  wire \clk_count[6]_i_2_n_0 ;
  wire \clk_count[6]_i_3_n_0 ;
  wire \clk_count[7]_i_2_n_0 ;
  wire \clk_count[9]_i_1_n_0 ;
  wire \clk_count[9]_i_3_n_0 ;
  wire \clk_count[9]_i_4_n_0 ;
  wire \clk_count[9]_i_5_n_0 ;
  wire [9:0]clk_count_next;
  wire master_mode;
  wire master_mode_reg_0;
  wire p_0_in;
  wire ready;
  wire s00_axi_aclk;
  wire scl;
  wire sda;
  wire sda_INST_0_i_2_n_0;
  wire sda_IO;
  wire sda_IO0;
  wire sda_IO_i_1_n_0;
  wire sda_IO_i_3_n_0;
  wire sda_IO_i_4_n_0;
  wire sda_IO_i_5_n_0;
  wire sda_IO_i_6_n_0;
  wire sda_IO_reg_0;
  wire sda_reg;
  wire [2:2]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[3]_i_10_n_0 ;
  wire \state[3]_i_11_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[3]_i_4_n_0 ;
  wire \state[3]_i_6_n_0 ;
  wire \state[3]_i_7_n_0 ;
  wire \state[3]_i_8_n_0 ;
  wire \state[3]_i_9_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg[0]_1 ;
  wire \state_reg[1]_0 ;
  wire \state_reg[2]_0 ;
  wire \state_reg[3]_0 ;
  wire \state_reg[3]_1 ;
  wire [3:0]\state_reg[3]_2 ;
  wire \temp_rx_data[7]_i_1_n_0 ;
  wire [7:0]\temp_rx_data_reg[7]_0 ;
  wire \temp_tx_data[7]_i_1_n_0 ;
  wire [7:1]temp_tx_data_next;
  wire [6:0]\temp_tx_data_reg[7]_0 ;
  wire \temp_tx_data_reg_n_0_[0] ;
  wire \temp_tx_data_reg_n_0_[1] ;
  wire \temp_tx_data_reg_n_0_[2] ;
  wire \temp_tx_data_reg_n_0_[3] ;
  wire \temp_tx_data_reg_n_0_[4] ;
  wire \temp_tx_data_reg_n_0_[5] ;
  wire \temp_tx_data_reg_n_0_[6] ;

  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_rdata[1]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .I5(master_mode),
        .O(\state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_rdata[1]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .I5(master_mode),
        .O(\state_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \axi_rdata[1]_i_3 
       (.I0(Q[1]),
        .I1(state),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008008)) 
    \axi_rdata[2]_i_2 
       (.I0(axi_araddr[0]),
        .I1(axi_araddr[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(state),
        .O(\axi_araddr_reg[2] ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_count[0]_i_1 
       (.I0(bit_count[0]),
        .O(bit_count_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bit_count[1]_i_1 
       (.I0(\bit_count[4]_i_2_n_0 ),
        .I1(bit_count[1]),
        .I2(bit_count[0]),
        .O(bit_count_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \bit_count[2]_i_1 
       (.I0(\bit_count[4]_i_2_n_0 ),
        .I1(bit_count[2]),
        .I2(bit_count[0]),
        .I3(bit_count[1]),
        .O(bit_count_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \bit_count[3]_i_1 
       (.I0(\bit_count[4]_i_2_n_0 ),
        .I1(bit_count[3]),
        .I2(bit_count[1]),
        .I3(bit_count[0]),
        .I4(bit_count[2]),
        .O(bit_count_next[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \bit_count[4]_i_1 
       (.I0(\bit_count[4]_i_2_n_0 ),
        .I1(bit_count[4]),
        .I2(bit_count[3]),
        .I3(bit_count[2]),
        .I4(bit_count[0]),
        .I5(bit_count[1]),
        .O(bit_count_next[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \bit_count[4]_i_2 
       (.I0(\bit_count[7]_i_4_n_0 ),
        .I1(bit_count[4]),
        .I2(bit_count[5]),
        .I3(bit_count[3]),
        .I4(bit_count[6]),
        .I5(bit_count[7]),
        .O(\bit_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \bit_count[5]_i_1 
       (.I0(bit_count[5]),
        .I1(\bit_count[7]_i_4_n_0 ),
        .I2(bit_count[3]),
        .I3(bit_count[4]),
        .O(bit_count_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \bit_count[6]_i_1 
       (.I0(bit_count[6]),
        .I1(bit_count[5]),
        .I2(bit_count[4]),
        .I3(\bit_count[7]_i_4_n_0 ),
        .I4(bit_count[3]),
        .O(bit_count_next[6]));
  LUT4 #(
    .INIT(16'h1000)) 
    \bit_count[7]_i_1 
       (.I0(Q[0]),
        .I1(state),
        .I2(Q[1]),
        .I3(\bit_count[7]_i_3_n_0 ),
        .O(\bit_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \bit_count[7]_i_2 
       (.I0(bit_count[7]),
        .I1(bit_count[4]),
        .I2(bit_count[5]),
        .I3(bit_count[6]),
        .I4(\bit_count[7]_i_4_n_0 ),
        .I5(bit_count[3]),
        .O(bit_count_next[7]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \bit_count[7]_i_3 
       (.I0(clk_count[9]),
        .I1(clk_count[2]),
        .I2(\clk_count[9]_i_5_n_0 ),
        .I3(\bit_count[7]_i_5_n_0 ),
        .I4(clk_count[1]),
        .I5(Q[2]),
        .O(\bit_count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \bit_count[7]_i_4 
       (.I0(bit_count[1]),
        .I1(bit_count[0]),
        .I2(bit_count[2]),
        .O(\bit_count[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \bit_count[7]_i_5 
       (.I0(clk_count[8]),
        .I1(clk_count[3]),
        .O(\bit_count[7]_i_5_n_0 ));
  FDCE \bit_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[0]),
        .Q(bit_count[0]));
  FDCE \bit_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[1]),
        .Q(bit_count[1]));
  FDCE \bit_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[2]),
        .Q(bit_count[2]));
  FDCE \bit_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[3]),
        .Q(bit_count[3]));
  FDCE \bit_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[4]),
        .Q(bit_count[4]));
  FDCE \bit_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[5]),
        .Q(bit_count[5]));
  FDCE \bit_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[6]),
        .Q(bit_count[6]));
  FDCE \bit_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\bit_count[7]_i_1_n_0 ),
        .CLR(AR),
        .D(bit_count_next[7]),
        .Q(bit_count[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_count[0]_i_1 
       (.I0(clk_count[0]),
        .O(clk_count_next[0]));
  LUT6 #(
    .INIT(64'h0000FFFEFFFE0000)) 
    \clk_count[1]_i_1 
       (.I0(clk_count[9]),
        .I1(clk_count[2]),
        .I2(\clk_count[9]_i_5_n_0 ),
        .I3(\clk_count[9]_i_3_n_0 ),
        .I4(clk_count[1]),
        .I5(clk_count[0]),
        .O(clk_count_next[1]));
  LUT6 #(
    .INIT(64'h00FEFF00FF00FF00)) 
    \clk_count[2]_i_1 
       (.I0(clk_count[9]),
        .I1(\clk_count[9]_i_5_n_0 ),
        .I2(\clk_count[9]_i_3_n_0 ),
        .I3(clk_count[2]),
        .I4(clk_count[0]),
        .I5(clk_count[1]),
        .O(clk_count_next[2]));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \clk_count[3]_i_1 
       (.I0(\clk_count[6]_i_2_n_0 ),
        .I1(\clk_count[9]_i_3_n_0 ),
        .I2(clk_count[3]),
        .I3(clk_count[2]),
        .I4(clk_count[1]),
        .I5(clk_count[0]),
        .O(clk_count_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0EE0E0E0)) 
    \clk_count[4]_i_1 
       (.I0(\clk_count[6]_i_2_n_0 ),
        .I1(\clk_count[9]_i_3_n_0 ),
        .I2(clk_count[4]),
        .I3(\clk_count[9]_i_4_n_0 ),
        .I4(clk_count[0]),
        .O(clk_count_next[4]));
  LUT6 #(
    .INIT(64'h0EE0E0E0E0E0E0E0)) 
    \clk_count[5]_i_1 
       (.I0(\clk_count[6]_i_2_n_0 ),
        .I1(\clk_count[9]_i_3_n_0 ),
        .I2(clk_count[5]),
        .I3(\clk_count[9]_i_4_n_0 ),
        .I4(clk_count[4]),
        .I5(clk_count[0]),
        .O(clk_count_next[5]));
  LUT5 #(
    .INIT(32'hE0E00EE0)) 
    \clk_count[6]_i_1 
       (.I0(\clk_count[6]_i_2_n_0 ),
        .I1(\clk_count[9]_i_3_n_0 ),
        .I2(clk_count[6]),
        .I3(\clk_count[9]_i_4_n_0 ),
        .I4(\clk_count[6]_i_3_n_0 ),
        .O(clk_count_next[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \clk_count[6]_i_2 
       (.I0(clk_count[9]),
        .I1(clk_count[2]),
        .I2(\clk_count[9]_i_5_n_0 ),
        .O(\clk_count[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \clk_count[6]_i_3 
       (.I0(clk_count[4]),
        .I1(clk_count[0]),
        .I2(clk_count[5]),
        .O(\clk_count[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0000FFFE00)) 
    \clk_count[7]_i_1 
       (.I0(clk_count[9]),
        .I1(clk_count[2]),
        .I2(\clk_count[9]_i_3_n_0 ),
        .I3(clk_count[7]),
        .I4(\clk_count[9]_i_4_n_0 ),
        .I5(\clk_count[7]_i_2_n_0 ),
        .O(clk_count_next[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_count[7]_i_2 
       (.I0(clk_count[5]),
        .I1(clk_count[0]),
        .I2(clk_count[4]),
        .I3(clk_count[6]),
        .O(\clk_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF0000FEFE00)) 
    \clk_count[8]_i_1 
       (.I0(clk_count[9]),
        .I1(clk_count[2]),
        .I2(\clk_count[9]_i_3_n_0 ),
        .I3(clk_count[8]),
        .I4(\clk_count[9]_i_4_n_0 ),
        .I5(\clk_count[9]_i_5_n_0 ),
        .O(clk_count_next[8]));
  LUT4 #(
    .INIT(16'hFF96)) 
    \clk_count[9]_i_1 
       (.I0(Q[1]),
        .I1(state),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\clk_count[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F00EF0F0F0)) 
    \clk_count[9]_i_2 
       (.I0(clk_count[2]),
        .I1(\clk_count[9]_i_3_n_0 ),
        .I2(clk_count[9]),
        .I3(clk_count[8]),
        .I4(\clk_count[9]_i_4_n_0 ),
        .I5(\clk_count[9]_i_5_n_0 ),
        .O(clk_count_next[9]));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFFF07FF)) 
    \clk_count[9]_i_3 
       (.I0(Q[1]),
        .I1(state),
        .I2(Q[2]),
        .I3(clk_count[3]),
        .I4(clk_count[8]),
        .I5(clk_count[1]),
        .O(\clk_count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \clk_count[9]_i_4 
       (.I0(clk_count[2]),
        .I1(clk_count[1]),
        .I2(clk_count[3]),
        .O(\clk_count[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \clk_count[9]_i_5 
       (.I0(clk_count[6]),
        .I1(clk_count[4]),
        .I2(clk_count[0]),
        .I3(clk_count[5]),
        .I4(clk_count[7]),
        .O(\clk_count[9]_i_5_n_0 ));
  FDCE \clk_count_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[0]),
        .Q(clk_count[0]));
  FDCE \clk_count_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[1]),
        .Q(clk_count[1]));
  FDCE \clk_count_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[2]),
        .Q(clk_count[2]));
  FDCE \clk_count_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[3]),
        .Q(clk_count[3]));
  FDCE \clk_count_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[4]),
        .Q(clk_count[4]));
  FDCE \clk_count_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[5]),
        .Q(clk_count[5]));
  FDCE \clk_count_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[6]),
        .Q(clk_count[6]));
  FDCE \clk_count_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[7]),
        .Q(clk_count[7]));
  FDCE \clk_count_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[8]),
        .Q(clk_count[8]));
  FDCE \clk_count_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\clk_count[9]_i_1_n_0 ),
        .CLR(AR),
        .D(clk_count_next[9]),
        .Q(clk_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    master_mode_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(state),
        .O(\state_reg[1]_0 ));
  FDCE master_mode_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(master_mode_reg_0),
        .Q(master_mode));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1001)) 
    ready_INST_0
       (.I0(Q[2]),
        .I1(state),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(ready));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h04FF)) 
    scl_INST_0
       (.I0(Q[0]),
        .I1(state),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(scl));
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0
       (.I0(sda_reg),
        .I1(sda_INST_0_i_2_n_0),
        .O(sda));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h082C2C23)) 
    sda_INST_0_i_1
       (.I0(p_0_in),
        .I1(state),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(sda_reg));
  LUT1 #(
    .INIT(2'h1)) 
    sda_INST_0_i_2
       (.I0(sda_IO),
        .O(sda_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    sda_IO_i_1
       (.I0(sda_IO0),
        .I1(sda_IO_i_3_n_0),
        .I2(sda_IO_i_4_n_0),
        .I3(sda_IO_i_5_n_0),
        .I4(sda_IO_reg_0),
        .I5(sda_IO),
        .O(sda_IO_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h0000AB00)) 
    sda_IO_i_2
       (.I0(Q[2]),
        .I1(\state_reg[3]_2 [0]),
        .I2(\state_reg[3]_2 [1]),
        .I3(Q[0]),
        .I4(state),
        .O(sda_IO0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    sda_IO_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(state),
        .O(sda_IO_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    sda_IO_i_4
       (.I0(Q[2]),
        .I1(\state[3]_i_9_n_0 ),
        .I2(\clk_count[9]_i_5_n_0 ),
        .I3(clk_count[2]),
        .I4(clk_count[9]),
        .I5(sda_IO_i_6_n_0),
        .O(sda_IO_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    sda_IO_i_5
       (.I0(Q[2]),
        .I1(\state[3]_i_9_n_0 ),
        .I2(\clk_count[9]_i_5_n_0 ),
        .I3(clk_count[2]),
        .I4(clk_count[9]),
        .I5(\axi_rdata[1]_i_3_n_0 ),
        .O(sda_IO_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    sda_IO_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(sda_IO_i_6_n_0));
  FDCE sda_IO_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AR),
        .D(sda_IO_i_1_n_0),
        .Q(sda_IO));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFE)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state_reg[2]_0 ),
        .I4(\state_reg[3]_2 [0]),
        .I5(\state_reg[0]_0 ),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \state[0]_i_2 
       (.I0(Q[1]),
        .I1(state),
        .I2(Q[0]),
        .O(\state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \state[0]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(sda),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAA0000000000CF00)) 
    \state[0]_i_4 
       (.I0(Q[0]),
        .I1(\state_reg[3]_2 [0]),
        .I2(\state_reg[3]_2 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(state),
        .O(\state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[0]_i_5 
       (.I0(state),
        .I1(Q[2]),
        .O(\state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[0]_i_6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF83A183A0)) 
    \state[1]_i_1 
       (.I0(Q[2]),
        .I1(state),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\state_reg[3]_2 [1]),
        .I5(\state[1]_i_2_n_0 ),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2222000050005500)) 
    \state[1]_i_2 
       (.I0(Q[2]),
        .I1(sda),
        .I2(\state_reg[3]_2 [2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(state),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAFEAAAAAA)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(\bit_count[4]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(state),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF150000AA)) 
    \state[2]_i_2 
       (.I0(state),
        .I1(\state_reg[3]_2 [0]),
        .I2(\state_reg[3]_2 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\state[2]_i_3_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2A2A0300)) 
    \state[2]_i_3 
       (.I0(state),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\state_reg[3]_2 [2]),
        .I4(Q[2]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBA)) 
    \state[3]_i_1 
       (.I0(\state_reg[0]_1 ),
        .I1(\clk_count[6]_i_2_n_0 ),
        .I2(\state[3]_i_4_n_0 ),
        .I3(\bit_count[7]_i_3_n_0 ),
        .I4(sda_IO_reg_0),
        .I5(\state[3]_i_6_n_0 ),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state[3]_i_10 
       (.I0(clk_count[2]),
        .I1(clk_count[9]),
        .O(\state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[3]_i_11 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF3C8C3CCC)) 
    \state[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(state),
        .I4(\bit_count[4]_i_2_n_0 ),
        .I5(\state[3]_i_7_n_0 ),
        .O(\state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \state[3]_i_4 
       (.I0(clk_count[1]),
        .I1(clk_count[8]),
        .I2(clk_count[3]),
        .I3(\state[3]_i_8_n_0 ),
        .O(\state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8888888800000080)) 
    \state[3]_i_6 
       (.I0(state),
        .I1(Q[0]),
        .I2(\state[3]_i_9_n_0 ),
        .I3(\clk_count[9]_i_5_n_0 ),
        .I4(\state[3]_i_10_n_0 ),
        .I5(\state[3]_i_11_n_0 ),
        .O(\state[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h11000050)) 
    \state[3]_i_7 
       (.I0(Q[0]),
        .I1(sda),
        .I2(\state_reg[3]_2 [3]),
        .I3(Q[1]),
        .I4(state),
        .O(\state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h001E)) 
    \state[3]_i_8 
       (.I0(Q[0]),
        .I1(state),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \state[3]_i_9 
       (.I0(clk_count[3]),
        .I1(clk_count[8]),
        .I2(clk_count[1]),
        .O(\state[3]_i_9_n_0 ));
  FDCE \state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\state[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\state[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \state_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\state[2]_i_1_n_0 ),
        .Q(state));
  FDCE \state_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\state[3]_i_1_n_0 ),
        .CLR(AR),
        .D(\state[3]_i_2_n_0 ),
        .Q(Q[2]));
  LUT4 #(
    .INIT(16'h0100)) 
    \temp_rx_data[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(state),
        .I3(\bit_count[7]_i_3_n_0 ),
        .O(\temp_rx_data[7]_i_1_n_0 ));
  FDCE \temp_rx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(sda),
        .Q(\temp_rx_data_reg[7]_0 [0]));
  FDCE \temp_rx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\temp_rx_data_reg[7]_0 [0]),
        .Q(\temp_rx_data_reg[7]_0 [1]));
  FDCE \temp_rx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\temp_rx_data_reg[7]_0 [1]),
        .Q(\temp_rx_data_reg[7]_0 [2]));
  FDCE \temp_rx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\temp_rx_data_reg[7]_0 [2]),
        .Q(\temp_rx_data_reg[7]_0 [3]));
  FDCE \temp_rx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\temp_rx_data_reg[7]_0 [3]),
        .Q(\temp_rx_data_reg[7]_0 [4]));
  FDCE \temp_rx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\temp_rx_data_reg[7]_0 [4]),
        .Q(\temp_rx_data_reg[7]_0 [5]));
  FDCE \temp_rx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\temp_rx_data_reg[7]_0 [5]),
        .Q(\temp_rx_data_reg[7]_0 [6]));
  FDCE \temp_rx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\temp_rx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(\temp_rx_data_reg[7]_0 [6]),
        .Q(\temp_rx_data_reg[7]_0 [7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_tx_data[1]_i_1 
       (.I0(\temp_tx_data_reg[7]_0 [0]),
        .I1(Q[0]),
        .I2(\temp_tx_data_reg_n_0_[0] ),
        .O(temp_tx_data_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_tx_data[2]_i_1 
       (.I0(\temp_tx_data_reg[7]_0 [1]),
        .I1(Q[0]),
        .I2(\temp_tx_data_reg_n_0_[1] ),
        .O(temp_tx_data_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_tx_data[3]_i_1 
       (.I0(\temp_tx_data_reg[7]_0 [2]),
        .I1(Q[0]),
        .I2(\temp_tx_data_reg_n_0_[2] ),
        .O(temp_tx_data_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_tx_data[4]_i_1 
       (.I0(\temp_tx_data_reg[7]_0 [3]),
        .I1(Q[0]),
        .I2(\temp_tx_data_reg_n_0_[3] ),
        .O(temp_tx_data_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_tx_data[5]_i_1 
       (.I0(\temp_tx_data_reg[7]_0 [4]),
        .I1(Q[0]),
        .I2(\temp_tx_data_reg_n_0_[4] ),
        .O(temp_tx_data_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_tx_data[6]_i_1 
       (.I0(\temp_tx_data_reg[7]_0 [5]),
        .I1(Q[0]),
        .I2(\temp_tx_data_reg_n_0_[5] ),
        .O(temp_tx_data_next[6]));
  LUT5 #(
    .INIT(32'h03220000)) 
    \temp_tx_data[7]_i_1 
       (.I0(\bit_count[7]_i_3_n_0 ),
        .I1(state),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\temp_tx_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \temp_tx_data[7]_i_2 
       (.I0(\temp_tx_data_reg[7]_0 [6]),
        .I1(Q[0]),
        .I2(\temp_tx_data_reg_n_0_[6] ),
        .O(temp_tx_data_next[7]));
  FDCE \temp_tx_data_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(\temp_tx_data_reg_n_0_[0] ));
  FDCE \temp_tx_data_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(temp_tx_data_next[1]),
        .Q(\temp_tx_data_reg_n_0_[1] ));
  FDCE \temp_tx_data_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(temp_tx_data_next[2]),
        .Q(\temp_tx_data_reg_n_0_[2] ));
  FDCE \temp_tx_data_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(temp_tx_data_next[3]),
        .Q(\temp_tx_data_reg_n_0_[3] ));
  FDCE \temp_tx_data_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(temp_tx_data_next[4]),
        .Q(\temp_tx_data_reg_n_0_[4] ));
  FDCE \temp_tx_data_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(temp_tx_data_next[5]),
        .Q(\temp_tx_data_reg_n_0_[5] ));
  FDCE \temp_tx_data_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(temp_tx_data_next[6]),
        .Q(\temp_tx_data_reg_n_0_[6] ));
  FDCE \temp_tx_data_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\temp_tx_data[7]_i_1_n_0 ),
        .CLR(AR),
        .D(temp_tx_data_next[7]),
        .Q(p_0_in));
endmodule

(* ORIG_REF_NAME = "I2C_Master_v1_0" *) 
module I2C_Master_Controler_I2C_Master_0_8_I2C_Master_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    ready,
    scl,
    s00_axi_bvalid,
    sda,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output ready;
  output scl;
  output s00_axi_bvalid;
  inout sda;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [3:0]CMD;
  wire I2C_Master_v1_0_S00_AXI_inst_n_19;
  wire I2C_Master_v1_0_S00_AXI_inst_n_20;
  wire I2C_Master_v1_0_S00_AXI_inst_n_22;
  wire [3:2]axi_araddr;
  wire master_mode;
  wire ready;
  wire reset0;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire scl;
  wire sda;
  wire [7:1]slv_reg1;
  wire [3:0]state;
  wire [7:0]temp_rx_data;
  wire [0:0]temp_tx_data_next;
  wire u_I2C_Master_n_10;
  wire u_I2C_Master_n_11;
  wire u_I2C_Master_n_4;
  wire u_I2C_Master_n_5;
  wire u_I2C_Master_n_6;
  wire u_I2C_Master_n_8;

  I2C_Master_Controler_I2C_Master_0_8_I2C_Master_v1_0_S00_AXI I2C_Master_v1_0_S00_AXI_inst
       (.AR(reset0),
        .D(temp_tx_data_next),
        .Q(temp_rx_data),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[0]_0 (u_I2C_Master_n_10),
        .\axi_rdata_reg[1]_0 (u_I2C_Master_n_11),
        .\axi_rdata_reg[2]_0 (u_I2C_Master_n_6),
        .master_mode(master_mode),
        .master_mode_reg(u_I2C_Master_n_8),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[1]_0 (I2C_Master_v1_0_S00_AXI_inst_n_22),
        .\slv_reg0_reg[2]_0 (I2C_Master_v1_0_S00_AXI_inst_n_19),
        .\slv_reg0_reg[3]_0 (CMD),
        .\slv_reg0_reg[3]_1 (I2C_Master_v1_0_S00_AXI_inst_n_20),
        .\slv_reg1_reg[7]_0 (slv_reg1),
        .\state_reg[0] (u_I2C_Master_n_4),
        .\state_reg[0]_0 (u_I2C_Master_n_5),
        .\temp_tx_data_reg[0] ({state[3],state[1:0]}));
  I2C_Master_Controler_I2C_Master_0_8_I2C_Master u_I2C_Master
       (.AR(reset0),
        .D(temp_tx_data_next),
        .Q({state[3],state[1:0]}),
        .axi_araddr(axi_araddr),
        .\axi_araddr_reg[2] (u_I2C_Master_n_6),
        .master_mode(master_mode),
        .master_mode_reg_0(I2C_Master_v1_0_S00_AXI_inst_n_22),
        .ready(ready),
        .s00_axi_aclk(s00_axi_aclk),
        .scl(scl),
        .sda(sda),
        .sda_IO_reg_0(I2C_Master_v1_0_S00_AXI_inst_n_20),
        .\state_reg[0]_0 (u_I2C_Master_n_5),
        .\state_reg[0]_1 (I2C_Master_v1_0_S00_AXI_inst_n_19),
        .\state_reg[1]_0 (u_I2C_Master_n_8),
        .\state_reg[2]_0 (u_I2C_Master_n_4),
        .\state_reg[3]_0 (u_I2C_Master_n_10),
        .\state_reg[3]_1 (u_I2C_Master_n_11),
        .\state_reg[3]_2 (CMD),
        .\temp_rx_data_reg[7]_0 (temp_rx_data),
        .\temp_tx_data_reg[7]_0 (slv_reg1));
endmodule

(* ORIG_REF_NAME = "I2C_Master_v1_0_S00_AXI" *) 
module I2C_Master_Controler_I2C_Master_0_8_I2C_Master_v1_0_S00_AXI
   (s00_axi_awready,
    AR,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_bvalid,
    s00_axi_rvalid,
    \slv_reg0_reg[3]_0 ,
    \slv_reg1_reg[7]_0 ,
    axi_araddr,
    \slv_reg0_reg[2]_0 ,
    \slv_reg0_reg[3]_1 ,
    D,
    \slv_reg0_reg[1]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    Q,
    \axi_rdata_reg[2]_0 ,
    \state_reg[0] ,
    \state_reg[0]_0 ,
    \temp_tx_data_reg[0] ,
    \axi_rdata_reg[0]_0 ,
    \axi_rdata_reg[1]_0 ,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    master_mode_reg,
    master_mode,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output s00_axi_awready;
  output [0:0]AR;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [3:0]\slv_reg0_reg[3]_0 ;
  output [6:0]\slv_reg1_reg[7]_0 ;
  output [1:0]axi_araddr;
  output \slv_reg0_reg[2]_0 ;
  output \slv_reg0_reg[3]_1 ;
  output [0:0]D;
  output \slv_reg0_reg[1]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [7:0]Q;
  input \axi_rdata_reg[2]_0 ;
  input \state_reg[0] ;
  input \state_reg[0]_0 ;
  input [2:0]\temp_tx_data_reg[0] ;
  input \axi_rdata_reg[0]_0 ;
  input \axi_rdata_reg[1]_0 ;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input master_mode_reg;
  input master_mode;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]AR;
  wire [0:0]D;
  wire [7:0]Q;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [1:0]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[1]_0 ;
  wire \axi_rdata_reg[2]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire master_mode;
  wire master_mode_reg;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:4]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg[1]_0 ;
  wire \slv_reg0_reg[2]_0 ;
  wire [3:0]\slv_reg0_reg[3]_0 ;
  wire \slv_reg0_reg[3]_1 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [6:0]\slv_reg1_reg[7]_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire \state_reg[0] ;
  wire \state_reg[0]_0 ;
  wire [2:0]\temp_tx_data_reg[0] ;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_awready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(AR));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[0]),
        .R(AR));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[1]),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(s00_axi_arready),
        .R(AR));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(AR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(AR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(AR));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(AR));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awready),
        .I3(s00_axi_wready),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(AR));
  LUT6 #(
    .INIT(64'hFFFFFFFF73625140)) 
    \axi_rdata[0]_i_1 
       (.I0(axi_araddr[1]),
        .I1(axi_araddr[0]),
        .I2(slv_reg1[0]),
        .I3(\slv_reg0_reg[3]_0 [0]),
        .I4(Q[0]),
        .I5(\axi_rdata_reg[0]_0 ),
        .O(reg_data_out[0]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[10]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[11]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[13]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFF73625140)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_araddr[1]),
        .I1(axi_araddr[0]),
        .I2(\slv_reg1_reg[7]_0 [0]),
        .I3(\slv_reg0_reg[3]_0 [1]),
        .I4(Q[1]),
        .I5(\axi_rdata_reg[1]_0 ),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCCCCEEEEFFCCFCFC)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[2]_0 ),
        .I2(\slv_reg0_reg[3]_0 [2]),
        .I3(\slv_reg1_reg[7]_0 [1]),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(\slv_reg0_reg[3]_0 [3]),
        .I2(\slv_reg1_reg[7]_0 [2]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(slv_reg0[4]),
        .I2(\slv_reg1_reg[7]_0 [3]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(slv_reg0[5]),
        .I2(\slv_reg1_reg[7]_0 [4]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h00AAF0CC)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(slv_reg0[6]),
        .I2(\slv_reg1_reg[7]_0 [5]),
        .I3(axi_araddr[0]),
        .I4(axi_araddr[1]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg0[7]),
        .I1(\slv_reg1_reg[7]_0 [6]),
        .I2(Q[7]),
        .I3(axi_araddr[1]),
        .I4(axi_araddr[0]),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[8]));
  LUT4 #(
    .INIT(16'h00AC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(AR));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(AR));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(AR));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(AR));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(AR));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(AR));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(AR));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(AR));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(AR));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(AR));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(AR));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(AR));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(AR));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(AR));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(AR));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(AR));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(AR));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(AR));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(AR));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(AR));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(AR));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(AR));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(AR));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(AR));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(AR));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(AR));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(AR));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(AR));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(AR));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(AR));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(AR));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arready),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_wready),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(AR));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    master_mode_i_1
       (.I0(\slv_reg0_reg[3]_0 [1]),
        .I1(\slv_reg0_reg[3]_0 [0]),
        .I2(\slv_reg0_reg[3]_0 [3]),
        .I3(\slv_reg0_reg[3]_0 [2]),
        .I4(master_mode_reg),
        .I5(master_mode),
        .O(\slv_reg0_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_wready),
        .I1(s00_axi_awready),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg[3]_0 [0]),
        .R(AR));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(AR));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(AR));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(AR));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(AR));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(AR));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(AR));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(AR));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(AR));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(AR));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(AR));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg[3]_0 [1]),
        .R(AR));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(AR));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(AR));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(AR));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(AR));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(AR));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(AR));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(AR));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(AR));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(AR));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(AR));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg[3]_0 [2]),
        .R(AR));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(AR));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(AR));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg[3]_0 [3]),
        .R(AR));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(AR));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(AR));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(AR));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(AR));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(AR));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(AR));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(AR));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(AR));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(AR));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(AR));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(AR));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(AR));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(AR));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(AR));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(AR));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(AR));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(AR));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg[7]_0 [0]),
        .R(AR));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(AR));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(AR));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(AR));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(AR));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(AR));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(AR));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(AR));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(AR));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(AR));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(AR));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg[7]_0 [1]),
        .R(AR));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(AR));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(AR));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg[7]_0 [2]),
        .R(AR));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg[7]_0 [3]),
        .R(AR));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg[7]_0 [4]),
        .R(AR));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg[7]_0 [5]),
        .R(AR));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg[7]_0 [6]),
        .R(AR));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(AR));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(AR));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(s00_axi_arready),
        .O(slv_reg_rden__0));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \state[3]_i_3 
       (.I0(\state_reg[0] ),
        .I1(\state_reg[0]_0 ),
        .I2(\slv_reg0_reg[3]_0 [2]),
        .I3(\slv_reg0_reg[3]_0 [3]),
        .I4(\slv_reg0_reg[3]_0 [0]),
        .I5(\slv_reg0_reg[3]_0 [1]),
        .O(\slv_reg0_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h0014000000000000)) 
    \state[3]_i_5 
       (.I0(\slv_reg0_reg[3]_0 [3]),
        .I1(\slv_reg0_reg[3]_0 [1]),
        .I2(\slv_reg0_reg[3]_0 [2]),
        .I3(\state_reg[0] ),
        .I4(\temp_tx_data_reg[0] [0]),
        .I5(\temp_tx_data_reg[0] [1]),
        .O(\slv_reg0_reg[3]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \temp_tx_data[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(\temp_tx_data_reg[0] [2]),
        .O(D));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
