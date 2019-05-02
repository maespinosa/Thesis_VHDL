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
	   g_mult_delay : integer := 8; 
	   g_num_adder_layers : INTEGER := 6
  );
  port(
       i_clk                           : in STD_LOGIC;
       i_enable                        : in STD_LOGIC;
       i_inbuff_almost_empty           : in STD_LOGIC;
       i_inbuff_empty                  : in STD_LOGIC;
       i_inbuff_valid                  : in STD_LOGIC;
       i_normalizer_ready              : in STD_LOGIC;
       i_reset_n                       : in STD_LOGIC;
       i_start                         : in STD_LOGIC;
       i_inbuff_dout                   : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_volume_channels         : in STD_LOGIC_VECTOR(15 downto 0);
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
	   
	   i_bias_fifo_din 				   : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
	   i_bias_fifo_wr_en			   : in std_logic; 
	   o_bias_fifo_full				   : out std_logic; 
	   o_bias_fifo_almost_full		   : out std_logic; 
	   
	   i_bias_values_loaded			   : in std_logic; 
	   
       o_conv_data_valid               : out STD_LOGIC;
       o_inbuff_rd_en                  : out STD_LOGIC;
       o_conv_volume_out               : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
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
	   o_filter_iterations_required	   : out std_logic_vector(15 downto 0); 
	   i_relu_en						: in std_logic; 
	   o_relu_en						: out std_logic;
	   
												
												
		--ACCUMULATOR_FIFO
		ila_acc_fifo_almost_empty 				: out STD_LOGIC;
		ila_acc_fifo_almost_full 				: out STD_LOGIC;
		ila_acc_fifo_empty 						: out STD_LOGIC;
		ila_acc_fifo_full 						: out STD_LOGIC;
		ila_acc_fifo_rd_en 						: out STD_LOGIC;
		ila_acc_fifo_valid 						: out STD_LOGIC;
		ila_acc_fifo_wr_en						: out STD_LOGIC;
		ila_accu_fifo_input 					: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		ila_acc_fifo_din 						: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		ila_acc_fifo_dout 						: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);

		--CHANNEL UNIT VOLUME FIFO
		ila_volume_fifo_din_0					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_1					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_2					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_3					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_4					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_5					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_6					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_7					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_8					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_9					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_10					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_11					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_12					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_13					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_14					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_15					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_16					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_17					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_18					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_19					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_20					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_21					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_22					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_23					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_24					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_25					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_26					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_27					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_28					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_29					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_30					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_31					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_din_32					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_volume_fifo_almost_empty 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_fifo_almost_full 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_fifo_empty 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_fifo_full 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_fifo_rd_en 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_fifo_valid 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_fifo_wr_en 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

		--CHANNEL UNIT WEIGHT FIFO 
		ila_weight_fifo_din_0					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_1					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_2					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_3					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_4					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_5					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_6					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_7					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_8					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_9					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_10					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_11					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_12					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_13					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_14					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_15					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_16					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_17					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_18					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_19					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_20					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_21					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_22					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_23					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_24					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_25					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_26					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_27					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_28					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_29					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_30					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_31					: out std_logic_vector(g_data_width-1 downto 0);  
		ila_weight_fifo_din_32					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_weight_fifo_almost_full 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_fifo_full 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_fifo_wr_en 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_fifo_empty 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_fifo_rd_en 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_fifo_valid 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_fifo_almost_empty			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_rst 							: out STD_LOGIC;

		--CHANNEL UNIT VOLUME MUX 
		ila_volume_mux_prev_data_wr_en 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_mux_new_data_en 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_mux_prev_data_en 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_mux_recycled_data_wr_en 		: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_mux_recycled_data_en 		: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_stack_fifo_wr_en 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_stack_fifo_almost_full 		: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_stack_fifo_full 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_get_volume_row 						: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

		--CHANNEL UNIT ROUTERS
		ila_router_disable_channel_n 			: out std_logic_vector(g_dsps_used-1 downto 0);  
		ila_router_convolution_en 				: out STD_LOGIC;
		ila_router_affine_en 					: out STD_LOGIC;
		ila_router_acc_ready 					: out STD_LOGIC;
		ila_router_filter_kernal_loaded 		: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_router_conv_complete 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_router_affine_complete				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_router_volume_ready 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);


		--CHANNEL UNIT VOLUME ROUTER
		ila_volume_router_state					: out std_logic_vector(3 downto 0); 
		ila_volume_router_ready					: out std_logic_vector(g_dsps_used-1 downto 0); 
		--ila_volume_router_padded_volume_size 	: out STD_LOGIC_VECTOR(7 downto 0);
		ila_volume_router_stop_stack_en 		: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_router_calc_params			: out std_logic; 
		ila_volume_router_data_return_wr_en 	: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_router_data_valid 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_router_loaded_rows_processed : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_router_snake_fill_complete 	: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_volume_router_empty_data_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
		ila_volume_router_empty_data_complete 	: out std_logic_vector(g_dsps_used-1 downto 0); 
		
		ila_volume_router_element_counter 		: out std_logic_vector(9 downto 0);    
		ila_volume_router_filter_counter 		: out std_logic_vector(15 downto 0);    
		ila_volume_router_column_counter		: out std_logic_vector(7 downto 0);      
		ila_volume_router_delay_shift_register 	: out std_logic_vector(7 downto 0);    
		ila_volume_router_pad_16bit				: out std_logic_vector(15 downto 0);    
		ila_volume_router_padded_volume_size	: out std_logic_vector(15 downto 0);    
		ila_volume_router_empty_done			: out std_logic; 

		--CHANNEL UNIT WEIGHT ROUTER
		ila_weight_router_state					: out std_logic_vector(3 downto 0); 
		ila_weight_router_ready						: out std_logic_vector(g_dsps_used-1 downto 0); 
		ila_weight_router_filter_data_return_wr_en 	: out std_logic_vector(g_dsps_used-1 downto 0);  
		ila_weight_router_clear_weights 				: out STD_LOGIC;
		ila_weight_router_data_valid 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_router_filter_element_counter 		: out std_logic_vector(3 downto 0);  
		ila_weight_router_delay_shift_register 		: out std_logic_vector(7 downto 0); 
		
		--CHANNEL UNIT WEIGHT MUX
		ila_weight_mux_recycle_filter_data_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_prev_weight_data 					: out STD_LOGIC_VECTOR(g_data_width-1 downto 0) := (others => '0');
		ila_weight_mux_new_data_en 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_mux_prev_data_en 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_mux_recycled_data_en 		: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_mux_almost_full 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_mux_full 					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_mux_wr_en  					: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_weight_mux_prev_data_wr_en 			: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_get_weight_row 						: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

		--BIAS DATA FIFO
		ila_bias_fifo_almost_empty 				: out std_logic; 
		ila_bias_fifo_dout 						: out std_logic_vector(g_data_width-1 downto 0);
		ila_bias_fifo_empty 					: out std_logic; 
		ila_bias_fifo_full						: out std_logic; 
		ila_bias_fifo_almost_full				: out std_logic; 
		ila_bias_fifo_rd_en						: out std_logic; 
		ila_bias_fifo_valid 					: out std_logic; 
		ila_bias_fifo_data_return		        : out std_logic_vector(g_data_width-1 downto 0);   
		ila_bias_fifo_data_return_en             : out std_logic; 
		ila_bias_fifo_return_wr_en	            : out std_logic; 
		ila_bias_fifo_din_mux					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_bias_fifo_wr_en_mux					: out std_logic; 

		--PREVIOUS DATA FIFO
		ila_prev_fifo_almost_empty 				: out std_logic; 
		ila_prev_fifo_dout 						: out std_logic_vector(g_data_width-1 downto 0);
		ila_prev_fifo_empty 					: out std_logic; 
		ila_prev_fifo_rd_en						: out std_logic; 
		ila_prev_fifo_valid 					: out std_logic; 
		
		ila_reset 								: out STD_LOGIC;
		ila_reset_weight_fifo_n 				: out STD_LOGIC;

		--ILA CONTROLLER SIGNALS 
		ila_controller_state					: out std_logic_vector(4 downto 0); 
		ila_controller_filter_iterations_required			: out std_logic_vector(15 downto 0); 
		ila_controller_filters_in_set						: out std_logic_vector(15 downto 0); 
		ila_controller_accumulator_en						: out std_logic; 
		ila_controller_fifo_clear 							: out std_logic; 
		ila_controller_fifo_reset 							: out std_logic; 
		ila_controller_channels_allowed 					: out std_logic_vector(7 downto 0); 
		ila_controller_more_dsps_needed					: out std_logic; 
		ila_controller_operation_complete 					: out std_logic;
		ila_controller_num_iterations 						: out STD_LOGIC_VECTOR(7 downto 0);
		ila_controller_all_channels_processed 				: out STD_LOGIC;
		ila_controller_input_volume_row_counter 	: out std_logic_vector(15 downto 0); 
		ila_controller_volume_channel_counter		: out std_logic_vector(15 downto 0); 
		ila_controller_weight_channel_counter		: out std_logic_vector(15 downto 0); 
		ila_controller_filter_row_counter 			: out std_logic_vector(15 downto 0);
		ila_controller_filter_column_counter 		: out std_logic_vector(15 downto 0);
		ila_controller_filter_counter				: out std_logic_vector(15 downto 0);
		ila_controller_volume_row_counter 			: out std_logic_vector(15 downto 0);
		ila_controller_volume_column_counter 		: out std_logic_vector(15 downto 0);
		ila_controller_volume_index_counter		: out std_logic_vector(15 downto 0); 
		ila_controller_weight_index_counter 		: out std_logic_vector(15 downto 0); 
		ila_controller_padded_volume_row_size 		: out std_logic_vector(15 downto 0);
		ila_controller_padded_volume_column_size 	: out std_logic_vector(15 downto 0);
		ila_controller_volume_rows_processed 		: out std_logic_vector(15 downto 0); 
		ila_controller_element_counter				: out std_logic_vector(15 downto 0); 
		ila_controller_pad_counter					: out std_logic_vector(3 downto 0);
		ila_controller_channels_processed			: out std_logic_vector(15 downto 0); 
		ila_controller_pad_8bit					: out std_logic_vector(7 downto 0);	
		ila_controller_pad_10bit					: out std_logic_vector(9 downto 0); 
		ila_controller_pad_16bit					: out std_logic_vector(15 downto 0); 
		ila_controller_input_volume_size_10bit 	: out std_logic_vector(9 downto 0);   
		ila_controller_volume_row					: out std_logic_vector(15 downto 0);	  
		ila_controller_iteration_calc				: out std_logic_vector(15 downto 0);   
		ila_controller_iteration_counter			: out std_logic_vector(15 downto 0);
		ila_controller_filter_iteration_counter    : out std_logic_vector(15 downto 0); 
		ila_controller_channel_iteration_counter  	: out std_logic_vector(15 downto 0);  
		ila_controller_stride_counter				: out std_logic_vector(3 downto 0);  
		ila_controller_pad_row_counter	  			: out std_logic_vector(3 downto 0); 
		ila_controller_filter_iteration_complete	: out std_logic; 
		ila_controller_channel_iteration_complete	: out std_logic; 
		ila_controller_fifo_clear_counter 			: out std_logic_vector(7 downto 0); 
		ila_controller_channel_iteration_calc		: out std_logic_vector(15 downto 0); 
		ila_controller_channel_iterations_required	: out std_logic_vector(15 downto 0); 		
		ila_controller_filter_iteration_calc		: out std_logic_vector(15 downto 0); 
		ila_controller_channel_mask				: out std_logic_vector(g_dsps_used-1 downto 0); 
		ila_controller_weight_filter_size 			: out std_logic_vector(15 downto 0); 
		ila_controller_input_volume_size			: out std_logic_vector(15 downto 0);  
		ila_controller_input_volume_channels		: out std_logic_vector(15 downto 0); 
		ila_controller_weight_filter_channels		: out std_logic_vector(15 downto 0); 
		ila_controller_number_of_filters			: out std_logic_vector(15 downto 0);
		ila_controller_channels_in_set				: out std_logic_vector(7 downto 0); 
		ila_controller_stride_index 				: out std_logic_vector(15 downto 0); 
		ila_controller_empty_data_complete			: out std_logic_vector(g_dsps_used-1 downto 0); 
		
		--ILA ACCUMULATOR SIGNALS
		ila_accumulator_state					: out std_logic_vector(3 downto 0); 
		ila_accumulator_products_array_valid 				: out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
		ila_accumulator_kernel_element_counter 		: out std_logic_vector(15 downto 0); 
		ila_accumulator_delay_shift_register 		: out std_logic_vector(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-1 downto 0);
		ila_accumulator_kernel_delay_shift_register : out std_logic_vector(((4*g_adder_delay)+3)-1 downto 0); 
		ila_accumulator_acc_ready 					: out std_logic; 
		ila_accumulator_acc_complete 				: out std_logic; 
		ila_accumulator_acc_valid 					: out std_logic; 
		ila_accumulator_acc_data 					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_accumulator_column_counter 				: out std_logic_vector(31 downto 0); 
		ila_accumulator_filter_counter 				: out std_logic_vector(31 downto 0); 
		ila_accumulator_kernel_flag 				: out std_logic; 
		ila_accumulator_que_acc_data            	: out std_logic_vector(g_data_width-1 downto 0); 
		ila_accumulator_que_acc_valid 		    	: out std_logic; 
		ila_accumulator_que_fifo_din 				: out std_logic_vector(g_data_width-1 downto 0);  
		ila_accumulator_que_fifo_wr_en 				: out std_logic;  
		ila_accumulator_que_fifo_rd_en 				: out std_logic;  
		ila_accumulator_que_fifo_dout 				: out std_logic_vector(g_data_width-1 downto 0);  
		ila_accumulator_que_fifo_full 				: out std_logic;  
		ila_accumulator_que_fifo_almost_full 		: out std_logic; 
		ila_accumulator_que_fifo_empty 				: out std_logic;  
		ila_accumulator_que_fifo_almost_empty 		: out std_logic;  
		ila_accumulator_que_fifo_valid 				: out std_logic; 
		ila_accumulator_channels_allowed_counter 	: out std_logic_vector(31 downto 0); 
		ila_accumulator_filter_size_counter			: out std_logic_vector(31 downto 0); 
		ila_accumulator_channels_filt_counter 		: out std_logic_vector(15 downto 0); 
		
		--ILA ACC RELAY SIGNALS 
		ila_acc_relay_state							: out std_logic_vector(3 downto 0); 
		ila_acc_relay_complete 				: out std_logic; 
		ila_acc_relay_volume_processed 					: out std_logic; 
		ila_acc_relay_iteration_complete					: out std_logic; 	
		ila_acc_relay_filter_counter 				: out std_logic_vector(15 downto 0); 
		ila_acc_relay_output_pixel_counter			: out std_logic_vector(7 downto 0);
		ila_acc_relay_volume_row_counter			: out std_logic_vector(7 downto 0); 
		ila_acc_relay_adder_counter					: out std_logic_vector(7 downto 0); 
		ila_acc_relay_addend 						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_acc_relay_augend   						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_acc_relay_sum_result 					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_acc_relay_first_channel_set_complete 	: out std_logic; 
		ila_acc_relay_volume_data 					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_acc_relay_bias_data						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_acc_relay_prev_data						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_acc_relay_iteration_counter				: out std_logic_vector(7 downto 0); 
		ila_acc_relay_bias_read 					: out std_logic; 
		ila_acc_relay_prev_read 					: out std_logic; 
		ila_acc_relay_filter_iteration_counter		: out std_logic_vector(15 downto 0); 
		ila_acc_relay_affine_en						: out std_logic; 
		
		--ILA MULTIPLIER SIGNALS
		ila_multiplier_mult_a_0						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_1						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_multiplier_mult_a_2						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_3						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_4						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_5						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_multiplier_mult_a_6						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_7						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_8						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_9						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_10					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_11					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_12					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_13					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_14					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_15					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_16					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_17					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_18					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_19					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_multiplier_mult_a_20					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_21					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_22					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_23					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_24					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_25					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_26					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_27					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_28					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_29					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_multiplier_mult_a_30					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_31					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_a_32					: out std_logic_vector(g_data_width-1 downto 0);

		ila_multiplier_mult_b_0						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_1						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_2						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_3						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_4						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_5						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_6						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_7						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_8						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_9						: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_10					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_11					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_12					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_13					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_14					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_15					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_16					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_17					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_18					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_19					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_20					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_21					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_22					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_23					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_24					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_25					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_26					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_27					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_28					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_29					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_30					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_31					: out std_logic_vector(g_data_width-1 downto 0);
		ila_multiplier_mult_b_32					: out std_logic_vector(g_data_width-1 downto 0);

		ila_products_array_0						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_1						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_2						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_3						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_4						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_5						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_6						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_products_array_7						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_products_array_8						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_9						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_10						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_11						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_12						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_13						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_14						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_15						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_16						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_17						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_18						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_19						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_20						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_21						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_22						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_23					    : out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_24						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_25						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_26						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_27						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_28						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_29					 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_30						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_31						: out std_logic_vector(g_data_width-1 downto 0);
		ila_products_array_32						: out std_logic_vector(g_data_width-1 downto 0);
		
		--ACCUMULATOR SIGNALS
		ila_layer_1_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_10 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_11 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_12 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_13 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_14 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_15 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_2_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_7 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_3_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_result_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_result_3 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_4_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_4_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_5_result 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_6_result 			: out std_logic_vector(g_data_width-1 downto 0); 


		ila_layer_1_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_10 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_11 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_12 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_13 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_14 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_15 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_2_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_7 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_3_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_reg_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_reg_3 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_4_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_4_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_5_reg				: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_6_reg 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_values_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_10 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_1_result_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_2		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_3		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_4		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_kernel_layer_1_result_5		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_2_result_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_result_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_result_2		: out std_logic_vector(g_data_width-1 downto 0);  

		ila_kernel_layer_3_result		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_1_reg_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_2		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_3		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_4		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_5		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_2_reg_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_reg_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_reg_2		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_3_reg			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_addend_shift_register_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_10 		: out std_logic_vector(g_data_width-1 downto 0)
	 
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
    dout : OUT STD_LOGIC_VECTOR(32-1 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_empty : OUT STD_LOGIC;
    valid : OUT STD_LOGIC
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
	   i_acc_fifo_almost_full	: in std_logic; 
	   o_fsm_state : out std_logic_vector(3 downto 0); 
		ila_kernel_element_counter 		: out std_logic_vector(15 downto 0); 
		ila_delay_shift_register 		: out std_logic_vector(((g_num_adder_layers*g_adder_delay)+g_num_adder_layers)-1 downto 0);
		ila_kernel_delay_shift_register : out std_logic_vector(((4*g_adder_delay)+3)-1 downto 0); 
		ila_acc_ready 					: out std_logic; 
		ila_acc_complete 				: out std_logic; 
		ila_acc_valid 					: out std_logic; 
		ila_acc_data 					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_column_counter 				: out std_logic_vector(31 downto 0); 
		ila_filter_counter 				: out std_logic_vector(31 downto 0); 
		ila_kernel_flag 				: out std_logic; 
		ila_que_acc_data            	: out std_logic_vector(g_data_width-1 downto 0); 
		ila_que_acc_valid 		    	: out std_logic; 
		ila_que_fifo_din 				: out std_logic_vector(g_data_width-1 downto 0);  
		ila_que_fifo_wr_en 				: out std_logic;  
		ila_que_fifo_rd_en 				: out std_logic;  
		ila_que_fifo_dout 				: out std_logic_vector(g_data_width-1 downto 0);  
		ila_que_fifo_full 				: out std_logic;  
		ila_que_fifo_almost_full 		: out std_logic; 
		ila_que_fifo_empty 				: out std_logic;  
		ila_que_fifo_almost_empty 		: out std_logic;  
		ila_que_fifo_valid 				: out std_logic; 
		ila_channels_allowed_counter 	: out std_logic_vector(31 downto 0); 
		ila_filter_size_counter			: out std_logic_vector(31 downto 0); 
		ila_channels_filt_counter 		: out std_logic_vector(15 downto 0); 
		
		ila_layer_1_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_10 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_11 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_12 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_13 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_14 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_result_15 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_2_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_result_7 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_3_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_result_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_result_3 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_4_result_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_4_result_1 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_5_result 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_6_result 			: out std_logic_vector(g_data_width-1 downto 0); 


		ila_layer_1_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_10 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_11 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_12 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_13 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_14 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_1_reg_15 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_2_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_2_reg_7 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_3_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_reg_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_3_reg_3 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_4_reg_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_4_reg_1 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_layer_5_reg				: out std_logic_vector(g_data_width-1 downto 0); 
		ila_layer_6_reg 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_values_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_values_10 			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_1_result_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_2		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_3		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_result_4		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_kernel_layer_1_result_5		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_2_result_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_result_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_result_2		: out std_logic_vector(g_data_width-1 downto 0);  

		ila_kernel_layer_3_result		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_1_reg_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_2		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_3		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_4		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_1_reg_5		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_2_reg_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_reg_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_layer_2_reg_2		: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_layer_3_reg			: out std_logic_vector(g_data_width-1 downto 0); 

		ila_kernel_addend_shift_register_0 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_1 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_2 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_3 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_4 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_5 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_6 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_7 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_8 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_9 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_kernel_addend_shift_register_10 		: out std_logic_vector(g_data_width-1 downto 0)
	   
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
		i_relu_en					: in std_logic; 

		o_acc_fifo_rd_en			: out std_logic; 
		o_prev_fifo_rd_en			: out std_logic; 
		o_bias_fifo_rd_en			: out std_logic; 
		o_bias_fifo_data_return		: out std_logic_vector(g_data_width-1 downto 0); 
		o_bias_fifo_data_return_en  : out std_logic; 
		o_bias_fifo_return_wr_en	: out std_logic; 

		o_conv_volume_out 			: out std_logic_vector(g_data_width-1 downto 0);
		o_conv_data_valid			: out std_logic; 
		
		o_row_complete				: out std_logic; 
		o_volume_complete			: out std_logic; 
		o_iteration_complete		: out std_logic; 
		o_fsm_state : out std_logic_vector(3 downto 0); 
		o_relu_en					: out std_logic; 
	
		ila_filter_counter 				: out std_logic_vector(15 downto 0); 
		ila_output_pixel_counter		: out std_logic_vector(7 downto 0);
		ila_volume_row_counter			: out std_logic_vector(7 downto 0); 
		ila_adder_counter				: out std_logic_vector(7 downto 0); 
		ila_addend 						: out std_logic_vector(g_data_width-1 downto 0); 
		ila_augend   					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_sum_result 					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_first_channel_set_complete 	: out std_logic; 
		ila_volume_data 				: out std_logic_vector(g_data_width-1 downto 0); 
		ila_bias_data					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_prev_data					: out std_logic_vector(g_data_width-1 downto 0); 
		ila_iteration_counter			: out std_logic_vector(7 downto 0); 
		ila_bias_read 					: out std_logic; 
		ila_prev_read 					: out std_logic; 
		ila_filter_iteration_counter	: out std_logic_vector(15 downto 0); 
		ila_affine_en					: out std_logic

		
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
       i_inbuff_valid : in STD_LOGIC;
       i_input_volume_channels : in STD_LOGIC_VECTOR(15 downto 0);
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
       i_weight_fifo_almost_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       i_weight_fifo_full : in STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
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
	   i_conv_complete					: in std_logic_vector(g_dsps_used-1 downto 0); 	
	   i_affine_complete	: in std_logic_vector(g_dsps_used-1 downto 0); 	   
       o_all_channels_processed : out STD_LOGIC;
       o_convolution_en : out STD_LOGIC;
	   o_affine_en : out std_logic; 
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
       o_volume_fifo_wr_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_new_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_prev_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_volume_recycled_data_en : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
       o_weight_data : out array_type_varx32bit(g_dsps_used-1 downto 0);
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
	   o_accumulator_en : out std_logic;
	   o_calc_params : out std_logic; 
	   o_disable_channel_n : out STD_LOGIC_VECTOR(g_dsps_used-1 downto 0); 
	   o_fsm_state : out std_logic_vector(4 downto 0); 
	   
		ila_input_volume_row_counter 	: out std_logic_vector(15 downto 0); 
		ila_volume_channel_counter		: out std_logic_vector(15 downto 0); 
		ila_weight_channel_counter		: out std_logic_vector(15 downto 0); 
		ila_more_dsps_needed			: out std_logic; 
		ila_channels_allowed 			: out std_logic_vector(7 downto 0);
		ila_filter_row_counter 			: out std_logic_vector(15 downto 0);
		ila_filter_column_counter 		: out std_logic_vector(15 downto 0);
		ila_filter_counter				: out std_logic_vector(15 downto 0);
		ila_volume_row_counter 			: out std_logic_vector(15 downto 0);
		ila_volume_column_counter 		: out std_logic_vector(15 downto 0);
		ila_volume_index_counter		: out std_logic_vector(15 downto 0); 
		ila_weight_index_counter 		: out std_logic_vector(15 downto 0); 
		ila_padded_volume_row_size 		: out std_logic_vector(15 downto 0);
		ila_padded_volume_column_size 	: out std_logic_vector(15 downto 0);
		ila_volume_rows_processed 		: out std_logic_vector(15 downto 0); 
		ila_element_counter				: out std_logic_vector(15 downto 0); 
		ila_pad_counter					: out std_logic_vector(3 downto 0);
		ila_channels_processed			: out std_logic_vector(15 downto 0); 
		ila_pad_8bit					: out std_logic_vector(7 downto 0);	
		ila_pad_10bit					: out std_logic_vector(9 downto 0); 
		ila_pad_16bit					: out std_logic_vector(15 downto 0); 
		ila_input_volume_size_10bit 	: out std_logic_vector(9 downto 0);   
		ila_volume_row					: out std_logic_vector(15 downto 0);	  
		ila_iteration_calc				: out std_logic_vector(15 downto 0);   
		ila_iteration_counter			: out std_logic_vector(15 downto 0);
		ila_filter_iteration_counter    : out std_logic_vector(15 downto 0); 
		ila_channel_iteration_counter  	: out std_logic_vector(15 downto 0);  
		ila_stride_counter				: out std_logic_vector(3 downto 0);  
		ila_pad_row_counter	  			: out std_logic_vector(3 downto 0); 
		ila_filter_iteration_complete	: out std_logic; 
		ila_channel_iteration_complete	: out std_logic; 
		ila_fifo_clear_counter 			: out std_logic_vector(7 downto 0); 
		ila_channel_iteration_calc		: out std_logic_vector(15 downto 0); 
		ila_channel_iterations_required	: out std_logic_vector(15 downto 0); 		
		ila_filter_iteration_calc		: out std_logic_vector(15 downto 0); 
		ila_channel_mask				: out std_logic_vector(g_dsps_used-1 downto 0); 
		ila_weight_filter_size 			: out std_logic_vector(15 downto 0); 
		ila_input_volume_size			: out std_logic_vector(15 downto 0);  
		ila_input_volume_channels		: out std_logic_vector(15 downto 0); 
		ila_weight_filter_channels		: out std_logic_vector(15 downto 0); 
		ila_number_of_filters			: out std_logic_vector(15 downto 0);
		ila_channels_in_set				: out std_logic_vector(7 downto 0); 
		ila_stride_index 				: out std_logic_vector(15 downto 0); 
		ila_empty_data_complete			: out std_logic_vector(g_dsps_used-1 downto 0)
	   
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
       i_fifo_we : in STD_LOGIC;
       i_full : in STD_LOGIC;
       i_new_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_new_data_en : in STD_LOGIC;
       i_prev_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_prev_data_en : in STD_LOGIC;
       i_prev_data_wr_en : in STD_LOGIC;
       i_recycled_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_recycled_data_en : in STD_LOGIC;
       i_recycled_data_wr_en : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_fifo_almost_full : out STD_LOGIC;
       o_fifo_full : out STD_LOGIC;
       o_get_volume_row : out STD_LOGIC;
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
       --i_padded_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
       i_reset_n : in STD_LOGIC;
       i_stop_stack_en : in STD_LOGIC;
       i_stride : in STD_LOGIC_VECTOR(3 downto 0);
       i_volume_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
	   i_empty_data_en : in std_logic;
	   i_filters_in_set : in std_logic_vector(15 downto 0); 
	   i_pad : in STD_LOGIC_VECTOR(3 downto 0);
	   i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
	   i_calc_params : in std_logic; 
       o_conv_complete : out STD_LOGIC;
	   o_affine_complete: out std_logic; 
	   o_filter_complete : out std_logic; 
       o_data_mult : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_data_return : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_data_return_wr_en : out STD_LOGIC;
       o_data_valid : out STD_LOGIC;
       o_rd_en : out STD_LOGIC;
       o_rows_complete : out STD_LOGIC;
       o_sending : out STD_LOGIC;
       o_snake_fill_complete : out STD_LOGIC; 
	   o_empty_data_complete : out std_logic; 
	   o_volume_router_ready : out std_logic; 
	   o_fsm_state : out std_logic_vector(3 downto 0); 
		ila_element_counter 		: out std_logic_vector(9 downto 0);    
		ila_filter_counter 			: out std_logic_vector(15 downto 0);   
		ila_column_counter			: out std_logic_vector(7 downto 0);   
		ila_delay_shift_register 	: out std_logic_vector(g_mult_delay-1 downto 0);  
		ila_pad_16bit				: out std_logic_vector(15 downto 0);  
		ila_padded_volume_size		: out std_logic_vector(15 downto 0); 
		ila_empty_done				: out std_logic
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
       i_reset_n : in STD_LOGIC;
       i_volume_ready : in STD_LOGIC;
       i_weight_filter_size : in STD_LOGIC_VECTOR(3 downto 0);
	   i_acc_ready	: in std_logic; 
	   i_filter_complete : in std_logic; 
       o_data_valid : out STD_LOGIC;
       o_filters_loaded : out STD_LOGIC;
       o_rd_en : out STD_LOGIC;
       o_recycle_filter_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_recycle_filter_en : out STD_LOGIC;
       o_reset_weight_fifo_n : out STD_LOGIC;
       o_weights_mult : out STD_LOGIC_VECTOR(g_data_width-1 downto 0); 
	   o_weight_router_ready : out std_logic; 
	   o_fsm_state : out std_logic_vector(3 downto 0); 
	   	ila_filter_element_counter 	: out std_logic_vector(3 downto 0); 
		ila_delay_shift_register : out std_logic_vector(g_mult_delay-1 downto 0)
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----
--ACCUMULATOR_FIFO
signal acc_fifo_almost_empty 				: STD_LOGIC;
signal acc_fifo_almost_full 				: STD_LOGIC;
signal acc_fifo_empty 						: STD_LOGIC;
signal acc_fifo_full 						: STD_LOGIC;
signal acc_fifo_rd_en 						: STD_LOGIC;
signal acc_fifo_valid 						: STD_LOGIC;
signal acc_fifo_wr_en						: STD_LOGIC;
signal accu_fifo_input 						: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_fifo_din 						: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal acc_fifo_dout 						: STD_LOGIC_VECTOR(g_data_width-1 downto 0);

--CHANNEL UNIT VOLUME FIFO
signal volume_fifo_almost_empty 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_almost_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_dout 					: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_fifo_empty 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_full 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_input 					: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_fifo_rd_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_valid 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_fifo_wr_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

--CHANNEL UNIT WEIGHT FIFO 
signal weight_fifo_almost_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_full 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_input 					: array_type_varx32bit(g_dsps_used-1 downto 0);
signal weight_fifo_wr_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_dout 					: array_type_varx32bit(g_dsps_used-1 downto 0);
signal weight_fifo_empty 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_rd_en 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_valid 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_fifo_almost_empty				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_rst 							: STD_LOGIC;

--CHANNEL UNIT VOLUME MUX 
signal volume_mux_prev_data 				: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_mux_prev_data_wr_en 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_mux_data 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_mux_recycled_data				: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_mux_new_data_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_mux_prev_data_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_mux_recycled_data_wr_en 		: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_mux_recycled_data_en 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_wr_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_almost_full 		: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_stack_fifo_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal get_volume_row 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

--CHANNEL UNIT ROUTERS
signal router_disable_channel_n 			: std_logic_vector(g_dsps_used-1 downto 0);  
signal router_convolution_en 				: STD_LOGIC;
signal router_affine_en 					: STD_LOGIC;
signal router_acc_ready 					: STD_LOGIC;
signal router_filter_kernal_loaded 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal router_conv_complete 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal router_affine_complete				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal router_filter_complete				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal router_volume_ready 					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);


