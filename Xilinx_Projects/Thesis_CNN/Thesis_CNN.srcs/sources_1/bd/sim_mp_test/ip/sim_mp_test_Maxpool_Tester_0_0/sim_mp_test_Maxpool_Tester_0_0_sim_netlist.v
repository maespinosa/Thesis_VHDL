// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Oct 02 00:53:42 2018
// Host        : Marks-M3800-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Sourcetree_Local/Thesis_VHDL/Xilinx_Projects/Thesis_CNN/Thesis_CNN.srcs/sources_1/bd/sim_mp_test/ip/sim_mp_test_Maxpool_Tester_0_0/sim_mp_test_Maxpool_Tester_0_0_sim_netlist.v
// Design      : sim_mp_test_Maxpool_Tester_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sim_mp_test_Maxpool_Tester_0_0,Maxpool_Tester_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Maxpool_Tester_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module sim_mp_test_Maxpool_Tester_0_0
   (irq,
    init_calib_complete,
    m00_axi_awid,
    m00_axi_awaddr,
    m00_axi_awlen,
    m00_axi_awsize,
    m00_axi_awburst,
    m00_axi_awlock,
    m00_axi_awcache,
    m00_axi_awprot,
    m00_axi_awqos,
    m00_axi_awuser,
    m00_axi_awvalid,
    m00_axi_awready,
    m00_axi_wdata,
    m00_axi_wstrb,
    m00_axi_wlast,
    m00_axi_wuser,
    m00_axi_wvalid,
    m00_axi_wready,
    m00_axi_bid,
    m00_axi_bresp,
    m00_axi_bvalid,
    m00_axi_bready,
    m00_axi_arid,
    m00_axi_araddr,
    m00_axi_arlen,
    m00_axi_arsize,
    m00_axi_arburst,
    m00_axi_arlock,
    m00_axi_arcache,
    m00_axi_arprot,
    m00_axi_arqos,
    m00_axi_aruser,
    m00_axi_arvalid,
    m00_axi_arready,
    m00_axi_rid,
    m00_axi_rdata,
    m00_axi_rresp,
    m00_axi_rlast,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_txn_done,
    m00_axi_error);
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) input irq;
  input init_calib_complete;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [0:0]m00_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [31:0]m00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]m00_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]m00_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]m00_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output m00_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]m00_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]m00_axi_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [0:0]m00_axi_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output m00_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WUSER" *) output [0:0]m00_axi_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [0:0]m00_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [0:0]m00_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]m00_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]m00_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]m00_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output m00_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]m00_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]m00_axi_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [0:0]m00_axi_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [0:0]m00_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input m00_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST" *) input m00_axi_aresetn;
  output m00_axi_txn_done;
  output m00_axi_error;

  wire \<const0> ;
  wire \<const1> ;
  wire init_calib_complete;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [21:2]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire [1:1]\^m00_axi_awsize ;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [29:0]\^m00_axi_wdata ;
  wire m00_axi_wready;
  wire [3:3]\^m00_axi_wstrb ;
  wire m00_axi_wvalid;

  assign m00_axi_araddr[31] = \<const0> ;
  assign m00_axi_araddr[30] = \<const0> ;
  assign m00_axi_araddr[29] = \<const0> ;
  assign m00_axi_araddr[28] = \<const0> ;
  assign m00_axi_araddr[27] = \<const0> ;
  assign m00_axi_araddr[26] = \<const0> ;
  assign m00_axi_araddr[25] = \<const0> ;
  assign m00_axi_araddr[24] = \<const0> ;
  assign m00_axi_araddr[23] = \<const0> ;
  assign m00_axi_araddr[22] = \<const0> ;
  assign m00_axi_araddr[21] = \<const0> ;
  assign m00_axi_araddr[20] = \<const0> ;
  assign m00_axi_araddr[19] = \<const0> ;
  assign m00_axi_araddr[18] = \<const0> ;
  assign m00_axi_araddr[17] = \<const0> ;
  assign m00_axi_araddr[16] = \<const0> ;
  assign m00_axi_araddr[15] = \<const0> ;
  assign m00_axi_araddr[14] = \<const0> ;
  assign m00_axi_araddr[13] = \<const0> ;
  assign m00_axi_araddr[12] = \<const0> ;
  assign m00_axi_araddr[11] = \<const0> ;
  assign m00_axi_araddr[10] = \<const0> ;
  assign m00_axi_araddr[9] = \<const0> ;
  assign m00_axi_araddr[8] = \<const0> ;
  assign m00_axi_araddr[7] = \<const0> ;
  assign m00_axi_araddr[6] = \<const0> ;
  assign m00_axi_araddr[5] = \<const0> ;
  assign m00_axi_araddr[4] = \<const0> ;
  assign m00_axi_araddr[3] = \<const0> ;
  assign m00_axi_araddr[2] = \<const0> ;
  assign m00_axi_araddr[1] = \<const0> ;
  assign m00_axi_araddr[0] = \<const0> ;
  assign m00_axi_arburst[1] = \<const0> ;
  assign m00_axi_arburst[0] = \<const1> ;
  assign m00_axi_arcache[3] = \<const0> ;
  assign m00_axi_arcache[2] = \<const0> ;
  assign m00_axi_arcache[1] = \<const1> ;
  assign m00_axi_arcache[0] = \<const0> ;
  assign m00_axi_arid[0] = \<const0> ;
  assign m00_axi_arlen[7] = \<const0> ;
  assign m00_axi_arlen[6] = \<const0> ;
  assign m00_axi_arlen[5] = \<const0> ;
  assign m00_axi_arlen[4] = \<const0> ;
  assign m00_axi_arlen[3] = \<const0> ;
  assign m00_axi_arlen[2] = \<const0> ;
  assign m00_axi_arlen[1] = \<const0> ;
  assign m00_axi_arlen[0] = \<const0> ;
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \<const0> ;
  assign m00_axi_arsize[0] = \<const1> ;
  assign m00_axi_aruser[0] = \<const1> ;
  assign m00_axi_arvalid = \<const0> ;
  assign m00_axi_awaddr[31] = \<const0> ;
  assign m00_axi_awaddr[30] = \^m00_axi_awaddr [21];
  assign m00_axi_awaddr[29] = \<const0> ;
  assign m00_axi_awaddr[28] = \<const0> ;
  assign m00_axi_awaddr[27] = \<const0> ;
  assign m00_axi_awaddr[26] = \^m00_axi_awaddr [21];
  assign m00_axi_awaddr[25] = \<const0> ;
  assign m00_axi_awaddr[24] = \<const0> ;
  assign m00_axi_awaddr[23] = \^m00_axi_awaddr [21];
  assign m00_axi_awaddr[22] = \<const0> ;
  assign m00_axi_awaddr[21] = \^m00_axi_awaddr [21];
  assign m00_axi_awaddr[20] = \<const0> ;
  assign m00_axi_awaddr[19] = \<const0> ;
  assign m00_axi_awaddr[18] = \<const0> ;
  assign m00_axi_awaddr[17] = \<const0> ;
  assign m00_axi_awaddr[16] = \<const0> ;
  assign m00_axi_awaddr[15] = \<const0> ;
  assign m00_axi_awaddr[14] = \<const0> ;
  assign m00_axi_awaddr[13] = \<const0> ;
  assign m00_axi_awaddr[12] = \<const0> ;
  assign m00_axi_awaddr[11] = \<const0> ;
  assign m00_axi_awaddr[10] = \<const0> ;
  assign m00_axi_awaddr[9] = \<const0> ;
  assign m00_axi_awaddr[8] = \<const0> ;
  assign m00_axi_awaddr[7] = \<const0> ;
  assign m00_axi_awaddr[6] = \<const0> ;
  assign m00_axi_awaddr[5] = \<const0> ;
  assign m00_axi_awaddr[4:2] = \^m00_axi_awaddr [4:2];
  assign m00_axi_awaddr[1] = \<const0> ;
  assign m00_axi_awaddr[0] = \<const0> ;
  assign m00_axi_awburst[1] = \<const0> ;
  assign m00_axi_awburst[0] = \<const1> ;
  assign m00_axi_awcache[3] = \<const0> ;
  assign m00_axi_awcache[2] = \<const0> ;
  assign m00_axi_awcache[1] = \<const1> ;
  assign m00_axi_awcache[0] = \<const0> ;
  assign m00_axi_awid[0] = \<const0> ;
  assign m00_axi_awlen[7] = \<const0> ;
  assign m00_axi_awlen[6] = \<const0> ;
  assign m00_axi_awlen[5] = \<const0> ;
  assign m00_axi_awlen[4] = \<const0> ;
  assign m00_axi_awlen[3] = \<const0> ;
  assign m00_axi_awlen[2] = \<const0> ;
  assign m00_axi_awlen[1] = \<const0> ;
  assign m00_axi_awlen[0] = \<const0> ;
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \^m00_axi_awsize [1];
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const1> ;
  assign m00_axi_awvalid = \^m00_axi_awsize [1];
  assign m00_axi_rready = \<const0> ;
  assign m00_axi_wdata[31] = \^m00_axi_wdata [8];
  assign m00_axi_wdata[30] = \<const0> ;
  assign m00_axi_wdata[29:27] = \^m00_axi_wdata [29:27];
  assign m00_axi_wdata[26] = \^m00_axi_wdata [29];
  assign m00_axi_wdata[25] = \^m00_axi_wdata [25];
  assign m00_axi_wdata[24] = \^m00_axi_wdata [25];
  assign m00_axi_wdata[23] = \<const0> ;
  assign m00_axi_wdata[22] = \<const0> ;
  assign m00_axi_wdata[21] = \^m00_axi_wdata [29];
  assign m00_axi_wdata[20:17] = \^m00_axi_wdata [20:17];
  assign m00_axi_wdata[16] = \^m00_axi_wdata [25];
  assign m00_axi_wdata[15] = \^m00_axi_wdata [8];
  assign m00_axi_wdata[14] = \^m00_axi_wdata [14];
  assign m00_axi_wdata[13] = \<const0> ;
  assign m00_axi_wdata[12] = \^m00_axi_wdata [8];
  assign m00_axi_wdata[11] = \^m00_axi_wdata [14];
  assign m00_axi_wdata[10] = \<const0> ;
  assign m00_axi_wdata[9:8] = \^m00_axi_wdata [9:8];
  assign m00_axi_wdata[7] = \<const0> ;
  assign m00_axi_wdata[6] = \<const0> ;
  assign m00_axi_wdata[5] = \<const0> ;
  assign m00_axi_wdata[4] = \<const0> ;
  assign m00_axi_wdata[3] = \^m00_axi_wdata [28];
  assign m00_axi_wdata[2] = \<const0> ;
  assign m00_axi_wdata[1] = \<const0> ;
  assign m00_axi_wdata[0] = \^m00_axi_wdata [0];
  assign m00_axi_wlast = \<const0> ;
  assign m00_axi_wstrb[3] = \^m00_axi_wstrb [3];
  assign m00_axi_wstrb[2] = \^m00_axi_wstrb [3];
  assign m00_axi_wstrb[1] = \^m00_axi_wstrb [3];
  assign m00_axi_wstrb[0] = \^m00_axi_wstrb [3];
  assign m00_axi_wuser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  sim_mp_test_Maxpool_Tester_0_0_Maxpool_Tester_v1_0 U0
       (.init_calib_complete(init_calib_complete),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_awaddr({\^m00_axi_awaddr [21],\^m00_axi_awaddr [4:2]}),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awsize(\^m00_axi_awsize ),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wdata({\^m00_axi_wdata [8],\^m00_axi_wdata [29:27],\^m00_axi_wdata [25],\^m00_axi_wdata [20:17],\^m00_axi_wdata [14],\^m00_axi_wdata [9],\^m00_axi_wdata [0]}),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(\^m00_axi_wstrb ),
        .m00_axi_wvalid(m00_axi_wvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Max_Pool_Tester_v1_0_M00_AXI" *) 
module sim_mp_test_Maxpool_Tester_0_0_Max_Pool_Tester_v1_0_M00_AXI
   (m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_wvalid,
    m00_axi_awsize,
    m00_axi_bready,
    m00_axi_wstrb,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_bvalid,
    init_calib_complete);
  output [3:0]m00_axi_awaddr;
  output [11:0]m00_axi_wdata;
  output m00_axi_wvalid;
  output [0:0]m00_axi_awsize;
  output m00_axi_bready;
  output [0:0]m00_axi_wstrb;
  input m00_axi_wready;
  input m00_axi_awready;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input m00_axi_bvalid;
  input init_calib_complete;

  wire \FSM_sequential_current_state[4]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_3_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_4_n_0 ;
  wire \FSM_sequential_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_next_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_next_state_reg[3]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[4]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[4]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire [4:0]current_state;
  wire init_calib_complete;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [3:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_awsize;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [11:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;
  wire m00_axi_wvalid;
  wire [4:0]next_state;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[4]_i_1 
       (.I0(m00_axi_aresetn),
        .O(\FSM_sequential_current_state[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[4]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[4]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[4]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(current_state[2]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[3] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[4]_i_1_n_0 ),
        .D(next_state[3]),
        .Q(current_state[3]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[4] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[4]_i_1_n_0 ),
        .D(next_state[4]),
        .Q(current_state[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0200)) 
    \FSM_sequential_next_state_reg[0]_i_1 
       (.I0(\FSM_sequential_next_state_reg[0]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(init_calib_complete),
        .I4(\FSM_sequential_next_state_reg[0]_i_3_n_0 ),
        .I5(\FSM_sequential_next_state_reg[0]_i_4_n_0 ),
        .O(\FSM_sequential_next_state_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_next_state_reg[0]_i_2 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .O(\FSM_sequential_next_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1016001A12120908)) 
    \FSM_sequential_next_state_reg[0]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[3]),
        .I2(current_state[4]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(m00_axi_awready),
        .O(\FSM_sequential_next_state_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202020404420240)) 
    \FSM_sequential_next_state_reg[0]_i_4 
       (.I0(m00_axi_wready),
        .I1(current_state[0]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(\FSM_sequential_next_state_reg[0]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  MUXF7 \FSM_sequential_next_state_reg[1]_i_1 
       (.I0(\FSM_sequential_next_state_reg[1]_i_2_n_0 ),
        .I1(\FSM_sequential_next_state_reg[1]_i_3_n_0 ),
        .O(\FSM_sequential_next_state_reg[1]_i_1_n_0 ),
        .S(current_state[4]));
  LUT6 #(
    .INIT(64'h22743F22CCCCCCCC)) 
    \FSM_sequential_next_state_reg[1]_i_2 
       (.I0(m00_axi_awready),
        .I1(current_state[1]),
        .I2(m00_axi_wready),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .I5(current_state[0]),
        .O(\FSM_sequential_next_state_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000F8)) 
    \FSM_sequential_next_state_reg[1]_i_3 
       (.I0(m00_axi_wready),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .O(\FSM_sequential_next_state_reg[1]_i_3_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_next_state_reg[2]_i_1 
       (.I0(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .I1(current_state[4]),
        .O(\FSM_sequential_next_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h05FFFFFFCF000000)) 
    \FSM_sequential_next_state_reg[2]_i_2 
       (.I0(m00_axi_awready),
        .I1(m00_axi_wready),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[3] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[3]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[3]));
  LUT6 #(
    .INIT(64'h000000006AAA2AAA)) 
    \FSM_sequential_next_state_reg[3]_i_1 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .I4(m00_axi_awready),
        .I5(current_state[4]),
        .O(\FSM_sequential_next_state_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[4] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[4]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[4]));
  LUT5 #(
    .INIT(32'h00800F00)) 
    \FSM_sequential_next_state_reg[4]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(current_state[3]),
        .O(\FSM_sequential_next_state_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00330023FFFF6BD7)) 
    \FSM_sequential_next_state_reg[4]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[2]),
        .I4(m00_axi_bvalid),
        .I5(current_state[4]),
        .O(\FSM_sequential_next_state_reg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01202016)) 
    \m00_axi_awaddr[21]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[4]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[1]),
        .O(m00_axi_awaddr[3]));
  LUT5 #(
    .INIT(32'h00000118)) 
    \m00_axi_awaddr[2]_INST_0 
       (.I0(current_state[1]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(current_state[0]),
        .O(m00_axi_awaddr[0]));
  LUT5 #(
    .INIT(32'h00002016)) 
    \m00_axi_awaddr[3]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[4]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[1]),
        .O(m00_axi_awaddr[1]));
  LUT5 #(
    .INIT(32'h00600108)) 
    \m00_axi_awaddr[4]_INST_0 
       (.I0(current_state[1]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[4]),
        .I4(current_state[0]),
        .O(m00_axi_awaddr[2]));
  LUT5 #(
    .INIT(32'h02040912)) 
    m00_axi_awvalid_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[4]),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .O(m00_axi_awsize));
  LUT5 #(
    .INIT(32'h00049248)) 
    m00_axi_bready_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[3]),
        .I4(current_state[4]),
        .O(m00_axi_bready));
  LUT5 #(
    .INIT(32'h01000000)) 
    \m00_axi_wdata[0]_INST_0 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .O(m00_axi_wdata[0]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m00_axi_wdata[11]_INST_0 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .O(m00_axi_wdata[2]));
  LUT5 #(
    .INIT(32'h10400010)) 
    \m00_axi_wdata[16]_INST_0 
       (.I0(current_state[4]),
        .I1(current_state[0]),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .O(m00_axi_wdata[7]));
  LUT5 #(
    .INIT(32'h04004104)) 
    \m00_axi_wdata[17]_INST_0 
       (.I0(current_state[4]),
        .I1(current_state[3]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(m00_axi_wdata[3]));
  LUT5 #(
    .INIT(32'h00000110)) 
    \m00_axi_wdata[18]_INST_0 
       (.I0(current_state[2]),
        .I1(current_state[4]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .O(m00_axi_wdata[4]));
  LUT5 #(
    .INIT(32'h00002400)) 
    \m00_axi_wdata[19]_INST_0 
       (.I0(current_state[3]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .O(m00_axi_wdata[5]));
  LUT5 #(
    .INIT(32'h00002410)) 
    \m00_axi_wdata[20]_INST_0 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[4]),
        .O(m00_axi_wdata[6]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m00_axi_wdata[21]_INST_0 
       (.I0(current_state[4]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(m00_axi_wdata[10]));
  LUT5 #(
    .INIT(32'h10000000)) 
    \m00_axi_wdata[27]_INST_0 
       (.I0(current_state[4]),
        .I1(current_state[2]),
        .I2(current_state[3]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .O(m00_axi_wdata[8]));
  LUT5 #(
    .INIT(32'h00000900)) 
    \m00_axi_wdata[3]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[4]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .O(m00_axi_wdata[9]));
  LUT5 #(
    .INIT(32'h00000024)) 
    \m00_axi_wdata[8]_INST_0 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[4]),
        .I4(current_state[3]),
        .O(m00_axi_wdata[11]));
  LUT5 #(
    .INIT(32'h00044000)) 
    \m00_axi_wdata[9]_INST_0 
       (.I0(current_state[4]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(current_state[3]),
        .I4(current_state[0]),
        .O(m00_axi_wdata[1]));
  LUT5 #(
    .INIT(32'h0210214E)) 
    \m00_axi_wstrb[0]_INST_0 
       (.I0(current_state[1]),
        .I1(current_state[4]),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(current_state[2]),
        .O(m00_axi_wstrb));
  LUT5 #(
    .INIT(32'h00420294)) 
    m00_axi_wvalid_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[3]),
        .I3(current_state[4]),
        .I4(current_state[2]),
        .O(m00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "Maxpool_Tester_v1_0" *) 
module sim_mp_test_Maxpool_Tester_0_0_Maxpool_Tester_v1_0
   (m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_wvalid,
    m00_axi_awsize,
    m00_axi_bready,
    m00_axi_wstrb,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_bvalid,
    init_calib_complete);
  output [3:0]m00_axi_awaddr;
  output [11:0]m00_axi_wdata;
  output m00_axi_wvalid;
  output [0:0]m00_axi_awsize;
  output m00_axi_bready;
  output [0:0]m00_axi_wstrb;
  input m00_axi_wready;
  input m00_axi_awready;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input m00_axi_bvalid;
  input init_calib_complete;

  wire init_calib_complete;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [3:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire [0:0]m00_axi_awsize;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [11:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;
  wire m00_axi_wvalid;

  sim_mp_test_Maxpool_Tester_0_0_Max_Pool_Tester_v1_0_M00_AXI Max_Pool_Tester_v1_0_M00_AXI_inst
       (.init_calib_complete(init_calib_complete),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awsize(m00_axi_awsize),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb),
        .m00_axi_wvalid(m00_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule
`endif
