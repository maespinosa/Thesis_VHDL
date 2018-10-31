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
-- Generated   : Thu Feb  1 16:55:25 2018
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
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library xil_defaultlib; 
use xil_defaultlib.types_pkg.all;  


entity fast_filter_top is
  generic(
       -- name : type := value
       g_data_width : integer := 32;
       g_weight_width : integer := 32;
       g_multiplier_width : integer := 32;
       g_product_width : integer := 32;
       g_conv_width : integer := 32;
       g_dsps_used : integer := 200; 
	   g_adder_delay : integer := 11; 
	   g_mult_delay : integer := 8
  );
  port(
       i_clk                           : in STD_LOGIC;
       i_enable                        : in STD_LOGIC;
       i_inbuff_almost_empty           : in STD_LOGIC;
       i_inbuff_empty                  : in STD_LOGIC;
       --i_inbuff_prog_empty             : in STD_LOGIC;
       i_inbuff_valid                  : in STD_LOGIC;
       i_normalizer_ready              : in STD_LOGIC;
       i_reset_n                       : in STD_LOGIC;
       i_start                         : in STD_LOGIC;
       i_inbuff_dout                   : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_volume_channels         : in STD_LOGIC_VECTOR(11 downto 0);
       i_input_volume_size             : in STD_LOGIC_VECTOR(7 downto 0);
       i_number_of_filters             : in STD_LOGIC_VECTOR(15 downto 0);
       i_output_volume_size            : in STD_LOGIC_VECTOR(7 downto 0);
       i_pad                           : in STD_LOGIC_VECTOR(3 downto 0);
       i_stride                        : in STD_LOGIC_VECTOR(3 downto 0);
       i_weight_filter_channels        : in STD_LOGIC_VECTOR(15 downto 0);
       i_weight_filter_size            : in STD_LOGIC_VECTOR(3 downto 0);
	   i_affine_select				   : in std_logic; 
	   i_channels_in_set			   : in std_logic_vector(7 downto 0); 
	   i_filters_in_set				   : in std_logic_vector(15 downto 0); 
	   i_ch_al_filt			           : in std_logic_vector(15 downto 0); 
	   
	   i_prev_fifo_din				   : in std_logic_vector(g_data_width-1 downto 0); 
	   i_prev_fifo_wr_en			   : in std_logic; 
	   o_prev_fifo_full				   : out std_logic; 
	   o_prev_fifo_almost_full		   : out std_logic; 
	   --o_prev_fifo_prog_full		   : out std_logic; 
	   --i_prev_fifo_prog_full_thresh    : in std_logic_vector(12 downto 0); 
	   
	   i_bias_fifo_din 				   : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
	   i_bias_fifo_wr_en			   : in std_logic; 
	   o_bias_fifo_full				   : out std_logic; 
	   o_bias_fifo_almost_full		   : out std_logic; 
	   --o_bias_fifo_prog_full		   : out std_logic; 
	   --i_bias_fifo_prog_full_thresh    : in std_logic_vector(12 downto 0); 
	   
	   i_bias_values_loaded			   : in std_logic; 
	   
       o_conv_data_valid               : out STD_LOGIC;
       o_inbuff_rd_en                  : out STD_LOGIC;
       o_conv_volume_out               : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       --o_inbuff_prog_empty_thresh      : out STD_LOGIC_VECTOR(12 downto 0);
	   o_operation_complete            : out std_logic;
	   o_volume_processed              : out std_logic;
	   o_iteration_complete            : out std_logic;
	   o_weights_loaded                : out std_logic;
	   o_more_dsps                     : out std_logic;
	   o_channels_allowed              : out std_logic_vector(7 downto 0);
	   o_dsps_used					   : out std_logic_vector(7 downto 0); 
	   o_iterations_required           : out std_logic_vector(7 downto 0); 
	   o_row_complete 				   : out std_logic; 
	   o_acc_row_complete			   : out std_logic; 
	   o_layer_ready			 	   : out std_logic; 
	   o_conv_complete				   : out std_logic; 
	   o_filter_iterations_required	   : out std_logic_vector(15 downto 0)
	   --o_filters_in_set				   : out std_logic_vector(15 downto 0)
  );
end fast_filter_top;

architecture arch of fast_filter_top is

--type array_type_varx32bit is array(integer range <>) of std_logic_vector(31 downto 0); 

---- Component declarations -----

component conv_fp_multiplier_32
  port (
       a : in STD_LOGIC_VECTOR(32-1 downto 0);
       b : in STD_LOGIC_VECTOR(32-1 downto 0);
       clk : in STD_LOGIC;
       result : out STD_LOGIC_VECTOR(32-1 downto 0)
  );
end component;

