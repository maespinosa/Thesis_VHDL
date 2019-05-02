-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:Softmax_Layer_32bit:1.0
-- IP Revision: 22

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY neural_net_accelerator_Softmax_Layer_32bit_0_0 IS
  PORT (
    o_softmax_complete : OUT STD_LOGIC;
    o_cycle : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    o_epoch : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    ila_smax_exp_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_smax_exp_valid_result : OUT STD_LOGIC;
    ila_smax_exp_function_ready : OUT STD_LOGIC;
    ila_smax_exp_step_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_exp_multiplication_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_exp_hold_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_exp_sum_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_exp_multiplicand_a : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_multiplicand_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_product : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_augend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_addend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_sum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_data_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_mult_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_fifo_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_fifo_wr_en : OUT STD_LOGIC;
    ila_smax_exp_exp_done : OUT STD_LOGIC;
    ila_smax_aw_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_smax_aw_addend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_aw_augend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_aw_sum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_aw_rd_en : OUT STD_LOGIC;
    ila_smax_aw_summing_complete : OUT STD_LOGIC;
    ila_smax_aw_hold_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_aw_sum_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_smax_aw_sum_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_aw_sum_result_valid : OUT STD_LOGIC;
    ila_smax_dw_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_smax_dw_divisor : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_dw_dividend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_dw_quotient : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_dw_rd_en : OUT STD_LOGIC;
    ila_smax_dw_division_complete : OUT STD_LOGIC;
    ila_smax_dw_hold_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_dw_quotient_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_smax_dw_division_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_dw_quotient_result_valid : OUT STD_LOGIC;
    ila_smax_ctrlr_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_smax_ctrlr_exp_input : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_ctrlr_exp_input_valid : OUT STD_LOGIC;
    ila_smax_ctrlr_controller_ready : OUT STD_LOGIC;
    ila_smax_ctrlr_exp_fifo_select : OUT STD_LOGIC;
    ila_smax_ctrlr_exp_complete : OUT STD_LOGIC;
    ila_smax_ctrlr_element_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_smax_ctrlr_softmax_complete : OUT STD_LOGIC;
    ila_smax_ctrlr_clear_all : OUT STD_LOGIC;
    ila_smax_ctrlr_busy : OUT STD_LOGIC;
    ila_smax_inbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_inbuff_wr_en : OUT STD_LOGIC;
    ila_smax_inbuff_rd_en : OUT STD_LOGIC;
    ila_smax_inbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_inbuff_full : OUT STD_LOGIC;
    ila_smax_inbuff_almost_full : OUT STD_LOGIC;
    ila_smax_inbuff_empty : OUT STD_LOGIC;
    ila_smax_inbuff_almost_empty : OUT STD_LOGIC;
    ila_smax_inbuff_valid : OUT STD_LOGIC;
    ila_smax_outbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_outbuff_wr_en : OUT STD_LOGIC;
    ila_smax_outbuff_rd_en : OUT STD_LOGIC;
    ila_smax_outbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_outbuff_full : OUT STD_LOGIC;
    ila_smax_outbuff_almost_full : OUT STD_LOGIC;
    ila_smax_outbuff_empty : OUT STD_LOGIC;
    ila_smax_outbuff_almost_empty : OUT STD_LOGIC;
    ila_smax_outbuff_valid : OUT STD_LOGIC;
    ila_smax_exp_mux_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_mux_wr_en : OUT STD_LOGIC;
    ila_smax_exp_fifo_rd_en : OUT STD_LOGIC;
    ila_smax_exp_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_exp_fifo_full : OUT STD_LOGIC;
    ila_smax_exp_fifo_almost_full : OUT STD_LOGIC;
    ila_smax_exp_fifo_empty : OUT STD_LOGIC;
    ila_smax_exp_fifo_almost_empty : OUT STD_LOGIC;
    ila_smax_exp_fifo_valid : OUT STD_LOGIC;
    ila_smax_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_axi_awready : OUT STD_LOGIC;
    ila_smax_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_axi_awvalid : OUT STD_LOGIC;
    ila_smax_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_axi_wready : OUT STD_LOGIC;
    ila_smax_axi_wlast : OUT STD_LOGIC;
    ila_smax_axi_wvalid : OUT STD_LOGIC;
    ila_smax_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_smax_axi_bready : OUT STD_LOGIC;
    ila_smax_axi_bvalid : OUT STD_LOGIC;
    ila_smax_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_axi_arvalid : OUT STD_LOGIC;
    ila_smax_axi_rready : OUT STD_LOGIC;
    ila_smax_axi_arready : OUT STD_LOGIC;
    ila_smax_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_axi_rlast : OUT STD_LOGIC;
    ila_smax_axi_rvalid : OUT STD_LOGIC;
    ila_smax_wbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_rbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_num_elements : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_smax_input_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_output_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_smax_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_smax_writes_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_smax_reads_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_smax_calculated : OUT STD_LOGIC;
    ila_smax_more_bursts_needed : OUT STD_LOGIC;
    ila_smax_data_loaded : OUT STD_LOGIC;
    ila_smax_class_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_smax_master_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    m00_axi_txn_done : OUT STD_LOGIC;
    m00_axi_error : OUT STD_LOGIC;
    m00_axi_aclk : IN STD_LOGIC;
    m00_axi_aresetn : IN STD_LOGIC;
    m00_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_awlock : OUT STD_LOGIC;
    m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_awvalid : OUT STD_LOGIC;
    m00_axi_awready : IN STD_LOGIC;
    m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_wlast : OUT STD_LOGIC;
    m00_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_wvalid : OUT STD_LOGIC;
    m00_axi_wready : IN STD_LOGIC;
    m00_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_bvalid : IN STD_LOGIC;
    m00_axi_bready : OUT STD_LOGIC;
    m00_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_arlock : OUT STD_LOGIC;
    m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m00_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m00_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_arvalid : OUT STD_LOGIC;
    m00_axi_arready : IN STD_LOGIC;
    m00_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m00_axi_rlast : IN STD_LOGIC;
    m00_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axi_rvalid : IN STD_LOGIC;
    m00_axi_rready : OUT STD_LOGIC
  );
