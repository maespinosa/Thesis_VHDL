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
-- Generated   : Mon Sep 18 20:23:48 2017
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
       g_red_bits : integer := 4;
       g_green_bits : integer := 4;
       g_blue_bits : integer := 4;
       g_weight_width : integer := 16;
       g_multiplier_width : integer := 16;
       g_product_width : integer := 32;
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
       i_reset_n : in STD_LOGIC;
       i_start : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       i_input_volume_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_input_volume_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_number_of_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_pad : in STD_LOGIC_VECTOR(3 downto 0);
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_weight_filter_bytes : in STD_LOGIC_VECTOR(31 downto 0);
       i_weight_filter_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_conv_volume_out : out STD_LOGIC_VECTOR(31 downto 0);
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0)
  );
end filter_top;

architecture arch of filter_top is

---- Component declarations -----

component conv_multiplier
  port (
       a : in STD_LOGIC_VECTOR(15 downto 0);
       b : in STD_LOGIC_VECTOR(15 downto 0);
       clk : in STD_LOGIC;
       p : out STD_LOGIC_VECTOR(31 downto 0)
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
       g_accumulator_width : INTEGER := 32;
       g_dsps_used : INTEGER := 200
  );
  port (
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_products_array : in array_type_varx32bit(g_dsps_used-1 downto 0);
       i_reset_n : in STD_LOGIC;
       o_acc_data : out STD_LOGIC_VECTOR(g_accumulator_width-1 downto 0);
       o_acc_valid : out STD_LOGIC
  );
end component;
component accumulator_relay
  port (
       i_acc_filter_data : in STD_LOGIC_VECTOR(31 downto 0);
       i_almost_empty : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_data_valid : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_prog_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_conv_volume_out : out STD_LOGIC_VECTOR(31 downto 0);
       o_prog_emtpy_thresh : out STD_LOGIC_VECTOR(10 downto 0);
       o_rd_en : out STD_LOGIC;
       o_recycled_acc_data : out STD_LOGIC_VECTOR(31 downto 0);
       o_recycled_acc_data_en : out STD_LOGIC
  );
end component;
component filter_accumulator
  port (
       i_acc_data : in STD_LOGIC_VECTOR(31 downto 0);
       i_acc_data_valid : in STD_LOGIC;
       i_almost_full : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_prog_full : in STD_LOGIC;
       i_recycled_acc_data : in STD_LOGIC_VECTOR(31 downto 0);
       i_recycled_acc_data_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_acc_filter_data : out STD_LOGIC_VECTOR(31 downto 0);
       o_data_valid : out STD_LOGIC;
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
       i_input_volume_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_number_of_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_pad : in STD_LOGIC_VECTOR(3 downto 0);
       i_reset_n : in STD_LOGIC;
       i_start : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_voluem_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_volume_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_volume_fifo_prog_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_filter_bytes : in STD_LOGIC_VECTOR(31 downto 0);
       i_weight_filter_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_volume_data : out array_type_varx16bit(g_dsps_used-1 downto 0);
       o_volume_fifo_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_volume_fifo_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weight_data : out array_type_varx16bit(g_dsps_used-1 downto 0)
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
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_filters_processed : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_new_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_prev_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_prog_full : in STD_LOGIC;
       i_recycled_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_reset_n : in STD_LOGIC;
       o_data : out STD_LOGIC_VECTOR(15 downto 0);
       o_data_valid : out STD_LOGIC;
       o_fifo_almost_full : out STD_LOGIC;
       o_fifo_full : out STD_LOGIC;
       o_fifo_prog_full : out STD_LOGIC;
       o_get_volume_row : out STD_LOGIC;
       o_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0)
  );
end component;
component volume_router
  port (
       i_almost_empty : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_data_valid : in STD_LOGIC;
       i_filters_loaded : in STD_LOGIC;
       i_is_last_volume_primed : in STD_LOGIC;
       i_prog_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_volume_data : in STD_LOGIC_VECTOR(15 downto 0);
       o_data_mult : out STD_LOGIC_VECTOR(15 downto 0);
       o_data_valid : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_rd_en : out STD_LOGIC;
       o_recycled_data : out STD_LOGIC_VECTOR(15 downto 0);
       o_rows_complete : out STD_LOGIC;
       o_this_last_volume_primed : out STD_LOGIC
  );