--CHANNEL UNIT VOLUME ROUTER
signal volume_router_ready					: std_logic_vector(g_dsps_used-1 downto 0); 
signal volume_router_padded_volume_size 	: STD_LOGIC_VECTOR(7 downto 0);
signal volume_router_stop_stack_en 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_router_calc_params			: std_logic; 
signal volume_router_data_return 			: array_type_varx32bit(g_dsps_used-1 downto 0);
signal volume_router_data_return_wr_en 		: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_router_data_valid 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_router_loaded_rows_processed 	: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_router_snake_fill_complete 	: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal volume_router_empty_data_en			: std_logic_vector(g_dsps_used-1 downto 0); 
signal volume_router_empty_data_complete 	: std_logic_vector(g_dsps_used-1 downto 0); 

--CHANNEL UNIT WEIGHT ROUTER
signal weight_router_ready						: std_logic_vector(g_dsps_used-1 downto 0); 
signal weight_router_filter_data_return 		: array_type_varx32bit(g_dsps_used-1 downto 0); 
signal weight_router_filter_data_return_wr_en 	: std_logic_vector(g_dsps_used-1 downto 0);  
signal weight_router_clear_weights 				: STD_LOGIC;
signal weight_router_data_valid 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

--CHANNEL UNIT WEIGHT MUX
signal weight_mux_recycle_filter_data 		: array_type_varx32bit(g_dsps_used-1 downto 0);
signal weight_mux_recycle_filter_data_wr_en : STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal prev_weight_data 					: STD_LOGIC_VECTOR(g_data_width-1 downto 0) := (others => '0');
signal weight_mux_new_data_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_mux_prev_data_en 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_mux_recycled_data_en 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_mux_almost_full 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_mux_data 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal weight_mux_full 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_mux_wr_en  					: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal weight_mux_prev_data_wr_en 			: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
signal get_weight_row 						: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);

