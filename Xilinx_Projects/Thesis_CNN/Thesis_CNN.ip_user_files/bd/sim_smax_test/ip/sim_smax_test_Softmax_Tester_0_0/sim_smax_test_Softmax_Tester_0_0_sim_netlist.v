// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Oct 03 00:50:57 2018
// Host        : Marks-M3800-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/Sourcetree_Local/Thesis_VHDL/Xilinx_Projects/Thesis_CNN/Thesis_CNN.srcs/sources_1/bd/sim_smax_test/ip/sim_smax_test_Softmax_Tester_0_0/sim_smax_test_Softmax_Tester_0_0_sim_netlist.v
// Design      : sim_smax_test_Softmax_Tester_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sim_smax_test_Softmax_Tester_0_0,Softmax_Tester_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Softmax_Tester_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module sim_smax_test_Softmax_Tester_0_0
   (i_irq,
    i_init_calib_complete,
    m00_axi_txn_done,
    m00_axi_error,
    m00_axi_aclk,
    m00_axi_aresetn,
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
    m00_axi_rready);
  input i_irq;
  input i_init_calib_complete;
  output m00_axi_txn_done;
  output m00_axi_error;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) input m00_axi_aresetn;
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

  wire \<const0> ;
  wire \<const1> ;
  wire i_init_calib_complete;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [30:3]\^m00_axi_awaddr ;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [31:0]\^m00_axi_wdata ;
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
  assign m00_axi_awaddr[30] = \^m00_axi_awaddr [30];
  assign m00_axi_awaddr[29] = \<const0> ;
  assign m00_axi_awaddr[28] = \<const0> ;
  assign m00_axi_awaddr[27] = \<const0> ;
  assign m00_axi_awaddr[26] = \^m00_axi_awaddr [30];
  assign m00_axi_awaddr[25] = \<const0> ;
  assign m00_axi_awaddr[24] = \<const0> ;
  assign m00_axi_awaddr[23] = \^m00_axi_awaddr [30];
  assign m00_axi_awaddr[22] = \<const0> ;
  assign m00_axi_awaddr[21] = \^m00_axi_awaddr [30];
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
  assign m00_axi_awaddr[4] = \<const0> ;
  assign m00_axi_awaddr[3] = \^m00_axi_awaddr [3];
  assign m00_axi_awaddr[2] = \<const0> ;
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
  assign m00_axi_awsize[1] = m00_axi_awvalid;
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const1> ;
  assign m00_axi_rready = \<const0> ;
  assign m00_axi_wdata[31] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[30] = \<const0> ;
  assign m00_axi_wdata[29] = \<const0> ;
  assign m00_axi_wdata[28] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[27] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[26] = \<const0> ;
  assign m00_axi_wdata[25] = \<const0> ;
  assign m00_axi_wdata[24] = \<const0> ;
  assign m00_axi_wdata[23] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[22] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[21] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[20] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[19] = m00_axi_wvalid;
  assign m00_axi_wdata[18] = \<const0> ;
  assign m00_axi_wdata[17] = m00_axi_wvalid;
  assign m00_axi_wdata[16] = \<const0> ;
  assign m00_axi_wdata[15] = \<const0> ;
  assign m00_axi_wdata[14] = \<const0> ;
  assign m00_axi_wdata[13] = \<const0> ;
  assign m00_axi_wdata[12] = \<const0> ;
  assign m00_axi_wdata[11] = \<const0> ;
  assign m00_axi_wdata[10] = \<const0> ;
  assign m00_axi_wdata[9] = \<const0> ;
  assign m00_axi_wdata[8] = \^m00_axi_wdata [31];
  assign m00_axi_wdata[7] = \<const0> ;
  assign m00_axi_wdata[6] = \<const0> ;
  assign m00_axi_wdata[5] = \<const0> ;
  assign m00_axi_wdata[4] = \<const0> ;
  assign m00_axi_wdata[3] = \<const0> ;
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
  sim_smax_test_Softmax_Tester_0_0_Softmax_Tester_v1_0 U0
       (.i_init_calib_complete(i_init_calib_complete),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_awaddr({\^m00_axi_awaddr [30],\^m00_axi_awaddr [3]}),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wdata({\^m00_axi_wdata [31],m00_axi_wvalid,\^m00_axi_wdata [0]}),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(\^m00_axi_wstrb ));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "Softmax_Tester_v1_0" *) 
