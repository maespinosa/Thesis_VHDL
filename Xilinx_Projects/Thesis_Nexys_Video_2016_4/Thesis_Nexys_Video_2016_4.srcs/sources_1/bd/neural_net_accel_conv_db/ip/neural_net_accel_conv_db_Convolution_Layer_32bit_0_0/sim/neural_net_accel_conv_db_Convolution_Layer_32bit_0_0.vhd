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

-- IP VLNV: xilinx.com:user:Convolution_Layer_32bit:1.0
-- IP Revision: 116

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY neural_net_accel_conv_db_Convolution_Layer_32bit_0_0 IS
  PORT (
    i_ext_reset_n : IN STD_LOGIC;
    o_convolution_done : OUT STD_LOGIC;
    o_data_written : OUT STD_LOGIC;
    o_cycle : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    o_epoch : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    ila_master_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_axi_awvalid : OUT STD_LOGIC;
    ila_master_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_wlast : OUT STD_LOGIC;
    ila_master_axi_wvalid : OUT STD_LOGIC;
    ila_master_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_axi_bready : OUT STD_LOGIC;
    ila_master_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ila_master_axi_arvalid : OUT STD_LOGIC;
    ila_master_axi_rready : OUT STD_LOGIC;
    ila_master_axi_awready : OUT STD_LOGIC;
    ila_master_axi_wready : OUT STD_LOGIC;
    ila_master_axi_bvalid : OUT STD_LOGIC;
    ila_master_axi_arready : OUT STD_LOGIC;
    ila_master_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_axi_rlast : OUT STD_LOGIC;
    ila_master_axi_rvalid : OUT STD_LOGIC;
    ila_master_wbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_rbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_input_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_output_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_weights_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_bias_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_prev_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_input_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_output_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_weights_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_bias_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_prev_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_out_volume_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_input_volume_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_prev_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_output_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_input_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_writes_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_reads_remaining : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_calculated : OUT STD_LOGIC;
    ila_master_column_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_more_bursts_needed : OUT STD_LOGIC;
    ila_master_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_channel_loop_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_row_loop_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_busy : OUT STD_LOGIC;
    ila_master_stride_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_bias_values_loaded : OUT STD_LOGIC;
    ila_master_channels_allowed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_operation_complete : OUT STD_LOGIC;
    ila_master_weight_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_input_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_output_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_prev_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_last_channel_base : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_out_last_channel_base : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_prev_last_channel_base : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_data_written : OUT STD_LOGIC;
    ila_master_output_base_pixel : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_input_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    ila_master_debug_mode : OUT STD_LOGIC;
    ila_master_affine_filter_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_convolution_done : OUT STD_LOGIC;
    ila_master_fsm_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ila_acc_fifo_almost_empty : OUT STD_LOGIC;
    ila_acc_fifo_almost_full : OUT STD_LOGIC;
    ila_acc_fifo_empty : OUT STD_LOGIC;
    ila_acc_fifo_full : OUT STD_LOGIC;
    ila_acc_fifo_rd_en : OUT STD_LOGIC;
    ila_acc_fifo_valid : OUT STD_LOGIC;
    ila_acc_fifo_wr_en : OUT STD_LOGIC;
    ila_accu_fifo_input : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_fifo_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_din_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_volume_fifo_almost_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_fifo_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_fifo_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_fifo_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_fifo_rd_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_fifo_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_fifo_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_fifo_din_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_din_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_fifo_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_fifo_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_fifo_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_fifo_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_fifo_rd_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_fifo_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_fifo_almost_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_rst : OUT STD_LOGIC;
    ila_volume_mux_prev_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_mux_new_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_mux_prev_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_mux_recycled_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_mux_recycled_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_stack_fifo_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_stack_fifo_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_stack_fifo_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_get_volume_row : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_router_disable_channel_n : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_router_convolution_en : OUT STD_LOGIC;
    ila_router_affine_en : OUT STD_LOGIC;
    ila_router_acc_ready : OUT STD_LOGIC;
    ila_router_filter_kernal_loaded : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_router_conv_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_router_affine_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_router_volume_ready : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_volume_router_ready : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_padded_volume_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_volume_router_empty_done : OUT STD_LOGIC;
    ila_weight_router_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_volume_router_stop_stack_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_calc_params : OUT STD_LOGIC;
    ila_volume_router_data_return_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_data_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_loaded_rows_processed : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_snake_fill_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_empty_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_empty_data_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_volume_router_element_counter : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    ila_volume_router_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_volume_router_column_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_volume_router_delay_shift_register : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_volume_router_pad_16bit : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_weight_router_ready : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_router_filter_data_return_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_router_clear_weights : OUT STD_LOGIC;
    ila_weight_router_data_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_router_filter_element_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_weight_router_delay_shift_register : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_weight_mux_recycle_filter_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_prev_weight_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_weight_mux_new_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_mux_prev_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_mux_recycled_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_mux_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_mux_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_mux_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_weight_mux_prev_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_get_weight_row : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_bias_fifo_almost_empty : OUT STD_LOGIC;
    ila_bias_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_bias_fifo_empty : OUT STD_LOGIC;
    ila_bias_fifo_full : OUT STD_LOGIC;
    ila_bias_fifo_almost_full : OUT STD_LOGIC;
    ila_bias_fifo_rd_en : OUT STD_LOGIC;
    ila_bias_fifo_valid : OUT STD_LOGIC;
    ila_bias_fifo_data_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_bias_fifo_data_return_en : OUT STD_LOGIC;
    ila_bias_fifo_return_wr_en : OUT STD_LOGIC;
    ila_bias_fifo_din_mux : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_bias_fifo_wr_en_mux : OUT STD_LOGIC;
    ila_prev_fifo_almost_empty : OUT STD_LOGIC;
    ila_prev_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_prev_fifo_empty : OUT STD_LOGIC;
    ila_prev_fifo_rd_en : OUT STD_LOGIC;
    ila_prev_fifo_valid : OUT STD_LOGIC;
    ila_reset : OUT STD_LOGIC;
    ila_reset_weight_fifo_n : OUT STD_LOGIC;
    ila_accumulator_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_accumulator_products_array_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_accumulator_kernel_element_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_accumulator_delay_shift_register : OUT STD_LOGIC_VECTOR(77 DOWNTO 0);
    ila_accumulator_kernel_delay_shift_register : OUT STD_LOGIC_VECTOR(50 DOWNTO 0);
    ila_accumulator_acc_ready : OUT STD_LOGIC;
    ila_accumulator_acc_complete : OUT STD_LOGIC;
    ila_accumulator_acc_valid : OUT STD_LOGIC;
    ila_accumulator_acc_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_column_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_filter_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_kernel_flag : OUT STD_LOGIC;
    ila_accumulator_que_acc_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_que_acc_valid : OUT STD_LOGIC;
    ila_accumulator_que_fifo_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_que_fifo_wr_en : OUT STD_LOGIC;
    ila_accumulator_que_fifo_rd_en : OUT STD_LOGIC;
    ila_accumulator_que_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_que_fifo_full : OUT STD_LOGIC;
    ila_accumulator_que_fifo_almost_full : OUT STD_LOGIC;
    ila_accumulator_que_fifo_empty : OUT STD_LOGIC;
    ila_accumulator_que_fifo_almost_empty : OUT STD_LOGIC;
    ila_accumulator_que_fifo_valid : OUT STD_LOGIC;
    ila_accumulator_channels_allowed_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_filter_size_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_accumulator_channels_filt_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_acc_relay_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_acc_relay_complete : OUT STD_LOGIC;
    ila_acc_relay_volume_processed : OUT STD_LOGIC;
    ila_acc_relay_iteration_complete : OUT STD_LOGIC;
    ila_acc_relay_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_acc_relay_output_pixel_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_acc_relay_volume_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_acc_relay_adder_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_acc_relay_addend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_relay_augend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_relay_sum_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_relay_first_channel_set_complete : OUT STD_LOGIC;
    ila_acc_relay_volume_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_relay_bias_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_relay_prev_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_acc_relay_iteration_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_acc_relay_bias_read : OUT STD_LOGIC;
    ila_acc_relay_prev_read : OUT STD_LOGIC;
    ila_acc_relay_filter_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_acc_relay_affine_en : OUT STD_LOGIC;
    ila_controller_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    ila_controller_filter_iterations_required : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_filters_in_set : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_accumulator_en : OUT STD_LOGIC;
    ila_controller_fifo_clear : OUT STD_LOGIC;
    ila_controller_fifo_reset : OUT STD_LOGIC;
    ila_controller_channels_allowed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_controller_more_dsps_needed : OUT STD_LOGIC;
    ila_controller_operation_complete : OUT STD_LOGIC;
    ila_controller_num_iterations : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_controller_all_channels_processed : OUT STD_LOGIC;
    ila_controller_input_volume_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_volume_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_weight_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_filter_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_filter_column_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_volume_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_volume_column_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_volume_index_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_weight_index_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_padded_volume_row_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_padded_volume_column_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_volume_rows_processed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_element_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_pad_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_controller_channels_processed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_pad_8bit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_controller_pad_10bit : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    ila_controller_pad_16bit : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_input_volume_size_10bit : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    ila_controller_volume_row : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_iteration_calc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_filter_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_channel_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_stride_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_controller_pad_row_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_controller_filter_iteration_complete : OUT STD_LOGIC;
    ila_controller_channel_iteration_complete : OUT STD_LOGIC;
    ila_controller_fifo_clear_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_controller_channel_iteration_calc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_channel_iterations_required : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_filter_iteration_calc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_channel_mask : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_controller_weight_filter_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_input_volume_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_input_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_weight_filter_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_number_of_filters : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_channels_in_set : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_controller_stride_index : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_controller_empty_data_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
    ila_inbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_inbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_inbuff_almost_empty : OUT STD_LOGIC;
    ila_inbuff_almost_full : OUT STD_LOGIC;
    ila_inbuff_empty : OUT STD_LOGIC;
    ila_inbuff_full : OUT STD_LOGIC;
    ila_inbuff_rd_en : OUT STD_LOGIC;
    ila_inbuff_valid : OUT STD_LOGIC;
    ila_outbuff_almost_empty : OUT STD_LOGIC;
    ila_outbuff_almost_full : OUT STD_LOGIC;
    ila_outbuff_empty : OUT STD_LOGIC;
    ila_outbuff_full : OUT STD_LOGIC;
    ila_outbuff_valid : OUT STD_LOGIC;
    ila_outbuff_wr_en : OUT STD_LOGIC;
    ila_outbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_outbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_a_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_multiplier_mult_b_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_products_array_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_result_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_result_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_4_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_4_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_5_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_6_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_1_reg_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_2_reg_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_3_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_4_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_4_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_5_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_layer_6_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_values_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_result_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_result_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_2_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_2_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_2_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_3_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_1_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_2_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_2_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_2_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_layer_3_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_kernel_addend_shift_register_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    ila_master_affine_select : OUT STD_LOGIC;
    ila_master_relu_en : OUT STD_LOGIC;
    ila_master_weights_loaded : OUT STD_LOGIC;
    ila_master_conv_complete : OUT STD_LOGIC;
    ila_master_more_dsps : OUT STD_LOGIC;
    ila_master_iteration_complete : OUT STD_LOGIC;
    ila_master_volume_complete : OUT STD_LOGIC;
    ila_master_dsps_used : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_iterations_required : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_row_complete : OUT STD_LOGIC;
    ila_master_layer_ready : OUT STD_LOGIC;
    ila_master_filter_iterations_required : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_acc_row_complete : OUT STD_LOGIC;
    ila_master_input_volume_height : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_input_volume_width : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_input_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_output_volume_height : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_output_volume_width : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    ila_master_output_volume_channels : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    ila_master_weight_filter_height : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_weight_filter_width : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_weight_filter_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_number_of_filters : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_stride : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_pad : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    ila_master_bias_length : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_ch_al_filt : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_affine_channels_in_set : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_affine_filters_in_set : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_channels_iterations : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_affine_filters_iterations : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    ila_master_start : OUT STD_LOGIC;
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
    m00_axi_rready : OUT STD_LOGIC;
    m00_axi_aclk : IN STD_LOGIC;
    m00_axi_aresetn : IN STD_LOGIC;
    m00_axi_txn_done : OUT STD_LOGIC;
    m00_axi_error : OUT STD_LOGIC;
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
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC
  );