--BIAS DATA FIFO
signal bias_fifo_almost_empty 				: std_logic; 
signal bias_fifo_dout 						: std_logic_vector(g_data_width-1 downto 0);
signal bias_fifo_empty 						: std_logic; 
signal bias_fifo_full						: std_logic; 
signal bias_fifo_almost_full				: std_logic; 
signal bias_fifo_rd_en						: std_logic; 
signal bias_fifo_valid 						: std_logic; 
signal bias_fifo_data_return		        : std_logic_vector(g_data_width-1 downto 0);   
signal bias_fifo_data_return_en             : std_logic; 
signal bias_fifo_return_wr_en	            : std_logic; 
signal bias_fifo_din_mux					: std_logic_vector(g_data_width-1 downto 0); 
signal bias_fifo_wr_en_mux					: std_logic; 

--PREVIOUS DATA FIFO
signal prev_fifo_almost_empty 				: std_logic; 
signal prev_fifo_dout 						: std_logic_vector(g_data_width-1 downto 0);
signal prev_fifo_empty 						: std_logic; 
signal prev_fifo_rd_en						: std_logic; 
signal prev_fifo_valid 						: std_logic; 



--signal acc_valid 							: STD_LOGIC;
signal all_channels_processed 				: STD_LOGIC;
signal reset 								: STD_LOGIC;
--signal recycled_acc_data_en 				: STD_LOGIC;
--signal recycle_en 							: STD_LOGIC;
signal reset_weight_fifo_n 					: STD_LOGIC;
--signal send 								: STD_LOGIC;
--signal send_done 							: STD_LOGIC;
signal multiplicand_a 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal multiplicand_b 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal num_iterations 						: STD_LOGIC_VECTOR(7 downto 0);
signal products_array 						: array_type_varx32bit(g_dsps_used-1 downto 0);
signal products_array_valid 				: STD_LOGIC_VECTOR(g_dsps_used-1 downto 0);
--signal recycled_acc_data 					: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal operation_complete 					: std_logic;
signal more_dsps_needed					 	: std_logic; 
signal channels_allowed 					: std_logic_vector(7 downto 0); 