END neural_net_accelerator_Softmax_Layer_32bit_0_0;

ARCHITECTURE neural_net_accelerator_Softmax_Layer_32bit_0_0_arch OF neural_net_accelerator_Softmax_Layer_32bit_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF neural_net_accelerator_Softmax_Layer_32bit_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Softmax_Layer_32bit_v1_0 IS
    GENERIC (
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR : STD_LOGIC_VECTOR; -- Base address of targeted slave
      C_M00_AXI_BURST_LEN : INTEGER; -- Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
      C_M00_AXI_ID_WIDTH : INTEGER; -- Thread ID Width
      C_M00_AXI_ADDR_WIDTH : INTEGER; -- Width of Address Bus
      C_M00_AXI_DATA_WIDTH : INTEGER; -- Width of Data Bus
      C_M00_AXI_AWUSER_WIDTH : INTEGER; -- Width of User Write Address Bus
      C_M00_AXI_ARUSER_WIDTH : INTEGER; -- Width of User Read Address Bus
      C_M00_AXI_WUSER_WIDTH : INTEGER; -- Width of User Write Data Bus
      C_M00_AXI_RUSER_WIDTH : INTEGER; -- Width of User Read Data Bus
      C_M00_AXI_BUSER_WIDTH : INTEGER; -- Width of User Response Bus
      G_DATA_WIDTH : INTEGER
    );
    PORT (
      o_softmax_complete : OUT STD_LOGIC;
      o_cycle : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      o_epoch : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      ila_smax_exp_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_smax_exp_valid_result : OUT STD_LOGIC;
      ila_smax_exp_function_ready : OUT STD_LOGIC;
      ila_smax_exp_step_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_exp_multiplication_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_exp_hold_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_exp_sum_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_exp_multiplicand_a : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_multiplicand_b : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_product : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_augend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_addend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_sum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_data_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_mult_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_fifo_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_fifo_wr_en : OUT STD_LOGIC;
      ila_smax_exp_exp_done : OUT STD_LOGIC;
      ila_smax_aw_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_smax_aw_addend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_aw_augend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_aw_sum : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_aw_rd_en : OUT STD_LOGIC;
      ila_smax_aw_summing_complete : OUT STD_LOGIC;
      ila_smax_aw_hold_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_aw_sum_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_smax_aw_sum_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_aw_sum_result_valid : OUT STD_LOGIC;
      ila_smax_dw_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_smax_dw_divisor : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_dw_dividend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_dw_quotient : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_dw_rd_en : OUT STD_LOGIC;
      ila_smax_dw_division_complete : OUT STD_LOGIC;
      ila_smax_dw_hold_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_dw_quotient_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_smax_dw_division_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_dw_quotient_result_valid : OUT STD_LOGIC;
      ila_smax_ctrlr_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_smax_ctrlr_exp_input : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_ctrlr_exp_input_valid : OUT STD_LOGIC;
      ila_smax_ctrlr_controller_ready : OUT STD_LOGIC;
      ila_smax_ctrlr_exp_fifo_select : OUT STD_LOGIC;
      ila_smax_ctrlr_exp_complete : OUT STD_LOGIC;
      ila_smax_ctrlr_element_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_smax_ctrlr_softmax_complete : OUT STD_LOGIC;
      ila_smax_ctrlr_clear_all : OUT STD_LOGIC;
      ila_smax_ctrlr_busy : OUT STD_LOGIC;
      ila_smax_inbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_inbuff_wr_en : OUT STD_LOGIC;
      ila_smax_inbuff_rd_en : OUT STD_LOGIC;
      ila_smax_inbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_inbuff_full : OUT STD_LOGIC;
      ila_smax_inbuff_almost_full : OUT STD_LOGIC;
      ila_smax_inbuff_empty : OUT STD_LOGIC;
      ila_smax_inbuff_almost_empty : OUT STD_LOGIC;
      ila_smax_inbuff_valid : OUT STD_LOGIC;
      ila_smax_outbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_outbuff_wr_en : OUT STD_LOGIC;
      ila_smax_outbuff_rd_en : OUT STD_LOGIC;
      ila_smax_outbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_outbuff_full : OUT STD_LOGIC;
      ila_smax_outbuff_almost_full : OUT STD_LOGIC;
      ila_smax_outbuff_empty : OUT STD_LOGIC;
      ila_smax_outbuff_almost_empty : OUT STD_LOGIC;
      ila_smax_outbuff_valid : OUT STD_LOGIC;
      ila_smax_exp_mux_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_mux_wr_en : OUT STD_LOGIC;
      ila_smax_exp_fifo_rd_en : OUT STD_LOGIC;
      ila_smax_exp_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_exp_fifo_full : OUT STD_LOGIC;
      ila_smax_exp_fifo_almost_full : OUT STD_LOGIC;
      ila_smax_exp_fifo_empty : OUT STD_LOGIC;
      ila_smax_exp_fifo_almost_empty : OUT STD_LOGIC;
      ila_smax_exp_fifo_valid : OUT STD_LOGIC;
      ila_smax_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_axi_awready : OUT STD_LOGIC;
      ila_smax_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_axi_awvalid : OUT STD_LOGIC;
      ila_smax_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_axi_wready : OUT STD_LOGIC;
      ila_smax_axi_wlast : OUT STD_LOGIC;
      ila_smax_axi_wvalid : OUT STD_LOGIC;
      ila_smax_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_smax_axi_bready : OUT STD_LOGIC;
      ila_smax_axi_bvalid : OUT STD_LOGIC;
      ila_smax_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_axi_arvalid : OUT STD_LOGIC;
      ila_smax_axi_rready : OUT STD_LOGIC;
      ila_smax_axi_arready : OUT STD_LOGIC;
      ila_smax_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_axi_rlast : OUT STD_LOGIC;
      ila_smax_axi_rvalid : OUT STD_LOGIC;
      ila_smax_wbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_rbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_num_elements : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_smax_input_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_output_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_smax_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_smax_writes_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_smax_reads_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_smax_calculated : OUT STD_LOGIC;
      ila_smax_more_bursts_needed : OUT STD_LOGIC;
      ila_smax_data_loaded : OUT STD_LOGIC;
      ila_smax_class_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_smax_master_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      m00_axi_txn_done : OUT STD_LOGIC;
      m00_axi_error : OUT STD_LOGIC;
      m00_axi_aclk : IN STD_LOGIC;
      m00_axi_aresetn : IN STD_LOGIC;
      m00_axi_awid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_awlock : OUT STD_LOGIC;
      m00_axi_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_awvalid : OUT STD_LOGIC;
      m00_axi_awready : IN STD_LOGIC;
      m00_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_wlast : OUT STD_LOGIC;
      m00_axi_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_wvalid : OUT STD_LOGIC;
      m00_axi_wready : IN STD_LOGIC;
      m00_axi_bid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_bvalid : IN STD_LOGIC;
      m00_axi_bready : OUT STD_LOGIC;
      m00_axi_arid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_arlock : OUT STD_LOGIC;
      m00_axi_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m00_axi_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m00_axi_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_arvalid : OUT STD_LOGIC;
      m00_axi_arready : IN STD_LOGIC;
      m00_axi_rid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m00_axi_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m00_axi_rlast : IN STD_LOGIC;
      m00_axi_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axi_rvalid : IN STD_LOGIC;
      m00_axi_rready : OUT STD_LOGIC
    );
  END COMPONENT Softmax_Layer_32bit_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fsm_state: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_valid_result: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_valid_result";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_function_ready: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_function_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_step_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_step_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_multiplication_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_multiplication_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_hold_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_hold_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_sum_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_sum_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_multiplicand_a: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_multiplicand_a";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_multiplicand_b: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_multiplicand_b";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_product: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_product";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_augend: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_augend";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_addend: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_addend";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_sum: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_sum";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_data_reg: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_data_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_mult_reg: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_mult_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_data: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_wr_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_exp_done: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_exp_done";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_fsm_state: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_addend: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_addend";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_augend: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_augend";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_sum: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_sum";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_rd_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_summing_complete: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_summing_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_hold_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_hold_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_sum_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_sum_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_sum_reg: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_sum_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_aw_sum_result_valid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_aw_sum_result_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_fsm_state: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_divisor: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_divisor";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_dividend: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_dividend";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_quotient: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_quotient";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_rd_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_division_complete: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_division_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_hold_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_hold_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_quotient_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_quotient_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_division_reg: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_division_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_dw_quotient_result_valid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_dw_quotient_result_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_fsm_state: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_exp_input: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_exp_input";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_exp_input_valid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_exp_input_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_controller_ready: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_controller_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_exp_fifo_select: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_exp_fifo_select";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_exp_complete: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_exp_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_element_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_element_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_softmax_complete: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_softmax_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_clear_all: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_clear_all";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_ctrlr_busy: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_ctrlr_busy";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_din: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_wr_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_rd_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_dout: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_full: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_almost_full: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_empty: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_almost_empty: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_inbuff_valid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_inbuff_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_din: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_wr_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_rd_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_dout: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_full: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_almost_full: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_empty: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_almost_empty: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_outbuff_valid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_outbuff_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_mux_data: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_mux_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_mux_wr_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_mux_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_rd_en: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_dout: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_full: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_almost_full: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_empty: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_almost_empty: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_exp_fifo_valid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_exp_fifo_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_awaddr: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_awaddr";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_awready: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_awready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_awlen: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_awlen";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_awvalid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_awvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_wdata: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_wready: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_wready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_wlast: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_wlast";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_wvalid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_wvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_wstrb: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_wstrb";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_bready: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_bready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_bvalid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_bvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_araddr: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_araddr";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_arlen: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_arlen";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_arvalid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_arvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_rready: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_rready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_arready: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_arready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_rdata: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_rlast: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_rlast";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_axi_rvalid: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_axi_rvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_wbc: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_wbc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_rbc: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_rbc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_num_elements: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_num_elements";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_input_data_addr_reg: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_input_data_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_output_data_addr_reg: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_output_data_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_row_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_channel_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_writes_remaining: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_writes_remaining";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_reads_remaining: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_reads_remaining";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_calculated: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_calculated";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_more_bursts_needed: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_more_bursts_needed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_data_loaded: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_data_loaded";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_class_counter: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_class_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_smax_master_fsm_state: SIGNAL IS "xilinx.com:user:ila_smax:1.0 ila_smax_1 ila_smax_master_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
