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
-- Generated   : Sun Oct  1 17:10:02 2017
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
       i_weight_filter_bytes : in STD_LOGIC_VECTOR(31 downto 0);
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
component filter_accumulator_fifo
  port (
       clk : in STD_LOGIC;
       din : in STD_LOGIC_VECTOR(31 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(10 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(10 downto 0);
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(31 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
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
component weight_fifo
  port (
       clk : in STD_LOGIC;
       din : in STD_LOGIC_VECTOR(15 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(12 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(12 downto 0);
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
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
       g_product_width : INTEGER := 32;
       g_accumulator_width : INTEGER := 64;
       g_dsps_used : INTEGER := 200
  );
  port (
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_products_array : in array_type_varx32bit(g_dsps_used-1 downto 0);
       i_products_array_valid : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_reset_n : in STD_LOGIC;
       o_acc_data : out STD_LOGIC_VECTOR(g_accumulator_width-1 downto 0);
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
       i_start : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_voluem_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_volume_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_volume_fifo_prog_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_prog_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_filter_bytes : in STD_LOGIC_VECTOR(31 downto 0);
       i_weight_filter_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_all_channels_processed : out STD_LOGIC;
       o_convolution_en : out STD_LOGIC;
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
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
       o_weights_recycled_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0)
  );
end component;
component volume_mux
  generic(
       g_mux_id : INTEGER := 0
  );
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
       i_filters_loaded : in STD_LOGIC;
       i_next_fifo_full : in STD_LOGIC;
       i_number_of_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_prog_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_row_size : in STD_LOGIC_VECTOR(9 downto 0);
       i_stop_stack_en : in STD_LOGIC;
       i_volume_data : in STD_LOGIC_VECTOR(15 downto 0);
       o_data_mult : out STD_LOGIC_VECTOR(15 downto 0);
       o_data_return : out STD_LOGIC_VECTOR(15 downto 0);
       o_data_return_wr_en : out STD_LOGIC;
       o_data_valid : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_rd_en : out STD_LOGIC;
       o_rows_complete : out STD_LOGIC
  );
end component;
component weights_router
  port (
       i_almost_empty : in STD_LOGIC;
       i_clear_weights : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_convolution_en : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_data_valid : in STD_LOGIC;
       i_filter_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_num_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_prog_empty : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_volume_row_size : in STD_LOGIC_VECTOR(9 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_data_valid : out STD_LOGIC;
       o_filters_loaded : out STD_LOGIC;
       o_filters_processed : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(12 downto 0);
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
signal NET25957 : STD_LOGIC;
signal prev_weight_data_wr_en : STD_LOGIC := '0';
signal recycled_acc_data_en : STD_LOGIC;
signal recycle_filter_wr_en : STD_LOGIC;
signal reset_weight_fifo_n : STD_LOGIC;
signal volume_fifo_almost_full : STD_LOGIC;
signal volume_fifo_full : STD_LOGIC;
signal volume_fifo_prog_full : STD_LOGIC;
signal vol_fifo_almost_empty : STD_LOGIC;
signal vol_fifo_empty : STD_LOGIC;
signal vol_fifo_prog_empty : STD_LOGIC;
signal vol_fifo_rd_en : STD_LOGIC;
signal vol_fifo_valid : STD_LOGIC;
signal vr_fifo_wr_en : STD_LOGIC;
signal weight_fifo_almost_full : STD_LOGIC;
signal weight_fifo_full : STD_LOGIC;
signal weight_fifo_prog_full : STD_LOGIC;
signal weight_fifo_wr_en : STD_LOGIC;
signal weight_prev_data_en : STD_LOGIC := '0';
signal w_fifo_almost_empty : STD_LOGIC;
signal w_fifo_empty : STD_LOGIC;
signal w_fifo_prog_empty : STD_LOGIC;
signal w_fifo_rd_en : STD_LOGIC;
signal w_fifo_valid : STD_LOGIC;
signal accu_fifo_input : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_data : STD_LOGIC_VECTOR(31 downto 0);
signal acc_fifo_dout : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(10 downto 0);
signal acc_fifo_prog_full_thresh : STD_LOGIC_VECTOR(10 downto 0);
signal data_return : array_type_varx16bit(199 downto 0);
signal data_return_wr_en : STD_LOGIC_VECTOR(199 downto 0);
signal filter_kernal_loaded : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal filter_size : STD_LOGIC_VECTOR(3 downto 0);
signal get_volume_row : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal get_weight_row : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal i_loaded_rows_processed : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal loaded_rows_processed : STD_LOGIC_VECTOR(199 downto 0);
signal multiplicand_a : STD_LOGIC_VECTOR(15 downto 0);
signal multiplicand_b : STD_LOGIC_VECTOR(15 downto 0);
signal num_iterations : STD_LOGIC_VECTOR(7 downto 0);
signal prev_weight_data : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal products_array : array_type_varx32bit(199 downto 0);
signal products_array_valid : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal recycled_acc_data : STD_LOGIC_VECTOR(31 downto 0);
signal recycle_filter_data : STD_LOGIC_VECTOR(15 downto 0);
signal stop_stack_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_data : array_type_varx16bit(199 downto 0);
signal volume_data_valid : STD_LOGIC_VECTOR(199 downto 0);
signal volume_fifo_full_prog_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal volume_fifo_input : STD_LOGIC_VECTOR(15 downto 0);
signal volume_new_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_prev_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_recycled_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_almost_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_prog_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal volume_stack_fifo_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal vol_fifo_dout : STD_LOGIC_VECTOR(15 downto 0);
signal vol_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal weight_almost_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_data : array_type_varx16bit(199 downto 0);
signal weight_data_valid : STD_LOGIC_VECTOR(199 downto 0);
signal weight_fifo_input : STD_LOGIC_VECTOR(15 downto 0);
signal weight_fifo_prog_full_thresh : STD_LOGIC_VECTOR(12 downto 0);
signal weight_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_new_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prog_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prog_full_thresh : STD_LOGIC_VECTOR(12 downto 0);
signal weight_recycled_data_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_dout : STD_LOGIC_VECTOR(15 downto 0);
signal w_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(12 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

---- Declarations for Dangling outputs ----
signal DANGLING_U3_o_data_14 : STD_LOGIC;
signal DANGLING_U3_o_data_13 : STD_LOGIC;
signal DANGLING_U3_o_data_12 : STD_LOGIC;
signal DANGLING_U3_o_data_11 : STD_LOGIC;
signal DANGLING_U3_o_data_10 : STD_LOGIC;
signal DANGLING_U3_o_data_9 : STD_LOGIC;
signal DANGLING_U3_o_data_8 : STD_LOGIC;
signal DANGLING_U3_o_data_7 : STD_LOGIC;
signal DANGLING_U3_o_data_6 : STD_LOGIC;
signal DANGLING_U3_o_data_5 : STD_LOGIC;
signal DANGLING_U3_o_data_4 : STD_LOGIC;
signal DANGLING_U3_o_data_3 : STD_LOGIC;
signal DANGLING_U3_o_data_2 : STD_LOGIC;
signal DANGLING_U3_o_data_1 : STD_LOGIC;
signal DANGLING_U3_o_data_0 : STD_LOGIC;

begin

----  Component instantiations  ----

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
       o_conv_volume_out => o_conv_volume_out(31 downto 0),
       o_hold_clear => hold_clear,
       o_prog_emtpy_thresh => acc_fifo_prog_empty_thresh,
       o_rd_en => acc_fifo_rd_en,
       o_recycled_acc_data => recycled_acc_data(31 downto 0),
       o_recycled_acc_data_en => recycled_acc_data_en
  );

DSP_ACCUMULATOR : accumulator
  generic map(
       g_product_width => g_product_width,
       g_accumulator_width => 64,
       g_dsps_used => g_dsps_used
  )
  port map(
       i_clk => i_clk,
       i_enable => i_enable,
       i_filter_size => filter_size,
       i_products_array => products_array(199 downto 0),
       i_products_array_valid => products_array_valid(g_dsps_used-1 downto 0),
       i_reset_n => i_reset_n,
       o_acc_data => acc_data(31 downto 0),
       o_acc_valid => acc_valid
  );

FILTER_ACCUMULATOR_UNIT : filter_accumulator
  generic map(
       g_data_width => g_data_width
  )
  port map(
       i_acc_data => acc_data(31 downto 0),
       i_acc_data_valid => acc_valid,
       i_almost_full => acc_fifo_almost_full,
       i_clk => i_clk,
       i_full => acc_fifo_full,
       i_hold_clear => hold_clear,
       i_num_filters => i_number_of_filters,
       i_num_iterations => num_iterations,
       i_prog_full => acc_fifo_prog_full,
       i_recycled_acc_data => recycled_acc_data(31 downto 0),
       i_recycled_acc_data_en => recycled_acc_data_en,
       i_reset_n => i_reset_n,
       o_acc_filter_data => accu_fifo_input(g_data_width-1 downto 0),
       o_data_valid => acc_fifo_wr_en,
       o_hold => hold,
       o_prog_full_thresh => acc_fifo_prog_full_thresh
  );

FILTER_ACCU_FIFO : filter_accumulator_fifo
  port map(
       almost_empty => acc_fifo_almost_empty,
       almost_full => acc_fifo_almost_full,
       clk => i_clk,
       din => accu_fifo_input(g_data_width-1 downto 0),
       dout => acc_fifo_dout(g_data_width-1 downto 0),
       empty => acc_fifo_empty,
       full => acc_fifo_full,
       prog_empty => acc_fifo_prog_empty,
       prog_empty_thresh => acc_fifo_prog_empty_thresh,
       prog_full => acc_fifo_prog_full,
       prog_full_thresh => acc_fifo_prog_full_thresh,
       rd_en => acc_fifo_rd_en,
       rst => i_reset_n,
       valid => acc_fifo_valid,
       wr_en => acc_fifo_wr_en
  );

ROW_CONTROLLER : input_fifo_net_controller
  generic map(
       g_weight_width => g_weight_width,
       g_data_width => g_data_width,
       g_dsps_used => g_dsps_used
  )
  port map(
       i_input_volume_size(0) => Dangling_Input_Signal,
       i_input_volume_size(1) => Dangling_Input_Signal,
       i_input_volume_size(2) => Dangling_Input_Signal,
       i_input_volume_size(3) => Dangling_Input_Signal,
       i_input_volume_size(4) => i_input_volume_size(0),
       i_input_volume_size(5) => i_input_volume_size(1),
       i_input_volume_size(6) => i_input_volume_size(2),
       i_input_volume_size(7) => i_input_volume_size(3),
       i_clk => i_rd_clk,
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
       i_loaded_rows_processed => i_loaded_rows_processed(g_dsps_used-1 downto 0),
       i_number_of_filters => i_number_of_filters,
       i_pad => i_pad,
       i_reset_n => i_reset_n,
       i_start => i_start,
       i_stride => i_stride,
       i_voluem_fifo_almost_full => volume_stack_fifo_almost_full(g_dsps_used-1 downto 0),
       i_volume_fifo_full => volume_stack_fifo_full(g_dsps_used-1 downto 0),
       i_volume_fifo_prog_full => volume_stack_fifo_prog_full(g_dsps_used-1 downto 0),
       i_weight_fifo_almost_full => weight_almost_full(g_dsps_used-1 downto 0),
       i_weight_fifo_full => weight_full(g_dsps_used-1 downto 0),
       i_weight_fifo_prog_full => weight_prog_full(g_dsps_used-1 downto 0),
       i_weight_filter_bytes => i_weight_filter_bytes,
       i_weight_filter_channels => i_weight_filter_channels,
       i_weight_filter_size => i_weight_filter_size,
       o_all_channels_processed => all_channels_processed,
       o_convolution_en => convolution_en,
       o_inbuff_prog_empty_thresh => o_inbuff_prog_empty_thresh,
       o_inbuff_rd_en => o_inbuff_rd_en,
       o_stop_stack_en => stop_stack_en(g_dsps_used-1 downto 0),
       o_volume_data => volume_data(199 downto 0),
       o_volume_fifo_prog_full_thresh => volume_stack_fifo_prog_full_thresh,
       o_volume_fifo_wr_en => volume_stack_fifo_wr_en(g_dsps_used-1 downto 0),
       o_volume_new_data_en => volume_new_data_en(g_dsps_used-1 downto 0),
       o_volume_prev_data_en => volume_prev_data_en(g_dsps_used-1 downto 0),
       o_volume_recycled_data_en => volume_recycled_data_en(g_dsps_used-1 downto 0),
       o_weight_data => weight_data(199 downto 0),
       o_weight_fifo_prog_full_thresh => weight_prog_full_thresh,
       o_weight_fifo_wr_en => weight_wr_en(g_dsps_used-1 downto 0),
       o_weights_new_data_en => weight_new_data_en(g_dsps_used-1 downto 0),
       o_weights_recycled_data_en => weight_recycled_data_en(g_dsps_used-1 downto 0)
  );


---- Terminal assignment ----

    -- Inputs terminals
	i_rd_clk <= i_clk;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

----  Generate statements  ----

g0 : for i in g_dsps_used-1 downto 0 generate
begin
  MULTIPLIER : conv_fp_multiplier
    port map(
         result(0) => products_array(i)(16),
         result(1) => products_array(i)(17),
         result(2) => products_array(i)(18),
         result(3) => products_array(i)(19),
         result(4) => products_array(i)(20),
         result(5) => products_array(i)(21),
         result(6) => products_array(i)(22),
         result(7) => products_array(i)(23),
         result(8) => products_array(i)(24),
         result(9) => products_array(i)(25),
         result(10) => products_array(i)(26),
         result(11) => products_array(i)(27),
         result(12) => products_array(i)(28),
         result(13) => products_array(i)(29),
         result(14) => products_array(i)(30),
         result(15) => products_array(i)(31),
         a => multiplicand_a,
         b => multiplicand_b,
         clk => i_clk
    );
  
  NET25957 <= i_reset_n or reset_weight_fifo_n;
  
  U3 : volume_mux
    generic map(
         g_mux_id => i
    )
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
         o_data(0) => DANGLING_U3_o_data_0,
         o_data(1) => DANGLING_U3_o_data_1,
         o_data(2) => DANGLING_U3_o_data_2,
         o_data(3) => DANGLING_U3_o_data_3,
         o_data(4) => DANGLING_U3_o_data_4,
         o_data(5) => DANGLING_U3_o_data_5,
         o_data(6) => DANGLING_U3_o_data_6,
         o_data(7) => DANGLING_U3_o_data_7,
         o_data(8) => DANGLING_U3_o_data_8,
         o_data(9) => DANGLING_U3_o_data_9,
         o_data(10) => DANGLING_U3_o_data_10,
         o_data(11) => DANGLING_U3_o_data_11,
         o_data(12) => DANGLING_U3_o_data_12,
         o_data(13) => DANGLING_U3_o_data_13,
         o_data(14) => DANGLING_U3_o_data_14,
         o_data(15) => weight_fifo_wr_en,
         o_prog_full_thresh(0) => weight_fifo_prog_full_thresh(3),
         o_prog_full_thresh(1) => weight_fifo_prog_full_thresh(4),
         o_prog_full_thresh(2) => weight_fifo_prog_full_thresh(5),
         o_prog_full_thresh(3) => weight_fifo_prog_full_thresh(6),
         o_prog_full_thresh(4) => weight_fifo_prog_full_thresh(7),
         o_prog_full_thresh(5) => weight_fifo_prog_full_thresh(8),
         o_prog_full_thresh(6) => weight_fifo_prog_full_thresh(9),
         o_prog_full_thresh(7) => weight_fifo_prog_full_thresh(10),
         o_prog_full_thresh(8) => weight_fifo_prog_full_thresh(11),
         o_prog_full_thresh(9) => weight_fifo_prog_full_thresh(12),
         i_almost_full => weight_fifo_almost_full,
         i_clk => i_clk,
         i_enable => i_enable,
         i_fifo_we => weight_wr_en(i),
         i_full => weight_fifo_full,
         i_new_data => weight_data(i),
         i_new_data_en => weight_new_data_en(i),
         i_prev_data => prev_weight_data,
         i_prev_data_en => weight_prev_data_en,
         i_prev_data_wr_en => prev_weight_data_wr_en,
         i_prog_full => weight_fifo_prog_full,
         i_recycled_data => recycle_filter_data,
         i_recycled_data_en => weight_recycled_data_en(i),
         i_recycled_data_wr_en => recycle_filter_wr_en,
         i_reset_n => i_reset_n,
         o_fifo_almost_full => weight_almost_full(i),
         o_fifo_full => weight_full(i),
         o_fifo_prog_full => weight_prog_full(i),
         o_get_volume_row => get_weight_row(i),
         o_wr_en => weight_fifo_input(15)
    );
  
  VOLUME_ROW_FIFO : input_network_fifo
    port map(
         almost_empty => vol_fifo_almost_empty,
         almost_full => volume_fifo_almost_full,
         din => volume_fifo_input,
         dout => vol_fifo_dout,
         empty => vol_fifo_empty,
         full => volume_fifo_full,
         prog_empty => vol_fifo_prog_empty,
         prog_empty_thresh => vol_fifo_prog_empty_thresh,
         prog_full => volume_fifo_prog_full,
         prog_full_thresh => volume_fifo_full_prog_thresh,
         rd_clk => i_clk,
         rd_en => vol_fifo_rd_en,
         rst => i_reset_n,
         valid => vol_fifo_valid,
         wr_clk => i_clk,
         wr_en => vr_fifo_wr_en
    );
  
  VOLUME_ROW_MUX : volume_mux
    generic map(
         g_mux_id => i
    )
    port map(
         i_almost_full => volume_fifo_almost_full,
         i_clk => i_clk,
         i_enable => i_enable,
         i_fifo_prog_full_thresh => volume_stack_fifo_prog_full_thresh,
         i_fifo_we => volume_stack_fifo_wr_en(i),
         i_full => volume_fifo_full,
         i_new_data => volume_data(i),
         i_new_data_en => volume_new_data_en(i),
         i_prev_data => data_return(i-1),
         i_prev_data_en => volume_prev_data_en(i),
         i_prev_data_wr_en => data_return_wr_en(i-1),
         i_prog_full => volume_fifo_prog_full,
         i_recycled_data => data_return(i),
         i_recycled_data_en => volume_recycled_data_en(i),
         i_recycled_data_wr_en => data_return_wr_en(i),
         i_reset_n => i_reset_n,
         o_data => volume_fifo_input,
         o_fifo_almost_full => volume_stack_fifo_almost_full(i),
         o_fifo_full => volume_stack_fifo_full(i),
         o_fifo_prog_full => volume_stack_fifo_prog_full(i),
         o_get_volume_row => get_volume_row(i),
         o_prog_full_thresh => volume_fifo_full_prog_thresh,
         o_wr_en => vr_fifo_wr_en
    );
  
  VOLUME_ROW_ROUTER : volume_router
    port map(
         i_almost_empty => vol_fifo_almost_empty,
         i_clk => i_clk,
         i_convolution_en => convolution_en,
         i_empty => vol_fifo_empty,
         i_enable => i_enable,
         i_fifo_data_valid => vol_fifo_valid,
         i_filters_loaded => filter_kernal_loaded(i),
         i_next_fifo_full => volume_stack_fifo_prog_full(i+1),
         i_number_of_filters => i_number_of_filters,
         i_prog_empty => vol_fifo_prog_empty,
         i_reset_n => i_reset_n,
         i_row_size => volume_fifo_full_prog_thresh,
         i_stop_stack_en => stop_stack_en(i),
         i_volume_data => vol_fifo_dout,
         o_data_mult => multiplicand_a,
         o_data_return => data_return(i),
         o_data_return_wr_en => data_return_wr_en(i),
         o_data_valid => volume_data_valid(i),
         o_prog_empty_thresh => vol_fifo_prog_empty_thresh,
         o_rd_en => vol_fifo_rd_en,
         o_rows_complete => loaded_rows_processed(i)
    );
  
  WEIGHTS_ROW_ROUTER : weights_router
    port map(
         i_almost_empty => w_fifo_almost_empty,
         i_clear_weights => i_clear_weights,
         i_clk => i_clk,
         i_convolution_en => convolution_en,
         i_empty => w_fifo_empty,
         i_enable => i_enable,
         i_fifo_data_valid => w_fifo_valid,
         i_filter_data => w_fifo_dout,
         i_num_filters => i_number_of_filters,
         i_prog_empty => w_fifo_prog_empty,
         i_prog_full => weight_fifo_prog_full,
         i_reset_n => i_reset_n,
         i_volume_row_size => volume_fifo_full_prog_thresh,
         i_weight_filter_size => i_weight_filter_size,
         o_data_valid => weight_data_valid(i),
         o_filters_loaded => filter_kernal_loaded(i),
         o_filters_processed => all_filters_processed,
         o_prog_empty_thresh => w_fifo_prog_empty_thresh,
         o_rd_en => w_fifo_rd_en,
         o_recycle_filter_data => recycle_filter_data,
         o_recycle_filter_en => recycle_filter_wr_en,
         o_reset_weight_fifo_n => reset_weight_fifo_n,
         o_weights_mult => multiplicand_b
    );
  
  WEIGHT_ROW_FIFO : weight_fifo
    port map(
         almost_empty => w_fifo_almost_empty,
         almost_full => weight_fifo_almost_full,
         clk => i_clk,
         din => weight_fifo_input,
         dout => w_fifo_dout,
         empty => w_fifo_empty,
         full => weight_fifo_full,
         prog_empty => w_fifo_prog_empty,
         prog_empty_thresh => w_fifo_prog_empty_thresh,
         prog_full => weight_fifo_prog_full,
         prog_full_thresh => weight_fifo_prog_full_thresh,
         rd_en => w_fifo_rd_en,
         rst => NET25957,
         valid => w_fifo_valid,
         wr_en => weight_fifo_wr_en
    );
end generate g0;

end arch;