end component;
component weights_router
  port (
       i_almost_empty : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_empty : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_data_valid : in STD_LOGIC;
       i_filter_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_num_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_prog_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_volume_primed : in STD_LOGIC;
       o_data_valid : out STD_LOGIC;
       o_filter_loaded : out STD_LOGIC;
       o_filters_processed : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_rd_en : out STD_LOGIC;
       o_recycle_filter_data : out STD_LOGIC_VECTOR(15 downto 0);
       o_recycle_filter_en : out STD_LOGIC;
       o_weights_mult : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component weight_mux
  generic(
       g_mux_id : INTEGER := 0
  );
  port (
       i_almost_full : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_full : in STD_LOGIC;
       i_new_filter_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_num_filters : in STD_LOGIC_VECTOR(11 downto 0);
       i_prog_full : in STD_LOGIC;
       i_recycled_filter : in STD_LOGIC_VECTOR(15 downto 0);
       i_recycled_filter_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_current_filter_num : out STD_LOGIC_VECTOR(11 downto 0);
       o_data_valid : out STD_LOGIC;
       o_filter_data : out STD_LOGIC_VECTOR(15 downto 0);
       o_get_weight_row : out STD_LOGIC;
       o_prog_full_thresh : out STD_LOGIC_VECTOR(12 downto 0)
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
signal all_filters_processed : STD_LOGIC;
signal i_rd_clk : STD_LOGIC;
signal loaded_rows_processed : STD_LOGIC;
signal NET10078 : STD_LOGIC;
signal NET10086 : STD_LOGIC;
signal recycled_acc_data_en : STD_LOGIC;
signal recycle_filter_en : STD_LOGIC;
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
signal w_fifo_almost_empty : STD_LOGIC;
signal w_fifo_empty : STD_LOGIC;
signal w_fifo_prog_empty : STD_LOGIC;
signal w_fifo_rd_en : STD_LOGIC;
signal w_fifo_valid : STD_LOGIC;
signal accu_fifo_input : STD_LOGIC_VECTOR(31 downto 0);
signal acc_data : STD_LOGIC_VECTOR(31 downto 0);
signal acc_fifo_dout : STD_LOGIC_VECTOR(31 downto 0);
signal acc_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(10 downto 0);
signal acc_fifo_prog_full_thresh : STD_LOGIC_VECTOR(10 downto 0);
signal filter_kernal_loaded : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal filter_size : STD_LOGIC_VECTOR(3 downto 0);
signal get_volume_row : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal get_weight_row : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal multiplicand_a : STD_LOGIC_VECTOR(15 downto 0);
signal multiplicand_b : STD_LOGIC_VECTOR(15 downto 0);
signal number_of_filters : STD_LOGIC_VECTOR(11 downto 0);
signal products_array : array_type_varx32bit(199 downto 0);
signal recycled_acc_data : STD_LOGIC_VECTOR(31 downto 0);
signal recycled_data : array_type_varx16bit(199 downto 0);
signal recycle_filter_data : STD_LOGIC_VECTOR(15 downto 0);
signal volume_data : array_type_varx16bit(199 downto 0);
signal volume_data_valid : STD_LOGIC_VECTOR(199 downto 0);
signal volume_fifo_full_prog_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal volume_fifo_input : STD_LOGIC_VECTOR(15 downto 0);
signal volume_stack_fifo_almost_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_prog_full : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal volume_stack_fifo_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal vol_fifo_dout : STD_LOGIC_VECTOR(15 downto 0);
signal vol_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal weight_data : array_type_varx16bit(199 downto 0);
signal weight_data_valid : STD_LOGIC_VECTOR(7 downto 0);
signal weight_fifo_input : STD_LOGIC_VECTOR(15 downto 0);
signal weight_fifo_prog_full_thresh : STD_LOGIC_VECTOR(12 downto 0);
signal w_fifo_dout : STD_LOGIC_VECTOR(15 downto 0);
signal w_fifo_prog_empty_thresh : STD_LOGIC_VECTOR(12 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

ACCUMULATOR_RELAY_UNIT : accumulator_relay
  port map(
       i_acc_filter_data => acc_fifo_dout,
       i_almost_empty => acc_fifo_almost_empty,
       i_clk => i_clk,
       i_data_valid => acc_fifo_valid,
       i_empty => acc_fifo_empty,
       i_prog_empty => acc_fifo_prog_empty,
       i_reset_n => i_reset_n,
       o_conv_volume_out => o_conv_volume_out,
       o_prog_emtpy_thresh => acc_fifo_prog_empty_thresh,
       o_rd_en => acc_fifo_rd_en,
       o_recycled_acc_data => recycled_acc_data,
       o_recycled_acc_data_en => recycled_acc_data_en
  );

DSP_ACCUMULATOR : accumulator
  generic map(
       g_product_width => g_product_width,
       g_accumulator_width => g_dsps_used
  )
  port map(
       i_clk => i_clk,
       i_enable => i_enable,
       i_filter_size => filter_size,
       i_products_array => products_array(199 downto 0),
       i_reset_n => i_reset_n,
       o_acc_data => acc_data(31 downto 0),
       o_acc_valid => acc_valid
  );

FILTER_ACCUMULATOR_UNIT : filter_accumulator
  port map(
       i_acc_data => acc_data,
       i_acc_data_valid => acc_valid,
       i_almost_full => acc_fifo_almost_full,
       i_clk => Dangling_Input_Signal,
       i_full => acc_fifo_full,
       i_prog_full => acc_fifo_prog_full,
       i_recycled_acc_data => recycled_acc_data,
       i_recycled_acc_data_en => recycled_acc_data_en,
       i_reset_n => Dangling_Input_Signal,
       o_acc_filter_data => accu_fifo_input,
       o_data_valid => acc_fifo_wr_en,
       o_prog_full_thresh => acc_fifo_prog_full_thresh
  );

FILTER_ACCU_FIFO : filter_accumulator_fifo
  port map(
       almost_empty => acc_fifo_almost_empty,
       almost_full => acc_fifo_almost_full,
       clk => Dangling_Input_Signal,
       din => accu_fifo_input,
       dout => acc_fifo_dout,
       empty => acc_fifo_empty,
       full => acc_fifo_full,
       prog_empty => acc_fifo_prog_empty,
       prog_empty_thresh => acc_fifo_prog_empty_thresh,
       prog_full => acc_fifo_prog_full,
       prog_full_thresh => acc_fifo_prog_full_thresh,
       rd_en => acc_fifo_rd_en,
       rst => Dangling_Input_Signal,
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
       i_input_volume_size => i_input_volume_size,
       i_number_of_filters => i_number_of_filters,
       i_pad => i_pad,
       i_reset_n => i_reset_n,
       i_start => i_start,
       i_stride => i_stride,
       i_voluem_fifo_almost_full => volume_stack_fifo_almost_full(g_dsps_used-1 downto 0),
       i_volume_fifo_full => volume_stack_fifo_full(g_dsps_used-1 downto 0),
       i_volume_fifo_prog_full => volume_stack_fifo_prog_full(g_dsps_used-1 downto 0),
       i_weight_filter_bytes => i_weight_filter_bytes,
       i_weight_filter_channels => i_weight_filter_channels,
       i_weight_filter_size => i_weight_filter_size,
       o_inbuff_prog_empty_thresh => o_inbuff_prog_empty_thresh,
       o_inbuff_rd_en => o_inbuff_rd_en,
       o_volume_data => volume_data(199 downto 0),
       o_volume_fifo_prog_full_thresh => volume_stack_fifo_prog_full_thresh,
       o_volume_fifo_wr_en => volume_stack_fifo_wr_en(g_dsps_used-1 downto 0),
       o_weight_data => weight_data(199 downto 0)
  );


---- Terminal assignment ----

    -- Inputs terminals
	i_rd_clk <= i_clk;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

----  Generate statements  ----

g0 : for i in g_dsps_used-1 downto 0 generate
begin
  DSP_MULTIPLIER : conv_multiplier
    port map(
         a => multiplicand_a,
         b => multiplicand_b,
         clk => i_clk,
         p => products_array(i)
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
         i_filter_size => filter_size,
         i_filters_processed => Dangling_Input_Signal,
         i_full => volume_fifo_full,
         i_new_data => volume_data(i),
         i_prev_data => recycled_data(i-1),
         i_prog_full => volume_fifo_prog_full,
         i_recycled_data => recycled_data(i),
         i_reset_n => i_reset_n,
         o_data => volume_fifo_input,
         o_data_valid => vr_fifo_wr_en,
         o_fifo_almost_full => volume_stack_fifo_almost_full(i),
         o_fifo_full => volume_stack_fifo_full(i),
         o_fifo_prog_full => volume_stack_fifo_prog_full(i),
         o_get_volume_row => get_volume_row(i),
         o_prog_full_thresh => volume_fifo_full_prog_thresh
    );
  
  VOLUME_ROW_ROUTER : volume_router
    port map(
         i_almost_empty => vol_fifo_almost_empty,
         i_clk => i_clk,
         i_empty => vol_fifo_empty,
         i_enable => i_enable,
         i_fifo_data_valid => vol_fifo_valid,
         i_filters_loaded => filter_kernal_loaded(i),
         i_is_last_volume_primed => NET10086,
         i_prog_empty => vol_fifo_prog_empty,
         i_reset_n => i_reset_n,
         i_volume_data => vol_fifo_dout,
         o_data_mult => multiplicand_a,
         o_data_valid => volume_data_valid(i),
         o_prog_empty_thresh => vol_fifo_prog_empty_thresh,
         o_rd_en => vol_fifo_rd_en,
         o_recycled_data => recycled_data(i),
         o_rows_complete => loaded_rows_processed,
         o_this_last_volume_primed => NET10078
    );
  
  WEIGHTS_ROW_ROUTER : weights_router
    port map(
         i_almost_empty => w_fifo_almost_empty,
         i_clk => i_clk,
         i_empty => w_fifo_empty,
         i_enable => i_enable,
         i_fifo_data_valid => w_fifo_valid,
         i_filter_data => w_fifo_dout,
         i_num_filters => number_of_filters,
         i_prog_empty => w_fifo_prog_empty,
         i_reset_n => i_reset_n,
         i_volume_primed => Dangling_Input_Signal,
         o_data_valid => weight_data_valid(0),
         o_filter_loaded => filter_kernal_loaded(i),
         o_filters_processed => all_filters_processed,
         o_prog_empty_thresh => w_fifo_prog_empty_thresh,
         o_rd_en => w_fifo_rd_en,
         o_recycle_filter_data => recycle_filter_data,
         o_recycle_filter_en => recycle_filter_en,
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
         rst => i_reset_n,
         valid => w_fifo_valid,
         wr_en => weight_fifo_wr_en
    );
  
  WEIGHT_ROW_MUX : weight_mux
    generic map(
         g_mux_id => i
    )
    port map(
         i_almost_full => weight_fifo_almost_full,
         i_clk => i_clk,
         i_enable => i_enable,
         i_filter_size => filter_size,
         i_full => weight_fifo_full,
         i_new_filter_data => weight_data(i),
         i_num_filters => number_of_filters,
         i_prog_full => weight_fifo_prog_full,
         i_recycled_filter => recycle_filter_data,
         i_recycled_filter_en => recycle_filter_en,
         i_reset_n => i_reset_n,
         o_data_valid => weight_fifo_wr_en,
         o_filter_data => weight_fifo_input,
         o_get_weight_row => get_weight_row(i),
         o_prog_full_thresh => weight_fifo_prog_full_thresh
    );
end generate g0;

end arch;