signal fifo_clear 							: std_logic; 
signal fifo_reset 							: std_logic; 
--signal affine_select						: std_logic; 
signal accumulator_complete : std_logic; 
signal filter_iterations_required			: std_logic_vector(15 downto 0); 
signal filters_in_set						: std_logic_vector(15 downto 0); 
signal accumulator_en						: std_logic; 
signal volume_processed 					: std_logic; 
signal iteration_complete					: std_logic; 


signal relay_state							: std_logic_vector(3 downto 0); 
signal accumulator_state					: std_logic_vector(3 downto 0); 
signal controller_state						: std_logic_vector(4 downto 0); 


type array_type_varx10bit is array(integer range <>) of std_logic_vector(9 downto 0); 
type array_type_varx8bit is array(integer range <>) of std_logic_vector(7 downto 0);
type array_type_varx4bit is array(integer range <>) of std_logic_vector(3 downto 0);  
type array_t_varx16bit is array(integer range <>) of std_logic_vector(15 downto 0);  
signal volume_router_state		: array_type_varx4bit(g_dsps_used-1 downto 0);    
signal weight_router_state		: array_type_varx4bit(g_dsps_used-1 downto 0);    
signal ila_volume_element_counter 		: array_type_varx10bit(g_dsps_used-1 downto 0);    
signal ila_volume_filter_counter 		: array_t_varx16bit(g_dsps_used-1 downto 0); 
signal ila_volume_column_counter		: array_type_varx8bit(g_dsps_used-1 downto 0);  
signal ila_volume_delay_shift_register 	: array_type_varx8bit(g_dsps_used-1 downto 0); 
signal ila_volume_pad_16bit				: array_t_varx16bit(g_dsps_used-1 downto 0); 
signal ila_volume_padded_volume_size	: array_t_varx16bit(g_dsps_used-1 downto 0); 
signal ila_volume_empty_done			: std_logic_vector(g_dsps_used-1 downto 0); 

signal ila_weight_filter_element_counter 		: array_type_varx4bit(g_dsps_used-1 downto 0);   
signal ila_weight_delay_shift_register 		: array_type_varx8bit(g_dsps_used-1 downto 0); 

begin

o_channels_allowed 					<= channels_allowed; 
o_more_dsps 						<= more_dsps_needed; 
o_acc_row_complete 					<= accumulator_complete; 
o_filter_iterations_required	  	<= filter_iterations_required; 	  
o_bias_fifo_full 					<= bias_fifo_full; 
o_bias_fifo_almost_full 			<= bias_fifo_almost_full; 
o_conv_complete 					<= and_reduce(router_conv_complete); 
o_volume_processed 					<= volume_processed; 
o_iteration_complete 				<= iteration_complete; 
o_operation_complete				<= operation_complete; 			  
  
reset 								<= not(i_reset_n);
fifo_reset 							<= fifo_clear or not(i_reset_n); 
weight_rst 							<= weight_router_clear_weights or reset or fifo_reset;
  
bias_fifo_wr_en_mux 				<= i_bias_fifo_wr_en when bias_fifo_data_return_en = '0' else	
										bias_fifo_return_wr_en; 

bias_fifo_din_mux 					<= i_bias_fifo_din when bias_fifo_data_return_en = '0' else 
										bias_fifo_data_return; 
										
										
										
--ACCUMULATOR_FIFO
ila_acc_fifo_almost_empty 				<= acc_fifo_almost_empty;
ila_acc_fifo_almost_full 				<= acc_fifo_almost_full;
ila_acc_fifo_empty 						<= acc_fifo_empty;
ila_acc_fifo_full 						<= acc_fifo_full;
ila_acc_fifo_rd_en 						<= acc_fifo_rd_en;
ila_acc_fifo_valid 						<= acc_fifo_valid;
ila_acc_fifo_wr_en						<= acc_fifo_wr_en;
ila_accu_fifo_input 					<= accu_fifo_input;
ila_acc_fifo_din 						<= acc_fifo_din;
ila_acc_fifo_dout 						<= acc_fifo_dout;

--CHANNEL UNIT VOLUME FIFO
ila_volume_fifo_din_0						<= volume_fifo_input(0); 
ila_volume_fifo_din_1						<= volume_fifo_input(1); 
ila_volume_fifo_din_2						<= volume_fifo_input(2); 
ila_volume_fifo_din_3						<= volume_fifo_input(3); 
ila_volume_fifo_din_4						<= volume_fifo_input(4); 
ila_volume_fifo_din_5						<= volume_fifo_input(5); 
ila_volume_fifo_din_6						<= volume_fifo_input(6); 
ila_volume_fifo_din_7						<= volume_fifo_input(7); 
ila_volume_fifo_din_8						<= volume_fifo_input(8); 
ila_volume_fifo_din_9						<= volume_fifo_input(9); 
ila_volume_fifo_din_10						<= volume_fifo_input(10); 
ila_volume_fifo_din_11						<= volume_fifo_input(11); 
ila_volume_fifo_din_12						<= volume_fifo_input(12); 
ila_volume_fifo_din_13						<= volume_fifo_input(13); 
ila_volume_fifo_din_14						<= volume_fifo_input(14); 
ila_volume_fifo_din_15						<= volume_fifo_input(15); 
ila_volume_fifo_din_16						<= volume_fifo_input(16); 
ila_volume_fifo_din_17						<= volume_fifo_input(17); 
ila_volume_fifo_din_18						<= volume_fifo_input(18); 
ila_volume_fifo_din_19						<= volume_fifo_input(19); 
ila_volume_fifo_din_20						<= volume_fifo_input(20); 
ila_volume_fifo_din_21						<= volume_fifo_input(21); 
ila_volume_fifo_din_22						<= volume_fifo_input(22); 
ila_volume_fifo_din_23						<= volume_fifo_input(23); 
ila_volume_fifo_din_24						<= volume_fifo_input(24); 
ila_volume_fifo_din_25						<= volume_fifo_input(25); 
ila_volume_fifo_din_26						<= volume_fifo_input(26); 
ila_volume_fifo_din_27						<= volume_fifo_input(27); 
ila_volume_fifo_din_28						<= volume_fifo_input(28); 
ila_volume_fifo_din_29						<= volume_fifo_input(29); 
ila_volume_fifo_din_30						<= volume_fifo_input(30); 
ila_volume_fifo_din_31						<= volume_fifo_input(31); 
ila_volume_fifo_din_32						<= volume_fifo_input(32); 

ila_volume_fifo_almost_empty 			<= volume_fifo_almost_empty;
ila_volume_fifo_almost_full 			<= volume_fifo_almost_full;
ila_volume_fifo_empty 					<= volume_fifo_empty;
ila_volume_fifo_full 					<= volume_fifo_full;
ila_volume_fifo_rd_en 					<= volume_fifo_rd_en;
ila_volume_fifo_valid 					<= volume_fifo_valid;
ila_volume_fifo_wr_en 					<= volume_fifo_wr_en;

--CHANNEL UNIT WEIGHT FIFO 
ila_weight_fifo_din_0						<= weight_fifo_input(0); 
ila_weight_fifo_din_1						<= weight_fifo_input(1); 
ila_weight_fifo_din_2						<= weight_fifo_input(2); 
ila_weight_fifo_din_3						<= weight_fifo_input(3); 
ila_weight_fifo_din_4						<= weight_fifo_input(4); 
ila_weight_fifo_din_5						<= weight_fifo_input(5); 
ila_weight_fifo_din_6						<= weight_fifo_input(6); 
ila_weight_fifo_din_7						<= weight_fifo_input(7); 
ila_weight_fifo_din_8						<= weight_fifo_input(8); 
ila_weight_fifo_din_9						<= weight_fifo_input(9); 
ila_weight_fifo_din_10						<= weight_fifo_input(10); 
ila_weight_fifo_din_11						<= weight_fifo_input(11); 
ila_weight_fifo_din_12						<= weight_fifo_input(12); 
ila_weight_fifo_din_13						<= weight_fifo_input(13); 
ila_weight_fifo_din_14						<= weight_fifo_input(14); 
ila_weight_fifo_din_15						<= weight_fifo_input(15); 
ila_weight_fifo_din_16						<= weight_fifo_input(16); 
ila_weight_fifo_din_17						<= weight_fifo_input(17); 
ila_weight_fifo_din_18						<= weight_fifo_input(18); 
ila_weight_fifo_din_19						<= weight_fifo_input(19); 
ila_weight_fifo_din_20						<= weight_fifo_input(20); 
ila_weight_fifo_din_21						<= weight_fifo_input(21); 
ila_weight_fifo_din_22						<= weight_fifo_input(22); 
ila_weight_fifo_din_23						<= weight_fifo_input(23); 
ila_weight_fifo_din_24						<= weight_fifo_input(24); 
ila_weight_fifo_din_25						<= weight_fifo_input(25); 
ila_weight_fifo_din_26						<= weight_fifo_input(26); 
ila_weight_fifo_din_27						<= weight_fifo_input(27); 
ila_weight_fifo_din_28						<= weight_fifo_input(28); 
ila_weight_fifo_din_29						<= weight_fifo_input(29); 
ila_weight_fifo_din_30						<= weight_fifo_input(30); 
ila_weight_fifo_din_31						<= weight_fifo_input(31); 
ila_weight_fifo_din_32						<= weight_fifo_input(32); 