BEGIN
  U0 : Softmax_Layer_32bit_v1_0
    GENERIC MAP (
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 32,
      C_M00_AXI_TARGET_SLAVE_BASE_ADDR => X"40000000",
      C_M00_AXI_BURST_LEN => 16,
      C_M00_AXI_ID_WIDTH => 1,
      C_M00_AXI_ADDR_WIDTH => 32,
      C_M00_AXI_DATA_WIDTH => 32,
      C_M00_AXI_AWUSER_WIDTH => 1,
      C_M00_AXI_ARUSER_WIDTH => 1,
      C_M00_AXI_WUSER_WIDTH => 1,
      C_M00_AXI_RUSER_WIDTH => 1,
      C_M00_AXI_BUSER_WIDTH => 1,
      G_DATA_WIDTH => 32
    )
    PORT MAP (
      o_softmax_complete => o_softmax_complete,
      o_cycle => o_cycle,
      o_epoch => o_epoch,
      ila_smax_exp_fsm_state => ila_smax_exp_fsm_state,
      ila_smax_exp_valid_result => ila_smax_exp_valid_result,
      ila_smax_exp_function_ready => ila_smax_exp_function_ready,
      ila_smax_exp_step_counter => ila_smax_exp_step_counter,
      ila_smax_exp_multiplication_counter => ila_smax_exp_multiplication_counter,
      ila_smax_exp_hold_counter => ila_smax_exp_hold_counter,
      ila_smax_exp_sum_counter => ila_smax_exp_sum_counter,
      ila_smax_exp_multiplicand_a => ila_smax_exp_multiplicand_a,
      ila_smax_exp_multiplicand_b => ila_smax_exp_multiplicand_b,
      ila_smax_exp_product => ila_smax_exp_product,
      ila_smax_exp_augend => ila_smax_exp_augend,
      ila_smax_exp_addend => ila_smax_exp_addend,
      ila_smax_exp_sum => ila_smax_exp_sum,
      ila_smax_exp_data_reg => ila_smax_exp_data_reg,
      ila_smax_exp_mult_reg => ila_smax_exp_mult_reg,
      ila_smax_exp_fifo_data => ila_smax_exp_fifo_data,
      ila_smax_exp_fifo_wr_en => ila_smax_exp_fifo_wr_en,
      ila_smax_exp_exp_done => ila_smax_exp_exp_done,
      ila_smax_aw_fsm_state => ila_smax_aw_fsm_state,
      ila_smax_aw_addend => ila_smax_aw_addend,
      ila_smax_aw_augend => ila_smax_aw_augend,
      ila_smax_aw_sum => ila_smax_aw_sum,
      ila_smax_aw_rd_en => ila_smax_aw_rd_en,
      ila_smax_aw_summing_complete => ila_smax_aw_summing_complete,
      ila_smax_aw_hold_counter => ila_smax_aw_hold_counter,
      ila_smax_aw_sum_counter => ila_smax_aw_sum_counter,
      ila_smax_aw_sum_reg => ila_smax_aw_sum_reg,
      ila_smax_aw_sum_result_valid => ila_smax_aw_sum_result_valid,
      ila_smax_dw_fsm_state => ila_smax_dw_fsm_state,
      ila_smax_dw_divisor => ila_smax_dw_divisor,
      ila_smax_dw_dividend => ila_smax_dw_dividend,
      ila_smax_dw_quotient => ila_smax_dw_quotient,
      ila_smax_dw_rd_en => ila_smax_dw_rd_en,
      ila_smax_dw_division_complete => ila_smax_dw_division_complete,
      ila_smax_dw_hold_counter => ila_smax_dw_hold_counter,
      ila_smax_dw_quotient_counter => ila_smax_dw_quotient_counter,
      ila_smax_dw_division_reg => ila_smax_dw_division_reg,
      ila_smax_dw_quotient_result_valid => ila_smax_dw_quotient_result_valid,
      ila_smax_ctrlr_fsm_state => ila_smax_ctrlr_fsm_state,
      ila_smax_ctrlr_exp_input => ila_smax_ctrlr_exp_input,
      ila_smax_ctrlr_exp_input_valid => ila_smax_ctrlr_exp_input_valid,
      ila_smax_ctrlr_controller_ready => ila_smax_ctrlr_controller_ready,
      ila_smax_ctrlr_exp_fifo_select => ila_smax_ctrlr_exp_fifo_select,
      ila_smax_ctrlr_exp_complete => ila_smax_ctrlr_exp_complete,
      ila_smax_ctrlr_element_counter => ila_smax_ctrlr_element_counter,
      ila_smax_ctrlr_softmax_complete => ila_smax_ctrlr_softmax_complete,
      ila_smax_ctrlr_clear_all => ila_smax_ctrlr_clear_all,
      ila_smax_ctrlr_busy => ila_smax_ctrlr_busy,
      ila_smax_inbuff_din => ila_smax_inbuff_din,
      ila_smax_inbuff_wr_en => ila_smax_inbuff_wr_en,
      ila_smax_inbuff_rd_en => ila_smax_inbuff_rd_en,
      ila_smax_inbuff_dout => ila_smax_inbuff_dout,
      ila_smax_inbuff_full => ila_smax_inbuff_full,
      ila_smax_inbuff_almost_full => ila_smax_inbuff_almost_full,
      ila_smax_inbuff_empty => ila_smax_inbuff_empty,
      ila_smax_inbuff_almost_empty => ila_smax_inbuff_almost_empty,
      ila_smax_inbuff_valid => ila_smax_inbuff_valid,
      ila_smax_outbuff_din => ila_smax_outbuff_din,
      ila_smax_outbuff_wr_en => ila_smax_outbuff_wr_en,
      ila_smax_outbuff_rd_en => ila_smax_outbuff_rd_en,
      ila_smax_outbuff_dout => ila_smax_outbuff_dout,
      ila_smax_outbuff_full => ila_smax_outbuff_full,
      ila_smax_outbuff_almost_full => ila_smax_outbuff_almost_full,
      ila_smax_outbuff_empty => ila_smax_outbuff_empty,
      ila_smax_outbuff_almost_empty => ila_smax_outbuff_almost_empty,
      ila_smax_outbuff_valid => ila_smax_outbuff_valid,
      ila_smax_exp_mux_data => ila_smax_exp_mux_data,
      ila_smax_exp_mux_wr_en => ila_smax_exp_mux_wr_en,
      ila_smax_exp_fifo_rd_en => ila_smax_exp_fifo_rd_en,
      ila_smax_exp_fifo_dout => ila_smax_exp_fifo_dout,
      ila_smax_exp_fifo_full => ila_smax_exp_fifo_full,
      ila_smax_exp_fifo_almost_full => ila_smax_exp_fifo_almost_full,
      ila_smax_exp_fifo_empty => ila_smax_exp_fifo_empty,
      ila_smax_exp_fifo_almost_empty => ila_smax_exp_fifo_almost_empty,
      ila_smax_exp_fifo_valid => ila_smax_exp_fifo_valid,
      ila_smax_axi_awaddr => ila_smax_axi_awaddr,
      ila_smax_axi_awready => ila_smax_axi_awready,
      ila_smax_axi_awlen => ila_smax_axi_awlen,
      ila_smax_axi_awvalid => ila_smax_axi_awvalid,
      ila_smax_axi_wdata => ila_smax_axi_wdata,
      ila_smax_axi_wready => ila_smax_axi_wready,
      ila_smax_axi_wlast => ila_smax_axi_wlast,
      ila_smax_axi_wvalid => ila_smax_axi_wvalid,
      ila_smax_axi_wstrb => ila_smax_axi_wstrb,
      ila_smax_axi_bready => ila_smax_axi_bready,
      ila_smax_axi_bvalid => ila_smax_axi_bvalid,
      ila_smax_axi_araddr => ila_smax_axi_araddr,
      ila_smax_axi_arlen => ila_smax_axi_arlen,
      ila_smax_axi_arvalid => ila_smax_axi_arvalid,
      ila_smax_axi_rready => ila_smax_axi_rready,
      ila_smax_axi_arready => ila_smax_axi_arready,
      ila_smax_axi_rdata => ila_smax_axi_rdata,
      ila_smax_axi_rlast => ila_smax_axi_rlast,
      ila_smax_axi_rvalid => ila_smax_axi_rvalid,
      ila_smax_wbc => ila_smax_wbc,
      ila_smax_rbc => ila_smax_rbc,
      ila_smax_num_elements => ila_smax_num_elements,
      ila_smax_input_data_addr_reg => ila_smax_input_data_addr_reg,
      ila_smax_output_data_addr_reg => ila_smax_output_data_addr_reg,
      ila_smax_row_counter => ila_smax_row_counter,
      ila_smax_channel_counter => ila_smax_channel_counter,
      ila_smax_writes_remaining => ila_smax_writes_remaining,
      ila_smax_reads_remaining => ila_smax_reads_remaining,
      ila_smax_calculated => ila_smax_calculated,
      ila_smax_more_bursts_needed => ila_smax_more_bursts_needed,
      ila_smax_data_loaded => ila_smax_data_loaded,
      ila_smax_class_counter => ila_smax_class_counter,
      ila_smax_master_fsm_state => ila_smax_master_fsm_state,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axi_wready => s00_axi_wready,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_arready => s00_axi_arready,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rready => s00_axi_rready,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_error => m00_axi_error,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_awid => m00_axi_awid,
      m00_axi_awaddr => m00_axi_awaddr,
      m00_axi_awlen => m00_axi_awlen,
      m00_axi_awsize => m00_axi_awsize,
      m00_axi_awburst => m00_axi_awburst,
      m00_axi_awlock => m00_axi_awlock,
      m00_axi_awcache => m00_axi_awcache,
      m00_axi_awprot => m00_axi_awprot,
      m00_axi_awqos => m00_axi_awqos,
      m00_axi_awuser => m00_axi_awuser,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_awready => m00_axi_awready,
      m00_axi_wdata => m00_axi_wdata,
      m00_axi_wstrb => m00_axi_wstrb,
      m00_axi_wlast => m00_axi_wlast,
      m00_axi_wuser => m00_axi_wuser,
      m00_axi_wvalid => m00_axi_wvalid,
      m00_axi_wready => m00_axi_wready,
      m00_axi_bid => m00_axi_bid,
      m00_axi_bresp => m00_axi_bresp,
      m00_axi_buser => m00_axi_buser,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_arid => m00_axi_arid,
      m00_axi_araddr => m00_axi_araddr,
      m00_axi_arlen => m00_axi_arlen,
      m00_axi_arsize => m00_axi_arsize,
      m00_axi_arburst => m00_axi_arburst,
      m00_axi_arlock => m00_axi_arlock,
      m00_axi_arcache => m00_axi_arcache,
      m00_axi_arprot => m00_axi_arprot,
      m00_axi_arqos => m00_axi_arqos,
      m00_axi_aruser => m00_axi_aruser,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_arready => m00_axi_arready,
      m00_axi_rid => m00_axi_rid,
      m00_axi_rdata => m00_axi_rdata,
      m00_axi_rresp => m00_axi_rresp,
      m00_axi_rlast => m00_axi_rlast,
      m00_axi_ruser => m00_axi_ruser,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rready => m00_axi_rready
    );
END neural_net_accelerator_Softmax_Layer_32bit_0_0_arch;
