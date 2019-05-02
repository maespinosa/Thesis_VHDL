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

-- IP VLNV: xilinx.com:user:Maxpool_Layer_32bit:1.0
-- IP Revision: 72

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY neural_net_accelerator_Maxpool_Layer_32bit_0_0 IS
  PORT (
    o_pooling_complete : OUT STD_LOGIC;
    o_cycle : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    o_epoch : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    ila_row_cntrl_PR0_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_PR0_wr_en : OUT STD_LOGIC;
    ila_row_cntrl_PR0_rd_en : OUT STD_LOGIC;
    ila_row_cntrl_PR1_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_PR1_wr_en : OUT STD_LOGIC;
    ila_row_cntrl_PR1_rd_en : OUT STD_LOGIC;
    ila_row_cntrl_PR2_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_PR2_wr_en : OUT STD_LOGIC;
    ila_row_cntrl_PR2_rd_en : OUT STD_LOGIC;
    ila_row_cntrl_third_row_activate : OUT STD_LOGIC;
    ila_row_cntrl_recycle_en : OUT STD_LOGIC;
    ila_row_cntrl_prime_PR0_en : OUT STD_LOGIC;
    ila_row_cntrl_prime_PR1_en : OUT STD_LOGIC;
    ila_row_cntrl_prime_PR2_en : OUT STD_LOGIC;
    ila_row_cntrl_pixel_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_row_cntrl_column_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_row_cntrl_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_row_cntrl_sorter_data_valid : OUT STD_LOGIC;
    ila_row_cntrl_stride_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_row_cntrl_inbuff_rd_en : OUT STD_LOGIC;
    ila_row_cntrl_volume_processed : OUT STD_LOGIC;
    ila_row_cntrl_volume_rows_processed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_row_cntrl_output_rows_generated : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_row_cntrl_output_volume_size : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_row_cntrl_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_row_cntrl_channel_complete : OUT STD_LOGIC;
    ila_row_cntrl_row_complete : OUT STD_LOGIC;
    ila_row_cntrl_busy : OUT STD_LOGIC;
    ila_row_cntrl_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_row_cntrl_kernel_data_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_kernel_data_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_row_cntrl_sorter_data_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_PR0_full : OUT STD_LOGIC;
    ila_PR0_almost_full : OUT STD_LOGIC;
    ila_PR0_empty : OUT STD_LOGIC;
    ila_PR0_almost_empty : OUT STD_LOGIC;
    ila_PR1_full : OUT STD_LOGIC;
    ila_PR1_almost_full : OUT STD_LOGIC;
    ila_PR1_empty : OUT STD_LOGIC;
    ila_PR1_almost_empty : OUT STD_LOGIC;
    ila_PR2_full : OUT STD_LOGIC;
    ila_PR2_almost_full : OUT STD_LOGIC;
    ila_PR2_empty : OUT STD_LOGIC;
    ila_PR2_almost_empty : OUT STD_LOGIC;
    ila_inbuff_wr_en : OUT STD_LOGIC;
    ila_inbuff_empty : OUT STD_LOGIC;
    ila_inbuff_almost_empty : OUT STD_LOGIC;
    ila_inbuff_full : OUT STD_LOGIC;
    ila_inbuff_almost_full : OUT STD_LOGIC;
    ila_inbuff_valid : OUT STD_LOGIC;
    ila_inbuff_rd_en : OUT STD_LOGIC;
    ila_outbuff_rd_en : OUT STD_LOGIC;
    ila_outbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_outbuff_empty : OUT STD_LOGIC;
    ila_outbuff_almost_empty : OUT STD_LOGIC;
    ila_outbuff_full : OUT STD_LOGIC;
    ila_outbuff_almost_full : OUT STD_LOGIC;
    ila_outbuff_valid : OUT STD_LOGIC;
    ila_heap_sorter_ready : OUT STD_LOGIC;
    ila_heap_sorter_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_heap_sorter_position1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_position9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_done : OUT STD_LOGIC;
    ila_heap_sorter_sorted_data_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorted_data_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_heap_sorter_sorter_ready : OUT STD_LOGIC;
    ila_master_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_axi_awready : OUT STD_LOGIC;
    ila_master_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ila_master_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_axi_awvalid : OUT STD_LOGIC;
    ila_master_axi_wready : OUT STD_LOGIC;
    ila_master_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_wlast : OUT STD_LOGIC;
    ila_master_axi_wvalid : OUT STD_LOGIC;
    ila_master_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_axi_bvalid : OUT STD_LOGIC;
    ila_master_axi_bready : OUT STD_LOGIC;
    ila_master_axi_wbc : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    ila_master_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ila_master_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_axi_arvalid : OUT STD_LOGIC;
    ila_master_axi_rready : OUT STD_LOGIC;
    ila_master_axi_arready : OUT STD_LOGIC;
    ila_master_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_rlast : OUT STD_LOGIC;
    ila_master_axi_rvalid : OUT STD_LOGIC;
    ila_master_axi_rbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_outbuff_rd_en : OUT STD_LOGIC;
    ila_master_inbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_inbuff_wr_en : OUT STD_LOGIC;
    ila_master_input_volume_size : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_input_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_output_volume_size : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_output_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_pool_kernel_size : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_stride : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_input_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_output_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_writes_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_calculated : OUT STD_LOGIC;
    ila_master_more_bursts_needed : OUT STD_LOGIC;
    ila_master_channel_complete_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_complete_shift_reg : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    ila_master_data_valid : OUT STD_LOGIC;
    ila_master_operating_length : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
    ila_master_input_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_input_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_stride_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_addr1_multiple : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_addr2_multiple : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_start : OUT STD_LOGIC;
    ila_master_start_reg : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    ila_master_first_calculated : OUT STD_LOGIC;
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
    m00_axi_rvalid : IN STD_LOGIC;
    m00_axi_rready : OUT STD_LOGIC
  );
