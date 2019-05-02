// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Jan 14 00:34:10 2019
// Host        : Marks-M3800 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top final_accelerator_VGA_IF_0_0 -prefix
//               final_accelerator_VGA_IF_0_0_ neural_net_accel_conv_db_VGA_IF_0_0_sim_netlist.v
// Design      : neural_net_accel_conv_db_VGA_IF_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "VGA_FIFO,fifo_generator_v13_1_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_1_3,Vivado 2016.4" *) 
module final_accelerator_VGA_IF_0_0_VGA_FIFO
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_full_thresh,
    dout,
    full,
    almost_full,
    empty,
    almost_empty,
    valid,
    prog_full,
    prog_empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [11:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  input [10:0]prog_empty_thresh;
  input [10:0]prog_full_thresh;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [11:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output valid;
  output prog_full;
  output prog_empty;

  wire almost_empty;
  wire almost_full;
  wire [11:0]din;
  wire [11:0]dout;
  wire empty;
  wire full;
  wire prog_empty;
  wire [10:0]prog_empty_thresh;
  wire prog_full;
  wire [10:0]prog_full_thresh;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [10:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [10:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "11" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "12" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "12" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "1" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "2kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "3" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "2047" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "2046" *) 
  (* C_PROG_FULL_TYPE = "3" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "11" *) 
  (* C_WR_DEPTH = "2048" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "11" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3 U0
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[10:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(prog_empty),
        .prog_empty_thresh(prog_empty_thresh),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[10:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(valid),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[10:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

module final_accelerator_VGA_IF_0_0_VGA_IF_v1_0
   (s00_axi_arready,
    s00_axi_rvalid,
    m00_axi_rready,
    s_axi_intr_wready,
    s_axi_intr_awready,
    s_axi_intr_arready,
    m00_axi_araddr,
    vga_data_out,
    pixel_valid_out,
    read_en_out,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_rdata,
    m00_axi_arvalid,
    o_vga_data,
    s00_axi_bvalid,
    s_axi_intr_bvalid,
    s_axi_intr_rvalid,
    s_axi_intr_rdata,
    irq,
    o_hsync,
    o_vsync,
    s00_axi_arvalid,
    m00_axi_rvalid,
    m00_axi_rdata,
    s_axi_intr_awvalid,
    s_axi_intr_wvalid,
    m00_axi_aresetn,
    s_axi_intr_arvalid,
    s_axi_intr_aresetn,
    i_axi_master_clk,
    i_VGA_CLK,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    i_axi_slave_clk,
    s00_axi_araddr,
    m00_axi_aclk,
    s_axi_intr_aclk,
    s_axi_intr_awaddr,
    s_axi_intr_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn,
    m00_axi_arready,
    i_reset_n,
    s00_axi_rready,
    s00_axi_bready,
    i_start_display_irq,
    m00_axi_rlast,
    s_axi_intr_bready,
    s_axi_intr_rready,
    s_axi_intr_wdata);
  output s00_axi_arready;
  output s00_axi_rvalid;
  output m00_axi_rready;
  output s_axi_intr_wready;
  output s_axi_intr_awready;
  output s_axi_intr_arready;
  output [21:0]m00_axi_araddr;
  output [11:0]vga_data_out;
  output pixel_valid_out;
  output read_en_out;
  output s00_axi_awready;
  output s00_axi_wready;
  output [31:0]s00_axi_rdata;
  output m00_axi_arvalid;
  output [11:0]o_vga_data;
  output s00_axi_bvalid;
  output s_axi_intr_bvalid;
  output s_axi_intr_rvalid;
  output [0:0]s_axi_intr_rdata;
  output irq;
  output o_hsync;
  output o_vsync;
  input s00_axi_arvalid;
  input m00_axi_rvalid;
  input [11:0]m00_axi_rdata;
  input s_axi_intr_awvalid;
  input s_axi_intr_wvalid;
  input m00_axi_aresetn;
  input s_axi_intr_arvalid;
  input s_axi_intr_aresetn;
  input i_axi_master_clk;
  input i_VGA_CLK;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input i_axi_slave_clk;
  input [2:0]s00_axi_araddr;
  input m00_axi_aclk;
  input s_axi_intr_aclk;
  input [2:0]s_axi_intr_awaddr;
  input [2:0]s_axi_intr_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input m00_axi_arready;
  input i_reset_n;
  input s00_axi_rready;
  input s00_axi_bready;
  input i_start_display_irq;
  input m00_axi_rlast;
  input s_axi_intr_bready;
  input s_axi_intr_rready;
  input [0:0]s_axi_intr_wdata;

  wire INIT_AXI_TXN;
  wire NET1274;
  wire VGA_IF_v1_0_M00_AXI_inst_n_25;
  wire VGA_IF_v1_0_M00_AXI_inst_n_26;
  wire VGA_IF_v1_0_M00_AXI_inst_n_27;
  wire VGA_IF_v1_0_M00_AXI_inst_n_28;
  wire VGA_IF_v1_0_M00_AXI_inst_n_29;
  wire VGA_IF_v1_0_M00_AXI_inst_n_30;
  wire VGA_IF_v1_0_M00_AXI_inst_n_31;
  wire VGA_IF_v1_0_M00_AXI_inst_n_32;
  wire VGA_IF_v1_0_M00_AXI_inst_n_33;
  wire VGA_IF_v1_0_M00_AXI_inst_n_34;
  wire VGA_IF_v1_0_M00_AXI_inst_n_35;
  wire VGA_IF_v1_0_M00_AXI_inst_n_36;
  wire VGA_IF_v1_0_S00_AXI_inst_n_10;
  wire VGA_IF_v1_0_S00_AXI_inst_n_102;
  wire VGA_IF_v1_0_S00_AXI_inst_n_106;
  wire VGA_IF_v1_0_S00_AXI_inst_n_11;
  wire VGA_IF_v1_0_S00_AXI_inst_n_12;
  wire VGA_IF_v1_0_S00_AXI_inst_n_13;
  wire VGA_IF_v1_0_S00_AXI_inst_n_14;
  wire VGA_IF_v1_0_S00_AXI_inst_n_15;
  wire VGA_IF_v1_0_S00_AXI_inst_n_16;
  wire VGA_IF_v1_0_S00_AXI_inst_n_17;
  wire VGA_IF_v1_0_S00_AXI_inst_n_18;
  wire VGA_IF_v1_0_S00_AXI_inst_n_19;
  wire VGA_IF_v1_0_S00_AXI_inst_n_20;
  wire VGA_IF_v1_0_S00_AXI_inst_n_21;
  wire VGA_IF_v1_0_S00_AXI_inst_n_22;
  wire VGA_IF_v1_0_S00_AXI_inst_n_23;
  wire VGA_IF_v1_0_S00_AXI_inst_n_24;
  wire VGA_IF_v1_0_S00_AXI_inst_n_25;
  wire VGA_IF_v1_0_S00_AXI_inst_n_26;
  wire VGA_IF_v1_0_S00_AXI_inst_n_27;
  wire VGA_IF_v1_0_S00_AXI_inst_n_28;
  wire VGA_IF_v1_0_S00_AXI_inst_n_29;
  wire VGA_IF_v1_0_S00_AXI_inst_n_30;
  wire VGA_IF_v1_0_S00_AXI_inst_n_31;
  wire VGA_IF_v1_0_S00_AXI_inst_n_32;
  wire VGA_IF_v1_0_S00_AXI_inst_n_33;
  wire VGA_IF_v1_0_S00_AXI_inst_n_34;
  wire VGA_IF_v1_0_S00_AXI_inst_n_35;
  wire VGA_IF_v1_0_S00_AXI_inst_n_36;
  wire VGA_IF_v1_0_S00_AXI_inst_n_37;
  wire VGA_IF_v1_0_S00_AXI_inst_n_38;
  wire VGA_IF_v1_0_S00_AXI_inst_n_39;
  wire VGA_IF_v1_0_S00_AXI_inst_n_42;
  wire VGA_IF_v1_0_S00_AXI_inst_n_5;
  wire VGA_IF_v1_0_S00_AXI_inst_n_58;
  wire VGA_IF_v1_0_S00_AXI_inst_n_6;
  wire VGA_IF_v1_0_S00_AXI_inst_n_66;
  wire VGA_IF_v1_0_S00_AXI_inst_n_7;
  wire VGA_IF_v1_0_S00_AXI_inst_n_8;
  wire VGA_IF_v1_0_S00_AXI_inst_n_82;
  wire VGA_IF_v1_0_S00_AXI_inst_n_86;
  wire VGA_IF_v1_0_S00_AXI_inst_n_9;
  wire VGA_IF_v1_0_S00_AXI_inst_n_90;
  wire VGA_IF_v1_0_S00_AXI_inst_n_94;
  wire VGA_IF_v1_0_S00_AXI_inst_n_98;
  wire [3:2]axi_araddr;
  wire [31:0]fifo_reg;
  wire i_VGA_CLK;
  wire i_axi_master_clk;
  wire i_axi_slave_clk;
  wire i_reset_n;
  wire i_start_display_irq;
  wire inbuff_almost_empty;
  wire inbuff_empty;
  wire inbuff_prog_empty;
  wire inbuff_valid;
  wire int_inbuff_almost_full;
  wire int_inbuff_full;
  wire int_inbuff_prog_full;
  wire [0:0]int_o_start_reg;
  wire int_rdone;
  wire int_read_next;
  wire irq;
  wire m00_axi_aclk;
  wire [21:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [11:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire o_hsync;
  wire [11:0]o_vga_data;
  wire o_vsync;
  wire p_0_in0;
  wire pixel_valid_out;
  wire read_en_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
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
  wire s_axi_intr_aclk;
  wire [2:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [2:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]s_axi_intr_rdata;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [0:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;
  wire [0:0]slv_reg_wren;
  wire [11:0]vga_data_out;
  wire vga_if_ip_inst_n_26;
  wire vga_if_ip_inst_n_28;
  wire vga_if_ip_inst_n_29;
  wire vga_if_ip_inst_n_30;
  wire vga_if_ip_inst_n_31;
  wire vga_if_ip_inst_n_32;
  wire vga_if_ip_inst_n_33;
  wire vga_if_ip_inst_n_34;
  wire vga_if_ip_inst_n_35;
  wire vga_if_ip_inst_n_36;
  wire vga_if_ip_inst_n_37;
  wire vga_if_ip_inst_n_38;
  wire vga_if_ip_inst_n_39;
  wire vga_if_ip_inst_n_40;
  wire vga_if_ip_inst_n_41;
  wire vga_if_ip_inst_n_42;
  wire vga_if_ip_inst_n_43;
  wire vga_if_ip_inst_n_44;
  wire vga_if_ip_inst_n_45;
  wire vga_if_ip_inst_n_46;
  wire vga_if_ip_inst_n_47;
  wire vga_if_ip_inst_n_48;
  wire vga_if_ip_inst_n_49;
  wire vga_if_ip_inst_n_50;
  wire vga_if_ip_inst_n_51;
  wire vga_if_ip_inst_n_52;
  wire vga_if_ip_inst_n_53;
  wire vga_if_ip_inst_n_54;
  wire vga_if_ip_inst_n_55;
  wire vga_if_ip_inst_n_56;
  wire vga_if_ip_inst_n_57;
  wire vga_if_ip_inst_n_58;
  wire video_on;
  wire [31:0]wr_slv_reg1;
  wire [31:0]wr_slv_reg2;
  wire [31:0]wr_slv_reg3;
  wire [31:1]wr_slv_reg4;

  final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_M00_AXI VGA_IF_v1_0_M00_AXI_inst
       (.INIT_AXI_TXN(INIT_AXI_TXN),
        .din({VGA_IF_v1_0_M00_AXI_inst_n_25,VGA_IF_v1_0_M00_AXI_inst_n_26,VGA_IF_v1_0_M00_AXI_inst_n_27,VGA_IF_v1_0_M00_AXI_inst_n_28,VGA_IF_v1_0_M00_AXI_inst_n_29,VGA_IF_v1_0_M00_AXI_inst_n_30,VGA_IF_v1_0_M00_AXI_inst_n_31,VGA_IF_v1_0_M00_AXI_inst_n_32,VGA_IF_v1_0_M00_AXI_inst_n_33,VGA_IF_v1_0_M00_AXI_inst_n_34,VGA_IF_v1_0_M00_AXI_inst_n_35,VGA_IF_v1_0_M00_AXI_inst_n_36}),
        .int_rdone(int_rdone),
        .int_read_next(int_read_next),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(m00_axi_araddr),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_rdata(m00_axi_rdata),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .prog_full(int_inbuff_prog_full));
  final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S00_AXI VGA_IF_v1_0_S00_AXI_inst
       (.D({VGA_IF_v1_0_S00_AXI_inst_n_5,VGA_IF_v1_0_S00_AXI_inst_n_6,VGA_IF_v1_0_S00_AXI_inst_n_7,VGA_IF_v1_0_S00_AXI_inst_n_8,VGA_IF_v1_0_S00_AXI_inst_n_9,VGA_IF_v1_0_S00_AXI_inst_n_10,VGA_IF_v1_0_S00_AXI_inst_n_11,VGA_IF_v1_0_S00_AXI_inst_n_12,VGA_IF_v1_0_S00_AXI_inst_n_13,VGA_IF_v1_0_S00_AXI_inst_n_14,VGA_IF_v1_0_S00_AXI_inst_n_15,VGA_IF_v1_0_S00_AXI_inst_n_16,VGA_IF_v1_0_S00_AXI_inst_n_17,VGA_IF_v1_0_S00_AXI_inst_n_18,VGA_IF_v1_0_S00_AXI_inst_n_19,VGA_IF_v1_0_S00_AXI_inst_n_20,VGA_IF_v1_0_S00_AXI_inst_n_21,VGA_IF_v1_0_S00_AXI_inst_n_22,VGA_IF_v1_0_S00_AXI_inst_n_23,VGA_IF_v1_0_S00_AXI_inst_n_24,VGA_IF_v1_0_S00_AXI_inst_n_25,VGA_IF_v1_0_S00_AXI_inst_n_26,VGA_IF_v1_0_S00_AXI_inst_n_27,VGA_IF_v1_0_S00_AXI_inst_n_28,VGA_IF_v1_0_S00_AXI_inst_n_29,VGA_IF_v1_0_S00_AXI_inst_n_30,VGA_IF_v1_0_S00_AXI_inst_n_31,VGA_IF_v1_0_S00_AXI_inst_n_32,VGA_IF_v1_0_S00_AXI_inst_n_33,VGA_IF_v1_0_S00_AXI_inst_n_34,VGA_IF_v1_0_S00_AXI_inst_n_35,VGA_IF_v1_0_S00_AXI_inst_n_36}),
        .E(VGA_IF_v1_0_S00_AXI_inst_n_42),
        .NET1274(NET1274),
        .Q({VGA_IF_v1_0_S00_AXI_inst_n_37,VGA_IF_v1_0_S00_AXI_inst_n_38,VGA_IF_v1_0_S00_AXI_inst_n_39,p_0_in0,slv_reg_wren}),
        .almost_full(int_inbuff_almost_full),
        .\axi_araddr_reg[3]_0 (axi_araddr),
        .\fifo_reg_reg[31] ({wr_slv_reg4[31:25],VGA_IF_v1_0_S00_AXI_inst_n_82,wr_slv_reg4[23:21],VGA_IF_v1_0_S00_AXI_inst_n_86,wr_slv_reg4[19:17],VGA_IF_v1_0_S00_AXI_inst_n_90,wr_slv_reg4[15:13],VGA_IF_v1_0_S00_AXI_inst_n_94,wr_slv_reg4[11:9],VGA_IF_v1_0_S00_AXI_inst_n_98,wr_slv_reg4[7:5],VGA_IF_v1_0_S00_AXI_inst_n_102,wr_slv_reg4[3:1],VGA_IF_v1_0_S00_AXI_inst_n_106}),
        .\fifo_reg_reg[31]_0 (fifo_reg),
        .full(int_inbuff_full),
        .\image_data_addr_reg_reg[31] (wr_slv_reg2),
        .inbuff_almost_empty(inbuff_almost_empty),
        .inbuff_empty(inbuff_empty),
        .inbuff_prog_empty(inbuff_prog_empty),
        .inbuff_valid(inbuff_valid),
        .\pixel_counters_reg[0] (vga_if_ip_inst_n_26),
        .\pixel_counters_reg[10] (vga_if_ip_inst_n_37),
        .\pixel_counters_reg[11] (vga_if_ip_inst_n_38),
        .\pixel_counters_reg[12] (vga_if_ip_inst_n_39),
        .\pixel_counters_reg[13] (vga_if_ip_inst_n_40),
        .\pixel_counters_reg[14] (vga_if_ip_inst_n_41),
        .\pixel_counters_reg[15] (vga_if_ip_inst_n_42),
        .\pixel_counters_reg[16] (vga_if_ip_inst_n_43),
        .\pixel_counters_reg[17] (vga_if_ip_inst_n_44),
        .\pixel_counters_reg[18] (vga_if_ip_inst_n_45),
        .\pixel_counters_reg[19] (vga_if_ip_inst_n_46),
        .\pixel_counters_reg[1] (vga_if_ip_inst_n_28),
        .\pixel_counters_reg[20] (vga_if_ip_inst_n_47),
        .\pixel_counters_reg[21] (vga_if_ip_inst_n_48),
        .\pixel_counters_reg[22] (vga_if_ip_inst_n_49),
        .\pixel_counters_reg[23] (vga_if_ip_inst_n_50),
        .\pixel_counters_reg[24] (vga_if_ip_inst_n_51),
        .\pixel_counters_reg[25] (vga_if_ip_inst_n_52),
        .\pixel_counters_reg[26] (vga_if_ip_inst_n_53),
        .\pixel_counters_reg[27] (vga_if_ip_inst_n_54),
        .\pixel_counters_reg[28] (vga_if_ip_inst_n_55),
        .\pixel_counters_reg[29] (vga_if_ip_inst_n_56),
        .\pixel_counters_reg[2] (vga_if_ip_inst_n_29),
        .\pixel_counters_reg[30] (vga_if_ip_inst_n_57),
        .\pixel_counters_reg[31] (wr_slv_reg3),
        .\pixel_counters_reg[31]_0 (vga_if_ip_inst_n_58),
        .\pixel_counters_reg[3] (vga_if_ip_inst_n_30),
        .\pixel_counters_reg[4] (vga_if_ip_inst_n_31),
        .\pixel_counters_reg[5] (vga_if_ip_inst_n_32),
        .\pixel_counters_reg[6] (vga_if_ip_inst_n_33),
        .\pixel_counters_reg[7] (vga_if_ip_inst_n_34),
        .\pixel_counters_reg[8] (vga_if_ip_inst_n_35),
        .\pixel_counters_reg[9] (vga_if_ip_inst_n_36),
        .prog_full(int_inbuff_prog_full),
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
        .\start_reg_reg[0] (int_o_start_reg),
        .\status_reg_reg[31] ({wr_slv_reg1[31:17],VGA_IF_v1_0_S00_AXI_inst_n_58,wr_slv_reg1[15:9],VGA_IF_v1_0_S00_AXI_inst_n_66,wr_slv_reg1[7:0]}),
        .video_on(video_on));
  final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S_AXI_INTR VGA_IF_v1_0_S_AXI_INTR_inst
       (.irq(irq),
        .s_axi_intr_aclk(s_axi_intr_aclk),
        .s_axi_intr_araddr(s_axi_intr_araddr),
        .s_axi_intr_aresetn(s_axi_intr_aresetn),
        .s_axi_intr_arready(s_axi_intr_arready),
        .s_axi_intr_arvalid(s_axi_intr_arvalid),
        .s_axi_intr_awaddr(s_axi_intr_awaddr),
        .s_axi_intr_awready(s_axi_intr_awready),
        .s_axi_intr_awvalid(s_axi_intr_awvalid),
        .s_axi_intr_bready(s_axi_intr_bready),
        .s_axi_intr_bvalid(s_axi_intr_bvalid),
        .s_axi_intr_rdata(s_axi_intr_rdata),
        .s_axi_intr_rready(s_axi_intr_rready),
        .s_axi_intr_rvalid(s_axi_intr_rvalid),
        .s_axi_intr_wdata(s_axi_intr_wdata),
        .s_axi_intr_wready(s_axi_intr_wready),
        .s_axi_intr_wvalid(s_axi_intr_wvalid));
  final_accelerator_VGA_IF_0_0_vga_if_ip vga_if_ip_inst
       (.D({VGA_IF_v1_0_S00_AXI_inst_n_5,VGA_IF_v1_0_S00_AXI_inst_n_6,VGA_IF_v1_0_S00_AXI_inst_n_7,VGA_IF_v1_0_S00_AXI_inst_n_8,VGA_IF_v1_0_S00_AXI_inst_n_9,VGA_IF_v1_0_S00_AXI_inst_n_10,VGA_IF_v1_0_S00_AXI_inst_n_11,VGA_IF_v1_0_S00_AXI_inst_n_12,VGA_IF_v1_0_S00_AXI_inst_n_13,VGA_IF_v1_0_S00_AXI_inst_n_14,VGA_IF_v1_0_S00_AXI_inst_n_15,VGA_IF_v1_0_S00_AXI_inst_n_16,VGA_IF_v1_0_S00_AXI_inst_n_17,VGA_IF_v1_0_S00_AXI_inst_n_18,VGA_IF_v1_0_S00_AXI_inst_n_19,VGA_IF_v1_0_S00_AXI_inst_n_20,VGA_IF_v1_0_S00_AXI_inst_n_21,VGA_IF_v1_0_S00_AXI_inst_n_22,VGA_IF_v1_0_S00_AXI_inst_n_23,VGA_IF_v1_0_S00_AXI_inst_n_24,VGA_IF_v1_0_S00_AXI_inst_n_25,VGA_IF_v1_0_S00_AXI_inst_n_26,VGA_IF_v1_0_S00_AXI_inst_n_27,VGA_IF_v1_0_S00_AXI_inst_n_28,VGA_IF_v1_0_S00_AXI_inst_n_29,VGA_IF_v1_0_S00_AXI_inst_n_30,VGA_IF_v1_0_S00_AXI_inst_n_31,VGA_IF_v1_0_S00_AXI_inst_n_32,VGA_IF_v1_0_S00_AXI_inst_n_33,VGA_IF_v1_0_S00_AXI_inst_n_34,VGA_IF_v1_0_S00_AXI_inst_n_35,VGA_IF_v1_0_S00_AXI_inst_n_36}),
        .E(VGA_IF_v1_0_S00_AXI_inst_n_42),
        .INIT_AXI_TXN(INIT_AXI_TXN),
        .NET1274(NET1274),
        .Q(int_o_start_reg),
        .almost_full(int_inbuff_almost_full),
        .\axi_araddr_reg[3] (axi_araddr),
        .\axi_rdata_reg[0] (vga_if_ip_inst_n_26),
        .\axi_rdata_reg[10] (vga_if_ip_inst_n_37),
        .\axi_rdata_reg[11] (vga_if_ip_inst_n_38),
        .\axi_rdata_reg[12] (vga_if_ip_inst_n_39),
        .\axi_rdata_reg[13] (vga_if_ip_inst_n_40),
        .\axi_rdata_reg[14] (vga_if_ip_inst_n_41),
        .\axi_rdata_reg[15] (vga_if_ip_inst_n_42),
        .\axi_rdata_reg[16] (vga_if_ip_inst_n_43),
        .\axi_rdata_reg[17] (vga_if_ip_inst_n_44),
        .\axi_rdata_reg[18] (vga_if_ip_inst_n_45),
        .\axi_rdata_reg[19] (vga_if_ip_inst_n_46),
        .\axi_rdata_reg[1] (vga_if_ip_inst_n_28),
        .\axi_rdata_reg[20] (vga_if_ip_inst_n_47),
        .\axi_rdata_reg[21] (vga_if_ip_inst_n_48),
        .\axi_rdata_reg[22] (vga_if_ip_inst_n_49),
        .\axi_rdata_reg[23] (vga_if_ip_inst_n_50),
        .\axi_rdata_reg[24] (vga_if_ip_inst_n_51),
        .\axi_rdata_reg[25] (vga_if_ip_inst_n_52),
        .\axi_rdata_reg[26] (vga_if_ip_inst_n_53),
        .\axi_rdata_reg[27] (vga_if_ip_inst_n_54),
        .\axi_rdata_reg[28] (vga_if_ip_inst_n_55),
        .\axi_rdata_reg[29] (vga_if_ip_inst_n_56),
        .\axi_rdata_reg[2] (vga_if_ip_inst_n_29),
        .\axi_rdata_reg[30] (vga_if_ip_inst_n_57),
        .\axi_rdata_reg[31] (vga_if_ip_inst_n_58),
        .\axi_rdata_reg[31]_0 (fifo_reg),
        .\axi_rdata_reg[3] (vga_if_ip_inst_n_30),
        .\axi_rdata_reg[4] (vga_if_ip_inst_n_31),
        .\axi_rdata_reg[5] (vga_if_ip_inst_n_32),
        .\axi_rdata_reg[6] (vga_if_ip_inst_n_33),
        .\axi_rdata_reg[7] (vga_if_ip_inst_n_34),
        .\axi_rdata_reg[8] (vga_if_ip_inst_n_35),
        .\axi_rdata_reg[9] (vga_if_ip_inst_n_36),
        .din({VGA_IF_v1_0_M00_AXI_inst_n_25,VGA_IF_v1_0_M00_AXI_inst_n_26,VGA_IF_v1_0_M00_AXI_inst_n_27,VGA_IF_v1_0_M00_AXI_inst_n_28,VGA_IF_v1_0_M00_AXI_inst_n_29,VGA_IF_v1_0_M00_AXI_inst_n_30,VGA_IF_v1_0_M00_AXI_inst_n_31,VGA_IF_v1_0_M00_AXI_inst_n_32,VGA_IF_v1_0_M00_AXI_inst_n_33,VGA_IF_v1_0_M00_AXI_inst_n_34,VGA_IF_v1_0_M00_AXI_inst_n_35,VGA_IF_v1_0_M00_AXI_inst_n_36}),
        .full(int_inbuff_full),
        .i_VGA_CLK(i_VGA_CLK),
        .i_axi_master_clk(i_axi_master_clk),
        .i_axi_slave_clk(i_axi_slave_clk),
        .i_reset_n(i_reset_n),
        .i_start_display_irq(i_start_display_irq),
        .inbuff_almost_empty(inbuff_almost_empty),
        .inbuff_empty(inbuff_empty),
        .inbuff_prog_empty(inbuff_prog_empty),
        .inbuff_valid(inbuff_valid),
        .int_rdone(int_rdone),
        .int_read_next(int_read_next),
        .\int_slv_reg_wren_reg[4] ({VGA_IF_v1_0_S00_AXI_inst_n_37,VGA_IF_v1_0_S00_AXI_inst_n_38,VGA_IF_v1_0_S00_AXI_inst_n_39,p_0_in0,slv_reg_wren}),
        .o_hsync(o_hsync),
        .o_vga_data(o_vga_data),
        .o_vsync(o_vsync),
        .prog_full(int_inbuff_prog_full),
        .read_en_out(read_en_out),
        .valid(pixel_valid_out),
        .vga_data_out(vga_data_out),
        .video_on(video_on),
        .\wr_slv_reg1_reg[31] ({wr_slv_reg1[31:17],VGA_IF_v1_0_S00_AXI_inst_n_58,wr_slv_reg1[15:9],VGA_IF_v1_0_S00_AXI_inst_n_66,wr_slv_reg1[7:0]}),
        .\wr_slv_reg2_reg[31] (wr_slv_reg2),
        .\wr_slv_reg3_reg[31] (wr_slv_reg3),
        .\wr_slv_reg4_reg[31] ({wr_slv_reg4[31:25],VGA_IF_v1_0_S00_AXI_inst_n_82,wr_slv_reg4[23:21],VGA_IF_v1_0_S00_AXI_inst_n_86,wr_slv_reg4[19:17],VGA_IF_v1_0_S00_AXI_inst_n_90,wr_slv_reg4[15:13],VGA_IF_v1_0_S00_AXI_inst_n_94,wr_slv_reg4[11:9],VGA_IF_v1_0_S00_AXI_inst_n_98,wr_slv_reg4[7:5],VGA_IF_v1_0_S00_AXI_inst_n_102,wr_slv_reg4[3:1],VGA_IF_v1_0_S00_AXI_inst_n_106}));
endmodule

module final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_M00_AXI
   (m00_axi_araddr,
    m00_axi_rready,
    int_rdone,
    m00_axi_arvalid,
    din,
    int_read_next,
    INIT_AXI_TXN,
    m00_axi_aclk,
    m00_axi_rvalid,
    m00_axi_rdata,
    m00_axi_aresetn,
    m00_axi_arready,
    prog_full,
    m00_axi_rlast);
  output [21:0]m00_axi_araddr;
  output m00_axi_rready;
  output int_rdone;
  output m00_axi_arvalid;
  output [11:0]din;
  output int_read_next;
  input INIT_AXI_TXN;
  input m00_axi_aclk;
  input m00_axi_rvalid;
  input [11:0]m00_axi_rdata;
  input m00_axi_aresetn;
  input m00_axi_arready;
  input prog_full;
  input m00_axi_rlast;

  wire INIT_AXI_TXN;
  wire M_AXI_ARADDR_carry_i_1_n_0;
  wire M_AXI_ARADDR_carry_i_2_n_0;
  wire M_AXI_ARADDR_carry_i_3_n_0;
  wire M_AXI_ARADDR_carry_n_2;
  wire M_AXI_ARADDR_carry_n_3;
  wire \axi_araddr[13]_i_2_n_0 ;
  wire \axi_araddr[13]_i_3_n_0 ;
  wire \axi_araddr[13]_i_4_n_0 ;
  wire \axi_araddr[13]_i_5_n_0 ;
  wire \axi_araddr[17]_i_2_n_0 ;
  wire \axi_araddr[17]_i_3_n_0 ;
  wire \axi_araddr[17]_i_4_n_0 ;
  wire \axi_araddr[17]_i_5_n_0 ;
  wire \axi_araddr[21]_i_2_n_0 ;
  wire \axi_araddr[21]_i_3_n_0 ;
  wire \axi_araddr[21]_i_4_n_0 ;
  wire \axi_araddr[21]_i_5_n_0 ;
  wire \axi_araddr[25]_i_2_n_0 ;
  wire \axi_araddr[25]_i_3_n_0 ;
  wire \axi_araddr[25]_i_4_n_0 ;
  wire \axi_araddr[25]_i_5_n_0 ;
  wire \axi_araddr[28]_i_1_n_0 ;
  wire \axi_araddr[28]_i_4_n_0 ;
  wire \axi_araddr[28]_i_5_n_0 ;
  wire \axi_araddr[28]_i_6_n_0 ;
  wire \axi_araddr[28]_i_7_n_0 ;
  wire \axi_araddr[30]_i_2_n_0 ;
  wire \axi_araddr[30]_i_3_n_0 ;
  wire [31:29]axi_araddr_reg;
  wire \axi_araddr_reg[13]_i_1_n_0 ;
  wire \axi_araddr_reg[13]_i_1_n_1 ;
  wire \axi_araddr_reg[13]_i_1_n_2 ;
  wire \axi_araddr_reg[13]_i_1_n_3 ;
  wire \axi_araddr_reg[13]_i_1_n_4 ;
  wire \axi_araddr_reg[13]_i_1_n_5 ;
  wire \axi_araddr_reg[13]_i_1_n_6 ;
  wire \axi_araddr_reg[13]_i_1_n_7 ;
  wire \axi_araddr_reg[17]_i_1_n_0 ;
  wire \axi_araddr_reg[17]_i_1_n_1 ;
  wire \axi_araddr_reg[17]_i_1_n_2 ;
  wire \axi_araddr_reg[17]_i_1_n_3 ;
  wire \axi_araddr_reg[17]_i_1_n_4 ;
  wire \axi_araddr_reg[17]_i_1_n_5 ;
  wire \axi_araddr_reg[17]_i_1_n_6 ;
  wire \axi_araddr_reg[17]_i_1_n_7 ;
  wire \axi_araddr_reg[21]_i_1_n_0 ;
  wire \axi_araddr_reg[21]_i_1_n_1 ;
  wire \axi_araddr_reg[21]_i_1_n_2 ;
  wire \axi_araddr_reg[21]_i_1_n_3 ;
  wire \axi_araddr_reg[21]_i_1_n_4 ;
  wire \axi_araddr_reg[21]_i_1_n_5 ;
  wire \axi_araddr_reg[21]_i_1_n_6 ;
  wire \axi_araddr_reg[21]_i_1_n_7 ;
  wire \axi_araddr_reg[25]_i_1_n_0 ;
  wire \axi_araddr_reg[25]_i_1_n_1 ;
  wire \axi_araddr_reg[25]_i_1_n_2 ;
  wire \axi_araddr_reg[25]_i_1_n_3 ;
  wire \axi_araddr_reg[25]_i_1_n_4 ;
  wire \axi_araddr_reg[25]_i_1_n_5 ;
  wire \axi_araddr_reg[25]_i_1_n_6 ;
  wire \axi_araddr_reg[25]_i_1_n_7 ;
  wire \axi_araddr_reg[28]_i_3_n_0 ;
  wire \axi_araddr_reg[28]_i_3_n_1 ;
  wire \axi_araddr_reg[28]_i_3_n_2 ;
  wire \axi_araddr_reg[28]_i_3_n_3 ;
  wire \axi_araddr_reg[28]_i_3_n_4 ;
  wire \axi_araddr_reg[28]_i_3_n_5 ;
  wire \axi_araddr_reg[28]_i_3_n_6 ;
  wire \axi_araddr_reg[28]_i_3_n_7 ;
  wire \axi_araddr_reg[30]_i_1_n_3 ;
  wire \axi_araddr_reg[30]_i_1_n_6 ;
  wire \axi_araddr_reg[30]_i_1_n_7 ;
  wire axi_arvalid0;
  wire axi_arvalid_i_1_n_0;
  wire axi_rready_i_1_n_0;
  wire burst_read_active_i_1_n_0;
  wire [11:0]din;
  wire init_txn_ff;
  wire init_txn_ff2;
  wire init_txn_ff_i_1_n_0;
  wire int_burst_read_active;
  wire int_rdone;
  wire int_read_next;
  wire m00_axi_aclk;
  wire [21:0]m00_axi_araddr;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [11:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire [1:1]mst_exec_state;
  wire \mst_exec_state[1]_i_1_n_0 ;
  wire [8:0]plusOp;
  wire prog_full;
  wire read_burst_counter;
  wire \read_burst_counter[0]_i_3_n_0 ;
  wire \read_burst_counter[0]_i_4_n_0 ;
  wire \read_burst_counter[0]_i_5_n_0 ;
  wire \read_burst_counter[0]_i_6_n_0 ;
  wire \read_burst_counter[0]_i_7_n_0 ;
  wire \read_burst_counter[4]_i_2_n_0 ;
  wire \read_burst_counter[4]_i_3_n_0 ;
  wire \read_burst_counter[4]_i_4_n_0 ;
  wire \read_burst_counter[4]_i_5_n_0 ;
  wire \read_burst_counter[8]_i_2_n_0 ;
  wire \read_burst_counter[8]_i_3_n_0 ;
  wire \read_burst_counter[8]_i_4_n_0 ;
  wire \read_burst_counter[8]_i_5_n_0 ;
  wire [11:4]read_burst_counter_reg;
  wire \read_burst_counter_reg[0]_i_2_n_0 ;
  wire \read_burst_counter_reg[0]_i_2_n_1 ;
  wire \read_burst_counter_reg[0]_i_2_n_2 ;
  wire \read_burst_counter_reg[0]_i_2_n_3 ;
  wire \read_burst_counter_reg[0]_i_2_n_4 ;
  wire \read_burst_counter_reg[0]_i_2_n_5 ;
  wire \read_burst_counter_reg[0]_i_2_n_6 ;
  wire \read_burst_counter_reg[0]_i_2_n_7 ;
  wire \read_burst_counter_reg[4]_i_1_n_0 ;
  wire \read_burst_counter_reg[4]_i_1_n_1 ;
  wire \read_burst_counter_reg[4]_i_1_n_2 ;
  wire \read_burst_counter_reg[4]_i_1_n_3 ;
  wire \read_burst_counter_reg[4]_i_1_n_4 ;
  wire \read_burst_counter_reg[4]_i_1_n_5 ;
  wire \read_burst_counter_reg[4]_i_1_n_6 ;
  wire \read_burst_counter_reg[4]_i_1_n_7 ;
  wire \read_burst_counter_reg[8]_i_1_n_1 ;
  wire \read_burst_counter_reg[8]_i_1_n_2 ;
  wire \read_burst_counter_reg[8]_i_1_n_3 ;
  wire \read_burst_counter_reg[8]_i_1_n_4 ;
  wire \read_burst_counter_reg[8]_i_1_n_5 ;
  wire \read_burst_counter_reg[8]_i_1_n_6 ;
  wire \read_burst_counter_reg[8]_i_1_n_7 ;
  wire \read_burst_counter_reg_n_0_[0] ;
  wire \read_burst_counter_reg_n_0_[1] ;
  wire \read_burst_counter_reg_n_0_[2] ;
  wire \read_burst_counter_reg_n_0_[3] ;
  wire \read_index[8]_i_1_n_0 ;
  wire \read_index[8]_i_2_n_0 ;
  wire \read_index[8]_i_4_n_0 ;
  wire [8:0]read_index_reg__0;
  wire reads_done_i_1_n_0;
  wire reads_done_i_2_n_0;
  wire reads_done_i_3_n_0;
  wire reads_done_i_4_n_0;
  wire reads_done_i_5_n_0;
  wire reads_done_i_6_n_0;
  wire start_single_burst_read;
  wire start_single_burst_read_i_1_n_0;
  wire [3:2]NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED;
  wire [3:3]NLW_M_AXI_ARADDR_carry_O_UNCONNECTED;
  wire [3:1]\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_read_burst_counter_reg[8]_i_1_CO_UNCONNECTED ;

  CARRY4 M_AXI_ARADDR_carry
       (.CI(1'b0),
        .CO({NLW_M_AXI_ARADDR_carry_CO_UNCONNECTED[3:2],M_AXI_ARADDR_carry_n_2,M_AXI_ARADDR_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,axi_araddr_reg[30],1'b0}),
        .O({NLW_M_AXI_ARADDR_carry_O_UNCONNECTED[3],m00_axi_araddr[21:19]}),
        .S({1'b0,M_AXI_ARADDR_carry_i_1_n_0,M_AXI_ARADDR_carry_i_2_n_0,M_AXI_ARADDR_carry_i_3_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    M_AXI_ARADDR_carry_i_1
       (.I0(axi_araddr_reg[31]),
        .O(M_AXI_ARADDR_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    M_AXI_ARADDR_carry_i_2
       (.I0(axi_araddr_reg[30]),
        .O(M_AXI_ARADDR_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    M_AXI_ARADDR_carry_i_3
       (.I0(axi_araddr_reg[29]),
        .O(M_AXI_ARADDR_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_1
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[11]),
        .O(din[11]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_10
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[2]),
        .O(din[2]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_11
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[1]),
        .O(din[1]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_12
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[0]),
        .O(din[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    VGA_IMAGE_FIFO_i_13
       (.I0(m00_axi_rvalid),
        .I1(m00_axi_rready),
        .O(int_read_next));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_2
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[10]),
        .O(din[10]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_3
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[9]),
        .O(din[9]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_4
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[8]),
        .O(din[8]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_5
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[7]),
        .O(din[7]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_6
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[6]),
        .O(din[6]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_7
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[5]),
        .O(din[5]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_8
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[4]),
        .O(din[4]));
  LUT3 #(
    .INIT(8'h80)) 
    VGA_IMAGE_FIFO_i_9
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(m00_axi_rdata[3]),
        .O(din[3]));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[13]_i_2 
       (.I0(m00_axi_araddr[3]),
        .O(\axi_araddr[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[13]_i_3 
       (.I0(m00_axi_araddr[2]),
        .O(\axi_araddr[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[13]_i_4 
       (.I0(m00_axi_araddr[1]),
        .O(\axi_araddr[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_araddr[13]_i_5 
       (.I0(m00_axi_araddr[0]),
        .O(\axi_araddr[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_2 
       (.I0(m00_axi_araddr[7]),
        .O(\axi_araddr[17]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_3 
       (.I0(m00_axi_araddr[6]),
        .O(\axi_araddr[17]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_4 
       (.I0(m00_axi_araddr[5]),
        .O(\axi_araddr[17]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[17]_i_5 
       (.I0(m00_axi_araddr[4]),
        .O(\axi_araddr[17]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_2 
       (.I0(m00_axi_araddr[11]),
        .O(\axi_araddr[21]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_3 
       (.I0(m00_axi_araddr[10]),
        .O(\axi_araddr[21]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_4 
       (.I0(m00_axi_araddr[9]),
        .O(\axi_araddr[21]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[21]_i_5 
       (.I0(m00_axi_araddr[8]),
        .O(\axi_araddr[21]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_2 
       (.I0(m00_axi_araddr[15]),
        .O(\axi_araddr[25]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_3 
       (.I0(m00_axi_araddr[14]),
        .O(\axi_araddr[25]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_4 
       (.I0(m00_axi_araddr[13]),
        .O(\axi_araddr[25]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[25]_i_5 
       (.I0(m00_axi_araddr[12]),
        .O(\axi_araddr[25]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \axi_araddr[28]_i_1 
       (.I0(init_txn_ff2),
        .I1(init_txn_ff),
        .I2(m00_axi_aresetn),
        .O(\axi_araddr[28]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[28]_i_2 
       (.I0(m00_axi_arready),
        .I1(m00_axi_arvalid),
        .O(axi_arvalid0));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[28]_i_4 
       (.I0(axi_araddr_reg[29]),
        .O(\axi_araddr[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[28]_i_5 
       (.I0(m00_axi_araddr[18]),
        .O(\axi_araddr[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[28]_i_6 
       (.I0(m00_axi_araddr[17]),
        .O(\axi_araddr[28]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[28]_i_7 
       (.I0(m00_axi_araddr[16]),
        .O(\axi_araddr[28]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[30]_i_2 
       (.I0(axi_araddr_reg[31]),
        .O(\axi_araddr[30]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \axi_araddr[30]_i_3 
       (.I0(axi_araddr_reg[30]),
        .O(\axi_araddr[30]_i_3_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_7 ),
        .Q(m00_axi_araddr[0]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[11] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_6 ),
        .Q(m00_axi_araddr[1]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[12] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_5 ),
        .Q(m00_axi_araddr[2]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[13] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[13]_i_1_n_4 ),
        .Q(m00_axi_araddr[3]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[13]_i_1 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[13]_i_1_n_0 ,\axi_araddr_reg[13]_i_1_n_1 ,\axi_araddr_reg[13]_i_1_n_2 ,\axi_araddr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\axi_araddr_reg[13]_i_1_n_4 ,\axi_araddr_reg[13]_i_1_n_5 ,\axi_araddr_reg[13]_i_1_n_6 ,\axi_araddr_reg[13]_i_1_n_7 }),
        .S({\axi_araddr[13]_i_2_n_0 ,\axi_araddr[13]_i_3_n_0 ,\axi_araddr[13]_i_4_n_0 ,\axi_araddr[13]_i_5_n_0 }));
  FDRE \axi_araddr_reg[14] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_7 ),
        .Q(m00_axi_araddr[4]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[15] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_6 ),
        .Q(m00_axi_araddr[5]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[16] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_5 ),
        .Q(m00_axi_araddr[6]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[17] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[17]_i_1_n_4 ),
        .Q(m00_axi_araddr[7]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[17]_i_1 
       (.CI(\axi_araddr_reg[13]_i_1_n_0 ),
        .CO({\axi_araddr_reg[17]_i_1_n_0 ,\axi_araddr_reg[17]_i_1_n_1 ,\axi_araddr_reg[17]_i_1_n_2 ,\axi_araddr_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[17]_i_1_n_4 ,\axi_araddr_reg[17]_i_1_n_5 ,\axi_araddr_reg[17]_i_1_n_6 ,\axi_araddr_reg[17]_i_1_n_7 }),
        .S({\axi_araddr[17]_i_2_n_0 ,\axi_araddr[17]_i_3_n_0 ,\axi_araddr[17]_i_4_n_0 ,\axi_araddr[17]_i_5_n_0 }));
  FDRE \axi_araddr_reg[18] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_7 ),
        .Q(m00_axi_araddr[8]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[19] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_6 ),
        .Q(m00_axi_araddr[9]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[20] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_5 ),
        .Q(m00_axi_araddr[10]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[21] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[21]_i_1_n_4 ),
        .Q(m00_axi_araddr[11]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[21]_i_1 
       (.CI(\axi_araddr_reg[17]_i_1_n_0 ),
        .CO({\axi_araddr_reg[21]_i_1_n_0 ,\axi_araddr_reg[21]_i_1_n_1 ,\axi_araddr_reg[21]_i_1_n_2 ,\axi_araddr_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[21]_i_1_n_4 ,\axi_araddr_reg[21]_i_1_n_5 ,\axi_araddr_reg[21]_i_1_n_6 ,\axi_araddr_reg[21]_i_1_n_7 }),
        .S({\axi_araddr[21]_i_2_n_0 ,\axi_araddr[21]_i_3_n_0 ,\axi_araddr[21]_i_4_n_0 ,\axi_araddr[21]_i_5_n_0 }));
  FDRE \axi_araddr_reg[22] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_7 ),
        .Q(m00_axi_araddr[12]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[23] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_6 ),
        .Q(m00_axi_araddr[13]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[24] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_5 ),
        .Q(m00_axi_araddr[14]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[25] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[25]_i_1_n_4 ),
        .Q(m00_axi_araddr[15]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[25]_i_1 
       (.CI(\axi_araddr_reg[21]_i_1_n_0 ),
        .CO({\axi_araddr_reg[25]_i_1_n_0 ,\axi_araddr_reg[25]_i_1_n_1 ,\axi_araddr_reg[25]_i_1_n_2 ,\axi_araddr_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[25]_i_1_n_4 ,\axi_araddr_reg[25]_i_1_n_5 ,\axi_araddr_reg[25]_i_1_n_6 ,\axi_araddr_reg[25]_i_1_n_7 }),
        .S({\axi_araddr[25]_i_2_n_0 ,\axi_araddr[25]_i_3_n_0 ,\axi_araddr[25]_i_4_n_0 ,\axi_araddr[25]_i_5_n_0 }));
  FDRE \axi_araddr_reg[26] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_3_n_7 ),
        .Q(m00_axi_araddr[16]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[27] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_3_n_6 ),
        .Q(m00_axi_araddr[17]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[28] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_3_n_5 ),
        .Q(m00_axi_araddr[18]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[28]_i_3 
       (.CI(\axi_araddr_reg[25]_i_1_n_0 ),
        .CO({\axi_araddr_reg[28]_i_3_n_0 ,\axi_araddr_reg[28]_i_3_n_1 ,\axi_araddr_reg[28]_i_3_n_2 ,\axi_araddr_reg[28]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[28]_i_3_n_4 ,\axi_araddr_reg[28]_i_3_n_5 ,\axi_araddr_reg[28]_i_3_n_6 ,\axi_araddr_reg[28]_i_3_n_7 }),
        .S({\axi_araddr[28]_i_4_n_0 ,\axi_araddr[28]_i_5_n_0 ,\axi_araddr[28]_i_6_n_0 ,\axi_araddr[28]_i_7_n_0 }));
  FDRE \axi_araddr_reg[29] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[28]_i_3_n_4 ),
        .Q(axi_araddr_reg[29]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \axi_araddr_reg[30] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[30]_i_1_n_7 ),
        .Q(axi_araddr_reg[30]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \axi_araddr_reg[30]_i_1 
       (.CI(\axi_araddr_reg[28]_i_3_n_0 ),
        .CO({\NLW_axi_araddr_reg[30]_i_1_CO_UNCONNECTED [3:1],\axi_araddr_reg[30]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[30]_i_1_O_UNCONNECTED [3:2],\axi_araddr_reg[30]_i_1_n_6 ,\axi_araddr_reg[30]_i_1_n_7 }),
        .S({1'b0,1'b0,\axi_araddr[30]_i_2_n_0 ,\axi_araddr[30]_i_3_n_0 }));
  FDRE \axi_araddr_reg[31] 
       (.C(m00_axi_aclk),
        .CE(axi_arvalid0),
        .D(\axi_araddr_reg[30]_i_1_n_6 ),
        .Q(axi_araddr_reg[31]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7400740000007400)) 
    axi_arvalid_i_1
       (.I0(m00_axi_arready),
        .I1(m00_axi_arvalid),
        .I2(start_single_burst_read),
        .I3(m00_axi_aresetn),
        .I4(init_txn_ff),
        .I5(init_txn_ff2),
        .O(axi_arvalid_i_1_n_0));
  FDRE axi_arvalid_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_arvalid_i_1_n_0),
        .Q(m00_axi_arvalid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00005722)) 
    axi_rready_i_1
       (.I0(m00_axi_rvalid),
        .I1(prog_full),
        .I2(m00_axi_rlast),
        .I3(m00_axi_rready),
        .I4(\axi_araddr[28]_i_1_n_0 ),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(m00_axi_rready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFF2AAA)) 
    burst_read_active_i_1
       (.I0(int_burst_read_active),
        .I1(m00_axi_rready),
        .I2(m00_axi_rvalid),
        .I3(m00_axi_rlast),
        .I4(start_single_burst_read),
        .I5(\axi_araddr[28]_i_1_n_0 ),
        .O(burst_read_active_i_1_n_0));
  FDRE burst_read_active_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(burst_read_active_i_1_n_0),
        .Q(int_burst_read_active),
        .R(1'b0));
  FDRE init_txn_ff2_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(init_txn_ff),
        .Q(init_txn_ff2),
        .R(init_txn_ff_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    init_txn_ff_i_1
       (.I0(m00_axi_aresetn),
        .O(init_txn_ff_i_1_n_0));
  FDRE init_txn_ff_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(INIT_AXI_TXN),
        .Q(init_txn_ff),
        .R(init_txn_ff_i_1_n_0));
  LUT4 #(
    .INIT(16'h02F2)) 
    \mst_exec_state[1]_i_1 
       (.I0(init_txn_ff),
        .I1(init_txn_ff2),
        .I2(mst_exec_state),
        .I3(int_rdone),
        .O(\mst_exec_state[1]_i_1_n_0 ));
  FDRE \mst_exec_state_reg[1] 
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(\mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state),
        .R(init_txn_ff_i_1_n_0));
  LUT6 #(
    .INIT(64'h1515151515555555)) 
    \read_burst_counter[0]_i_1 
       (.I0(\read_burst_counter[0]_i_3_n_0 ),
        .I1(read_burst_counter_reg[10]),
        .I2(read_burst_counter_reg[7]),
        .I3(read_burst_counter_reg[5]),
        .I4(read_burst_counter_reg[4]),
        .I5(read_burst_counter_reg[6]),
        .O(read_burst_counter));
  LUT6 #(
    .INIT(64'hFFFFFFBFBFBFBFBF)) 
    \read_burst_counter[0]_i_3 
       (.I0(read_burst_counter_reg[11]),
        .I1(m00_axi_arready),
        .I2(m00_axi_arvalid),
        .I3(read_burst_counter_reg[8]),
        .I4(read_burst_counter_reg[9]),
        .I5(read_burst_counter_reg[10]),
        .O(\read_burst_counter[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[0]_i_4 
       (.I0(\read_burst_counter_reg_n_0_[3] ),
        .O(\read_burst_counter[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[0]_i_5 
       (.I0(\read_burst_counter_reg_n_0_[2] ),
        .O(\read_burst_counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[0]_i_6 
       (.I0(\read_burst_counter_reg_n_0_[1] ),
        .O(\read_burst_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \read_burst_counter[0]_i_7 
       (.I0(\read_burst_counter_reg_n_0_[0] ),
        .O(\read_burst_counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_2 
       (.I0(read_burst_counter_reg[7]),
        .O(\read_burst_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_3 
       (.I0(read_burst_counter_reg[6]),
        .O(\read_burst_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_4 
       (.I0(read_burst_counter_reg[5]),
        .O(\read_burst_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[4]_i_5 
       (.I0(read_burst_counter_reg[4]),
        .O(\read_burst_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_2 
       (.I0(read_burst_counter_reg[11]),
        .O(\read_burst_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_3 
       (.I0(read_burst_counter_reg[10]),
        .O(\read_burst_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_4 
       (.I0(read_burst_counter_reg[9]),
        .O(\read_burst_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \read_burst_counter[8]_i_5 
       (.I0(read_burst_counter_reg[8]),
        .O(\read_burst_counter[8]_i_5_n_0 ));
  FDRE \read_burst_counter_reg[0] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_2_n_7 ),
        .Q(\read_burst_counter_reg_n_0_[0] ),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \read_burst_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\read_burst_counter_reg[0]_i_2_n_0 ,\read_burst_counter_reg[0]_i_2_n_1 ,\read_burst_counter_reg[0]_i_2_n_2 ,\read_burst_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\read_burst_counter_reg[0]_i_2_n_4 ,\read_burst_counter_reg[0]_i_2_n_5 ,\read_burst_counter_reg[0]_i_2_n_6 ,\read_burst_counter_reg[0]_i_2_n_7 }),
        .S({\read_burst_counter[0]_i_4_n_0 ,\read_burst_counter[0]_i_5_n_0 ,\read_burst_counter[0]_i_6_n_0 ,\read_burst_counter[0]_i_7_n_0 }));
  FDRE \read_burst_counter_reg[10] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_5 ),
        .Q(read_burst_counter_reg[10]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[11] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_4 ),
        .Q(read_burst_counter_reg[11]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[1] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_2_n_6 ),
        .Q(\read_burst_counter_reg_n_0_[1] ),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[2] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_2_n_5 ),
        .Q(\read_burst_counter_reg_n_0_[2] ),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[3] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[0]_i_2_n_4 ),
        .Q(\read_burst_counter_reg_n_0_[3] ),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[4] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_7 ),
        .Q(read_burst_counter_reg[4]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \read_burst_counter_reg[4]_i_1 
       (.CI(\read_burst_counter_reg[0]_i_2_n_0 ),
        .CO({\read_burst_counter_reg[4]_i_1_n_0 ,\read_burst_counter_reg[4]_i_1_n_1 ,\read_burst_counter_reg[4]_i_1_n_2 ,\read_burst_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_burst_counter_reg[4]_i_1_n_4 ,\read_burst_counter_reg[4]_i_1_n_5 ,\read_burst_counter_reg[4]_i_1_n_6 ,\read_burst_counter_reg[4]_i_1_n_7 }),
        .S({\read_burst_counter[4]_i_2_n_0 ,\read_burst_counter[4]_i_3_n_0 ,\read_burst_counter[4]_i_4_n_0 ,\read_burst_counter[4]_i_5_n_0 }));
  FDRE \read_burst_counter_reg[5] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_6 ),
        .Q(read_burst_counter_reg[5]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[6] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_5 ),
        .Q(read_burst_counter_reg[6]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[7] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[4]_i_1_n_4 ),
        .Q(read_burst_counter_reg[7]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  FDRE \read_burst_counter_reg[8] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_7 ),
        .Q(read_burst_counter_reg[8]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  CARRY4 \read_burst_counter_reg[8]_i_1 
       (.CI(\read_burst_counter_reg[4]_i_1_n_0 ),
        .CO({\NLW_read_burst_counter_reg[8]_i_1_CO_UNCONNECTED [3],\read_burst_counter_reg[8]_i_1_n_1 ,\read_burst_counter_reg[8]_i_1_n_2 ,\read_burst_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_burst_counter_reg[8]_i_1_n_4 ,\read_burst_counter_reg[8]_i_1_n_5 ,\read_burst_counter_reg[8]_i_1_n_6 ,\read_burst_counter_reg[8]_i_1_n_7 }),
        .S({\read_burst_counter[8]_i_2_n_0 ,\read_burst_counter[8]_i_3_n_0 ,\read_burst_counter[8]_i_4_n_0 ,\read_burst_counter[8]_i_5_n_0 }));
  FDRE \read_burst_counter_reg[9] 
       (.C(m00_axi_aclk),
        .CE(read_burst_counter),
        .D(\read_burst_counter_reg[8]_i_1_n_6 ),
        .Q(read_burst_counter_reg[9]),
        .R(\axi_araddr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \read_index[0]_i_1 
       (.I0(read_index_reg__0[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_index[1]_i_1 
       (.I0(read_index_reg__0[0]),
        .I1(read_index_reg__0[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_index[2]_i_1 
       (.I0(read_index_reg__0[0]),
        .I1(read_index_reg__0[1]),
        .I2(read_index_reg__0[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_index[3]_i_1 
       (.I0(read_index_reg__0[1]),
        .I1(read_index_reg__0[0]),
        .I2(read_index_reg__0[2]),
        .I3(read_index_reg__0[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_index[4]_i_1 
       (.I0(read_index_reg__0[2]),
        .I1(read_index_reg__0[0]),
        .I2(read_index_reg__0[1]),
        .I3(read_index_reg__0[3]),
        .I4(read_index_reg__0[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_index[5]_i_1 
       (.I0(read_index_reg__0[3]),
        .I1(read_index_reg__0[1]),
        .I2(read_index_reg__0[0]),
        .I3(read_index_reg__0[2]),
        .I4(read_index_reg__0[4]),
        .I5(read_index_reg__0[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_index[6]_i_1 
       (.I0(\read_index[8]_i_4_n_0 ),
        .I1(read_index_reg__0[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_index[7]_i_1 
       (.I0(\read_index[8]_i_4_n_0 ),
        .I1(read_index_reg__0[6]),
        .I2(read_index_reg__0[7]),
        .O(plusOp[7]));
  LUT4 #(
    .INIT(16'hFF5D)) 
    \read_index[8]_i_1 
       (.I0(m00_axi_aresetn),
        .I1(init_txn_ff),
        .I2(init_txn_ff2),
        .I3(start_single_burst_read),
        .O(\read_index[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \read_index[8]_i_2 
       (.I0(m00_axi_rready),
        .I1(m00_axi_rvalid),
        .I2(read_index_reg__0[8]),
        .O(\read_index[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_index[8]_i_3 
       (.I0(read_index_reg__0[6]),
        .I1(\read_index[8]_i_4_n_0 ),
        .I2(read_index_reg__0[7]),
        .I3(read_index_reg__0[8]),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \read_index[8]_i_4 
       (.I0(read_index_reg__0[5]),
        .I1(read_index_reg__0[3]),
        .I2(read_index_reg__0[1]),
        .I3(read_index_reg__0[0]),
        .I4(read_index_reg__0[2]),
        .I5(read_index_reg__0[4]),
        .O(\read_index[8]_i_4_n_0 ));
  FDRE \read_index_reg[0] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[0]),
        .Q(read_index_reg__0[0]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[1] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[1]),
        .Q(read_index_reg__0[1]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[2] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[2]),
        .Q(read_index_reg__0[2]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[3] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[3]),
        .Q(read_index_reg__0[3]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[4] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[4]),
        .Q(read_index_reg__0[4]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[5] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[5]),
        .Q(read_index_reg__0[5]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[6] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[6]),
        .Q(read_index_reg__0[6]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[7] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[7]),
        .Q(read_index_reg__0[7]),
        .R(\read_index[8]_i_1_n_0 ));
  FDRE \read_index_reg[8] 
       (.C(m00_axi_aclk),
        .CE(\read_index[8]_i_2_n_0 ),
        .D(plusOp[8]),
        .Q(read_index_reg__0[8]),
        .R(\read_index[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AB000000AB00)) 
    reads_done_i_1
       (.I0(int_rdone),
        .I1(reads_done_i_2_n_0),
        .I2(reads_done_i_3_n_0),
        .I3(m00_axi_aresetn),
        .I4(init_txn_ff),
        .I5(init_txn_ff2),
        .O(reads_done_i_1_n_0));
  LUT5 #(
    .INIT(32'h000F001F)) 
    reads_done_i_2
       (.I0(read_burst_counter_reg[9]),
        .I1(read_burst_counter_reg[8]),
        .I2(read_burst_counter_reg[10]),
        .I3(read_burst_counter_reg[11]),
        .I4(read_burst_counter_reg[7]),
        .O(reads_done_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF1FFFFFFFF)) 
    reads_done_i_3
       (.I0(reads_done_i_4_n_0),
        .I1(read_burst_counter_reg[6]),
        .I2(reads_done_i_5_n_0),
        .I3(reads_done_i_6_n_0),
        .I4(read_index_reg__0[8]),
        .I5(read_index_reg__0[7]),
        .O(reads_done_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFF8FFF8FFF8F8F8)) 
    reads_done_i_4
       (.I0(read_burst_counter_reg[4]),
        .I1(read_burst_counter_reg[5]),
        .I2(read_burst_counter_reg[11]),
        .I3(read_burst_counter_reg[10]),
        .I4(read_burst_counter_reg[8]),
        .I5(read_burst_counter_reg[9]),
        .O(reads_done_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    reads_done_i_5
       (.I0(read_index_reg__0[5]),
        .I1(read_index_reg__0[6]),
        .I2(read_index_reg__0[3]),
        .I3(read_index_reg__0[4]),
        .O(reads_done_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    reads_done_i_6
       (.I0(read_index_reg__0[1]),
        .I1(read_index_reg__0[2]),
        .I2(m00_axi_rvalid),
        .I3(m00_axi_rready),
        .I4(read_index_reg__0[0]),
        .O(reads_done_i_6_n_0));
  FDRE reads_done_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(reads_done_i_1_n_0),
        .Q(int_rdone),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBB00BB04)) 
    start_single_burst_read_i_1
       (.I0(int_rdone),
        .I1(mst_exec_state),
        .I2(int_burst_read_active),
        .I3(start_single_burst_read),
        .I4(m00_axi_arvalid),
        .O(start_single_burst_read_i_1_n_0));
  FDRE start_single_burst_read_reg
       (.C(m00_axi_aclk),
        .CE(1'b1),
        .D(start_single_burst_read_i_1_n_0),
        .Q(start_single_burst_read),
        .R(init_txn_ff_i_1_n_0));
endmodule

module final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S00_AXI
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rvalid,
    s00_axi_bvalid,
    D,
    Q,
    E,
    \status_reg_reg[31] ,
    \fifo_reg_reg[31] ,
    \axi_araddr_reg[3]_0 ,
    \image_data_addr_reg_reg[31] ,
    \pixel_counters_reg[31] ,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    \start_reg_reg[0] ,
    NET1274,
    video_on,
    inbuff_empty,
    inbuff_almost_empty,
    full,
    almost_full,
    inbuff_prog_empty,
    prog_full,
    inbuff_valid,
    \pixel_counters_reg[0] ,
    \fifo_reg_reg[31]_0 ,
    \pixel_counters_reg[31]_0 ,
    \pixel_counters_reg[30] ,
    \pixel_counters_reg[29] ,
    \pixel_counters_reg[28] ,
    \pixel_counters_reg[27] ,
    \pixel_counters_reg[26] ,
    \pixel_counters_reg[25] ,
    \pixel_counters_reg[24] ,
    \pixel_counters_reg[23] ,
    \pixel_counters_reg[22] ,
    \pixel_counters_reg[21] ,
    \pixel_counters_reg[20] ,
    \pixel_counters_reg[19] ,
    \pixel_counters_reg[18] ,
    \pixel_counters_reg[17] ,
    \pixel_counters_reg[16] ,
    \pixel_counters_reg[15] ,
    \pixel_counters_reg[14] ,
    \pixel_counters_reg[13] ,
    \pixel_counters_reg[12] ,
    \pixel_counters_reg[11] ,
    \pixel_counters_reg[10] ,
    \pixel_counters_reg[9] ,
    \pixel_counters_reg[8] ,
    \pixel_counters_reg[7] ,
    \pixel_counters_reg[6] ,
    \pixel_counters_reg[5] ,
    \pixel_counters_reg[4] ,
    \pixel_counters_reg[3] ,
    \pixel_counters_reg[2] ,
    \pixel_counters_reg[1] ,
    s00_axi_rready,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb,
    s00_axi_aresetn);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  output [31:0]D;
  output [4:0]Q;
  output [0:0]E;
  output [31:0]\status_reg_reg[31] ;
  output [31:0]\fifo_reg_reg[31] ;
  output [1:0]\axi_araddr_reg[3]_0 ;
  output [31:0]\image_data_addr_reg_reg[31] ;
  output [31:0]\pixel_counters_reg[31] ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input [0:0]\start_reg_reg[0] ;
  input NET1274;
  input video_on;
  input inbuff_empty;
  input inbuff_almost_empty;
  input full;
  input almost_full;
  input inbuff_prog_empty;
  input prog_full;
  input inbuff_valid;
  input \pixel_counters_reg[0] ;
  input [31:0]\fifo_reg_reg[31]_0 ;
  input \pixel_counters_reg[31]_0 ;
  input \pixel_counters_reg[30] ;
  input \pixel_counters_reg[29] ;
  input \pixel_counters_reg[28] ;
  input \pixel_counters_reg[27] ;
  input \pixel_counters_reg[26] ;
  input \pixel_counters_reg[25] ;
  input \pixel_counters_reg[24] ;
  input \pixel_counters_reg[23] ;
  input \pixel_counters_reg[22] ;
  input \pixel_counters_reg[21] ;
  input \pixel_counters_reg[20] ;
  input \pixel_counters_reg[19] ;
  input \pixel_counters_reg[18] ;
  input \pixel_counters_reg[17] ;
  input \pixel_counters_reg[16] ;
  input \pixel_counters_reg[15] ;
  input \pixel_counters_reg[14] ;
  input \pixel_counters_reg[13] ;
  input \pixel_counters_reg[12] ;
  input \pixel_counters_reg[11] ;
  input \pixel_counters_reg[10] ;
  input \pixel_counters_reg[9] ;
  input \pixel_counters_reg[8] ;
  input \pixel_counters_reg[7] ;
  input \pixel_counters_reg[6] ;
  input \pixel_counters_reg[5] ;
  input \pixel_counters_reg[4] ;
  input \pixel_counters_reg[3] ;
  input \pixel_counters_reg[2] ;
  input \pixel_counters_reg[1] ;
  input s00_axi_rready;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;

  wire [31:0]D;
  wire [0:0]E;
  wire NET1274;
  wire [4:0]Q;
  wire almost_full;
  wire [4:4]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire [1:0]\axi_araddr_reg[3]_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [4:4]data4;
  wire [31:0]\fifo_reg_reg[31] ;
  wire [31:0]\fifo_reg_reg[31]_0 ;
  wire full;
  wire [31:0]\image_data_addr_reg_reg[31] ;
  wire inbuff_almost_empty;
  wire inbuff_empty;
  wire inbuff_prog_empty;
  wire inbuff_valid;
  wire [4:0]int_slv_reg_wren;
  wire \int_slv_reg_wren[4]_i_1_n_0 ;
  wire \pixel_counters_reg[0] ;
  wire \pixel_counters_reg[10] ;
  wire \pixel_counters_reg[11] ;
  wire \pixel_counters_reg[12] ;
  wire \pixel_counters_reg[13] ;
  wire \pixel_counters_reg[14] ;
  wire \pixel_counters_reg[15] ;
  wire \pixel_counters_reg[16] ;
  wire \pixel_counters_reg[17] ;
  wire \pixel_counters_reg[18] ;
  wire \pixel_counters_reg[19] ;
  wire \pixel_counters_reg[1] ;
  wire \pixel_counters_reg[20] ;
  wire \pixel_counters_reg[21] ;
  wire \pixel_counters_reg[22] ;
  wire \pixel_counters_reg[23] ;
  wire \pixel_counters_reg[24] ;
  wire \pixel_counters_reg[25] ;
  wire \pixel_counters_reg[26] ;
  wire \pixel_counters_reg[27] ;
  wire \pixel_counters_reg[28] ;
  wire \pixel_counters_reg[29] ;
  wire \pixel_counters_reg[2] ;
  wire \pixel_counters_reg[30] ;
  wire [31:0]\pixel_counters_reg[31] ;
  wire \pixel_counters_reg[31]_0 ;
  wire \pixel_counters_reg[3] ;
  wire \pixel_counters_reg[4] ;
  wire \pixel_counters_reg[5] ;
  wire \pixel_counters_reg[6] ;
  wire \pixel_counters_reg[7] ;
  wire \pixel_counters_reg[8] ;
  wire \pixel_counters_reg[9] ;
  wire prog_full;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
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
  wire [2:0]sel0;
  wire [0:0]\start_reg_reg[0] ;
  wire [31:0]\status_reg_reg[31] ;
  wire video_on;
  wire [31:0]wr_slv_reg0;
  wire \wr_slv_reg0[15]_i_1_n_0 ;
  wire \wr_slv_reg0[23]_i_1_n_0 ;
  wire \wr_slv_reg0[31]_i_1_n_0 ;
  wire \wr_slv_reg0[31]_i_2_n_0 ;
  wire \wr_slv_reg0[7]_i_1_n_0 ;
  wire [16:8]wr_slv_reg1;
  wire \wr_slv_reg1[15]_i_1_n_0 ;
  wire \wr_slv_reg1[23]_i_1_n_0 ;
  wire \wr_slv_reg1[31]_i_1_n_0 ;
  wire \wr_slv_reg1[7]_i_1_n_0 ;
  wire \wr_slv_reg2[15]_i_1_n_0 ;
  wire \wr_slv_reg2[23]_i_1_n_0 ;
  wire \wr_slv_reg2[31]_i_1_n_0 ;
  wire \wr_slv_reg2[7]_i_1_n_0 ;
  wire \wr_slv_reg3[15]_i_1_n_0 ;
  wire \wr_slv_reg3[23]_i_1_n_0 ;
  wire \wr_slv_reg3[31]_i_1_n_0 ;
  wire \wr_slv_reg3[7]_i_1_n_0 ;
  wire [24:0]wr_slv_reg4;
  wire \wr_slv_reg4[15]_i_1_n_0 ;
  wire \wr_slv_reg4[23]_i_1_n_0 ;
  wire \wr_slv_reg4[31]_i_1_n_0 ;
  wire \wr_slv_reg4[7]_i_1_n_0 ;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(\axi_araddr_reg[3]_0 [0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(\axi_araddr_reg[3]_0 [1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_arready),
        .I3(axi_araddr),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(\axi_araddr_reg[3]_0 [0]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(\axi_araddr_reg[3]_0 [1]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(axi_araddr),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s00_axi_arready),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(sel0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(sel0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(sel0[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_awready),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s00_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(s00_axi_bready),
        .I1(s00_axi_bvalid),
        .I2(s00_axi_wready),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awready),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[0]_i_1 
       (.I0(\pixel_counters_reg[0] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [0]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[10]_i_1 
       (.I0(\pixel_counters_reg[10] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [10]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[11]_i_1 
       (.I0(\pixel_counters_reg[11] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [11]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[12]_i_1 
       (.I0(\pixel_counters_reg[12] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [12]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[13]_i_1 
       (.I0(\pixel_counters_reg[13] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [13]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[14]_i_1 
       (.I0(\pixel_counters_reg[14] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [14]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[15]_i_1 
       (.I0(\pixel_counters_reg[15] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [15]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[16]_i_1 
       (.I0(\pixel_counters_reg[16] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [16]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[17]_i_1 
       (.I0(\pixel_counters_reg[17] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [17]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[18]_i_1 
       (.I0(\pixel_counters_reg[18] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [18]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[19]_i_1 
       (.I0(\pixel_counters_reg[19] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [19]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[1]_i_1 
       (.I0(\pixel_counters_reg[1] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [1]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[20]_i_1 
       (.I0(\pixel_counters_reg[20] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [20]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[21]_i_1 
       (.I0(\pixel_counters_reg[21] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [21]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[22]_i_1 
       (.I0(\pixel_counters_reg[22] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [22]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[23]_i_1 
       (.I0(\pixel_counters_reg[23] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [23]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[24]_i_1 
       (.I0(\pixel_counters_reg[24] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [24]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[25]_i_1 
       (.I0(\pixel_counters_reg[25] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [25]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[26]_i_1 
       (.I0(\pixel_counters_reg[26] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [26]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[27]_i_1 
       (.I0(\pixel_counters_reg[27] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [27]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[28]_i_1 
       (.I0(\pixel_counters_reg[28] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [28]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[29]_i_1 
       (.I0(\pixel_counters_reg[29] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [29]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[2]_i_1 
       (.I0(\pixel_counters_reg[2] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [2]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[30]_i_1 
       (.I0(\pixel_counters_reg[30] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [30]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_arready),
        .I2(s00_axi_rvalid),
        .O(\axi_rdata[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[31]_i_2 
       (.I0(\pixel_counters_reg[31]_0 ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [31]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[3]_i_1 
       (.I0(\pixel_counters_reg[3] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [3]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[4]_i_1 
       (.I0(\pixel_counters_reg[4] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [4]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[5]_i_1 
       (.I0(\pixel_counters_reg[5] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [5]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[6]_i_1 
       (.I0(\pixel_counters_reg[6] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [6]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[7]_i_1 
       (.I0(\pixel_counters_reg[7] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [7]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[8]_i_1 
       (.I0(\pixel_counters_reg[8] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [8]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[9]_i_1 
       (.I0(\pixel_counters_reg[9] ),
        .I1(\axi_araddr_reg[3]_0 [1]),
        .I2(axi_araddr),
        .I3(\fifo_reg_reg[31]_0 [9]),
        .I4(\axi_araddr_reg[3]_0 [0]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wready),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fifo_reg[0]_i_1 
       (.I0(wr_slv_reg4[0]),
        .I1(inbuff_empty),
        .I2(Q[4]),
        .O(\fifo_reg_reg[31] [0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fifo_reg[12]_i_1 
       (.I0(wr_slv_reg4[12]),
        .I1(almost_full),
        .I2(Q[4]),
        .O(\fifo_reg_reg[31] [12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fifo_reg[16]_i_1 
       (.I0(wr_slv_reg4[16]),
        .I1(inbuff_prog_empty),
        .I2(Q[4]),
        .O(\fifo_reg_reg[31] [16]));
  LUT3 #(
    .INIT(8'hAC)) 
    \fifo_reg[20]_i_1 
       (.I0(wr_slv_reg4[20]),
        .I1(prog_full),
        .I2(Q[4]),
        .O(\fifo_reg_reg[31] [20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fifo_reg[24]_i_1 
       (.I0(wr_slv_reg4[24]),
        .I1(inbuff_valid),
        .I2(Q[4]),
        .O(\fifo_reg_reg[31] [24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fifo_reg[4]_i_1 
       (.I0(wr_slv_reg4[4]),
        .I1(inbuff_almost_empty),
        .I2(Q[4]),
        .O(\fifo_reg_reg[31] [4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fifo_reg[8]_i_1 
       (.I0(wr_slv_reg4[8]),
        .I1(full),
        .I2(Q[4]),
        .O(\fifo_reg_reg[31] [8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \int_slv_reg_wren[0]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data4),
        .O(int_slv_reg_wren[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \int_slv_reg_wren[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data4),
        .O(int_slv_reg_wren[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \int_slv_reg_wren[2]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data4),
        .O(int_slv_reg_wren[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \int_slv_reg_wren[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(data4),
        .O(int_slv_reg_wren[3]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \int_slv_reg_wren[4]_i_1 
       (.I0(s00_axi_wready),
        .I1(s00_axi_wvalid),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_awready),
        .I4(s00_axi_aresetn),
        .O(\int_slv_reg_wren[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_slv_reg_wren[4]_i_2 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(data4),
        .O(int_slv_reg_wren[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \int_slv_reg_wren[4]_i_3 
       (.I0(s00_axi_wstrb[1]),
        .I1(s00_axi_wstrb[0]),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_wstrb[3]),
        .O(data4));
  FDRE \int_slv_reg_wren_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_slv_reg_wren[0]),
        .Q(Q[0]),
        .R(\int_slv_reg_wren[4]_i_1_n_0 ));
  FDRE \int_slv_reg_wren_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_slv_reg_wren[1]),
        .Q(Q[1]),
        .R(\int_slv_reg_wren[4]_i_1_n_0 ));
  FDRE \int_slv_reg_wren_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_slv_reg_wren[2]),
        .Q(Q[2]),
        .R(\int_slv_reg_wren[4]_i_1_n_0 ));
  FDRE \int_slv_reg_wren_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_slv_reg_wren[3]),
        .Q(Q[3]),
        .R(\int_slv_reg_wren[4]_i_1_n_0 ));
  FDRE \int_slv_reg_wren_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(int_slv_reg_wren[4]),
        .Q(Q[4]),
        .R(\int_slv_reg_wren[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[0]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[10]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[10]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[11]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[11]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[12]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[12]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[13]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[13]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[14]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[14]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[15]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[15]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[16]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[16]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[17]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[17]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[18]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[19]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[19]),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[1]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[20]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[20]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[21]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[21]),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[22]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[22]),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[23]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[23]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[24]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[24]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[25]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[25]),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[26]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[26]),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[27]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[27]),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[28]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[28]),
        .O(D[28]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[29]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[29]),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[2]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[30]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[30]),
        .O(D[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \start_reg[31]_i_1 
       (.I0(Q[0]),
        .I1(\start_reg_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[31]_i_2 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[31]),
        .O(D[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[3]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[4]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[5]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[6]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[7]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[8]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[8]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \start_reg[9]_i_1 
       (.I0(Q[0]),
        .I1(wr_slv_reg0[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \status_reg[16]_i_1 
       (.I0(wr_slv_reg1[16]),
        .I1(video_on),
        .I2(Q[1]),
        .O(\status_reg_reg[31] [16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \status_reg[8]_i_1 
       (.I0(wr_slv_reg1[8]),
        .I1(NET1274),
        .I2(Q[1]),
        .O(\status_reg_reg[31] [8]));
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_slv_reg0[15]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\wr_slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[1]),
        .O(\wr_slv_reg0[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_slv_reg0[23]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\wr_slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[2]),
        .O(\wr_slv_reg0[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_slv_reg0[31]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\wr_slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[3]),
        .O(\wr_slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \wr_slv_reg0[31]_i_2 
       (.I0(s00_axi_awready),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_wready),
        .O(\wr_slv_reg0[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \wr_slv_reg0[7]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(\wr_slv_reg0[31]_i_2_n_0 ),
        .I4(s00_axi_wstrb[0]),
        .O(\wr_slv_reg0[7]_i_1_n_0 ));
  FDRE \wr_slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(wr_slv_reg0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(wr_slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(wr_slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(wr_slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(wr_slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(wr_slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(wr_slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(wr_slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(wr_slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(wr_slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(wr_slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(wr_slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(wr_slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(wr_slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(wr_slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(wr_slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(wr_slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(wr_slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(wr_slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(wr_slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(wr_slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(wr_slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(wr_slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(wr_slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(wr_slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(wr_slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(wr_slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(wr_slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(wr_slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(wr_slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(wr_slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(wr_slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    \wr_slv_reg1[15]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\wr_slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \wr_slv_reg1[23]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\wr_slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \wr_slv_reg1[31]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\wr_slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00040000)) 
    \wr_slv_reg1[7]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\wr_slv_reg1[7]_i_1_n_0 ));
  FDRE \wr_slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\status_reg_reg[31] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\status_reg_reg[31] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\status_reg_reg[31] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\status_reg_reg[31] [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\status_reg_reg[31] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\status_reg_reg[31] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\status_reg_reg[31] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(wr_slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\status_reg_reg[31] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\status_reg_reg[31] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\status_reg_reg[31] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\status_reg_reg[31] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\status_reg_reg[31] [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\status_reg_reg[31] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\status_reg_reg[31] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\status_reg_reg[31] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\status_reg_reg[31] [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\status_reg_reg[31] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\status_reg_reg[31] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\status_reg_reg[31] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\status_reg_reg[31] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\status_reg_reg[31] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\status_reg_reg[31] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\status_reg_reg[31] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\status_reg_reg[31] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\status_reg_reg[31] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\status_reg_reg[31] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\status_reg_reg[31] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\status_reg_reg[31] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\status_reg_reg[31] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(wr_slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\status_reg_reg[31] [9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg2[15]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\wr_slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg2[23]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\wr_slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg2[31]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\wr_slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg2[7]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\wr_slv_reg2[7]_i_1_n_0 ));
  FDRE \wr_slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\image_data_addr_reg_reg[31] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\image_data_addr_reg_reg[31] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\image_data_addr_reg_reg[31] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\image_data_addr_reg_reg[31] [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\image_data_addr_reg_reg[31] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\image_data_addr_reg_reg[31] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\image_data_addr_reg_reg[31] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\image_data_addr_reg_reg[31] [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\image_data_addr_reg_reg[31] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\image_data_addr_reg_reg[31] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\image_data_addr_reg_reg[31] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\image_data_addr_reg_reg[31] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\image_data_addr_reg_reg[31] [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\image_data_addr_reg_reg[31] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\image_data_addr_reg_reg[31] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\image_data_addr_reg_reg[31] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\image_data_addr_reg_reg[31] [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\image_data_addr_reg_reg[31] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\image_data_addr_reg_reg[31] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\image_data_addr_reg_reg[31] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\image_data_addr_reg_reg[31] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\image_data_addr_reg_reg[31] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\image_data_addr_reg_reg[31] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\image_data_addr_reg_reg[31] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\image_data_addr_reg_reg[31] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\image_data_addr_reg_reg[31] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\image_data_addr_reg_reg[31] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\image_data_addr_reg_reg[31] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\image_data_addr_reg_reg[31] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\image_data_addr_reg_reg[31] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\image_data_addr_reg_reg[31] [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\image_data_addr_reg_reg[31] [9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00400000)) 
    \wr_slv_reg3[15]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\wr_slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \wr_slv_reg3[23]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\wr_slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \wr_slv_reg3[31]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\wr_slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \wr_slv_reg3[7]_i_1 
       (.I0(\wr_slv_reg0[31]_i_2_n_0 ),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\wr_slv_reg3[7]_i_1_n_0 ));
  FDRE \wr_slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\pixel_counters_reg[31] [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\pixel_counters_reg[31] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\pixel_counters_reg[31] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\pixel_counters_reg[31] [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\pixel_counters_reg[31] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\pixel_counters_reg[31] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\pixel_counters_reg[31] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\pixel_counters_reg[31] [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\pixel_counters_reg[31] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\pixel_counters_reg[31] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\pixel_counters_reg[31] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\pixel_counters_reg[31] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\pixel_counters_reg[31] [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\pixel_counters_reg[31] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\pixel_counters_reg[31] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\pixel_counters_reg[31] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\pixel_counters_reg[31] [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\pixel_counters_reg[31] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\pixel_counters_reg[31] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\pixel_counters_reg[31] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\pixel_counters_reg[31] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\pixel_counters_reg[31] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\pixel_counters_reg[31] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\pixel_counters_reg[31] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\pixel_counters_reg[31] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\pixel_counters_reg[31] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\pixel_counters_reg[31] [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\pixel_counters_reg[31] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\pixel_counters_reg[31] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\pixel_counters_reg[31] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\pixel_counters_reg[31] [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\pixel_counters_reg[31] [9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg4[15]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(s00_axi_wstrb[1]),
        .O(\wr_slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg4[23]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(s00_axi_wstrb[2]),
        .O(\wr_slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg4[31]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(s00_axi_wstrb[3]),
        .O(\wr_slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \wr_slv_reg4[7]_i_1 
       (.I0(sel0[0]),
        .I1(\wr_slv_reg0[31]_i_2_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(s00_axi_wstrb[0]),
        .O(\wr_slv_reg4[7]_i_1_n_0 ));
  FDRE \wr_slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(wr_slv_reg4[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\fifo_reg_reg[31] [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\fifo_reg_reg[31] [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(wr_slv_reg4[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\fifo_reg_reg[31] [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\fifo_reg_reg[31] [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\fifo_reg_reg[31] [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(wr_slv_reg4[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\fifo_reg_reg[31] [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\fifo_reg_reg[31] [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\fifo_reg_reg[31] [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\fifo_reg_reg[31] [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(wr_slv_reg4[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\fifo_reg_reg[31] [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\fifo_reg_reg[31] [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\fifo_reg_reg[31] [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(wr_slv_reg4[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\fifo_reg_reg[31] [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\fifo_reg_reg[31] [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\fifo_reg_reg[31] [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\fifo_reg_reg[31] [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\fifo_reg_reg[31] [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\fifo_reg_reg[31] [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\fifo_reg_reg[31] [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\fifo_reg_reg[31] [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\fifo_reg_reg[31] [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(wr_slv_reg4[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\fifo_reg_reg[31] [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\fifo_reg_reg[31] [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\fifo_reg_reg[31] [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(wr_slv_reg4[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \wr_slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\wr_slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\fifo_reg_reg[31] [9]),
        .R(axi_awready_i_1_n_0));
endmodule

module final_accelerator_VGA_IF_0_0_VGA_IF_v1_0_S_AXI_INTR
   (s_axi_intr_awready,
    s_axi_intr_wready,
    s_axi_intr_arready,
    s_axi_intr_bvalid,
    s_axi_intr_rvalid,
    s_axi_intr_rdata,
    irq,
    s_axi_intr_aclk,
    s_axi_intr_awvalid,
    s_axi_intr_wvalid,
    s_axi_intr_arvalid,
    s_axi_intr_aresetn,
    s_axi_intr_bready,
    s_axi_intr_rready,
    s_axi_intr_wdata,
    s_axi_intr_awaddr,
    s_axi_intr_araddr);
  output s_axi_intr_awready;
  output s_axi_intr_wready;
  output s_axi_intr_arready;
  output s_axi_intr_bvalid;
  output s_axi_intr_rvalid;
  output [0:0]s_axi_intr_rdata;
  output irq;
  input s_axi_intr_aclk;
  input s_axi_intr_awvalid;
  input s_axi_intr_wvalid;
  input s_axi_intr_arvalid;
  input s_axi_intr_aresetn;
  input s_axi_intr_bready;
  input s_axi_intr_rready;
  input [0:0]s_axi_intr_wdata;
  input [2:0]s_axi_intr_awaddr;
  input [2:0]s_axi_intr_araddr;

  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr_reg_n_0_[2] ;
  wire \axi_araddr_reg_n_0_[3] ;
  wire \axi_araddr_reg_n_0_[4] ;
  wire axi_arready_i_1__0_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready_i_2__0_n_0;
  wire axi_bvalid_i_1__0_n_0;
  wire \axi_rdata[0]_i_1__0_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire axi_rvalid_i_1__0_n_0;
  wire axi_wready_i_1__0_n_0;
  wire clear;
  wire det_intr;
  wire \gen_intr_all[0].intr_ack_all_i_1_n_0 ;
  wire \gen_intr_all[0].intr_all_i_1_n_0 ;
  wire \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0 ;
  wire \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ;
  wire \gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ;
  wire \gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ;
  wire intr;
  wire \intr[0]_i_1_n_0 ;
  wire intr_ack_all;
  wire intr_ack_all_ff;
  wire intr_all;
  wire \intr_counter[0]_i_1_n_0 ;
  wire \intr_counter[1]_i_1_n_0 ;
  wire \intr_counter[2]_i_1_n_0 ;
  wire \intr_counter[3]_i_2_n_0 ;
  wire [3:0]intr_counter_reg__0;
  wire irq;
  wire [2:0]p_0_in;
  wire p_1_out;
  wire reg_data_out;
  wire reg_global_intr_en;
  wire reg_intr_ack;
  wire reg_intr_en;
  wire reg_intr_pending;
  wire reg_intr_sts;
  wire s_axi_intr_aclk;
  wire [2:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [2:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]s_axi_intr_rdata;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [0:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;
  wire sel;

  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_intr_araddr[0]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(\axi_araddr_reg_n_0_[2] ),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_intr_araddr[1]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s_axi_intr_araddr[2]),
        .I1(s_axi_intr_arvalid),
        .I2(s_axi_intr_arready),
        .I3(\axi_araddr_reg_n_0_[4] ),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[2] ),
        .S(clear));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[3] ),
        .S(clear));
  FDSE \axi_araddr_reg[4] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[4] ),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1__0
       (.I0(s_axi_intr_arvalid),
        .I1(s_axi_intr_arready),
        .O(axi_arready_i_1__0_n_0));
  FDRE axi_arready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1__0_n_0),
        .Q(s_axi_intr_arready),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_intr_awaddr[0]),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_awready),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_intr_awaddr[1]),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_awready),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(s_axi_intr_awaddr[2]),
        .I1(s_axi_intr_awvalid),
        .I2(s_axi_intr_wvalid),
        .I3(s_axi_intr_awready),
        .I4(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(clear));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(clear));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1__0
       (.I0(s_axi_intr_aresetn),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2__0
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_awready),
        .O(axi_awready_i_2__0_n_0));
  FDRE axi_awready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2__0_n_0),
        .Q(s_axi_intr_awready),
        .R(clear));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1__0
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_awready),
        .I3(s_axi_intr_wready),
        .I4(s_axi_intr_bready),
        .I5(s_axi_intr_bvalid),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(s_axi_intr_bvalid),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_rdata[0]_i_1__0 
       (.I0(reg_data_out),
        .I1(s_axi_intr_arready),
        .I2(s_axi_intr_arvalid),
        .I3(s_axi_intr_rvalid),
        .I4(s_axi_intr_rdata),
        .O(\axi_rdata[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[0]_i_2__0 
       (.I0(\axi_rdata[0]_i_3_n_0 ),
        .I1(\axi_araddr_reg_n_0_[3] ),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(reg_intr_pending),
        .I4(\axi_araddr_reg_n_0_[2] ),
        .O(reg_data_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(reg_intr_ack),
        .I1(reg_intr_sts),
        .I2(\axi_araddr_reg_n_0_[3] ),
        .I3(reg_intr_en),
        .I4(\axi_araddr_reg_n_0_[2] ),
        .I5(reg_global_intr_en),
        .O(\axi_rdata[0]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\axi_rdata[0]_i_1__0_n_0 ),
        .Q(s_axi_intr_rdata),
        .R(clear));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1__0
       (.I0(s_axi_intr_arvalid),
        .I1(s_axi_intr_arready),
        .I2(s_axi_intr_rvalid),
        .I3(s_axi_intr_rready),
        .O(axi_rvalid_i_1__0_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1__0_n_0),
        .Q(s_axi_intr_rvalid),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1__0
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_wready),
        .O(axi_wready_i_1__0_n_0));
  FDRE axi_wready_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1__0_n_0),
        .Q(s_axi_intr_wready),
        .R(clear));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_intr_all[0].intr_ack_all_i_1 
       (.I0(intr_ack_all),
        .I1(reg_intr_ack),
        .I2(s_axi_intr_aresetn),
        .I3(intr_ack_all_ff),
        .O(\gen_intr_all[0].intr_ack_all_i_1_n_0 ));
  FDRE \gen_intr_all[0].intr_ack_all_reg 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_all[0].intr_ack_all_i_1_n_0 ),
        .Q(intr_ack_all),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E0)) 
    \gen_intr_all[0].intr_all_i_1 
       (.I0(intr_all),
        .I1(reg_intr_pending),
        .I2(s_axi_intr_aresetn),
        .I3(intr_ack_all_ff),
        .O(\gen_intr_all[0].intr_all_i_1_n_0 ));
  FDRE \gen_intr_all[0].intr_all_reg 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_all[0].intr_all_i_1_n_0 ),
        .Q(intr_all),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1 
       (.I0(intr),
        .I1(det_intr),
        .O(\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0 ));
  FDRE \gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_detection[0].gen_intr_level_detect.gen_intr_active_high_detect.det_intr[0]_i_1_n_0 ),
        .Q(det_intr),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EA00)) 
    \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1 
       (.I0(irq),
        .I1(reg_global_intr_en),
        .I2(intr_all),
        .I3(s_axi_intr_aresetn),
        .I4(intr_ack_all),
        .O(\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ));
  FDRE \gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_reg 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_detection[0].gen_irq_level.irq_level_high.s_irq_lvl_i_1_n_0 ),
        .Q(irq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_intr_reg[0].reg_global_intr_en[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ),
        .I4(p_0_in[1]),
        .I5(reg_global_intr_en),
        .O(\gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \gen_intr_reg[0].reg_global_intr_en[0]_i_2 
       (.I0(s_axi_intr_awvalid),
        .I1(s_axi_intr_wvalid),
        .I2(s_axi_intr_awready),
        .I3(s_axi_intr_wready),
        .O(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ));
  FDRE \gen_intr_reg[0].reg_global_intr_en_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_global_intr_en[0]_i_1_n_0 ),
        .Q(reg_global_intr_en),
        .R(clear));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \gen_intr_reg[0].reg_intr_ack[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[1]),
        .I5(reg_intr_ack),
        .O(\gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_intr_ack_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_intr_ack[0]_i_1_n_0 ),
        .Q(reg_intr_ack),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \gen_intr_reg[0].reg_intr_en[0]_i_1 
       (.I0(s_axi_intr_wdata),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(\gen_intr_reg[0].reg_global_intr_en[0]_i_2_n_0 ),
        .I5(reg_intr_en),
        .O(\gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_intr_en_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\gen_intr_reg[0].reg_intr_en[0]_i_1_n_0 ),
        .Q(reg_intr_en),
        .R(clear));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_intr_reg[0].reg_intr_pending[0]_i_1 
       (.I0(reg_intr_en),
        .I1(reg_intr_sts),
        .O(p_1_out));
  FDRE \gen_intr_reg[0].reg_intr_pending_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(reg_intr_pending),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \gen_intr_reg[0].reg_intr_sts[0]_i_1 
       (.I0(reg_intr_ack),
        .I1(s_axi_intr_aresetn),
        .O(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  FDRE \gen_intr_reg[0].reg_intr_sts_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(det_intr),
        .Q(reg_intr_sts),
        .R(\gen_intr_reg[0].reg_intr_sts[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \intr[0]_i_1 
       (.I0(intr_counter_reg__0[0]),
        .I1(intr_counter_reg__0[2]),
        .I2(intr_counter_reg__0[1]),
        .I3(intr_counter_reg__0[3]),
        .O(\intr[0]_i_1_n_0 ));
  FDRE intr_ack_all_ff_reg
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(intr_ack_all),
        .Q(intr_ack_all_ff),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \intr_counter[0]_i_1 
       (.I0(intr_counter_reg__0[0]),
        .O(\intr_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \intr_counter[1]_i_1 
       (.I0(intr_counter_reg__0[0]),
        .I1(intr_counter_reg__0[1]),
        .O(\intr_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \intr_counter[2]_i_1 
       (.I0(intr_counter_reg__0[1]),
        .I1(intr_counter_reg__0[0]),
        .I2(intr_counter_reg__0[2]),
        .O(\intr_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \intr_counter[3]_i_1 
       (.I0(intr_counter_reg__0[1]),
        .I1(intr_counter_reg__0[0]),
        .I2(intr_counter_reg__0[2]),
        .I3(intr_counter_reg__0[3]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \intr_counter[3]_i_2 
       (.I0(intr_counter_reg__0[0]),
        .I1(intr_counter_reg__0[1]),
        .I2(intr_counter_reg__0[2]),
        .I3(intr_counter_reg__0[3]),
        .O(\intr_counter[3]_i_2_n_0 ));
  FDSE \intr_counter_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(sel),
        .D(\intr_counter[0]_i_1_n_0 ),
        .Q(intr_counter_reg__0[0]),
        .S(clear));
  FDSE \intr_counter_reg[1] 
       (.C(s_axi_intr_aclk),
        .CE(sel),
        .D(\intr_counter[1]_i_1_n_0 ),
        .Q(intr_counter_reg__0[1]),
        .S(clear));
  FDSE \intr_counter_reg[2] 
       (.C(s_axi_intr_aclk),
        .CE(sel),
        .D(\intr_counter[2]_i_1_n_0 ),
        .Q(intr_counter_reg__0[2]),
        .S(clear));
  FDSE \intr_counter_reg[3] 
       (.C(s_axi_intr_aclk),
        .CE(sel),
        .D(\intr_counter[3]_i_2_n_0 ),
        .Q(intr_counter_reg__0[3]),
        .S(clear));
  FDRE \intr_reg[0] 
       (.C(s_axi_intr_aclk),
        .CE(1'b1),
        .D(\intr[0]_i_1_n_0 ),
        .Q(intr),
        .R(clear));
endmodule

module final_accelerator_VGA_IF_0_0_cross_clk_vga
   (video_on,
    inbuff_empty,
    inbuff_almost_empty,
    inbuff_prog_empty,
    inbuff_valid,
    NET1254,
    prog_empty_thresh,
    Q,
    \pixel_counters_reg[25] ,
    read_en_out,
    i_VGA_CLK,
    i_reset_n,
    empty,
    almost_empty,
    prog_empty,
    valid,
    NET1274,
    i_axi_slave_clk,
    \v_count_reg[9] ,
    BUS1262);
  output video_on;
  output inbuff_empty;
  output inbuff_almost_empty;
  output inbuff_prog_empty;
  output inbuff_valid;
  output NET1254;
  output [0:0]prog_empty_thresh;
  output [9:0]Q;
  output [9:0]\pixel_counters_reg[25] ;
  input read_en_out;
  input i_VGA_CLK;
  input i_reset_n;
  input empty;
  input almost_empty;
  input prog_empty;
  input valid;
  input NET1274;
  input i_axi_slave_clk;
  input [9:0]\v_count_reg[9] ;
  input [9:0]BUS1262;

  wire [9:0]BUS1262;
  wire NET1254;
  wire NET1274;
  wire [9:0]Q;
  wire almost_empty;
  wire empty;
  wire i_VGA_CLK;
  wire i_axi_slave_clk;
  wire i_reset_n;
  wire inbuff_almost_empty;
  wire inbuff_empty;
  wire inbuff_prog_empty;
  wire inbuff_valid;
  wire [9:0]\pixel_counters_reg[25] ;
  wire prog_empty;
  wire [0:0]prog_empty_thresh;
  wire read_en_out;
  wire [9:0]\v_count_reg[9] ;
  wire valid;
  wire video_on;

  FDCE inbuff_almost_empty_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(almost_empty),
        .Q(inbuff_almost_empty));
  FDCE inbuff_empty_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(empty),
        .Q(inbuff_empty));
  FDCE inbuff_prog_empty_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(prog_empty),
        .Q(inbuff_prog_empty));
  FDCE inbuff_valid_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(valid),
        .Q(inbuff_valid));
  FDCE \pixel_x_reg[0] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[0]),
        .Q(\pixel_counters_reg[25] [0]));
  FDCE \pixel_x_reg[1] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[1]),
        .Q(\pixel_counters_reg[25] [1]));
  FDCE \pixel_x_reg[2] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[2]),
        .Q(\pixel_counters_reg[25] [2]));
  FDCE \pixel_x_reg[3] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[3]),
        .Q(\pixel_counters_reg[25] [3]));
  FDCE \pixel_x_reg[4] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[4]),
        .Q(\pixel_counters_reg[25] [4]));
  FDCE \pixel_x_reg[5] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[5]),
        .Q(\pixel_counters_reg[25] [5]));
  FDCE \pixel_x_reg[6] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[6]),
        .Q(\pixel_counters_reg[25] [6]));
  FDCE \pixel_x_reg[7] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[7]),
        .Q(\pixel_counters_reg[25] [7]));
  FDCE \pixel_x_reg[8] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[8]),
        .Q(\pixel_counters_reg[25] [8]));
  FDCE \pixel_x_reg[9] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(BUS1262[9]),
        .Q(\pixel_counters_reg[25] [9]));
  FDCE \pixel_y_reg[0] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [0]),
        .Q(Q[0]));
  FDCE \pixel_y_reg[1] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [1]),
        .Q(Q[1]));
  FDCE \pixel_y_reg[2] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [2]),
        .Q(Q[2]));
  FDCE \pixel_y_reg[3] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [3]),
        .Q(Q[3]));
  FDCE \pixel_y_reg[4] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [4]),
        .Q(Q[4]));
  FDCE \pixel_y_reg[5] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [5]),
        .Q(Q[5]));
  FDCE \pixel_y_reg[6] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [6]),
        .Q(Q[6]));
  FDCE \pixel_y_reg[7] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [7]),
        .Q(Q[7]));
  FDCE \pixel_y_reg[8] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [8]),
        .Q(Q[8]));
  FDCE \pixel_y_reg[9] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\v_count_reg[9] [9]),
        .Q(Q[9]));
  FDCE \prog_empty_threshold_reg[9] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(1'b1),
        .Q(prog_empty_thresh));
  FDCE start_display_reg
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(NET1274),
        .Q(NET1254));
  FDCE video_on_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(read_en_out),
        .Q(video_on));
endmodule

(* CHECK_LICENSE_TYPE = "neural_net_accel_conv_db_VGA_IF_0_0,VGA_IF_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "VGA_IF_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module final_accelerator_VGA_IF_0_0
   (i_VGA_CLK,
    i_axi_master_clk,
    i_axi_slave_clk,
    i_reset_n,
    o_hsync,
    o_vsync,
    o_vga_data,
    i_start_display_irq,
    vga_data_out,
    pixel_valid_out,
    read_en_out,
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
    m00_axi_buser,
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
    m00_axi_ruser,
    m00_axi_rvalid,
    m00_axi_rready,
    m00_axi_aclk,
    m00_axi_aresetn,
    m00_axi_init_axi_txn,
    m00_axi_txn_done,
    m00_axi_error,
    s_axi_intr_awaddr,
    s_axi_intr_awprot,
    s_axi_intr_awvalid,
    s_axi_intr_awready,
    s_axi_intr_wdata,
    s_axi_intr_wstrb,
    s_axi_intr_wvalid,
    s_axi_intr_wready,
    s_axi_intr_bresp,
    s_axi_intr_bvalid,
    s_axi_intr_bready,
    s_axi_intr_araddr,
    s_axi_intr_arprot,
    s_axi_intr_arvalid,
    s_axi_intr_arready,
    s_axi_intr_rdata,
    s_axi_intr_rresp,
    s_axi_intr_rvalid,
    s_axi_intr_rready,
    s_axi_intr_aclk,
    s_axi_intr_aresetn,
    irq,
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
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  input i_VGA_CLK;
  input i_axi_master_clk;
  input i_axi_slave_clk;
  input i_reset_n;
  output o_hsync;
  output o_vsync;
  output [11:0]o_vga_data;
  input i_start_display_irq;
  output [11:0]vga_data_out;
  output pixel_valid_out;
  output read_en_out;
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI BUSER" *) input [0:0]m00_axi_buser;
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
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RUSER" *) input [0:0]m00_axi_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) input m00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) input m00_axi_aresetn;
  input m00_axi_init_axi_txn;
  output m00_axi_txn_done;
  output m00_axi_error;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWADDR" *) input [4:0]s_axi_intr_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWPROT" *) input [2:0]s_axi_intr_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWVALID" *) input s_axi_intr_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR AWREADY" *) output s_axi_intr_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WDATA" *) input [31:0]s_axi_intr_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WSTRB" *) input [3:0]s_axi_intr_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WVALID" *) input s_axi_intr_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR WREADY" *) output s_axi_intr_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BRESP" *) output [1:0]s_axi_intr_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BVALID" *) output s_axi_intr_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR BREADY" *) input s_axi_intr_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARADDR" *) input [4:0]s_axi_intr_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARPROT" *) input [2:0]s_axi_intr_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARVALID" *) input s_axi_intr_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR ARREADY" *) output s_axi_intr_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RDATA" *) output [31:0]s_axi_intr_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RRESP" *) output [1:0]s_axi_intr_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RVALID" *) output s_axi_intr_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI_INTR RREADY" *) input s_axi_intr_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_INTR_CLK CLK" *) input s_axi_intr_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_INTR_RST RST" *) input s_axi_intr_aresetn;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 IRQ INTERRUPT" *) output irq;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire i_VGA_CLK;
  wire i_axi_master_clk;
  wire i_axi_slave_clk;
  wire i_reset_n;
  wire i_start_display_irq;
  wire irq;
  wire m00_axi_aclk;
  wire [31:10]\^m00_axi_araddr ;
  wire m00_axi_aresetn;
  wire m00_axi_arready;
  wire m00_axi_arvalid;
  wire [31:0]m00_axi_rdata;
  wire m00_axi_rlast;
  wire m00_axi_rready;
  wire m00_axi_rvalid;
  wire o_hsync;
  wire [11:0]o_vga_data;
  wire o_vsync;
  wire pixel_valid_out;
  wire read_en_out;
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
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
  wire s_axi_intr_aclk;
  wire [4:0]s_axi_intr_araddr;
  wire s_axi_intr_aresetn;
  wire s_axi_intr_arready;
  wire s_axi_intr_arvalid;
  wire [4:0]s_axi_intr_awaddr;
  wire s_axi_intr_awready;
  wire s_axi_intr_awvalid;
  wire s_axi_intr_bready;
  wire s_axi_intr_bvalid;
  wire [0:0]\^s_axi_intr_rdata ;
  wire s_axi_intr_rready;
  wire s_axi_intr_rvalid;
  wire [31:0]s_axi_intr_wdata;
  wire s_axi_intr_wready;
  wire s_axi_intr_wvalid;
  wire [11:0]vga_data_out;

  assign m00_axi_araddr[31:10] = \^m00_axi_araddr [31:10];
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
  assign m00_axi_arlen[7] = \<const1> ;
  assign m00_axi_arlen[6] = \<const1> ;
  assign m00_axi_arlen[5] = \<const1> ;
  assign m00_axi_arlen[4] = \<const1> ;
  assign m00_axi_arlen[3] = \<const1> ;
  assign m00_axi_arlen[2] = \<const1> ;
  assign m00_axi_arlen[1] = \<const1> ;
  assign m00_axi_arlen[0] = \<const1> ;
  assign m00_axi_arlock = \<const0> ;
  assign m00_axi_arprot[2] = \<const0> ;
  assign m00_axi_arprot[1] = \<const0> ;
  assign m00_axi_arprot[0] = \<const0> ;
  assign m00_axi_arqos[3] = \<const0> ;
  assign m00_axi_arqos[2] = \<const0> ;
  assign m00_axi_arqos[1] = \<const0> ;
  assign m00_axi_arqos[0] = \<const0> ;
  assign m00_axi_arsize[2] = \<const0> ;
  assign m00_axi_arsize[1] = \<const1> ;
  assign m00_axi_arsize[0] = \<const0> ;
  assign m00_axi_aruser[0] = \<const1> ;
  assign m00_axi_awaddr[31] = \<const0> ;
  assign m00_axi_awaddr[30] = \<const1> ;
  assign m00_axi_awaddr[29] = \<const0> ;
  assign m00_axi_awaddr[28] = \<const0> ;
  assign m00_axi_awaddr[27] = \<const0> ;
  assign m00_axi_awaddr[26] = \<const0> ;
  assign m00_axi_awaddr[25] = \<const0> ;
  assign m00_axi_awaddr[24] = \<const0> ;
  assign m00_axi_awaddr[23] = \<const0> ;
  assign m00_axi_awaddr[22] = \<const0> ;
  assign m00_axi_awaddr[21] = \<const0> ;
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
  assign m00_axi_awaddr[3] = \<const0> ;
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
  assign m00_axi_awlen[7] = \<const1> ;
  assign m00_axi_awlen[6] = \<const1> ;
  assign m00_axi_awlen[5] = \<const1> ;
  assign m00_axi_awlen[4] = \<const1> ;
  assign m00_axi_awlen[3] = \<const1> ;
  assign m00_axi_awlen[2] = \<const1> ;
  assign m00_axi_awlen[1] = \<const1> ;
  assign m00_axi_awlen[0] = \<const1> ;
  assign m00_axi_awlock = \<const0> ;
  assign m00_axi_awprot[2] = \<const0> ;
  assign m00_axi_awprot[1] = \<const0> ;
  assign m00_axi_awprot[0] = \<const0> ;
  assign m00_axi_awqos[3] = \<const0> ;
  assign m00_axi_awqos[2] = \<const0> ;
  assign m00_axi_awqos[1] = \<const0> ;
  assign m00_axi_awqos[0] = \<const0> ;
  assign m00_axi_awsize[2] = \<const0> ;
  assign m00_axi_awsize[1] = \<const1> ;
  assign m00_axi_awsize[0] = \<const0> ;
  assign m00_axi_awuser[0] = \<const1> ;
  assign m00_axi_awvalid = \<const0> ;
  assign m00_axi_bready = \<const0> ;
  assign m00_axi_error = \<const0> ;
  assign m00_axi_txn_done = \<const0> ;
  assign m00_axi_wdata[31] = \<const0> ;
  assign m00_axi_wdata[30] = \<const0> ;
  assign m00_axi_wdata[29] = \<const0> ;
  assign m00_axi_wdata[28] = \<const0> ;
  assign m00_axi_wdata[27] = \<const0> ;
  assign m00_axi_wdata[26] = \<const0> ;
  assign m00_axi_wdata[25] = \<const0> ;
  assign m00_axi_wdata[24] = \<const0> ;
  assign m00_axi_wdata[23] = \<const0> ;
  assign m00_axi_wdata[22] = \<const0> ;
  assign m00_axi_wdata[21] = \<const0> ;
  assign m00_axi_wdata[20] = \<const0> ;
  assign m00_axi_wdata[19] = \<const0> ;
  assign m00_axi_wdata[18] = \<const0> ;
  assign m00_axi_wdata[17] = \<const0> ;
  assign m00_axi_wdata[16] = \<const0> ;
  assign m00_axi_wdata[15] = \<const0> ;
  assign m00_axi_wdata[14] = \<const0> ;
  assign m00_axi_wdata[13] = \<const0> ;
  assign m00_axi_wdata[12] = \<const0> ;
  assign m00_axi_wdata[11] = \<const0> ;
  assign m00_axi_wdata[10] = \<const0> ;
  assign m00_axi_wdata[9] = \<const0> ;
  assign m00_axi_wdata[8] = \<const0> ;
  assign m00_axi_wdata[7] = \<const0> ;
  assign m00_axi_wdata[6] = \<const0> ;
  assign m00_axi_wdata[5] = \<const0> ;
  assign m00_axi_wdata[4] = \<const0> ;
  assign m00_axi_wdata[3] = \<const0> ;
  assign m00_axi_wdata[2] = \<const0> ;
  assign m00_axi_wdata[1] = \<const0> ;
  assign m00_axi_wdata[0] = \<const0> ;
  assign m00_axi_wlast = \<const0> ;
  assign m00_axi_wstrb[3] = \<const1> ;
  assign m00_axi_wstrb[2] = \<const1> ;
  assign m00_axi_wstrb[1] = \<const1> ;
  assign m00_axi_wstrb[0] = \<const1> ;
  assign m00_axi_wuser[0] = \<const0> ;
  assign m00_axi_wvalid = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s_axi_intr_bresp[1] = \<const0> ;
  assign s_axi_intr_bresp[0] = \<const0> ;
  assign s_axi_intr_rdata[31] = \<const0> ;
  assign s_axi_intr_rdata[30] = \<const0> ;
  assign s_axi_intr_rdata[29] = \<const0> ;
  assign s_axi_intr_rdata[28] = \<const0> ;
  assign s_axi_intr_rdata[27] = \<const0> ;
  assign s_axi_intr_rdata[26] = \<const0> ;
  assign s_axi_intr_rdata[25] = \<const0> ;
  assign s_axi_intr_rdata[24] = \<const0> ;
  assign s_axi_intr_rdata[23] = \<const0> ;
  assign s_axi_intr_rdata[22] = \<const0> ;
  assign s_axi_intr_rdata[21] = \<const0> ;
  assign s_axi_intr_rdata[20] = \<const0> ;
  assign s_axi_intr_rdata[19] = \<const0> ;
  assign s_axi_intr_rdata[18] = \<const0> ;
  assign s_axi_intr_rdata[17] = \<const0> ;
  assign s_axi_intr_rdata[16] = \<const0> ;
  assign s_axi_intr_rdata[15] = \<const0> ;
  assign s_axi_intr_rdata[14] = \<const0> ;
  assign s_axi_intr_rdata[13] = \<const0> ;
  assign s_axi_intr_rdata[12] = \<const0> ;
  assign s_axi_intr_rdata[11] = \<const0> ;
  assign s_axi_intr_rdata[10] = \<const0> ;
  assign s_axi_intr_rdata[9] = \<const0> ;
  assign s_axi_intr_rdata[8] = \<const0> ;
  assign s_axi_intr_rdata[7] = \<const0> ;
  assign s_axi_intr_rdata[6] = \<const0> ;
  assign s_axi_intr_rdata[5] = \<const0> ;
  assign s_axi_intr_rdata[4] = \<const0> ;
  assign s_axi_intr_rdata[3] = \<const0> ;
  assign s_axi_intr_rdata[2] = \<const0> ;
  assign s_axi_intr_rdata[1] = \<const0> ;
  assign s_axi_intr_rdata[0] = \^s_axi_intr_rdata [0];
  assign s_axi_intr_rresp[1] = \<const0> ;
  assign s_axi_intr_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  final_accelerator_VGA_IF_0_0_VGA_IF_v1_0 U0
       (.i_VGA_CLK(i_VGA_CLK),
        .i_axi_master_clk(i_axi_master_clk),
        .i_axi_slave_clk(i_axi_slave_clk),
        .i_reset_n(i_reset_n),
        .i_start_display_irq(i_start_display_irq),
        .irq(irq),
        .m00_axi_aclk(m00_axi_aclk),
        .m00_axi_araddr(\^m00_axi_araddr ),
        .m00_axi_aresetn(m00_axi_aresetn),
        .m00_axi_arready(m00_axi_arready),
        .m00_axi_arvalid(m00_axi_arvalid),
        .m00_axi_rdata(m00_axi_rdata[11:0]),
        .m00_axi_rlast(m00_axi_rlast),
        .m00_axi_rready(m00_axi_rready),
        .m00_axi_rvalid(m00_axi_rvalid),
        .o_hsync(o_hsync),
        .o_vga_data(o_vga_data),
        .o_vsync(o_vsync),
        .pixel_valid_out(pixel_valid_out),
        .read_en_out(read_en_out),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
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
        .s_axi_intr_aclk(s_axi_intr_aclk),
        .s_axi_intr_araddr(s_axi_intr_araddr[4:2]),
        .s_axi_intr_aresetn(s_axi_intr_aresetn),
        .s_axi_intr_arready(s_axi_intr_arready),
        .s_axi_intr_arvalid(s_axi_intr_arvalid),
        .s_axi_intr_awaddr(s_axi_intr_awaddr[4:2]),
        .s_axi_intr_awready(s_axi_intr_awready),
        .s_axi_intr_awvalid(s_axi_intr_awvalid),
        .s_axi_intr_bready(s_axi_intr_bready),
        .s_axi_intr_bvalid(s_axi_intr_bvalid),
        .s_axi_intr_rdata(\^s_axi_intr_rdata ),
        .s_axi_intr_rready(s_axi_intr_rready),
        .s_axi_intr_rvalid(s_axi_intr_rvalid),
        .s_axi_intr_wdata(s_axi_intr_wdata[0]),
        .s_axi_intr_wready(s_axi_intr_wready),
        .s_axi_intr_wvalid(s_axi_intr_wvalid),
        .vga_data_out(vga_data_out));
  VCC VCC
       (.P(\<const1> ));
endmodule

module final_accelerator_VGA_IF_0_0_vga_controller
   (INIT_AXI_TXN,
    INIT_AXI_TXN_reg_0,
    start_display_reg_0,
    \axi_rdata_reg[0] ,
    Q,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[21] ,
    \axi_rdata_reg[22] ,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[24] ,
    \axi_rdata_reg[25] ,
    \axi_rdata_reg[26] ,
    \axi_rdata_reg[27] ,
    \axi_rdata_reg[28] ,
    \axi_rdata_reg[29] ,
    \axi_rdata_reg[30] ,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[31]_0 ,
    i_axi_master_clk,
    int_read_next,
    i_axi_slave_clk,
    int_rdone,
    \axi_araddr_reg[3] ,
    i_reset_n,
    \int_slv_reg_wren_reg[4] ,
    i_start_display_irq,
    E,
    D,
    \wr_slv_reg1_reg[31] ,
    \wr_slv_reg2_reg[31] ,
    \wr_slv_reg3_reg[31] ,
    \pixel_y_reg[9] ,
    \pixel_x_reg[9] ,
    \wr_slv_reg4_reg[31] );
  output INIT_AXI_TXN;
  output INIT_AXI_TXN_reg_0;
  output start_display_reg_0;
  output \axi_rdata_reg[0] ;
  output [0:0]Q;
  output \axi_rdata_reg[1] ;
  output \axi_rdata_reg[2] ;
  output \axi_rdata_reg[3] ;
  output \axi_rdata_reg[4] ;
  output \axi_rdata_reg[5] ;
  output \axi_rdata_reg[6] ;
  output \axi_rdata_reg[7] ;
  output \axi_rdata_reg[8] ;
  output \axi_rdata_reg[9] ;
  output \axi_rdata_reg[10] ;
  output \axi_rdata_reg[11] ;
  output \axi_rdata_reg[12] ;
  output \axi_rdata_reg[13] ;
  output \axi_rdata_reg[14] ;
  output \axi_rdata_reg[15] ;
  output \axi_rdata_reg[16] ;
  output \axi_rdata_reg[17] ;
  output \axi_rdata_reg[18] ;
  output \axi_rdata_reg[19] ;
  output \axi_rdata_reg[20] ;
  output \axi_rdata_reg[21] ;
  output \axi_rdata_reg[22] ;
  output \axi_rdata_reg[23] ;
  output \axi_rdata_reg[24] ;
  output \axi_rdata_reg[25] ;
  output \axi_rdata_reg[26] ;
  output \axi_rdata_reg[27] ;
  output \axi_rdata_reg[28] ;
  output \axi_rdata_reg[29] ;
  output \axi_rdata_reg[30] ;
  output \axi_rdata_reg[31] ;
  output [31:0]\axi_rdata_reg[31]_0 ;
  input i_axi_master_clk;
  input int_read_next;
  input i_axi_slave_clk;
  input int_rdone;
  input [1:0]\axi_araddr_reg[3] ;
  input i_reset_n;
  input [4:0]\int_slv_reg_wren_reg[4] ;
  input i_start_display_irq;
  input [0:0]E;
  input [31:0]D;
  input [31:0]\wr_slv_reg1_reg[31] ;
  input [31:0]\wr_slv_reg2_reg[31] ;
  input [31:0]\wr_slv_reg3_reg[31] ;
  input [9:0]\pixel_y_reg[9] ;
  input [9:0]\pixel_x_reg[9] ;
  input [31:0]\wr_slv_reg4_reg[31] ;

  wire [31:0]D;
  wire [0:0]E;
  wire INIT_AXI_TXN;
  wire INIT_AXI_TXN3_carry__0_i_1_n_0;
  wire INIT_AXI_TXN3_carry__0_i_2_n_0;
  wire INIT_AXI_TXN3_carry__0_i_3_n_0;
  wire INIT_AXI_TXN3_carry__0_i_4_n_0;
  wire INIT_AXI_TXN3_carry__0_n_0;
  wire INIT_AXI_TXN3_carry__0_n_1;
  wire INIT_AXI_TXN3_carry__0_n_2;
  wire INIT_AXI_TXN3_carry__0_n_3;
  wire INIT_AXI_TXN3_carry__1_i_1_n_0;
  wire INIT_AXI_TXN3_carry__1_i_2_n_0;
  wire INIT_AXI_TXN3_carry__1_i_3_n_0;
  wire INIT_AXI_TXN3_carry__1_n_1;
  wire INIT_AXI_TXN3_carry__1_n_2;
  wire INIT_AXI_TXN3_carry__1_n_3;
  wire INIT_AXI_TXN3_carry_i_1_n_0;
  wire INIT_AXI_TXN3_carry_i_2_n_0;
  wire INIT_AXI_TXN3_carry_i_3_n_0;
  wire INIT_AXI_TXN3_carry_i_4_n_0;
  wire INIT_AXI_TXN3_carry_n_0;
  wire INIT_AXI_TXN3_carry_n_1;
  wire INIT_AXI_TXN3_carry_n_2;
  wire INIT_AXI_TXN3_carry_n_3;
  wire INIT_AXI_TXN_i_1_n_0;
  wire INIT_AXI_TXN_reg_0;
  wire [0:0]Q;
  wire [1:0]\axi_araddr_reg[3] ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[16] ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[19] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[22] ;
  wire \axi_rdata_reg[23] ;
  wire \axi_rdata_reg[24] ;
  wire \axi_rdata_reg[25] ;
  wire \axi_rdata_reg[26] ;
  wire \axi_rdata_reg[27] ;
  wire \axi_rdata_reg[28] ;
  wire \axi_rdata_reg[29] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[30] ;
  wire \axi_rdata_reg[31] ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire i_axi_master_clk;
  wire i_axi_slave_clk;
  wire i_reset_n;
  wire i_start_display_irq;
  wire [31:0]image_data_addr_reg;
  wire int_rdone;
  wire int_read_next;
  wire [4:0]\int_slv_reg_wren_reg[4] ;
  wire [31:0]pixel_counters;
  wire \pixel_counters[0]_i_1_n_0 ;
  wire \pixel_counters[16]_i_1_n_0 ;
  wire \pixel_counters[17]_i_1_n_0 ;
  wire \pixel_counters[18]_i_1_n_0 ;
  wire \pixel_counters[19]_i_1_n_0 ;
  wire \pixel_counters[1]_i_1_n_0 ;
  wire \pixel_counters[20]_i_1_n_0 ;
  wire \pixel_counters[21]_i_1_n_0 ;
  wire \pixel_counters[22]_i_1_n_0 ;
  wire \pixel_counters[23]_i_1_n_0 ;
  wire \pixel_counters[24]_i_1_n_0 ;
  wire \pixel_counters[25]_i_1_n_0 ;
  wire \pixel_counters[2]_i_1_n_0 ;
  wire \pixel_counters[3]_i_1_n_0 ;
  wire \pixel_counters[4]_i_1_n_0 ;
  wire \pixel_counters[5]_i_1_n_0 ;
  wire \pixel_counters[6]_i_1_n_0 ;
  wire \pixel_counters[7]_i_1_n_0 ;
  wire \pixel_counters[8]_i_1_n_0 ;
  wire \pixel_counters[9]_i_1_n_0 ;
  wire [9:0]\pixel_x_reg[9] ;
  wire [9:0]\pixel_y_reg[9] ;
  wire row_pixel_counter1;
  wire row_pixel_counter1_carry__0_i_1_n_0;
  wire row_pixel_counter1_carry__0_i_2_n_0;
  wire row_pixel_counter1_carry__0_i_3_n_0;
  wire row_pixel_counter1_carry__0_i_4_n_0;
  wire row_pixel_counter1_carry__0_i_5_n_0;
  wire row_pixel_counter1_carry__0_n_0;
  wire row_pixel_counter1_carry__0_n_1;
  wire row_pixel_counter1_carry__0_n_2;
  wire row_pixel_counter1_carry__0_n_3;
  wire row_pixel_counter1_carry__1_i_1_n_0;
  wire row_pixel_counter1_carry__1_i_2_n_0;
  wire row_pixel_counter1_carry__1_i_3_n_0;
  wire row_pixel_counter1_carry__1_i_4_n_0;
  wire row_pixel_counter1_carry__1_n_0;
  wire row_pixel_counter1_carry__1_n_1;
  wire row_pixel_counter1_carry__1_n_2;
  wire row_pixel_counter1_carry__1_n_3;
  wire row_pixel_counter1_carry__2_i_1_n_0;
  wire row_pixel_counter1_carry__2_i_2_n_0;
  wire row_pixel_counter1_carry__2_i_3_n_0;
  wire row_pixel_counter1_carry__2_i_4_n_0;
  wire row_pixel_counter1_carry__2_n_1;
  wire row_pixel_counter1_carry__2_n_2;
  wire row_pixel_counter1_carry__2_n_3;
  wire row_pixel_counter1_carry_i_1_n_0;
  wire row_pixel_counter1_carry_i_2_n_0;
  wire row_pixel_counter1_carry_i_3_n_0;
  wire row_pixel_counter1_carry_i_4_n_0;
  wire row_pixel_counter1_carry_i_5_n_0;
  wire row_pixel_counter1_carry_i_6_n_0;
  wire row_pixel_counter1_carry_i_7_n_0;
  wire row_pixel_counter1_carry_i_8_n_0;
  wire row_pixel_counter1_carry_n_0;
  wire row_pixel_counter1_carry_n_1;
  wire row_pixel_counter1_carry_n_2;
  wire row_pixel_counter1_carry_n_3;
  wire \row_pixel_counter[0]_i_2_n_0 ;
  wire \row_pixel_counter[0]_i_3_n_0 ;
  wire \row_pixel_counter[0]_i_4_n_0 ;
  wire \row_pixel_counter[0]_i_5_n_0 ;
  wire \row_pixel_counter[12]_i_2_n_0 ;
  wire \row_pixel_counter[12]_i_3_n_0 ;
  wire \row_pixel_counter[12]_i_4_n_0 ;
  wire \row_pixel_counter[12]_i_5_n_0 ;
  wire \row_pixel_counter[16]_i_2_n_0 ;
  wire \row_pixel_counter[16]_i_3_n_0 ;
  wire \row_pixel_counter[16]_i_4_n_0 ;
  wire \row_pixel_counter[16]_i_5_n_0 ;
  wire \row_pixel_counter[20]_i_2_n_0 ;
  wire \row_pixel_counter[20]_i_3_n_0 ;
  wire \row_pixel_counter[20]_i_4_n_0 ;
  wire \row_pixel_counter[20]_i_5_n_0 ;
  wire \row_pixel_counter[24]_i_2_n_0 ;
  wire \row_pixel_counter[24]_i_3_n_0 ;
  wire \row_pixel_counter[24]_i_4_n_0 ;
  wire \row_pixel_counter[24]_i_5_n_0 ;
  wire \row_pixel_counter[28]_i_2_n_0 ;
  wire \row_pixel_counter[28]_i_3_n_0 ;
  wire \row_pixel_counter[28]_i_4_n_0 ;
  wire \row_pixel_counter[28]_i_5_n_0 ;
  wire \row_pixel_counter[4]_i_2_n_0 ;
  wire \row_pixel_counter[4]_i_3_n_0 ;
  wire \row_pixel_counter[4]_i_4_n_0 ;
  wire \row_pixel_counter[4]_i_5_n_0 ;
  wire \row_pixel_counter[8]_i_2_n_0 ;
  wire \row_pixel_counter[8]_i_3_n_0 ;
  wire \row_pixel_counter[8]_i_4_n_0 ;
  wire \row_pixel_counter[8]_i_5_n_0 ;
  wire [31:0]row_pixel_counter_reg;
  wire \row_pixel_counter_reg[0]_i_1_n_0 ;
  wire \row_pixel_counter_reg[0]_i_1_n_1 ;
  wire \row_pixel_counter_reg[0]_i_1_n_2 ;
  wire \row_pixel_counter_reg[0]_i_1_n_3 ;
  wire \row_pixel_counter_reg[0]_i_1_n_4 ;
  wire \row_pixel_counter_reg[0]_i_1_n_5 ;
  wire \row_pixel_counter_reg[0]_i_1_n_6 ;
  wire \row_pixel_counter_reg[0]_i_1_n_7 ;
  wire \row_pixel_counter_reg[12]_i_1_n_0 ;
  wire \row_pixel_counter_reg[12]_i_1_n_1 ;
  wire \row_pixel_counter_reg[12]_i_1_n_2 ;
  wire \row_pixel_counter_reg[12]_i_1_n_3 ;
  wire \row_pixel_counter_reg[12]_i_1_n_4 ;
  wire \row_pixel_counter_reg[12]_i_1_n_5 ;
  wire \row_pixel_counter_reg[12]_i_1_n_6 ;
  wire \row_pixel_counter_reg[12]_i_1_n_7 ;
  wire \row_pixel_counter_reg[16]_i_1_n_0 ;
  wire \row_pixel_counter_reg[16]_i_1_n_1 ;
  wire \row_pixel_counter_reg[16]_i_1_n_2 ;
  wire \row_pixel_counter_reg[16]_i_1_n_3 ;
  wire \row_pixel_counter_reg[16]_i_1_n_4 ;
  wire \row_pixel_counter_reg[16]_i_1_n_5 ;
  wire \row_pixel_counter_reg[16]_i_1_n_6 ;
  wire \row_pixel_counter_reg[16]_i_1_n_7 ;
  wire \row_pixel_counter_reg[20]_i_1_n_0 ;
  wire \row_pixel_counter_reg[20]_i_1_n_1 ;
  wire \row_pixel_counter_reg[20]_i_1_n_2 ;
  wire \row_pixel_counter_reg[20]_i_1_n_3 ;
  wire \row_pixel_counter_reg[20]_i_1_n_4 ;
  wire \row_pixel_counter_reg[20]_i_1_n_5 ;
  wire \row_pixel_counter_reg[20]_i_1_n_6 ;
  wire \row_pixel_counter_reg[20]_i_1_n_7 ;
  wire \row_pixel_counter_reg[24]_i_1_n_0 ;
  wire \row_pixel_counter_reg[24]_i_1_n_1 ;
  wire \row_pixel_counter_reg[24]_i_1_n_2 ;
  wire \row_pixel_counter_reg[24]_i_1_n_3 ;
  wire \row_pixel_counter_reg[24]_i_1_n_4 ;
  wire \row_pixel_counter_reg[24]_i_1_n_5 ;
  wire \row_pixel_counter_reg[24]_i_1_n_6 ;
  wire \row_pixel_counter_reg[24]_i_1_n_7 ;
  wire \row_pixel_counter_reg[28]_i_1_n_1 ;
  wire \row_pixel_counter_reg[28]_i_1_n_2 ;
  wire \row_pixel_counter_reg[28]_i_1_n_3 ;
  wire \row_pixel_counter_reg[28]_i_1_n_4 ;
  wire \row_pixel_counter_reg[28]_i_1_n_5 ;
  wire \row_pixel_counter_reg[28]_i_1_n_6 ;
  wire \row_pixel_counter_reg[28]_i_1_n_7 ;
  wire \row_pixel_counter_reg[4]_i_1_n_0 ;
  wire \row_pixel_counter_reg[4]_i_1_n_1 ;
  wire \row_pixel_counter_reg[4]_i_1_n_2 ;
  wire \row_pixel_counter_reg[4]_i_1_n_3 ;
  wire \row_pixel_counter_reg[4]_i_1_n_4 ;
  wire \row_pixel_counter_reg[4]_i_1_n_5 ;
  wire \row_pixel_counter_reg[4]_i_1_n_6 ;
  wire \row_pixel_counter_reg[4]_i_1_n_7 ;
  wire \row_pixel_counter_reg[8]_i_1_n_0 ;
  wire \row_pixel_counter_reg[8]_i_1_n_1 ;
  wire \row_pixel_counter_reg[8]_i_1_n_2 ;
  wire \row_pixel_counter_reg[8]_i_1_n_3 ;
  wire \row_pixel_counter_reg[8]_i_1_n_4 ;
  wire \row_pixel_counter_reg[8]_i_1_n_5 ;
  wire \row_pixel_counter_reg[8]_i_1_n_6 ;
  wire \row_pixel_counter_reg[8]_i_1_n_7 ;
  wire start_display_i_1_n_0;
  wire start_display_reg_0;
  wire start_fill_flag;
  wire start_fill_flag_i_1_n_0;
  wire \start_reg[31]_i_3_n_0 ;
  wire \start_reg_reg_n_0_[10] ;
  wire \start_reg_reg_n_0_[11] ;
  wire \start_reg_reg_n_0_[12] ;
  wire \start_reg_reg_n_0_[13] ;
  wire \start_reg_reg_n_0_[14] ;
  wire \start_reg_reg_n_0_[15] ;
  wire \start_reg_reg_n_0_[16] ;
  wire \start_reg_reg_n_0_[17] ;
  wire \start_reg_reg_n_0_[18] ;
  wire \start_reg_reg_n_0_[19] ;
  wire \start_reg_reg_n_0_[1] ;
  wire \start_reg_reg_n_0_[20] ;
  wire \start_reg_reg_n_0_[21] ;
  wire \start_reg_reg_n_0_[22] ;
  wire \start_reg_reg_n_0_[23] ;
  wire \start_reg_reg_n_0_[24] ;
  wire \start_reg_reg_n_0_[25] ;
  wire \start_reg_reg_n_0_[26] ;
  wire \start_reg_reg_n_0_[27] ;
  wire \start_reg_reg_n_0_[28] ;
  wire \start_reg_reg_n_0_[29] ;
  wire \start_reg_reg_n_0_[2] ;
  wire \start_reg_reg_n_0_[30] ;
  wire \start_reg_reg_n_0_[31] ;
  wire \start_reg_reg_n_0_[3] ;
  wire \start_reg_reg_n_0_[4] ;
  wire \start_reg_reg_n_0_[5] ;
  wire \start_reg_reg_n_0_[6] ;
  wire \start_reg_reg_n_0_[7] ;
  wire \start_reg_reg_n_0_[8] ;
  wire \start_reg_reg_n_0_[9] ;
  wire [31:0]status_reg;
  wire [31:0]\wr_slv_reg1_reg[31] ;
  wire [31:0]\wr_slv_reg2_reg[31] ;
  wire [31:0]\wr_slv_reg3_reg[31] ;
  wire [31:0]\wr_slv_reg4_reg[31] ;
  wire [3:0]NLW_INIT_AXI_TXN3_carry_O_UNCONNECTED;
  wire [3:0]NLW_INIT_AXI_TXN3_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_INIT_AXI_TXN3_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_INIT_AXI_TXN3_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_row_pixel_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_row_pixel_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_row_pixel_counter1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_row_pixel_counter1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_row_pixel_counter_reg[28]_i_1_CO_UNCONNECTED ;

  CARRY4 INIT_AXI_TXN3_carry
       (.CI(1'b0),
        .CO({INIT_AXI_TXN3_carry_n_0,INIT_AXI_TXN3_carry_n_1,INIT_AXI_TXN3_carry_n_2,INIT_AXI_TXN3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_INIT_AXI_TXN3_carry_O_UNCONNECTED[3:0]),
        .S({INIT_AXI_TXN3_carry_i_1_n_0,INIT_AXI_TXN3_carry_i_2_n_0,INIT_AXI_TXN3_carry_i_3_n_0,INIT_AXI_TXN3_carry_i_4_n_0}));
  CARRY4 INIT_AXI_TXN3_carry__0
       (.CI(INIT_AXI_TXN3_carry_n_0),
        .CO({INIT_AXI_TXN3_carry__0_n_0,INIT_AXI_TXN3_carry__0_n_1,INIT_AXI_TXN3_carry__0_n_2,INIT_AXI_TXN3_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_INIT_AXI_TXN3_carry__0_O_UNCONNECTED[3:0]),
        .S({INIT_AXI_TXN3_carry__0_i_1_n_0,INIT_AXI_TXN3_carry__0_i_2_n_0,INIT_AXI_TXN3_carry__0_i_3_n_0,INIT_AXI_TXN3_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry__0_i_1
       (.I0(row_pixel_counter_reg[23]),
        .I1(row_pixel_counter_reg[22]),
        .I2(row_pixel_counter_reg[21]),
        .O(INIT_AXI_TXN3_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry__0_i_2
       (.I0(row_pixel_counter_reg[20]),
        .I1(row_pixel_counter_reg[19]),
        .I2(row_pixel_counter_reg[18]),
        .O(INIT_AXI_TXN3_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry__0_i_3
       (.I0(row_pixel_counter_reg[17]),
        .I1(row_pixel_counter_reg[16]),
        .I2(row_pixel_counter_reg[15]),
        .O(INIT_AXI_TXN3_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry__0_i_4
       (.I0(row_pixel_counter_reg[14]),
        .I1(row_pixel_counter_reg[13]),
        .I2(row_pixel_counter_reg[12]),
        .O(INIT_AXI_TXN3_carry__0_i_4_n_0));
  CARRY4 INIT_AXI_TXN3_carry__1
       (.CI(INIT_AXI_TXN3_carry__0_n_0),
        .CO({NLW_INIT_AXI_TXN3_carry__1_CO_UNCONNECTED[3],INIT_AXI_TXN3_carry__1_n_1,INIT_AXI_TXN3_carry__1_n_2,INIT_AXI_TXN3_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_INIT_AXI_TXN3_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,INIT_AXI_TXN3_carry__1_i_1_n_0,INIT_AXI_TXN3_carry__1_i_2_n_0,INIT_AXI_TXN3_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    INIT_AXI_TXN3_carry__1_i_1
       (.I0(row_pixel_counter_reg[30]),
        .I1(row_pixel_counter_reg[31]),
        .O(INIT_AXI_TXN3_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry__1_i_2
       (.I0(row_pixel_counter_reg[29]),
        .I1(row_pixel_counter_reg[28]),
        .I2(row_pixel_counter_reg[27]),
        .O(INIT_AXI_TXN3_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry__1_i_3
       (.I0(row_pixel_counter_reg[26]),
        .I1(row_pixel_counter_reg[25]),
        .I2(row_pixel_counter_reg[24]),
        .O(INIT_AXI_TXN3_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry_i_1
       (.I0(row_pixel_counter_reg[11]),
        .I1(row_pixel_counter_reg[10]),
        .I2(row_pixel_counter_reg[9]),
        .O(INIT_AXI_TXN3_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry_i_2
       (.I0(row_pixel_counter_reg[8]),
        .I1(row_pixel_counter_reg[7]),
        .I2(row_pixel_counter_reg[6]),
        .O(INIT_AXI_TXN3_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry_i_3
       (.I0(row_pixel_counter_reg[5]),
        .I1(row_pixel_counter_reg[4]),
        .I2(row_pixel_counter_reg[3]),
        .O(INIT_AXI_TXN3_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    INIT_AXI_TXN3_carry_i_4
       (.I0(row_pixel_counter_reg[2]),
        .I1(row_pixel_counter_reg[1]),
        .I2(row_pixel_counter_reg[0]),
        .O(INIT_AXI_TXN3_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hFF08)) 
    INIT_AXI_TXN_i_1
       (.I0(INIT_AXI_TXN3_carry__1_n_1),
        .I1(start_display_reg_0),
        .I2(start_fill_flag),
        .I3(int_rdone),
        .O(INIT_AXI_TXN_i_1_n_0));
  FDCE INIT_AXI_TXN_reg
       (.C(i_axi_master_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(INIT_AXI_TXN_i_1_n_0),
        .Q(INIT_AXI_TXN));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(pixel_counters[0]),
        .I1(image_data_addr_reg[0]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[0]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(Q),
        .O(\axi_rdata_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(pixel_counters[10]),
        .I1(image_data_addr_reg[10]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[10]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[10] ),
        .O(\axi_rdata_reg[10] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(pixel_counters[11]),
        .I1(image_data_addr_reg[11]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[11]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[11] ),
        .O(\axi_rdata_reg[11] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(pixel_counters[12]),
        .I1(image_data_addr_reg[12]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[12]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[12] ),
        .O(\axi_rdata_reg[12] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(pixel_counters[13]),
        .I1(image_data_addr_reg[13]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[13]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[13] ),
        .O(\axi_rdata_reg[13] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(pixel_counters[14]),
        .I1(image_data_addr_reg[14]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[14]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[14] ),
        .O(\axi_rdata_reg[14] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(pixel_counters[15]),
        .I1(image_data_addr_reg[15]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[15]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[15] ),
        .O(\axi_rdata_reg[15] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(pixel_counters[16]),
        .I1(image_data_addr_reg[16]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[16]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[16] ),
        .O(\axi_rdata_reg[16] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(pixel_counters[17]),
        .I1(image_data_addr_reg[17]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[17]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[17] ),
        .O(\axi_rdata_reg[17] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(pixel_counters[18]),
        .I1(image_data_addr_reg[18]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[18]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[18] ),
        .O(\axi_rdata_reg[18] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(pixel_counters[19]),
        .I1(image_data_addr_reg[19]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[19]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[19] ),
        .O(\axi_rdata_reg[19] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(pixel_counters[1]),
        .I1(image_data_addr_reg[1]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[1]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[1] ),
        .O(\axi_rdata_reg[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(pixel_counters[20]),
        .I1(image_data_addr_reg[20]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[20]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[20] ),
        .O(\axi_rdata_reg[20] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(pixel_counters[21]),
        .I1(image_data_addr_reg[21]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[21]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[21] ),
        .O(\axi_rdata_reg[21] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(pixel_counters[22]),
        .I1(image_data_addr_reg[22]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[22]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[22] ),
        .O(\axi_rdata_reg[22] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(pixel_counters[23]),
        .I1(image_data_addr_reg[23]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[23]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[23] ),
        .O(\axi_rdata_reg[23] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(pixel_counters[24]),
        .I1(image_data_addr_reg[24]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[24]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[24] ),
        .O(\axi_rdata_reg[24] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(pixel_counters[25]),
        .I1(image_data_addr_reg[25]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[25]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[25] ),
        .O(\axi_rdata_reg[25] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(pixel_counters[26]),
        .I1(image_data_addr_reg[26]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[26]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[26] ),
        .O(\axi_rdata_reg[26] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(pixel_counters[27]),
        .I1(image_data_addr_reg[27]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[27]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[27] ),
        .O(\axi_rdata_reg[27] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(pixel_counters[28]),
        .I1(image_data_addr_reg[28]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[28]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[28] ),
        .O(\axi_rdata_reg[28] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(pixel_counters[29]),
        .I1(image_data_addr_reg[29]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[29]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[29] ),
        .O(\axi_rdata_reg[29] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(pixel_counters[2]),
        .I1(image_data_addr_reg[2]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[2]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[2] ),
        .O(\axi_rdata_reg[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(pixel_counters[30]),
        .I1(image_data_addr_reg[30]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[30]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[30] ),
        .O(\axi_rdata_reg[30] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(pixel_counters[31]),
        .I1(image_data_addr_reg[31]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[31]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[31] ),
        .O(\axi_rdata_reg[31] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(pixel_counters[3]),
        .I1(image_data_addr_reg[3]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[3]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[3] ),
        .O(\axi_rdata_reg[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(pixel_counters[4]),
        .I1(image_data_addr_reg[4]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[4]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[4] ),
        .O(\axi_rdata_reg[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(pixel_counters[5]),
        .I1(image_data_addr_reg[5]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[5]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[5] ),
        .O(\axi_rdata_reg[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(pixel_counters[6]),
        .I1(image_data_addr_reg[6]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[6]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[6] ),
        .O(\axi_rdata_reg[6] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(pixel_counters[7]),
        .I1(image_data_addr_reg[7]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[7]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[7] ),
        .O(\axi_rdata_reg[7] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(pixel_counters[8]),
        .I1(image_data_addr_reg[8]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[8]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[8] ),
        .O(\axi_rdata_reg[8] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(pixel_counters[9]),
        .I1(image_data_addr_reg[9]),
        .I2(\axi_araddr_reg[3] [1]),
        .I3(status_reg[9]),
        .I4(\axi_araddr_reg[3] [0]),
        .I5(\start_reg_reg_n_0_[9] ),
        .O(\axi_rdata_reg[9] ));
  FDCE \fifo_reg_reg[0] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [0]),
        .Q(\axi_rdata_reg[31]_0 [0]));
  FDCE \fifo_reg_reg[10] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [10]),
        .Q(\axi_rdata_reg[31]_0 [10]));
  FDCE \fifo_reg_reg[11] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [11]),
        .Q(\axi_rdata_reg[31]_0 [11]));
  FDCE \fifo_reg_reg[12] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg4_reg[31] [12]),
        .Q(\axi_rdata_reg[31]_0 [12]));
  FDCE \fifo_reg_reg[13] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [13]),
        .Q(\axi_rdata_reg[31]_0 [13]));
  FDCE \fifo_reg_reg[14] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [14]),
        .Q(\axi_rdata_reg[31]_0 [14]));
  FDCE \fifo_reg_reg[15] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [15]),
        .Q(\axi_rdata_reg[31]_0 [15]));
  FDCE \fifo_reg_reg[16] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [16]),
        .Q(\axi_rdata_reg[31]_0 [16]));
  FDCE \fifo_reg_reg[17] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [17]),
        .Q(\axi_rdata_reg[31]_0 [17]));
  FDCE \fifo_reg_reg[18] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [18]),
        .Q(\axi_rdata_reg[31]_0 [18]));
  FDCE \fifo_reg_reg[19] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [19]),
        .Q(\axi_rdata_reg[31]_0 [19]));
  FDCE \fifo_reg_reg[1] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [1]),
        .Q(\axi_rdata_reg[31]_0 [1]));
  FDCE \fifo_reg_reg[20] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg4_reg[31] [20]),
        .Q(\axi_rdata_reg[31]_0 [20]));
  FDCE \fifo_reg_reg[21] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [21]),
        .Q(\axi_rdata_reg[31]_0 [21]));
  FDCE \fifo_reg_reg[22] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [22]),
        .Q(\axi_rdata_reg[31]_0 [22]));
  FDCE \fifo_reg_reg[23] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [23]),
        .Q(\axi_rdata_reg[31]_0 [23]));
  FDCE \fifo_reg_reg[24] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [24]),
        .Q(\axi_rdata_reg[31]_0 [24]));
  FDCE \fifo_reg_reg[25] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [25]),
        .Q(\axi_rdata_reg[31]_0 [25]));
  FDCE \fifo_reg_reg[26] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [26]),
        .Q(\axi_rdata_reg[31]_0 [26]));
  FDCE \fifo_reg_reg[27] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [27]),
        .Q(\axi_rdata_reg[31]_0 [27]));
  FDCE \fifo_reg_reg[28] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [28]),
        .Q(\axi_rdata_reg[31]_0 [28]));
  FDCE \fifo_reg_reg[29] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [29]),
        .Q(\axi_rdata_reg[31]_0 [29]));
  FDCE \fifo_reg_reg[2] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [2]),
        .Q(\axi_rdata_reg[31]_0 [2]));
  FDCE \fifo_reg_reg[30] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [30]),
        .Q(\axi_rdata_reg[31]_0 [30]));
  FDCE \fifo_reg_reg[31] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [31]),
        .Q(\axi_rdata_reg[31]_0 [31]));
  FDCE \fifo_reg_reg[3] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [3]),
        .Q(\axi_rdata_reg[31]_0 [3]));
  FDCE \fifo_reg_reg[4] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [4]),
        .Q(\axi_rdata_reg[31]_0 [4]));
  FDCE \fifo_reg_reg[5] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [5]),
        .Q(\axi_rdata_reg[31]_0 [5]));
  FDCE \fifo_reg_reg[6] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [6]),
        .Q(\axi_rdata_reg[31]_0 [6]));
  FDCE \fifo_reg_reg[7] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [7]),
        .Q(\axi_rdata_reg[31]_0 [7]));
  FDCE \fifo_reg_reg[8] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg4_reg[31] [8]),
        .Q(\axi_rdata_reg[31]_0 [8]));
  FDCE \fifo_reg_reg[9] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [4]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg4_reg[31] [9]),
        .Q(\axi_rdata_reg[31]_0 [9]));
  LUT1 #(
    .INIT(2'h1)) 
    h_sync_i_2
       (.I0(i_reset_n),
        .O(INIT_AXI_TXN_reg_0));
  FDCE \image_data_addr_reg_reg[0] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [0]),
        .Q(image_data_addr_reg[0]));
  FDCE \image_data_addr_reg_reg[10] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [10]),
        .Q(image_data_addr_reg[10]));
  FDCE \image_data_addr_reg_reg[11] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [11]),
        .Q(image_data_addr_reg[11]));
  FDCE \image_data_addr_reg_reg[12] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [12]),
        .Q(image_data_addr_reg[12]));
  FDCE \image_data_addr_reg_reg[13] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [13]),
        .Q(image_data_addr_reg[13]));
  FDCE \image_data_addr_reg_reg[14] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [14]),
        .Q(image_data_addr_reg[14]));
  FDCE \image_data_addr_reg_reg[15] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [15]),
        .Q(image_data_addr_reg[15]));
  FDCE \image_data_addr_reg_reg[16] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [16]),
        .Q(image_data_addr_reg[16]));
  FDCE \image_data_addr_reg_reg[17] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [17]),
        .Q(image_data_addr_reg[17]));
  FDCE \image_data_addr_reg_reg[18] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [18]),
        .Q(image_data_addr_reg[18]));
  FDCE \image_data_addr_reg_reg[19] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [19]),
        .Q(image_data_addr_reg[19]));
  FDCE \image_data_addr_reg_reg[1] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [1]),
        .Q(image_data_addr_reg[1]));
  FDCE \image_data_addr_reg_reg[20] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [20]),
        .Q(image_data_addr_reg[20]));
  FDCE \image_data_addr_reg_reg[21] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [21]),
        .Q(image_data_addr_reg[21]));
  FDCE \image_data_addr_reg_reg[22] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [22]),
        .Q(image_data_addr_reg[22]));
  FDCE \image_data_addr_reg_reg[23] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [23]),
        .Q(image_data_addr_reg[23]));
  FDCE \image_data_addr_reg_reg[24] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [24]),
        .Q(image_data_addr_reg[24]));
  FDCE \image_data_addr_reg_reg[25] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [25]),
        .Q(image_data_addr_reg[25]));
  FDCE \image_data_addr_reg_reg[26] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [26]),
        .Q(image_data_addr_reg[26]));
  FDCE \image_data_addr_reg_reg[27] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [27]),
        .Q(image_data_addr_reg[27]));
  FDCE \image_data_addr_reg_reg[28] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [28]),
        .Q(image_data_addr_reg[28]));
  FDCE \image_data_addr_reg_reg[29] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [29]),
        .Q(image_data_addr_reg[29]));
  FDCE \image_data_addr_reg_reg[2] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [2]),
        .Q(image_data_addr_reg[2]));
  FDCE \image_data_addr_reg_reg[30] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [30]),
        .Q(image_data_addr_reg[30]));
  FDCE \image_data_addr_reg_reg[31] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg2_reg[31] [31]),
        .Q(image_data_addr_reg[31]));
  FDCE \image_data_addr_reg_reg[3] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [3]),
        .Q(image_data_addr_reg[3]));
  FDCE \image_data_addr_reg_reg[4] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [4]),
        .Q(image_data_addr_reg[4]));
  FDCE \image_data_addr_reg_reg[5] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [5]),
        .Q(image_data_addr_reg[5]));
  FDCE \image_data_addr_reg_reg[6] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [6]),
        .Q(image_data_addr_reg[6]));
  FDCE \image_data_addr_reg_reg[7] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [7]),
        .Q(image_data_addr_reg[7]));
  FDCE \image_data_addr_reg_reg[8] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [8]),
        .Q(image_data_addr_reg[8]));
  FDCE \image_data_addr_reg_reg[9] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [2]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg2_reg[31] [9]),
        .Q(image_data_addr_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[0]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [0]),
        .I1(\pixel_y_reg[9] [0]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[16]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [16]),
        .I1(\pixel_x_reg[9] [0]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[17]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [17]),
        .I1(\pixel_x_reg[9] [1]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[18]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [18]),
        .I1(\pixel_x_reg[9] [2]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[19]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [19]),
        .I1(\pixel_x_reg[9] [3]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[1]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [1]),
        .I1(\pixel_y_reg[9] [1]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[20]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [20]),
        .I1(\pixel_x_reg[9] [4]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[21]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [21]),
        .I1(\pixel_x_reg[9] [5]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[22]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [22]),
        .I1(\pixel_x_reg[9] [6]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[23]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [23]),
        .I1(\pixel_x_reg[9] [7]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[24]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [24]),
        .I1(\pixel_x_reg[9] [8]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[25]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [25]),
        .I1(\pixel_x_reg[9] [9]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[2]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [2]),
        .I1(\pixel_y_reg[9] [2]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[3]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [3]),
        .I1(\pixel_y_reg[9] [3]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[4]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [4]),
        .I1(\pixel_y_reg[9] [4]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[5]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [5]),
        .I1(\pixel_y_reg[9] [5]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[6]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [6]),
        .I1(\pixel_y_reg[9] [6]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[7]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [7]),
        .I1(\pixel_y_reg[9] [7]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[8]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [8]),
        .I1(\pixel_y_reg[9] [8]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \pixel_counters[9]_i_1 
       (.I0(\wr_slv_reg3_reg[31] [9]),
        .I1(\pixel_y_reg[9] [9]),
        .I2(\int_slv_reg_wren_reg[4] [3]),
        .O(\pixel_counters[9]_i_1_n_0 ));
  FDCE \pixel_counters_reg[0] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[0]_i_1_n_0 ),
        .Q(pixel_counters[0]));
  FDCE \pixel_counters_reg[10] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [10]),
        .Q(pixel_counters[10]));
  FDCE \pixel_counters_reg[11] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [11]),
        .Q(pixel_counters[11]));
  FDCE \pixel_counters_reg[12] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg3_reg[31] [12]),
        .Q(pixel_counters[12]));
  FDCE \pixel_counters_reg[13] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [13]),
        .Q(pixel_counters[13]));
  FDCE \pixel_counters_reg[14] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [14]),
        .Q(pixel_counters[14]));
  FDCE \pixel_counters_reg[15] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [15]),
        .Q(pixel_counters[15]));
  FDCE \pixel_counters_reg[16] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[16]_i_1_n_0 ),
        .Q(pixel_counters[16]));
  FDCE \pixel_counters_reg[17] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[17]_i_1_n_0 ),
        .Q(pixel_counters[17]));
  FDCE \pixel_counters_reg[18] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[18]_i_1_n_0 ),
        .Q(pixel_counters[18]));
  FDCE \pixel_counters_reg[19] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[19]_i_1_n_0 ),
        .Q(pixel_counters[19]));
  FDCE \pixel_counters_reg[1] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[1]_i_1_n_0 ),
        .Q(pixel_counters[1]));
  FDCE \pixel_counters_reg[20] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[20]_i_1_n_0 ),
        .Q(pixel_counters[20]));
  FDCE \pixel_counters_reg[21] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[21]_i_1_n_0 ),
        .Q(pixel_counters[21]));
  FDCE \pixel_counters_reg[22] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[22]_i_1_n_0 ),
        .Q(pixel_counters[22]));
  FDCE \pixel_counters_reg[23] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[23]_i_1_n_0 ),
        .Q(pixel_counters[23]));
  FDCE \pixel_counters_reg[24] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[24]_i_1_n_0 ),
        .Q(pixel_counters[24]));
  FDCE \pixel_counters_reg[25] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[25]_i_1_n_0 ),
        .Q(pixel_counters[25]));
  FDCE \pixel_counters_reg[26] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [26]),
        .Q(pixel_counters[26]));
  FDCE \pixel_counters_reg[27] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [27]),
        .Q(pixel_counters[27]));
  FDCE \pixel_counters_reg[28] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [28]),
        .Q(pixel_counters[28]));
  FDCE \pixel_counters_reg[29] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [29]),
        .Q(pixel_counters[29]));
  FDCE \pixel_counters_reg[2] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[2]_i_1_n_0 ),
        .Q(pixel_counters[2]));
  FDCE \pixel_counters_reg[30] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [30]),
        .Q(pixel_counters[30]));
  FDCE \pixel_counters_reg[31] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [3]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg3_reg[31] [31]),
        .Q(pixel_counters[31]));
  FDCE \pixel_counters_reg[3] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[3]_i_1_n_0 ),
        .Q(pixel_counters[3]));
  FDCE \pixel_counters_reg[4] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[4]_i_1_n_0 ),
        .Q(pixel_counters[4]));
  FDCE \pixel_counters_reg[5] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[5]_i_1_n_0 ),
        .Q(pixel_counters[5]));
  FDCE \pixel_counters_reg[6] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[6]_i_1_n_0 ),
        .Q(pixel_counters[6]));
  FDCE \pixel_counters_reg[7] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[7]_i_1_n_0 ),
        .Q(pixel_counters[7]));
  FDCE \pixel_counters_reg[8] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[8]_i_1_n_0 ),
        .Q(pixel_counters[8]));
  FDCE \pixel_counters_reg[9] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\pixel_counters[9]_i_1_n_0 ),
        .Q(pixel_counters[9]));
  CARRY4 row_pixel_counter1_carry
       (.CI(1'b0),
        .CO({row_pixel_counter1_carry_n_0,row_pixel_counter1_carry_n_1,row_pixel_counter1_carry_n_2,row_pixel_counter1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({row_pixel_counter1_carry_i_1_n_0,row_pixel_counter1_carry_i_2_n_0,row_pixel_counter1_carry_i_3_n_0,row_pixel_counter1_carry_i_4_n_0}),
        .O(NLW_row_pixel_counter1_carry_O_UNCONNECTED[3:0]),
        .S({row_pixel_counter1_carry_i_5_n_0,row_pixel_counter1_carry_i_6_n_0,row_pixel_counter1_carry_i_7_n_0,row_pixel_counter1_carry_i_8_n_0}));
  CARRY4 row_pixel_counter1_carry__0
       (.CI(row_pixel_counter1_carry_n_0),
        .CO({row_pixel_counter1_carry__0_n_0,row_pixel_counter1_carry__0_n_1,row_pixel_counter1_carry__0_n_2,row_pixel_counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,row_pixel_counter1_carry__0_i_1_n_0}),
        .O(NLW_row_pixel_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({row_pixel_counter1_carry__0_i_2_n_0,row_pixel_counter1_carry__0_i_3_n_0,row_pixel_counter1_carry__0_i_4_n_0,row_pixel_counter1_carry__0_i_5_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    row_pixel_counter1_carry__0_i_1
       (.I0(row_pixel_counter_reg[9]),
        .O(row_pixel_counter1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__0_i_2
       (.I0(row_pixel_counter_reg[14]),
        .I1(row_pixel_counter_reg[15]),
        .O(row_pixel_counter1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__0_i_3
       (.I0(row_pixel_counter_reg[12]),
        .I1(row_pixel_counter_reg[13]),
        .O(row_pixel_counter1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__0_i_4
       (.I0(row_pixel_counter_reg[10]),
        .I1(row_pixel_counter_reg[11]),
        .O(row_pixel_counter1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    row_pixel_counter1_carry__0_i_5
       (.I0(row_pixel_counter_reg[9]),
        .I1(row_pixel_counter_reg[8]),
        .O(row_pixel_counter1_carry__0_i_5_n_0));
  CARRY4 row_pixel_counter1_carry__1
       (.CI(row_pixel_counter1_carry__0_n_0),
        .CO({row_pixel_counter1_carry__1_n_0,row_pixel_counter1_carry__1_n_1,row_pixel_counter1_carry__1_n_2,row_pixel_counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_row_pixel_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({row_pixel_counter1_carry__1_i_1_n_0,row_pixel_counter1_carry__1_i_2_n_0,row_pixel_counter1_carry__1_i_3_n_0,row_pixel_counter1_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__1_i_1
       (.I0(row_pixel_counter_reg[22]),
        .I1(row_pixel_counter_reg[23]),
        .O(row_pixel_counter1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__1_i_2
       (.I0(row_pixel_counter_reg[20]),
        .I1(row_pixel_counter_reg[21]),
        .O(row_pixel_counter1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__1_i_3
       (.I0(row_pixel_counter_reg[18]),
        .I1(row_pixel_counter_reg[19]),
        .O(row_pixel_counter1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__1_i_4
       (.I0(row_pixel_counter_reg[16]),
        .I1(row_pixel_counter_reg[17]),
        .O(row_pixel_counter1_carry__1_i_4_n_0));
  CARRY4 row_pixel_counter1_carry__2
       (.CI(row_pixel_counter1_carry__1_n_0),
        .CO({row_pixel_counter1,row_pixel_counter1_carry__2_n_1,row_pixel_counter1_carry__2_n_2,row_pixel_counter1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({row_pixel_counter_reg[31],1'b0,1'b0,1'b0}),
        .O(NLW_row_pixel_counter1_carry__2_O_UNCONNECTED[3:0]),
        .S({row_pixel_counter1_carry__2_i_1_n_0,row_pixel_counter1_carry__2_i_2_n_0,row_pixel_counter1_carry__2_i_3_n_0,row_pixel_counter1_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__2_i_1
       (.I0(row_pixel_counter_reg[30]),
        .I1(row_pixel_counter_reg[31]),
        .O(row_pixel_counter1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__2_i_2
       (.I0(row_pixel_counter_reg[28]),
        .I1(row_pixel_counter_reg[29]),
        .O(row_pixel_counter1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__2_i_3
       (.I0(row_pixel_counter_reg[26]),
        .I1(row_pixel_counter_reg[27]),
        .O(row_pixel_counter1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry__2_i_4
       (.I0(row_pixel_counter_reg[24]),
        .I1(row_pixel_counter_reg[25]),
        .O(row_pixel_counter1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    row_pixel_counter1_carry_i_1
       (.I0(row_pixel_counter_reg[6]),
        .I1(row_pixel_counter_reg[7]),
        .O(row_pixel_counter1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    row_pixel_counter1_carry_i_2
       (.I0(row_pixel_counter_reg[4]),
        .I1(row_pixel_counter_reg[5]),
        .O(row_pixel_counter1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    row_pixel_counter1_carry_i_3
       (.I0(row_pixel_counter_reg[2]),
        .I1(row_pixel_counter_reg[3]),
        .O(row_pixel_counter1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    row_pixel_counter1_carry_i_4
       (.I0(row_pixel_counter_reg[0]),
        .I1(row_pixel_counter_reg[1]),
        .O(row_pixel_counter1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    row_pixel_counter1_carry_i_5
       (.I0(row_pixel_counter_reg[6]),
        .I1(row_pixel_counter_reg[7]),
        .O(row_pixel_counter1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    row_pixel_counter1_carry_i_6
       (.I0(row_pixel_counter_reg[4]),
        .I1(row_pixel_counter_reg[5]),
        .O(row_pixel_counter1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    row_pixel_counter1_carry_i_7
       (.I0(row_pixel_counter_reg[2]),
        .I1(row_pixel_counter_reg[3]),
        .O(row_pixel_counter1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    row_pixel_counter1_carry_i_8
       (.I0(row_pixel_counter_reg[0]),
        .I1(row_pixel_counter_reg[1]),
        .O(row_pixel_counter1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[0]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[3]),
        .O(\row_pixel_counter[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[0]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[2]),
        .O(\row_pixel_counter[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[0]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[1]),
        .O(\row_pixel_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \row_pixel_counter[0]_i_5 
       (.I0(row_pixel_counter_reg[0]),
        .I1(row_pixel_counter1),
        .O(\row_pixel_counter[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[12]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[15]),
        .O(\row_pixel_counter[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[12]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[14]),
        .O(\row_pixel_counter[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[12]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[13]),
        .O(\row_pixel_counter[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[12]_i_5 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[12]),
        .O(\row_pixel_counter[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[16]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[19]),
        .O(\row_pixel_counter[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[16]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[18]),
        .O(\row_pixel_counter[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[16]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[17]),
        .O(\row_pixel_counter[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[16]_i_5 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[16]),
        .O(\row_pixel_counter[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[20]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[23]),
        .O(\row_pixel_counter[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[20]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[22]),
        .O(\row_pixel_counter[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[20]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[21]),
        .O(\row_pixel_counter[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[20]_i_5 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[20]),
        .O(\row_pixel_counter[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[24]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[27]),
        .O(\row_pixel_counter[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[24]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[26]),
        .O(\row_pixel_counter[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[24]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[25]),
        .O(\row_pixel_counter[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[24]_i_5 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[24]),
        .O(\row_pixel_counter[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[28]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[31]),
        .O(\row_pixel_counter[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[28]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[30]),
        .O(\row_pixel_counter[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[28]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[29]),
        .O(\row_pixel_counter[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[28]_i_5 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[28]),
        .O(\row_pixel_counter[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[4]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[7]),
        .O(\row_pixel_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[4]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[6]),
        .O(\row_pixel_counter[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[4]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[5]),
        .O(\row_pixel_counter[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[4]_i_5 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[4]),
        .O(\row_pixel_counter[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[8]_i_2 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[11]),
        .O(\row_pixel_counter[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[8]_i_3 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[10]),
        .O(\row_pixel_counter[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[8]_i_4 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[9]),
        .O(\row_pixel_counter[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \row_pixel_counter[8]_i_5 
       (.I0(row_pixel_counter1),
        .I1(row_pixel_counter_reg[8]),
        .O(\row_pixel_counter[8]_i_5_n_0 ));
  FDCE \row_pixel_counter_reg[0] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[0]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[0]));
  CARRY4 \row_pixel_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\row_pixel_counter_reg[0]_i_1_n_0 ,\row_pixel_counter_reg[0]_i_1_n_1 ,\row_pixel_counter_reg[0]_i_1_n_2 ,\row_pixel_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,row_pixel_counter1}),
        .O({\row_pixel_counter_reg[0]_i_1_n_4 ,\row_pixel_counter_reg[0]_i_1_n_5 ,\row_pixel_counter_reg[0]_i_1_n_6 ,\row_pixel_counter_reg[0]_i_1_n_7 }),
        .S({\row_pixel_counter[0]_i_2_n_0 ,\row_pixel_counter[0]_i_3_n_0 ,\row_pixel_counter[0]_i_4_n_0 ,\row_pixel_counter[0]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[10] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[8]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[10]));
  FDCE \row_pixel_counter_reg[11] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[8]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[11]));
  FDCE \row_pixel_counter_reg[12] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[12]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[12]));
  CARRY4 \row_pixel_counter_reg[12]_i_1 
       (.CI(\row_pixel_counter_reg[8]_i_1_n_0 ),
        .CO({\row_pixel_counter_reg[12]_i_1_n_0 ,\row_pixel_counter_reg[12]_i_1_n_1 ,\row_pixel_counter_reg[12]_i_1_n_2 ,\row_pixel_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_pixel_counter_reg[12]_i_1_n_4 ,\row_pixel_counter_reg[12]_i_1_n_5 ,\row_pixel_counter_reg[12]_i_1_n_6 ,\row_pixel_counter_reg[12]_i_1_n_7 }),
        .S({\row_pixel_counter[12]_i_2_n_0 ,\row_pixel_counter[12]_i_3_n_0 ,\row_pixel_counter[12]_i_4_n_0 ,\row_pixel_counter[12]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[13] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[12]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[13]));
  FDCE \row_pixel_counter_reg[14] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[12]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[14]));
  FDCE \row_pixel_counter_reg[15] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[12]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[15]));
  FDCE \row_pixel_counter_reg[16] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[16]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[16]));
  CARRY4 \row_pixel_counter_reg[16]_i_1 
       (.CI(\row_pixel_counter_reg[12]_i_1_n_0 ),
        .CO({\row_pixel_counter_reg[16]_i_1_n_0 ,\row_pixel_counter_reg[16]_i_1_n_1 ,\row_pixel_counter_reg[16]_i_1_n_2 ,\row_pixel_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_pixel_counter_reg[16]_i_1_n_4 ,\row_pixel_counter_reg[16]_i_1_n_5 ,\row_pixel_counter_reg[16]_i_1_n_6 ,\row_pixel_counter_reg[16]_i_1_n_7 }),
        .S({\row_pixel_counter[16]_i_2_n_0 ,\row_pixel_counter[16]_i_3_n_0 ,\row_pixel_counter[16]_i_4_n_0 ,\row_pixel_counter[16]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[17] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[16]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[17]));
  FDCE \row_pixel_counter_reg[18] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[16]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[18]));
  FDCE \row_pixel_counter_reg[19] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[16]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[19]));
  FDCE \row_pixel_counter_reg[1] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[0]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[1]));
  FDCE \row_pixel_counter_reg[20] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[20]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[20]));
  CARRY4 \row_pixel_counter_reg[20]_i_1 
       (.CI(\row_pixel_counter_reg[16]_i_1_n_0 ),
        .CO({\row_pixel_counter_reg[20]_i_1_n_0 ,\row_pixel_counter_reg[20]_i_1_n_1 ,\row_pixel_counter_reg[20]_i_1_n_2 ,\row_pixel_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_pixel_counter_reg[20]_i_1_n_4 ,\row_pixel_counter_reg[20]_i_1_n_5 ,\row_pixel_counter_reg[20]_i_1_n_6 ,\row_pixel_counter_reg[20]_i_1_n_7 }),
        .S({\row_pixel_counter[20]_i_2_n_0 ,\row_pixel_counter[20]_i_3_n_0 ,\row_pixel_counter[20]_i_4_n_0 ,\row_pixel_counter[20]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[21] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[20]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[21]));
  FDCE \row_pixel_counter_reg[22] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[20]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[22]));
  FDCE \row_pixel_counter_reg[23] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[20]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[23]));
  FDCE \row_pixel_counter_reg[24] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[24]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[24]));
  CARRY4 \row_pixel_counter_reg[24]_i_1 
       (.CI(\row_pixel_counter_reg[20]_i_1_n_0 ),
        .CO({\row_pixel_counter_reg[24]_i_1_n_0 ,\row_pixel_counter_reg[24]_i_1_n_1 ,\row_pixel_counter_reg[24]_i_1_n_2 ,\row_pixel_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_pixel_counter_reg[24]_i_1_n_4 ,\row_pixel_counter_reg[24]_i_1_n_5 ,\row_pixel_counter_reg[24]_i_1_n_6 ,\row_pixel_counter_reg[24]_i_1_n_7 }),
        .S({\row_pixel_counter[24]_i_2_n_0 ,\row_pixel_counter[24]_i_3_n_0 ,\row_pixel_counter[24]_i_4_n_0 ,\row_pixel_counter[24]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[25] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[24]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[25]));
  FDCE \row_pixel_counter_reg[26] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[24]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[26]));
  FDCE \row_pixel_counter_reg[27] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[24]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[27]));
  FDCE \row_pixel_counter_reg[28] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[28]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[28]));
  CARRY4 \row_pixel_counter_reg[28]_i_1 
       (.CI(\row_pixel_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_row_pixel_counter_reg[28]_i_1_CO_UNCONNECTED [3],\row_pixel_counter_reg[28]_i_1_n_1 ,\row_pixel_counter_reg[28]_i_1_n_2 ,\row_pixel_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_pixel_counter_reg[28]_i_1_n_4 ,\row_pixel_counter_reg[28]_i_1_n_5 ,\row_pixel_counter_reg[28]_i_1_n_6 ,\row_pixel_counter_reg[28]_i_1_n_7 }),
        .S({\row_pixel_counter[28]_i_2_n_0 ,\row_pixel_counter[28]_i_3_n_0 ,\row_pixel_counter[28]_i_4_n_0 ,\row_pixel_counter[28]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[29] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[28]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[29]));
  FDCE \row_pixel_counter_reg[2] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[0]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[2]));
  FDCE \row_pixel_counter_reg[30] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[28]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[30]));
  FDCE \row_pixel_counter_reg[31] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[28]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[31]));
  FDCE \row_pixel_counter_reg[3] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[0]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[3]));
  FDCE \row_pixel_counter_reg[4] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[4]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[4]));
  CARRY4 \row_pixel_counter_reg[4]_i_1 
       (.CI(\row_pixel_counter_reg[0]_i_1_n_0 ),
        .CO({\row_pixel_counter_reg[4]_i_1_n_0 ,\row_pixel_counter_reg[4]_i_1_n_1 ,\row_pixel_counter_reg[4]_i_1_n_2 ,\row_pixel_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_pixel_counter_reg[4]_i_1_n_4 ,\row_pixel_counter_reg[4]_i_1_n_5 ,\row_pixel_counter_reg[4]_i_1_n_6 ,\row_pixel_counter_reg[4]_i_1_n_7 }),
        .S({\row_pixel_counter[4]_i_2_n_0 ,\row_pixel_counter[4]_i_3_n_0 ,\row_pixel_counter[4]_i_4_n_0 ,\row_pixel_counter[4]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[5] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[4]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[5]));
  FDCE \row_pixel_counter_reg[6] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[4]_i_1_n_5 ),
        .Q(row_pixel_counter_reg[6]));
  FDCE \row_pixel_counter_reg[7] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[4]_i_1_n_4 ),
        .Q(row_pixel_counter_reg[7]));
  FDCE \row_pixel_counter_reg[8] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[8]_i_1_n_7 ),
        .Q(row_pixel_counter_reg[8]));
  CARRY4 \row_pixel_counter_reg[8]_i_1 
       (.CI(\row_pixel_counter_reg[4]_i_1_n_0 ),
        .CO({\row_pixel_counter_reg[8]_i_1_n_0 ,\row_pixel_counter_reg[8]_i_1_n_1 ,\row_pixel_counter_reg[8]_i_1_n_2 ,\row_pixel_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\row_pixel_counter_reg[8]_i_1_n_4 ,\row_pixel_counter_reg[8]_i_1_n_5 ,\row_pixel_counter_reg[8]_i_1_n_6 ,\row_pixel_counter_reg[8]_i_1_n_7 }),
        .S({\row_pixel_counter[8]_i_2_n_0 ,\row_pixel_counter[8]_i_3_n_0 ,\row_pixel_counter[8]_i_4_n_0 ,\row_pixel_counter[8]_i_5_n_0 }));
  FDCE \row_pixel_counter_reg[9] 
       (.C(i_axi_master_clk),
        .CE(int_read_next),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\row_pixel_counter_reg[8]_i_1_n_6 ),
        .Q(row_pixel_counter_reg[9]));
  LUT4 #(
    .INIT(16'hFF54)) 
    start_display_i_1
       (.I0(\int_slv_reg_wren_reg[4] [0]),
        .I1(Q),
        .I2(i_start_display_irq),
        .I3(start_display_reg_0),
        .O(start_display_i_1_n_0));
  FDCE start_display_reg
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(start_display_i_1_n_0),
        .Q(start_display_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    start_fill_flag_i_1
       (.I0(INIT_AXI_TXN3_carry__1_n_1),
        .I1(start_display_reg_0),
        .I2(start_fill_flag),
        .O(start_fill_flag_i_1_n_0));
  FDCE start_fill_flag_reg
       (.C(i_axi_master_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(start_fill_flag_i_1_n_0),
        .Q(start_fill_flag));
  LUT1 #(
    .INIT(2'h1)) 
    \start_reg[31]_i_3 
       (.I0(i_reset_n),
        .O(\start_reg[31]_i_3_n_0 ));
  FDCE \start_reg_reg[0] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[0]),
        .Q(Q));
  FDCE \start_reg_reg[10] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[10]),
        .Q(\start_reg_reg_n_0_[10] ));
  FDCE \start_reg_reg[11] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[11]),
        .Q(\start_reg_reg_n_0_[11] ));
  FDCE \start_reg_reg[12] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[12]),
        .Q(\start_reg_reg_n_0_[12] ));
  FDCE \start_reg_reg[13] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[13]),
        .Q(\start_reg_reg_n_0_[13] ));
  FDCE \start_reg_reg[14] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[14]),
        .Q(\start_reg_reg_n_0_[14] ));
  FDCE \start_reg_reg[15] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[15]),
        .Q(\start_reg_reg_n_0_[15] ));
  FDCE \start_reg_reg[16] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[16]),
        .Q(\start_reg_reg_n_0_[16] ));
  FDCE \start_reg_reg[17] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[17]),
        .Q(\start_reg_reg_n_0_[17] ));
  FDCE \start_reg_reg[18] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[18]),
        .Q(\start_reg_reg_n_0_[18] ));
  FDCE \start_reg_reg[19] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[19]),
        .Q(\start_reg_reg_n_0_[19] ));
  FDCE \start_reg_reg[1] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[1]),
        .Q(\start_reg_reg_n_0_[1] ));
  FDCE \start_reg_reg[20] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[20]),
        .Q(\start_reg_reg_n_0_[20] ));
  FDCE \start_reg_reg[21] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[21]),
        .Q(\start_reg_reg_n_0_[21] ));
  FDCE \start_reg_reg[22] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[22]),
        .Q(\start_reg_reg_n_0_[22] ));
  FDCE \start_reg_reg[23] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[23]),
        .Q(\start_reg_reg_n_0_[23] ));
  FDCE \start_reg_reg[24] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[24]),
        .Q(\start_reg_reg_n_0_[24] ));
  FDCE \start_reg_reg[25] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[25]),
        .Q(\start_reg_reg_n_0_[25] ));
  FDCE \start_reg_reg[26] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[26]),
        .Q(\start_reg_reg_n_0_[26] ));
  FDCE \start_reg_reg[27] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[27]),
        .Q(\start_reg_reg_n_0_[27] ));
  FDCE \start_reg_reg[28] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[28]),
        .Q(\start_reg_reg_n_0_[28] ));
  FDCE \start_reg_reg[29] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[29]),
        .Q(\start_reg_reg_n_0_[29] ));
  FDCE \start_reg_reg[2] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[2]),
        .Q(\start_reg_reg_n_0_[2] ));
  FDCE \start_reg_reg[30] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[30]),
        .Q(\start_reg_reg_n_0_[30] ));
  FDCE \start_reg_reg[31] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(D[31]),
        .Q(\start_reg_reg_n_0_[31] ));
  FDCE \start_reg_reg[3] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[3]),
        .Q(\start_reg_reg_n_0_[3] ));
  FDCE \start_reg_reg[4] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[4]),
        .Q(\start_reg_reg_n_0_[4] ));
  FDCE \start_reg_reg[5] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[5]),
        .Q(\start_reg_reg_n_0_[5] ));
  FDCE \start_reg_reg[6] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[6]),
        .Q(\start_reg_reg_n_0_[6] ));
  FDCE \start_reg_reg[7] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[7]),
        .Q(\start_reg_reg_n_0_[7] ));
  FDCE \start_reg_reg[8] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[8]),
        .Q(\start_reg_reg_n_0_[8] ));
  FDCE \start_reg_reg[9] 
       (.C(i_axi_slave_clk),
        .CE(E),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(D[9]),
        .Q(\start_reg_reg_n_0_[9] ));
  FDCE \status_reg_reg[0] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [0]),
        .Q(status_reg[0]));
  FDCE \status_reg_reg[10] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [10]),
        .Q(status_reg[10]));
  FDCE \status_reg_reg[11] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [11]),
        .Q(status_reg[11]));
  FDCE \status_reg_reg[12] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [12]),
        .Q(status_reg[12]));
  FDCE \status_reg_reg[13] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [13]),
        .Q(status_reg[13]));
  FDCE \status_reg_reg[14] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [14]),
        .Q(status_reg[14]));
  FDCE \status_reg_reg[15] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [15]),
        .Q(status_reg[15]));
  FDCE \status_reg_reg[16] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [16]),
        .Q(status_reg[16]));
  FDCE \status_reg_reg[17] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [17]),
        .Q(status_reg[17]));
  FDCE \status_reg_reg[18] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [18]),
        .Q(status_reg[18]));
  FDCE \status_reg_reg[19] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [19]),
        .Q(status_reg[19]));
  FDCE \status_reg_reg[1] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [1]),
        .Q(status_reg[1]));
  FDCE \status_reg_reg[20] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [20]),
        .Q(status_reg[20]));
  FDCE \status_reg_reg[21] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [21]),
        .Q(status_reg[21]));
  FDCE \status_reg_reg[22] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [22]),
        .Q(status_reg[22]));
  FDCE \status_reg_reg[23] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [23]),
        .Q(status_reg[23]));
  FDCE \status_reg_reg[24] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [24]),
        .Q(status_reg[24]));
  FDCE \status_reg_reg[25] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [25]),
        .Q(status_reg[25]));
  FDCE \status_reg_reg[26] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [26]),
        .Q(status_reg[26]));
  FDCE \status_reg_reg[27] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [27]),
        .Q(status_reg[27]));
  FDCE \status_reg_reg[28] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [28]),
        .Q(status_reg[28]));
  FDCE \status_reg_reg[29] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [29]),
        .Q(status_reg[29]));
  FDCE \status_reg_reg[2] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [2]),
        .Q(status_reg[2]));
  FDCE \status_reg_reg[30] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [30]),
        .Q(status_reg[30]));
  FDCE \status_reg_reg[31] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(\start_reg[31]_i_3_n_0 ),
        .D(\wr_slv_reg1_reg[31] [31]),
        .Q(status_reg[31]));
  FDCE \status_reg_reg[3] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [3]),
        .Q(status_reg[3]));
  FDCE \status_reg_reg[4] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [4]),
        .Q(status_reg[4]));
  FDCE \status_reg_reg[5] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [5]),
        .Q(status_reg[5]));
  FDCE \status_reg_reg[6] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [6]),
        .Q(status_reg[6]));
  FDCE \status_reg_reg[7] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [7]),
        .Q(status_reg[7]));
  FDCE \status_reg_reg[8] 
       (.C(i_axi_slave_clk),
        .CE(1'b1),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [8]),
        .Q(status_reg[8]));
  FDCE \status_reg_reg[9] 
       (.C(i_axi_slave_clk),
        .CE(\int_slv_reg_wren_reg[4] [1]),
        .CLR(INIT_AXI_TXN_reg_0),
        .D(\wr_slv_reg1_reg[31] [9]),
        .Q(status_reg[9]));
endmodule

module final_accelerator_VGA_IF_0_0_vga_if_ip
   (vga_data_out,
    full,
    almost_full,
    valid,
    prog_full,
    read_en_out,
    video_on,
    inbuff_empty,
    inbuff_almost_empty,
    inbuff_prog_empty,
    inbuff_valid,
    INIT_AXI_TXN,
    NET1274,
    o_hsync,
    o_vsync,
    \axi_rdata_reg[0] ,
    Q,
    \axi_rdata_reg[1] ,
    \axi_rdata_reg[2] ,
    \axi_rdata_reg[3] ,
    \axi_rdata_reg[4] ,
    \axi_rdata_reg[5] ,
    \axi_rdata_reg[6] ,
    \axi_rdata_reg[7] ,
    \axi_rdata_reg[8] ,
    \axi_rdata_reg[9] ,
    \axi_rdata_reg[10] ,
    \axi_rdata_reg[11] ,
    \axi_rdata_reg[12] ,
    \axi_rdata_reg[13] ,
    \axi_rdata_reg[14] ,
    \axi_rdata_reg[15] ,
    \axi_rdata_reg[16] ,
    \axi_rdata_reg[17] ,
    \axi_rdata_reg[18] ,
    \axi_rdata_reg[19] ,
    \axi_rdata_reg[20] ,
    \axi_rdata_reg[21] ,
    \axi_rdata_reg[22] ,
    \axi_rdata_reg[23] ,
    \axi_rdata_reg[24] ,
    \axi_rdata_reg[25] ,
    \axi_rdata_reg[26] ,
    \axi_rdata_reg[27] ,
    \axi_rdata_reg[28] ,
    \axi_rdata_reg[29] ,
    \axi_rdata_reg[30] ,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[31]_0 ,
    o_vga_data,
    i_axi_master_clk,
    i_VGA_CLK,
    din,
    int_read_next,
    i_axi_slave_clk,
    int_rdone,
    \axi_araddr_reg[3] ,
    i_reset_n,
    \int_slv_reg_wren_reg[4] ,
    i_start_display_irq,
    E,
    D,
    \wr_slv_reg1_reg[31] ,
    \wr_slv_reg2_reg[31] ,
    \wr_slv_reg3_reg[31] ,
    \wr_slv_reg4_reg[31] );
  output [11:0]vga_data_out;
  output full;
  output almost_full;
  output valid;
  output prog_full;
  output read_en_out;
  output video_on;
  output inbuff_empty;
  output inbuff_almost_empty;
  output inbuff_prog_empty;
  output inbuff_valid;
  output INIT_AXI_TXN;
  output NET1274;
  output o_hsync;
  output o_vsync;
  output \axi_rdata_reg[0] ;
  output [0:0]Q;
  output \axi_rdata_reg[1] ;
  output \axi_rdata_reg[2] ;
  output \axi_rdata_reg[3] ;
  output \axi_rdata_reg[4] ;
  output \axi_rdata_reg[5] ;
  output \axi_rdata_reg[6] ;
  output \axi_rdata_reg[7] ;
  output \axi_rdata_reg[8] ;
  output \axi_rdata_reg[9] ;
  output \axi_rdata_reg[10] ;
  output \axi_rdata_reg[11] ;
  output \axi_rdata_reg[12] ;
  output \axi_rdata_reg[13] ;
  output \axi_rdata_reg[14] ;
  output \axi_rdata_reg[15] ;
  output \axi_rdata_reg[16] ;
  output \axi_rdata_reg[17] ;
  output \axi_rdata_reg[18] ;
  output \axi_rdata_reg[19] ;
  output \axi_rdata_reg[20] ;
  output \axi_rdata_reg[21] ;
  output \axi_rdata_reg[22] ;
  output \axi_rdata_reg[23] ;
  output \axi_rdata_reg[24] ;
  output \axi_rdata_reg[25] ;
  output \axi_rdata_reg[26] ;
  output \axi_rdata_reg[27] ;
  output \axi_rdata_reg[28] ;
  output \axi_rdata_reg[29] ;
  output \axi_rdata_reg[30] ;
  output \axi_rdata_reg[31] ;
  output [31:0]\axi_rdata_reg[31]_0 ;
  output [11:0]o_vga_data;
  input i_axi_master_clk;
  input i_VGA_CLK;
  input [11:0]din;
  input int_read_next;
  input i_axi_slave_clk;
  input int_rdone;
  input [1:0]\axi_araddr_reg[3] ;
  input i_reset_n;
  input [4:0]\int_slv_reg_wren_reg[4] ;
  input i_start_display_irq;
  input [0:0]E;
  input [31:0]D;
  input [31:0]\wr_slv_reg1_reg[31] ;
  input [31:0]\wr_slv_reg2_reg[31] ;
  input [31:0]\wr_slv_reg3_reg[31] ;
  input [31:0]\wr_slv_reg4_reg[31] ;

  wire [9:0]BUS1258;
  wire [9:0]BUS1262;
  wire [9:9]BUS1401;
  wire [31:0]D;
  wire [0:0]E;
  wire INIT_AXI_TXN;
  wire NET1254;
  wire NET1274;
  wire NET1303;
  wire NET1312;
  wire NET182;
  wire [0:0]Q;
  wire VGA_CNTLR_n_1;
  wire almost_full;
  wire [1:0]\axi_araddr_reg[3] ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[10] ;
  wire \axi_rdata_reg[11] ;
  wire \axi_rdata_reg[12] ;
  wire \axi_rdata_reg[13] ;
  wire \axi_rdata_reg[14] ;
  wire \axi_rdata_reg[15] ;
  wire \axi_rdata_reg[16] ;
  wire \axi_rdata_reg[17] ;
  wire \axi_rdata_reg[18] ;
  wire \axi_rdata_reg[19] ;
  wire \axi_rdata_reg[1] ;
  wire \axi_rdata_reg[20] ;
  wire \axi_rdata_reg[21] ;
  wire \axi_rdata_reg[22] ;
  wire \axi_rdata_reg[23] ;
  wire \axi_rdata_reg[24] ;
  wire \axi_rdata_reg[25] ;
  wire \axi_rdata_reg[26] ;
  wire \axi_rdata_reg[27] ;
  wire \axi_rdata_reg[28] ;
  wire \axi_rdata_reg[29] ;
  wire \axi_rdata_reg[2] ;
  wire \axi_rdata_reg[30] ;
  wire \axi_rdata_reg[31] ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire \axi_rdata_reg[3] ;
  wire \axi_rdata_reg[4] ;
  wire \axi_rdata_reg[5] ;
  wire \axi_rdata_reg[6] ;
  wire \axi_rdata_reg[7] ;
  wire \axi_rdata_reg[8] ;
  wire \axi_rdata_reg[9] ;
  wire [11:0]din;
  wire full;
  wire i_VGA_CLK;
  wire i_axi_master_clk;
  wire i_axi_slave_clk;
  wire i_reset_n;
  wire i_start_display_irq;
  wire inbuff_almost_empty;
  wire inbuff_empty;
  wire inbuff_prog_empty;
  wire inbuff_valid;
  wire int_rdone;
  wire int_read_next;
  wire [4:0]\int_slv_reg_wren_reg[4] ;
  wire o_hsync;
  wire [11:0]o_vga_data;
  wire o_vsync;
  wire [9:0]pixel_x;
  wire [9:0]pixel_y;
  wire prog_full;
  wire read_en_out;
  wire valid;
  wire [11:0]vga_data_out;
  wire video_on;
  wire [31:0]\wr_slv_reg1_reg[31] ;
  wire [31:0]\wr_slv_reg2_reg[31] ;
  wire [31:0]\wr_slv_reg3_reg[31] ;
  wire [31:0]\wr_slv_reg4_reg[31] ;

  final_accelerator_VGA_IF_0_0_vga_controller VGA_CNTLR
       (.D(D),
        .E(E),
        .INIT_AXI_TXN(INIT_AXI_TXN),
        .INIT_AXI_TXN_reg_0(VGA_CNTLR_n_1),
        .Q(Q),
        .\axi_araddr_reg[3] (\axi_araddr_reg[3] ),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[10] (\axi_rdata_reg[10] ),
        .\axi_rdata_reg[11] (\axi_rdata_reg[11] ),
        .\axi_rdata_reg[12] (\axi_rdata_reg[12] ),
        .\axi_rdata_reg[13] (\axi_rdata_reg[13] ),
        .\axi_rdata_reg[14] (\axi_rdata_reg[14] ),
        .\axi_rdata_reg[15] (\axi_rdata_reg[15] ),
        .\axi_rdata_reg[16] (\axi_rdata_reg[16] ),
        .\axi_rdata_reg[17] (\axi_rdata_reg[17] ),
        .\axi_rdata_reg[18] (\axi_rdata_reg[18] ),
        .\axi_rdata_reg[19] (\axi_rdata_reg[19] ),
        .\axi_rdata_reg[1] (\axi_rdata_reg[1] ),
        .\axi_rdata_reg[20] (\axi_rdata_reg[20] ),
        .\axi_rdata_reg[21] (\axi_rdata_reg[21] ),
        .\axi_rdata_reg[22] (\axi_rdata_reg[22] ),
        .\axi_rdata_reg[23] (\axi_rdata_reg[23] ),
        .\axi_rdata_reg[24] (\axi_rdata_reg[24] ),
        .\axi_rdata_reg[25] (\axi_rdata_reg[25] ),
        .\axi_rdata_reg[26] (\axi_rdata_reg[26] ),
        .\axi_rdata_reg[27] (\axi_rdata_reg[27] ),
        .\axi_rdata_reg[28] (\axi_rdata_reg[28] ),
        .\axi_rdata_reg[29] (\axi_rdata_reg[29] ),
        .\axi_rdata_reg[2] (\axi_rdata_reg[2] ),
        .\axi_rdata_reg[30] (\axi_rdata_reg[30] ),
        .\axi_rdata_reg[31] (\axi_rdata_reg[31] ),
        .\axi_rdata_reg[31]_0 (\axi_rdata_reg[31]_0 ),
        .\axi_rdata_reg[3] (\axi_rdata_reg[3] ),
        .\axi_rdata_reg[4] (\axi_rdata_reg[4] ),
        .\axi_rdata_reg[5] (\axi_rdata_reg[5] ),
        .\axi_rdata_reg[6] (\axi_rdata_reg[6] ),
        .\axi_rdata_reg[7] (\axi_rdata_reg[7] ),
        .\axi_rdata_reg[8] (\axi_rdata_reg[8] ),
        .\axi_rdata_reg[9] (\axi_rdata_reg[9] ),
        .i_axi_master_clk(i_axi_master_clk),
        .i_axi_slave_clk(i_axi_slave_clk),
        .i_reset_n(i_reset_n),
        .i_start_display_irq(i_start_display_irq),
        .int_rdone(int_rdone),
        .int_read_next(int_read_next),
        .\int_slv_reg_wren_reg[4] (\int_slv_reg_wren_reg[4] ),
        .\pixel_x_reg[9] (pixel_x),
        .\pixel_y_reg[9] (pixel_y),
        .start_display_reg_0(NET1274),
        .\wr_slv_reg1_reg[31] (\wr_slv_reg1_reg[31] ),
        .\wr_slv_reg2_reg[31] (\wr_slv_reg2_reg[31] ),
        .\wr_slv_reg3_reg[31] (\wr_slv_reg3_reg[31] ),
        .\wr_slv_reg4_reg[31] (\wr_slv_reg4_reg[31] ));
  final_accelerator_VGA_IF_0_0_cross_clk_vga VGA_CROSS_CLK
       (.BUS1262(BUS1262),
        .NET1254(NET1254),
        .NET1274(NET1274),
        .Q(pixel_y),
        .almost_empty(NET1312),
        .empty(NET1303),
        .i_VGA_CLK(i_VGA_CLK),
        .i_axi_slave_clk(i_axi_slave_clk),
        .i_reset_n(VGA_CNTLR_n_1),
        .inbuff_almost_empty(inbuff_almost_empty),
        .inbuff_empty(inbuff_empty),
        .inbuff_prog_empty(inbuff_prog_empty),
        .inbuff_valid(inbuff_valid),
        .\pixel_counters_reg[25] (pixel_x),
        .prog_empty(NET182),
        .prog_empty_thresh(BUS1401),
        .read_en_out(read_en_out),
        .\v_count_reg[9] (BUS1258),
        .valid(valid),
        .video_on(video_on));
  final_accelerator_VGA_IF_0_0_vga_sync VGA_IF
       (.BUS1262(BUS1262),
        .NET1254(NET1254),
        .Q(BUS1258),
        .i_VGA_CLK(i_VGA_CLK),
        .i_reset_n(VGA_CNTLR_n_1),
        .o_hsync(o_hsync),
        .o_vga_data(o_vga_data),
        .o_vsync(o_vsync),
        .prog_empty(NET182),
        .read_en_out(read_en_out),
        .valid(valid),
        .vga_data_out(vga_data_out));
  (* CHECK_LICENSE_TYPE = "VGA_FIFO,fifo_generator_v13_1_3,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_1_3,Vivado 2016.4" *) 
  final_accelerator_VGA_IF_0_0_VGA_FIFO VGA_IMAGE_FIFO
       (.almost_empty(NET1312),
        .almost_full(almost_full),
        .din(din),
        .dout(vga_data_out),
        .empty(NET1303),
        .full(full),
        .prog_empty(NET182),
        .prog_empty_thresh({1'b0,BUS1401,1'b0,BUS1401,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b1,1'b1,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(i_VGA_CLK),
        .rd_en(read_en_out),
        .rst(VGA_CNTLR_n_1),
        .valid(valid),
        .wr_clk(i_axi_master_clk),
        .wr_en(int_read_next));
endmodule

module final_accelerator_VGA_IF_0_0_vga_sync
   (read_en_out,
    o_hsync,
    o_vsync,
    BUS1262,
    Q,
    o_vga_data,
    i_VGA_CLK,
    i_reset_n,
    prog_empty,
    NET1254,
    valid,
    vga_data_out);
  output read_en_out;
  output o_hsync;
  output o_vsync;
  output [9:0]BUS1262;
  output [9:0]Q;
  output [11:0]o_vga_data;
  input i_VGA_CLK;
  input i_reset_n;
  input prog_empty;
  input NET1254;
  input valid;
  input [11:0]vga_data_out;

  wire [9:0]BUS1262;
  wire NET1254;
  wire [9:0]Q;
  wire [1:1]current_state;
  wire \current_state[1]_i_1_n_0 ;
  wire \h_count[0]_i_1_n_0 ;
  wire \h_count[1]_i_1_n_0 ;
  wire \h_count[2]_i_1_n_0 ;
  wire \h_count[3]_i_1_n_0 ;
  wire \h_count[4]_i_1_n_0 ;
  wire \h_count[5]_i_1_n_0 ;
  wire \h_count[6]_i_1_n_0 ;
  wire \h_count[7]_i_1_n_0 ;
  wire \h_count[8]_i_1_n_0 ;
  wire \h_count[8]_i_2_n_0 ;
  wire \h_count[9]_i_1_n_0 ;
  wire h_sync_i_1_n_0;
  wire h_sync_i_3_n_0;
  wire i_VGA_CLK;
  wire i_reset_n;
  wire o_hsync;
  wire [11:0]o_vga_data;
  wire o_vsync;
  wire prog_empty;
  wire read_en_out;
  wire \v_count[0]_i_1_n_0 ;
  wire \v_count[0]_i_2_n_0 ;
  wire \v_count[1]_i_1_n_0 ;
  wire \v_count[2]_i_1_n_0 ;
  wire \v_count[3]_i_1_n_0 ;
  wire \v_count[4]_i_1_n_0 ;
  wire \v_count[5]_i_1_n_0 ;
  wire \v_count[6]_i_1_n_0 ;
  wire \v_count[7]_i_1_n_0 ;
  wire \v_count[8]_i_1_n_0 ;
  wire \v_count[9]_i_1_n_0 ;
  wire \v_count[9]_i_2_n_0 ;
  wire \v_count[9]_i_3_n_0 ;
  wire \v_count[9]_i_4_n_0 ;
  wire \v_count[9]_i_5_n_0 ;
  wire \v_count[9]_i_6_n_0 ;
  wire \v_count[9]_i_7_n_0 ;
  wire v_sync_i_1_n_0;
  wire v_sync_i_2_n_0;
  wire valid;
  wire [11:0]vga_data_out;
  wire video_on_i_1_n_0;
  wire video_on_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \current_state[1]_i_1 
       (.I0(current_state),
        .I1(prog_empty),
        .I2(NET1254),
        .O(\current_state[1]_i_1_n_0 ));
  FDCE \current_state_reg[1] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\current_state[1]_i_1_n_0 ),
        .Q(current_state));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_count[0]_i_1 
       (.I0(current_state),
        .I1(BUS1262[0]),
        .O(\h_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \h_count[1]_i_1 
       (.I0(BUS1262[1]),
        .I1(BUS1262[0]),
        .I2(\v_count[9]_i_1_n_0 ),
        .O(\h_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \h_count[2]_i_1 
       (.I0(BUS1262[2]),
        .I1(BUS1262[0]),
        .I2(BUS1262[1]),
        .I3(\v_count[9]_i_1_n_0 ),
        .O(\h_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \h_count[3]_i_1 
       (.I0(BUS1262[3]),
        .I1(BUS1262[1]),
        .I2(BUS1262[0]),
        .I3(BUS1262[2]),
        .I4(\v_count[9]_i_1_n_0 ),
        .O(\h_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \h_count[4]_i_1 
       (.I0(BUS1262[4]),
        .I1(BUS1262[2]),
        .I2(BUS1262[0]),
        .I3(BUS1262[1]),
        .I4(BUS1262[3]),
        .I5(\v_count[9]_i_1_n_0 ),
        .O(\h_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \h_count[5]_i_1 
       (.I0(BUS1262[5]),
        .I1(\h_count[8]_i_2_n_0 ),
        .I2(\v_count[9]_i_1_n_0 ),
        .O(\h_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \h_count[6]_i_1 
       (.I0(BUS1262[6]),
        .I1(BUS1262[5]),
        .I2(\h_count[8]_i_2_n_0 ),
        .I3(\v_count[9]_i_1_n_0 ),
        .O(\h_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h0000AA6A)) 
    \h_count[7]_i_1 
       (.I0(BUS1262[7]),
        .I1(BUS1262[6]),
        .I2(BUS1262[5]),
        .I3(\h_count[8]_i_2_n_0 ),
        .I4(\v_count[9]_i_1_n_0 ),
        .O(\h_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA6AAA)) 
    \h_count[8]_i_1 
       (.I0(BUS1262[8]),
        .I1(BUS1262[5]),
        .I2(BUS1262[6]),
        .I3(BUS1262[7]),
        .I4(\h_count[8]_i_2_n_0 ),
        .I5(\v_count[9]_i_1_n_0 ),
        .O(\h_count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \h_count[8]_i_2 
       (.I0(BUS1262[3]),
        .I1(BUS1262[1]),
        .I2(BUS1262[0]),
        .I3(BUS1262[2]),
        .I4(BUS1262[4]),
        .O(\h_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0A0A028A0A080)) 
    \h_count[9]_i_1 
       (.I0(current_state),
        .I1(BUS1262[7]),
        .I2(BUS1262[9]),
        .I3(BUS1262[5]),
        .I4(BUS1262[6]),
        .I5(\v_count[9]_i_3_n_0 ),
        .O(\h_count[9]_i_1_n_0 ));
  FDCE \h_count_reg[0] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[0]_i_1_n_0 ),
        .Q(BUS1262[0]));
  FDCE \h_count_reg[1] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[1]_i_1_n_0 ),
        .Q(BUS1262[1]));
  FDCE \h_count_reg[2] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[2]_i_1_n_0 ),
        .Q(BUS1262[2]));
  FDCE \h_count_reg[3] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[3]_i_1_n_0 ),
        .Q(BUS1262[3]));
  FDCE \h_count_reg[4] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[4]_i_1_n_0 ),
        .Q(BUS1262[4]));
  FDCE \h_count_reg[5] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[5]_i_1_n_0 ),
        .Q(BUS1262[5]));
  FDCE \h_count_reg[6] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[6]_i_1_n_0 ),
        .Q(BUS1262[6]));
  FDCE \h_count_reg[7] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[7]_i_1_n_0 ),
        .Q(BUS1262[7]));
  FDCE \h_count_reg[8] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[8]_i_1_n_0 ),
        .Q(BUS1262[8]));
  FDCE \h_count_reg[9] 
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(\h_count[9]_i_1_n_0 ),
        .Q(BUS1262[9]));
  LUT4 #(
    .INIT(16'h2AA8)) 
    h_sync_i_1
       (.I0(h_sync_i_3_n_0),
        .I1(BUS1262[4]),
        .I2(BUS1262[5]),
        .I3(BUS1262[6]),
        .O(h_sync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    h_sync_i_3
       (.I0(BUS1262[8]),
        .I1(BUS1262[7]),
        .I2(current_state),
        .I3(BUS1262[9]),
        .O(h_sync_i_3_n_0));
  FDCE h_sync_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(h_sync_i_1_n_0),
        .Q(o_hsync));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[0]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[0]),
        .O(o_vga_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[10]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[10]),
        .O(o_vga_data[10]));
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[11]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[11]),
        .O(o_vga_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[1]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[1]),
        .O(o_vga_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[2]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[2]),
        .O(o_vga_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[3]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[3]),
        .O(o_vga_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[4]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[4]),
        .O(o_vga_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[5]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[5]),
        .O(o_vga_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[6]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[6]),
        .O(o_vga_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[7]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[7]),
        .O(o_vga_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[8]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[8]),
        .O(o_vga_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_vga_data[9]_INST_0 
       (.I0(current_state),
        .I1(valid),
        .I2(vga_data_out[9]),
        .O(o_vga_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \v_count[0]_i_1 
       (.I0(Q[0]),
        .I1(current_state),
        .I2(\v_count[0]_i_2_n_0 ),
        .O(\v_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \v_count[0]_i_2 
       (.I0(\v_count[9]_i_6_n_0 ),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(Q[6]),
        .I4(Q[7]),
        .O(\v_count[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \v_count[1]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\v_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count[2]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\v_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count[3]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\v_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count[4]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\v_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \v_count[5]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(\v_count[9]_i_5_n_0 ),
        .O(\v_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \v_count[6]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[6]),
        .I2(\v_count[9]_i_5_n_0 ),
        .I3(Q[5]),
        .O(\v_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \v_count[7]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[7]),
        .I2(\v_count[9]_i_5_n_0 ),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(\v_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \v_count[8]_i_1 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[8]),
        .I2(\v_count[9]_i_5_n_0 ),
        .I3(Q[7]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\v_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000100FFFFFFFF)) 
    \v_count[9]_i_1 
       (.I0(\v_count[9]_i_3_n_0 ),
        .I1(BUS1262[6]),
        .I2(BUS1262[5]),
        .I3(BUS1262[9]),
        .I4(BUS1262[7]),
        .I5(current_state),
        .O(\v_count[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h8828)) 
    \v_count[9]_i_2 
       (.I0(\v_count[9]_i_4_n_0 ),
        .I1(Q[9]),
        .I2(\v_count[9]_i_5_n_0 ),
        .I3(video_on_i_2_n_0),
        .O(\v_count[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \v_count[9]_i_3 
       (.I0(BUS1262[4]),
        .I1(BUS1262[2]),
        .I2(BUS1262[0]),
        .I3(BUS1262[1]),
        .I4(BUS1262[3]),
        .I5(BUS1262[8]),
        .O(\v_count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \v_count[9]_i_4 
       (.I0(Q[0]),
        .I1(\v_count[9]_i_6_n_0 ),
        .I2(\v_count[9]_i_7_n_0 ),
        .I3(current_state),
        .O(\v_count[9]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_count[9]_i_5 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[4]),
        .O(\v_count[9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFBF)) 
    \v_count[9]_i_6 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[4]),
        .O(\v_count[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \v_count[9]_i_7 
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[9]),
        .I3(Q[8]),
        .O(\v_count[9]_i_7_n_0 ));
  FDCE \v_count_reg[0] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \v_count_reg[1] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \v_count_reg[2] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \v_count_reg[3] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE \v_count_reg[4] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[4]_i_1_n_0 ),
        .Q(Q[4]));
  FDCE \v_count_reg[5] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE \v_count_reg[6] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE \v_count_reg[7] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE \v_count_reg[8] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[8]_i_1_n_0 ),
        .Q(Q[8]));
  FDCE \v_count_reg[9] 
       (.C(i_VGA_CLK),
        .CE(\v_count[9]_i_1_n_0 ),
        .CLR(i_reset_n),
        .D(\v_count[9]_i_2_n_0 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    v_sync_i_1
       (.I0(Q[0]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(v_sync_i_2_n_0),
        .O(v_sync_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    v_sync_i_2
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[9]),
        .I5(current_state),
        .O(v_sync_i_2_n_0));
  FDCE v_sync_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(v_sync_i_1_n_0),
        .Q(o_vsync));
  LUT6 #(
    .INIT(64'h00001F0000000000)) 
    video_on_i_1
       (.I0(BUS1262[8]),
        .I1(BUS1262[7]),
        .I2(BUS1262[9]),
        .I3(current_state),
        .I4(Q[9]),
        .I5(video_on_i_2_n_0),
        .O(video_on_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    video_on_i_2
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[8]),
        .O(video_on_i_2_n_0));
  FDCE video_on_reg
       (.C(i_VGA_CLK),
        .CE(1'b1),
        .CLR(i_reset_n),
        .D(video_on_i_1_n_0),
        .Q(read_en_out));
endmodule

module final_accelerator_VGA_IF_0_0_blk_mem_gen_generic_cstr
   (D,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    SR,
    \gic0.gc1.count_d3_reg[10] ,
    Q,
    din);
  output [11:0]D;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input [0:0]SR;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input [10:0]Q;
  input [11:0]din;

  wire [11:0]D;
  wire [10:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [11:0]din;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

  final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .WEA(WEA),
        .din(din),
        .\gic0.gc1.count_d3_reg[10] (\gic0.gc1.count_d3_reg[10] ),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

module final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_width
   (D,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    SR,
    \gic0.gc1.count_d3_reg[10] ,
    Q,
    din);
  output [11:0]D;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input [0:0]SR;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input [10:0]Q;
  input [11:0]din;

  wire [11:0]D;
  wire [10:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [11:0]din;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

  final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .WEA(WEA),
        .din(din),
        .\gic0.gc1.count_d3_reg[10] (\gic0.gc1.count_d3_reg[10] ),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

module final_accelerator_VGA_IF_0_0_blk_mem_gen_prim_wrapper
   (D,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    SR,
    \gic0.gc1.count_d3_reg[10] ,
    Q,
    din);
  output [11:0]D;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input [0:0]SR;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input [10:0]Q;
  input [11:0]din;

  wire [11:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_69 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_70 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_77 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_78 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92 ;
  wire [10:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [11:0]din;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* CLOCK_DOMAINS = "INDEPENDENT" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,\gic0.gc1.count_d3_reg[10] ,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,Q,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(wr_clk),
        .CLKBWRCLK(rd_clk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[11:6],1'b0,1'b0,din[5:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:16],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_69 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_70 ,D[11:6],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_77 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_78 ,D[5:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:2],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_91 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_92 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(WEA),
        .ENBWREN(tmp_ram_rd_en),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(SR),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module final_accelerator_VGA_IF_0_0_blk_mem_gen_top
   (D,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    SR,
    \gic0.gc1.count_d3_reg[10] ,
    Q,
    din);
  output [11:0]D;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input [0:0]SR;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input [10:0]Q;
  input [11:0]din;

  wire [11:0]D;
  wire [10:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [11:0]din;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

  final_accelerator_VGA_IF_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .WEA(WEA),
        .din(din),
        .\gic0.gc1.count_d3_reg[10] (\gic0.gc1.count_d3_reg[10] ),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

module final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5
   (D,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    SR,
    \gic0.gc1.count_d3_reg[10] ,
    Q,
    din);
  output [11:0]D;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input [0:0]SR;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input [10:0]Q;
  input [11:0]din;

  wire [11:0]D;
  wire [10:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [11:0]din;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

  final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5_synth inst_blk_mem_gen
       (.D(D),
        .Q(Q),
        .SR(SR),
        .WEA(WEA),
        .din(din),
        .\gic0.gc1.count_d3_reg[10] (\gic0.gc1.count_d3_reg[10] ),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

module final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5_synth
   (D,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    SR,
    \gic0.gc1.count_d3_reg[10] ,
    Q,
    din);
  output [11:0]D;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input [0:0]SR;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input [10:0]Q;
  input [11:0]din;

  wire [11:0]D;
  wire [10:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [11:0]din;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

  final_accelerator_VGA_IF_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .WEA(WEA),
        .din(din),
        .\gic0.gc1.count_d3_reg[10] (\gic0.gc1.count_d3_reg[10] ),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
endmodule

module final_accelerator_VGA_IF_0_0_clk_x_pntrs
   (S,
    WR_PNTR_RD,
    \gdiff.diff_pntr_pad_reg[8] ,
    \gdiff.diff_pntr_pad_reg[11] ,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    \gaf.ram_almost_full_i_reg ,
    v1_reg,
    v1_reg_0,
    Q,
    \gic0.gc1.count_d2_reg[10] ,
    \gic0.gc1.count_d1_reg[10] ,
    D,
    \gc1.count_d1_reg[9] ,
    \gic0.gc1.count_d3_reg[10] ,
    wr_clk,
    AR,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [3:0]S;
  output [10:0]WR_PNTR_RD;
  output [3:0]\gdiff.diff_pntr_pad_reg[8] ;
  output [2:0]\gdiff.diff_pntr_pad_reg[11] ;
  output ram_full_i_reg;
  output [10:0]RD_PNTR_WR;
  output ram_full_i_reg_0;
  output \gaf.ram_almost_full_i_reg ;
  output [4:0]v1_reg;
  output [4:0]v1_reg_0;
  input [10:0]Q;
  input [0:0]\gic0.gc1.count_d2_reg[10] ;
  input [0:0]\gic0.gc1.count_d1_reg[10] ;
  input [0:0]D;
  input [9:0]\gc1.count_d1_reg[9] ;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input wr_clk;
  input [0:0]AR;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [0:0]AR;
  wire [0:0]D;
  wire [10:0]Q;
  wire [10:0]RD_PNTR_WR;
  wire [3:0]S;
  wire [10:0]WR_PNTR_RD;
  wire [9:0]bin2gray;
  wire \gaf.ram_almost_full_i_reg ;
  wire [9:0]\gc1.count_d1_reg[9] ;
  wire [2:0]\gdiff.diff_pntr_pad_reg[11] ;
  wire [3:0]\gdiff.diff_pntr_pad_reg[8] ;
  wire [0:0]\gic0.gc1.count_d1_reg[10] ;
  wire [0:0]\gic0.gc1.count_d2_reg[10] ;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_10 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ;
  wire \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9 ;
  wire \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0 ;
  wire \gnxpm_cdc.rd_pntr_gc[9]_i_1_n_0 ;
  wire [8:0]gray2bin;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire p_0_out;
  wire [10:0]p_3_out;
  wire [10:0]p_4_out;
  wire [10:10]p_5_out;
  wire [10:10]p_6_out;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire rd_clk;
  wire [10:0]rd_pntr_gc;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire wr_clk;
  wire [10:0]wr_pntr_gc;

  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .I2(WR_PNTR_RD[1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(WR_PNTR_RD[0]),
        .I1(\gc1.count_d1_reg[9] [0]),
        .I2(WR_PNTR_RD[1]),
        .I3(\gc1.count_d1_reg[9] [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .I2(WR_PNTR_RD[3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[2]),
        .I1(\gc1.count_d1_reg[9] [2]),
        .I2(WR_PNTR_RD[3]),
        .I3(\gc1.count_d1_reg[9] [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .I2(WR_PNTR_RD[5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[4]),
        .I1(\gc1.count_d1_reg[9] [4]),
        .I2(WR_PNTR_RD[5]),
        .I3(\gc1.count_d1_reg[9] [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .I2(WR_PNTR_RD[7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[6]),
        .I1(\gc1.count_d1_reg[9] [6]),
        .I2(WR_PNTR_RD[7]),
        .I3(\gc1.count_d1_reg[9] [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .I2(WR_PNTR_RD[9]),
        .I3(Q[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(WR_PNTR_RD[8]),
        .I1(\gc1.count_d1_reg[9] [8]),
        .I2(WR_PNTR_RD[9]),
        .I3(\gc1.count_d1_reg[9] [9]),
        .O(v1_reg_0[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1__1 
       (.I0(RD_PNTR_WR[10]),
        .I1(\gic0.gc1.count_d2_reg[10] ),
        .O(ram_full_i_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1__2 
       (.I0(RD_PNTR_WR[10]),
        .I1(\gic0.gc1.count_d1_reg[10] ),
        .O(ram_full_i_reg_0));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1__3 
       (.I0(RD_PNTR_WR[10]),
        .I1(D),
        .O(\gaf.ram_almost_full_i_reg ));
  final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized0 \gnxpm_cdc.gsync_stage[1].rd_stg_inst 
       (.D(p_3_out),
        .Q(wr_pntr_gc),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .rd_clk(rd_clk));
  final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized1 \gnxpm_cdc.gsync_stage[1].wr_stg_inst 
       (.AR(AR),
        .D(p_4_out),
        .Q(rd_pntr_gc),
        .wr_clk(wr_clk));
  final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized2 \gnxpm_cdc.gsync_stage[2].rd_stg_inst 
       (.D(p_3_out),
        .\gnxpm_cdc.wr_pntr_bin_reg[9] ({p_0_out,gray2bin}),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .out(p_5_out),
        .rd_clk(rd_clk));
  final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized3 \gnxpm_cdc.gsync_stage[2].wr_stg_inst 
       (.AR(AR),
        .D(p_4_out),
        .\gnxpm_cdc.rd_pntr_bin_reg[9] ({\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9 ,\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_10 }),
        .out(p_6_out),
        .wr_clk(wr_clk));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_10 ),
        .Q(RD_PNTR_WR[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(p_6_out),
        .Q(RD_PNTR_WR[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_9 ),
        .Q(RD_PNTR_WR[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8 ),
        .Q(RD_PNTR_WR[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7 ),
        .Q(RD_PNTR_WR[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6 ),
        .Q(RD_PNTR_WR[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5 ),
        .Q(RD_PNTR_WR[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4 ),
        .Q(RD_PNTR_WR[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3 ),
        .Q(RD_PNTR_WR[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2 ),
        .Q(RD_PNTR_WR[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_bin_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1 ),
        .Q(RD_PNTR_WR[9]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[4]),
        .O(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[5]),
        .O(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[5]_i_1 
       (.I0(Q[5]),
        .I1(Q[6]),
        .O(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[7]),
        .O(\gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[7]_i_1 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[8]_i_1 
       (.I0(Q[8]),
        .I1(Q[9]),
        .O(\gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_gc[9]_i_1 
       (.I0(Q[9]),
        .I1(Q[10]),
        .O(\gnxpm_cdc.rd_pntr_gc[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0 ),
        .Q(rd_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[10]),
        .Q(rd_pntr_gc[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0 ),
        .Q(rd_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0 ),
        .Q(rd_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0 ),
        .Q(rd_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0 ),
        .Q(rd_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0 ),
        .Q(rd_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0 ),
        .Q(rd_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0 ),
        .Q(rd_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[8]_i_1_n_0 ),
        .Q(rd_pntr_gc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.rd_pntr_gc_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(\gnxpm_cdc.rd_pntr_gc[9]_i_1_n_0 ),
        .Q(rd_pntr_gc[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[0]),
        .Q(WR_PNTR_RD[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_5_out),
        .Q(WR_PNTR_RD[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[1]),
        .Q(WR_PNTR_RD[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[2]),
        .Q(WR_PNTR_RD[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[3]),
        .Q(WR_PNTR_RD[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[4]),
        .Q(WR_PNTR_RD[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[5]),
        .Q(WR_PNTR_RD[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[6]),
        .Q(WR_PNTR_RD[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[7]),
        .Q(WR_PNTR_RD[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(gray2bin[8]),
        .Q(WR_PNTR_RD[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_bin_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(p_0_out),
        .Q(WR_PNTR_RD[9]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[0]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [0]),
        .I1(\gic0.gc1.count_d3_reg[10] [1]),
        .O(bin2gray[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[1]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [1]),
        .I1(\gic0.gc1.count_d3_reg[10] [2]),
        .O(bin2gray[1]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[2]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [2]),
        .I1(\gic0.gc1.count_d3_reg[10] [3]),
        .O(bin2gray[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[3]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [3]),
        .I1(\gic0.gc1.count_d3_reg[10] [4]),
        .O(bin2gray[3]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[4]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [4]),
        .I1(\gic0.gc1.count_d3_reg[10] [5]),
        .O(bin2gray[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[5]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [5]),
        .I1(\gic0.gc1.count_d3_reg[10] [6]),
        .O(bin2gray[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[6]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [6]),
        .I1(\gic0.gc1.count_d3_reg[10] [7]),
        .O(bin2gray[6]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[7]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [7]),
        .I1(\gic0.gc1.count_d3_reg[10] [8]),
        .O(bin2gray[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[8]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [8]),
        .I1(\gic0.gc1.count_d3_reg[10] [9]),
        .O(bin2gray[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_gc[9]_i_1 
       (.I0(\gic0.gc1.count_d3_reg[10] [9]),
        .I1(\gic0.gc1.count_d3_reg[10] [10]),
        .O(bin2gray[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[0]),
        .Q(wr_pntr_gc[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(\gic0.gc1.count_d3_reg[10] [10]),
        .Q(wr_pntr_gc[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[1]),
        .Q(wr_pntr_gc[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[2]),
        .Q(wr_pntr_gc[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[3]),
        .Q(wr_pntr_gc[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[4]),
        .Q(wr_pntr_gc[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[5]),
        .Q(wr_pntr_gc[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[6]),
        .Q(wr_pntr_gc[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[7]),
        .Q(wr_pntr_gc[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[8]),
        .Q(wr_pntr_gc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gnxpm_cdc.wr_pntr_gc_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(bin2gray[9]),
        .Q(wr_pntr_gc[9]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_1
       (.I0(WR_PNTR_RD[7]),
        .I1(Q[7]),
        .O(\gdiff.diff_pntr_pad_reg[8] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_2
       (.I0(WR_PNTR_RD[6]),
        .I1(Q[6]),
        .O(\gdiff.diff_pntr_pad_reg[8] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_3
       (.I0(WR_PNTR_RD[5]),
        .I1(Q[5]),
        .O(\gdiff.diff_pntr_pad_reg[8] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_4
       (.I0(WR_PNTR_RD[4]),
        .I1(Q[4]),
        .O(\gdiff.diff_pntr_pad_reg[8] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__1_i_1
       (.I0(WR_PNTR_RD[10]),
        .I1(Q[10]),
        .O(\gdiff.diff_pntr_pad_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__1_i_2
       (.I0(WR_PNTR_RD[9]),
        .I1(Q[9]),
        .O(\gdiff.diff_pntr_pad_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__1_i_3
       (.I0(WR_PNTR_RD[8]),
        .I1(Q[8]),
        .O(\gdiff.diff_pntr_pad_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2
       (.I0(WR_PNTR_RD[3]),
        .I1(Q[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_3
       (.I0(WR_PNTR_RD[2]),
        .I1(Q[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_4
       (.I0(WR_PNTR_RD[1]),
        .I1(Q[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_5
       (.I0(WR_PNTR_RD[0]),
        .I1(Q[0]),
        .O(S[0]));
endmodule

module final_accelerator_VGA_IF_0_0_compare
   (comp1,
    v1_reg,
    \gnxpm_cdc.rd_pntr_bin_reg[10] );
  output comp1;
  input [4:0]v1_reg;
  input \gnxpm_cdc.rd_pntr_bin_reg[10] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],\gnxpm_cdc.rd_pntr_bin_reg[10] ,v1_reg[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module final_accelerator_VGA_IF_0_0_compare_3
   (comp2,
    ram_full_i_reg,
    v1_reg_0,
    \gnxpm_cdc.rd_pntr_bin_reg[10] ,
    out,
    wr_en,
    comp1,
    \grstd1.grst_full.grst_f.rst_d3_reg );
  output comp2;
  output ram_full_i_reg;
  input [4:0]v1_reg_0;
  input \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  input out;
  input wr_en;
  input comp1;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire comp2;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire ram_full_i_reg;
  wire [4:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp2,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],\gnxpm_cdc.rd_pntr_bin_reg[10] ,v1_reg_0[4]}));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    ram_full_i_i_1
       (.I0(comp2),
        .I1(out),
        .I2(wr_en),
        .I3(comp1),
        .I4(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .O(ram_full_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module final_accelerator_VGA_IF_0_0_compare_4
   (\gaf.ram_almost_full_i_reg ,
    v1_reg_1,
    \gnxpm_cdc.rd_pntr_bin_reg[10] ,
    wr_en,
    comp2,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    out,
    almost_full);
  output \gaf.ram_almost_full_i_reg ;
  input [4:0]v1_reg_1;
  input \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  input wr_en;
  input comp2;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input out;
  input almost_full;

  wire almost_full;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp2;
  wire comp3;
  wire \gaf.ram_almost_full_i_reg ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire [4:0]v1_reg_1;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00FF00F8000000F8)) 
    \gaf.ram_almost_full_i_i_1 
       (.I0(comp3),
        .I1(wr_en),
        .I2(comp2),
        .I3(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I4(out),
        .I5(almost_full),
        .O(\gaf.ram_almost_full_i_reg ));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_1[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp3,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],\gnxpm_cdc.rd_pntr_bin_reg[10] ,v1_reg_1[4]}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module final_accelerator_VGA_IF_0_0_compare_5
   (ram_empty_i0,
    v1_reg,
    \gc1.count_d2_reg[10] ,
    rd_en,
    \gpregsm1.curr_fwft_state_reg[1] ,
    out,
    comp1);
  output ram_empty_i0;
  input [4:0]v1_reg;
  input \gc1.count_d2_reg[10] ;
  input rd_en;
  input [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  input out;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp0;
  wire comp1;
  wire \gc1.count_d2_reg[10] ;
  wire [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire out;
  wire ram_empty_i0;
  wire rd_en;
  wire [4:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp0,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],\gc1.count_d2_reg[10] ,v1_reg[4]}));
  LUT6 #(
    .INIT(64'hAAAAEFFFAAAAAAAA)) 
    ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(\gpregsm1.curr_fwft_state_reg[1] [0]),
        .I3(\gpregsm1.curr_fwft_state_reg[1] [1]),
        .I4(out),
        .I5(comp1),
        .O(ram_empty_i0));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module final_accelerator_VGA_IF_0_0_compare_6
   (comp1,
    v1_reg_0,
    \gc1.count_d1_reg[10] );
  output comp1;
  input [4:0]v1_reg_0;
  input \gc1.count_d1_reg[10] ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire carrynet_4;
  wire comp1;
  wire \gc1.count_d1_reg[10] ;
  wire [4:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0[3:0]));
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,carrynet_4}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],1'b0,1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],\gc1.count_d1_reg[10] ,v1_reg_0[4]}));
endmodule

module final_accelerator_VGA_IF_0_0_fifo_generator_ramfifo
   (WR_RST_BUSY,
    almost_empty,
    empty,
    valid,
    full,
    dout,
    almost_full,
    prog_full,
    prog_empty,
    wr_en,
    prog_full_thresh,
    prog_empty_thresh,
    wr_clk,
    rd_clk,
    din,
    rst,
    rd_en);
  output WR_RST_BUSY;
  output almost_empty;
  output empty;
  output valid;
  output full;
  output [11:0]dout;
  output almost_full;
  output prog_full;
  output prog_empty;
  input wr_en;
  input [10:0]prog_full_thresh;
  input [10:0]prog_empty_thresh;
  input wr_clk;
  input rd_clk;
  input [11:0]din;
  input rst;
  input rd_en;

  wire WR_RST_BUSY;
  wire almost_empty;
  wire almost_full;
  wire [11:0]din;
  wire [11:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_1 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_15 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_16 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_17 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_18 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_19 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_2 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_20 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_21 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_22 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_3 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_34 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_35 ;
  wire \gntv_or_sync_fifo.gl0.wr_n_4 ;
  wire [4:0]\gras.rsts/c0/v1_reg ;
  wire [4:0]\gras.rsts/c1/v1_reg ;
  wire [10:0]p_0_out_0;
  wire [10:0]p_12_out;
  wire [10:10]p_13_out;
  wire [10:0]p_22_out;
  wire [10:0]p_23_out;
  wire p_5_out;
  wire prog_empty;
  wire [10:0]prog_empty_thresh;
  wire prog_full;
  wire [10:0]prog_full_thresh;
  wire rd_clk;
  wire rd_en;
  wire [9:0]rd_pntr_plus1;
  wire [2:0]rd_rst_i;
  wire rst;
  wire rst_full_ff_i;
  wire tmp_ram_rd_en;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire [10:10]wr_pntr_plus2;
  wire [10:10]wr_pntr_plus3;
  wire [1:0]wr_rst_i;

  final_accelerator_VGA_IF_0_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.AR(wr_rst_i[0]),
        .D(wr_pntr_plus3),
        .Q(p_0_out_0),
        .RD_PNTR_WR(p_23_out),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_0 ,\gntv_or_sync_fifo.gcx.clkx_n_1 ,\gntv_or_sync_fifo.gcx.clkx_n_2 ,\gntv_or_sync_fifo.gcx.clkx_n_3 }),
        .WR_PNTR_RD(p_22_out),
        .\gaf.ram_almost_full_i_reg (\gntv_or_sync_fifo.gcx.clkx_n_35 ),
        .\gc1.count_d1_reg[9] (rd_pntr_plus1),
        .\gdiff.diff_pntr_pad_reg[11] ({\gntv_or_sync_fifo.gcx.clkx_n_19 ,\gntv_or_sync_fifo.gcx.clkx_n_20 ,\gntv_or_sync_fifo.gcx.clkx_n_21 }),
        .\gdiff.diff_pntr_pad_reg[8] ({\gntv_or_sync_fifo.gcx.clkx_n_15 ,\gntv_or_sync_fifo.gcx.clkx_n_16 ,\gntv_or_sync_fifo.gcx.clkx_n_17 ,\gntv_or_sync_fifo.gcx.clkx_n_18 }),
        .\gic0.gc1.count_d1_reg[10] (wr_pntr_plus2),
        .\gic0.gc1.count_d2_reg[10] (p_13_out),
        .\gic0.gc1.count_d3_reg[10] (p_12_out),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] (rd_rst_i[1]),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_22 ),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_34 ),
        .rd_clk(rd_clk),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ),
        .wr_clk(wr_clk));
  final_accelerator_VGA_IF_0_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(p_5_out),
        .Q(p_0_out_0),
        .S({\gntv_or_sync_fifo.gcx.clkx_n_0 ,\gntv_or_sync_fifo.gcx.clkx_n_1 ,\gntv_or_sync_fifo.gcx.clkx_n_2 ,\gntv_or_sync_fifo.gcx.clkx_n_3 }),
        .WR_PNTR_RD(p_22_out),
        .almost_empty(almost_empty),
        .empty(empty),
        .\gc1.count_d2_reg[9] (rd_pntr_plus1),
        .\gnxpm_cdc.wr_pntr_bin_reg[10] ({\gntv_or_sync_fifo.gcx.clkx_n_19 ,\gntv_or_sync_fifo.gcx.clkx_n_20 ,\gntv_or_sync_fifo.gcx.clkx_n_21 }),
        .\gnxpm_cdc.wr_pntr_bin_reg[7] ({\gntv_or_sync_fifo.gcx.clkx_n_15 ,\gntv_or_sync_fifo.gcx.clkx_n_16 ,\gntv_or_sync_fifo.gcx.clkx_n_17 ,\gntv_or_sync_fifo.gcx.clkx_n_18 }),
        .out({rd_rst_i[2],rd_rst_i[0]}),
        .prog_empty(prog_empty),
        .prog_empty_thresh(prog_empty_thresh),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .v1_reg(\gras.rsts/c0/v1_reg ),
        .v1_reg_0(\gras.rsts/c1/v1_reg ),
        .valid(valid));
  final_accelerator_VGA_IF_0_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(wr_rst_i[1]),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (p_12_out),
        .Q(p_13_out),
        .RD_PNTR_WR(p_23_out),
        .WEA(\gntv_or_sync_fifo.gl0.wr_n_4 ),
        .almost_full(almost_full),
        .full(full),
        .\gic0.gc1.count_d1_reg[10] (wr_pntr_plus3),
        .\gic0.gc1.count_d2_reg[10] (wr_pntr_plus2),
        .\gnxpm_cdc.rd_pntr_bin_reg[10] (\gntv_or_sync_fifo.gcx.clkx_n_22 ),
        .\gnxpm_cdc.rd_pntr_bin_reg[10]_0 (\gntv_or_sync_fifo.gcx.clkx_n_34 ),
        .\gnxpm_cdc.rd_pntr_bin_reg[10]_1 (\gntv_or_sync_fifo.gcx.clkx_n_35 ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (WR_RST_BUSY),
        .out(rst_full_ff_i),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  final_accelerator_VGA_IF_0_0_memory \gntv_or_sync_fifo.mem 
       (.E(p_5_out),
        .Q(p_0_out_0),
        .SR(rd_rst_i[0]),
        .WEA(\gntv_or_sync_fifo.gl0.wr_n_4 ),
        .din(din),
        .dout(dout),
        .\gic0.gc1.count_d3_reg[10] (p_12_out),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
  final_accelerator_VGA_IF_0_0_reset_blk_ramfifo rstblk
       (.WR_RST_BUSY(WR_RST_BUSY),
        .\gc1.count_reg[0] (rd_rst_i),
        .\grstd1.grst_full.grst_f.rst_d3_reg_0 (rst_full_ff_i),
        .out(wr_rst_i),
        .rd_clk(rd_clk),
        .rst(rst),
        .wr_clk(wr_clk));
endmodule

module final_accelerator_VGA_IF_0_0_fifo_generator_top
   (WR_RST_BUSY,
    almost_empty,
    empty,
    valid,
    full,
    dout,
    almost_full,
    prog_full,
    prog_empty,
    wr_en,
    prog_full_thresh,
    prog_empty_thresh,
    wr_clk,
    rd_clk,
    din,
    rst,
    rd_en);
  output WR_RST_BUSY;
  output almost_empty;
  output empty;
  output valid;
  output full;
  output [11:0]dout;
  output almost_full;
  output prog_full;
  output prog_empty;
  input wr_en;
  input [10:0]prog_full_thresh;
  input [10:0]prog_empty_thresh;
  input wr_clk;
  input rd_clk;
  input [11:0]din;
  input rst;
  input rd_en;

  wire WR_RST_BUSY;
  wire almost_empty;
  wire almost_full;
  wire [11:0]din;
  wire [11:0]dout;
  wire empty;
  wire full;
  wire prog_empty;
  wire [10:0]prog_empty_thresh;
  wire prog_full;
  wire [10:0]prog_full_thresh;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;

  final_accelerator_VGA_IF_0_0_fifo_generator_ramfifo \grf.rf 
       (.WR_RST_BUSY(WR_RST_BUSY),
        .almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_empty(prog_empty),
        .prog_empty_thresh(prog_empty_thresh),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "11" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "12" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "12" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "1" *) 
(* C_HAS_ALMOST_FULL = "1" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "1" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "0" *) (* C_PRELOAD_REGS = "1" *) (* C_PRIM_FIFO_TYPE = "2kx18" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) (* C_PROG_EMPTY_TYPE = "3" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "2047" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "2046" *) (* C_PROG_FULL_TYPE = "3" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "11" *) 
(* C_RD_DEPTH = "2048" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "11" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "11" *) 
(* C_WR_DEPTH = "2048" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "11" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) 
module final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [11:0]din;
  input wr_en;
  input rd_en;
  input [10:0]prog_empty_thresh;
  input [10:0]prog_empty_thresh_assert;
  input [10:0]prog_empty_thresh_negate;
  input [10:0]prog_full_thresh;
  input [10:0]prog_full_thresh_assert;
  input [10:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [11:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [10:0]data_count;
  output [10:0]rd_data_count;
  output [10:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire almost_empty;
  wire almost_full;
  wire [11:0]din;
  wire [11:0]dout;
  wire empty;
  wire full;
  wire prog_empty;
  wire [10:0]prog_empty_thresh;
  wire prog_full;
  wire [10:0]prog_full_thresh;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[10] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3_synth inst_fifo_gen
       (.WR_RST_BUSY(wr_rst_busy),
        .almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_empty(prog_empty),
        .prog_empty_thresh(prog_empty_thresh),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module final_accelerator_VGA_IF_0_0_fifo_generator_v13_1_3_synth
   (WR_RST_BUSY,
    almost_empty,
    empty,
    valid,
    full,
    dout,
    almost_full,
    prog_full,
    prog_empty,
    wr_en,
    prog_full_thresh,
    prog_empty_thresh,
    wr_clk,
    rd_clk,
    din,
    rst,
    rd_en);
  output WR_RST_BUSY;
  output almost_empty;
  output empty;
  output valid;
  output full;
  output [11:0]dout;
  output almost_full;
  output prog_full;
  output prog_empty;
  input wr_en;
  input [10:0]prog_full_thresh;
  input [10:0]prog_empty_thresh;
  input wr_clk;
  input rd_clk;
  input [11:0]din;
  input rst;
  input rd_en;

  wire WR_RST_BUSY;
  wire almost_empty;
  wire almost_full;
  wire [11:0]din;
  wire [11:0]dout;
  wire empty;
  wire full;
  wire prog_empty;
  wire [10:0]prog_empty_thresh;
  wire prog_full;
  wire [10:0]prog_full_thresh;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire valid;
  wire wr_clk;
  wire wr_en;

  final_accelerator_VGA_IF_0_0_fifo_generator_top \gconvfifo.rf 
       (.WR_RST_BUSY(WR_RST_BUSY),
        .almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .prog_empty(prog_empty),
        .prog_empty_thresh(prog_empty_thresh),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .valid(valid),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module final_accelerator_VGA_IF_0_0_memory
   (dout,
    wr_clk,
    rd_clk,
    WEA,
    tmp_ram_rd_en,
    SR,
    \gic0.gc1.count_d3_reg[10] ,
    Q,
    din,
    E);
  output [11:0]dout;
  input wr_clk;
  input rd_clk;
  input [0:0]WEA;
  input tmp_ram_rd_en;
  input [0:0]SR;
  input [10:0]\gic0.gc1.count_d3_reg[10] ;
  input [10:0]Q;
  input [11:0]din;
  input [0:0]E;

  wire [0:0]E;
  wire [10:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [11:0]din;
  wire [11:0]dout;
  wire [11:0]doutb;
  wire [10:0]\gic0.gc1.count_d3_reg[10] ;
  wire rd_clk;
  wire tmp_ram_rd_en;
  wire wr_clk;

  final_accelerator_VGA_IF_0_0_blk_mem_gen_v8_3_5 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .Q(Q),
        .SR(SR),
        .WEA(WEA),
        .din(din),
        .\gic0.gc1.count_d3_reg[10] (\gic0.gc1.count_d3_reg[10] ),
        .rd_clk(rd_clk),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .wr_clk(wr_clk));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[0]),
        .Q(dout[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[10]),
        .Q(dout[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[11] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[11]),
        .Q(dout[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[1]),
        .Q(dout[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[2]),
        .Q(dout[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[3]),
        .Q(dout[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[4]),
        .Q(dout[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[5]),
        .Q(dout[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[6]),
        .Q(dout[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[7]),
        .Q(dout[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[8]),
        .Q(dout[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \goreg_bm.dout_i_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .D(doutb[9]),
        .Q(dout[9]),
        .R(SR));
endmodule

module final_accelerator_VGA_IF_0_0_rd_bin_cntr
   (ram_empty_fb_i_reg,
    Q,
    ram_empty_fb_i_reg_0,
    \gc1.count_d2_reg[9]_0 ,
    WR_PNTR_RD,
    E,
    rd_clk,
    out);
  output ram_empty_fb_i_reg;
  output [10:0]Q;
  output ram_empty_fb_i_reg_0;
  output [9:0]\gc1.count_d2_reg[9]_0 ;
  input [0:0]WR_PNTR_RD;
  input [0:0]E;
  input rd_clk;
  input [0:0]out;

  wire [0:0]E;
  wire [10:0]Q;
  wire [0:0]WR_PNTR_RD;
  wire \gc1.count[10]_i_2_n_0 ;
  wire [9:0]\gc1.count_d2_reg[9]_0 ;
  wire [0:0]out;
  wire [10:0]plusOp__0;
  wire ram_empty_fb_i_reg;
  wire ram_empty_fb_i_reg_0;
  wire rd_clk;
  wire [10:10]rd_pntr_plus1;
  wire [10:0]rd_pntr_plus2;

  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc1.count[0]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .O(plusOp__0[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[10]_i_1 
       (.I0(rd_pntr_plus2[8]),
        .I1(rd_pntr_plus2[6]),
        .I2(\gc1.count[10]_i_2_n_0 ),
        .I3(rd_pntr_plus2[7]),
        .I4(rd_pntr_plus2[9]),
        .I5(rd_pntr_plus2[10]),
        .O(plusOp__0[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc1.count[10]_i_2 
       (.I0(rd_pntr_plus2[5]),
        .I1(rd_pntr_plus2[3]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[0]),
        .I4(rd_pntr_plus2[2]),
        .I5(rd_pntr_plus2[4]),
        .O(\gc1.count[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[1]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[2]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[3]_i_1 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .I3(rd_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[4]_i_1 
       (.I0(rd_pntr_plus2[2]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[5]_i_1 
       (.I0(rd_pntr_plus2[3]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[2]),
        .I4(rd_pntr_plus2[4]),
        .I5(rd_pntr_plus2[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[6]_i_1 
       (.I0(\gc1.count[10]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[7]_i_1 
       (.I0(\gc1.count[10]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .I2(rd_pntr_plus2[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[8]_i_1 
       (.I0(rd_pntr_plus2[6]),
        .I1(\gc1.count[10]_i_2_n_0 ),
        .I2(rd_pntr_plus2[7]),
        .I3(rd_pntr_plus2[8]),
        .O(plusOp__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[9]_i_1 
       (.I0(rd_pntr_plus2[7]),
        .I1(\gc1.count[10]_i_2_n_0 ),
        .I2(rd_pntr_plus2[6]),
        .I3(rd_pntr_plus2[8]),
        .I4(rd_pntr_plus2[9]),
        .O(plusOp__0[9]));
  FDPE #(
    .INIT(1'b1)) 
    \gc1.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[0]),
        .PRE(out),
        .Q(\gc1.count_d2_reg[9]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[10]),
        .Q(rd_pntr_plus1));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[1]),
        .Q(\gc1.count_d2_reg[9]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[2]),
        .Q(\gc1.count_d2_reg[9]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[3]),
        .Q(\gc1.count_d2_reg[9]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[4]),
        .Q(\gc1.count_d2_reg[9]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[5]),
        .Q(\gc1.count_d2_reg[9]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[6]),
        .Q(\gc1.count_d2_reg[9]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[7]),
        .Q(\gc1.count_d2_reg[9]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[8]),
        .Q(\gc1.count_d2_reg[9]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus2[9]),
        .Q(\gc1.count_d2_reg[9]_0 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(rd_pntr_plus1),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(\gc1.count_d2_reg[9]_0 [9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[0]),
        .Q(rd_pntr_plus2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[10] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[10]),
        .Q(rd_pntr_plus2[10]));
  FDPE #(
    .INIT(1'b1)) 
    \gc1.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .PRE(out),
        .Q(rd_pntr_plus2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[2]),
        .Q(rd_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[3]),
        .Q(rd_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[4]),
        .Q(rd_pntr_plus2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[5]),
        .Q(rd_pntr_plus2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[6]),
        .Q(rd_pntr_plus2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[7]),
        .Q(rd_pntr_plus2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[8]),
        .Q(rd_pntr_plus2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gc1.count_reg[9] 
       (.C(rd_clk),
        .CE(E),
        .CLR(out),
        .D(plusOp__0[9]),
        .Q(rd_pntr_plus2[9]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1 
       (.I0(Q[10]),
        .I1(WR_PNTR_RD),
        .O(ram_empty_fb_i_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[5].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1),
        .I1(WR_PNTR_RD),
        .O(ram_empty_fb_i_reg_0));
endmodule

module final_accelerator_VGA_IF_0_0_rd_fwft
   (out,
    almost_empty,
    empty,
    valid,
    tmp_ram_rd_en,
    p_0_out,
    E,
    \goreg_bm.dout_i_reg[11] ,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    rd_en,
    ram_empty_fb_i_reg);
  output [1:0]out;
  output almost_empty;
  output empty;
  output valid;
  output tmp_ram_rd_en;
  output p_0_out;
  output [0:0]E;
  output [0:0]\goreg_bm.dout_i_reg[11] ;
  input rd_clk;
  input [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input rd_en;
  input ram_empty_fb_i_reg;

  wire [0:0]E;
  (* DONT_TOUCH *) wire aempty_fwft_fb_i;
  (* DONT_TOUCH *) wire aempty_fwft_i;
  wire aempty_fwft_i0;
  (* DONT_TOUCH *) wire [1:0]curr_fwft_state;
  (* DONT_TOUCH *) wire empty_fwft_fb_i;
  (* DONT_TOUCH *) wire empty_fwft_fb_o_i;
  wire empty_fwft_fb_o_i0;
  (* DONT_TOUCH *) wire empty_fwft_i;
  wire empty_fwft_i0;
  wire [0:0]\goreg_bm.dout_i_reg[11] ;
  wire [1:0]next_fwft_state;
  wire [1:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  wire p_0_out;
  wire ram_empty_fb_i_reg;
  wire rd_clk;
  wire rd_en;
  wire tmp_ram_rd_en;
  (* DONT_TOUCH *) wire user_valid;

  assign almost_empty = aempty_fwft_i;
  assign empty = empty_fwft_i;
  assign out[1:0] = curr_fwft_state;
  assign valid = user_valid;
  LUT5 #(
    .INIT(32'hBABBBBBB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [0]),
        .I1(ram_empty_fb_i_reg),
        .I2(rd_en),
        .I3(curr_fwft_state[0]),
        .I4(curr_fwft_state[1]),
        .O(tmp_ram_rd_en));
  LUT5 #(
    .INIT(32'hEEFD8000)) 
    aempty_fwft_fb_i_i_1
       (.I0(curr_fwft_state[0]),
        .I1(ram_empty_fb_i_reg),
        .I2(rd_en),
        .I3(curr_fwft_state[1]),
        .I4(aempty_fwft_fb_i),
        .O(aempty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(aempty_fwft_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    aempty_fwft_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(aempty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(aempty_fwft_i));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_i),
        .O(empty_fwft_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(empty_fwft_fb_i));
  LUT4 #(
    .INIT(16'hF320)) 
    empty_fwft_fb_o_i_i_1
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(empty_fwft_fb_o_i),
        .O(empty_fwft_fb_o_i0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_fb_o_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_fb_o_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(empty_fwft_fb_o_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    empty_fwft_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .Q(empty_fwft_i));
  LUT4 #(
    .INIT(16'h00BF)) 
    \gc1.count_d1[10]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_fb_i_reg),
        .O(E));
  LUT3 #(
    .INIT(8'hA2)) 
    \goreg_bm.dout_i[11]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
        .I2(rd_en),
        .O(\goreg_bm.dout_i_reg[11] ));
  LUT3 #(
    .INIT(8'hBA)) 
    \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state[0]));
  LUT4 #(
    .INIT(16'h20FF)) 
    \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(rd_en),
        .I2(curr_fwft_state[0]),
        .I3(ram_empty_fb_i_reg),
        .O(next_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[1]),
        .Q(curr_fwft_state[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gpregsm1.user_valid_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] [1]),
        .D(next_fwft_state[0]),
        .Q(user_valid));
  LUT4 #(
    .INIT(16'hAAEA)) 
    plusOp_carry_i_1
       (.I0(ram_empty_fb_i_reg),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(p_0_out));
endmodule

module final_accelerator_VGA_IF_0_0_rd_logic
   (almost_empty,
    empty,
    valid,
    prog_empty,
    Q,
    \gc1.count_d2_reg[9] ,
    tmp_ram_rd_en,
    E,
    v1_reg,
    v1_reg_0,
    rd_clk,
    out,
    WR_PNTR_RD,
    S,
    \gnxpm_cdc.wr_pntr_bin_reg[7] ,
    \gnxpm_cdc.wr_pntr_bin_reg[10] ,
    prog_empty_thresh,
    rd_en);
  output almost_empty;
  output empty;
  output valid;
  output prog_empty;
  output [10:0]Q;
  output [9:0]\gc1.count_d2_reg[9] ;
  output tmp_ram_rd_en;
  output [0:0]E;
  input [4:0]v1_reg;
  input [4:0]v1_reg_0;
  input rd_clk;
  input [1:0]out;
  input [10:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  input [2:0]\gnxpm_cdc.wr_pntr_bin_reg[10] ;
  input [10:0]prog_empty_thresh;
  input rd_en;

  wire [0:0]E;
  wire [10:0]Q;
  wire [3:0]S;
  wire [10:0]WR_PNTR_RD;
  wire almost_empty;
  wire empty;
  wire [9:0]\gc1.count_d2_reg[9] ;
  wire [2:0]\gnxpm_cdc.wr_pntr_bin_reg[10] ;
  wire [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  wire \gr1.gr1_int.rfwft_n_0 ;
  wire [1:0]out;
  wire [0:0]p_0_in;
  wire p_0_out;
  wire p_2_out;
  wire p_7_out;
  wire prog_empty;
  wire [10:0]prog_empty_thresh;
  wire rd_clk;
  wire rd_en;
  wire rpntr_n_0;
  wire rpntr_n_12;
  wire tmp_ram_rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire valid;

  final_accelerator_VGA_IF_0_0_rd_fwft \gr1.gr1_int.rfwft 
       (.E(p_7_out),
        .almost_empty(almost_empty),
        .empty(empty),
        .\goreg_bm.dout_i_reg[11] (E),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (out),
        .out({\gr1.gr1_int.rfwft_n_0 ,p_0_in}),
        .p_0_out(p_0_out),
        .ram_empty_fb_i_reg(p_2_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .tmp_ram_rd_en(tmp_ram_rd_en),
        .valid(valid));
  final_accelerator_VGA_IF_0_0_rd_pe_as \gras.gpe.rdpe 
       (.S(S),
        .WR_PNTR_RD(WR_PNTR_RD[9:0]),
        .\gnxpm_cdc.wr_pntr_bin_reg[10] (\gnxpm_cdc.wr_pntr_bin_reg[10] ),
        .\gnxpm_cdc.wr_pntr_bin_reg[7] (\gnxpm_cdc.wr_pntr_bin_reg[7] ),
        .out(out[1]),
        .p_0_out(p_0_out),
        .prog_empty(prog_empty),
        .prog_empty_thresh(prog_empty_thresh),
        .ram_empty_fb_i_reg(p_2_out),
        .rd_clk(rd_clk));
  final_accelerator_VGA_IF_0_0_rd_status_flags_as \gras.rsts 
       (.\gc1.count_d1_reg[10] (rpntr_n_12),
        .\gc1.count_d2_reg[10] (rpntr_n_0),
        .\gpregsm1.curr_fwft_state_reg[1] ({\gr1.gr1_int.rfwft_n_0 ,p_0_in}),
        .\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] (out[1]),
        .out(p_2_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
  final_accelerator_VGA_IF_0_0_rd_bin_cntr rpntr
       (.E(p_7_out),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD[10]),
        .\gc1.count_d2_reg[9]_0 (\gc1.count_d2_reg[9] ),
        .out(out[1]),
        .ram_empty_fb_i_reg(rpntr_n_0),
        .ram_empty_fb_i_reg_0(rpntr_n_12),
        .rd_clk(rd_clk));
endmodule

module final_accelerator_VGA_IF_0_0_rd_pe_as
   (prog_empty,
    p_0_out,
    WR_PNTR_RD,
    S,
    \gnxpm_cdc.wr_pntr_bin_reg[7] ,
    \gnxpm_cdc.wr_pntr_bin_reg[10] ,
    rd_clk,
    out,
    prog_empty_thresh,
    ram_empty_fb_i_reg);
  output prog_empty;
  input p_0_out;
  input [9:0]WR_PNTR_RD;
  input [3:0]S;
  input [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  input [2:0]\gnxpm_cdc.wr_pntr_bin_reg[10] ;
  input rd_clk;
  input [0:0]out;
  input [10:0]prog_empty_thresh;
  input ram_empty_fb_i_reg;

  wire [3:0]S;
  wire [9:0]WR_PNTR_RD;
  wire [10:0]diff_pntr;
  wire [2:0]\gnxpm_cdc.wr_pntr_bin_reg[10] ;
  wire [3:0]\gnxpm_cdc.wr_pntr_bin_reg[7] ;
  wire \gpe3.gpe3b.prog_empty_i_i_1_n_0 ;
  wire leqOp;
  wire leqOp_carry__0_i_1_n_0;
  wire leqOp_carry__0_i_2_n_0;
  wire leqOp_carry__0_i_3_n_0;
  wire leqOp_carry__0_i_4_n_0;
  wire leqOp_carry__0_i_5_n_0;
  wire leqOp_carry__0_n_3;
  wire leqOp_carry_i_10_n_0;
  wire leqOp_carry_i_1_n_0;
  wire leqOp_carry_i_2_n_0;
  wire leqOp_carry_i_3_n_0;
  wire leqOp_carry_i_4_n_0;
  wire leqOp_carry_i_5_n_0;
  wire leqOp_carry_i_6_n_0;
  wire leqOp_carry_i_7_n_0;
  wire leqOp_carry_i_8_n_0;
  wire leqOp_carry_i_9_n_0;
  wire leqOp_carry_n_0;
  wire leqOp_carry_n_1;
  wire leqOp_carry_n_2;
  wire leqOp_carry_n_3;
  wire [0:0]out;
  wire p_0_out;
  wire [11:1]plusOp;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire prog_empty;
  wire [10:0]prog_empty_thresh;
  wire ram_empty_fb_i_reg;
  wire rd_clk;
  wire [3:0]NLW_leqOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_leqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_leqOp_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[10]),
        .Q(diff_pntr[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[11] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[11]),
        .Q(diff_pntr[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[1]),
        .Q(diff_pntr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[2]),
        .Q(diff_pntr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[3]),
        .Q(diff_pntr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[4]),
        .Q(diff_pntr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[5]),
        .Q(diff_pntr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[6]),
        .Q(diff_pntr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[7]),
        .Q(diff_pntr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[8]),
        .Q(diff_pntr[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(out),
        .D(plusOp[9]),
        .Q(diff_pntr[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gpe3.gpe3b.prog_empty_i_i_1 
       (.I0(prog_empty),
        .I1(ram_empty_fb_i_reg),
        .I2(leqOp),
        .O(\gpe3.gpe3b.prog_empty_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gpe3.gpe3b.prog_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gpe3.gpe3b.prog_empty_i_i_1_n_0 ),
        .PRE(out),
        .Q(prog_empty));
  CARRY4 leqOp_carry
       (.CI(1'b0),
        .CO({leqOp_carry_n_0,leqOp_carry_n_1,leqOp_carry_n_2,leqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({leqOp_carry_i_1_n_0,leqOp_carry_i_2_n_0,leqOp_carry_i_3_n_0,leqOp_carry_i_4_n_0}),
        .O(NLW_leqOp_carry_O_UNCONNECTED[3:0]),
        .S({leqOp_carry_i_5_n_0,leqOp_carry_i_6_n_0,leqOp_carry_i_7_n_0,leqOp_carry_i_8_n_0}));
  CARRY4 leqOp_carry__0
       (.CI(leqOp_carry_n_0),
        .CO({NLW_leqOp_carry__0_CO_UNCONNECTED[3:2],leqOp,leqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,leqOp_carry__0_i_1_n_0,leqOp_carry__0_i_2_n_0}),
        .O(NLW_leqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,leqOp_carry__0_i_3_n_0,leqOp_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h4444444444444441)) 
    leqOp_carry__0_i_1
       (.I0(diff_pntr[10]),
        .I1(prog_empty_thresh[10]),
        .I2(prog_empty_thresh[8]),
        .I3(leqOp_carry__0_i_5_n_0),
        .I4(prog_empty_thresh[7]),
        .I5(prog_empty_thresh[9]),
        .O(leqOp_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h44400001FFFD4443)) 
    leqOp_carry__0_i_2
       (.I0(diff_pntr[8]),
        .I1(prog_empty_thresh[8]),
        .I2(leqOp_carry__0_i_5_n_0),
        .I3(prog_empty_thresh[7]),
        .I4(prog_empty_thresh[9]),
        .I5(diff_pntr[9]),
        .O(leqOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    leqOp_carry__0_i_3
       (.I0(diff_pntr[10]),
        .I1(prog_empty_thresh[10]),
        .I2(prog_empty_thresh[8]),
        .I3(leqOp_carry__0_i_5_n_0),
        .I4(prog_empty_thresh[7]),
        .I5(prog_empty_thresh[9]),
        .O(leqOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9994000200029994)) 
    leqOp_carry__0_i_4
       (.I0(diff_pntr[8]),
        .I1(prog_empty_thresh[8]),
        .I2(leqOp_carry__0_i_5_n_0),
        .I3(prog_empty_thresh[7]),
        .I4(prog_empty_thresh[9]),
        .I5(diff_pntr[9]),
        .O(leqOp_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    leqOp_carry__0_i_5
       (.I0(prog_empty_thresh[5]),
        .I1(prog_empty_thresh[3]),
        .I2(prog_empty_thresh[1]),
        .I3(prog_empty_thresh[2]),
        .I4(prog_empty_thresh[4]),
        .I5(prog_empty_thresh[6]),
        .O(leqOp_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h4001FD43)) 
    leqOp_carry_i_1
       (.I0(diff_pntr[6]),
        .I1(prog_empty_thresh[6]),
        .I2(leqOp_carry_i_9_n_0),
        .I3(prog_empty_thresh[7]),
        .I4(diff_pntr[7]),
        .O(leqOp_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    leqOp_carry_i_10
       (.I0(prog_empty_thresh[2]),
        .I1(prog_empty_thresh[1]),
        .I2(prog_empty_thresh[3]),
        .O(leqOp_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h4001FD43)) 
    leqOp_carry_i_2
       (.I0(diff_pntr[4]),
        .I1(prog_empty_thresh[4]),
        .I2(leqOp_carry_i_10_n_0),
        .I3(prog_empty_thresh[5]),
        .I4(diff_pntr[5]),
        .O(leqOp_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h4001FD43)) 
    leqOp_carry_i_3
       (.I0(diff_pntr[2]),
        .I1(prog_empty_thresh[2]),
        .I2(prog_empty_thresh[1]),
        .I3(prog_empty_thresh[3]),
        .I4(diff_pntr[3]),
        .O(leqOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h022F)) 
    leqOp_carry_i_4
       (.I0(prog_empty_thresh[0]),
        .I1(diff_pntr[0]),
        .I2(prog_empty_thresh[1]),
        .I3(diff_pntr[1]),
        .O(leqOp_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h94020294)) 
    leqOp_carry_i_5
       (.I0(diff_pntr[6]),
        .I1(prog_empty_thresh[6]),
        .I2(leqOp_carry_i_9_n_0),
        .I3(prog_empty_thresh[7]),
        .I4(diff_pntr[7]),
        .O(leqOp_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h94020294)) 
    leqOp_carry_i_6
       (.I0(diff_pntr[4]),
        .I1(prog_empty_thresh[4]),
        .I2(leqOp_carry_i_10_n_0),
        .I3(prog_empty_thresh[5]),
        .I4(diff_pntr[5]),
        .O(leqOp_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h94020294)) 
    leqOp_carry_i_7
       (.I0(diff_pntr[2]),
        .I1(prog_empty_thresh[2]),
        .I2(prog_empty_thresh[1]),
        .I3(prog_empty_thresh[3]),
        .I4(diff_pntr[3]),
        .O(leqOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    leqOp_carry_i_8
       (.I0(prog_empty_thresh[0]),
        .I1(diff_pntr[0]),
        .I2(prog_empty_thresh[1]),
        .I3(diff_pntr[1]),
        .O(leqOp_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    leqOp_carry_i_9
       (.I0(prog_empty_thresh[4]),
        .I1(prog_empty_thresh[2]),
        .I2(prog_empty_thresh[1]),
        .I3(prog_empty_thresh[3]),
        .I4(prog_empty_thresh[5]),
        .O(leqOp_carry_i_9_n_0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(p_0_out),
        .DI(WR_PNTR_RD[3:0]),
        .O(plusOp[4:1]),
        .S(S));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(WR_PNTR_RD[7:4]),
        .O(plusOp[8:5]),
        .S(\gnxpm_cdc.wr_pntr_bin_reg[7] ));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,WR_PNTR_RD[9:8]}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],plusOp[11:9]}),
        .S({1'b0,\gnxpm_cdc.wr_pntr_bin_reg[10] }));
endmodule

module final_accelerator_VGA_IF_0_0_rd_status_flags_as
   (out,
    v1_reg,
    \gc1.count_d2_reg[10] ,
    v1_reg_0,
    \gc1.count_d1_reg[10] ,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ,
    rd_en,
    \gpregsm1.curr_fwft_state_reg[1] );
  output out;
  input [4:0]v1_reg;
  input \gc1.count_d2_reg[10] ;
  input [4:0]v1_reg_0;
  input \gc1.count_d1_reg[10] ;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  input rd_en;
  input [1:0]\gpregsm1.curr_fwft_state_reg[1] ;

  wire comp1;
  wire \gc1.count_d1_reg[10] ;
  wire \gc1.count_d2_reg[10] ;
  wire [1:0]\gpregsm1.curr_fwft_state_reg[1] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;
  wire rd_en;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;

  assign out = ram_empty_fb_i;
  final_accelerator_VGA_IF_0_0_compare_5 c0
       (.comp1(comp1),
        .\gc1.count_d2_reg[10] (\gc1.count_d2_reg[10] ),
        .\gpregsm1.curr_fwft_state_reg[1] (\gpregsm1.curr_fwft_state_reg[1] ),
        .out(ram_empty_fb_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_en(rd_en),
        .v1_reg(v1_reg));
  final_accelerator_VGA_IF_0_0_compare_6 c1
       (.comp1(comp1),
        .\gc1.count_d1_reg[10] (\gc1.count_d1_reg[10] ),
        .v1_reg_0(v1_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(ram_empty_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .PRE(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] ),
        .Q(ram_empty_i));
endmodule

module final_accelerator_VGA_IF_0_0_reset_blk_ramfifo
   (out,
    \gc1.count_reg[0] ,
    \grstd1.grst_full.grst_f.rst_d3_reg_0 ,
    WR_RST_BUSY,
    rd_clk,
    wr_clk,
    rst);
  output [1:0]out;
  output [2:0]\gc1.count_reg[0] ;
  output \grstd1.grst_full.grst_f.rst_d3_reg_0 ;
  output WR_RST_BUSY;
  input rd_clk;
  input wr_clk;
  input rst;

  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ;
  wire p_7_out;
  wire p_8_out;
  wire rd_clk;
  wire rd_rst_asreg;
  (* DONT_TOUCH *) wire [2:0]rd_rst_reg;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_rd_reg2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_wr_reg2;
  wire wr_clk;
  wire wr_rst_asreg;
  (* DONT_TOUCH *) wire [2:0]wr_rst_reg;

  assign WR_RST_BUSY = rst_d3;
  assign \gc1.count_reg[0] [2:0] = rd_rst_reg;
  assign \grstd1.grst_full.grst_f.rst_d3_reg_0  = rst_d2;
  assign out[1:0] = wr_rst_reg[1:0];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_wr_reg2),
        .Q(rst_d1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .PRE(rst_wr_reg2),
        .Q(rst_d2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d2),
        .PRE(rst_wr_reg2),
        .Q(rst_d3));
  final_accelerator_VGA_IF_0_0_synchronizer_ff \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst 
       (.in0(rd_rst_asreg),
        .\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ),
        .out(p_7_out),
        .rd_clk(rd_clk));
  final_accelerator_VGA_IF_0_0_synchronizer_ff_0 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst 
       (.in0(wr_rst_asreg),
        .\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg (\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ),
        .out(p_8_out),
        .wr_clk(wr_clk));
  final_accelerator_VGA_IF_0_0_synchronizer_ff_1 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .in0(rd_rst_asreg),
        .out(p_7_out),
        .rd_clk(rd_clk));
  final_accelerator_VGA_IF_0_0_synchronizer_ff_2 \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst 
       (.AS(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .in0(wr_rst_asreg),
        .out(p_8_out),
        .wr_clk(wr_clk));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst_n_1 ),
        .PRE(rst_rd_reg2),
        .Q(rd_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst_n_0 ),
        .Q(rd_rst_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_rd_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rst_rd_reg1),
        .PRE(rst),
        .Q(rst_rd_reg2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(rst_wr_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_wr_reg1),
        .PRE(rst),
        .Q(rst_wr_reg2));
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst_n_1 ),
        .PRE(rst_wr_reg2),
        .Q(wr_rst_asreg));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[0]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[1]));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst_n_0 ),
        .Q(wr_rst_reg[2]));
endmodule

module final_accelerator_VGA_IF_0_0_synchronizer_ff
   (out,
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ,
    in0,
    rd_clk);
  output out;
  output \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  input [0:0]in0;
  input rd_clk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ;
  wire rd_clk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module final_accelerator_VGA_IF_0_0_synchronizer_ff_0
   (out,
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ,
    in0,
    wr_clk);
  output out;
  output \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  input [0:0]in0;
  input wr_clk;

  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ;
  wire wr_clk;

  assign out = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(in0),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module final_accelerator_VGA_IF_0_0_synchronizer_ff_1
   (AS,
    out,
    rd_clk,
    in0);
  output [0:0]AS;
  input out;
  input rd_clk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire rd_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module final_accelerator_VGA_IF_0_0_synchronizer_ff_2
   (AS,
    out,
    wr_clk,
    in0);
  output [0:0]AS;
  input out;
  input wr_clk;
  input [0:0]in0;

  wire [0:0]AS;
  (* async_reg = "true" *) (* msgon = "true" *) wire Q_reg;
  wire [0:0]in0;
  wire out;
  wire wr_clk;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(out),
        .Q(Q_reg),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1 
       (.I0(in0),
        .I1(Q_reg),
        .O(AS));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized0
   (D,
    Q,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [10:0]D;
  input [10:0]Q;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [10:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [10:0]Q_reg;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire rd_clk;

  assign D[10:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[10]),
        .Q(Q_reg[10]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(Q[9]),
        .Q(Q_reg[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized1
   (D,
    Q,
    wr_clk,
    AR);
  output [10:0]D;
  input [10:0]Q;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [10:0]Q;
  (* async_reg = "true" *) (* msgon = "true" *) wire [10:0]Q_reg;
  wire wr_clk;

  assign D[10:0] = Q_reg;
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[10]),
        .Q(Q_reg[10]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[9]),
        .Q(Q_reg[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized2
   (out,
    \gnxpm_cdc.wr_pntr_bin_reg[9] ,
    D,
    rd_clk,
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] );
  output [0:0]out;
  output [9:0]\gnxpm_cdc.wr_pntr_bin_reg[9] ;
  input [10:0]D;
  input rd_clk;
  input [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;

  wire [10:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [10:0]Q_reg;
  wire \gnxpm_cdc.wr_pntr_bin[4]_i_2_n_0 ;
  wire [9:0]\gnxpm_cdc.wr_pntr_bin_reg[9] ;
  wire [0:0]\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ;
  wire rd_clk;

  assign out[0] = Q_reg[10];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[10] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[10]),
        .Q(Q_reg[10]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(rd_clk),
        .CE(1'b1),
        .CLR(\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] ),
        .D(D[9]),
        .Q(Q_reg[9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.wr_pntr_bin[0]_i_1 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(Q_reg[2]),
        .I3(\gnxpm_cdc.wr_pntr_bin_reg[9] [4]),
        .I4(Q_reg[3]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.wr_pntr_bin[1]_i_1 
       (.I0(Q_reg[2]),
        .I1(\gnxpm_cdc.wr_pntr_bin_reg[9] [4]),
        .I2(Q_reg[3]),
        .I3(Q_reg[1]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.wr_pntr_bin[2]_i_1 
       (.I0(Q_reg[3]),
        .I1(\gnxpm_cdc.wr_pntr_bin_reg[9] [4]),
        .I2(Q_reg[2]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[3]_i_1 
       (.I0(\gnxpm_cdc.wr_pntr_bin_reg[9] [4]),
        .I1(Q_reg[3]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[4]_i_1 
       (.I0(Q_reg[10]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(\gnxpm_cdc.wr_pntr_bin[4]_i_2_n_0 ),
        .I4(Q_reg[8]),
        .I5(Q_reg[9]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[4]_i_2 
       (.I0(Q_reg[6]),
        .I1(Q_reg[7]),
        .O(\gnxpm_cdc.wr_pntr_bin[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.wr_pntr_bin[5]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[5]),
        .I2(Q_reg[6]),
        .I3(Q_reg[10]),
        .I4(Q_reg[8]),
        .I5(Q_reg[9]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.wr_pntr_bin[6]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[6]),
        .I2(Q_reg[7]),
        .I3(Q_reg[10]),
        .I4(Q_reg[9]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.wr_pntr_bin[7]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[7]),
        .I2(Q_reg[10]),
        .I3(Q_reg[9]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.wr_pntr_bin[8]_i_1 
       (.I0(Q_reg[9]),
        .I1(Q_reg[8]),
        .I2(Q_reg[10]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.wr_pntr_bin[9]_i_1 
       (.I0(Q_reg[9]),
        .I1(Q_reg[10]),
        .O(\gnxpm_cdc.wr_pntr_bin_reg[9] [9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module final_accelerator_VGA_IF_0_0_synchronizer_ff__parameterized3
   (out,
    \gnxpm_cdc.rd_pntr_bin_reg[9] ,
    D,
    wr_clk,
    AR);
  output [0:0]out;
  output [9:0]\gnxpm_cdc.rd_pntr_bin_reg[9] ;
  input [10:0]D;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [10:0]D;
  (* async_reg = "true" *) (* msgon = "true" *) wire [10:0]Q_reg;
  wire \gnxpm_cdc.rd_pntr_bin[4]_i_2_n_0 ;
  wire [9:0]\gnxpm_cdc.rd_pntr_bin_reg[9] ;
  wire wr_clk;

  assign out[0] = Q_reg[10];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(Q_reg[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(Q_reg[10]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(Q_reg[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(Q_reg[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(Q_reg[3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(Q_reg[4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(Q_reg[5]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(Q_reg[6]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(Q_reg[7]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(Q_reg[8]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDCE #(
    .INIT(1'b0)) 
    \Q_reg_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(Q_reg[9]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.rd_pntr_bin[0]_i_1 
       (.I0(Q_reg[1]),
        .I1(Q_reg[0]),
        .I2(Q_reg[2]),
        .I3(\gnxpm_cdc.rd_pntr_bin_reg[9] [4]),
        .I4(Q_reg[3]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.rd_pntr_bin[1]_i_1 
       (.I0(Q_reg[2]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[9] [4]),
        .I2(Q_reg[3]),
        .I3(Q_reg[1]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [1]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.rd_pntr_bin[2]_i_1 
       (.I0(Q_reg[3]),
        .I1(\gnxpm_cdc.rd_pntr_bin_reg[9] [4]),
        .I2(Q_reg[2]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[3]_i_1 
       (.I0(\gnxpm_cdc.rd_pntr_bin_reg[9] [4]),
        .I1(Q_reg[3]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[4]_i_1 
       (.I0(Q_reg[10]),
        .I1(Q_reg[4]),
        .I2(Q_reg[5]),
        .I3(\gnxpm_cdc.rd_pntr_bin[4]_i_2_n_0 ),
        .I4(Q_reg[8]),
        .I5(Q_reg[9]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[4]_i_2 
       (.I0(Q_reg[6]),
        .I1(Q_reg[7]),
        .O(\gnxpm_cdc.rd_pntr_bin[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \gnxpm_cdc.rd_pntr_bin[5]_i_1 
       (.I0(Q_reg[7]),
        .I1(Q_reg[5]),
        .I2(Q_reg[6]),
        .I3(Q_reg[10]),
        .I4(Q_reg[8]),
        .I5(Q_reg[9]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \gnxpm_cdc.rd_pntr_bin[6]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[6]),
        .I2(Q_reg[7]),
        .I3(Q_reg[10]),
        .I4(Q_reg[9]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \gnxpm_cdc.rd_pntr_bin[7]_i_1 
       (.I0(Q_reg[8]),
        .I1(Q_reg[7]),
        .I2(Q_reg[10]),
        .I3(Q_reg[9]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [7]));
  LUT3 #(
    .INIT(8'h96)) 
    \gnxpm_cdc.rd_pntr_bin[8]_i_1 
       (.I0(Q_reg[9]),
        .I1(Q_reg[8]),
        .I2(Q_reg[10]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \gnxpm_cdc.rd_pntr_bin[9]_i_1 
       (.I0(Q_reg[9]),
        .I1(Q_reg[10]),
        .O(\gnxpm_cdc.rd_pntr_bin_reg[9] [9]));
endmodule

module final_accelerator_VGA_IF_0_0_wr_bin_cntr
   (S,
    Q,
    \gdiff.diff_pntr_pad_reg[8] ,
    \gdiff.diff_pntr_pad_reg[11] ,
    \gic0.gc1.count_d1_reg[10]_0 ,
    v1_reg,
    v1_reg_0,
    v1_reg_1,
    \gic0.gc1.count_d2_reg[10]_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    RD_PNTR_WR,
    E,
    wr_clk,
    AR);
  output [3:0]S;
  output [10:0]Q;
  output [3:0]\gdiff.diff_pntr_pad_reg[8] ;
  output [2:0]\gdiff.diff_pntr_pad_reg[11] ;
  output [0:0]\gic0.gc1.count_d1_reg[10]_0 ;
  output [4:0]v1_reg;
  output [4:0]v1_reg_0;
  output [4:0]v1_reg_1;
  output [0:0]\gic0.gc1.count_d2_reg[10]_0 ;
  output [10:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input [10:0]RD_PNTR_WR;
  input [0:0]E;
  input wr_clk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [10:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]E;
  wire [10:0]Q;
  wire [10:0]RD_PNTR_WR;
  wire [3:0]S;
  wire [2:0]\gdiff.diff_pntr_pad_reg[11] ;
  wire [3:0]\gdiff.diff_pntr_pad_reg[8] ;
  wire \gic0.gc1.count[10]_i_2_n_0 ;
  wire [0:0]\gic0.gc1.count_d1_reg[10]_0 ;
  wire [0:0]\gic0.gc1.count_d2_reg[10]_0 ;
  wire [10:0]plusOp__1;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;
  wire wr_clk;
  wire [9:0]wr_pntr_plus2;
  wire [9:0]wr_pntr_plus3;

  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc1.count[0]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .O(plusOp__1[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc1.count[10]_i_1 
       (.I0(wr_pntr_plus3[8]),
        .I1(wr_pntr_plus3[6]),
        .I2(\gic0.gc1.count[10]_i_2_n_0 ),
        .I3(wr_pntr_plus3[7]),
        .I4(wr_pntr_plus3[9]),
        .I5(\gic0.gc1.count_d1_reg[10]_0 ),
        .O(plusOp__1[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc1.count[10]_i_2 
       (.I0(wr_pntr_plus3[5]),
        .I1(wr_pntr_plus3[3]),
        .I2(wr_pntr_plus3[1]),
        .I3(wr_pntr_plus3[0]),
        .I4(wr_pntr_plus3[2]),
        .I5(wr_pntr_plus3[4]),
        .O(\gic0.gc1.count[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[1]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .I1(wr_pntr_plus3[1]),
        .O(plusOp__1[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[2]_i_1 
       (.I0(wr_pntr_plus3[0]),
        .I1(wr_pntr_plus3[1]),
        .I2(wr_pntr_plus3[2]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[3]_i_1 
       (.I0(wr_pntr_plus3[1]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[2]),
        .I3(wr_pntr_plus3[3]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc1.count[4]_i_1 
       (.I0(wr_pntr_plus3[2]),
        .I1(wr_pntr_plus3[0]),
        .I2(wr_pntr_plus3[1]),
        .I3(wr_pntr_plus3[3]),
        .I4(wr_pntr_plus3[4]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc1.count[5]_i_1 
       (.I0(wr_pntr_plus3[3]),
        .I1(wr_pntr_plus3[1]),
        .I2(wr_pntr_plus3[0]),
        .I3(wr_pntr_plus3[2]),
        .I4(wr_pntr_plus3[4]),
        .I5(wr_pntr_plus3[5]),
        .O(plusOp__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[6]_i_1 
       (.I0(\gic0.gc1.count[10]_i_2_n_0 ),
        .I1(wr_pntr_plus3[6]),
        .O(plusOp__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[7]_i_1 
       (.I0(\gic0.gc1.count[10]_i_2_n_0 ),
        .I1(wr_pntr_plus3[6]),
        .I2(wr_pntr_plus3[7]),
        .O(plusOp__1[7]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[8]_i_1 
       (.I0(wr_pntr_plus3[6]),
        .I1(\gic0.gc1.count[10]_i_2_n_0 ),
        .I2(wr_pntr_plus3[7]),
        .I3(wr_pntr_plus3[8]),
        .O(plusOp__1[8]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc1.count[9]_i_1 
       (.I0(wr_pntr_plus3[7]),
        .I1(\gic0.gc1.count[10]_i_2_n_0 ),
        .I2(wr_pntr_plus3[6]),
        .I3(wr_pntr_plus3[8]),
        .I4(wr_pntr_plus3[9]),
        .O(plusOp__1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[0]),
        .Q(wr_pntr_plus2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc1.count_d1_reg[10]_0 ),
        .Q(\gic0.gc1.count_d2_reg[10]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus3[1]),
        .PRE(AR),
        .Q(wr_pntr_plus2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[2]),
        .Q(wr_pntr_plus2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[3]),
        .Q(wr_pntr_plus2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[4]),
        .Q(wr_pntr_plus2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[5]),
        .Q(wr_pntr_plus2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[6]),
        .Q(wr_pntr_plus2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[7]),
        .Q(wr_pntr_plus2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[8]),
        .Q(wr_pntr_plus2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus3[9]),
        .Q(wr_pntr_plus2[9]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[0]),
        .PRE(AR),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(\gic0.gc1.count_d2_reg[10]_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[8]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus2[9]),
        .Q(Q[9]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[10]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [10]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[5]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[6]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[7]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[8]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(Q[9]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram [9]));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__1[0]),
        .PRE(AR),
        .Q(wr_pntr_plus3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[10] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[10]),
        .Q(\gic0.gc1.count_d1_reg[10]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__1[1]),
        .PRE(AR),
        .Q(wr_pntr_plus3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[2]),
        .Q(wr_pntr_plus3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[3]),
        .Q(wr_pntr_plus3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[4]),
        .Q(wr_pntr_plus3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[5]),
        .Q(wr_pntr_plus3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[6]),
        .Q(wr_pntr_plus3[6]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[7]),
        .Q(wr_pntr_plus3[7]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[8]),
        .Q(wr_pntr_plus3[8]));
  FDCE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[9] 
       (.C(wr_clk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__1[9]),
        .Q(wr_pntr_plus3[9]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(Q[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(wr_pntr_plus2[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(wr_pntr_plus2[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__3 
       (.I0(wr_pntr_plus3[0]),
        .I1(RD_PNTR_WR[0]),
        .I2(wr_pntr_plus3[1]),
        .I3(RD_PNTR_WR[1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(Q[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus2[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__3 
       (.I0(wr_pntr_plus3[2]),
        .I1(RD_PNTR_WR[2]),
        .I2(wr_pntr_plus3[3]),
        .I3(RD_PNTR_WR[3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(Q[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(wr_pntr_plus2[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__3 
       (.I0(wr_pntr_plus3[4]),
        .I1(RD_PNTR_WR[4]),
        .I2(wr_pntr_plus3[5]),
        .I3(RD_PNTR_WR[5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(Q[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(wr_pntr_plus2[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__3 
       (.I0(wr_pntr_plus3[6]),
        .I1(RD_PNTR_WR[6]),
        .I2(wr_pntr_plus3[7]),
        .I3(RD_PNTR_WR[7]),
        .O(v1_reg_1[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(Q[8]),
        .I1(RD_PNTR_WR[8]),
        .I2(Q[9]),
        .I3(RD_PNTR_WR[9]),
        .O(v1_reg[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(wr_pntr_plus2[8]),
        .I1(RD_PNTR_WR[8]),
        .I2(wr_pntr_plus2[9]),
        .I3(RD_PNTR_WR[9]),
        .O(v1_reg_0[4]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[4].gms.ms_i_1__3 
       (.I0(wr_pntr_plus3[8]),
        .I1(RD_PNTR_WR[8]),
        .I2(wr_pntr_plus3[9]),
        .I3(RD_PNTR_WR[9]),
        .O(v1_reg_1[4]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_1__0
       (.I0(Q[7]),
        .I1(RD_PNTR_WR[7]),
        .O(\gdiff.diff_pntr_pad_reg[8] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_2__0
       (.I0(Q[6]),
        .I1(RD_PNTR_WR[6]),
        .O(\gdiff.diff_pntr_pad_reg[8] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_3__0
       (.I0(Q[5]),
        .I1(RD_PNTR_WR[5]),
        .O(\gdiff.diff_pntr_pad_reg[8] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__0_i_4__0
       (.I0(Q[4]),
        .I1(RD_PNTR_WR[4]),
        .O(\gdiff.diff_pntr_pad_reg[8] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__1_i_1__0
       (.I0(Q[10]),
        .I1(RD_PNTR_WR[10]),
        .O(\gdiff.diff_pntr_pad_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__1_i_2__0
       (.I0(Q[9]),
        .I1(RD_PNTR_WR[9]),
        .O(\gdiff.diff_pntr_pad_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry__1_i_3__0
       (.I0(Q[8]),
        .I1(RD_PNTR_WR[8]),
        .O(\gdiff.diff_pntr_pad_reg[11] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_1__0
       (.I0(Q[3]),
        .I1(RD_PNTR_WR[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_2__0
       (.I0(Q[2]),
        .I1(RD_PNTR_WR[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_3__0
       (.I0(Q[1]),
        .I1(RD_PNTR_WR[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    plusOp_carry_i_4__0
       (.I0(Q[0]),
        .I1(RD_PNTR_WR[0]),
        .O(S[0]));
endmodule

module final_accelerator_VGA_IF_0_0_wr_logic
   (full,
    almost_full,
    prog_full,
    Q,
    WEA,
    \gic0.gc1.count_d2_reg[10] ,
    \gic0.gc1.count_d1_reg[10] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    \gnxpm_cdc.rd_pntr_bin_reg[10] ,
    \gnxpm_cdc.rd_pntr_bin_reg[10]_0 ,
    \gnxpm_cdc.rd_pntr_bin_reg[10]_1 ,
    wr_clk,
    out,
    RD_PNTR_WR,
    wr_en,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    prog_full_thresh,
    AR);
  output full;
  output almost_full;
  output prog_full;
  output [0:0]Q;
  output [0:0]WEA;
  output [0:0]\gic0.gc1.count_d2_reg[10] ;
  output [0:0]\gic0.gc1.count_d1_reg[10] ;
  output [10:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  input \gnxpm_cdc.rd_pntr_bin_reg[10]_0 ;
  input \gnxpm_cdc.rd_pntr_bin_reg[10]_1 ;
  input wr_clk;
  input out;
  input [10:0]RD_PNTR_WR;
  input wr_en;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input [10:0]prog_full_thresh;
  input [0:0]AR;

  wire [0:0]AR;
  wire [10:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire [0:0]Q;
  wire [10:0]RD_PNTR_WR;
  wire [0:0]WEA;
  wire almost_full;
  wire [4:0]\c1/v1_reg ;
  wire [4:0]\c2/v1_reg ;
  wire full;
  wire [4:0]\gaf.c3/v1_reg ;
  wire [0:0]\gic0.gc1.count_d1_reg[10] ;
  wire [0:0]\gic0.gc1.count_d2_reg[10] ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10]_0 ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10]_1 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire \gwas.wsts_n_1 ;
  wire out;
  wire [9:0]p_13_out;
  wire prog_full;
  wire [10:0]prog_full_thresh;
  wire wpntr_n_0;
  wire wpntr_n_1;
  wire wpntr_n_15;
  wire wpntr_n_16;
  wire wpntr_n_17;
  wire wpntr_n_18;
  wire wpntr_n_19;
  wire wpntr_n_2;
  wire wpntr_n_20;
  wire wpntr_n_21;
  wire wpntr_n_3;
  wire wr_clk;
  wire wr_en;

  final_accelerator_VGA_IF_0_0_wr_pf_as \gwas.gpf.wrpf 
       (.AR(AR),
        .E(WEA),
        .Q(p_13_out),
        .S({wpntr_n_0,wpntr_n_1,wpntr_n_2,wpntr_n_3}),
        .\gic0.gc1.count_d2_reg[10] ({wpntr_n_19,wpntr_n_20,wpntr_n_21}),
        .\gic0.gc1.count_d2_reg[7] ({wpntr_n_15,wpntr_n_16,wpntr_n_17,wpntr_n_18}),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(out),
        .prog_full(prog_full),
        .prog_full_thresh(prog_full_thresh),
        .ram_full_fb_i_reg(\gwas.wsts_n_1 ),
        .wr_clk(wr_clk));
  final_accelerator_VGA_IF_0_0_wr_status_flags_as \gwas.wsts 
       (.E(WEA),
        .almost_full(almost_full),
        .full(full),
        .\gnxpm_cdc.rd_pntr_bin_reg[10] (\gnxpm_cdc.rd_pntr_bin_reg[10] ),
        .\gnxpm_cdc.rd_pntr_bin_reg[10]_0 (\gnxpm_cdc.rd_pntr_bin_reg[10]_0 ),
        .\gnxpm_cdc.rd_pntr_bin_reg[10]_1 (\gnxpm_cdc.rd_pntr_bin_reg[10]_1 ),
        .\grstd1.grst_full.grst_f.rst_d2_reg (out),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(\gwas.wsts_n_1 ),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .v1_reg_1(\gaf.c3/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  final_accelerator_VGA_IF_0_0_wr_bin_cntr wpntr
       (.AR(AR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .E(WEA),
        .Q({Q,p_13_out}),
        .RD_PNTR_WR(RD_PNTR_WR),
        .S({wpntr_n_0,wpntr_n_1,wpntr_n_2,wpntr_n_3}),
        .\gdiff.diff_pntr_pad_reg[11] ({wpntr_n_19,wpntr_n_20,wpntr_n_21}),
        .\gdiff.diff_pntr_pad_reg[8] ({wpntr_n_15,wpntr_n_16,wpntr_n_17,wpntr_n_18}),
        .\gic0.gc1.count_d1_reg[10]_0 (\gic0.gc1.count_d1_reg[10] ),
        .\gic0.gc1.count_d2_reg[10]_0 (\gic0.gc1.count_d2_reg[10] ),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .v1_reg_1(\gaf.c3/v1_reg ),
        .wr_clk(wr_clk));
endmodule

module final_accelerator_VGA_IF_0_0_wr_pf_as
   (prog_full,
    wr_clk,
    out,
    E,
    Q,
    S,
    \gic0.gc1.count_d2_reg[7] ,
    \gic0.gc1.count_d2_reg[10] ,
    prog_full_thresh,
    \grstd1.grst_full.grst_f.rst_d3_reg ,
    ram_full_fb_i_reg,
    AR);
  output prog_full;
  input wr_clk;
  input out;
  input [0:0]E;
  input [9:0]Q;
  input [3:0]S;
  input [3:0]\gic0.gc1.count_d2_reg[7] ;
  input [2:0]\gic0.gc1.count_d2_reg[10] ;
  input [10:0]prog_full_thresh;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;
  input ram_full_fb_i_reg;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [9:0]Q;
  wire [3:0]S;
  wire \gdiff.diff_pntr_pad_reg_n_0_[10] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[11] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[1] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[2] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[3] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[4] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[5] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[6] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[7] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[8] ;
  wire \gdiff.diff_pntr_pad_reg_n_0_[9] ;
  wire geqOp;
  wire geqOp_carry__0_i_1_n_0;
  wire geqOp_carry__0_i_2_n_0;
  wire geqOp_carry__0_i_3_n_0;
  wire geqOp_carry__0_i_4_n_0;
  wire geqOp_carry__0_i_5_n_0;
  wire geqOp_carry__0_n_3;
  wire geqOp_carry_i_10_n_0;
  wire geqOp_carry_i_1_n_0;
  wire geqOp_carry_i_2_n_0;
  wire geqOp_carry_i_3_n_0;
  wire geqOp_carry_i_4_n_0;
  wire geqOp_carry_i_5_n_0;
  wire geqOp_carry_i_6_n_0;
  wire geqOp_carry_i_7_n_0;
  wire geqOp_carry_i_8_n_0;
  wire geqOp_carry_i_9_n_0;
  wire geqOp_carry_n_0;
  wire geqOp_carry_n_1;
  wire geqOp_carry_n_2;
  wire geqOp_carry_n_3;
  wire [2:0]\gic0.gc1.count_d2_reg[10] ;
  wire [3:0]\gic0.gc1.count_d2_reg[7] ;
  wire \gpf3.gpf3a.prog_full_i_i_1_n_0 ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  wire out;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__0_n_4;
  wire plusOp_carry__0_n_5;
  wire plusOp_carry__0_n_6;
  wire plusOp_carry__0_n_7;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__1_n_5;
  wire plusOp_carry__1_n_6;
  wire plusOp_carry__1_n_7;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire plusOp_carry_n_4;
  wire plusOp_carry_n_5;
  wire plusOp_carry_n_6;
  wire plusOp_carry_n_7;
  wire prog_full;
  wire [10:0]prog_full_thresh;
  wire ram_full_fb_i_reg;
  wire wr_clk;
  wire [3:0]NLW_geqOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_geqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;

  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[10] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__1_n_6),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[11] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__1_n_5),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_7),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_6),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_5),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry_n_4),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_7),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[6] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_6),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[7] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_5),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[8] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__0_n_4),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \gdiff.diff_pntr_pad_reg[9] 
       (.C(wr_clk),
        .CE(1'b1),
        .CLR(AR),
        .D(plusOp_carry__1_n_7),
        .Q(\gdiff.diff_pntr_pad_reg_n_0_[9] ));
  CARRY4 geqOp_carry
       (.CI(1'b0),
        .CO({geqOp_carry_n_0,geqOp_carry_n_1,geqOp_carry_n_2,geqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({geqOp_carry_i_1_n_0,geqOp_carry_i_2_n_0,geqOp_carry_i_3_n_0,geqOp_carry_i_4_n_0}),
        .O(NLW_geqOp_carry_O_UNCONNECTED[3:0]),
        .S({geqOp_carry_i_5_n_0,geqOp_carry_i_6_n_0,geqOp_carry_i_7_n_0,geqOp_carry_i_8_n_0}));
  CARRY4 geqOp_carry__0
       (.CI(geqOp_carry_n_0),
        .CO({NLW_geqOp_carry__0_CO_UNCONNECTED[3:2],geqOp,geqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,geqOp_carry__0_i_1_n_0,geqOp_carry__0_i_2_n_0}),
        .O(NLW_geqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,geqOp_carry__0_i_3_n_0,geqOp_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h5555555600000000)) 
    geqOp_carry__0_i_1
       (.I0(prog_full_thresh[10]),
        .I1(prog_full_thresh[8]),
        .I2(geqOp_carry__0_i_5_n_0),
        .I3(prog_full_thresh[7]),
        .I4(prog_full_thresh[9]),
        .I5(\gdiff.diff_pntr_pad_reg_n_0_[11] ),
        .O(geqOp_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0808088CCECECEE0)) 
    geqOp_carry__0_i_2
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[9] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[10] ),
        .I2(prog_full_thresh[8]),
        .I3(geqOp_carry__0_i_5_n_0),
        .I4(prog_full_thresh[7]),
        .I5(prog_full_thresh[9]),
        .O(geqOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    geqOp_carry__0_i_3
       (.I0(prog_full_thresh[10]),
        .I1(prog_full_thresh[8]),
        .I2(geqOp_carry__0_i_5_n_0),
        .I3(prog_full_thresh[7]),
        .I4(prog_full_thresh[9]),
        .I5(\gdiff.diff_pntr_pad_reg_n_0_[11] ),
        .O(geqOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8484844221212118)) 
    geqOp_carry__0_i_4
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[9] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[10] ),
        .I2(prog_full_thresh[8]),
        .I3(geqOp_carry__0_i_5_n_0),
        .I4(prog_full_thresh[7]),
        .I5(prog_full_thresh[9]),
        .O(geqOp_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    geqOp_carry__0_i_5
       (.I0(prog_full_thresh[5]),
        .I1(prog_full_thresh[3]),
        .I2(prog_full_thresh[1]),
        .I3(prog_full_thresh[2]),
        .I4(prog_full_thresh[4]),
        .I5(prog_full_thresh[6]),
        .O(geqOp_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    geqOp_carry_i_1
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[7] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[8] ),
        .I2(prog_full_thresh[6]),
        .I3(geqOp_carry_i_9_n_0),
        .I4(prog_full_thresh[7]),
        .O(geqOp_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    geqOp_carry_i_10
       (.I0(prog_full_thresh[2]),
        .I1(prog_full_thresh[1]),
        .I2(prog_full_thresh[3]),
        .O(geqOp_carry_i_10_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    geqOp_carry_i_2
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[5] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[6] ),
        .I2(prog_full_thresh[4]),
        .I3(geqOp_carry_i_10_n_0),
        .I4(prog_full_thresh[5]),
        .O(geqOp_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h088CCEE0)) 
    geqOp_carry_i_3
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[3] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[4] ),
        .I2(prog_full_thresh[2]),
        .I3(prog_full_thresh[1]),
        .I4(prog_full_thresh[3]),
        .O(geqOp_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hF220)) 
    geqOp_carry_i_4
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[1] ),
        .I1(prog_full_thresh[0]),
        .I2(\gdiff.diff_pntr_pad_reg_n_0_[2] ),
        .I3(prog_full_thresh[1]),
        .O(geqOp_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h84422118)) 
    geqOp_carry_i_5
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[7] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[8] ),
        .I2(prog_full_thresh[6]),
        .I3(geqOp_carry_i_9_n_0),
        .I4(prog_full_thresh[7]),
        .O(geqOp_carry_i_5_n_0));
  LUT5 #(
    .INIT(32'h84422118)) 
    geqOp_carry_i_6
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[5] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[6] ),
        .I2(prog_full_thresh[4]),
        .I3(geqOp_carry_i_10_n_0),
        .I4(prog_full_thresh[5]),
        .O(geqOp_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h84422118)) 
    geqOp_carry_i_7
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[3] ),
        .I1(\gdiff.diff_pntr_pad_reg_n_0_[4] ),
        .I2(prog_full_thresh[2]),
        .I3(prog_full_thresh[1]),
        .I4(prog_full_thresh[3]),
        .O(geqOp_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h0990)) 
    geqOp_carry_i_8
       (.I0(\gdiff.diff_pntr_pad_reg_n_0_[1] ),
        .I1(prog_full_thresh[0]),
        .I2(\gdiff.diff_pntr_pad_reg_n_0_[2] ),
        .I3(prog_full_thresh[1]),
        .O(geqOp_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    geqOp_carry_i_9
       (.I0(prog_full_thresh[4]),
        .I1(prog_full_thresh[2]),
        .I2(prog_full_thresh[1]),
        .I3(prog_full_thresh[3]),
        .I4(prog_full_thresh[5]),
        .O(geqOp_carry_i_9_n_0));
  LUT4 #(
    .INIT(16'h3202)) 
    \gpf3.gpf3a.prog_full_i_i_1 
       (.I0(geqOp),
        .I1(\grstd1.grst_full.grst_f.rst_d3_reg ),
        .I2(ram_full_fb_i_reg),
        .I3(prog_full),
        .O(\gpf3.gpf3a.prog_full_i_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \gpf3.gpf3a.prog_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gpf3.gpf3a.prog_full_i_i_1_n_0 ),
        .PRE(out),
        .Q(prog_full));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(E),
        .DI(Q[3:0]),
        .O({plusOp_carry_n_4,plusOp_carry_n_5,plusOp_carry_n_6,plusOp_carry_n_7}),
        .S(S));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O({plusOp_carry__0_n_4,plusOp_carry__0_n_5,plusOp_carry__0_n_6,plusOp_carry__0_n_7}),
        .S(\gic0.gc1.count_d2_reg[7] ));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[9:8]}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],plusOp_carry__1_n_5,plusOp_carry__1_n_6,plusOp_carry__1_n_7}),
        .S({1'b0,\gic0.gc1.count_d2_reg[10] }));
endmodule

module final_accelerator_VGA_IF_0_0_wr_status_flags_as
   (full,
    out,
    almost_full,
    E,
    v1_reg,
    \gnxpm_cdc.rd_pntr_bin_reg[10] ,
    v1_reg_0,
    \gnxpm_cdc.rd_pntr_bin_reg[10]_0 ,
    v1_reg_1,
    \gnxpm_cdc.rd_pntr_bin_reg[10]_1 ,
    wr_clk,
    \grstd1.grst_full.grst_f.rst_d2_reg ,
    wr_en,
    \grstd1.grst_full.grst_f.rst_d3_reg );
  output full;
  output out;
  output almost_full;
  output [0:0]E;
  input [4:0]v1_reg;
  input \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  input [4:0]v1_reg_0;
  input \gnxpm_cdc.rd_pntr_bin_reg[10]_0 ;
  input [4:0]v1_reg_1;
  input \gnxpm_cdc.rd_pntr_bin_reg[10]_1 ;
  input wr_clk;
  input \grstd1.grst_full.grst_f.rst_d2_reg ;
  input wr_en;
  input \grstd1.grst_full.grst_f.rst_d3_reg ;

  wire [0:0]E;
  wire almost_full;
  wire c2_n_1;
  wire comp1;
  wire comp2;
  wire \gaf.c3_n_0 ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10] ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10]_0 ;
  wire \gnxpm_cdc.rd_pntr_bin_reg[10]_1 ;
  wire \grstd1.grst_full.grst_f.rst_d2_reg ;
  wire \grstd1.grst_full.grst_f.rst_d3_reg ;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  (* DONT_TOUCH *) wire ram_full_i;
  wire [4:0]v1_reg;
  wire [4:0]v1_reg_0;
  wire [4:0]v1_reg_1;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  final_accelerator_VGA_IF_0_0_compare c1
       (.comp1(comp1),
        .\gnxpm_cdc.rd_pntr_bin_reg[10] (\gnxpm_cdc.rd_pntr_bin_reg[10] ),
        .v1_reg(v1_reg));
  final_accelerator_VGA_IF_0_0_compare_3 c2
       (.comp1(comp1),
        .comp2(comp2),
        .\gnxpm_cdc.rd_pntr_bin_reg[10] (\gnxpm_cdc.rd_pntr_bin_reg[10]_0 ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(ram_full_fb_i),
        .ram_full_i_reg(c2_n_1),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  final_accelerator_VGA_IF_0_0_compare_4 \gaf.c3 
       (.almost_full(almost_full),
        .comp2(comp2),
        .\gaf.ram_almost_full_i_reg (\gaf.c3_n_0 ),
        .\gnxpm_cdc.rd_pntr_bin_reg[10] (\gnxpm_cdc.rd_pntr_bin_reg[10]_1 ),
        .\grstd1.grst_full.grst_f.rst_d3_reg (\grstd1.grst_full.grst_f.rst_d3_reg ),
        .out(ram_full_fb_i),
        .v1_reg_1(v1_reg_1),
        .wr_en(wr_en));
  FDPE #(
    .INIT(1'b1)) 
    \gaf.ram_almost_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gaf.c3_n_0 ),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(almost_full));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_1),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_fb_i));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_1),
        .PRE(\grstd1.grst_full.grst_f.rst_d2_reg ),
        .Q(ram_full_i));
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
