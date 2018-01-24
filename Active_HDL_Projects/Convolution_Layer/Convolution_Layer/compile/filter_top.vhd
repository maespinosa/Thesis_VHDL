-------------------------------------------------------------------------------
--
-- Title       : filter_top
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\filter_top.vhd
-- Generated   : Mon Jan 22 01:42:19 2018
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_top.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

library convolution_layer; 
use convolution_layer.types_pkg.all;


library Convolution_Layer;
library Convolution_Layer;
library Convolution_Layer;
library Convolution_Layer;
library Convolution_Layer;
library Convolution_Layer;
library Convolution_Layer;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;
use Convolution_Layer.types_pkg.all;

entity filter_top is
  generic(
       -- name : type := value
       g_data_width : integer := 16;
       g_weight_width : integer := 16;
       g_multiplier_width : integer := 16;
       g_product_width : integer := 16;
       g_conv_width : integer := 16;
       g_dsps_used : integer := 200
  );
  port(
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_normalizer_ready : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_start : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       i_input_volume_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_number_of_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_pad : in STD_LOGIC_VECTOR(3 downto 0);
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_weight_filter_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_conv_data_valid : out STD_LOGIC;
       o_inbuff_rd_en : out STD_LOGIC;
       o_conv_volume_out : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0)
  );
end filter_top;

architecture arch of filter_top is

---- Component declarations -----