component volume_fifo_32 IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(32-1 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(32-1 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC
  );
end component; 


component bias_fifo_32 IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(32-1 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(32-1 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC
  );
end component; 

component weight_fifo_2 IS
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(32-1 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    --prog_empty_thresh : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    --prog_full_thresh : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(32-1 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC
    --prog_full : OUT STD_LOGIC;
    --prog_empty : OUT STD_LOGIC
  );
end component; 

component fast_accumulator
  generic(
       g_data_width : INTEGER := 32;
       g_product_width : INTEGER := 32;
       g_accumulator_width : INTEGER := 32;
       g_dsps_used : INTEGER := 200;
       g_layer_1_adders : INTEGER := 16;
       g_layer_2_adders : INTEGER := 8;
       g_layer_3_adders : INTEGER := 4;
       g_layer_4_adders : INTEGER := 2;
       g_layer_5_adders : INTEGER := 1;
       g_layer_6_adders : INTEGER := 1;
       g_layer_7_adders : INTEGER := 2;
       g_num_adder_layers : INTEGER := 6;
       g_adder_delay : INTEGER := 11
  );
  port (
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_filter_acc_ready : in STD_LOGIC;
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_products_array : in array_type_varx32bit(g_dsps_used-1 downto 0);
       i_products_array_valid : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_reset_n : in STD_LOGIC;
	   i_num_filters : in std_logic_vector(15 downto 0); 
	   i_output_volume_size : in std_logic_vector(7 downto 0); 
	   i_channels_allowed : in std_logic_vector(7 downto 0); 
	   i_ch_al_filt			   : in std_logic_vector(15 downto 0); 
       o_acc_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_acc_ready : out STD_LOGIC;
       o_acc_valid : out STD_LOGIC; 
	   i_acc_fifo_empty : in std_logic; 
	   i_acc_fifo_almost_empty : in std_logic; 
	   i_acc_fifo_full			: in std_logic; 
	   i_acc_fifo_almost_full	: in std_logic
	   --i_acc_fifo_prog_full	: in std_logic; 
	   --o_acc_fifo_prog_full_thresh : out std_logic_vector(12 downto 0)
  );
end component;
component accumulator_relay
  generic(
		g_data_width : INTEGER := 32; 
		g_adder_delay : INTEGER := 11
  );
  port (
		i_clk						: in std_logic; 
		i_reset_n 					: in std_logic; 

		i_acc_fifo_data 			: in std_logic_vector(g_data_width-1 downto 0);  
		i_acc_fifo_valid 			: in std_logic;  
		i_acc_fifo_empty			: in std_logic; 
		i_acc_fifo_almost_empty		: in std_logic; 
		--i_acc_fifo_prog_empty		: in std_logic; 
		i_normalizer_ready			: in std_logic;  
		i_num_filters				: in std_logic_vector(15 downto 0); 
		i_num_iterations			: in std_logic_vector(7 downto 0); 
		i_output_volume_size		: in std_logic_vector(7 downto 0); 	
		i_more_dsps_needed			: in std_logic; 

		i_prev_fifo_data 		    : in std_logic_vector(g_data_width-1 downto 0); 
		i_prev_fifo_valid 			: in std_logic; 
		i_prev_fifo_empty 			: in std_logic; 
		i_prev_fifo_almost_empty    : in std_logic; 
		i_bias_fifo_data			: in std_logic_vector(g_data_width-1 downto 0); 
		
		i_bias_fifo_valid 			: in std_logic; 
		i_bias_fifo_full			: in std_logic; 
		i_bias_fifo_almost_full		: in std_logic; 
		i_bias_fifo_empty			: in std_logic; 
		i_bias_fifo_almost_empty	: in std_logic; 
		i_bias_values_loaded		: in std_logic; 
		
		i_affine_en					: in std_logic; 
		i_filter_iterations 		: in std_logic_vector(15 downto 0); 
		i_filters_in_set			: in std_logic_vector(15 downto 0); 

		o_acc_fifo_rd_en			: out std_logic; 
		o_prev_fifo_rd_en			: out std_logic; 
		o_bias_fifo_rd_en			: out std_logic; 
		o_bias_fifo_data_return		: out std_logic_vector(g_data_width-1 downto 0); 
		o_bias_fifo_data_return_en  : out std_logic; 
		o_bias_fifo_return_wr_en	: out std_logic; 

		--o_prog_emtpy_thresh 		: out std_logic_vector(12 downto 0); 
		o_conv_volume_out 			: out std_logic_vector(g_data_width-1 downto 0);
		o_conv_data_valid			: out std_logic; 
		
		o_row_complete				: out std_logic; 
		o_volume_complete			: out std_logic; 
		o_iteration_complete		: out std_logic
  );
end component;

component input_fifo_net_controller
  generic(
       g_weight_width : INTEGER := 32;
       g_data_width : INTEGER := 32;
       g_dsps_used : INTEGER := 200;
       g_num_11_filters : INTEGER := 18;
	   g_num_5_filters : INTEGER := 40; 
       g_num_7_filters : INTEGER := 28;
       g_num_3_filters : INTEGER := 66
  );
  port (
       i_clk : in STD_LOGIC;
       i_data_return : in array_type_varx32bit(g_dsps_used-1 downto 0);
       i_data_return_wr_en : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
	   i_filter_data_return : in array_type_varx32bit(g_dsps_used-1 downto 0); 
	   i_filter_data_return_wr_en : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0); 
       i_enable : in STD_LOGIC;
       i_filter_kernal_loaded : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_get_volume_row : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_get_weight_row : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_inbuff_empty : in STD_LOGIC;
       --i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_input_volume_channels : in STD_LOGIC_VECTOR(11 downto 0);
       i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_loaded_rows_processed : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_number_of_filters : in STD_LOGIC_VECTOR(15 downto 0);
       i_pad : in STD_LOGIC_VECTOR(3 downto 0);
       i_reset_n : in STD_LOGIC;
       i_snake_fill_complete : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_start : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_volume_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_volume_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       --i_volume_fifo_prog_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       --i_weight_fifo_2_prog_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_filter_channels : in STD_LOGIC_VECTOR(15 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
	   i_empty_data_complete : in std_logic_vector(g_dsps_used-1 downto 0); 
	   i_affine_select	: in std_logic; 
	   i_channels_in_set : in std_logic_vector(7 downto 0); 
	   i_filters_in_set : in std_logic_vector(15 downto 0); 
	   i_weight_router_ready : in std_logic_vector(g_dsps_used-1 downto 0); 
	   i_volume_router_ready : in std_logic_vector(g_dsps_used-1 downto 0); 
	   i_accumulator_complete : in std_logic;
	   i_volume_complete : in std_logic; 
	   i_iteration_complete : in std_logic; 
       o_all_channels_processed : out STD_LOGIC;
       o_convolution_en : out STD_LOGIC;
	   o_affine_en : out std_logic; 
       --o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_num_iterations : out STD_LOGIC_VECTOR(7 downto 0);
       o_padded_volume_size : out STD_LOGIC_VECTOR(7 downto 0);
       o_prev_data : out array_type_varx32bit(g_dsps_used-1 downto 0);
       o_prev_data_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_recycled_data : out array_type_varx32bit(g_dsps_used-1 downto 0);
       o_recycled_data_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
	   o_recycled_filter_data : out array_type_varx32bit(g_dsps_used-1 downto 0); 
	   o_recycled_filter_data_wr_en : out std_logic_vector(g_dsps_used-1 downto 0); 
       o_stop_stack_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_data : out array_type_varx32bit(g_dsps_used-1 downto 0);
       --o_volume_fifo_prog_full_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_volume_fifo_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_new_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_prev_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_recycled_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weight_data : out array_type_varx32bit(g_dsps_used-1 downto 0);
       --o_weight_fifo_2_prog_full_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_weight_fifo_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_new_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_prev_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_prev_data_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weights_recycled_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0); 
	   o_operation_complete		: out std_logic; 
	   o_volume_empty_data_en : out std_logic_vector(g_dsps_used-1 downto 0); 
	   o_volume_processed : out std_logic; 
	   o_iteration_complete : out std_logic;
	   o_weights_loaded                : out std_logic; 
	   o_more_dsps                     : out std_logic; 
	   o_channels_allowed  : out std_logic_vector(7 downto 0); 
	   o_dsps_used   : out std_logic_vector(7 downto 0); 
	   o_iterations_required : out std_logic_vector(7 downto 0); 
	   o_row_complete : out std_logic; 
	   o_fifo_clear : out std_logic; 
	   o_clear_weights : out std_logic; 
	   o_filters_in_set : out std_logic_vector(15 downto 0); 
	   o_filter_iterations_required : out std_logic_vector(15 downto 0); 
	   o_layer_ready : out std_logic; 
	   o_accumulator_en : out std_logic 
  );
end component;
component volume_mux
  generic(
		g_data_width : integer := 32
		); 
  port (
       i_almost_full : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       --i_fifo_prog_full_thresh : in STD_LOGIC_VECTOR(12 downto 0);
       i_fifo_we : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_new_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_new_data_en : in STD_LOGIC;
       i_prev_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_prev_data_en : in STD_LOGIC;
       i_prev_data_wr_en : in STD_LOGIC;
       --i_prog_full : in STD_LOGIC;
       i_recycled_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_recycled_data_en : in STD_LOGIC;
       i_recycled_data_wr_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_fifo_almost_full : out STD_LOGIC;
       o_fifo_full : out STD_LOGIC;
       --o_fifo_prog_full : out STD_LOGIC;
       o_get_volume_row : out STD_LOGIC;
       --o_prog_full_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_wr_en : out STD_LOGIC
  );
end component;
component volume_router
  generic(
       g_mult_delay : INTEGER := 8; 
	   g_data_width : integer := 32
  );
  port (
       i_acc_ready : in STD_LOGIC;
       i_almost_empty : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_convolution_en : in STD_LOGIC;
	   i_affine_en : in std_logic; 
       i_empty : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_data_valid : in STD_LOGIC;
       i_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
       i_filters_loaded : in STD_LOGIC;
       i_next_fifo_full : in STD_LOGIC;
       i_number_of_filters : in STD_LOGIC_VECTOR(15 downto 0);
       i_padded_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       --i_prog_empty : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       --i_row_size : in STD_LOGIC_VECTOR(12 downto 0);
       i_stop_stack_en : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_volume_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
	   i_empty_data_en : in std_logic;
	   i_filters_in_set : in std_logic_vector(15 downto 0); 
       o_conv_complete : out STD_LOGIC;
	   o_affine_complete: out std_logic; 
       o_data_mult : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_data_return : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_data_return_wr_en : out STD_LOGIC;
       o_data_valid : out STD_LOGIC;
       --o_prog_empty_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_rd_en : out STD_LOGIC;
       o_rows_complete : out STD_LOGIC;
       o_sending : out STD_LOGIC;
       o_snake_fill_complete : out STD_LOGIC; 
	   o_empty_data_complete : out std_logic; 
	   o_volume_router_ready : out std_logic 
  );
end component;
component weights_router
  generic (
		g_mult_delay : integer := 8; 
		g_data_width : integer := 32
		); 
  port (
       i_almost_empty : in STD_LOGIC;
       i_clear_weights : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_conv_complete : in STD_LOGIC;
       i_convolution_en : in STD_LOGIC;
	   i_affine_en : std_logic; 
	   i_affine_complete : std_logic; 
       i_empty : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fifo_data_valid : in STD_LOGIC;
       i_filter_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_num_filters : in STD_LOGIC_VECTOR(15 downto 0);
       --i_prog_empty : in STD_LOGIC;
       --i_prog_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_volume_ready : in STD_LOGIC;
       --i_volume_row_size : in STD_LOGIC_VECTOR(12 downto 0);
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
	   i_acc_ready	: in std_logic; 
       o_data_valid : out STD_LOGIC;
       o_filters_loaded : out STD_LOGIC;
       --o_filters_processed : out STD_LOGIC;
       --o_prog_empty_thresh : out STD_LOGIC_VECTOR(12 downto 0);
       o_rd_en : out STD_LOGIC;
       o_recycle_filter_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_recycle_filter_en : out STD_LOGIC;
       o_reset_weight_fifo_n : out STD_LOGIC;
       o_weights_mult : out STD_LOGIC_VECTOR(g_data_width-1 downto 0); 
	   o_weight_router_ready : out std_logic
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal acc_fifo_almost_empty 				: STD_LOGIC;
signal acc_fifo_almost_full 				: STD_LOGIC;
signal acc_fifo_empty 						: STD_LOGIC;
signal acc_fifo_full 						: STD_LOGIC;
--signal acc_fifo_prog_empty 					: STD_LOGIC;
--signal acc_fifo_prog_full 					: STD_LOGIC;
signal acc_fifo_rd_en 						: STD_LOGIC;
signal acc_fifo_valid 						: STD_LOGIC;
signal acc_fifo_wr_en						: STD_LOGIC;
signal acc_ready 							: STD_LOGIC;
signal acc_valid 							: STD_LOGIC;
signal all_channels_processed 				: STD_LOGIC;
--signal all_filters_processed 				: STD_LOGIC;
signal convolution_en 						: STD_LOGIC;
signal affine_en 							: STD_LOGIC;
--signal filter_acc_ready 					: STD_LOGIC;
signal clear_weights 						: STD_LOGIC;
signal i_rd_clk 							: STD_LOGIC;
signal i_reset 								: STD_LOGIC;
signal recycled_acc_data_en 				: STD_LOGIC;
signal recycle_en 							: STD_LOGIC;
signal reset_weight_fifo_n 					: STD_LOGIC;
signal send 								: STD_LOGIC;
signal send_done 							: STD_LOGIC;
signal weight_rst 							: STD_LOGIC;
signal accu_fifo_input 						: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_fifo_din 						: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_fifo_dout 						: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
--signal prog_empty_thresh 					: STD_LOGIC_VECTOR(12 downto 0);
--signal acc_fifo_prog_full_thresh 			: STD_LOGIC_VECTOR(12 downto 0);
signal conv_complete 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal affine_complete						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal data_return 							: array_type_varx32bit(g_dsps_used-1 downto 0);
signal data_return_wr_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal filter_kernal_loaded 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal get_volume_row 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal get_weight_row 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal loaded_rows_processed 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal multiplicand_a 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal multiplicand_b 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal num_iterations 						: STD_LOGIC_VECTOR(7 downto 0);
signal padded_volume_size 					: STD_LOGIC_VECTOR(7 downto 0);
signal prev_data 							: array_type_varx32bit(g_dsps_used-1 downto 0);
signal prev_data_wr_en 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal prev_weight_data 					: STD_LOGIC_VECTOR(g_data_width-1 downto 0) := (others => '0');
signal products_array 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal products_array_valid 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal recycled_acc_data 					: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal recycled_data						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal recycled_data_wr_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal recycle_filter_data 					: array_type_varx32bit(g_dsps_used-1 downto 0);
signal recycle_filter_data_wr_en 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal snake_fill_complete 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal stop_stack_en 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_data 							: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_data_valid 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_almost_empty 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_almost_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_dout 					: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_fifo_empty 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_full 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal volume_fifo_full_prog_thresh 		: STD_LOGIC_VECTOR(12 downto 0);
signal volume_fifo_input 					: array_type_varx32bit(g_dsps_used-1 downto 0);
--signal volume_fifo_prog_empty 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal volume_fifo_prog_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_rd_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_valid 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_wr_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_new_data_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_prev_data_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_ready 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_recycled_data_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_almost_full 		: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal volume_stack_fifo_prog_full 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal volume_stack_fifo_prog_full_thresh 	: STD_LOGIC_VECTOR(12 downto 0);
signal volume_stack_fifo_wr_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal vol_fifo_prog_empty_thresh 			: STD_LOGIC_VECTOR(12 downto 0);
signal weight_almost_full 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_data 							: array_type_varx32bit(g_dsps_used-1 downto 0);
signal weight_data_valid 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_almost_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_full 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_input 					: array_type_varx32bit(g_dsps_used-1 downto 0);
--signal weight_fifo_2_prog_full				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal weight_fifo_2_prog_full_thresh 		: STD_LOGIC_VECTOR(12 downto 0);
signal weight_fifo_wr_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_full 							: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_new_data_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prev_data_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_prev_data_wr_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal weight_prog_full 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal weight_prog_full_thresh 				: STD_LOGIC_VECTOR(12 downto 0);
signal weight_recycled_data_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_wr_en 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_almost_empty					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_dout 							: array_type_varx32bit(g_dsps_used-1 downto 0);
signal w_fifo_empty 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal w_fifo_prog_empty 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal w_fifo_prog_empty_thresh 			: STD_LOGIC_VECTOR(12 downto 0);
signal w_fifo_rd_en 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal w_fifo_valid 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal operation_complete 					: std_logic;
signal empty_data_en						: std_logic_vector(g_dsps_used-1 downto 0); 
signal empty_data_complete 					: std_logic_vector(g_dsps_used-1 downto 0); 
signal filter_data_return 					: array_type_varx32bit(g_dsps_used-1 downto 0); 
signal filter_data_return_wr_en 			: std_logic_vector(g_dsps_used-1 downto 0);  
signal more_dsps_needed					 	: std_logic; 
--signal iteration_complete : std_logic; 
---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;
signal channels_allowed : std_logic_vector(7 downto 0); 


signal bias_fifo_almost_empty 				: std_logic; 
signal bias_fifo_dout 						: std_logic_vector(g_data_width-1 downto 0);
signal bias_fifo_empty 						: std_logic; 
--signal bias_fifo_prog_empty 				: std_logic; 
--signal bias_fifo_prog_empty_thresh 			: std_logic_vector(12 downto 0);
signal bias_fifo_full						: std_logic; 
signal bias_fifo_almost_full				: std_logic; 
signal bias_fifo_rd_en						: std_logic; 
signal bias_fifo_valid 						: std_logic; 
signal bias_fifo_data_return		        : std_logic_vector(g_data_width-1 downto 0);   
signal bias_fifo_data_return_en             : std_logic; 
signal bias_fifo_return_wr_en	            : std_logic; 

signal prev_fifo_almost_empty 				: std_logic; 
signal prev_fifo_dout 						: std_logic_vector(g_data_width-1 downto 0);
signal prev_fifo_empty 						: std_logic; 
--signal prev_fifo_prog_empty 				: std_logic; 
--signal prev_fifo_prog_empty_thresh 			: std_logic_vector(12 downto 0);
signal prev_fifo_rd_en						: std_logic; 
signal prev_fifo_valid 						: std_logic; 

signal bias_fifo_din_mux					: std_logic_vector(g_data_width-1 downto 0); 
signal bias_fifo_wr_en_mux					: std_logic; 

signal fifo_clear 							: std_logic; 
signal fifo_reset 							: std_logic; 

signal affine_select						: std_logic; 
signal weight_router_ready					: std_logic_vector(g_dsps_used-1 downto 0); 
signal volume_router_ready					: std_logic_vector(g_dsps_used-1 downto 0); 
signal accumulator_complete : std_logic; 

signal filter_iterations_required			: std_logic_vector(15 downto 0); 
signal filters_in_set						: std_logic_vector(15 downto 0); 
signal accumulator_en						: std_logic; 

signal volume_processed 					: std_logic; 
signal iteration_complete					: std_logic; 

begin

o_channels_allowed <= channels_allowed; 
o_more_dsps <= more_dsps_needed; 
o_acc_row_complete <= accumulator_complete; 
----  Component instantiations  ----
o_filter_iterations_required	  <= filter_iterations_required; 
--o_filters_in_set				  <= filters_in_set; 

BIAS_FIFO : bias_fifo_32
  port map(
       almost_empty 		=> bias_fifo_almost_empty,
       almost_full 			=> bias_fifo_almost_full,
       din 					=> bias_fifo_din_mux, --i_bias_fifo_din,
       dout 				=> bias_fifo_dout,
       empty 				=> bias_fifo_empty,
       full 				=> bias_fifo_full,
       rd_clk 				=> i_clk,
       rd_en 				=> bias_fifo_rd_en,
       rst 					=> i_reset,
       valid				=> bias_fifo_valid,
       wr_clk 				=> i_clk,
       wr_en				=> bias_fifo_wr_en_mux --i_bias_fifo_wr_en
  );


PREVIOUS_DATA_FIFO : weight_fifo_2
  port map(
       almost_empty 		=> prev_fifo_almost_empty,
       almost_full 			=> o_prev_fifo_almost_full,
       din 					=> i_prev_fifo_din,
       dout 				=> prev_fifo_dout,
       empty 				=> prev_fifo_empty,
       full 				=> o_prev_fifo_full,
       --prog_empty 			=> prev_fifo_prog_empty,
       --prog_empty_thresh 	=> prog_empty_thresh,
       --prog_full 			=> o_prev_fifo_prog_full,
       --prog_full_thresh 	=> i_prev_fifo_prog_full_thresh,
       rd_clk 				=> i_clk,
       rd_en 				=> prev_fifo_rd_en,
       rst 					=> i_reset,
       valid 				=> prev_fifo_valid,
       wr_clk 				=> i_clk,
       wr_en 				=> i_prev_fifo_wr_en
  );

  
 bias_fifo_wr_en_mux <= i_bias_fifo_wr_en when bias_fifo_data_return_en = '0' else	
						bias_fifo_return_wr_en; 

 bias_fifo_din_mux <= i_bias_fifo_din when bias_fifo_data_return_en = '0' else 
					  bias_fifo_data_return; 
					  
 o_bias_fifo_full <= bias_fifo_full; 
 o_bias_fifo_almost_full <= bias_fifo_almost_full; 
 
 o_conv_complete <= and_reduce(conv_complete); 
 o_volume_processed <= volume_processed; 
 o_iteration_complete <= iteration_complete; 
					  

ACCUMULATOR_RELAY_UNIT : accumulator_relay
  generic map(
		g_data_width => g_data_width, 
		g_adder_delay => g_adder_delay
  )
  port map(
		i_clk 						=> i_clk,
		i_reset_n 					=> i_reset_n,
		i_acc_fifo_data 			=> acc_fifo_dout,
		i_acc_fifo_almost_empty  	=> acc_fifo_almost_empty,
		i_acc_fifo_valid 			=> acc_fifo_valid,
		i_acc_fifo_empty 			=> acc_fifo_empty,
		--i_acc_fifo_prog_empty 		=> acc_fifo_prog_empty,
		i_normalizer_ready 			=> i_normalizer_ready,
		i_num_filters 				=> i_number_of_filters,
		i_num_iterations 			=> num_iterations,
		i_output_volume_size 		=> i_output_volume_size,
		i_more_dsps_needed			=> more_dsps_needed,    
		i_prev_fifo_data 		    => prev_fifo_dout, 
		i_prev_fifo_valid 			=> prev_fifo_valid,  
		i_prev_fifo_empty 			=> prev_fifo_empty,  
		i_prev_fifo_almost_empty    => prev_fifo_almost_empty, 
		i_bias_fifo_data 			=> bias_fifo_dout, 
		i_bias_fifo_valid 		 	=> bias_fifo_valid,
		i_bias_fifo_full			=> bias_fifo_full, 
		i_bias_fifo_almost_full		=> bias_fifo_almost_full, 
		i_bias_fifo_empty			=> bias_fifo_empty, 
		i_bias_fifo_almost_empty	=> bias_fifo_almost_empty, 
		i_bias_values_loaded		=> i_bias_values_loaded, 
		i_affine_en 				=> i_affine_select, 
		i_filter_iterations         => filter_iterations_required, 
		i_filters_in_set			=> filters_in_set, 
        o_conv_data_valid 			=> o_conv_data_valid,
        o_conv_volume_out 			=> o_conv_volume_out,
        --o_prog_emtpy_thresh 		=> prog_empty_thresh,
        o_acc_fifo_rd_en			=> acc_fifo_rd_en, 
		o_prev_fifo_rd_en			=> prev_fifo_rd_en, 
		o_bias_fifo_rd_en			=> bias_fifo_rd_en, 
		o_bias_fifo_data_return		=> bias_fifo_data_return,  
		o_bias_fifo_data_return_en  => bias_fifo_data_return_en, 
		o_bias_fifo_return_wr_en	=> bias_fifo_return_wr_en, 
		o_row_complete				=> accumulator_complete, 
		o_volume_complete			=> volume_processed, 
		o_iteration_complete		=> iteration_complete
  );
  
  
ACCUMULATOR_FIFO : weight_fifo_2
  port map(
       almost_empty 		=> acc_fifo_almost_empty,
       almost_full 			=> acc_fifo_almost_full,
       din 					=> acc_fifo_din,
       dout 				=> acc_fifo_dout,
       empty 				=> acc_fifo_empty,
       full 				=> acc_fifo_full,
       --prog_empty 			=> acc_fifo_prog_empty,
       --prog_empty_thresh 	=> prog_empty_thresh,
       --prog_full 			=> acc_fifo_prog_full,
       --prog_full_thresh 	=> acc_fifo_prog_full_thresh,
       rd_clk 				=> i_clk,
       rd_en 				=> acc_fifo_rd_en,
       rst 					=> i_reset,
       valid 				=> acc_fifo_valid,
       wr_clk 				=> i_clk,
       wr_en 				=> acc_fifo_wr_en
  );


DSP_ACCUMULATOR : fast_accumulator
  generic map(
       g_data_width => g_data_width,
       g_product_width => g_product_width,
       g_accumulator_width => g_data_width,
       g_dsps_used => g_dsps_used,
       g_layer_1_adders => 16,
       g_layer_2_adders => 8,
       g_layer_3_adders => 4,
       g_layer_4_adders => 2,
       g_layer_5_adders => 1,
       g_layer_6_adders => 1,
       g_layer_7_adders => 1,
	   g_num_adder_layers => 6,
	   g_adder_delay => g_adder_delay
  )
  port map(
       i_clk 					=> i_clk,
       i_enable 				=> accumulator_en,
       i_filter_acc_ready 		=> '1',
       i_filter_size 			=> i_weight_filter_size,
       i_products_array 		=> products_array,
       i_products_array_valid 	=> products_array_valid,
       i_reset_n 				=> i_reset_n,
	   i_num_filters 			=> i_number_of_filters,
	   i_output_volume_size 	=> i_output_volume_size,
	   i_channels_allowed 		=> channels_allowed,
	   i_ch_al_filt             => i_ch_al_filt,
       o_acc_data 				=> acc_fifo_din,
       o_acc_ready 				=> acc_ready,
       o_acc_valid 				=> acc_fifo_wr_en, 
	   i_acc_fifo_empty			=> acc_fifo_empty, 
	   i_acc_fifo_almost_empty  => acc_fifo_almost_empty, 
	   i_acc_fifo_full			=> acc_fifo_full, 
	   i_acc_fifo_almost_full	=> acc_fifo_almost_full 
	   --i_acc_fifo_prog_full	    => acc_fifo_prog_full, 
	   --o_acc_fifo_prog_full_thresh => acc_fifo_prog_full_thresh
  );



ROW_CONTROLLER : input_fifo_net_controller
  generic map(
       g_weight_width => g_weight_width,
       g_data_width => g_data_width,
       g_dsps_used => g_dsps_used,
       g_num_11_filters => 3, 
	   g_num_5_filters => 6, 
       g_num_7_filters => 4, 
       g_num_3_filters => 8
	   
  )
  port map(
       i_clk => i_rd_clk,
       i_data_return => data_return,
       i_data_return_wr_en => data_return_wr_en,
	   i_filter_data_return => filter_data_return, 
	   i_filter_data_return_wr_en => filter_data_return_wr_en, 
       i_enable => i_enable,
       i_filter_kernal_loaded => filter_kernal_loaded,
       i_get_volume_row => get_volume_row,
       i_get_weight_row => get_weight_row,
       i_inbuff_almost_empty => i_inbuff_almost_empty,
       i_inbuff_dout => i_inbuff_dout,
       i_inbuff_empty => i_inbuff_empty,
       --i_inbuff_prog_empty => i_inbuff_prog_empty,
       i_inbuff_valid => i_inbuff_valid,
       i_input_volume_channels => i_input_volume_channels,
       i_input_volume_size => i_input_volume_size,
       i_loaded_rows_processed => loaded_rows_processed,
       i_number_of_filters => i_number_of_filters,
       i_pad => i_pad,
       i_reset_n => i_reset_n,
       i_snake_fill_complete => snake_fill_complete,
       i_start => i_start,
       i_stride => i_stride,
       i_volume_fifo_almost_full => volume_stack_fifo_almost_full,
       i_volume_fifo_full => volume_stack_fifo_full,
       --i_volume_fifo_prog_full => volume_stack_fifo_prog_full,
       i_weight_fifo_almost_full => weight_almost_full,
       i_weight_fifo_full => weight_full,
       --i_weight_fifo_2_prog_full => weight_prog_full,
       i_weight_filter_channels => i_weight_filter_channels,
       i_weight_filter_size => i_weight_filter_size,
	   i_empty_data_complete => empty_data_complete,
	   i_affine_select	=> i_affine_select, 
	   i_channels_in_set =>  i_channels_in_set, 
	   i_filters_in_set => i_filters_in_set, 
	   i_weight_router_ready => weight_router_ready, 
	   i_volume_router_ready => volume_router_ready, 
	   i_accumulator_complete => accumulator_complete, 
	   i_volume_complete => volume_processed, 
	   i_iteration_complete => iteration_complete, 
       o_all_channels_processed => all_channels_processed,
       o_convolution_en => convolution_en,
	   o_affine_en => affine_en, 
       --o_inbuff_prog_empty_thresh => o_inbuff_prog_empty_thresh,
       o_inbuff_rd_en => o_inbuff_rd_en,
       o_num_iterations => num_iterations,
       o_padded_volume_size => padded_volume_size,
       o_prev_data => prev_data,
       o_prev_data_wr_en => prev_data_wr_en,
       o_recycled_data => recycled_data,
       o_recycled_data_wr_en => recycled_data_wr_en,
	   o_recycled_filter_data => recycle_filter_data, 
	   o_recycled_filter_data_wr_en => recycle_filter_data_wr_en, 
       o_stop_stack_en => stop_stack_en,
       o_volume_data => volume_data,
       --o_volume_fifo_prog_full_thresh => volume_stack_fifo_prog_full_thresh,
       o_volume_fifo_wr_en => volume_stack_fifo_wr_en,
       o_volume_new_data_en => volume_new_data_en,
       o_volume_prev_data_en => volume_prev_data_en,
       o_volume_recycled_data_en => volume_recycled_data_en,
       o_weight_data => weight_data,
       --o_weight_fifo_2_prog_full_thresh => weight_prog_full_thresh,
       o_weight_fifo_wr_en => weight_wr_en,
       o_weights_new_data_en => weight_new_data_en,
       o_weights_prev_data_en => weight_prev_data_en,
       o_weights_prev_data_wr_en => weight_prev_data_wr_en,
       o_weights_recycled_data_en => weight_recycled_data_en,
	   o_operation_complete => o_operation_complete, 
	   o_volume_empty_data_en	=> empty_data_en, 
	   o_volume_processed => open, 
	   o_iteration_complete => open, 
	   o_weights_loaded  => o_weights_loaded, 
	   o_more_dsps  => more_dsps_needed,  
	   o_channels_allowed => channels_allowed, 
	   o_dsps_used => o_dsps_used, 
	   o_iterations_required => o_iterations_required,
	   o_row_complete => o_row_complete, 
	   o_fifo_clear => fifo_clear, 
	   o_clear_weights => clear_weights, 
	   o_filter_iterations_required => filter_iterations_required, 
	   o_filters_in_set => filters_in_set, 
	   o_layer_ready => o_layer_ready, 
	   o_accumulator_en => accumulator_en
  );


---- Terminal assignment ----

    -- Inputs terminals
	i_rd_clk <= i_clk;


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

----  Generate statements  ----

CHANNEL_UNIT : for i in g_dsps_used-1 downto 0 generate
begin
  MULTIPLIER : conv_fp_multiplier_32
    port map(
         a => multiplicand_a(i),
         b => multiplicand_b(i),
         clk => i_clk,
         result => products_array(i)
    );
  
  i_reset <= not(i_reset_n);
  
  fifo_reset <= fifo_clear or not(i_reset_n); 
  
  products_array_valid(i) <= weight_data_valid(i) and volume_data_valid(i);
  
  weight_rst <= clear_weights or i_reset or fifo_reset;
  
  VOLUME_ROW_FIFO : volume_fifo_32
    port map(
         almost_empty => volume_fifo_almost_empty(i),
         almost_full => volume_fifo_almost_full(i),
         din => volume_fifo_input(i),
         dout => volume_fifo_dout(i),
         empty => volume_fifo_empty(i),
         full => volume_fifo_full(i),
         --prog_empty => volume_fifo_prog_empty(i),
         --prog_empty_thresh => vol_fifo_prog_empty_thresh,
         --prog_full => volume_fifo_prog_full(i),
         --prog_full_thresh => volume_fifo_full_prog_thresh,
         rd_clk => i_clk,
         rd_en => volume_fifo_rd_en(i),
         rst => fifo_reset,
         valid => volume_fifo_valid(i),
         wr_clk => i_clk,
         wr_en => volume_fifo_wr_en(i)
    );
  
  VOLUME_ROW_MUX : volume_mux
	generic map(
		 g_data_width => g_data_width
		 )
    port map(
         i_almost_full => volume_fifo_almost_full(i),
         i_clk => i_clk,
         i_enable => i_enable,
         --_fifo_prog_full_thresh => volume_stack_fifo_prog_full_thresh,
         i_fifo_we => volume_stack_fifo_wr_en(i),
         i_full => volume_fifo_full(i),
         i_new_data => volume_data(i),
         i_new_data_en => volume_new_data_en(i),
         i_prev_data => prev_data(i),
         i_prev_data_en => volume_prev_data_en(i),
         i_prev_data_wr_en => prev_data_wr_en(i),
         --i_prog_full => volume_fifo_prog_full(i),
         i_recycled_data => recycled_data(i),
         i_recycled_data_en => volume_recycled_data_en(i),
         i_recycled_data_wr_en => recycled_data_wr_en(i),
         i_reset_n => i_reset_n,
         o_data => volume_fifo_input(i),
         o_fifo_almost_full => volume_stack_fifo_almost_full(i),
         o_fifo_full => volume_stack_fifo_full(i),
         --o_fifo_prog_full => volume_stack_fifo_prog_full(i),
         o_get_volume_row => get_volume_row(i),
         --o_prog_full_thresh => volume_fifo_full_prog_thresh,
         o_wr_en => volume_fifo_wr_en(i)
    );
  
  VOLUME_ROW_ROUTER : volume_router
	generic map (
		 g_mult_delay => g_mult_delay, 
		 g_data_width => g_data_width
		 )
    port map(
         i_acc_ready => acc_ready,
         i_almost_empty => volume_fifo_almost_empty(i),
         i_clk => i_clk,
         i_convolution_en => convolution_en,
		 i_affine_en => affine_en, 
         i_empty => volume_fifo_empty(i),
         i_enable => i_enable,
         i_fifo_data_valid => volume_fifo_valid(i),
         i_filter_size => i_weight_filter_size,
         i_filters_loaded => filter_kernal_loaded(i),
         i_next_fifo_full => volume_stack_fifo_almost_full(i),
         i_number_of_filters => i_number_of_filters,
         i_padded_volume_size => padded_volume_size,
         --i_prog_empty => volume_fifo_prog_empty(i),
         i_reset_n => i_reset_n,
         --i_row_size => open, --volume_fifo_full_prog_thresh,
         i_stop_stack_en => stop_stack_en(i),
         i_stride => i_stride,
         i_volume_data => volume_fifo_dout(i),
		 i_empty_data_en => empty_data_en(i),
		 i_filters_in_set => i_filters_in_set,
         o_conv_complete => conv_complete(i),
		 o_affine_complete => affine_complete(i), 
         o_data_mult => multiplicand_a(i),
         o_data_return => data_return(i),
         o_data_return_wr_en => data_return_wr_en(i),
         o_data_valid => volume_data_valid(i),
         --o_prog_empty_thresh => vol_fifo_prog_empty_thresh,
         o_rd_en => volume_fifo_rd_en(i),
         o_rows_complete => loaded_rows_processed(i),
         o_sending => volume_ready(i),
         o_snake_fill_complete => snake_fill_complete(i), 
		 o_empty_data_complete => empty_data_complete(i), 
		 o_volume_router_ready	=> volume_router_ready(i)
    );
  
  WEIGHTS_ROW_ROUTER : weights_router
	generic map (
		 g_mult_delay => g_mult_delay, 
		 g_data_width => g_data_width
		 )
    port map(
         i_almost_empty 		=> w_fifo_almost_empty(i),
         i_clear_weights 		=> clear_weights,
         i_clk 					=> i_clk,
         i_conv_complete 		=> conv_complete(i),
         i_convolution_en 		=> convolution_en,
		 i_affine_en 			=> affine_en, 
		 i_affine_complete 		=> affine_complete(i), 
         i_empty 				=> w_fifo_empty(i),
         i_enable 				=> i_enable,
         i_fifo_data_valid 		=> w_fifo_valid(i),
         i_filter_data 			=> w_fifo_dout(i),
         i_num_filters 			=> i_number_of_filters,
         i_reset_n 				=> i_reset_n,
         i_volume_ready 		=> volume_ready(i),
         i_weight_filter_size 	=> i_weight_filter_size,
		 i_acc_ready 			=> acc_ready,
         o_data_valid 			=> weight_data_valid(i),
         o_filters_loaded 		=> filter_kernal_loaded(i),
         o_rd_en 				=> w_fifo_rd_en(i),
         o_recycle_filter_data 	=> filter_data_return(i),
         o_recycle_filter_en 	=> filter_data_return_wr_en(i),
         o_reset_weight_fifo_n 	=> reset_weight_fifo_n,
         o_weights_mult 		=> multiplicand_b(i), 
		 o_weight_router_ready 	=> weight_router_ready(i)
    );
  
  WEIGHT_ROW_FIFO : weight_fifo_2
    port map(
         almost_empty => w_fifo_almost_empty(i),
         almost_full => weight_fifo_almost_full(i),
         din => weight_fifo_input(i),
         dout => w_fifo_dout(i),
         empty => w_fifo_empty(i),
         full => weight_fifo_full(i),
         --prog_empty => w_fifo_prog_empty(i),
         --prog_empty_thresh => w_fifo_prog_empty_thresh,
         --prog_full => weight_fifo_2_prog_full(i),
         --prog_full_thresh => weight_fifo_2_prog_full_thresh,
         rd_clk => i_clk,
         rd_en => w_fifo_rd_en(i),
         rst => weight_rst,
         valid => w_fifo_valid(i),
         wr_clk => i_clk,
         wr_en => weight_fifo_wr_en(i)
    );
  
  WEIGHT_ROW_MUX : volume_mux
	generic map(
		g_data_width => g_data_width
		)
    port map(
         --i_fifo_prog_full_thresh => weight_prog_full_thresh,
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
         --i_prog_full => weight_fifo_2_prog_full(i),
         i_recycled_data => recycle_filter_data(i),
         i_recycled_data_en => weight_recycled_data_en(i),
         i_recycled_data_wr_en => recycle_filter_data_wr_en(i),
         i_reset_n => i_reset_n,
         o_data => weight_fifo_input(i),
         o_fifo_almost_full => weight_almost_full(i),
         o_fifo_full => weight_full(i),
         --o_fifo_prog_full => weight_prog_full(i),
         o_get_volume_row => get_weight_row(i),
         --o_prog_full_thresh => weight_fifo_2_prog_full_thresh,
         o_wr_en => weight_fifo_wr_en(i)
    );
end generate CHANNEL_UNIT;

end arch;