ila_weight_fifo_almost_full 			<= weight_fifo_almost_full;
ila_weight_fifo_full 					<= weight_fifo_full;
ila_weight_fifo_wr_en 					<= weight_fifo_wr_en;
ila_weight_fifo_empty 					<= weight_fifo_empty;
ila_weight_fifo_rd_en 					<= weight_fifo_rd_en;
ila_weight_fifo_valid 					<= weight_fifo_valid;
ila_weight_fifo_almost_empty			<= weight_fifo_almost_empty;
ila_weight_rst 							<= weight_rst;

--CHANNEL UNIT VOLUME MUX 
ila_volume_mux_prev_data_wr_en 			<= volume_mux_prev_data_wr_en;
ila_volume_mux_new_data_en 				<= volume_mux_new_data_en;
ila_volume_mux_prev_data_en 			<= volume_mux_prev_data_en;
ila_volume_mux_recycled_data_wr_en 		<= volume_mux_recycled_data_wr_en;
ila_volume_mux_recycled_data_en 		<= volume_mux_recycled_data_en;
ila_volume_stack_fifo_wr_en 			<= volume_stack_fifo_wr_en;
ila_volume_stack_fifo_almost_full 		<= volume_stack_fifo_almost_full;
ila_volume_stack_fifo_full 				<= volume_stack_fifo_full ;
ila_get_volume_row 						<= get_volume_row;

--CHANNEL UNIT ROUTERS
ila_router_disable_channel_n 			<= router_disable_channel_n;
ila_router_convolution_en 				<= router_convolution_en;
ila_router_affine_en 					<= router_affine_en;
ila_router_acc_ready 					<= router_acc_ready;
ila_router_filter_kernal_loaded 		<= router_filter_kernal_loaded;
ila_router_conv_complete 				<= router_conv_complete;
ila_router_affine_complete				<= router_affine_complete;
ila_router_volume_ready 				<= router_volume_ready;


--CHANNEL UNIT VOLUME ROUTER
ila_volume_router_ready					<= volume_router_ready;
--ila_volume_router_padded_volume_size 	<= volume_router_padded_volume_size;
ila_volume_router_stop_stack_en 		<= volume_router_stop_stack_en;
ila_volume_router_calc_params			<= volume_router_calc_params;
ila_volume_router_data_return_wr_en 	<= volume_router_data_return_wr_en;
ila_volume_router_data_valid 			<= volume_router_data_valid;
ila_volume_router_loaded_rows_processed <= volume_router_loaded_rows_processed;
ila_volume_router_snake_fill_complete 	<= volume_router_snake_fill_complete;
ila_volume_router_empty_data_en			<= volume_router_empty_data_en;
ila_volume_router_empty_data_complete 	<= volume_router_empty_data_complete;

ila_volume_router_element_counter 		<= ila_volume_element_counter(0);    
ila_volume_router_filter_counter 		<= ila_volume_filter_counter(0); 
ila_volume_router_column_counter 		<= ila_volume_column_counter(0);  
ila_volume_router_delay_shift_register 	<= ila_volume_delay_shift_register(0);  
ila_volume_router_pad_16bit 			<= ila_volume_pad_16bit(0); 
ila_volume_router_padded_volume_size 	<= ila_volume_padded_volume_size(0);  
ila_volume_router_empty_done 			<= ila_volume_empty_done(0); 



--CHANNEL UNIT WEIGHT ROUTER
ila_weight_router_ready						<= weight_router_ready;
ila_weight_router_filter_data_return_wr_en 	<= weight_router_filter_data_return_wr_en;
ila_weight_router_clear_weights 			<= weight_router_clear_weights;
ila_weight_router_data_valid 				<= weight_router_data_valid;

ila_weight_router_filter_element_counter 	<= ila_weight_filter_element_counter(0);    
ila_weight_router_delay_shift_register 		<= ila_weight_delay_shift_register(0);  


--CHANNEL UNIT WEIGHT MUX
ila_weight_mux_recycle_filter_data_wr_en <= weight_mux_recycle_filter_data_wr_en;
ila_prev_weight_data 					<= prev_weight_data;
ila_weight_mux_new_data_en 				<= weight_mux_new_data_en;
ila_weight_mux_prev_data_en 			<= weight_mux_prev_data_en;
ila_weight_mux_recycled_data_en 		<= weight_mux_recycled_data_en;
ila_weight_mux_almost_full 				<= weight_mux_almost_full ;
ila_weight_mux_full 					<= weight_mux_full;
ila_weight_mux_wr_en  					<= weight_mux_wr_en;
ila_weight_mux_prev_data_wr_en 			<= weight_mux_prev_data_wr_en;
ila_get_weight_row 						<= get_weight_row;

--BIAS DATA FIFO
ila_bias_fifo_almost_empty 				<= bias_fifo_almost_empty;
ila_bias_fifo_dout 						<= bias_fifo_dout;
ila_bias_fifo_empty 					<= bias_fifo_empty;
ila_bias_fifo_full						<= bias_fifo_full;
ila_bias_fifo_almost_full				<= bias_fifo_almost_full;
ila_bias_fifo_rd_en						<= bias_fifo_rd_en;
ila_bias_fifo_valid 					<= bias_fifo_valid;
ila_bias_fifo_data_return		        <= bias_fifo_data_return;
ila_bias_fifo_data_return_en            <= bias_fifo_data_return_en;
ila_bias_fifo_return_wr_en	            <= bias_fifo_return_wr_en;
ila_bias_fifo_din_mux					<= bias_fifo_din_mux;
ila_bias_fifo_wr_en_mux					<= bias_fifo_wr_en_mux;

--PREVIOUS DATA FIFO
ila_prev_fifo_almost_empty 				<= prev_fifo_almost_empty;
ila_prev_fifo_dout 						<= prev_fifo_dout;
ila_prev_fifo_empty 					<= prev_fifo_empty;
ila_prev_fifo_rd_en						<= prev_fifo_rd_en;
ila_prev_fifo_valid 					<= prev_fifo_valid;


--MULTIPLIER
ila_multiplier_mult_a_0						<= multiplicand_a(0); 
ila_multiplier_mult_a_1						<= multiplicand_a(1); 
ila_multiplier_mult_a_2						<= multiplicand_a(2); 
ila_multiplier_mult_a_3						<= multiplicand_a(3); 
ila_multiplier_mult_a_4						<= multiplicand_a(4); 
ila_multiplier_mult_a_5						<= multiplicand_a(5); 
ila_multiplier_mult_a_6						<= multiplicand_a(6); 
ila_multiplier_mult_a_7						<= multiplicand_a(7); 
ila_multiplier_mult_a_8						<= multiplicand_a(8); 
ila_multiplier_mult_a_9						<= multiplicand_a(9); 
ila_multiplier_mult_a_10						<= multiplicand_a(10); 
ila_multiplier_mult_a_11						<= multiplicand_a(11); 
ila_multiplier_mult_a_12						<= multiplicand_a(12); 
ila_multiplier_mult_a_13						<= multiplicand_a(13); 
ila_multiplier_mult_a_14						<= multiplicand_a(14); 
ila_multiplier_mult_a_15						<= multiplicand_a(15); 
ila_multiplier_mult_a_16						<= multiplicand_a(16); 
ila_multiplier_mult_a_17						<= multiplicand_a(17); 
ila_multiplier_mult_a_18						<= multiplicand_a(18); 
ila_multiplier_mult_a_19						<= multiplicand_a(19); 
ila_multiplier_mult_a_20						<= multiplicand_a(20); 
ila_multiplier_mult_a_21						<= multiplicand_a(21); 
ila_multiplier_mult_a_22						<= multiplicand_a(22); 
ila_multiplier_mult_a_23						<= multiplicand_a(23); 
ila_multiplier_mult_a_24						<= multiplicand_a(24); 
ila_multiplier_mult_a_25						<= multiplicand_a(25); 
ila_multiplier_mult_a_26						<= multiplicand_a(26); 
ila_multiplier_mult_a_27						<= multiplicand_a(27); 
ila_multiplier_mult_a_28						<= multiplicand_a(28); 
ila_multiplier_mult_a_29						<= multiplicand_a(29); 
ila_multiplier_mult_a_30						<= multiplicand_a(30); 
ila_multiplier_mult_a_31						<= multiplicand_a(31); 
ila_multiplier_mult_a_32						<= multiplicand_a(32); 

ila_multiplier_mult_b_0						<= multiplicand_b(0); 
ila_multiplier_mult_b_1						<= multiplicand_b(1); 
ila_multiplier_mult_b_2						<= multiplicand_b(2); 
ila_multiplier_mult_b_3						<= multiplicand_b(3); 
ila_multiplier_mult_b_4						<= multiplicand_b(4); 
ila_multiplier_mult_b_5						<= multiplicand_b(5); 
ila_multiplier_mult_b_6						<= multiplicand_b(6); 
ila_multiplier_mult_b_7						<= multiplicand_b(7); 
ila_multiplier_mult_b_8						<= multiplicand_b(8); 
ila_multiplier_mult_b_9						<= multiplicand_b(9); 
ila_multiplier_mult_b_10						<= multiplicand_b(10); 
ila_multiplier_mult_b_11						<= multiplicand_b(11); 
ila_multiplier_mult_b_12						<= multiplicand_b(12); 
ila_multiplier_mult_b_13						<= multiplicand_b(13); 
ila_multiplier_mult_b_14						<= multiplicand_b(14); 
ila_multiplier_mult_b_15						<= multiplicand_b(15); 
ila_multiplier_mult_b_16						<= multiplicand_b(16); 
ila_multiplier_mult_b_17						<= multiplicand_b(17); 
ila_multiplier_mult_b_18						<= multiplicand_b(18); 
ila_multiplier_mult_b_19						<= multiplicand_b(19); 
ila_multiplier_mult_b_20						<= multiplicand_b(20); 
ila_multiplier_mult_b_21						<= multiplicand_b(21); 
ila_multiplier_mult_b_22						<= multiplicand_b(22); 
ila_multiplier_mult_b_23						<= multiplicand_b(23); 
ila_multiplier_mult_b_24						<= multiplicand_b(24); 
ila_multiplier_mult_b_25						<= multiplicand_b(25); 
ila_multiplier_mult_b_26						<= multiplicand_b(26); 
ila_multiplier_mult_b_27						<= multiplicand_b(27); 
ila_multiplier_mult_b_28						<= multiplicand_b(28); 
ila_multiplier_mult_b_29						<= multiplicand_b(29); 
ila_multiplier_mult_b_30						<= multiplicand_b(30); 
ila_multiplier_mult_b_31						<= multiplicand_b(31); 
ila_multiplier_mult_b_32						<= multiplicand_b(32); 