END neural_net_accelerator_Maxpool_Layer_32bit_0_0;

ARCHITECTURE neural_net_accelerator_Maxpool_Layer_32bit_0_0_arch OF neural_net_accelerator_Maxpool_Layer_32bit_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF neural_net_accelerator_Maxpool_Layer_32bit_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Maxpool_Layer_32bit_v1_0 IS
    GENERIC (
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
      C_S00_AXI_DATA_WIDTH : INTEGER; -- Width of S_AXI data bus
      C_S00_AXI_ADDR_WIDTH : INTEGER; -- Width of S_AXI address bus
      G_DATA_WIDTH : INTEGER
    );
    PORT (
      o_pooling_complete : OUT STD_LOGIC;
      o_cycle : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      o_epoch : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      ila_row_cntrl_PR0_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_PR0_wr_en : OUT STD_LOGIC;
      ila_row_cntrl_PR0_rd_en : OUT STD_LOGIC;
      ila_row_cntrl_PR1_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_PR1_wr_en : OUT STD_LOGIC;
      ila_row_cntrl_PR1_rd_en : OUT STD_LOGIC;
      ila_row_cntrl_PR2_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_PR2_wr_en : OUT STD_LOGIC;
      ila_row_cntrl_PR2_rd_en : OUT STD_LOGIC;
      ila_row_cntrl_third_row_activate : OUT STD_LOGIC;
      ila_row_cntrl_recycle_en : OUT STD_LOGIC;
      ila_row_cntrl_prime_PR0_en : OUT STD_LOGIC;
      ila_row_cntrl_prime_PR1_en : OUT STD_LOGIC;
      ila_row_cntrl_prime_PR2_en : OUT STD_LOGIC;
      ila_row_cntrl_pixel_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_row_cntrl_column_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_row_cntrl_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_row_cntrl_sorter_data_valid : OUT STD_LOGIC;
      ila_row_cntrl_stride_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_row_cntrl_inbuff_rd_en : OUT STD_LOGIC;
      ila_row_cntrl_volume_processed : OUT STD_LOGIC;
      ila_row_cntrl_volume_rows_processed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_row_cntrl_output_rows_generated : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_row_cntrl_output_volume_size : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_row_cntrl_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_row_cntrl_channel_complete : OUT STD_LOGIC;
      ila_row_cntrl_row_complete : OUT STD_LOGIC;
      ila_row_cntrl_busy : OUT STD_LOGIC;
      ila_row_cntrl_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_row_cntrl_kernel_data_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_kernel_data_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_row_cntrl_sorter_data_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_PR0_full : OUT STD_LOGIC;
      ila_PR0_almost_full : OUT STD_LOGIC;
      ila_PR0_empty : OUT STD_LOGIC;
      ila_PR0_almost_empty : OUT STD_LOGIC;
      ila_PR1_full : OUT STD_LOGIC;
      ila_PR1_almost_full : OUT STD_LOGIC;
      ila_PR1_empty : OUT STD_LOGIC;
      ila_PR1_almost_empty : OUT STD_LOGIC;
      ila_PR2_full : OUT STD_LOGIC;
      ila_PR2_almost_full : OUT STD_LOGIC;
      ila_PR2_empty : OUT STD_LOGIC;
      ila_PR2_almost_empty : OUT STD_LOGIC;
      ila_inbuff_wr_en : OUT STD_LOGIC;
      ila_inbuff_empty : OUT STD_LOGIC;
      ila_inbuff_almost_empty : OUT STD_LOGIC;
      ila_inbuff_full : OUT STD_LOGIC;
      ila_inbuff_almost_full : OUT STD_LOGIC;
      ila_inbuff_valid : OUT STD_LOGIC;
      ila_inbuff_rd_en : OUT STD_LOGIC;
      ila_outbuff_rd_en : OUT STD_LOGIC;
      ila_outbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_outbuff_empty : OUT STD_LOGIC;
      ila_outbuff_almost_empty : OUT STD_LOGIC;
      ila_outbuff_full : OUT STD_LOGIC;
      ila_outbuff_almost_full : OUT STD_LOGIC;
      ila_outbuff_valid : OUT STD_LOGIC;
      ila_heap_sorter_ready : OUT STD_LOGIC;
      ila_heap_sorter_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_heap_sorter_position1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_position9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_done : OUT STD_LOGIC;
      ila_heap_sorter_sorted_data_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorted_data_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_heap_sorter_sorter_ready : OUT STD_LOGIC;
      ila_master_fsm_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_axi_awready : OUT STD_LOGIC;
      ila_master_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ila_master_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_axi_awvalid : OUT STD_LOGIC;
      ila_master_axi_wready : OUT STD_LOGIC;
      ila_master_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_wlast : OUT STD_LOGIC;
      ila_master_axi_wvalid : OUT STD_LOGIC;
      ila_master_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_axi_bvalid : OUT STD_LOGIC;
      ila_master_axi_bready : OUT STD_LOGIC;
      ila_master_axi_wbc : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      ila_master_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ila_master_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_axi_arvalid : OUT STD_LOGIC;
      ila_master_axi_rready : OUT STD_LOGIC;
      ila_master_axi_arready : OUT STD_LOGIC;
      ila_master_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_rlast : OUT STD_LOGIC;
      ila_master_axi_rvalid : OUT STD_LOGIC;
      ila_master_axi_rbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_outbuff_rd_en : OUT STD_LOGIC;
      ila_master_inbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_inbuff_wr_en : OUT STD_LOGIC;
      ila_master_input_volume_size : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_input_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_output_volume_size : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_output_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_pool_kernel_size : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_stride : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_input_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_output_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_writes_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_calculated : OUT STD_LOGIC;
      ila_master_more_bursts_needed : OUT STD_LOGIC;
      ila_master_channel_complete_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_complete_shift_reg : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      ila_master_data_valid : OUT STD_LOGIC;
      ila_master_operating_length : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      ila_master_input_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_input_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_stride_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_addr1_multiple : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_addr2_multiple : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_start : OUT STD_LOGIC;
      ila_master_start_reg : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      ila_master_first_calculated : OUT STD_LOGIC;
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
      m00_axi_rvalid : IN STD_LOGIC;
      m00_axi_rready : OUT STD_LOGIC
    );
  END COMPONENT Maxpool_Layer_32bit_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR0_din: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR0_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR0_wr_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR0_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR0_rd_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR0_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR1_din: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR1_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR1_wr_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR1_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR1_rd_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR1_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR2_din: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR2_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR2_wr_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR2_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_PR2_rd_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_PR2_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_third_row_activate: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_third_row_activate";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_recycle_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_recycle_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_prime_PR0_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_prime_PR0_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_prime_PR1_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_prime_PR1_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_prime_PR2_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_prime_PR2_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_pixel_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_pixel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_column_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_column_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_row_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_valid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_stride_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_stride_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_inbuff_rd_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_inbuff_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_volume_processed: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_volume_processed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_volume_rows_processed: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_volume_rows_processed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_output_rows_generated: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_output_rows_generated";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_output_volume_size: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_output_volume_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_channel_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_channel_complete: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_channel_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_row_complete: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_row_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_busy: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_busy";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_fsm_state: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_0: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_1: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_2: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_3: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_4: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_5: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_6: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_7: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_8: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_kernel_data_9: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_kernel_data_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_0: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_1: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_2: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_3: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_4: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_5: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_6: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_7: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_8: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_row_cntrl_sorter_data_9: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_row_cntrl_sorter_data_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR0_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR0_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR0_almost_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR0_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR0_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR0_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR0_almost_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR0_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR1_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR1_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR1_almost_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR1_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR1_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR1_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR1_almost_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR1_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR2_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR2_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR2_almost_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR2_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR2_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR2_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_PR2_almost_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_PR2_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_wr_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_inbuff_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_inbuff_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_almost_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_inbuff_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_inbuff_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_almost_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_inbuff_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_valid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_inbuff_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_rd_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_inbuff_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_rd_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_outbuff_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_dout: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_outbuff_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_outbuff_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_almost_empty: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_outbuff_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_outbuff_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_almost_full: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_outbuff_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_valid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_outbuff_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_ready: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_fsm_state: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position1: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position2: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position3: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position4: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position5: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position6: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position7: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position8: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_position9: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_position9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_done: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_done";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_0: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_1: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_2: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_3: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_4: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_5: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_6: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_7: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_8: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorted_data_9: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorted_data_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_heap_sorter_sorter_ready: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_heap_sorter_sorter_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_fsm_state: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awready: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_awready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awaddr: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_awaddr";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awsize: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_awsize";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awlen: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_awlen";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awvalid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_awvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wready: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_wready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wdata: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wlast: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_wlast";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wvalid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_wvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wstrb: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_wstrb";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_bvalid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_bvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_bready: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_bready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wbc: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_wbc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arsize: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_arsize";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_araddr: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_araddr";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arlen: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_arlen";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arvalid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_arvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rready: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_rready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arready: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_arready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rdata: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rlast: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_rlast";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rvalid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_rvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rbc: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_axi_rbc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_outbuff_rd_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_outbuff_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_inbuff_din: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_inbuff_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_inbuff_wr_en: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_inbuff_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_volume_size: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_input_volume_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_volume_channels: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_input_volume_channels";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_volume_size: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_output_volume_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_volume_channels: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_output_volume_channels";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_pool_kernel_size: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_pool_kernel_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_stride: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_stride";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_data_addr_reg: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_input_data_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_data_addr_reg: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_output_data_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_row_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_channel_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_writes_remaining: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_writes_remaining";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_calculated: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_calculated";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_more_bursts_needed: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_more_bursts_needed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_channel_complete_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_channel_complete_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_complete_shift_reg: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_complete_shift_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_data_valid: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_data_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_operating_length: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_operating_length";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_index: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_input_index";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_addr_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_input_addr_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_stride_counter: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_stride_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_addr1_multiple: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_addr1_multiple";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_addr2_multiple: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_addr2_multiple";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_start: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_start";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_start_reg: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_start_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_first_calculated: SIGNAL IS "xilinx.com:user:ila_mp_ports:1.0 ila_mp_ports_1 ila_master_first_calculated";
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
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
BEGIN
  U0 : Maxpool_Layer_32bit_v1_0
    GENERIC MAP (
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
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ADDR_WIDTH => 32,
      G_DATA_WIDTH => 32
    )
    PORT MAP (
      o_pooling_complete => o_pooling_complete,
      o_cycle => o_cycle,
      o_epoch => o_epoch,
      ila_row_cntrl_PR0_din => ila_row_cntrl_PR0_din,
      ila_row_cntrl_PR0_wr_en => ila_row_cntrl_PR0_wr_en,
      ila_row_cntrl_PR0_rd_en => ila_row_cntrl_PR0_rd_en,
      ila_row_cntrl_PR1_din => ila_row_cntrl_PR1_din,
      ila_row_cntrl_PR1_wr_en => ila_row_cntrl_PR1_wr_en,
      ila_row_cntrl_PR1_rd_en => ila_row_cntrl_PR1_rd_en,
      ila_row_cntrl_PR2_din => ila_row_cntrl_PR2_din,
      ila_row_cntrl_PR2_wr_en => ila_row_cntrl_PR2_wr_en,
      ila_row_cntrl_PR2_rd_en => ila_row_cntrl_PR2_rd_en,
      ila_row_cntrl_third_row_activate => ila_row_cntrl_third_row_activate,
      ila_row_cntrl_recycle_en => ila_row_cntrl_recycle_en,
      ila_row_cntrl_prime_PR0_en => ila_row_cntrl_prime_PR0_en,
      ila_row_cntrl_prime_PR1_en => ila_row_cntrl_prime_PR1_en,
      ila_row_cntrl_prime_PR2_en => ila_row_cntrl_prime_PR2_en,
      ila_row_cntrl_pixel_counter => ila_row_cntrl_pixel_counter,
      ila_row_cntrl_column_counter => ila_row_cntrl_column_counter,
      ila_row_cntrl_row_counter => ila_row_cntrl_row_counter,
      ila_row_cntrl_sorter_data_valid => ila_row_cntrl_sorter_data_valid,
      ila_row_cntrl_stride_counter => ila_row_cntrl_stride_counter,
      ila_row_cntrl_inbuff_rd_en => ila_row_cntrl_inbuff_rd_en,
      ila_row_cntrl_volume_processed => ila_row_cntrl_volume_processed,
      ila_row_cntrl_volume_rows_processed => ila_row_cntrl_volume_rows_processed,
      ila_row_cntrl_output_rows_generated => ila_row_cntrl_output_rows_generated,
      ila_row_cntrl_output_volume_size => ila_row_cntrl_output_volume_size,
      ila_row_cntrl_channel_counter => ila_row_cntrl_channel_counter,
      ila_row_cntrl_channel_complete => ila_row_cntrl_channel_complete,
      ila_row_cntrl_row_complete => ila_row_cntrl_row_complete,
      ila_row_cntrl_busy => ila_row_cntrl_busy,
      ila_row_cntrl_fsm_state => ila_row_cntrl_fsm_state,
      ila_row_cntrl_kernel_data_0 => ila_row_cntrl_kernel_data_0,
      ila_row_cntrl_kernel_data_1 => ila_row_cntrl_kernel_data_1,
      ila_row_cntrl_kernel_data_2 => ila_row_cntrl_kernel_data_2,
      ila_row_cntrl_kernel_data_3 => ila_row_cntrl_kernel_data_3,
      ila_row_cntrl_kernel_data_4 => ila_row_cntrl_kernel_data_4,
      ila_row_cntrl_kernel_data_5 => ila_row_cntrl_kernel_data_5,
      ila_row_cntrl_kernel_data_6 => ila_row_cntrl_kernel_data_6,
      ila_row_cntrl_kernel_data_7 => ila_row_cntrl_kernel_data_7,
      ila_row_cntrl_kernel_data_8 => ila_row_cntrl_kernel_data_8,
      ila_row_cntrl_kernel_data_9 => ila_row_cntrl_kernel_data_9,
      ila_row_cntrl_sorter_data_0 => ila_row_cntrl_sorter_data_0,
      ila_row_cntrl_sorter_data_1 => ila_row_cntrl_sorter_data_1,
      ila_row_cntrl_sorter_data_2 => ila_row_cntrl_sorter_data_2,
      ila_row_cntrl_sorter_data_3 => ila_row_cntrl_sorter_data_3,
      ila_row_cntrl_sorter_data_4 => ila_row_cntrl_sorter_data_4,
      ila_row_cntrl_sorter_data_5 => ila_row_cntrl_sorter_data_5,
      ila_row_cntrl_sorter_data_6 => ila_row_cntrl_sorter_data_6,
      ila_row_cntrl_sorter_data_7 => ila_row_cntrl_sorter_data_7,
      ila_row_cntrl_sorter_data_8 => ila_row_cntrl_sorter_data_8,
      ila_row_cntrl_sorter_data_9 => ila_row_cntrl_sorter_data_9,
      ila_PR0_full => ila_PR0_full,
      ila_PR0_almost_full => ila_PR0_almost_full,
      ila_PR0_empty => ila_PR0_empty,
      ila_PR0_almost_empty => ila_PR0_almost_empty,
      ila_PR1_full => ila_PR1_full,
      ila_PR1_almost_full => ila_PR1_almost_full,
      ila_PR1_empty => ila_PR1_empty,
      ila_PR1_almost_empty => ila_PR1_almost_empty,
      ila_PR2_full => ila_PR2_full,
      ila_PR2_almost_full => ila_PR2_almost_full,
      ila_PR2_empty => ila_PR2_empty,
      ila_PR2_almost_empty => ila_PR2_almost_empty,
      ila_inbuff_wr_en => ila_inbuff_wr_en,
      ila_inbuff_empty => ila_inbuff_empty,
      ila_inbuff_almost_empty => ila_inbuff_almost_empty,
      ila_inbuff_full => ila_inbuff_full,
      ila_inbuff_almost_full => ila_inbuff_almost_full,
      ila_inbuff_valid => ila_inbuff_valid,
      ila_inbuff_rd_en => ila_inbuff_rd_en,
      ila_outbuff_rd_en => ila_outbuff_rd_en,
      ila_outbuff_dout => ila_outbuff_dout,
      ila_outbuff_empty => ila_outbuff_empty,
      ila_outbuff_almost_empty => ila_outbuff_almost_empty,
      ila_outbuff_full => ila_outbuff_full,
      ila_outbuff_almost_full => ila_outbuff_almost_full,
      ila_outbuff_valid => ila_outbuff_valid,
      ila_heap_sorter_ready => ila_heap_sorter_ready,
      ila_heap_sorter_fsm_state => ila_heap_sorter_fsm_state,
      ila_heap_sorter_position1 => ila_heap_sorter_position1,
      ila_heap_sorter_position2 => ila_heap_sorter_position2,
      ila_heap_sorter_position3 => ila_heap_sorter_position3,
      ila_heap_sorter_position4 => ila_heap_sorter_position4,
      ila_heap_sorter_position5 => ila_heap_sorter_position5,
      ila_heap_sorter_position6 => ila_heap_sorter_position6,
      ila_heap_sorter_position7 => ila_heap_sorter_position7,
      ila_heap_sorter_position8 => ila_heap_sorter_position8,
      ila_heap_sorter_position9 => ila_heap_sorter_position9,
      ila_heap_sorter_done => ila_heap_sorter_done,
      ila_heap_sorter_sorted_data_0 => ila_heap_sorter_sorted_data_0,
      ila_heap_sorter_sorted_data_1 => ila_heap_sorter_sorted_data_1,
      ila_heap_sorter_sorted_data_2 => ila_heap_sorter_sorted_data_2,
      ila_heap_sorter_sorted_data_3 => ila_heap_sorter_sorted_data_3,
      ila_heap_sorter_sorted_data_4 => ila_heap_sorter_sorted_data_4,
      ila_heap_sorter_sorted_data_5 => ila_heap_sorter_sorted_data_5,
      ila_heap_sorter_sorted_data_6 => ila_heap_sorter_sorted_data_6,
      ila_heap_sorter_sorted_data_7 => ila_heap_sorter_sorted_data_7,
      ila_heap_sorter_sorted_data_8 => ila_heap_sorter_sorted_data_8,
      ila_heap_sorter_sorted_data_9 => ila_heap_sorter_sorted_data_9,
      ila_heap_sorter_sorter_ready => ila_heap_sorter_sorter_ready,
      ila_master_fsm_state => ila_master_fsm_state,
      ila_master_axi_awready => ila_master_axi_awready,
      ila_master_axi_awaddr => ila_master_axi_awaddr,
      ila_master_axi_awsize => ila_master_axi_awsize,
      ila_master_axi_awlen => ila_master_axi_awlen,
      ila_master_axi_awvalid => ila_master_axi_awvalid,
      ila_master_axi_wready => ila_master_axi_wready,
      ila_master_axi_wdata => ila_master_axi_wdata,
      ila_master_axi_wlast => ila_master_axi_wlast,
      ila_master_axi_wvalid => ila_master_axi_wvalid,
      ila_master_axi_wstrb => ila_master_axi_wstrb,
      ila_master_axi_bvalid => ila_master_axi_bvalid,
      ila_master_axi_bready => ila_master_axi_bready,
      ila_master_axi_wbc => ila_master_axi_wbc,
      ila_master_axi_arsize => ila_master_axi_arsize,
      ila_master_axi_araddr => ila_master_axi_araddr,
      ila_master_axi_arlen => ila_master_axi_arlen,
      ila_master_axi_arvalid => ila_master_axi_arvalid,
      ila_master_axi_rready => ila_master_axi_rready,
      ila_master_axi_arready => ila_master_axi_arready,
      ila_master_axi_rdata => ila_master_axi_rdata,
      ila_master_axi_rlast => ila_master_axi_rlast,
      ila_master_axi_rvalid => ila_master_axi_rvalid,
      ila_master_axi_rbc => ila_master_axi_rbc,
      ila_master_outbuff_rd_en => ila_master_outbuff_rd_en,
      ila_master_inbuff_din => ila_master_inbuff_din,
      ila_master_inbuff_wr_en => ila_master_inbuff_wr_en,
      ila_master_input_volume_size => ila_master_input_volume_size,
      ila_master_input_volume_channels => ila_master_input_volume_channels,
      ila_master_output_volume_size => ila_master_output_volume_size,
      ila_master_output_volume_channels => ila_master_output_volume_channels,
      ila_master_pool_kernel_size => ila_master_pool_kernel_size,
      ila_master_stride => ila_master_stride,
      ila_master_input_data_addr_reg => ila_master_input_data_addr_reg,
      ila_master_output_data_addr_reg => ila_master_output_data_addr_reg,
      ila_master_row_counter => ila_master_row_counter,
      ila_master_channel_counter => ila_master_channel_counter,
      ila_master_writes_remaining => ila_master_writes_remaining,
      ila_master_calculated => ila_master_calculated,
      ila_master_more_bursts_needed => ila_master_more_bursts_needed,
      ila_master_channel_complete_counter => ila_master_channel_complete_counter,
      ila_master_complete_shift_reg => ila_master_complete_shift_reg,
      ila_master_data_valid => ila_master_data_valid,
      ila_master_operating_length => ila_master_operating_length,
      ila_master_input_index => ila_master_input_index,
      ila_master_input_addr_counter => ila_master_input_addr_counter,
      ila_master_stride_counter => ila_master_stride_counter,
      ila_master_addr1_multiple => ila_master_addr1_multiple,
      ila_master_addr2_multiple => ila_master_addr2_multiple,
      ila_master_start => ila_master_start,
      ila_master_start_reg => ila_master_start_reg,
      ila_master_first_calculated => ila_master_first_calculated,
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
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_rready => m00_axi_rready
    );
END neural_net_accelerator_Maxpool_Layer_32bit_0_0_arch;
