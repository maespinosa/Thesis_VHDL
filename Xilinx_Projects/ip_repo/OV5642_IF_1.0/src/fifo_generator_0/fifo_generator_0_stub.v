// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
// Date        : Wed May 03 09:17:21 2017
// Host        : Marks-M3800-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/Sourcetree_Local/Thesis_VHDL/Xilinx_Projects/ip_repo/OV5642_IF_1.0/src/fifo_generator_0/fifo_generator_0_stub.v
// Design      : fifo_generator_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_0_1,Vivado 2015.4" *)
module fifo_generator_0(rst, wr_clk, rd_clk, din, wr_en, rd_en, prog_empty_thresh, prog_full_thresh, dout, full, almost_full, empty, almost_empty, valid, prog_full, prog_empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[11:0],wr_en,rd_en,prog_empty_thresh[10:0],prog_full_thresh[10:0],dout[11:0],full,almost_full,empty,almost_empty,valid,prog_full,prog_empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [11:0]din;
  input wr_en;
  input rd_en;
  input [10:0]prog_empty_thresh;
  input [10:0]prog_full_thresh;
  output [11:0]dout;
  output full;
  output almost_full;
  output empty;
  output almost_empty;
  output valid;
  output prog_full;
  output prog_empty;
endmodule