ila_products_array_0						<= products_array(0); 
ila_products_array_1						<= products_array(1); 
ila_products_array_2						<= products_array(2); 
ila_products_array_3						<= products_array(3); 
ila_products_array_4						<= products_array(4); 
ila_products_array_5						<= products_array(5); 
ila_products_array_6						<= products_array(6); 
ila_products_array_7						<= products_array(7); 
ila_products_array_8						<= products_array(8); 
ila_products_array_9						<= products_array(9); 
ila_products_array_10						<= products_array(10); 
ila_products_array_11						<= products_array(11); 
ila_products_array_12						<= products_array(12); 
ila_products_array_13						<= products_array(13); 
ila_products_array_14						<= products_array(14); 
ila_products_array_15						<= products_array(15); 
ila_products_array_16						<= products_array(16); 
ila_products_array_17						<= products_array(17); 
ila_products_array_18						<= products_array(18); 
ila_products_array_19						<= products_array(19); 
ila_products_array_20						<= products_array(20); 
ila_products_array_21						<= products_array(21); 
ila_products_array_22						<= products_array(22); 
ila_products_array_23						<= products_array(23); 
ila_products_array_24						<= products_array(24); 
ila_products_array_25						<= products_array(25); 
ila_products_array_26						<= products_array(26); 
ila_products_array_27						<= products_array(27); 
ila_products_array_28						<= products_array(28); 
ila_products_array_29						<= products_array(29); 
ila_products_array_30						<= products_array(30); 
ila_products_array_31						<= products_array(31); 
ila_products_array_32						<= products_array(32); 

--ila_acc_valid 							<= acc_valid;
ila_controller_all_channels_processed 				<= all_channels_processed;
ila_reset 								<= reset;
--ila_recycled_acc_data_en 				<= recycled_acc_data_en;
--ila_recycle_en 							<= recycle_en;
ila_reset_weight_fifo_n 				<= reset_weight_fifo_n;
--ila_send 								<= send;
--ila_send_done 							<= send_done; 
ila_controller_num_iterations 						<= num_iterations;
ila_accumulator_products_array_valid 				<= products_array_valid;
--ila_recycled_acc_data 					<= recycled_acc_data;
ila_controller_operation_complete 					<= operation_complete;
ila_controller_more_dsps_needed					<= more_dsps_needed;
ila_controller_channels_allowed 					<= channels_allowed;

ila_controller_fifo_clear 							<= fifo_clear;
ila_controller_fifo_reset 							<= fifo_reset;
ila_acc_relay_complete 				<= accumulator_complete;
ila_controller_filter_iterations_required			<= filter_iterations_required;
ila_controller_filters_in_set						<= filters_in_set;
ila_controller_accumulator_en						<= accumulator_en;
ila_acc_relay_volume_processed 					<= volume_processed;
ila_acc_relay_iteration_complete					<= iteration_complete;							
										
										
ila_acc_relay_state							<= relay_state; 
ila_accumulator_state					<= accumulator_state; 
ila_controller_state					<= controller_state; 
ila_volume_router_state					<= volume_router_state(0); 
ila_weight_router_state					<= weight_router_state(0);
										
			
										
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
       rst 					=> reset,
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
       rd_clk 				=> i_clk,
       rd_en 				=> prev_fifo_rd_en,
       rst 					=> reset,
       valid 				=> prev_fifo_valid,
       wr_clk 				=> i_clk,
       wr_en 				=> i_prev_fifo_wr_en
  );

  
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
		i_relu_en					=> i_relu_en, 
        o_conv_data_valid 			=> o_conv_data_valid,
        o_conv_volume_out 			=> o_conv_volume_out,
        o_acc_fifo_rd_en			=> acc_fifo_rd_en, 
		o_prev_fifo_rd_en			=> prev_fifo_rd_en, 
		o_bias_fifo_rd_en			=> bias_fifo_rd_en, 
		o_bias_fifo_data_return		=> bias_fifo_data_return,  
		o_bias_fifo_data_return_en  => bias_fifo_data_return_en, 
		o_bias_fifo_return_wr_en	=> bias_fifo_return_wr_en, 
		o_row_complete				=> accumulator_complete, 
		o_volume_complete			=> volume_processed, 
		o_iteration_complete		=> iteration_complete, 
		o_fsm_state 				=> relay_state, 
		o_relu_en					=> o_relu_en, 
		ila_filter_counter 				=> ila_acc_relay_filter_counter,
		ila_output_pixel_counter		=> ila_acc_relay_output_pixel_counter,
		ila_volume_row_counter			=> ila_acc_relay_volume_row_counter,
		ila_adder_counter				=> ila_acc_relay_adder_counter,
		ila_addend 						=> ila_acc_relay_addend,
		ila_augend   					=> ila_acc_relay_augend,
		ila_sum_result 					=> ila_acc_relay_sum_result,
		ila_first_channel_set_complete  => ila_acc_relay_first_channel_set_complete,
		ila_volume_data 				=> ila_acc_relay_volume_data,
		ila_bias_data					=> ila_acc_relay_bias_data,
		ila_prev_data					=> ila_acc_relay_prev_data,
		ila_iteration_counter			=> ila_acc_relay_iteration_counter,
		ila_bias_read 					=> ila_acc_relay_bias_read,
		ila_prev_read 					=> ila_acc_relay_prev_read,
		ila_filter_iteration_counter	=> ila_acc_relay_filter_iteration_counter,
		ila_affine_en					=> ila_acc_relay_affine_en

  );
  
  