module sim_smax_test_Softmax_Tester_0_0_Softmax_Tester_v1_0
   (m00_axi_awvalid,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_bready,
    m00_axi_wstrb,
    m00_axi_aclk,
    m00_axi_aresetn,
    i_init_calib_complete,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_bvalid);
  output m00_axi_awvalid;
  output [1:0]m00_axi_awaddr;
  output [2:0]m00_axi_wdata;
  output m00_axi_bready;
  output [0:0]m00_axi_wstrb;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input i_init_calib_complete;
  input m00_axi_wready;
  input m00_axi_awready;
  input m00_axi_bvalid;

  wire i_init_calib_complete;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [1:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [2:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;

  sim_smax_test_Softmax_Tester_0_0_Softmax_Tester_v1_0_M00_AXI Softmax_Tester_v1_0_M00_AXI_inst
       (.i_init_calib_complete(i_init_calib_complete),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_awaddr(m00_axi_awaddr),
        .m00_axi_awready(m00_axi_awready),
        .m00_axi_awvalid(m00_axi_awvalid),
        .m00_axi_bready(m00_axi_bready),
        .m00_axi_bvalid(m00_axi_bvalid),
        .m00_axi_wdata(m00_axi_wdata),
        .m00_axi_wready(m00_axi_wready),
        .m00_axi_wstrb(m00_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "Softmax_Tester_v1_0_M00_AXI" *) 
module sim_smax_test_Softmax_Tester_0_0_Softmax_Tester_v1_0_M00_AXI
   (m00_axi_awvalid,
    m00_axi_awaddr,
    m00_axi_wdata,
    m00_axi_bready,
    m00_axi_wstrb,
    m00_axi_aclk,
    m00_axi_aresetn,
    i_init_calib_complete,
    m00_axi_wready,
    m00_axi_awready,
    m00_axi_bvalid);
  output m00_axi_awvalid;
  output [1:0]m00_axi_awaddr;
  output [2:0]m00_axi_wdata;
  output m00_axi_bready;
  output [0:0]m00_axi_wstrb;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  input i_init_calib_complete;
  input m00_axi_wready;
  input m00_axi_awready;
  input m00_axi_bvalid;

  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_next_state_reg[2]_i_2_n_0 ;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire i_init_calib_complete;
  wire m00_axi_aclk;
  wire m00_axi_aresetn;
  wire [1:0]m00_axi_awaddr;
  wire m00_axi_awready;
  wire m00_axi_awvalid;
  wire m00_axi_bready;
  wire m00_axi_bvalid;
  wire [2:0]m00_axi_wdata;
  wire m00_axi_wready;
  wire [0:0]m00_axi_wstrb;
  wire [2:0]next_state;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(m00_axi_aresetn),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .D(next_state[2]),
        .Q(current_state[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[0]));
  LUT6 #(
    .INIT(64'hFF00FFCC330FF0AA)) 
    \FSM_sequential_next_state_reg[0]_i_1 
       (.I0(i_init_calib_complete),
        .I1(m00_axi_wready),
        .I2(m00_axi_awready),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(current_state[1]),
        .O(\FSM_sequential_next_state_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[1]));
  LUT5 #(
    .INIT(32'hECEC3C0C)) 
    \FSM_sequential_next_state_reg[1]_i_1 
       (.I0(m00_axi_wready),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(m00_axi_awready),
        .I4(current_state[2]),
        .O(\FSM_sequential_next_state_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_next_state_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_next_state_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_next_state_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(next_state[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_next_state_reg[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(\FSM_sequential_next_state_reg[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFDDF)) 
    \FSM_sequential_next_state_reg[2]_i_2 
       (.I0(current_state[1]),
        .I1(m00_axi_bvalid),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .O(\FSM_sequential_next_state_reg[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \m00_axi_awaddr[21]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(m00_axi_awaddr[1]));
  LUT3 #(
    .INIT(8'h02)) 
    \m00_axi_awaddr[3]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .O(m00_axi_awaddr[0]));
  LUT3 #(
    .INIT(8'h06)) 
    m00_axi_awvalid_INST_0
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(m00_axi_awvalid));
  LUT3 #(
    .INIT(8'h28)) 
    m00_axi_bready_INST_0
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .O(m00_axi_bready));
  LUT3 #(
    .INIT(8'h08)) 
    \m00_axi_wdata[0]_INST_0 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(m00_axi_wdata[0]));
  LUT3 #(
    .INIT(8'h04)) 
    \m00_axi_wdata[8]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(m00_axi_wdata[2]));
  LUT3 #(
    .INIT(8'h74)) 
    \m00_axi_wstrb[0]_INST_0 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(m00_axi_wstrb));
  LUT3 #(
    .INIT(8'h24)) 
    m00_axi_wvalid_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(m00_axi_wdata[1]));
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