END neural_net_accel_conv_db_Convolution_Layer_32bit_0_0;

ARCHITECTURE neural_net_accel_conv_db_Convolution_Layer_32bit_0_0_arch OF neural_net_accel_conv_db_Convolution_Layer_32bit_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF neural_net_accel_conv_db_Convolution_Layer_32bit_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Convolution_Layer_32bit_v1_0 IS
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
      G_DATA_WIDTH : INTEGER;
      G_DSPS_USED : INTEGER;
      G_ADDER_DELAY : INTEGER;
      G_MULT_DELAY : INTEGER;
      G_NUM_ADDER_LAYERS : INTEGER
    );
    PORT (
      i_ext_reset_n : IN STD_LOGIC;
      o_convolution_done : OUT STD_LOGIC;
      o_data_written : OUT STD_LOGIC;
      o_cycle : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      o_epoch : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      ila_master_axi_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_axi_awvalid : OUT STD_LOGIC;
      ila_master_axi_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_wlast : OUT STD_LOGIC;
      ila_master_axi_wvalid : OUT STD_LOGIC;
      ila_master_axi_wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_axi_bready : OUT STD_LOGIC;
      ila_master_axi_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_axi_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ila_master_axi_arvalid : OUT STD_LOGIC;
      ila_master_axi_rready : OUT STD_LOGIC;
      ila_master_axi_awready : OUT STD_LOGIC;
      ila_master_axi_wready : OUT STD_LOGIC;
      ila_master_axi_bvalid : OUT STD_LOGIC;
      ila_master_axi_arready : OUT STD_LOGIC;
      ila_master_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_axi_rlast : OUT STD_LOGIC;
      ila_master_axi_rvalid : OUT STD_LOGIC;
      ila_master_wbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_rbc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_input_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_output_data_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_weights_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_bias_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_prev_addr_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_input_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_output_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_weights_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_bias_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_prev_addr_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_out_volume_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_input_volume_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_prev_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_output_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_input_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_writes_remaining : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_reads_remaining : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_calculated : OUT STD_LOGIC;
      ila_master_column_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_more_bursts_needed : OUT STD_LOGIC;
      ila_master_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_channel_loop_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_row_loop_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_busy : OUT STD_LOGIC;
      ila_master_stride_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_bias_values_loaded : OUT STD_LOGIC;
      ila_master_channels_allowed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_operation_complete : OUT STD_LOGIC;
      ila_master_weight_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_input_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_output_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_prev_index : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_last_channel_base : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_out_last_channel_base : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_prev_last_channel_base : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_data_written : OUT STD_LOGIC;
      ila_master_output_base_pixel : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_input_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      ila_master_debug_mode : OUT STD_LOGIC;
      ila_master_affine_filter_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_convolution_done : OUT STD_LOGIC;
      ila_master_fsm_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ila_acc_fifo_almost_empty : OUT STD_LOGIC;
      ila_acc_fifo_almost_full : OUT STD_LOGIC;
      ila_acc_fifo_empty : OUT STD_LOGIC;
      ila_acc_fifo_full : OUT STD_LOGIC;
      ila_acc_fifo_rd_en : OUT STD_LOGIC;
      ila_acc_fifo_valid : OUT STD_LOGIC;
      ila_acc_fifo_wr_en : OUT STD_LOGIC;
      ila_accu_fifo_input : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_fifo_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_din_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_volume_fifo_almost_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_fifo_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_fifo_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_fifo_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_fifo_rd_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_fifo_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_fifo_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_fifo_din_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_din_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_fifo_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_fifo_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_fifo_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_fifo_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_fifo_rd_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_fifo_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_fifo_almost_empty : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_rst : OUT STD_LOGIC;
      ila_volume_mux_prev_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_mux_new_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_mux_prev_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_mux_recycled_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_mux_recycled_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_stack_fifo_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_stack_fifo_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_stack_fifo_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_get_volume_row : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_router_disable_channel_n : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_router_convolution_en : OUT STD_LOGIC;
      ila_router_affine_en : OUT STD_LOGIC;
      ila_router_acc_ready : OUT STD_LOGIC;
      ila_router_filter_kernal_loaded : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_router_conv_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_router_affine_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_router_volume_ready : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_volume_router_ready : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_padded_volume_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_volume_router_empty_done : OUT STD_LOGIC;
      ila_weight_router_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_volume_router_stop_stack_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_calc_params : OUT STD_LOGIC;
      ila_volume_router_data_return_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_data_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_loaded_rows_processed : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_snake_fill_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_empty_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_empty_data_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_volume_router_element_counter : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      ila_volume_router_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_volume_router_column_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_volume_router_delay_shift_register : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_volume_router_pad_16bit : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_weight_router_ready : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_router_filter_data_return_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_router_clear_weights : OUT STD_LOGIC;
      ila_weight_router_data_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_router_filter_element_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_weight_router_delay_shift_register : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_weight_mux_recycle_filter_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_prev_weight_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_weight_mux_new_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_mux_prev_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_mux_recycled_data_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_mux_almost_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_mux_full : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_mux_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_weight_mux_prev_data_wr_en : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_get_weight_row : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_bias_fifo_almost_empty : OUT STD_LOGIC;
      ila_bias_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_bias_fifo_empty : OUT STD_LOGIC;
      ila_bias_fifo_full : OUT STD_LOGIC;
      ila_bias_fifo_almost_full : OUT STD_LOGIC;
      ila_bias_fifo_rd_en : OUT STD_LOGIC;
      ila_bias_fifo_valid : OUT STD_LOGIC;
      ila_bias_fifo_data_return : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_bias_fifo_data_return_en : OUT STD_LOGIC;
      ila_bias_fifo_return_wr_en : OUT STD_LOGIC;
      ila_bias_fifo_din_mux : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_bias_fifo_wr_en_mux : OUT STD_LOGIC;
      ila_prev_fifo_almost_empty : OUT STD_LOGIC;
      ila_prev_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_prev_fifo_empty : OUT STD_LOGIC;
      ila_prev_fifo_rd_en : OUT STD_LOGIC;
      ila_prev_fifo_valid : OUT STD_LOGIC;
      ila_reset : OUT STD_LOGIC;
      ila_reset_weight_fifo_n : OUT STD_LOGIC;
      ila_accumulator_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_accumulator_products_array_valid : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_accumulator_kernel_element_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_accumulator_delay_shift_register : OUT STD_LOGIC_VECTOR(77 DOWNTO 0);
      ila_accumulator_kernel_delay_shift_register : OUT STD_LOGIC_VECTOR(50 DOWNTO 0);
      ila_accumulator_acc_ready : OUT STD_LOGIC;
      ila_accumulator_acc_complete : OUT STD_LOGIC;
      ila_accumulator_acc_valid : OUT STD_LOGIC;
      ila_accumulator_acc_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_column_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_filter_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_kernel_flag : OUT STD_LOGIC;
      ila_accumulator_que_acc_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_que_acc_valid : OUT STD_LOGIC;
      ila_accumulator_que_fifo_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_que_fifo_wr_en : OUT STD_LOGIC;
      ila_accumulator_que_fifo_rd_en : OUT STD_LOGIC;
      ila_accumulator_que_fifo_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_que_fifo_full : OUT STD_LOGIC;
      ila_accumulator_que_fifo_almost_full : OUT STD_LOGIC;
      ila_accumulator_que_fifo_empty : OUT STD_LOGIC;
      ila_accumulator_que_fifo_almost_empty : OUT STD_LOGIC;
      ila_accumulator_que_fifo_valid : OUT STD_LOGIC;
      ila_accumulator_channels_allowed_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_filter_size_counter : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_accumulator_channels_filt_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_acc_relay_state : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_acc_relay_complete : OUT STD_LOGIC;
      ila_acc_relay_volume_processed : OUT STD_LOGIC;
      ila_acc_relay_iteration_complete : OUT STD_LOGIC;
      ila_acc_relay_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_acc_relay_output_pixel_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_acc_relay_volume_row_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_acc_relay_adder_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_acc_relay_addend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_relay_augend : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_relay_sum_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_relay_first_channel_set_complete : OUT STD_LOGIC;
      ila_acc_relay_volume_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_relay_bias_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_relay_prev_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_acc_relay_iteration_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_acc_relay_bias_read : OUT STD_LOGIC;
      ila_acc_relay_prev_read : OUT STD_LOGIC;
      ila_acc_relay_filter_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_acc_relay_affine_en : OUT STD_LOGIC;
      ila_controller_state : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      ila_controller_filter_iterations_required : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_filters_in_set : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_accumulator_en : OUT STD_LOGIC;
      ila_controller_fifo_clear : OUT STD_LOGIC;
      ila_controller_fifo_reset : OUT STD_LOGIC;
      ila_controller_channels_allowed : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_controller_more_dsps_needed : OUT STD_LOGIC;
      ila_controller_operation_complete : OUT STD_LOGIC;
      ila_controller_num_iterations : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_controller_all_channels_processed : OUT STD_LOGIC;
      ila_controller_input_volume_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_volume_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_weight_channel_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_filter_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_filter_column_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_filter_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_volume_row_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_volume_column_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_volume_index_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_weight_index_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_padded_volume_row_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_padded_volume_column_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_volume_rows_processed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_element_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_pad_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_controller_channels_processed : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_pad_8bit : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_controller_pad_10bit : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      ila_controller_pad_16bit : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_input_volume_size_10bit : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
      ila_controller_volume_row : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_iteration_calc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_filter_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_channel_iteration_counter : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_stride_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_controller_pad_row_counter : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_controller_filter_iteration_complete : OUT STD_LOGIC;
      ila_controller_channel_iteration_complete : OUT STD_LOGIC;
      ila_controller_fifo_clear_counter : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_controller_channel_iteration_calc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_channel_iterations_required : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_filter_iteration_calc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_channel_mask : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_controller_weight_filter_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_input_volume_size : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_input_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_weight_filter_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_number_of_filters : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_channels_in_set : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_controller_stride_index : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_controller_empty_data_complete : OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
      ila_inbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_inbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_inbuff_almost_empty : OUT STD_LOGIC;
      ila_inbuff_almost_full : OUT STD_LOGIC;
      ila_inbuff_empty : OUT STD_LOGIC;
      ila_inbuff_full : OUT STD_LOGIC;
      ila_inbuff_rd_en : OUT STD_LOGIC;
      ila_inbuff_valid : OUT STD_LOGIC;
      ila_outbuff_almost_empty : OUT STD_LOGIC;
      ila_outbuff_almost_full : OUT STD_LOGIC;
      ila_outbuff_empty : OUT STD_LOGIC;
      ila_outbuff_full : OUT STD_LOGIC;
      ila_outbuff_valid : OUT STD_LOGIC;
      ila_outbuff_wr_en : OUT STD_LOGIC;
      ila_outbuff_din : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_outbuff_dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_a_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_multiplier_mult_b_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_17 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_18 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_19 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_20 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_21 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_22 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_23 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_24 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_25 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_26 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_27 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_28 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_29 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_30 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_31 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_products_array_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_result_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_result_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_4_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_4_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_5_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_6_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_1_reg_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_2_reg_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_3_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_4_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_4_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_5_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_layer_6_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_values_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_result_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_result_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_result_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_2_result_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_2_result_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_2_result_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_3_result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_1_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_2_reg_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_2_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_2_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_layer_3_reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_kernel_addend_shift_register_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      ila_master_affine_select : OUT STD_LOGIC;
      ila_master_relu_en : OUT STD_LOGIC;
      ila_master_weights_loaded : OUT STD_LOGIC;
      ila_master_conv_complete : OUT STD_LOGIC;
      ila_master_more_dsps : OUT STD_LOGIC;
      ila_master_iteration_complete : OUT STD_LOGIC;
      ila_master_volume_complete : OUT STD_LOGIC;
      ila_master_dsps_used : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_iterations_required : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_row_complete : OUT STD_LOGIC;
      ila_master_layer_ready : OUT STD_LOGIC;
      ila_master_filter_iterations_required : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_acc_row_complete : OUT STD_LOGIC;
      ila_master_input_volume_height : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_input_volume_width : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_input_volume_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_output_volume_height : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_output_volume_width : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      ila_master_output_volume_channels : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      ila_master_weight_filter_height : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_weight_filter_width : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_weight_filter_channels : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_number_of_filters : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_stride : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_pad : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      ila_master_bias_length : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_ch_al_filt : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_affine_channels_in_set : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_affine_filters_in_set : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_channels_iterations : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_affine_filters_iterations : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      ila_master_start : OUT STD_LOGIC;
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
      m00_axi_rready : OUT STD_LOGIC;
      m00_axi_aclk : IN STD_LOGIC;
      m00_axi_aresetn : IN STD_LOGIC;
      m00_axi_txn_done : OUT STD_LOGIC;
      m00_axi_error : OUT STD_LOGIC;
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
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_aresetn : IN STD_LOGIC
    );
  END COMPONENT Convolution_Layer_32bit_v1_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awaddr: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_awaddr";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awlen: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_awlen";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awvalid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_awvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wdata: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wlast: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_wlast";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wvalid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_wvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wstrb: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_wstrb";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_bready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_bready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_araddr: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_araddr";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arlen: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_arlen";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arsize: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_arsize";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arvalid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_arvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_rready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_awready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_awready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_wready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_wready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_bvalid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_bvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_arready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_arready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rdata: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rlast: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_rlast";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_axi_rvalid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_axi_rvalid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_wbc: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_wbc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_rbc: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_rbc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_data_addr_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_data_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_data_addr_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_data_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_weights_addr_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_weights_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_bias_addr_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_bias_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_prev_addr_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_prev_addr_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_addr_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_addr_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_addr_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_addr_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_weights_addr_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_weights_addr_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_bias_addr_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_bias_addr_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_prev_addr_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_prev_addr_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_out_volume_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_out_volume_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_volume_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_volume_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_channel_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_prev_channel_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_prev_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_channel_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_channel_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_writes_remaining: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_writes_remaining";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_reads_remaining: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_reads_remaining";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_calculated: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_calculated";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_column_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_column_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_more_bursts_needed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_more_bursts_needed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_iteration_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_iteration_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_channel_loop_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_channel_loop_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_row_loop_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_row_loop_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_busy: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_busy";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_stride_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_stride_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_filter_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_filter_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_bias_values_loaded: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_bias_values_loaded";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_channels_allowed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_channels_allowed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_operation_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_operation_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_weight_index: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_weight_index";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_index: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_index";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_index: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_index";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_prev_index: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_prev_index";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_last_channel_base: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_last_channel_base";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_out_last_channel_base: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_out_last_channel_base";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_prev_last_channel_base: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_prev_last_channel_base";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_data_written: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_data_written";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_base_pixel: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_base_pixel";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_arsize: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_arsize";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_debug_mode: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_debug_mode";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_affine_filter_iteration_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_affine_filter_iteration_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_convolution_done: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_convolution_done";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_fsm_state: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_fsm_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_rd_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accu_fifo_input: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accu_fifo_input";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_din: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_fifo_dout: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_fifo_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_11: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_11";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_12: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_12";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_13: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_13";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_14: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_14";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_15: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_15";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_16: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_16";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_17: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_17";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_18: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_18";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_19: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_19";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_20: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_20";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_21: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_21";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_22: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_22";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_23: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_23";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_24: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_24";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_25: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_25";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_26: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_26";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_27: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_27";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_28: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_28";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_29: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_29";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_30: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_30";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_31: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_31";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_din_32: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_din_32";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_rd_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_fifo_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_fifo_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_11: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_11";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_12: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_12";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_13: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_13";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_14: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_14";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_15: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_15";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_16: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_16";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_17: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_17";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_18: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_18";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_19: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_19";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_20: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_20";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_21: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_21";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_22: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_22";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_23: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_23";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_24: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_24";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_25: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_25";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_26: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_26";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_27: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_27";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_28: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_28";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_29: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_29";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_30: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_30";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_31: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_31";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_din_32: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_din_32";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_rd_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_fifo_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_fifo_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_rst: SIGNAL IS "xilinx.com:signal:reset:1.0 ila_weight_rst RST";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_mux_prev_data_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_mux_prev_data_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_mux_new_data_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_mux_new_data_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_mux_prev_data_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_mux_prev_data_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_mux_recycled_data_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_mux_recycled_data_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_mux_recycled_data_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_mux_recycled_data_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_stack_fifo_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_stack_fifo_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_stack_fifo_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_stack_fifo_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_stack_fifo_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_stack_fifo_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_get_volume_row: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_get_volume_row";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_disable_channel_n: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_disable_channel_n";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_convolution_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_convolution_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_affine_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_affine_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_acc_ready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_acc_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_filter_kernal_loaded: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_filter_kernal_loaded";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_conv_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_conv_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_affine_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_affine_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_router_volume_ready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_router_volume_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_state: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_ready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_padded_volume_size: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_padded_volume_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_empty_done: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_empty_done";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_router_state: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_router_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_stop_stack_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_stop_stack_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_calc_params: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_calc_params";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_data_return_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_data_return_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_data_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_data_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_loaded_rows_processed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_loaded_rows_processed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_snake_fill_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_snake_fill_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_empty_data_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_empty_data_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_empty_data_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_empty_data_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_element_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_element_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_filter_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_filter_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_column_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_column_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_delay_shift_register: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_delay_shift_register";
  ATTRIBUTE X_INTERFACE_INFO OF ila_volume_router_pad_16bit: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_volume_router_pad_16bit";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_router_ready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_router_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_router_filter_data_return_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_router_filter_data_return_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_router_clear_weights: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_router_clear_weights";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_router_data_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_router_data_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_router_filter_element_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_router_filter_element_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_router_delay_shift_register: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_router_delay_shift_register";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_recycle_filter_data_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_recycle_filter_data_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_prev_weight_data: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_prev_weight_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_new_data_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_new_data_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_prev_data_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_prev_data_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_recycled_data_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_recycled_data_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_weight_mux_prev_data_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_weight_mux_prev_data_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_get_weight_row: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_get_weight_row";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_dout: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_rd_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_data_return: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_data_return";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_data_return_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_data_return_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_return_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_return_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_din_mux: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_din_mux";
  ATTRIBUTE X_INTERFACE_INFO OF ila_bias_fifo_wr_en_mux: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_bias_fifo_wr_en_mux";
  ATTRIBUTE X_INTERFACE_INFO OF ila_prev_fifo_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_prev_fifo_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_prev_fifo_dout: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_prev_fifo_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_prev_fifo_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_prev_fifo_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_prev_fifo_rd_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_prev_fifo_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_prev_fifo_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_prev_fifo_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 ila_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF ila_reset_weight_fifo_n: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_reset_weight_fifo_n";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_state: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_products_array_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_products_array_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_kernel_element_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_kernel_element_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_delay_shift_register: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_delay_shift_register";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_kernel_delay_shift_register: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_kernel_delay_shift_register";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_acc_ready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_acc_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_acc_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_acc_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_acc_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_acc_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_acc_data: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_acc_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_column_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_column_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_filter_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_filter_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_kernel_flag: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_kernel_flag";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_acc_data: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_acc_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_acc_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_acc_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_din: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_rd_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_dout: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_que_fifo_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_que_fifo_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_channels_allowed_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_channels_allowed_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_filter_size_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_filter_size_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_accumulator_channels_filt_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_accumulator_channels_filt_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_state: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_volume_processed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_volume_processed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_iteration_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_iteration_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_filter_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_filter_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_output_pixel_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_output_pixel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_volume_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_volume_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_adder_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_adder_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_addend: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_addend";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_augend: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_augend";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_sum_result: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_sum_result";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_first_channel_set_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_first_channel_set_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_volume_data: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_volume_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_bias_data: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_bias_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_prev_data: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_prev_data";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_iteration_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_iteration_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_bias_read: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_bias_read";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_prev_read: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_prev_read";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_filter_iteration_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_filter_iteration_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_acc_relay_affine_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_acc_relay_affine_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_state: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_state";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filter_iterations_required: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filter_iterations_required";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filters_in_set: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filters_in_set";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_accumulator_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_accumulator_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_fifo_clear: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_fifo_clear";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_fifo_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 ila_controller_fifo_reset RST";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channels_allowed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channels_allowed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_more_dsps_needed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_more_dsps_needed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_operation_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_operation_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_num_iterations: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_num_iterations";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_all_channels_processed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_all_channels_processed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_input_volume_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_input_volume_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_volume_channel_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_volume_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_weight_channel_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_weight_channel_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filter_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filter_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filter_column_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filter_column_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filter_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filter_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_volume_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_volume_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_volume_column_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_volume_column_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_volume_index_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_volume_index_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_weight_index_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_weight_index_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_padded_volume_row_size: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_padded_volume_row_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_padded_volume_column_size: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_padded_volume_column_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_volume_rows_processed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_volume_rows_processed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_element_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_element_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_pad_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_pad_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channels_processed: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channels_processed";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_pad_8bit: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_pad_8bit";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_pad_10bit: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_pad_10bit";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_pad_16bit: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_pad_16bit";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_input_volume_size_10bit: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_input_volume_size_10bit";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_volume_row: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_volume_row";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_iteration_calc: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_iteration_calc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_iteration_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_iteration_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filter_iteration_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filter_iteration_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channel_iteration_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channel_iteration_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_stride_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_stride_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_pad_row_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_pad_row_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filter_iteration_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filter_iteration_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channel_iteration_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channel_iteration_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_fifo_clear_counter: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_fifo_clear_counter";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channel_iteration_calc: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channel_iteration_calc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channel_iterations_required: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channel_iterations_required";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_filter_iteration_calc: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_filter_iteration_calc";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channel_mask: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channel_mask";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_weight_filter_size: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_weight_filter_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_input_volume_size: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_input_volume_size";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_input_volume_channels: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_input_volume_channels";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_weight_filter_channels: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_weight_filter_channels";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_number_of_filters: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_number_of_filters";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_channels_in_set: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_channels_in_set";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_stride_index: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_stride_index";
  ATTRIBUTE X_INTERFACE_INFO OF ila_controller_empty_data_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_controller_empty_data_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_din: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_dout: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_rd_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_rd_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_inbuff_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_inbuff_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_almost_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_almost_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_almost_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_almost_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_empty: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_empty";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_full: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_full";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_valid: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_valid";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_wr_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_wr_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_din: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_din";
  ATTRIBUTE X_INTERFACE_INFO OF ila_outbuff_dout: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_outbuff_dout";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_11: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_11";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_12: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_12";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_13: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_13";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_14: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_14";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_15: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_15";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_16: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_16";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_17: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_17";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_18: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_18";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_19: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_19";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_20: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_20";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_21: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_21";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_22: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_22";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_23: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_23";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_24: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_24";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_25: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_25";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_26: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_26";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_27: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_27";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_28: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_28";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_29: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_29";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_30: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_30";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_31: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_31";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_a_32: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_a_32";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_11: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_11";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_12: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_12";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_13: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_13";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_14: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_14";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_15: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_15";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_16: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_16";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_17: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_17";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_18: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_18";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_19: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_19";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_20: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_20";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_21: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_21";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_22: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_22";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_23: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_23";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_24: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_24";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_25: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_25";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_26: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_26";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_27: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_27";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_28: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_28";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_29: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_29";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_30: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_30";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_31: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_31";
  ATTRIBUTE X_INTERFACE_INFO OF ila_multiplier_mult_b_32: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_multiplier_mult_b_32";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_11: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_11";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_12: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_12";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_13: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_13";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_14: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_14";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_15: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_15";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_16: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_16";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_17: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_17";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_18: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_18";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_19: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_19";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_20: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_20";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_21: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_21";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_22: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_22";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_23: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_23";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_24: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_24";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_25: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_25";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_26: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_26";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_27: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_27";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_28: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_28";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_29: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_29";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_30: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_30";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_31: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_31";
  ATTRIBUTE X_INTERFACE_INFO OF ila_products_array_32: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_products_array_32";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_11: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_11";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_12: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_12";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_13: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_13";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_14: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_14";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_result_15: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_result_15";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_result_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_result_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_result_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_result_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_result_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_result_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_result_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_result_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_result_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_result_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_4_result_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_4_result_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_4_result_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_4_result_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_5_result: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_5_result";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_6_result: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_6_result";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_11: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_11";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_12: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_12";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_13: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_13";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_14: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_14";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_1_reg_15: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_1_reg_15";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_2_reg_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_2_reg_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_reg_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_reg_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_reg_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_reg_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_reg_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_reg_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_3_reg_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_3_reg_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_4_reg_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_4_reg_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_4_reg_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_4_reg_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_5_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_5_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_layer_6_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_layer_6_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_values_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_values_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_result_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_result_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_result_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_result_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_result_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_result_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_result_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_result_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_result_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_result_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_result_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_result_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_2_result_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_2_result_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_2_result_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_2_result_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_2_result_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_2_result_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_3_result: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_3_result";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_reg_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_reg_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_reg_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_reg_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_reg_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_reg_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_reg_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_reg_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_reg_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_reg_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_1_reg_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_1_reg_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_2_reg_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_2_reg_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_2_reg_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_2_reg_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_2_reg_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_2_reg_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_layer_3_reg: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_layer_3_reg";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_0: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_0";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_1: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_1";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_2: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_2";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_3: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_3";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_4: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_4";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_5: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_5";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_6: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_6";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_7: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_7";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_8: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_8";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_9: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_9";
  ATTRIBUTE X_INTERFACE_INFO OF ila_kernel_addend_shift_register_10: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_kernel_addend_shift_register_10";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_affine_select: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_affine_select";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_relu_en: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_relu_en";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_weights_loaded: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_weights_loaded";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_conv_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_conv_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_more_dsps: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_more_dsps";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_iteration_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_iteration_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_volume_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_volume_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_dsps_used: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_dsps_used";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_iterations_required: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_iterations_required";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_row_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_row_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_layer_ready: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_layer_ready";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_filter_iterations_required: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_filter_iterations_required";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_acc_row_complete: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_acc_row_complete";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_volume_height: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_volume_height";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_volume_width: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_volume_width";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_input_volume_channels: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_input_volume_channels";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_volume_height: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_volume_height";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_volume_width: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_volume_width";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_output_volume_channels: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_output_volume_channels";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_weight_filter_height: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_weight_filter_height";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_weight_filter_width: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_weight_filter_width";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_weight_filter_channels: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_weight_filter_channels";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_number_of_filters: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_number_of_filters";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_stride: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_stride";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_pad: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_pad";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_bias_length: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_bias_length";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_ch_al_filt: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_ch_al_filt";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_affine_channels_in_set: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_affine_channels_in_set";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_affine_filters_in_set: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_affine_filters_in_set";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_channels_iterations: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_channels_iterations";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_affine_filters_iterations: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_affine_filters_iterations";
  ATTRIBUTE X_INTERFACE_INFO OF ila_master_start: SIGNAL IS "xilinx.com:user:ila_ports:1.0 ila_ports_1 ila_master_start";
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
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 m00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXI_RST RST, xilinx.com:signal:reset:1.0 m00_axi_aresetn RST";
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
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK, xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 S00_AXI_RST RST, xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
BEGIN
  U0 : Convolution_Layer_32bit_v1_0
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
      G_DATA_WIDTH => 32,
      G_DSPS_USED => 33,
      G_ADDER_DELAY => 12,
      G_MULT_DELAY => 8,
      G_NUM_ADDER_LAYERS => 6
    )
    PORT MAP (
      i_ext_reset_n => i_ext_reset_n,
      o_convolution_done => o_convolution_done,
      o_data_written => o_data_written,
      o_cycle => o_cycle,
      o_epoch => o_epoch,
      ila_master_axi_awaddr => ila_master_axi_awaddr,
      ila_master_axi_awlen => ila_master_axi_awlen,
      ila_master_axi_awvalid => ila_master_axi_awvalid,
      ila_master_axi_wdata => ila_master_axi_wdata,
      ila_master_axi_wlast => ila_master_axi_wlast,
      ila_master_axi_wvalid => ila_master_axi_wvalid,
      ila_master_axi_wstrb => ila_master_axi_wstrb,
      ila_master_axi_bready => ila_master_axi_bready,
      ila_master_axi_araddr => ila_master_axi_araddr,
      ila_master_axi_arlen => ila_master_axi_arlen,
      ila_master_axi_arsize => ila_master_axi_arsize,
      ila_master_axi_arvalid => ila_master_axi_arvalid,
      ila_master_axi_rready => ila_master_axi_rready,
      ila_master_axi_awready => ila_master_axi_awready,
      ila_master_axi_wready => ila_master_axi_wready,
      ila_master_axi_bvalid => ila_master_axi_bvalid,
      ila_master_axi_arready => ila_master_axi_arready,
      ila_master_axi_rdata => ila_master_axi_rdata,
      ila_master_axi_rlast => ila_master_axi_rlast,
      ila_master_axi_rvalid => ila_master_axi_rvalid,
      ila_master_wbc => ila_master_wbc,
      ila_master_rbc => ila_master_rbc,
      ila_master_input_data_addr_reg => ila_master_input_data_addr_reg,
      ila_master_output_data_addr_reg => ila_master_output_data_addr_reg,
      ila_master_weights_addr_reg => ila_master_weights_addr_reg,
      ila_master_bias_addr_reg => ila_master_bias_addr_reg,
      ila_master_prev_addr_reg => ila_master_prev_addr_reg,
      ila_master_input_addr_counter => ila_master_input_addr_counter,
      ila_master_output_addr_counter => ila_master_output_addr_counter,
      ila_master_weights_addr_counter => ila_master_weights_addr_counter,
      ila_master_bias_addr_counter => ila_master_bias_addr_counter,
      ila_master_prev_addr_counter => ila_master_prev_addr_counter,
      ila_master_row_counter => ila_master_row_counter,
      ila_master_out_volume_row_counter => ila_master_out_volume_row_counter,
      ila_master_input_volume_row_counter => ila_master_input_volume_row_counter,
      ila_master_channel_counter => ila_master_channel_counter,
      ila_master_prev_channel_counter => ila_master_prev_channel_counter,
      ila_master_output_channel_counter => ila_master_output_channel_counter,
      ila_master_input_channel_counter => ila_master_input_channel_counter,
      ila_master_writes_remaining => ila_master_writes_remaining,
      ila_master_reads_remaining => ila_master_reads_remaining,
      ila_master_calculated => ila_master_calculated,
      ila_master_column_counter => ila_master_column_counter,
      ila_master_more_bursts_needed => ila_master_more_bursts_needed,
      ila_master_iteration_counter => ila_master_iteration_counter,
      ila_master_channel_loop_counter => ila_master_channel_loop_counter,
      ila_master_row_loop_counter => ila_master_row_loop_counter,
      ila_master_busy => ila_master_busy,
      ila_master_stride_counter => ila_master_stride_counter,
      ila_master_filter_counter => ila_master_filter_counter,
      ila_master_bias_values_loaded => ila_master_bias_values_loaded,
      ila_master_channels_allowed => ila_master_channels_allowed,
      ila_master_operation_complete => ila_master_operation_complete,
      ila_master_weight_index => ila_master_weight_index,
      ila_master_input_index => ila_master_input_index,
      ila_master_output_index => ila_master_output_index,
      ila_master_prev_index => ila_master_prev_index,
      ila_master_last_channel_base => ila_master_last_channel_base,
      ila_master_out_last_channel_base => ila_master_out_last_channel_base,
      ila_master_prev_last_channel_base => ila_master_prev_last_channel_base,
      ila_master_data_written => ila_master_data_written,
      ila_master_output_base_pixel => ila_master_output_base_pixel,
      ila_master_input_arsize => ila_master_input_arsize,
      ila_master_debug_mode => ila_master_debug_mode,
      ila_master_affine_filter_iteration_counter => ila_master_affine_filter_iteration_counter,
      ila_master_convolution_done => ila_master_convolution_done,
      ila_master_fsm_state => ila_master_fsm_state,
      ila_acc_fifo_almost_empty => ila_acc_fifo_almost_empty,
      ila_acc_fifo_almost_full => ila_acc_fifo_almost_full,
      ila_acc_fifo_empty => ila_acc_fifo_empty,
      ila_acc_fifo_full => ila_acc_fifo_full,
      ila_acc_fifo_rd_en => ila_acc_fifo_rd_en,
      ila_acc_fifo_valid => ila_acc_fifo_valid,
      ila_acc_fifo_wr_en => ila_acc_fifo_wr_en,
      ila_accu_fifo_input => ila_accu_fifo_input,
      ila_acc_fifo_din => ila_acc_fifo_din,
      ila_acc_fifo_dout => ila_acc_fifo_dout,
      ila_volume_fifo_din_0 => ila_volume_fifo_din_0,
      ila_volume_fifo_din_1 => ila_volume_fifo_din_1,
      ila_volume_fifo_din_2 => ila_volume_fifo_din_2,
      ila_volume_fifo_din_3 => ila_volume_fifo_din_3,
      ila_volume_fifo_din_4 => ila_volume_fifo_din_4,
      ila_volume_fifo_din_5 => ila_volume_fifo_din_5,
      ila_volume_fifo_din_6 => ila_volume_fifo_din_6,
      ila_volume_fifo_din_7 => ila_volume_fifo_din_7,
      ila_volume_fifo_din_8 => ila_volume_fifo_din_8,
      ila_volume_fifo_din_9 => ila_volume_fifo_din_9,
      ila_volume_fifo_din_10 => ila_volume_fifo_din_10,
      ila_volume_fifo_din_11 => ila_volume_fifo_din_11,
      ila_volume_fifo_din_12 => ila_volume_fifo_din_12,
      ila_volume_fifo_din_13 => ila_volume_fifo_din_13,
      ila_volume_fifo_din_14 => ila_volume_fifo_din_14,
      ila_volume_fifo_din_15 => ila_volume_fifo_din_15,
      ila_volume_fifo_din_16 => ila_volume_fifo_din_16,
      ila_volume_fifo_din_17 => ila_volume_fifo_din_17,
      ila_volume_fifo_din_18 => ila_volume_fifo_din_18,
      ila_volume_fifo_din_19 => ila_volume_fifo_din_19,
      ila_volume_fifo_din_20 => ila_volume_fifo_din_20,
      ila_volume_fifo_din_21 => ila_volume_fifo_din_21,
      ila_volume_fifo_din_22 => ila_volume_fifo_din_22,
      ila_volume_fifo_din_23 => ila_volume_fifo_din_23,
      ila_volume_fifo_din_24 => ila_volume_fifo_din_24,
      ila_volume_fifo_din_25 => ila_volume_fifo_din_25,
      ila_volume_fifo_din_26 => ila_volume_fifo_din_26,
      ila_volume_fifo_din_27 => ila_volume_fifo_din_27,
      ila_volume_fifo_din_28 => ila_volume_fifo_din_28,
      ila_volume_fifo_din_29 => ila_volume_fifo_din_29,
      ila_volume_fifo_din_30 => ila_volume_fifo_din_30,
      ila_volume_fifo_din_31 => ila_volume_fifo_din_31,
      ila_volume_fifo_din_32 => ila_volume_fifo_din_32,
      ila_volume_fifo_almost_empty => ila_volume_fifo_almost_empty,
      ila_volume_fifo_almost_full => ila_volume_fifo_almost_full,
      ila_volume_fifo_empty => ila_volume_fifo_empty,
      ila_volume_fifo_full => ila_volume_fifo_full,
      ila_volume_fifo_rd_en => ila_volume_fifo_rd_en,
      ila_volume_fifo_valid => ila_volume_fifo_valid,
      ila_volume_fifo_wr_en => ila_volume_fifo_wr_en,
      ila_weight_fifo_din_0 => ila_weight_fifo_din_0,
      ila_weight_fifo_din_1 => ila_weight_fifo_din_1,
      ila_weight_fifo_din_2 => ila_weight_fifo_din_2,
      ila_weight_fifo_din_3 => ila_weight_fifo_din_3,
      ila_weight_fifo_din_4 => ila_weight_fifo_din_4,
      ila_weight_fifo_din_5 => ila_weight_fifo_din_5,
      ila_weight_fifo_din_6 => ila_weight_fifo_din_6,
      ila_weight_fifo_din_7 => ila_weight_fifo_din_7,
      ila_weight_fifo_din_8 => ila_weight_fifo_din_8,
      ila_weight_fifo_din_9 => ila_weight_fifo_din_9,
      ila_weight_fifo_din_10 => ila_weight_fifo_din_10,
      ila_weight_fifo_din_11 => ila_weight_fifo_din_11,
      ila_weight_fifo_din_12 => ila_weight_fifo_din_12,
      ila_weight_fifo_din_13 => ila_weight_fifo_din_13,
      ila_weight_fifo_din_14 => ila_weight_fifo_din_14,
      ila_weight_fifo_din_15 => ila_weight_fifo_din_15,
      ila_weight_fifo_din_16 => ila_weight_fifo_din_16,
      ila_weight_fifo_din_17 => ila_weight_fifo_din_17,
      ila_weight_fifo_din_18 => ila_weight_fifo_din_18,
      ila_weight_fifo_din_19 => ila_weight_fifo_din_19,
      ila_weight_fifo_din_20 => ila_weight_fifo_din_20,
      ila_weight_fifo_din_21 => ila_weight_fifo_din_21,
      ila_weight_fifo_din_22 => ila_weight_fifo_din_22,
      ila_weight_fifo_din_23 => ila_weight_fifo_din_23,
      ila_weight_fifo_din_24 => ila_weight_fifo_din_24,
      ila_weight_fifo_din_25 => ila_weight_fifo_din_25,
      ila_weight_fifo_din_26 => ila_weight_fifo_din_26,
      ila_weight_fifo_din_27 => ila_weight_fifo_din_27,
      ila_weight_fifo_din_28 => ila_weight_fifo_din_28,
      ila_weight_fifo_din_29 => ila_weight_fifo_din_29,
      ila_weight_fifo_din_30 => ila_weight_fifo_din_30,
      ila_weight_fifo_din_31 => ila_weight_fifo_din_31,
      ila_weight_fifo_din_32 => ila_weight_fifo_din_32,
      ila_weight_fifo_almost_full => ila_weight_fifo_almost_full,
      ila_weight_fifo_full => ila_weight_fifo_full,
      ila_weight_fifo_wr_en => ila_weight_fifo_wr_en,
      ila_weight_fifo_empty => ila_weight_fifo_empty,
      ila_weight_fifo_rd_en => ila_weight_fifo_rd_en,
      ila_weight_fifo_valid => ila_weight_fifo_valid,
      ila_weight_fifo_almost_empty => ila_weight_fifo_almost_empty,
      ila_weight_rst => ila_weight_rst,
      ila_volume_mux_prev_data_wr_en => ila_volume_mux_prev_data_wr_en,
      ila_volume_mux_new_data_en => ila_volume_mux_new_data_en,
      ila_volume_mux_prev_data_en => ila_volume_mux_prev_data_en,
      ila_volume_mux_recycled_data_wr_en => ila_volume_mux_recycled_data_wr_en,
      ila_volume_mux_recycled_data_en => ila_volume_mux_recycled_data_en,
      ila_volume_stack_fifo_wr_en => ila_volume_stack_fifo_wr_en,
      ila_volume_stack_fifo_almost_full => ila_volume_stack_fifo_almost_full,
      ila_volume_stack_fifo_full => ila_volume_stack_fifo_full,
      ila_get_volume_row => ila_get_volume_row,
      ila_router_disable_channel_n => ila_router_disable_channel_n,
      ila_router_convolution_en => ila_router_convolution_en,
      ila_router_affine_en => ila_router_affine_en,
      ila_router_acc_ready => ila_router_acc_ready,
      ila_router_filter_kernal_loaded => ila_router_filter_kernal_loaded,
      ila_router_conv_complete => ila_router_conv_complete,
      ila_router_affine_complete => ila_router_affine_complete,
      ila_router_volume_ready => ila_router_volume_ready,
      ila_volume_router_state => ila_volume_router_state,
      ila_volume_router_ready => ila_volume_router_ready,
      ila_volume_router_padded_volume_size => ila_volume_router_padded_volume_size,
      ila_volume_router_empty_done => ila_volume_router_empty_done,
      ila_weight_router_state => ila_weight_router_state,
      ila_volume_router_stop_stack_en => ila_volume_router_stop_stack_en,
      ila_volume_router_calc_params => ila_volume_router_calc_params,
      ila_volume_router_data_return_wr_en => ila_volume_router_data_return_wr_en,
      ila_volume_router_data_valid => ila_volume_router_data_valid,
      ila_volume_router_loaded_rows_processed => ila_volume_router_loaded_rows_processed,
      ila_volume_router_snake_fill_complete => ila_volume_router_snake_fill_complete,
      ila_volume_router_empty_data_en => ila_volume_router_empty_data_en,
      ila_volume_router_empty_data_complete => ila_volume_router_empty_data_complete,
      ila_volume_router_element_counter => ila_volume_router_element_counter,
      ila_volume_router_filter_counter => ila_volume_router_filter_counter,
      ila_volume_router_column_counter => ila_volume_router_column_counter,
      ila_volume_router_delay_shift_register => ila_volume_router_delay_shift_register,
      ila_volume_router_pad_16bit => ila_volume_router_pad_16bit,
      ila_weight_router_ready => ila_weight_router_ready,
      ila_weight_router_filter_data_return_wr_en => ila_weight_router_filter_data_return_wr_en,
      ila_weight_router_clear_weights => ila_weight_router_clear_weights,
      ila_weight_router_data_valid => ila_weight_router_data_valid,
      ila_weight_router_filter_element_counter => ila_weight_router_filter_element_counter,
      ila_weight_router_delay_shift_register => ila_weight_router_delay_shift_register,
      ila_weight_mux_recycle_filter_data_wr_en => ila_weight_mux_recycle_filter_data_wr_en,
      ila_prev_weight_data => ila_prev_weight_data,
      ila_weight_mux_new_data_en => ila_weight_mux_new_data_en,
      ila_weight_mux_prev_data_en => ila_weight_mux_prev_data_en,
      ila_weight_mux_recycled_data_en => ila_weight_mux_recycled_data_en,
      ila_weight_mux_almost_full => ila_weight_mux_almost_full,
      ila_weight_mux_full => ila_weight_mux_full,
      ila_weight_mux_wr_en => ila_weight_mux_wr_en,
      ila_weight_mux_prev_data_wr_en => ila_weight_mux_prev_data_wr_en,
      ila_get_weight_row => ila_get_weight_row,
      ila_bias_fifo_almost_empty => ila_bias_fifo_almost_empty,
      ila_bias_fifo_dout => ila_bias_fifo_dout,
      ila_bias_fifo_empty => ila_bias_fifo_empty,
      ila_bias_fifo_full => ila_bias_fifo_full,
      ila_bias_fifo_almost_full => ila_bias_fifo_almost_full,
      ila_bias_fifo_rd_en => ila_bias_fifo_rd_en,
      ila_bias_fifo_valid => ila_bias_fifo_valid,
      ila_bias_fifo_data_return => ila_bias_fifo_data_return,
      ila_bias_fifo_data_return_en => ila_bias_fifo_data_return_en,
      ila_bias_fifo_return_wr_en => ila_bias_fifo_return_wr_en,
      ila_bias_fifo_din_mux => ila_bias_fifo_din_mux,
      ila_bias_fifo_wr_en_mux => ila_bias_fifo_wr_en_mux,
      ila_prev_fifo_almost_empty => ila_prev_fifo_almost_empty,
      ila_prev_fifo_dout => ila_prev_fifo_dout,
      ila_prev_fifo_empty => ila_prev_fifo_empty,
      ila_prev_fifo_rd_en => ila_prev_fifo_rd_en,
      ila_prev_fifo_valid => ila_prev_fifo_valid,
      ila_reset => ila_reset,
      ila_reset_weight_fifo_n => ila_reset_weight_fifo_n,
      ila_accumulator_state => ila_accumulator_state,
      ila_accumulator_products_array_valid => ila_accumulator_products_array_valid,
      ila_accumulator_kernel_element_counter => ila_accumulator_kernel_element_counter,
      ila_accumulator_delay_shift_register => ila_accumulator_delay_shift_register,
      ila_accumulator_kernel_delay_shift_register => ila_accumulator_kernel_delay_shift_register,
      ila_accumulator_acc_ready => ila_accumulator_acc_ready,
      ila_accumulator_acc_complete => ila_accumulator_acc_complete,
      ila_accumulator_acc_valid => ila_accumulator_acc_valid,
      ila_accumulator_acc_data => ila_accumulator_acc_data,
      ila_accumulator_column_counter => ila_accumulator_column_counter,
      ila_accumulator_filter_counter => ila_accumulator_filter_counter,
      ila_accumulator_kernel_flag => ila_accumulator_kernel_flag,
      ila_accumulator_que_acc_data => ila_accumulator_que_acc_data,
      ila_accumulator_que_acc_valid => ila_accumulator_que_acc_valid,
      ila_accumulator_que_fifo_din => ila_accumulator_que_fifo_din,
      ila_accumulator_que_fifo_wr_en => ila_accumulator_que_fifo_wr_en,
      ila_accumulator_que_fifo_rd_en => ila_accumulator_que_fifo_rd_en,
      ila_accumulator_que_fifo_dout => ila_accumulator_que_fifo_dout,
      ila_accumulator_que_fifo_full => ila_accumulator_que_fifo_full,
      ila_accumulator_que_fifo_almost_full => ila_accumulator_que_fifo_almost_full,
      ila_accumulator_que_fifo_empty => ila_accumulator_que_fifo_empty,
      ila_accumulator_que_fifo_almost_empty => ila_accumulator_que_fifo_almost_empty,
      ila_accumulator_que_fifo_valid => ila_accumulator_que_fifo_valid,
      ila_accumulator_channels_allowed_counter => ila_accumulator_channels_allowed_counter,
      ila_accumulator_filter_size_counter => ila_accumulator_filter_size_counter,
      ila_accumulator_channels_filt_counter => ila_accumulator_channels_filt_counter,
      ila_acc_relay_state => ila_acc_relay_state,
      ila_acc_relay_complete => ila_acc_relay_complete,
      ila_acc_relay_volume_processed => ila_acc_relay_volume_processed,
      ila_acc_relay_iteration_complete => ila_acc_relay_iteration_complete,
      ila_acc_relay_filter_counter => ila_acc_relay_filter_counter,
      ila_acc_relay_output_pixel_counter => ila_acc_relay_output_pixel_counter,
      ila_acc_relay_volume_row_counter => ila_acc_relay_volume_row_counter,
      ila_acc_relay_adder_counter => ila_acc_relay_adder_counter,
      ila_acc_relay_addend => ila_acc_relay_addend,
      ila_acc_relay_augend => ila_acc_relay_augend,
      ila_acc_relay_sum_result => ila_acc_relay_sum_result,
      ila_acc_relay_first_channel_set_complete => ila_acc_relay_first_channel_set_complete,
      ila_acc_relay_volume_data => ila_acc_relay_volume_data,
      ila_acc_relay_bias_data => ila_acc_relay_bias_data,
      ila_acc_relay_prev_data => ila_acc_relay_prev_data,
      ila_acc_relay_iteration_counter => ila_acc_relay_iteration_counter,
      ila_acc_relay_bias_read => ila_acc_relay_bias_read,
      ila_acc_relay_prev_read => ila_acc_relay_prev_read,
      ila_acc_relay_filter_iteration_counter => ila_acc_relay_filter_iteration_counter,
      ila_acc_relay_affine_en => ila_acc_relay_affine_en,
      ila_controller_state => ila_controller_state,
      ila_controller_filter_iterations_required => ila_controller_filter_iterations_required,
      ila_controller_filters_in_set => ila_controller_filters_in_set,
      ila_controller_accumulator_en => ila_controller_accumulator_en,
      ila_controller_fifo_clear => ila_controller_fifo_clear,
      ila_controller_fifo_reset => ila_controller_fifo_reset,
      ila_controller_channels_allowed => ila_controller_channels_allowed,
      ila_controller_more_dsps_needed => ila_controller_more_dsps_needed,
      ila_controller_operation_complete => ila_controller_operation_complete,
      ila_controller_num_iterations => ila_controller_num_iterations,
      ila_controller_all_channels_processed => ila_controller_all_channels_processed,
      ila_controller_input_volume_row_counter => ila_controller_input_volume_row_counter,
      ila_controller_volume_channel_counter => ila_controller_volume_channel_counter,
      ila_controller_weight_channel_counter => ila_controller_weight_channel_counter,
      ila_controller_filter_row_counter => ila_controller_filter_row_counter,
      ila_controller_filter_column_counter => ila_controller_filter_column_counter,
      ila_controller_filter_counter => ila_controller_filter_counter,
      ila_controller_volume_row_counter => ila_controller_volume_row_counter,
      ila_controller_volume_column_counter => ila_controller_volume_column_counter,
      ila_controller_volume_index_counter => ila_controller_volume_index_counter,
      ila_controller_weight_index_counter => ila_controller_weight_index_counter,
      ila_controller_padded_volume_row_size => ila_controller_padded_volume_row_size,
      ila_controller_padded_volume_column_size => ila_controller_padded_volume_column_size,
      ila_controller_volume_rows_processed => ila_controller_volume_rows_processed,
      ila_controller_element_counter => ila_controller_element_counter,
      ila_controller_pad_counter => ila_controller_pad_counter,
      ila_controller_channels_processed => ila_controller_channels_processed,
      ila_controller_pad_8bit => ila_controller_pad_8bit,
      ila_controller_pad_10bit => ila_controller_pad_10bit,
      ila_controller_pad_16bit => ila_controller_pad_16bit,
      ila_controller_input_volume_size_10bit => ila_controller_input_volume_size_10bit,
      ila_controller_volume_row => ila_controller_volume_row,
      ila_controller_iteration_calc => ila_controller_iteration_calc,
      ila_controller_iteration_counter => ila_controller_iteration_counter,
      ila_controller_filter_iteration_counter => ila_controller_filter_iteration_counter,
      ila_controller_channel_iteration_counter => ila_controller_channel_iteration_counter,
      ila_controller_stride_counter => ila_controller_stride_counter,
      ila_controller_pad_row_counter => ila_controller_pad_row_counter,
      ila_controller_filter_iteration_complete => ila_controller_filter_iteration_complete,
      ila_controller_channel_iteration_complete => ila_controller_channel_iteration_complete,
      ila_controller_fifo_clear_counter => ila_controller_fifo_clear_counter,
      ila_controller_channel_iteration_calc => ila_controller_channel_iteration_calc,
      ila_controller_channel_iterations_required => ila_controller_channel_iterations_required,
      ila_controller_filter_iteration_calc => ila_controller_filter_iteration_calc,
      ila_controller_channel_mask => ila_controller_channel_mask,
      ila_controller_weight_filter_size => ila_controller_weight_filter_size,
      ila_controller_input_volume_size => ila_controller_input_volume_size,
      ila_controller_input_volume_channels => ila_controller_input_volume_channels,
      ila_controller_weight_filter_channels => ila_controller_weight_filter_channels,
      ila_controller_number_of_filters => ila_controller_number_of_filters,
      ila_controller_channels_in_set => ila_controller_channels_in_set,
      ila_controller_stride_index => ila_controller_stride_index,
      ila_controller_empty_data_complete => ila_controller_empty_data_complete,
      ila_inbuff_din => ila_inbuff_din,
      ila_inbuff_dout => ila_inbuff_dout,
      ila_inbuff_almost_empty => ila_inbuff_almost_empty,
      ila_inbuff_almost_full => ila_inbuff_almost_full,
      ila_inbuff_empty => ila_inbuff_empty,
      ila_inbuff_full => ila_inbuff_full,
      ila_inbuff_rd_en => ila_inbuff_rd_en,
      ila_inbuff_valid => ila_inbuff_valid,
      ila_outbuff_almost_empty => ila_outbuff_almost_empty,
      ila_outbuff_almost_full => ila_outbuff_almost_full,
      ila_outbuff_empty => ila_outbuff_empty,
      ila_outbuff_full => ila_outbuff_full,
      ila_outbuff_valid => ila_outbuff_valid,
      ila_outbuff_wr_en => ila_outbuff_wr_en,
      ila_outbuff_din => ila_outbuff_din,
      ila_outbuff_dout => ila_outbuff_dout,
      ila_multiplier_mult_a_0 => ila_multiplier_mult_a_0,
      ila_multiplier_mult_a_1 => ila_multiplier_mult_a_1,
      ila_multiplier_mult_a_2 => ila_multiplier_mult_a_2,
      ila_multiplier_mult_a_3 => ila_multiplier_mult_a_3,
      ila_multiplier_mult_a_4 => ila_multiplier_mult_a_4,
      ila_multiplier_mult_a_5 => ila_multiplier_mult_a_5,
      ila_multiplier_mult_a_6 => ila_multiplier_mult_a_6,
      ila_multiplier_mult_a_7 => ila_multiplier_mult_a_7,
      ila_multiplier_mult_a_8 => ila_multiplier_mult_a_8,
      ila_multiplier_mult_a_9 => ila_multiplier_mult_a_9,
      ila_multiplier_mult_a_10 => ila_multiplier_mult_a_10,
      ila_multiplier_mult_a_11 => ila_multiplier_mult_a_11,
      ila_multiplier_mult_a_12 => ila_multiplier_mult_a_12,
      ila_multiplier_mult_a_13 => ila_multiplier_mult_a_13,
      ila_multiplier_mult_a_14 => ila_multiplier_mult_a_14,
      ila_multiplier_mult_a_15 => ila_multiplier_mult_a_15,
      ila_multiplier_mult_a_16 => ila_multiplier_mult_a_16,
      ila_multiplier_mult_a_17 => ila_multiplier_mult_a_17,
      ila_multiplier_mult_a_18 => ila_multiplier_mult_a_18,
      ila_multiplier_mult_a_19 => ila_multiplier_mult_a_19,
      ila_multiplier_mult_a_20 => ila_multiplier_mult_a_20,
      ila_multiplier_mult_a_21 => ila_multiplier_mult_a_21,
      ila_multiplier_mult_a_22 => ila_multiplier_mult_a_22,
      ila_multiplier_mult_a_23 => ila_multiplier_mult_a_23,
      ila_multiplier_mult_a_24 => ila_multiplier_mult_a_24,
      ila_multiplier_mult_a_25 => ila_multiplier_mult_a_25,
      ila_multiplier_mult_a_26 => ila_multiplier_mult_a_26,
      ila_multiplier_mult_a_27 => ila_multiplier_mult_a_27,
      ila_multiplier_mult_a_28 => ila_multiplier_mult_a_28,
      ila_multiplier_mult_a_29 => ila_multiplier_mult_a_29,
      ila_multiplier_mult_a_30 => ila_multiplier_mult_a_30,
      ila_multiplier_mult_a_31 => ila_multiplier_mult_a_31,
      ila_multiplier_mult_a_32 => ila_multiplier_mult_a_32,
      ila_multiplier_mult_b_0 => ila_multiplier_mult_b_0,
      ila_multiplier_mult_b_1 => ila_multiplier_mult_b_1,
      ila_multiplier_mult_b_2 => ila_multiplier_mult_b_2,
      ila_multiplier_mult_b_3 => ila_multiplier_mult_b_3,
      ila_multiplier_mult_b_4 => ila_multiplier_mult_b_4,
      ila_multiplier_mult_b_5 => ila_multiplier_mult_b_5,
      ila_multiplier_mult_b_6 => ila_multiplier_mult_b_6,
      ila_multiplier_mult_b_7 => ila_multiplier_mult_b_7,
      ila_multiplier_mult_b_8 => ila_multiplier_mult_b_8,
      ila_multiplier_mult_b_9 => ila_multiplier_mult_b_9,
      ila_multiplier_mult_b_10 => ila_multiplier_mult_b_10,
      ila_multiplier_mult_b_11 => ila_multiplier_mult_b_11,
      ila_multiplier_mult_b_12 => ila_multiplier_mult_b_12,
      ila_multiplier_mult_b_13 => ila_multiplier_mult_b_13,
      ila_multiplier_mult_b_14 => ila_multiplier_mult_b_14,
      ila_multiplier_mult_b_15 => ila_multiplier_mult_b_15,
      ila_multiplier_mult_b_16 => ila_multiplier_mult_b_16,
      ila_multiplier_mult_b_17 => ila_multiplier_mult_b_17,
      ila_multiplier_mult_b_18 => ila_multiplier_mult_b_18,
      ila_multiplier_mult_b_19 => ila_multiplier_mult_b_19,
      ila_multiplier_mult_b_20 => ila_multiplier_mult_b_20,
      ila_multiplier_mult_b_21 => ila_multiplier_mult_b_21,
      ila_multiplier_mult_b_22 => ila_multiplier_mult_b_22,
      ila_multiplier_mult_b_23 => ila_multiplier_mult_b_23,
      ila_multiplier_mult_b_24 => ila_multiplier_mult_b_24,
      ila_multiplier_mult_b_25 => ila_multiplier_mult_b_25,
      ila_multiplier_mult_b_26 => ila_multiplier_mult_b_26,
      ila_multiplier_mult_b_27 => ila_multiplier_mult_b_27,
      ila_multiplier_mult_b_28 => ila_multiplier_mult_b_28,
      ila_multiplier_mult_b_29 => ila_multiplier_mult_b_29,
      ila_multiplier_mult_b_30 => ila_multiplier_mult_b_30,
      ila_multiplier_mult_b_31 => ila_multiplier_mult_b_31,
      ila_multiplier_mult_b_32 => ila_multiplier_mult_b_32,
      ila_products_array_0 => ila_products_array_0,
      ila_products_array_1 => ila_products_array_1,
      ila_products_array_2 => ila_products_array_2,
      ila_products_array_3 => ila_products_array_3,
      ila_products_array_4 => ila_products_array_4,
      ila_products_array_5 => ila_products_array_5,
      ila_products_array_6 => ila_products_array_6,
      ila_products_array_7 => ila_products_array_7,
      ila_products_array_8 => ila_products_array_8,
      ila_products_array_9 => ila_products_array_9,
      ila_products_array_10 => ila_products_array_10,
      ila_products_array_11 => ila_products_array_11,
      ila_products_array_12 => ila_products_array_12,
      ila_products_array_13 => ila_products_array_13,
      ila_products_array_14 => ila_products_array_14,
      ila_products_array_15 => ila_products_array_15,
      ila_products_array_16 => ila_products_array_16,
      ila_products_array_17 => ila_products_array_17,
      ila_products_array_18 => ila_products_array_18,
      ila_products_array_19 => ila_products_array_19,
      ila_products_array_20 => ila_products_array_20,
      ila_products_array_21 => ila_products_array_21,
      ila_products_array_22 => ila_products_array_22,
      ila_products_array_23 => ila_products_array_23,
      ila_products_array_24 => ila_products_array_24,
      ila_products_array_25 => ila_products_array_25,
      ila_products_array_26 => ila_products_array_26,
      ila_products_array_27 => ila_products_array_27,
      ila_products_array_28 => ila_products_array_28,
      ila_products_array_29 => ila_products_array_29,
      ila_products_array_30 => ila_products_array_30,
      ila_products_array_31 => ila_products_array_31,
      ila_products_array_32 => ila_products_array_32,
      ila_layer_1_result_0 => ila_layer_1_result_0,
      ila_layer_1_result_1 => ila_layer_1_result_1,
      ila_layer_1_result_2 => ila_layer_1_result_2,
      ila_layer_1_result_3 => ila_layer_1_result_3,
      ila_layer_1_result_4 => ila_layer_1_result_4,
      ila_layer_1_result_5 => ila_layer_1_result_5,
      ila_layer_1_result_6 => ila_layer_1_result_6,
      ila_layer_1_result_7 => ila_layer_1_result_7,
      ila_layer_1_result_8 => ila_layer_1_result_8,
      ila_layer_1_result_9 => ila_layer_1_result_9,
      ila_layer_1_result_10 => ila_layer_1_result_10,
      ila_layer_1_result_11 => ila_layer_1_result_11,
      ila_layer_1_result_12 => ila_layer_1_result_12,
      ila_layer_1_result_13 => ila_layer_1_result_13,
      ila_layer_1_result_14 => ila_layer_1_result_14,
      ila_layer_1_result_15 => ila_layer_1_result_15,
      ila_layer_2_result_0 => ila_layer_2_result_0,
      ila_layer_2_result_1 => ila_layer_2_result_1,
      ila_layer_2_result_2 => ila_layer_2_result_2,
      ila_layer_2_result_3 => ila_layer_2_result_3,
      ila_layer_2_result_4 => ila_layer_2_result_4,
      ila_layer_2_result_5 => ila_layer_2_result_5,
      ila_layer_2_result_6 => ila_layer_2_result_6,
      ila_layer_2_result_7 => ila_layer_2_result_7,
      ila_layer_3_result_0 => ila_layer_3_result_0,
      ila_layer_3_result_1 => ila_layer_3_result_1,
      ila_layer_3_result_2 => ila_layer_3_result_2,
      ila_layer_3_result_3 => ila_layer_3_result_3,
      ila_layer_4_result_0 => ila_layer_4_result_0,
      ila_layer_4_result_1 => ila_layer_4_result_1,
      ila_layer_5_result => ila_layer_5_result,
      ila_layer_6_result => ila_layer_6_result,
      ila_layer_1_reg_0 => ila_layer_1_reg_0,
      ila_layer_1_reg_1 => ila_layer_1_reg_1,
      ila_layer_1_reg_2 => ila_layer_1_reg_2,
      ila_layer_1_reg_3 => ila_layer_1_reg_3,
      ila_layer_1_reg_4 => ila_layer_1_reg_4,
      ila_layer_1_reg_5 => ila_layer_1_reg_5,
      ila_layer_1_reg_6 => ila_layer_1_reg_6,
      ila_layer_1_reg_7 => ila_layer_1_reg_7,
      ila_layer_1_reg_8 => ila_layer_1_reg_8,
      ila_layer_1_reg_9 => ila_layer_1_reg_9,
      ila_layer_1_reg_10 => ila_layer_1_reg_10,
      ila_layer_1_reg_11 => ila_layer_1_reg_11,
      ila_layer_1_reg_12 => ila_layer_1_reg_12,
      ila_layer_1_reg_13 => ila_layer_1_reg_13,
      ila_layer_1_reg_14 => ila_layer_1_reg_14,
      ila_layer_1_reg_15 => ila_layer_1_reg_15,
      ila_layer_2_reg_0 => ila_layer_2_reg_0,
      ila_layer_2_reg_1 => ila_layer_2_reg_1,
      ila_layer_2_reg_2 => ila_layer_2_reg_2,
      ila_layer_2_reg_3 => ila_layer_2_reg_3,
      ila_layer_2_reg_4 => ila_layer_2_reg_4,
      ila_layer_2_reg_5 => ila_layer_2_reg_5,
      ila_layer_2_reg_6 => ila_layer_2_reg_6,
      ila_layer_2_reg_7 => ila_layer_2_reg_7,
      ila_layer_3_reg_0 => ila_layer_3_reg_0,
      ila_layer_3_reg_1 => ila_layer_3_reg_1,
      ila_layer_3_reg_2 => ila_layer_3_reg_2,
      ila_layer_3_reg_3 => ila_layer_3_reg_3,
      ila_layer_4_reg_0 => ila_layer_4_reg_0,
      ila_layer_4_reg_1 => ila_layer_4_reg_1,
      ila_layer_5_reg => ila_layer_5_reg,
      ila_layer_6_reg => ila_layer_6_reg,
      ila_kernel_values_0 => ila_kernel_values_0,
      ila_kernel_values_1 => ila_kernel_values_1,
      ila_kernel_values_2 => ila_kernel_values_2,
      ila_kernel_values_3 => ila_kernel_values_3,
      ila_kernel_values_4 => ila_kernel_values_4,
      ila_kernel_values_5 => ila_kernel_values_5,
      ila_kernel_values_6 => ila_kernel_values_6,
      ila_kernel_values_7 => ila_kernel_values_7,
      ila_kernel_values_8 => ila_kernel_values_8,
      ila_kernel_values_9 => ila_kernel_values_9,
      ila_kernel_values_10 => ila_kernel_values_10,
      ila_kernel_layer_1_result_0 => ila_kernel_layer_1_result_0,
      ila_kernel_layer_1_result_1 => ila_kernel_layer_1_result_1,
      ila_kernel_layer_1_result_2 => ila_kernel_layer_1_result_2,
      ila_kernel_layer_1_result_3 => ila_kernel_layer_1_result_3,
      ila_kernel_layer_1_result_4 => ila_kernel_layer_1_result_4,
      ila_kernel_layer_1_result_5 => ila_kernel_layer_1_result_5,
      ila_kernel_layer_2_result_0 => ila_kernel_layer_2_result_0,
      ila_kernel_layer_2_result_1 => ila_kernel_layer_2_result_1,
      ila_kernel_layer_2_result_2 => ila_kernel_layer_2_result_2,
      ila_kernel_layer_3_result => ila_kernel_layer_3_result,
      ila_kernel_layer_1_reg_0 => ila_kernel_layer_1_reg_0,
      ila_kernel_layer_1_reg_1 => ila_kernel_layer_1_reg_1,
      ila_kernel_layer_1_reg_2 => ila_kernel_layer_1_reg_2,
      ila_kernel_layer_1_reg_3 => ila_kernel_layer_1_reg_3,
      ila_kernel_layer_1_reg_4 => ila_kernel_layer_1_reg_4,
      ila_kernel_layer_1_reg_5 => ila_kernel_layer_1_reg_5,
      ila_kernel_layer_2_reg_0 => ila_kernel_layer_2_reg_0,
      ila_kernel_layer_2_reg_1 => ila_kernel_layer_2_reg_1,
      ila_kernel_layer_2_reg_2 => ila_kernel_layer_2_reg_2,
      ila_kernel_layer_3_reg => ila_kernel_layer_3_reg,
      ila_kernel_addend_shift_register_0 => ila_kernel_addend_shift_register_0,
      ila_kernel_addend_shift_register_1 => ila_kernel_addend_shift_register_1,
      ila_kernel_addend_shift_register_2 => ila_kernel_addend_shift_register_2,
      ila_kernel_addend_shift_register_3 => ila_kernel_addend_shift_register_3,
      ila_kernel_addend_shift_register_4 => ila_kernel_addend_shift_register_4,
      ila_kernel_addend_shift_register_5 => ila_kernel_addend_shift_register_5,
      ila_kernel_addend_shift_register_6 => ila_kernel_addend_shift_register_6,
      ila_kernel_addend_shift_register_7 => ila_kernel_addend_shift_register_7,
      ila_kernel_addend_shift_register_8 => ila_kernel_addend_shift_register_8,
      ila_kernel_addend_shift_register_9 => ila_kernel_addend_shift_register_9,
      ila_kernel_addend_shift_register_10 => ila_kernel_addend_shift_register_10,
      ila_master_affine_select => ila_master_affine_select,
      ila_master_relu_en => ila_master_relu_en,
      ila_master_weights_loaded => ila_master_weights_loaded,
      ila_master_conv_complete => ila_master_conv_complete,
      ila_master_more_dsps => ila_master_more_dsps,
      ila_master_iteration_complete => ila_master_iteration_complete,
      ila_master_volume_complete => ila_master_volume_complete,
      ila_master_dsps_used => ila_master_dsps_used,
      ila_master_iterations_required => ila_master_iterations_required,
      ila_master_row_complete => ila_master_row_complete,
      ila_master_layer_ready => ila_master_layer_ready,
      ila_master_filter_iterations_required => ila_master_filter_iterations_required,
      ila_master_acc_row_complete => ila_master_acc_row_complete,
      ila_master_input_volume_height => ila_master_input_volume_height,
      ila_master_input_volume_width => ila_master_input_volume_width,
      ila_master_input_volume_channels => ila_master_input_volume_channels,
      ila_master_output_volume_height => ila_master_output_volume_height,
      ila_master_output_volume_width => ila_master_output_volume_width,
      ila_master_output_volume_channels => ila_master_output_volume_channels,
      ila_master_weight_filter_height => ila_master_weight_filter_height,
      ila_master_weight_filter_width => ila_master_weight_filter_width,
      ila_master_weight_filter_channels => ila_master_weight_filter_channels,
      ila_master_number_of_filters => ila_master_number_of_filters,
      ila_master_stride => ila_master_stride,
      ila_master_pad => ila_master_pad,
      ila_master_bias_length => ila_master_bias_length,
      ila_master_ch_al_filt => ila_master_ch_al_filt,
      ila_master_affine_channels_in_set => ila_master_affine_channels_in_set,
      ila_master_affine_filters_in_set => ila_master_affine_filters_in_set,
      ila_master_channels_iterations => ila_master_channels_iterations,
      ila_master_affine_filters_iterations => ila_master_affine_filters_iterations,
      ila_master_start => ila_master_start,
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
      m00_axi_rready => m00_axi_rready,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_txn_done => m00_axi_txn_done,
      m00_axi_error => m00_axi_error,
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
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn
    );
END neural_net_accel_conv_db_Convolution_Layer_32bit_0_0_arch;