ACCUMULATOR_FIFO : weight_fifo_2
  port map(
       almost_empty 		=> acc_fifo_almost_empty,
       almost_full 			=> acc_fifo_almost_full,
       din 					=> acc_fifo_din,
       dout 				=> acc_fifo_dout,
       empty 				=> acc_fifo_empty,
       full 				=> acc_fifo_full,
       rd_clk 				=> i_clk,
       rd_en 				=> acc_fifo_rd_en,
       rst 					=> reset,
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
       i_clk 							=> i_clk,
       i_enable 						=> accumulator_en,
       i_filter_acc_ready 				=> '1',
       i_filter_size 					=> i_weight_filter_size,
       i_products_array 				=> products_array,
       i_products_array_valid 			=> products_array_valid,
       i_reset_n 						=> i_reset_n,
	   i_num_filters 					=> i_number_of_filters,
	   i_output_volume_size 			=> i_output_volume_size,
	   i_channels_allowed 				=> channels_allowed,
	   i_ch_al_filt             		=> i_ch_al_filt,
       o_acc_data 						=> acc_fifo_din,
       o_acc_ready 						=> router_acc_ready,
       o_acc_valid 						=> acc_fifo_wr_en, 
	   i_acc_fifo_empty					=> acc_fifo_empty, 
	   i_acc_fifo_almost_empty  		=> acc_fifo_almost_empty, 
	   i_acc_fifo_full					=> acc_fifo_full, 
	   i_acc_fifo_almost_full			=> acc_fifo_almost_full, 
	   o_fsm_state			 			=> accumulator_state, 
		ila_kernel_element_counter 		=> ila_accumulator_kernel_element_counter,
		ila_delay_shift_register 		=> ila_accumulator_delay_shift_register,
		ila_kernel_delay_shift_register => ila_accumulator_kernel_delay_shift_register,
		ila_acc_ready 					=> ila_accumulator_acc_ready,
		ila_acc_complete 				=> ila_accumulator_acc_complete,
		ila_acc_valid 					=> ila_accumulator_acc_valid,
		ila_acc_data 					=> ila_accumulator_acc_data,
		ila_column_counter 				=> ila_accumulator_column_counter,
		ila_filter_counter 				=> ila_accumulator_filter_counter,
		ila_kernel_flag 				=> ila_accumulator_kernel_flag,
		ila_que_acc_data            	=> ila_accumulator_que_acc_data,
		ila_que_acc_valid 		    	=> ila_accumulator_que_acc_valid,
		ila_que_fifo_din 				=> ila_accumulator_que_fifo_din,
		ila_que_fifo_wr_en 				=> ila_accumulator_que_fifo_wr_en,
		ila_que_fifo_rd_en 				=> ila_accumulator_que_fifo_rd_en,
		ila_que_fifo_dout 				=> ila_accumulator_que_fifo_dout,
		ila_que_fifo_full 				=> ila_accumulator_que_fifo_full,
		ila_que_fifo_almost_full 		=> ila_accumulator_que_fifo_almost_full,
		ila_que_fifo_empty 				=> ila_accumulator_que_fifo_empty,
		ila_que_fifo_almost_empty 		=> ila_accumulator_que_fifo_almost_empty,
		ila_que_fifo_valid 				=> ila_accumulator_que_fifo_valid,
		ila_channels_allowed_counter 	=> ila_accumulator_channels_allowed_counter,
		ila_filter_size_counter			=> ila_accumulator_filter_size_counter,
		ila_channels_filt_counter 		=> ila_accumulator_channels_filt_counter, 
		
		ila_layer_1_result_0 			=> ila_layer_1_result_0,  
		ila_layer_1_result_1 			=> ila_layer_1_result_1, 
		ila_layer_1_result_2 			=> ila_layer_1_result_2, 
		ila_layer_1_result_3 			=> ila_layer_1_result_3,
		ila_layer_1_result_4 			=> ila_layer_1_result_4,
		ila_layer_1_result_5 			=> ila_layer_1_result_5,
		ila_layer_1_result_6 			=> ila_layer_1_result_6,
		ila_layer_1_result_7 			=> ila_layer_1_result_7,
		ila_layer_1_result_8 			=> ila_layer_1_result_8,
		ila_layer_1_result_9 			=> ila_layer_1_result_9,
		ila_layer_1_result_10 			=> ila_layer_1_result_10,
		ila_layer_1_result_11 			=> ila_layer_1_result_11,
		ila_layer_1_result_12 			=> ila_layer_1_result_12,
		ila_layer_1_result_13 			=> ila_layer_1_result_13,
		ila_layer_1_result_14 			=> ila_layer_1_result_14,
		ila_layer_1_result_15 			=> ila_layer_1_result_15,

		ila_layer_2_result_0 			=> ila_layer_2_result_0,
		ila_layer_2_result_1 			=> ila_layer_2_result_1,
		ila_layer_2_result_2 			=> ila_layer_2_result_2,
		ila_layer_2_result_3 			=> ila_layer_2_result_3,
		ila_layer_2_result_4 			=> ila_layer_2_result_4,
		ila_layer_2_result_5 			=> ila_layer_2_result_5,
		ila_layer_2_result_6 			=> ila_layer_2_result_6,
		ila_layer_2_result_7 			=> ila_layer_2_result_7,

		ila_layer_3_result_0 			=> ila_layer_3_result_0,
		ila_layer_3_result_1 			=> ila_layer_3_result_1,
		ila_layer_3_result_2 			=> ila_layer_3_result_2,
		ila_layer_3_result_3 			=> ila_layer_3_result_3,

		ila_layer_4_result_0 			=> ila_layer_4_result_0,
		ila_layer_4_result_1 			=> ila_layer_4_result_1,

		ila_layer_5_result 			=> ila_layer_5_result,
		ila_layer_6_result 			=> ila_layer_6_result,


		ila_layer_1_reg_0 			=> ila_layer_1_reg_0,
		ila_layer_1_reg_1 			=> ila_layer_1_reg_1,
		ila_layer_1_reg_2 			=> ila_layer_1_reg_2,
		ila_layer_1_reg_3 			=> ila_layer_1_reg_3,
		ila_layer_1_reg_4 			=> ila_layer_1_reg_4,
		ila_layer_1_reg_5 			=> ila_layer_1_reg_5,
		ila_layer_1_reg_6 			=> ila_layer_1_reg_6,
		ila_layer_1_reg_7 			=> ila_layer_1_reg_7,
		ila_layer_1_reg_8 			=> ila_layer_1_reg_8, 
		ila_layer_1_reg_9 			=> ila_layer_1_reg_9,
		ila_layer_1_reg_10 			=> ila_layer_1_reg_10,
		ila_layer_1_reg_11 			=> ila_layer_1_reg_11,
		ila_layer_1_reg_12 			=> ila_layer_1_reg_12,
		ila_layer_1_reg_13 			=> ila_layer_1_reg_13,
		ila_layer_1_reg_14 			=> ila_layer_1_reg_14,
		ila_layer_1_reg_15 			=> ila_layer_1_reg_15, 

		ila_layer_2_reg_0 			=> ila_layer_2_reg_0,
		ila_layer_2_reg_1 			=> ila_layer_2_reg_1,
		ila_layer_2_reg_2 			=> ila_layer_2_reg_2,
		ila_layer_2_reg_3 			=> ila_layer_2_reg_3,
		ila_layer_2_reg_4 			=> ila_layer_2_reg_4,
		ila_layer_2_reg_5 			=> ila_layer_2_reg_5,
		ila_layer_2_reg_6 			=> ila_layer_2_reg_6,
		ila_layer_2_reg_7 			=> ila_layer_2_reg_7,

		ila_layer_3_reg_0 			=> ila_layer_3_reg_0,
		ila_layer_3_reg_1 			=> ila_layer_3_reg_1,
		ila_layer_3_reg_2 			=> ila_layer_3_reg_2,
		ila_layer_3_reg_3 			=> ila_layer_3_reg_3,

		ila_layer_4_reg_0 			=> ila_layer_4_reg_0,
		ila_layer_4_reg_1 			=> ila_layer_4_reg_1, 

		ila_layer_5_reg				=> ila_layer_5_reg,
		ila_layer_6_reg 			=> ila_layer_6_reg,

		ila_kernel_values_0 			=> ila_kernel_values_0,
		ila_kernel_values_1 			=> ila_kernel_values_1, 
		ila_kernel_values_2 			=> ila_kernel_values_2,
		ila_kernel_values_3 			=> ila_kernel_values_3,
		ila_kernel_values_4 			=> ila_kernel_values_4,
		ila_kernel_values_5 			=> ila_kernel_values_5,
		ila_kernel_values_6 			=> ila_kernel_values_6, 
		ila_kernel_values_7 			=> ila_kernel_values_7,
		ila_kernel_values_8 			=> ila_kernel_values_8, 
		ila_kernel_values_9 			=> ila_kernel_values_9,
		ila_kernel_values_10 			=> ila_kernel_values_10,

		ila_kernel_layer_1_result_0		=> ila_kernel_layer_1_result_0,
		ila_kernel_layer_1_result_1		=> ila_kernel_layer_1_result_1,
		ila_kernel_layer_1_result_2		=> ila_kernel_layer_1_result_2,
		ila_kernel_layer_1_result_3		=> ila_kernel_layer_1_result_3, 
		ila_kernel_layer_1_result_4		=> ila_kernel_layer_1_result_4,  
		ila_kernel_layer_1_result_5		=> ila_kernel_layer_1_result_5,

		ila_kernel_layer_2_result_0		=> ila_kernel_layer_2_result_0,
		ila_kernel_layer_2_result_1		=> ila_kernel_layer_2_result_1,
		ila_kernel_layer_2_result_2		=> ila_kernel_layer_2_result_2,

		ila_kernel_layer_3_result		=> ila_kernel_layer_3_result,

		ila_kernel_layer_1_reg_0		=> ila_kernel_layer_1_reg_0,
		ila_kernel_layer_1_reg_1		=> ila_kernel_layer_1_reg_1, 
		ila_kernel_layer_1_reg_2		=> ila_kernel_layer_1_reg_2, 
		ila_kernel_layer_1_reg_3		=> ila_kernel_layer_1_reg_3,
		ila_kernel_layer_1_reg_4		=> ila_kernel_layer_1_reg_4, 
		ila_kernel_layer_1_reg_5		=> ila_kernel_layer_1_reg_5,

		ila_kernel_layer_2_reg_0		=> ila_kernel_layer_2_reg_0,
		ila_kernel_layer_2_reg_1		=> ila_kernel_layer_2_reg_1,
		ila_kernel_layer_2_reg_2		=> ila_kernel_layer_2_reg_2,

		ila_kernel_layer_3_reg			=> ila_kernel_layer_3_reg,

		ila_kernel_addend_shift_register_0 			=> ila_kernel_addend_shift_register_0, 
		ila_kernel_addend_shift_register_1 			=> ila_kernel_addend_shift_register_1,
		ila_kernel_addend_shift_register_2 			=> ila_kernel_addend_shift_register_2,
		ila_kernel_addend_shift_register_3 			=> ila_kernel_addend_shift_register_3,
		ila_kernel_addend_shift_register_4 			=> ila_kernel_addend_shift_register_4,
		ila_kernel_addend_shift_register_5 			=> ila_kernel_addend_shift_register_5, 
		ila_kernel_addend_shift_register_6 			=> ila_kernel_addend_shift_register_6,
		ila_kernel_addend_shift_register_7 			=> ila_kernel_addend_shift_register_7,
		ila_kernel_addend_shift_register_8 			=> ila_kernel_addend_shift_register_8,
		ila_kernel_addend_shift_register_9 			=> ila_kernel_addend_shift_register_9, 
		ila_kernel_addend_shift_register_10 		=> ila_kernel_addend_shift_register_10
		
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
       i_clk 						=> i_clk,
       i_data_return 				=> volume_router_data_return,
       i_data_return_wr_en 			=> volume_router_data_return_wr_en,
	   i_filter_data_return 		=> weight_router_filter_data_return, 
	   i_filter_data_return_wr_en 	=> weight_router_filter_data_return_wr_en, 
       i_enable 					=> i_enable,
       i_filter_kernal_loaded 		=> router_filter_kernal_loaded,
       i_get_volume_row 			=> get_volume_row,
       i_get_weight_row 			=> get_weight_row,
       i_inbuff_almost_empty 		=> i_inbuff_almost_empty,
       i_inbuff_dout 				=> i_inbuff_dout,
       i_inbuff_empty 				=> i_inbuff_empty,
       i_inbuff_valid 				=> i_inbuff_valid,
       i_input_volume_channels 		=> i_input_volume_channels,
       i_input_volume_size 			=> i_input_volume_size,
       i_loaded_rows_processed 		=> volume_router_loaded_rows_processed,
       i_number_of_filters 			=> i_number_of_filters,
       i_pad 						=> i_pad,
       i_reset_n 					=> i_reset_n,
       i_snake_fill_complete 		=> volume_router_snake_fill_complete,
       i_start 						=> i_start,
       i_stride 					=> i_stride,
       i_volume_fifo_almost_full 	=> volume_stack_fifo_almost_full,
       i_volume_fifo_full 			=> volume_stack_fifo_full,
       i_weight_fifo_almost_full 	=> weight_mux_almost_full,
       i_weight_fifo_full			=> weight_mux_full,
       i_weight_filter_channels 	=> i_weight_filter_channels,
       i_weight_filter_size 		=> i_weight_filter_size,
	   i_empty_data_complete 		=> volume_router_empty_data_complete,
	   i_affine_select				=> i_affine_select, 
	   i_channels_in_set 			=> i_channels_in_set, 
	   i_filters_in_set 			=> i_filters_in_set, 
	   i_weight_router_ready 		=> weight_router_ready, 
	   i_volume_router_ready 		=> volume_router_ready, 
	   i_accumulator_complete 		=> accumulator_complete, 
	   i_volume_complete 			=> volume_processed, 
	   i_iteration_complete 		=> iteration_complete, 
	   i_conv_complete				=> router_conv_complete, 
	   i_affine_complete			=> router_affine_complete, 
       o_all_channels_processed 	=> all_channels_processed,
       o_convolution_en 			=> router_convolution_en,
	   o_affine_en 					=> router_affine_en, 
       o_inbuff_rd_en 				=> o_inbuff_rd_en,
       o_num_iterations 			=> num_iterations,
       o_padded_volume_size 		=> volume_router_padded_volume_size,
       o_prev_data 					=> volume_mux_prev_data,
       o_prev_data_wr_en 			=> volume_mux_prev_data_wr_en,
       o_recycled_data 				=> volume_mux_recycled_data,
       o_recycled_data_wr_en 		=> volume_mux_recycled_data_wr_en,
	   o_recycled_filter_data 		=> weight_mux_recycle_filter_data, 
	   o_recycled_filter_data_wr_en => weight_mux_recycle_filter_data_wr_en, 
       o_stop_stack_en 				=> volume_router_stop_stack_en,
       o_volume_data 				=> volume_mux_data,
       o_volume_fifo_wr_en 			=> volume_stack_fifo_wr_en,
       o_volume_new_data_en 		=> volume_mux_new_data_en,
       o_volume_prev_data_en 		=> volume_mux_prev_data_en,
       o_volume_recycled_data_en 	=> volume_mux_recycled_data_en,
       o_weight_data 				=> weight_mux_data,
       o_weight_fifo_wr_en 			=> weight_mux_wr_en ,
       o_weights_new_data_en 		=> weight_mux_new_data_en,
       o_weights_prev_data_en 		=> weight_mux_prev_data_en,
       o_weights_prev_data_wr_en 	=> weight_mux_prev_data_wr_en,
       o_weights_recycled_data_en 	=> weight_mux_recycled_data_en,
	   o_operation_complete 		=> operation_complete, 
	   o_volume_empty_data_en		=> volume_router_empty_data_en, 
	   o_volume_processed 			=> open, 
	   o_iteration_complete 		=> open, 
	   o_weights_loaded  			=> o_weights_loaded, 
	   o_more_dsps  				=> more_dsps_needed,  
	   o_channels_allowed 			=> channels_allowed, 
	   o_dsps_used 					=> o_dsps_used, 
	   o_iterations_required 		=> o_iterations_required,
	   o_row_complete 				=> o_row_complete, 
	   o_fifo_clear 				=> fifo_clear, 
	   o_clear_weights 				=> weight_router_clear_weights, 
	   o_filter_iterations_required => filter_iterations_required, 
	   o_filters_in_set 			=> filters_in_set, 
	   o_layer_ready 				=> o_layer_ready, 
	   o_accumulator_en 			=> accumulator_en, 
	   o_calc_params 				=> volume_router_calc_params, 
	   o_disable_channel_n 			=> router_disable_channel_n, 
	   o_fsm_state					=> controller_state, 
	   
	   
		ila_input_volume_row_counter 	=> ila_controller_input_volume_row_counter,
		ila_volume_channel_counter		=> ila_controller_volume_channel_counter,
		ila_weight_channel_counter		=> ila_controller_weight_channel_counter,
		ila_more_dsps_needed			=> ila_controller_more_dsps_needed,
		ila_channels_allowed 			=> ila_controller_channels_allowed,
		ila_filter_row_counter 			=> ila_controller_filter_row_counter,
		ila_filter_column_counter 		=> ila_controller_filter_column_counter,
		ila_filter_counter				=> ila_controller_filter_counter,
		ila_volume_row_counter 			=> ila_controller_volume_row_counter,
		ila_volume_column_counter 		=> ila_controller_volume_column_counter,
		ila_volume_index_counter		=> ila_controller_volume_index_counter,
		ila_weight_index_counter 		=> ila_controller_weight_index_counter,
		ila_padded_volume_row_size 		=> ila_controller_padded_volume_row_size,
		ila_padded_volume_column_size 	=> ila_controller_padded_volume_column_size,
		ila_volume_rows_processed 		=> ila_controller_volume_rows_processed,
		ila_element_counter				=> ila_controller_element_counter,
		ila_pad_counter					=> ila_controller_pad_counter,
		ila_channels_processed			=> ila_controller_channels_processed,
		ila_pad_8bit					=> ila_controller_pad_8bit,
		ila_pad_10bit					=> ila_controller_pad_10bit,
		ila_pad_16bit					=> ila_controller_pad_16bit,
		ila_input_volume_size_10bit 	=> ila_controller_input_volume_size_10bit,
		ila_volume_row					=> ila_controller_volume_row,
		ila_iteration_calc				=> ila_controller_iteration_calc,    
		ila_iteration_counter			=> ila_controller_iteration_counter,
		ila_filter_iteration_counter    => ila_controller_filter_iteration_counter,
		ila_channel_iteration_counter  	=> ila_controller_channel_iteration_counter, 
		ila_stride_counter				=> ila_controller_stride_counter,
		ila_pad_row_counter	  			=> ila_controller_pad_row_counter,
		ila_filter_iteration_complete	=> ila_controller_filter_iteration_complete,
		ila_channel_iteration_complete	=> ila_controller_channel_iteration_complete,
		ila_fifo_clear_counter 			=> ila_controller_fifo_clear_counter,
		ila_channel_iteration_calc		=> ila_controller_channel_iteration_calc,
		ila_channel_iterations_required	=> ila_controller_channel_iterations_required,		
		ila_filter_iteration_calc		=> ila_controller_filter_iteration_calc,
		ila_channel_mask				=> ila_controller_channel_mask,
		ila_weight_filter_size 			=> ila_controller_weight_filter_size,
		ila_input_volume_size			=> ila_controller_input_volume_size, 
		ila_input_volume_channels		=> ila_controller_input_volume_channels,
		ila_weight_filter_channels		=> ila_controller_weight_filter_channels,
		ila_number_of_filters			=> ila_controller_number_of_filters,
		ila_channels_in_set				=> ila_controller_channels_in_set,
		ila_stride_index 				=> ila_controller_stride_index,
		ila_empty_data_complete			=> ila_controller_empty_data_complete
	   
  );