component conv_fp_multiplier
  port (
       a : in STD_LOGIC_VECTOR(15 downto 0);
       b : in STD_LOGIC_VECTOR(15 downto 0);
       clk : in STD_LOGIC;
       result : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component input_network_fifo
  port (
       din : in STD_LOGIC_VECTOR(15 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(15 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
component accumulator
  generic(
       g_data_width : INTEGER := 16;
       g_product_width : INTEGER := 32;
       g_accumulator_width : INTEGER := 32;
       g_dsps_used : INTEGER := 200
  );
  port (
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_products_array : in array_type_varx16bit(g_dsps_used-1 downto 0);
       i_products_array_valid : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_reset_n : in STD_LOGIC;
       o_acc_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_acc_valid : out STD_LOGIC
  );
end component;
component accumulator_relay
  generic(
       g_data_width : INTEGER := 16
  );
  port (
       i_acc_filter_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_almost_empty : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_data_valid : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_hold : in STD_LOGIC;
       i_normalizer_ready : in STD_LOGIC;
       i_prog_empty : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_conv_data_valid : out STD_LOGIC;
       o_conv_volume_out : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_hold_clear : out STD_LOGIC;
       o_prog_emtpy_thresh : out STD_LOGIC_VECTOR(10 downto 0);
       o_rd_en : out STD_LOGIC;
       o_recycled_acc_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_recycled_acc_data_en : out STD_LOGIC
  );
end component;
component filter_accumulator
  generic(
       g_data_width : INTEGER := 16
  );
  port (
       i_acc_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_acc_data_valid : in STD_LOGIC;
       i_almost_full : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_hold_clear : in STD_LOGIC;
       i_num_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_num_iterations : in STD_LOGIC_VECTOR(7 downto 0);
       i_prog_full : in STD_LOGIC;
       i_recycled_acc_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_recycled_acc_data_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_acc_filter_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_data_valid : out STD_LOGIC;
       o_hold : out STD_LOGIC;
       o_prog_full_thresh : out STD_LOGIC_VECTOR(10 downto 0)
  );
end component;
component input_fifo_net_controller
  generic(
       g_weight_width : INTEGER := 16;
       g_data_width : INTEGER := 16;
       g_dsps_used : INTEGER := 200;
       g_num_11_filters : INTEGER := 18;
       g_num_7_filters : INTEGER := 28;
       g_num_3_filters : INTEGER := 66
  );
  port (
       i_clk : in STD_LOGIC;
       i_data_return : in array_type_varx16bit(g_dsps_used-1 downto 0);
       i_data_return_wr_en : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_enable : in STD_LOGIC;
       i_filter_kernal_loaded : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_get_volume_row : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_get_weight_row : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_input_volume_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_loaded_rows_processed : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_number_of_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_pad : in STD_LOGIC_VECTOR(3 downto 0);
       i_reset_n : in STD_LOGIC;
       i_snake_fill_complete : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_start : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_volume_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_volume_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_volume_fifo_prog_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_prog_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_filter_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_all_channels_processed : out STD_LOGIC;
       o_convolution_en : out STD_LOGIC;
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_padded_volume_size : out STD_LOGIC_VECTOR(7 downto 0);
       o_prev_data : out array_type_varx16bit(g_dsps_used-1 downto 0);
       o_prev_data_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_recycled_data : out array_type_varx16bit(g_dsps_used-1 downto 0);
       o_recycled_data_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_stop_stack_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_data : out array_type_varx16bit(g_dsps_used-1 downto 0);
       o_volume_fifo_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_volume_fifo_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_new_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_prev_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_recycled_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weight_data : out array_type_varx16bit(g_dsps_used-1 downto 0);
       o_weight_fifo_prog_full_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_weight_fifo_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_new_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_prev_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_prev_data_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_recycled_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0)
  );
end component;
component volume_mux
  port (
       i_almost_full : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       i_fifo_we : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_new_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_new_data_en : in STD_LOGIC;
       i_prev_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_prev_data_en : in STD_LOGIC;
       i_prev_data_wr_en : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_recycled_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_recycled_data_en : in STD_LOGIC;
       i_recycled_data_wr_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_data : out STD_LOGIC_VECTOR(15 downto 0);
       o_fifo_almost_full : out STD_LOGIC;
       o_fifo_full : out STD_LOGIC;
       o_fifo_prog_full : out STD_LOGIC;
       o_get_volume_row : out STD_LOGIC;
       o_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_wr_en : out STD_LOGIC
  );
end component;
component volume_router
  port (
       i_almost_empty : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_convolution_en : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_data_valid : in STD_LOGIC;
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_filters_loaded : in STD_LOGIC;
       i_next_fifo_full : in STD_LOGIC;
       i_number_of_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_padded_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_prog_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_row_size : in STD_LOGIC_VECTOR(9 downto 0);
       i_stop_stack_en : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_volume_data : in STD_LOGIC_VECTOR(15 downto 0);
       o_conv_complete : out STD_LOGIC;
       o_data_mult : out STD_LOGIC_VECTOR(15 downto 0);
       o_data_return : out STD_LOGIC_VECTOR(15 downto 0);
       o_data_return_wr_en : out STD_LOGIC;
       o_data_valid : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_rd_en : out STD_LOGIC;
       o_rows_complete : out STD_LOGIC;
       o_sending : out STD_LOGIC;
       o_snake_fill_complete : out STD_LOGIC
  );
end component;
component weights_router
  port (
       i_almost_empty : in STD_LOGIC;
       i_clear_weights : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_conv_complete : in STD_LOGIC;
       i_convolution_en : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_data_valid : in STD_LOGIC;
       i_filter_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_num_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_prog_empty : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_volume_ready : in STD_LOGIC;
       i_volume_row_size : in STD_LOGIC_VECTOR(9 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_data_valid : out STD_LOGIC;
       o_filters_loaded : out STD_LOGIC;
       o_filters_processed : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_rd_en : out STD_LOGIC;
       o_recycle_filter_data : out STD_LOGIC_VECTOR(15 downto 0);
       o_recycle_filter_en : out STD_LOGIC;
       o_reset_weight_fifo_n : out STD_LOGIC;
       o_weights_mult : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal acc_fifo_almost_empty : STD_LOGIC;
signal acc_fifo_almost_full : STD_LOGIC;
signal acc_fifo_empty : STD_LOGIC;
signal acc_fifo_full : STD_LOGIC;
signal acc_fifo_prog_empty : STD_LOGIC;
signal acc_fifo_prog_full : STD_LOGIC;
signal acc_fifo_rd_en : STD_LOGIC;
signal acc_fifo_valid : STD_LOGIC;
signal acc_fifo_wr_en : STD_LOGIC;
signal acc_valid : STD_LOGIC;
signal all_channels_processed : STD_LOGIC;
signal all_filters_processed : STD_LOGIC;
signal convolution_en : STD_LOGIC;
signal hold : STD_LOGIC;
signal hold_clear : STD_LOGIC;
signal i_clear_weights : STD_LOGIC;
signal i_rd_clk : STD_LOGIC;
signal i_reset : STD_LOGIC;
signal recycled_acc_data_en : STD_LOGIC;
signal reset_weight_fifo_n : STD_LOGIC;
signal weight_rst : STD_LOGIC;
signal accu_fifo_input : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_data : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_fifo_dout : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(10 downto 0);
signal acc_fifo_prog_full_thresh : STD_LOGIC_VECTOR(10 downto 0);
signal conv_complete : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal data_return : array_type_varx16bit(g_dsps_used-1 downto 0);
signal data_return_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal filter_kernal_loaded : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal filter_size : STD_LOGIC_VECTOR(3 downto 0);
signal get_volume_row : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal get_weight_row : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal loaded_rows_processed : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal multiplicand_a : array_type_varx16bit(g_dsps_used-1 downto 0);
signal multiplicand_b : array_type_varx16bit(g_dsps_used-1 downto 0);
signal num_iterations : STD_LOGIC_VECTOR(7 downto 0);
signal padded_volume_size : STD_LOGIC_VECTOR(7 downto 0);
signal prev_data : array_type_varx16bit(g_dsps_used-1 downto 0);
signal prev_data_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal prev_weight_data : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal products_array : array_type_varx16bit(g_dsps_used-1 downto 0);
signal products_array_valid : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal recycled_acc_data : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal recycled_data : array_type_varx16bit(g_dsps_used-1 downto 0);
signal recycled_data_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal recycle_filter_data : array_type_varx16bit(g_dsps_used-1 downto 0);
signal recycle_filter_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal snake_fill_complete : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal stop_stack_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_data : array_type_varx16bit(g_dsps_used-1 downto 0);
signal volume_data_valid : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_almost_empty : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_almost_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_dout : array_type_varx16bit(g_dsps_used-1 downto 0);
signal volume_fifo_empty : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_full_prog_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal volume_fifo_input : array_type_varx16bit(g_dsps_used-1 downto 0);
signal volume_fifo_prog_empty : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_prog_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_rd_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_valid : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_new_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_prev_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_ready : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_recycled_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_almost_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_prog_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal volume_stack_fifo_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal vol_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal weight_almost_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_data : array_type_varx16bit(g_dsps_used-1 downto 0);
signal weight_data_valid : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_almost_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_input : array_type_varx16bit(g_dsps_used-1 downto 0);
signal weight_fifo_prog_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal weight_fifo_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_new_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prev_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prev_data_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prog_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prog_full_thresh : STD_LOGIC_VECTOR(12 downto 0);
signal weight_recycled_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_almost_empty : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_dout : array_type_varx16bit(g_dsps_used-1 downto 0);
signal w_fifo_empty : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_prog_empty : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal w_fifo_rd_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_valid : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

ACCUMULATOR_FIFO : input_network_fifo
  port map(
       prog_empty_thresh(0) => Dangling_Input_Signal,
       prog_empty_thresh(1) => Dangling_Input_Signal,
       prog_empty_thresh(2) => Dangling_Input_Signal,
       prog_empty_thresh(3) => Dangling_Input_Signal,
       prog_empty_thresh(4) => Dangling_Input_Signal,
       prog_empty_thresh(5) => Dangling_Input_Signal,
       prog_empty_thresh(6) => Dangling_Input_Signal,
       prog_empty_thresh(7) => Dangling_Input_Signal,
       prog_empty_thresh(8) => Dangling_Input_Signal,
       prog_empty_thresh(9) => Dangling_Input_Signal,
       prog_full_thresh(0) => acc_fifo_prog_full_thresh(1),
       prog_full_thresh(1) => acc_fifo_prog_full_thresh(2),
       prog_full_thresh(2) => acc_fifo_prog_full_thresh(3),
       prog_full_thresh(3) => acc_fifo_prog_full_thresh(4),
       prog_full_thresh(4) => acc_fifo_prog_full_thresh(5),
       prog_full_thresh(5) => acc_fifo_prog_full_thresh(6),
       prog_full_thresh(6) => acc_fifo_prog_full_thresh(7),
       prog_full_thresh(7) => acc_fifo_prog_full_thresh(8),
       prog_full_thresh(8) => acc_fifo_prog_full_thresh(9),
       prog_full_thresh(9) => acc_fifo_prog_full_thresh(10),
       almost_full => acc_fifo_almost_full,
       din => accu_fifo_input(g_data_width-1 downto 0),
       full => acc_fifo_full,
       prog_full => acc_fifo_prog_full,
       rd_clk => Dangling_Input_Signal,
       rd_en => Dangling_Input_Signal,
       rst => i_clk,
       wr_clk => i_reset_n,
       wr_en => acc_fifo_wr_en
  );

ACCUMULATOR_RELAY_UNIT : accumulator_relay
  generic map(
       g_data_width => g_data_width
  )
  port map(
       i_acc_filter_data => acc_fifo_dout(g_data_width-1 downto 0),
       i_almost_empty => acc_fifo_almost_empty,
       i_clk => i_clk,
       i_data_valid => acc_fifo_valid,
       i_empty => acc_fifo_empty,
       i_hold => hold,
       i_normalizer_ready => i_normalizer_ready,
       i_prog_empty => acc_fifo_prog_empty,
       i_prog_full => acc_fifo_prog_full,
       i_reset_n => i_reset_n,
       o_conv_data_valid => o_conv_data_valid,
       o_conv_volume_out => o_conv_volume_out(g_data_width-1 downto 0),
       o_hold_clear => hold_clear,
       o_prog_emtpy_thresh => acc_fifo_prog_empty_thresh,
       o_rd_en => acc_fifo_rd_en,
       o_recycled_acc_data => recycled_acc_data(g_data_width-1 downto 0),
       o_recycled_acc_data_en => recycled_acc_data_en
  );

DSP_ACCUMULATOR : accumulator
  generic map(
       g_data_width => g_data_width,
       g_product_width => g_product_width,
       g_accumulator_width => 32,
       g_dsps_used => g_dsps_used
  )
  port map(
       i_clk => i_clk,
       i_enable => i_enable,
       i_filter_size => filter_size,
       i_products_array => products_array(g_dsps_used-1 downto 0),
       i_products_array_valid => products_array_valid(g_dsps_used-1 downto 0),
       i_reset_n => i_reset_n,
       o_acc_data => acc_data(g_data_width-1 downto 0),
       o_acc_valid => acc_valid
  );

FILTER_ACCUMULATOR_UNIT : filter_accumulator
  generic map(
       g_data_width => g_data_width
  )
  port map(
       i_acc_data => acc_data(g_data_width-1 downto 0),
       i_acc_data_valid => acc_valid,
       i_almost_full => acc_fifo_almost_full,
       i_clk => i_clk,
       i_full => acc_fifo_full,
       i_hold_clear => hold_clear,
       i_num_filters => i_number_of_filters,
       i_num_iterations => num_iterations,
       i_prog_full => acc_fifo_prog_full,
       i_recycled_acc_data => recycled_acc_data(g_data_width-1 downto 0),
       i_recycled_acc_data_en => recycled_acc_data_en,
       i_reset_n => i_reset_n,
       o_acc_filter_data => accu_fifo_input(g_data_width-1 downto 0),
       o_data_valid => acc_fifo_wr_en,
       o_hold => hold,
       o_prog_full_thresh => acc_fifo_prog_full_thresh
  );

ROW_CONTROLLER : input_fifo_net_controller
  generic map(
       g_weight_width => g_weight_width,
       g_data_width => g_data_width,
       g_dsps_used => g_dsps_used,
       g_num_11_filters => 33-1
  )
  port map(
       i_clk => i_rd_clk,
       i_data_return => data_return(g_dsps_used-1 downto 0),
       i_data_return_wr_en => data_return_wr_en(g_dsps_used-1 downto 0),
       i_enable => i_enable,
       i_filter_kernal_loaded => filter_kernal_loaded(g_dsps_used-1 downto 0),
       i_get_volume_row => get_volume_row(g_dsps_used-1 downto 0),
       i_get_weight_row => get_weight_row(g_dsps_used-1 downto 0),
       i_inbuff_almost_empty => i_inbuff_almost_empty,
       i_inbuff_dout => i_inbuff_dout,
       i_inbuff_empty => i_inbuff_empty,
       i_inbuff_prog_empty => i_inbuff_prog_empty,
       i_inbuff_valid => i_inbuff_valid,
       i_input_volume_channels => i_input_volume_channels,
       i_input_volume_size => i_input_volume_size,
       i_loaded_rows_processed => loaded_rows_processed(g_dsps_used-1 downto 0),
       i_number_of_filters => i_number_of_filters,
       i_pad => i_pad,
       i_reset_n => i_reset_n,
       i_snake_fill_complete => snake_fill_complete(g_dsps_used-1 downto 0),
       i_start => i_start,
       i_stride => i_stride,
       i_volume_fifo_almost_full => volume_stack_fifo_almost_full(g_dsps_used-1 downto 0),
       i_volume_fifo_full => volume_stack_fifo_full(g_dsps_used-1 downto 0),
       i_volume_fifo_prog_full => volume_stack_fifo_prog_full(g_dsps_used-1 downto 0),
       i_weight_fifo_almost_full => weight_almost_full(g_dsps_used-1 downto 0),
       i_weight_fifo_full => weight_full(g_dsps_used-1 downto 0),
       i_weight_fifo_prog_full => weight_prog_full(g_dsps_used-1 downto 0),
       i_weight_filter_channels => i_weight_filter_channels,
       i_weight_filter_size => i_weight_filter_size,
       o_all_channels_processed => all_channels_processed,
       o_convolution_en => convolution_en,
       o_inbuff_prog_empty_thresh => o_inbuff_prog_empty_thresh,
       o_inbuff_rd_en => o_inbuff_rd_en,
       o_padded_volume_size => padded_volume_size,
       o_prev_data => prev_data(g_dsps_used-1 downto 0),
       o_prev_data_wr_en => prev_data_wr_en(g_dsps_used-1 downto 0),
       o_recycled_data => recycled_data(g_dsps_used-1 downto 0),
       o_recycled_data_wr_en => recycled_data_wr_en(g_dsps_used-1 downto 0),
       o_stop_stack_en => stop_stack_en(g_dsps_used-1 downto 0),
       o_volume_data => volume_data(g_dsps_used-1 downto 0),
       o_volume_fifo_prog_full_thresh => volume_stack_fifo_prog_full_thresh,
       o_volume_fifo_wr_en => volume_stack_fifo_wr_en(g_dsps_used-1 downto 0),
       o_volume_new_data_en => volume_new_data_en(g_dsps_used-1 downto 0),
       o_volume_prev_data_en => volume_prev_data_en(g_dsps_used-1 downto 0),
       o_volume_recycled_data_en => volume_recycled_data_en(g_dsps_used-1 downto 0),
       o_weight_data => weight_data(g_dsps_used-1 downto 0),
       o_weight_fifo_prog_full_thresh => weight_prog_full_thresh,
       o_weight_fifo_wr_en => weight_wr_en(g_dsps_used-1 downto 0),
       o_weights_new_data_en => weight_new_data_en(g_dsps_used-1 downto 0),
       o_weights_prev_data_en => weight_prev_data_en(g_dsps_used-1 downto 0),
       o_weights_prev_data_wr_en => weight_prev_data_wr_en(g_dsps_used-1 downto 0),
       o_weights_recycled_data_en => weight_recycled_data_en(g_dsps_used-1 downto 0)
  );


---- Terminal assignment ----

    -- Inputs terminals
	i_rd_clk <= i_clk;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

----  Generate statements  ----

CHANNEL_UNIT : for i in g_dsps_used-1 downto 0 generate
begin
  MULTIPLIER : conv_fp_multiplier
    port map(
         a => multiplicand_a(i),
         b => multiplicand_b(i),
         clk => i_clk,
         result => products_array(i)
    );
  
  i_reset <= not(i_reset_n);
  
  weight_rst <= not(reset_weight_fifo_n or i_reset_n);
  
  VOLUME_ROW_FIFO : input_network_fifo
    port map(
         almost_empty => volume_fifo_almost_empty(i),
         almost_full => volume_fifo_almost_full(i),
         din => volume_fifo_input(i),
         dout => volume_fifo_dout(i),
         empty => volume_fifo_empty(i),
         full => volume_fifo_full(i),
         prog_empty => volume_fifo_prog_empty(i),
         prog_empty_thresh => vol_fifo_prog_empty_thresh,
         prog_full => volume_fifo_prog_full(i),
         prog_full_thresh => volume_fifo_full_prog_thresh,
         rd_clk => i_clk,
         rd_en => volume_fifo_rd_en(i),
         rst => i_reset,
         valid => volume_fifo_valid(i),
         wr_clk => i_clk,
         wr_en => volume_fifo_wr_en(i)
    );
  
  VOLUME_ROW_MUX : volume_mux
    port map(
         i_almost_full => volume_fifo_almost_full(i),
         i_clk => i_clk,
         i_enable => i_enable,
         i_fifo_prog_full_thresh => volume_stack_fifo_prog_full_thresh,
         i_fifo_we => volume_stack_fifo_wr_en(i),
         i_full => volume_fifo_full(i),
         i_new_data => volume_data(i),
         i_new_data_en => volume_new_data_en(i),
         i_prev_data => prev_data(i),
         i_prev_data_en => volume_prev_data_en(i),
         i_prev_data_wr_en => prev_data_wr_en(i),
         i_prog_full => volume_fifo_prog_full(i),
         i_recycled_data => recycled_data(i),
         i_recycled_data_en => volume_recycled_data_en(i),
         i_recycled_data_wr_en => recycled_data_wr_en(i),
         i_reset_n => i_reset_n,
         o_data => volume_fifo_input(i),
         o_fifo_almost_full => volume_stack_fifo_almost_full(i),
         o_fifo_full => volume_stack_fifo_full(i),
         o_fifo_prog_full => volume_stack_fifo_prog_full(i),
         o_get_volume_row => get_volume_row(i),
         o_prog_full_thresh => volume_fifo_full_prog_thresh,
         o_wr_en => volume_fifo_wr_en(i)
    );
  
  VOLUME_ROW_ROUTER : volume_router
    port map(
         i_almost_empty => volume_fifo_almost_empty(i),
         i_clk => i_clk,
         i_convolution_en => convolution_en,
         i_empty => volume_fifo_empty(i),
         i_enable => i_enable,
         i_fifo_data_valid => volume_fifo_valid(i),
         i_filter_size => i_weight_filter_size,
         i_filters_loaded => filter_kernal_loaded(i),
         i_next_fifo_full => volume_stack_fifo_almost_full(i),
         i_number_of_filters => i_number_of_filters,
         i_padded_volume_size => padded_volume_size,
         i_prog_empty => volume_fifo_prog_empty(i),
         i_reset_n => i_reset_n,
         i_row_size => volume_fifo_full_prog_thresh,
         i_stop_stack_en => stop_stack_en(i),
         i_stride => i_stride,
         i_volume_data => volume_fifo_dout(i),
         o_conv_complete => conv_complete(i),
         o_data_mult => multiplicand_a(i),
         o_data_return => data_return(i),
         o_data_return_wr_en => data_return_wr_en(i),
         o_data_valid => volume_data_valid(i),
         o_prog_empty_thresh => vol_fifo_prog_empty_thresh,
         o_rd_en => volume_fifo_rd_en(i),
         o_rows_complete => loaded_rows_processed(i),
         o_sending => volume_ready(i),
         o_snake_fill_complete => snake_fill_complete(i)
    );
  
  WEIGHTS_ROW_ROUTER : weights_router
    port map(
         i_almost_empty => w_fifo_almost_empty(i),
         i_clear_weights => i_clear_weights,
         i_clk => i_clk,
         i_conv_complete => conv_complete(i),
         i_convolution_en => convolution_en,
         i_empty => w_fifo_empty(i),
         i_enable => i_enable,
         i_fifo_data_valid => w_fifo_valid(i),
         i_filter_data => w_fifo_dout(i),
         i_num_filters => i_number_of_filters,
         i_prog_empty => w_fifo_prog_empty(i),
         i_prog_full => Dangling_Input_Signal,
         i_reset_n => i_reset_n,
         i_volume_ready => volume_ready(i),
         i_volume_row_size => volume_fifo_full_prog_thresh,
         i_weight_filter_size => i_weight_filter_size,
         o_data_valid => weight_data_valid(i),
         o_filters_loaded => filter_kernal_loaded(i),
         o_filters_processed => all_filters_processed,
         o_prog_empty_thresh => w_fifo_prog_empty_thresh,
         o_rd_en => w_fifo_rd_en(i),
         o_recycle_filter_data => recycle_filter_data(i),
         o_recycle_filter_en => recycle_filter_wr_en(i),
         o_reset_weight_fifo_n => reset_weight_fifo_n,
         o_weights_mult => multiplicand_b(i)
    );
  
  WEIGHT_ROW_FIFO : input_network_fifo
    port map(
         almost_empty => w_fifo_almost_empty(i),
         almost_full => weight_fifo_almost_full(i),
         din => weight_fifo_input(i),
         dout => w_fifo_dout(i),
         empty => w_fifo_empty(i),
         full => weight_fifo_full(i),
         prog_empty => w_fifo_prog_empty(i),
         prog_empty_thresh => w_fifo_prog_empty_thresh,
         prog_full => weight_fifo_prog_full(i),
         prog_full_thresh => weight_fifo_prog_full_thresh,
         rd_clk => i_clk,
         rd_en => w_fifo_rd_en(i),
         rst => weight_rst,
         valid => w_fifo_valid(i),
         wr_clk => i_clk,
         wr_en => weight_fifo_wr_en(i)
    );
  
  WEIGHT_ROW_MUX : volume_mux
    port map(
         i_fifo_prog_full_thresh(0) => weight_prog_full_thresh(3),
         i_fifo_prog_full_thresh(1) => weight_prog_full_thresh(4),
         i_fifo_prog_full_thresh(2) => weight_prog_full_thresh(5),
         i_fifo_prog_full_thresh(3) => weight_prog_full_thresh(6),
         i_fifo_prog_full_thresh(4) => weight_prog_full_thresh(7),
         i_fifo_prog_full_thresh(5) => weight_prog_full_thresh(8),
         i_fifo_prog_full_thresh(6) => weight_prog_full_thresh(9),
         i_fifo_prog_full_thresh(7) => weight_prog_full_thresh(10),
         i_fifo_prog_full_thresh(8) => weight_prog_full_thresh(11),
         i_fifo_prog_full_thresh(9) => weight_prog_full_thresh(12),
         i_almost_full => weight_fifo_almost_full(i),
         i_clk => i_clk,
         i_enable => i_enable,
         i_fifo_we => weight_wr_en(i),
         i_full => weight_fifo_full(i),
         i_new_data => weight_data(i),
         i_new_data_en => weight_new_data_en(i),
         i_prev_data => prev_weight_data,
         i_prev_data_en => weight_prev_data_en(i),
         i_prev_data_wr_en => weight_prev_data_wr_en(i),
         i_prog_full => weight_fifo_prog_full(i),
         i_recycled_data => recycle_filter_data(i),
         i_recycled_data_en => weight_recycled_data_en(i),
         i_recycled_data_wr_en => recycle_filter_wr_en(i),
         i_reset_n => i_reset_n,
         o_data => weight_fifo_input(i),
         o_fifo_almost_full => weight_almost_full(i),
         o_fifo_full => weight_full(i),
         o_fifo_prog_full => weight_prog_full(i),
         o_get_volume_row => get_weight_row(i),
         o_prog_full_thresh => weight_fifo_prog_full_thresh,
         o_wr_en => weight_fifo_wr_en(i)
    );
end generate CHANNEL_UNIT;

end arch;
