// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Thu Apr 18 17:20:56 2019
// Host        : Marks-M3800 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               C:/Thesis_Nexys_Video_2016_4/Thesis_Nexys_Video_2016_4.srcs/sources_1/bd/final_accelerator/ip/final_accelerator_Softmax_Layer_32bit_0_0/final_accelerator_Softmax_Layer_32bit_0_0_stub.v
// Design      : final_accelerator_Softmax_Layer_32bit_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Softmax_Layer_32bit_v1_0,Vivado 2016.4" *)
module final_accelerator_Softmax_Layer_32bit_0_0(o_softmax_complete, o_cycle, o_epoch, 
  ila_smax_exp_fsm_state, ila_smax_exp_valid_result, ila_smax_exp_function_ready, 
  ila_smax_exp_step_counter, ila_smax_exp_multiplication_counter, 
  ila_smax_exp_hold_counter, ila_smax_exp_sum_counter, ila_smax_exp_multiplicand_a, 
  ila_smax_exp_multiplicand_b, ila_smax_exp_product, ila_smax_exp_augend, 
  ila_smax_exp_addend, ila_smax_exp_sum, ila_smax_exp_data_reg, ila_smax_exp_mult_reg, 
  ila_smax_exp_fifo_data, ila_smax_exp_fifo_wr_en, ila_smax_exp_exp_done, 
  ila_smax_aw_fsm_state, ila_smax_aw_addend, ila_smax_aw_augend, ila_smax_aw_sum, 
  ila_smax_aw_rd_en, ila_smax_aw_summing_complete, ila_smax_aw_hold_counter, 
  ila_smax_aw_sum_counter, ila_smax_aw_sum_reg, ila_smax_aw_sum_result_valid, 
  ila_smax_dw_fsm_state, ila_smax_dw_divisor, ila_smax_dw_dividend, ila_smax_dw_quotient, 
  ila_smax_dw_rd_en, ila_smax_dw_division_complete, ila_smax_dw_hold_counter, 
  ila_smax_dw_quotient_counter, ila_smax_dw_division_reg, 
  ila_smax_dw_quotient_result_valid, ila_smax_ctrlr_fsm_state, 
  ila_smax_ctrlr_exp_input, ila_smax_ctrlr_exp_input_valid, 
  ila_smax_ctrlr_controller_ready, ila_smax_ctrlr_exp_fifo_select, 
  ila_smax_ctrlr_exp_complete, ila_smax_ctrlr_element_counter, 
  ila_smax_ctrlr_softmax_complete, ila_smax_ctrlr_clear_all, ila_smax_ctrlr_busy, 
  ila_smax_inbuff_din, ila_smax_inbuff_wr_en, ila_smax_inbuff_rd_en, 
  ila_smax_inbuff_dout, ila_smax_inbuff_full, ila_smax_inbuff_almost_full, 
  ila_smax_inbuff_empty, ila_smax_inbuff_almost_empty, ila_smax_inbuff_valid, 
  ila_smax_outbuff_din, ila_smax_outbuff_wr_en, ila_smax_outbuff_rd_en, 
  ila_smax_outbuff_dout, ila_smax_outbuff_full, ila_smax_outbuff_almost_full, 
  ila_smax_outbuff_empty, ila_smax_outbuff_almost_empty, ila_smax_outbuff_valid, 
  ila_smax_exp_mux_data, ila_smax_exp_mux_wr_en, ila_smax_exp_fifo_rd_en, 
  ila_smax_exp_fifo_dout, ila_smax_exp_fifo_full, ila_smax_exp_fifo_almost_full, 
  ila_smax_exp_fifo_empty, ila_smax_exp_fifo_almost_empty, ila_smax_exp_fifo_valid, 
  ila_smax_axi_awaddr, ila_smax_axi_awready, ila_smax_axi_awlen, ila_smax_axi_awvalid, 
  ila_smax_axi_wdata, ila_smax_axi_wready, ila_smax_axi_wlast, ila_smax_axi_wvalid, 
  ila_smax_axi_wstrb, ila_smax_axi_bready, ila_smax_axi_bvalid, ila_smax_axi_araddr, 
  ila_smax_axi_arlen, ila_smax_axi_arvalid, ila_smax_axi_rready, ila_smax_axi_arready, 
  ila_smax_axi_rdata, ila_smax_axi_rlast, ila_smax_axi_rvalid, ila_smax_wbc, ila_smax_rbc, 
  ila_smax_num_elements, ila_smax_input_data_addr_reg, ila_smax_output_data_addr_reg, 
  ila_smax_row_counter, ila_smax_channel_counter, ila_smax_writes_remaining, 
  ila_smax_reads_remaining, ila_smax_calculated, ila_smax_more_bursts_needed, 
  ila_smax_data_loaded, ila_smax_class_counter, ila_smax_master_fsm_state, s00_axi_aclk, 
  s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, s00_axi_awready, 
  s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, s00_axi_bresp, 
  s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, s00_axi_arvalid, 
  s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, s00_axi_rready, 
  m00_axi_txn_done, m00_axi_error, m00_axi_aclk, m00_axi_aresetn, m00_axi_awid, 
  m00_axi_awaddr, m00_axi_awlen, m00_axi_awsize, m00_axi_awburst, m00_axi_awlock, 
  m00_axi_awcache, m00_axi_awprot, m00_axi_awqos, m00_axi_awuser, m00_axi_awvalid, 
  m00_axi_awready, m00_axi_wdata, m00_axi_wstrb, m00_axi_wlast, m00_axi_wuser, 
  m00_axi_wvalid, m00_axi_wready, m00_axi_bid, m00_axi_bresp, m00_axi_buser, m00_axi_bvalid, 
  m00_axi_bready, m00_axi_arid, m00_axi_araddr, m00_axi_arlen, m00_axi_arsize, 
  m00_axi_arburst, m00_axi_arlock, m00_axi_arcache, m00_axi_arprot, m00_axi_arqos, 
  m00_axi_aruser, m00_axi_arvalid, m00_axi_arready, m00_axi_rid, m00_axi_rdata, 
  m00_axi_rresp, m00_axi_rlast, m00_axi_ruser, m00_axi_rvalid, m00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="o_softmax_complete,o_cycle[63:0],o_epoch[63:0],ila_smax_exp_fsm_state[3:0],ila_smax_exp_valid_result,ila_smax_exp_function_ready,ila_smax_exp_step_counter[7:0],ila_smax_exp_multiplication_counter[7:0],ila_smax_exp_hold_counter[7:0],ila_smax_exp_sum_counter[7:0],ila_smax_exp_multiplicand_a[31:0],ila_smax_exp_multiplicand_b[31:0],ila_smax_exp_product[31:0],ila_smax_exp_augend[31:0],ila_smax_exp_addend[31:0],ila_smax_exp_sum[31:0],ila_smax_exp_data_reg[31:0],ila_smax_exp_mult_reg[31:0],ila_smax_exp_fifo_data[31:0],ila_smax_exp_fifo_wr_en,ila_smax_exp_exp_done,ila_smax_aw_fsm_state[3:0],ila_smax_aw_addend[31:0],ila_smax_aw_augend[31:0],ila_smax_aw_sum[31:0],ila_smax_aw_rd_en,ila_smax_aw_summing_complete,ila_smax_aw_hold_counter[7:0],ila_smax_aw_sum_counter[15:0],ila_smax_aw_sum_reg[31:0],ila_smax_aw_sum_result_valid,ila_smax_dw_fsm_state[3:0],ila_smax_dw_divisor[31:0],ila_smax_dw_dividend[31:0],ila_smax_dw_quotient[31:0],ila_smax_dw_rd_en,ila_smax_dw_division_complete,ila_smax_dw_hold_counter[7:0],ila_smax_dw_quotient_counter[15:0],ila_smax_dw_division_reg[31:0],ila_smax_dw_quotient_result_valid,ila_smax_ctrlr_fsm_state[3:0],ila_smax_ctrlr_exp_input[31:0],ila_smax_ctrlr_exp_input_valid,ila_smax_ctrlr_controller_ready,ila_smax_ctrlr_exp_fifo_select,ila_smax_ctrlr_exp_complete,ila_smax_ctrlr_element_counter[15:0],ila_smax_ctrlr_softmax_complete,ila_smax_ctrlr_clear_all,ila_smax_ctrlr_busy,ila_smax_inbuff_din[31:0],ila_smax_inbuff_wr_en,ila_smax_inbuff_rd_en,ila_smax_inbuff_dout[31:0],ila_smax_inbuff_full,ila_smax_inbuff_almost_full,ila_smax_inbuff_empty,ila_smax_inbuff_almost_empty,ila_smax_inbuff_valid,ila_smax_outbuff_din[31:0],ila_smax_outbuff_wr_en,ila_smax_outbuff_rd_en,ila_smax_outbuff_dout[31:0],ila_smax_outbuff_full,ila_smax_outbuff_almost_full,ila_smax_outbuff_empty,ila_smax_outbuff_almost_empty,ila_smax_outbuff_valid,ila_smax_exp_mux_data[31:0],ila_smax_exp_mux_wr_en,ila_smax_exp_fifo_rd_en,ila_smax_exp_fifo_dout[31:0],ila_smax_exp_fifo_full,ila_smax_exp_fifo_almost_full,ila_smax_exp_fifo_empty,ila_smax_exp_fifo_almost_empty,ila_smax_exp_fifo_valid,ila_smax_axi_awaddr[31:0],ila_smax_axi_awready,ila_smax_axi_awlen[7:0],ila_smax_axi_awvalid,ila_smax_axi_wdata[31:0],ila_smax_axi_wready,ila_smax_axi_wlast,ila_smax_axi_wvalid,ila_smax_axi_wstrb[3:0],ila_smax_axi_bready,ila_smax_axi_bvalid,ila_smax_axi_araddr[31:0],ila_smax_axi_arlen[7:0],ila_smax_axi_arvalid,ila_smax_axi_rready,ila_smax_axi_arready,ila_smax_axi_rdata[31:0],ila_smax_axi_rlast,ila_smax_axi_rvalid,ila_smax_wbc[7:0],ila_smax_rbc[7:0],ila_smax_num_elements[15:0],ila_smax_input_data_addr_reg[31:0],ila_smax_output_data_addr_reg[31:0],ila_smax_row_counter[7:0],ila_smax_channel_counter[15:0],ila_smax_writes_remaining[15:0],ila_smax_reads_remaining[15:0],ila_smax_calculated,ila_smax_more_bursts_needed,ila_smax_data_loaded,ila_smax_class_counter[31:0],ila_smax_master_fsm_state[3:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[31:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[31:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,m00_axi_txn_done,m00_axi_error,m00_axi_aclk,m00_axi_aresetn,m00_axi_awid[0:0],m00_axi_awaddr[31:0],m00_axi_awlen[7:0],m00_axi_awsize[2:0],m00_axi_awburst[1:0],m00_axi_awlock,m00_axi_awcache[3:0],m00_axi_awprot[2:0],m00_axi_awqos[3:0],m00_axi_awuser[0:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wlast,m00_axi_wuser[0:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bid[0:0],m00_axi_bresp[1:0],m00_axi_buser[0:0],m00_axi_bvalid,m00_axi_bready,m00_axi_arid[0:0],m00_axi_araddr[31:0],m00_axi_arlen[7:0],m00_axi_arsize[2:0],m00_axi_arburst[1:0],m00_axi_arlock,m00_axi_arcache[3:0],m00_axi_arprot[2:0],m00_axi_arqos[3:0],m00_axi_aruser[0:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rid[0:0],m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rlast,m00_axi_ruser[0:0],m00_axi_rvalid,m00_axi_rready" */;
  output o_softmax_complete;
  output [63:0]o_cycle;
  output [63:0]o_epoch;
  output [3:0]ila_smax_exp_fsm_state;
  output ila_smax_exp_valid_result;
  output ila_smax_exp_function_ready;
  output [7:0]ila_smax_exp_step_counter;
  output [7:0]ila_smax_exp_multiplication_counter;
  output [7:0]ila_smax_exp_hold_counter;
  output [7:0]ila_smax_exp_sum_counter;
  output [31:0]ila_smax_exp_multiplicand_a;
  output [31:0]ila_smax_exp_multiplicand_b;
  output [31:0]ila_smax_exp_product;
  output [31:0]ila_smax_exp_augend;
  output [31:0]ila_smax_exp_addend;
  output [31:0]ila_smax_exp_sum;
  output [31:0]ila_smax_exp_data_reg;
  output [31:0]ila_smax_exp_mult_reg;
  output [31:0]ila_smax_exp_fifo_data;
  output ila_smax_exp_fifo_wr_en;
  output ila_smax_exp_exp_done;
  output [3:0]ila_smax_aw_fsm_state;
  output [31:0]ila_smax_aw_addend;
  output [31:0]ila_smax_aw_augend;
  output [31:0]ila_smax_aw_sum;
  output ila_smax_aw_rd_en;
  output ila_smax_aw_summing_complete;
  output [7:0]ila_smax_aw_hold_counter;
  output [15:0]ila_smax_aw_sum_counter;
  output [31:0]ila_smax_aw_sum_reg;
  output ila_smax_aw_sum_result_valid;
  output [3:0]ila_smax_dw_fsm_state;
  output [31:0]ila_smax_dw_divisor;
  output [31:0]ila_smax_dw_dividend;
  output [31:0]ila_smax_dw_quotient;
  output ila_smax_dw_rd_en;
  output ila_smax_dw_division_complete;
  output [7:0]ila_smax_dw_hold_counter;
  output [15:0]ila_smax_dw_quotient_counter;
  output [31:0]ila_smax_dw_division_reg;
  output ila_smax_dw_quotient_result_valid;
  output [3:0]ila_smax_ctrlr_fsm_state;
  output [31:0]ila_smax_ctrlr_exp_input;
  output ila_smax_ctrlr_exp_input_valid;
  output ila_smax_ctrlr_controller_ready;
  output ila_smax_ctrlr_exp_fifo_select;
  output ila_smax_ctrlr_exp_complete;
  output [15:0]ila_smax_ctrlr_element_counter;
  output ila_smax_ctrlr_softmax_complete;
  output ila_smax_ctrlr_clear_all;
  output ila_smax_ctrlr_busy;
  output [31:0]ila_smax_inbuff_din;
  output ila_smax_inbuff_wr_en;
  output ila_smax_inbuff_rd_en;
  output [31:0]ila_smax_inbuff_dout;
  output ila_smax_inbuff_full;
  output ila_smax_inbuff_almost_full;
  output ila_smax_inbuff_empty;
  output ila_smax_inbuff_almost_empty;
  output ila_smax_inbuff_valid;
  output [31:0]ila_smax_outbuff_din;
  output ila_smax_outbuff_wr_en;
  output ila_smax_outbuff_rd_en;
  output [31:0]ila_smax_outbuff_dout;
  output ila_smax_outbuff_full;
  output ila_smax_outbuff_almost_full;
  output ila_smax_outbuff_empty;
  output ila_smax_outbuff_almost_empty;
  output ila_smax_outbuff_valid;
  output [31:0]ila_smax_exp_mux_data;
  output ila_smax_exp_mux_wr_en;
  output ila_smax_exp_fifo_rd_en;
  output [31:0]ila_smax_exp_fifo_dout;
  output ila_smax_exp_fifo_full;
  output ila_smax_exp_fifo_almost_full;
  output ila_smax_exp_fifo_empty;
  output ila_smax_exp_fifo_almost_empty;
  output ila_smax_exp_fifo_valid;
  output [31:0]ila_smax_axi_awaddr;
  output ila_smax_axi_awready;
  output [7:0]ila_smax_axi_awlen;
  output ila_smax_axi_awvalid;
  output [31:0]ila_smax_axi_wdata;
  output ila_smax_axi_wready;
  output ila_smax_axi_wlast;
  output ila_smax_axi_wvalid;
  output [3:0]ila_smax_axi_wstrb;
  output ila_smax_axi_bready;
  output ila_smax_axi_bvalid;
  output [31:0]ila_smax_axi_araddr;
  output [7:0]ila_smax_axi_arlen;
  output ila_smax_axi_arvalid;
  output ila_smax_axi_rready;
  output ila_smax_axi_arready;
  output [31:0]ila_smax_axi_rdata;
  output ila_smax_axi_rlast;
  output ila_smax_axi_rvalid;
  output [7:0]ila_smax_wbc;
  output [7:0]ila_smax_rbc;
  output [15:0]ila_smax_num_elements;
  output [31:0]ila_smax_input_data_addr_reg;
  output [31:0]ila_smax_output_data_addr_reg;
  output [7:0]ila_smax_row_counter;
  output [15:0]ila_smax_channel_counter;
  output [15:0]ila_smax_writes_remaining;
  output [15:0]ila_smax_reads_remaining;
  output ila_smax_calculated;
  output ila_smax_more_bursts_needed;
  output ila_smax_data_loaded;
  output [31:0]ila_smax_class_counter;
  output [3:0]ila_smax_master_fsm_state;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [31:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [31:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  output m00_axi_txn_done;
  output m00_axi_error;
  input m00_axi_aclk;
  input m00_axi_aresetn;
  output [0:0]m00_axi_awid;
  output [31:0]m00_axi_awaddr;
  output [7:0]m00_axi_awlen;
  output [2:0]m00_axi_awsize;
  output [1:0]m00_axi_awburst;
  output m00_axi_awlock;
  output [3:0]m00_axi_awcache;
  output [2:0]m00_axi_awprot;
  output [3:0]m00_axi_awqos;
  output [0:0]m00_axi_awuser;
  output m00_axi_awvalid;
  input m00_axi_awready;
  output [31:0]m00_axi_wdata;
  output [3:0]m00_axi_wstrb;
  output m00_axi_wlast;
  output [0:0]m00_axi_wuser;
  output m00_axi_wvalid;
  input m00_axi_wready;
  input [0:0]m00_axi_bid;
  input [1:0]m00_axi_bresp;
  input [0:0]m00_axi_buser;
  input m00_axi_bvalid;
  output m00_axi_bready;
  output [0:0]m00_axi_arid;
  output [31:0]m00_axi_araddr;
  output [7:0]m00_axi_arlen;
  output [2:0]m00_axi_arsize;
  output [1:0]m00_axi_arburst;
  output m00_axi_arlock;
  output [3:0]m00_axi_arcache;
  output [2:0]m00_axi_arprot;
  output [3:0]m00_axi_arqos;
  output [0:0]m00_axi_aruser;
  output m00_axi_arvalid;
  input m00_axi_arready;
  input [0:0]m00_axi_rid;
  input [31:0]m00_axi_rdata;
  input [1:0]m00_axi_rresp;
  input m00_axi_rlast;
  input [0:0]m00_axi_ruser;
  input m00_axi_rvalid;
  output m00_axi_rready;
endmodule