CHANNEL_UNIT : for i in g_dsps_used-1 downto 0 generate
begin

  products_array_valid(i) <= weight_router_data_valid(i) and volume_router_data_valid(i);

  MULTIPLIER : conv_fp_multiplier_32
    port map(
         a => multiplicand_a(i),
         b => multiplicand_b(i),
         clk => i_clk,
         result => products_array(i)
    );

  VOLUME_ROW_FIFO : volume_fifo_32
    port map(
         almost_empty 		=> volume_fifo_almost_empty(i),
         almost_full 		=> volume_fifo_almost_full(i),
         din 				=> volume_fifo_input(i),
         dout 				=> volume_fifo_dout(i),
         empty 				=> volume_fifo_empty(i),
         full 				=> volume_fifo_full(i),
         rd_clk 			=> i_clk,
         rd_en 				=> volume_fifo_rd_en(i),
         rst 				=> fifo_reset,
         valid 				=> volume_fifo_valid(i),
         wr_clk 			=> i_clk,
         wr_en 				=> volume_fifo_wr_en(i)
    );
  
  VOLUME_ROW_MUX : volume_mux
	generic map(
		 g_data_width => g_data_width
		 )
    port map(

         i_clk 					=> i_clk,
         i_enable 				=> i_enable,
		 i_reset_n 				=> i_reset_n,
         i_new_data 			=> volume_mux_data(i),
         i_new_data_en 			=> volume_mux_new_data_en(i),
         i_prev_data			=> volume_mux_prev_data(i),
         i_prev_data_en 		=> volume_mux_prev_data_en(i),
         i_prev_data_wr_en		=> volume_mux_prev_data_wr_en(i),
         i_recycled_data 		=> volume_mux_recycled_data(i),
         i_recycled_data_en 	=> volume_mux_recycled_data_en(i),
         i_recycled_data_wr_en 	=> volume_mux_recycled_data_wr_en(i),
         i_almost_full 			=> volume_fifo_almost_full(i),
         i_fifo_we 				=> volume_stack_fifo_wr_en(i),
         i_full 				=> volume_fifo_full(i),
         o_data 				=> volume_fifo_input(i),
         o_fifo_almost_full 	=> volume_stack_fifo_almost_full(i),
         o_fifo_full 			=> volume_stack_fifo_full(i),
         o_get_volume_row		=> get_volume_row(i),
         o_wr_en 				=> volume_fifo_wr_en(i)
    );
  
  VOLUME_ROW_ROUTER : volume_router
	generic map (
		 g_mult_delay => g_mult_delay, 
		 g_data_width => g_data_width
		 )
    port map(
		i_clk 					=> i_clk,
		i_reset_n 				=> i_reset_n,
		
		i_enable 				=> router_disable_channel_n(i),
		i_filters_in_set 		=> i_filters_in_set,
		i_input_volume_size 	=> i_input_volume_size, 
		i_pad 					=> i_pad, 
		i_stride 				=> i_stride,
		i_number_of_filters 	=> i_number_of_filters,
		i_filter_size 			=> i_weight_filter_size,
		i_acc_ready 			=> router_acc_ready,
		i_convolution_en 		=> router_convolution_en,
		i_affine_en 			=> router_affine_en, 
		i_filters_loaded 		=> router_filter_kernal_loaded(i),
		i_next_fifo_full 		=> volume_stack_fifo_almost_full(i),
		--i_padded_volume_size 	=> volume_router_padded_volume_size,
		i_stop_stack_en 		=> volume_router_stop_stack_en(i),
		i_empty_data_en 		=> volume_router_empty_data_en(i),
		i_calc_params 			=> volume_router_calc_params, 
		i_empty 				=> volume_fifo_empty(i),
		i_fifo_data_valid 		=> volume_fifo_valid(i),
		i_volume_data 			=> volume_fifo_dout(i),
		i_almost_empty 			=> volume_fifo_almost_empty(i),
		o_rd_en 				=> volume_fifo_rd_en(i),
		o_conv_complete 		=> router_conv_complete(i),
		o_affine_complete 		=> router_affine_complete(i), 
		o_filter_complete		=> router_filter_complete(i), 
		o_data_mult 			=> multiplicand_a(i),
		o_data_return 			=> volume_router_data_return(i),
		o_data_return_wr_en 	=> volume_router_data_return_wr_en(i),
		o_data_valid 			=> volume_router_data_valid(i),
		o_rows_complete 		=> volume_router_loaded_rows_processed(i),
		o_sending 				=> router_volume_ready(i),
		o_snake_fill_complete 	=> volume_router_snake_fill_complete(i), 
		o_empty_data_complete 	=> volume_router_empty_data_complete(i), 
		o_volume_router_ready	=> volume_router_ready(i), 
		o_fsm_state 			=> volume_router_state(i), 
		ila_element_counter 	=> ila_volume_element_counter(i),
		ila_filter_counter 		=> ila_volume_filter_counter(i),
		ila_column_counter		=> ila_volume_column_counter(i),  
		ila_delay_shift_register=> ila_volume_delay_shift_register(i),
		ila_pad_16bit			=> ila_volume_pad_16bit(i),
		ila_padded_volume_size	=> ila_volume_padded_volume_size(i),
		ila_empty_done			=> ila_volume_empty_done(i)
			
    );

  WEIGHTS_ROW_ROUTER : weights_router
	generic map (
		 g_mult_delay => g_mult_delay, 
		 g_data_width => g_data_width
		 )
    port map(
		i_clk 					=> i_clk,
		i_reset_n 				=> i_reset_n,
		i_enable 				=> router_disable_channel_n(i),
		i_num_filters 			=> i_number_of_filters,
		i_weight_filter_size 	=> i_weight_filter_size,
		i_clear_weights 		=> weight_router_clear_weights,
		i_conv_complete 		=> router_conv_complete(i),
		i_convolution_en 		=> router_convolution_en,
		i_affine_en 			=> router_affine_en, 
		i_affine_complete 		=> router_affine_complete(i), 
		i_filter_complete		=> router_filter_complete(i), 
		i_volume_ready 			=> router_volume_ready(i),
		i_acc_ready 			=> router_acc_ready,
		i_almost_empty 			=> weight_fifo_almost_empty(i),
		i_empty 				=> weight_fifo_empty(i),
		i_fifo_data_valid 		=> weight_fifo_valid(i),
		i_filter_data 			=> weight_fifo_dout(i),
		o_rd_en 				=> weight_fifo_rd_en(i),
		o_reset_weight_fifo_n 	=> open, --reset_weight_fifo_n,
		o_data_valid 			=> weight_router_data_valid(i),
		o_filters_loaded 		=> router_filter_kernal_loaded(i),
		o_recycle_filter_data 	=> weight_router_filter_data_return(i),
		o_recycle_filter_en 	=> weight_router_filter_data_return_wr_en(i),
		o_weights_mult 			=> multiplicand_b(i), 
		o_weight_router_ready 	=> weight_router_ready(i), 
		o_fsm_state				=> weight_router_state(i), 
		ila_filter_element_counter => ila_weight_filter_element_counter(i),   
		ila_delay_shift_register => ila_weight_delay_shift_register(i)   
    );

  WEIGHT_ROW_FIFO : weight_fifo_2
    port map(
         almost_empty 	=> weight_fifo_almost_empty(i),
         almost_full 	=> weight_fifo_almost_full(i),
         din 			=> weight_fifo_input(i),
         dout 			=> weight_fifo_dout(i),
         empty 			=> weight_fifo_empty(i),
         full 			=> weight_fifo_full(i),
         rd_clk 		=> i_clk,
         rd_en 			=> weight_fifo_rd_en(i),
         rst 			=> weight_rst,
         valid 			=> weight_fifo_valid(i),
         wr_clk 		=> i_clk,
         wr_en 			=> weight_fifo_wr_en(i)
    );
  
  WEIGHT_ROW_MUX : volume_mux
	generic map(
		g_data_width => g_data_width
		)
    port map(
		i_clk 					=> i_clk,
		i_enable 				=> i_enable,
		i_reset_n 				=> i_reset_n,
		i_almost_full 			=> weight_fifo_almost_full(i),
		i_full 					=> weight_fifo_full(i),
		i_fifo_we 				=> weight_mux_wr_en (i),
		i_new_data 				=> weight_mux_data(i),
		i_new_data_en 			=> weight_mux_new_data_en(i),
		i_prev_data				=> (others => '0'),
		i_prev_data_en 			=> weight_mux_prev_data_en(i),
		i_prev_data_wr_en 		=> weight_mux_prev_data_wr_en(i),
		i_recycled_data 		=> weight_mux_recycle_filter_data(i),
		i_recycled_data_en 		=> weight_mux_recycled_data_en(i),
		i_recycled_data_wr_en 	=> weight_mux_recycle_filter_data_wr_en(i),
		o_data 					=> weight_fifo_input(i),
		o_wr_en 				=> weight_fifo_wr_en(i),
		o_fifo_almost_full 		=> weight_mux_almost_full(i),
		o_fifo_full 			=> weight_mux_full(i),
		o_get_volume_row 		=> get_weight_row(i)
    );
end generate CHANNEL_UNIT;

end arch;
