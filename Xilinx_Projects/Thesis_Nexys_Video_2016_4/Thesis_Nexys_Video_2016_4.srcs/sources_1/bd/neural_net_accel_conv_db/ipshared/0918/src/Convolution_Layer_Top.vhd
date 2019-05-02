-------------------------------------------------------------------------------
--
-- Title       : Convolution_Layer_Top
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\Convolution_Layer_Top.vhd
-- Generated   : Sun Feb  4 14:12:54 2018
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\Convolution_Layer_Top.bde
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
use IEEE.numeric_std.all; 

entity Convolution_Layer_Top is
  generic(
       -- name : type := value
       g_axi_bus_width    : integer := 32;
       g_data_width       : integer := 32;
       g_weight_width     : integer := 32;
       g_multiplier_width : integer := 32;
       g_product_width    : integer := 32;
       g_conv_width       : integer := 32;
       g_relu_width       : integer := 32;
       g_dsps_used        : integer := 200;
       g_norm_width       : integer := 32; 
	   g_adder_delay	  : integer := 12; 
	   g_mult_delay		  : integer := 8; 
	   g_num_adder_layers : INTEGER := 6
  );
  port(
       i_ext_reset_n : in STD_LOGIC;
       i_master_clk  : in STD_LOGIC;
	   
	   --TO CONVOLVER
       i_start                    : in std_logic; 
	   i_output_volume_size       : in std_logic_vector(7 downto 0); 
       i_input_volume_channels    : in std_logic_vector(15 downto 0);
       i_input_volume_size        : in std_logic_vector(7 downto 0); 
       i_number_of_filters        : in std_logic_vector(15 downto 0); 
       i_weight_filter_channels   : in std_logic_vector(15 downto 0); 
       i_weight_filter_size       : in std_logic_vector(3 downto 0); 
       i_pad                      : in std_logic_vector(3 downto 0); 
       i_stride                   : in std_logic_vector(3 downto 0); 
	   i_ch_al_filt			      : in std_logic_vector(15 downto 0); 
	   
	   i_bias_fifo_din 			  : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
	   i_bias_fifo_wr_en		  : in std_logic; 	 
	   i_bias_values_loaded		  : in std_logic; 
	   
	   i_prev_fifo_din				   : in std_logic_vector(g_data_width-1 downto 0); 
	   i_prev_fifo_wr_en			   : in std_logic; 
	   
	   i_affine_select				   : in std_logic; 		   
	   i_channels_in_set			   : in std_logic_vector(7 downto 0); 
	   i_filters_in_set			       : in std_logic_vector(15 downto 0); 
	   	   
	   -- TO NORMALIZER
       i_beta                  : in std_logic_vector(g_data_width-1 downto 0); 
       i_epsilon               : in std_logic_vector(g_data_width-1 downto 0);
       i_fresh_params          : in std_logic; 
       i_gamma                 : in std_logic_vector(g_data_width-1 downto 0);
       i_mean                  : in std_logic_vector(g_data_width-1 downto 0);
       i_variance              : in std_logic_vector(g_data_width-1 downto 0);
	   
	   --TO RELU UNIT
	   i_relu_en 				: in std_logic; 
	   
	   --FROM CONVOLVER  
	   o_weights_loaded         : out std_logic; 
	   o_conv_complete			: out std_logic; 
	   o_operation_complete          : out std_logic; 
	   o_volume_processed		: out std_logic; 
	   o_more_dsps              : out std_logic; 
	   o_iteration_complete     : out std_logic;
	   o_channels_allowed       : out std_logic_vector(7 downto 0); 
	   o_dsps_used              : out std_logic_vector(7 downto 0); 
	   o_iterations_required           : out std_logic_vector(7 downto 0); 
	   o_row_complete 				   : out std_logic; 
	   o_filter_iterations_required : out std_logic_vector(15 downto 0); 
	
	   o_prev_fifo_full				   : out std_logic; 
	   o_prev_fifo_almost_full		   : out std_logic; 
	   o_bias_fifo_full				   : out std_logic; 
	   o_bias_fifo_almost_full		   : out std_logic; 
	   o_acc_row_complete			   : out std_logic; 
	   o_layer_ready				   : out std_logic; 

	   --TO AXI MASTER 
       o_inbuff_empty             : out STD_LOGIC;
       o_inbuff_almost_empty      : out STD_LOGIC;
       o_inbuff_full              : out STD_LOGIC;
       o_inbuff_almost_full       : out STD_LOGIC;
       o_inbuff_valid             : out STD_LOGIC; 
	   
	   o_outbuff_dout 			   : out std_logic_vector(g_data_width-1 downto 0); 
       o_outbuff_empty             : out STD_LOGIC;
       o_outbuff_almost_empty      : out STD_LOGIC;
       o_outbuff_full              : out STD_LOGIC;
       o_outbuff_almost_full       : out STD_LOGIC;
       o_outbuff_valid             : out STD_LOGIC; 
	   
	   --FROM AXI MASTER
	   i_inbuff_din					: in std_logic_vector(g_data_width-1 downto 0); 
	   i_inbuff_wr_en 				: in std_logic; 
	   i_outbuff_rd_en				: in std_logic;
	  
		-- o_cycle : out std_logic_vector(63 downto 0);
		-- o_epoch : out std_logic_vector(63 downto 0);   
		
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
		ila_weight_rst 								: out STD_LOGIC;

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
		
		ila_inbuff_din                			: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		ila_inbuff_dout               			: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		ila_inbuff_almost_empty      			: out STD_LOGIC;
		ila_inbuff_almost_full        			: out STD_LOGIC;
		ila_inbuff_empty              			: out STD_LOGIC;
		ila_inbuff_full               			: out STD_LOGIC;
		ila_inbuff_rd_en              			: out STD_LOGIC;
		ila_inbuff_valid              			: out STD_LOGIC;
		ila_outbuff_almost_empty      			: out STD_LOGIC;
		ila_outbuff_almost_full       			: out STD_LOGIC;
		ila_outbuff_empty             			: out STD_LOGIC;
		ila_outbuff_full              			: out STD_LOGIC;
		ila_outbuff_valid             			: out STD_LOGIC;
		ila_outbuff_wr_en             			: out STD_LOGIC;
		ila_outbuff_din               			: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		ila_outbuff_dout              			: out STD_LOGIC_VECTOR(g_data_width-1 downto 0); 

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
end Convolution_Layer_Top;

architecture arch of Convolution_Layer_Top is

---- Component declarations -----

component conv_input_buffer_32
  port (
       din               : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       rd_clk            : in STD_LOGIC;
       rd_en             : in STD_LOGIC;
       rst               : in STD_LOGIC;
       wr_clk            : in STD_LOGIC;
       wr_en             : in STD_LOGIC;
       almost_empty      : out STD_LOGIC;
       almost_full       : out STD_LOGIC;
       dout              : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       empty             : out STD_LOGIC;
       full              : out STD_LOGIC;
       valid             : out STD_LOGIC
  );
end component;
component conv_output_buffer_32
  port (
       din               : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       rd_clk            : in STD_LOGIC;
       rd_en             : in STD_LOGIC;
       rst               : in STD_LOGIC;
       wr_clk            : in STD_LOGIC;
       wr_en             : in STD_LOGIC;
       almost_empty      : out STD_LOGIC;
       almost_full       : out STD_LOGIC;
       dout              : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       empty             : out STD_LOGIC;
       full              : out STD_LOGIC;
       valid             : out STD_LOGIC
  );
end component;


component fast_filter_top is
  generic(										
       -- name : type := value
       g_data_width 		: integer := 32;
       g_weight_width 		: integer := 32;
       g_multiplier_width 	: integer := 32;
       g_product_width 		: integer := 32;
       g_conv_width 		: integer := 32;
       g_dsps_used 			: integer := 200; 
	   g_adder_delay 		: integer := 11; 
	   g_mult_delay 		: integer := 8; 
	   g_num_adder_layers : INTEGER := 6
  );
  port(
       i_clk 							: in STD_LOGIC;
       i_enable 						: in STD_LOGIC;
       i_inbuff_almost_empty 			: in STD_LOGIC;
       i_inbuff_empty 					: in STD_LOGIC;
       i_inbuff_valid 					: in STD_LOGIC;
       i_normalizer_ready 				: in STD_LOGIC;
       i_reset_n 						: in STD_LOGIC;
       i_start 							: in STD_LOGIC;
       i_inbuff_dout 					: in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_volume_channels 			: in STD_LOGIC_VECTOR(15 downto 0);
       i_input_volume_size 				: in STD_LOGIC_VECTOR(7 downto 0);
       i_number_of_filters 				: in STD_LOGIC_VECTOR(15 downto 0);
       i_pad 							: in STD_LOGIC_VECTOR(3 downto 0);
       i_stride 						: in STD_LOGIC_VECTOR(3 downto 0);
       i_weight_filter_channels 		: in STD_LOGIC_VECTOR(15 downto 0);
       i_weight_filter_size 			: in STD_LOGIC_VECTOR(3 downto 0); 
       i_output_volume_size 			: in STD_LOGIC_VECTOR(7 downto 0);
	   i_ch_al_filt			   			: in std_logic_vector(15 downto 0); 
	   i_prev_fifo_din				   	: in std_logic_vector(g_data_width-1 downto 0); 
	   i_prev_fifo_wr_en			   	: in std_logic; 
	   o_prev_fifo_full				   	: out std_logic; 
	   o_prev_fifo_almost_full		   	: out std_logic; 
	   
	   i_bias_fifo_din 				   	: in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
	   i_bias_fifo_wr_en			   	: in std_logic; 
	   o_bias_fifo_full				   	: out std_logic; 
	   o_bias_fifo_almost_full		   	: out std_logic; 
	   i_bias_values_loaded				: in std_logic; 
	   
       o_conv_data_valid 				: out STD_LOGIC;
       o_inbuff_rd_en 					: out STD_LOGIC;
       o_conv_volume_out 				: out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
	   o_operation_complete				: out std_logic; 
	   o_volume_processed				: out std_logic; 
	   o_iteration_complete            	: out std_logic;
	   o_weights_loaded                	: out std_logic;
	   o_more_dsps                     	: out std_logic;
	   o_channels_allowed              	: out std_logic_vector(7 downto 0);
	   o_dsps_used					   	: out std_logic_vector(7 downto 0); 
	   o_iterations_required        	: out std_logic_vector(7 downto 0); 
	   o_row_complete					: out std_logic; 
	   i_affine_select					: in std_logic; 
	   o_acc_row_complete				: out std_logic; 
	   i_channels_in_set			   	: in std_logic_vector(7 downto 0); 
	   i_filters_in_set					: in std_logic_vector(15 downto 0); 
	   o_layer_ready					: out std_logic; 
	   o_conv_complete					: out std_logic; 
	   o_filter_iterations_required		: out std_logic_vector(15 downto 0); 
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
		ila_weight_rst 						: out STD_LOGIC;

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
end component;	






component normalizer
  generic(
       g_data_width : integer := 32
  );
  port (
       i_clk                   : in STD_LOGIC;
       i_reset_n               : in STD_LOGIC;
       i_enable                : in STD_LOGIC;
       i_beta                  : in STD_LOGIC_VECTOR(g_data_width-1 downto 0); 
       i_epsilon               : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_fresh_params          : in STD_LOGIC;
       i_gamma                 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_mean                  : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_variance              : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_data            : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_data_valid      : in STD_LOGIC;
       i_outbuff_almost_full     : in STD_LOGIC;
       o_normalized_data       : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_normalized_data_valid : out STD_LOGIC;
       o_normalizer_ready      : out STD_LOGIC
  );
end component;
component relu_unit
  generic(
       g_conv_width : INTEGER := 32;
       g_relu_width : INTEGER := 32
  );
  port (
       i_clk                   : in STD_LOGIC;
       i_enable                : in STD_LOGIC;
       i_fifo_almost_full      : in STD_LOGIC;
       i_fifo_full             : in STD_LOGIC;
       i_normalized_data       : in STD_LOGIC_VECTOR(g_conv_width-1 downto 0);
       i_normalized_data_valid : in STD_LOGIC;
       i_relu_en               : in STD_LOGIC;
       i_reset_n               : in STD_LOGIC;
       o_relu_out              : out STD_LOGIC_VECTOR(g_relu_width-1 downto 0);
       o_wr_en                 : out STD_LOGIC
  );
end component;


--signal inbuff_din                : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal inbuff_dout               : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal inbuff_prog_empty_thresh  : STD_LOGIC_VECTOR(9 downto 0);
signal inbuff_prog_full_thresh   : STD_LOGIC_VECTOR(9 downto 0);
signal inbuff_almost_empty       : STD_LOGIC;
signal inbuff_almost_full        : STD_LOGIC;
signal inbuff_empty              : STD_LOGIC;
signal inbuff_full               : STD_LOGIC;
signal inbuff_prog_empty         : STD_LOGIC;
signal inbuff_prog_full          : STD_LOGIC;
signal inbuff_rd_en              : STD_LOGIC;
signal inbuff_valid              : STD_LOGIC;
signal outbuff_almost_empty      : STD_LOGIC;
signal outbuff_almost_full       : STD_LOGIC;
signal outbuff_empty             : STD_LOGIC;
signal outbuff_full              : STD_LOGIC;
signal outbuff_prog_empty        : STD_LOGIC;
signal outbuff_prog_full         : STD_LOGIC;
signal outbuff_valid             : STD_LOGIC;
signal outbuff_wr_en             : STD_LOGIC;
signal outbuff_din               : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal outbuff_dout              : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal outbuff_prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal outbuff_prog_full_thresh  : STD_LOGIC_VECTOR(9 downto 0);
signal relu_en : std_logic; 


signal conv_volume_out           : STD_LOGIC_VECTOR(g_conv_width-1 downto 0);
signal conv_data_valid           : STD_LOGIC;
signal volume_processed		     : std_logic; 

-- signal normalized_data           : STD_LOGIC_VECTOR(g_norm_width-1 downto 0);
-- signal normalized_data_valid     : STD_LOGIC;
-- signal normalizer_ready          : STD_LOGIC;

signal ext_reset				 : std_logic; 
-- signal epoch : unsigned(63 downto 0);
-- signal cycle : unsigned(63 downto 0); 
begin


o_inbuff_empty             <= inbuff_empty; 
o_inbuff_almost_empty      <= inbuff_almost_empty; 
o_inbuff_full              <= inbuff_full; 
o_inbuff_almost_full       <= inbuff_almost_full; 
o_inbuff_valid             <= inbuff_valid; 

o_outbuff_dout				<= outbuff_dout; 
o_outbuff_empty             <= outbuff_empty; 
o_outbuff_almost_empty      <= outbuff_almost_empty; 
o_outbuff_full              <= outbuff_full;
o_outbuff_almost_full       <= outbuff_almost_full;
o_outbuff_valid             <= outbuff_valid; 

ext_reset <= not(i_ext_reset_n); 

o_volume_processed <= volume_processed; 

-- o_cycle <= std_logic_vector(cycle); 
-- o_epoch <= std_logic_vector(epoch); 

ila_inbuff_din                <= i_inbuff_din;
ila_inbuff_dout               <= inbuff_dout;
ila_inbuff_almost_empty       <= inbuff_almost_empty;
ila_inbuff_almost_full        <= inbuff_almost_full;
ila_inbuff_empty              <= inbuff_empty;
ila_inbuff_full               <= inbuff_full;
ila_inbuff_rd_en              <= inbuff_rd_en;
ila_inbuff_valid              <= inbuff_valid;
ila_outbuff_almost_empty      <= outbuff_almost_empty;
ila_outbuff_almost_full       <= outbuff_almost_full;
ila_outbuff_empty             <= outbuff_empty;
ila_outbuff_full              <= outbuff_full;
ila_outbuff_valid             <= outbuff_valid;
ila_outbuff_wr_en             <= outbuff_wr_en;
ila_outbuff_din               <= outbuff_din;
ila_outbuff_dout              <= outbuff_dout;

-- BATCH_NORMALIZER : normalizer
  -- generic map(
       -- g_data_width => g_norm_width
  -- )
  -- port map(
       -- i_clk                  => i_master_clk,
       -- i_reset_n               => i_ext_reset_n,
       -- i_enable                => '1',
       -- i_beta                  => i_beta,
       -- i_epsilon               => i_epsilon,
       -- i_fresh_params          => i_fresh_params,
       -- i_gamma                 => i_gamma,
       -- i_mean                  => i_mean,
       -- i_variance              => i_variance,
       -- i_input_data            => conv_volume_out,
       -- i_input_data_valid      => conv_data_valid,
       -- i_outbuff_almost_full     => outbuff_almost_full,
       -- o_normalized_data       => normalized_data,
       -- o_normalized_data_valid => normalized_data_valid,
       -- o_normalizer_ready      => normalizer_ready
  -- );

CONVOLUTION : fast_filter_top
  generic map(
       -- name : type := value
       g_data_width         => g_data_width,
       g_weight_width       => g_weight_width,
       g_multiplier_width   => g_multiplier_width,
       g_product_width      => g_product_width,
       g_conv_width         => g_conv_width,
       g_dsps_used          => g_dsps_used, 
	   g_adder_delay 		=> g_adder_delay, 
	   g_mult_delay 		=> g_mult_delay, 
	   g_num_adder_layers   => g_num_adder_layers
  )
  port map(
       i_clk                           => i_master_clk,
       i_enable                        => '1',
       i_inbuff_almost_empty           => inbuff_almost_empty, 
       i_inbuff_empty                  => inbuff_empty, 
       i_inbuff_valid                  => inbuff_valid,
       i_normalizer_ready              => '1',
       i_reset_n                       => i_ext_reset_n,
       i_start                         => i_start, 
       i_inbuff_dout                   => inbuff_dout, 
       i_input_volume_channels         => i_input_volume_channels, 
       i_input_volume_size             => i_input_volume_size, 
       i_number_of_filters             => i_number_of_filters, 
       i_output_volume_size            => i_output_volume_size, 
       i_pad                           => i_pad,
       i_stride                        => i_stride,
       i_weight_filter_channels        => i_weight_filter_channels,
       i_weight_filter_size            => i_weight_filter_size,
	   i_ch_al_filt					   => i_ch_al_filt, 
	   i_prev_fifo_din				   => i_prev_fifo_din,
	   i_prev_fifo_wr_en			   => i_prev_fifo_wr_en, 
	   o_prev_fifo_full				   => o_prev_fifo_full, 
	   o_prev_fifo_almost_full		   => o_prev_fifo_almost_full, 
	   
	   i_bias_fifo_din 				   => i_bias_fifo_din,
	   i_bias_fifo_wr_en			   => i_bias_fifo_wr_en,
	   o_bias_fifo_full				   => o_bias_fifo_full,
	   o_bias_fifo_almost_full		   => o_bias_fifo_almost_full,
	   i_bias_values_loaded			   => i_bias_values_loaded,
	   
       o_conv_data_valid               => conv_data_valid, 
       o_inbuff_rd_en                  => inbuff_rd_en,
       o_conv_volume_out               => conv_volume_out,
	   o_operation_complete            => o_operation_complete,
	   o_volume_processed              => volume_processed,
	   o_iteration_complete            => o_iteration_complete,
	   o_weights_loaded                => o_weights_loaded,
	   o_more_dsps                     => o_more_dsps,
	   o_channels_allowed              => o_channels_allowed,
	   o_dsps_used					   => o_dsps_used,
	   o_iterations_required           => o_iterations_required,
	   o_row_complete 				   => o_row_complete, 
	   
	   i_affine_select				   => i_affine_select,  
	   o_acc_row_complete			   => o_acc_row_complete,  
	   i_channels_in_set			   => i_channels_in_set,
	   i_filters_in_set			       => i_filters_in_set, 
	   
	   o_layer_ready				  => o_layer_ready, 
	   o_conv_complete				  => o_conv_complete, 
	   o_filter_iterations_required	  => o_filter_iterations_required, 
	   i_relu_en 					  => i_relu_en, 
	   o_relu_en					  => relu_en, 
							

							
												
		--ACCUMULATOR_FIFO
		ila_acc_fifo_almost_empty 				=> ila_acc_fifo_almost_empty,
		ila_acc_fifo_almost_full 				=> ila_acc_fifo_almost_full,
		ila_acc_fifo_empty 						=> ila_acc_fifo_empty,
		ila_acc_fifo_full 						=> ila_acc_fifo_full,
		ila_acc_fifo_rd_en 						=> ila_acc_fifo_rd_en,
		ila_acc_fifo_valid 						=> ila_acc_fifo_valid,
		ila_acc_fifo_wr_en						=> ila_acc_fifo_wr_en,
		ila_accu_fifo_input 					=> ila_accu_fifo_input,
		ila_acc_fifo_din 						=> ila_acc_fifo_din,
		ila_acc_fifo_dout 						=> ila_acc_fifo_dout,

		--CHANNEL UNIT VOLUME FIFO
		ila_volume_fifo_din_0					=> ila_volume_fifo_din_0,
		ila_volume_fifo_din_1					=> ila_volume_fifo_din_1,
		ila_volume_fifo_din_2					=> ila_volume_fifo_din_2,
		ila_volume_fifo_din_3					=> ila_volume_fifo_din_3,
		ila_volume_fifo_din_4					=> ila_volume_fifo_din_4,
		ila_volume_fifo_din_5					=> ila_volume_fifo_din_5,
		ila_volume_fifo_din_6					=> ila_volume_fifo_din_6,
		ila_volume_fifo_din_7					=> ila_volume_fifo_din_7,
		ila_volume_fifo_din_8					=> ila_volume_fifo_din_8,
		ila_volume_fifo_din_9					=> ila_volume_fifo_din_9,
		ila_volume_fifo_din_10					=> ila_volume_fifo_din_10,
		ila_volume_fifo_din_11					=> ila_volume_fifo_din_11,
		ila_volume_fifo_din_12					=> ila_volume_fifo_din_12,
		ila_volume_fifo_din_13					=> ila_volume_fifo_din_13,
		ila_volume_fifo_din_14					=> ila_volume_fifo_din_14,
		ila_volume_fifo_din_15					=> ila_volume_fifo_din_15,
		ila_volume_fifo_din_16					=> ila_volume_fifo_din_16,
		ila_volume_fifo_din_17					=> ila_volume_fifo_din_17,
		ila_volume_fifo_din_18					=> ila_volume_fifo_din_18,
		ila_volume_fifo_din_19					=> ila_volume_fifo_din_19,
		ila_volume_fifo_din_20					=> ila_volume_fifo_din_20,
		ila_volume_fifo_din_21					=> ila_volume_fifo_din_21,
		ila_volume_fifo_din_22					=> ila_volume_fifo_din_22, 
		ila_volume_fifo_din_23					=> ila_volume_fifo_din_23,
		ila_volume_fifo_din_24					=> ila_volume_fifo_din_24,
		ila_volume_fifo_din_25					=> ila_volume_fifo_din_25,
		ila_volume_fifo_din_26					=> ila_volume_fifo_din_26,
		ila_volume_fifo_din_27					=> ila_volume_fifo_din_27, 
		ila_volume_fifo_din_28					=> ila_volume_fifo_din_28,
		ila_volume_fifo_din_29					=> ila_volume_fifo_din_29,
		ila_volume_fifo_din_30					=> ila_volume_fifo_din_30, 
		ila_volume_fifo_din_31					=> ila_volume_fifo_din_31,
		ila_volume_fifo_din_32					=> ila_volume_fifo_din_32,
		ila_volume_fifo_almost_empty 			=> ila_volume_fifo_almost_empty,
		ila_volume_fifo_almost_full 			=> ila_volume_fifo_almost_full,
		ila_volume_fifo_empty 					=> ila_volume_fifo_empty,
		ila_volume_fifo_full 					=> ila_volume_fifo_full,
		ila_volume_fifo_rd_en 					=> ila_volume_fifo_rd_en,
		ila_volume_fifo_valid 					=> ila_volume_fifo_valid,
		ila_volume_fifo_wr_en 					=> ila_volume_fifo_wr_en,

		--CHANNEL UNIT WEIGHT FIFO 
		ila_weight_fifo_din_0					=> ila_weight_fifo_din_0,
		ila_weight_fifo_din_1					=> ila_weight_fifo_din_1,
		ila_weight_fifo_din_2					=> ila_weight_fifo_din_2,
		ila_weight_fifo_din_3					=> ila_weight_fifo_din_3,
		ila_weight_fifo_din_4					=> ila_weight_fifo_din_4,
		ila_weight_fifo_din_5					=> ila_weight_fifo_din_5,
		ila_weight_fifo_din_6					=> ila_weight_fifo_din_6,
		ila_weight_fifo_din_7					=> ila_weight_fifo_din_7,
		ila_weight_fifo_din_8					=> ila_weight_fifo_din_8,
		ila_weight_fifo_din_9					=> ila_weight_fifo_din_9,
		ila_weight_fifo_din_10					=> ila_weight_fifo_din_10,
		ila_weight_fifo_din_11					=> ila_weight_fifo_din_11,
		ila_weight_fifo_din_12					=> ila_weight_fifo_din_12,
		ila_weight_fifo_din_13					=> ila_weight_fifo_din_13,
		ila_weight_fifo_din_14					=> ila_weight_fifo_din_14,
		ila_weight_fifo_din_15					=> ila_weight_fifo_din_15,
		ila_weight_fifo_din_16					=> ila_weight_fifo_din_16,
		ila_weight_fifo_din_17					=> ila_weight_fifo_din_17,
		ila_weight_fifo_din_18					=> ila_weight_fifo_din_18,
		ila_weight_fifo_din_19					=> ila_weight_fifo_din_19,
		ila_weight_fifo_din_20					=> ila_weight_fifo_din_20,
		ila_weight_fifo_din_21					=> ila_weight_fifo_din_21,
		ila_weight_fifo_din_22					=> ila_weight_fifo_din_22, 
		ila_weight_fifo_din_23					=> ila_weight_fifo_din_23,
		ila_weight_fifo_din_24					=> ila_weight_fifo_din_24,
		ila_weight_fifo_din_25					=> ila_weight_fifo_din_25,
		ila_weight_fifo_din_26					=> ila_weight_fifo_din_26,
		ila_weight_fifo_din_27					=> ila_weight_fifo_din_27, 
		ila_weight_fifo_din_28					=> ila_weight_fifo_din_28,
		ila_weight_fifo_din_29					=> ila_weight_fifo_din_29,
		ila_weight_fifo_din_30					=> ila_weight_fifo_din_30, 
		ila_weight_fifo_din_31					=> ila_weight_fifo_din_31,
		ila_weight_fifo_din_32					=> ila_weight_fifo_din_32,
		ila_weight_fifo_almost_full 			=> ila_weight_fifo_almost_full,
		ila_weight_fifo_full 					=> ila_weight_fifo_full,
		ila_weight_fifo_wr_en 					=> ila_weight_fifo_wr_en,
		ila_weight_fifo_empty 					=> ila_weight_fifo_empty,
		ila_weight_fifo_rd_en 					=> ila_weight_fifo_rd_en,
		ila_weight_fifo_valid 					=> ila_weight_fifo_valid,
		ila_weight_fifo_almost_empty			=> ila_weight_fifo_almost_empty,
		ila_weight_rst 							=> ila_weight_rst,

		--CHANNEL UNIT VOLUME MUX 
		ila_volume_mux_prev_data_wr_en 			=> ila_volume_mux_prev_data_wr_en,
		ila_volume_mux_new_data_en 				=> ila_volume_mux_new_data_en,
		ila_volume_mux_prev_data_en 			=> ila_volume_mux_prev_data_en,
		ila_volume_mux_recycled_data_wr_en 		=> ila_volume_mux_recycled_data_wr_en,
		ila_volume_mux_recycled_data_en 		=> ila_volume_mux_recycled_data_en,
		ila_volume_stack_fifo_wr_en 			=> ila_volume_stack_fifo_wr_en,
		ila_volume_stack_fifo_almost_full 		=> ila_volume_stack_fifo_almost_full,
		ila_volume_stack_fifo_full 				=> ila_volume_stack_fifo_full ,
		ila_get_volume_row 						=> ila_get_volume_row,

		--CHANNEL UNIT ROUTERS
		ila_router_disable_channel_n 			=> ila_router_disable_channel_n,
		ila_router_convolution_en 				=> ila_router_convolution_en,
		ila_router_affine_en 					=> ila_router_affine_en,
		ila_router_acc_ready 					=> ila_router_acc_ready,
		ila_router_filter_kernal_loaded 		=> ila_router_filter_kernal_loaded,
		ila_router_conv_complete 				=> ila_router_conv_complete,
		ila_router_affine_complete				=> ila_router_affine_complete,
		ila_router_volume_ready 				=> ila_router_volume_ready,


		--CHANNEL UNIT VOLUME ROUTER
		ila_volume_router_state					=> ila_volume_router_state,
		ila_volume_router_ready					=> ila_volume_router_ready,
		--ila_volume_router_padded_volume_size 	=> ila_volume_router_padded_volume_size,
		ila_volume_router_stop_stack_en 		=> ila_volume_router_stop_stack_en,
		ila_volume_router_calc_params			=> ila_volume_router_calc_params,
		ila_volume_router_data_return_wr_en 	=> ila_volume_router_data_return_wr_en,
		ila_volume_router_data_valid 			=> ila_volume_router_data_valid,
		ila_volume_router_loaded_rows_processed => ila_volume_router_loaded_rows_processed,
		ila_volume_router_snake_fill_complete 	=> ila_volume_router_snake_fill_complete,
		ila_volume_router_empty_data_en			=> ila_volume_router_empty_data_en,
		ila_volume_router_empty_data_complete 	=> ila_volume_router_empty_data_complete,
		
		ila_volume_router_element_counter 		=> ila_volume_router_element_counter,   
		ila_volume_router_filter_counter 		=> ila_volume_router_filter_counter,
		ila_volume_router_column_counter		=> ila_volume_router_column_counter ,  
		ila_volume_router_delay_shift_register 	=> ila_volume_router_delay_shift_register,
		ila_volume_router_pad_16bit				=> ila_volume_router_pad_16bit,
		ila_volume_router_padded_volume_size	=> ila_volume_router_padded_volume_size,
		ila_volume_router_empty_done			=> ila_volume_router_empty_done,

		--CHANNEL UNIT WEIGHT ROUTER
		ila_weight_router_state					=> ila_weight_router_state, 
		ila_weight_router_ready						=> ila_weight_router_ready,
		ila_weight_router_filter_data_return_wr_en 	=> ila_weight_router_filter_data_return_wr_en,
		ila_weight_router_clear_weights 			=> ila_weight_router_clear_weights,
		ila_weight_router_data_valid 				=> ila_weight_router_data_valid,
		ila_weight_router_filter_element_counter 		=> ila_weight_router_filter_element_counter, 
		ila_weight_router_delay_shift_register 		=> ila_weight_router_delay_shift_register, 
		--CHANNEL UNIT WEIGHT MUX
		ila_weight_mux_recycle_filter_data_wr_en => ila_weight_mux_recycle_filter_data_wr_en,
		ila_prev_weight_data 					=> ila_prev_weight_data,
		ila_weight_mux_new_data_en 				=> ila_weight_mux_new_data_en,
		ila_weight_mux_prev_data_en 			=> ila_weight_mux_prev_data_en,
		ila_weight_mux_recycled_data_en 		=> ila_weight_mux_recycled_data_en,
		ila_weight_mux_almost_full 				=> ila_weight_mux_almost_full ,
		ila_weight_mux_full 					=> ila_weight_mux_full,
		ila_weight_mux_wr_en  					=> ila_weight_mux_wr_en,
		ila_weight_mux_prev_data_wr_en 			=> ila_weight_mux_prev_data_wr_en,
		ila_get_weight_row 						=> ila_get_weight_row,

		--BIAS DATA FIFO
		ila_bias_fifo_almost_empty 				=> ila_bias_fifo_almost_empty,
		ila_bias_fifo_dout 						=> ila_bias_fifo_dout,
		ila_bias_fifo_empty 					=> ila_bias_fifo_empty,
		ila_bias_fifo_full						=> ila_bias_fifo_full,
		ila_bias_fifo_almost_full				=> ila_bias_fifo_almost_full,
		ila_bias_fifo_rd_en						=> ila_bias_fifo_rd_en,
		ila_bias_fifo_valid 					=> ila_bias_fifo_valid,
		ila_bias_fifo_data_return		        => ila_bias_fifo_data_return,
		ila_bias_fifo_data_return_en            => ila_bias_fifo_data_return_en,
		ila_bias_fifo_return_wr_en	            => ila_bias_fifo_return_wr_en,
		ila_bias_fifo_din_mux					=> ila_bias_fifo_din_mux,
		ila_bias_fifo_wr_en_mux					=> ila_bias_fifo_wr_en_mux,

		--PREVIOUS DATA FIFO
		ila_prev_fifo_almost_empty 				=> ila_prev_fifo_almost_empty,
		ila_prev_fifo_dout 						=> ila_prev_fifo_dout,
		ila_prev_fifo_empty 					=> ila_prev_fifo_empty,
		ila_prev_fifo_rd_en						=> ila_prev_fifo_rd_en,
		ila_prev_fifo_valid 					=> ila_prev_fifo_valid,

		ila_reset 								=> ila_reset,
		ila_reset_weight_fifo_n 				=> ila_reset_weight_fifo_n,

		--ILA CONTROLLER SIGNALS 
		ila_controller_state						=> ila_controller_state,
		ila_controller_filter_iterations_required	=> ila_controller_filter_iterations_required,
		ila_controller_filters_in_set				=> ila_controller_filters_in_set,
		ila_controller_accumulator_en				=> ila_controller_accumulator_en,
		ila_controller_fifo_clear 					=> ila_controller_fifo_clear,
		ila_controller_fifo_reset 					=> ila_controller_fifo_reset,
		ila_controller_channels_allowed 			=> ila_controller_channels_allowed,
		ila_controller_more_dsps_needed				=> ila_controller_more_dsps_needed,
		ila_controller_operation_complete 			=> ila_controller_operation_complete,
		ila_controller_num_iterations 				=> ila_controller_num_iterations,
		ila_controller_all_channels_processed 		=> ila_controller_all_channels_processed,
		ila_controller_input_volume_row_counter 	=> ila_controller_input_volume_row_counter,
		ila_controller_volume_channel_counter		=> ila_controller_volume_channel_counter,
		ila_controller_weight_channel_counter		=> ila_controller_weight_channel_counter,
		ila_controller_filter_row_counter 			=> ila_controller_filter_row_counter,
		ila_controller_filter_column_counter 		=> ila_controller_filter_column_counter,
		ila_controller_filter_counter				=> ila_controller_filter_counter,
		ila_controller_volume_row_counter 			=> ila_controller_volume_row_counter,
		ila_controller_volume_column_counter 		=> ila_controller_volume_column_counter,
		ila_controller_volume_index_counter		    => ila_controller_volume_index_counter,
		ila_controller_weight_index_counter 		=> ila_controller_weight_index_counter,
		ila_controller_padded_volume_row_size 		=> ila_controller_padded_volume_row_size,
		ila_controller_padded_volume_column_size 	=> ila_controller_padded_volume_column_size,
		ila_controller_volume_rows_processed 		=> ila_controller_volume_rows_processed,
		ila_controller_element_counter				=> ila_controller_element_counter,
		ila_controller_pad_counter					=> ila_controller_pad_counter,
		ila_controller_channels_processed			=> ila_controller_channels_processed,
		ila_controller_pad_8bit					    => ila_controller_pad_8bit,
		ila_controller_pad_10bit					=> ila_controller_pad_10bit,
		ila_controller_pad_16bit					=> ila_controller_pad_16bit,
		ila_controller_input_volume_size_10bit 	    => ila_controller_input_volume_size_10bit,
		ila_controller_volume_row					=> ila_controller_volume_row,
		ila_controller_iteration_calc				=> ila_controller_iteration_calc,
		ila_controller_iteration_counter			=> ila_controller_iteration_counter,
		ila_controller_filter_iteration_counter     => ila_controller_filter_iteration_counter,
		ila_controller_channel_iteration_counter  	=> ila_controller_channel_iteration_counter,
		ila_controller_stride_counter				=> ila_controller_stride_counter,
		ila_controller_pad_row_counter	  			=> ila_controller_pad_row_counter,
		ila_controller_filter_iteration_complete	=> ila_controller_filter_iteration_complete,
		ila_controller_channel_iteration_complete	=> ila_controller_channel_iteration_complete,
		ila_controller_fifo_clear_counter 			=> ila_controller_fifo_clear_counter,
		ila_controller_channel_iteration_calc		=> ila_controller_channel_iteration_calc,
		ila_controller_channel_iterations_required	=> ila_controller_channel_iterations_required,	
		ila_controller_filter_iteration_calc		=> ila_controller_filter_iteration_calc,
		ila_controller_channel_mask				    => ila_controller_channel_mask,
		ila_controller_weight_filter_size 			=> ila_controller_weight_filter_size,
		ila_controller_input_volume_size			=> ila_controller_input_volume_size,
		ila_controller_input_volume_channels		=> ila_controller_input_volume_channels,
		ila_controller_weight_filter_channels		=> ila_controller_weight_filter_channels,
		ila_controller_number_of_filters			=> ila_controller_number_of_filters,
		ila_controller_channels_in_set				=> ila_controller_channels_in_set,
		ila_controller_stride_index 				=> ila_controller_stride_index ,
		ila_controller_empty_data_complete			=> ila_controller_empty_data_complete,
		
		--ILA ACCUMULATOR SIGNALS
		ila_accumulator_state					    => ila_accumulator_state,
		ila_accumulator_products_array_valid 		=> ila_accumulator_products_array_valid,
		ila_accumulator_kernel_element_counter 		=> ila_accumulator_kernel_element_counter,
		ila_accumulator_delay_shift_register 		=> ila_accumulator_delay_shift_register,
		ila_accumulator_kernel_delay_shift_register => ila_accumulator_kernel_delay_shift_register,
		ila_accumulator_acc_ready 					=> ila_accumulator_acc_ready,
		ila_accumulator_acc_complete 				=> ila_accumulator_acc_complete,
		ila_accumulator_acc_valid 					=> ila_accumulator_acc_valid,
		ila_accumulator_acc_data 					=> ila_accumulator_acc_data,
		ila_accumulator_column_counter 				=> ila_accumulator_column_counter,
		ila_accumulator_filter_counter 				=> ila_accumulator_filter_counter,
		ila_accumulator_kernel_flag 				=> ila_accumulator_kernel_flag,
		ila_accumulator_que_acc_data            	=> ila_accumulator_que_acc_data,
		ila_accumulator_que_acc_valid 		    	=> ila_accumulator_que_acc_valid,
		ila_accumulator_que_fifo_din 				=> ila_accumulator_que_fifo_din,
		ila_accumulator_que_fifo_wr_en 				=> ila_accumulator_que_fifo_wr_en,
		ila_accumulator_que_fifo_rd_en 				=> ila_accumulator_que_fifo_rd_en,
		ila_accumulator_que_fifo_dout 				=> ila_accumulator_que_fifo_dout,
		ila_accumulator_que_fifo_full 				=> ila_accumulator_que_fifo_full,
		ila_accumulator_que_fifo_almost_full 		=> ila_accumulator_que_fifo_almost_full,
		ila_accumulator_que_fifo_empty 				=> ila_accumulator_que_fifo_empty,
		ila_accumulator_que_fifo_almost_empty 		=> ila_accumulator_que_fifo_almost_empty,
		ila_accumulator_que_fifo_valid 				=> ila_accumulator_que_fifo_valid,
		ila_accumulator_channels_allowed_counter 	=> ila_accumulator_channels_allowed_counter,
		ila_accumulator_filter_size_counter			=> ila_accumulator_filter_size_counter,
		ila_accumulator_channels_filt_counter 		=> ila_accumulator_channels_filt_counter,
		
		--ILA ACC RELAY SIGNALS 
		ila_acc_relay_state							=> ila_acc_relay_state,
		ila_acc_relay_complete 				        => ila_acc_relay_complete,
		ila_acc_relay_volume_processed 				=> ila_acc_relay_volume_processed,
		ila_acc_relay_iteration_complete			=> ila_acc_relay_iteration_complete,
		ila_acc_relay_filter_counter 				=> ila_acc_relay_filter_counter,
		ila_acc_relay_output_pixel_counter			=> ila_acc_relay_output_pixel_counter,
		ila_acc_relay_volume_row_counter			=> ila_acc_relay_volume_row_counter,
		ila_acc_relay_adder_counter					=> ila_acc_relay_adder_counter,
		ila_acc_relay_addend 						=> ila_acc_relay_addend,
		ila_acc_relay_augend   						=> ila_acc_relay_augend,
		ila_acc_relay_sum_result 					=> ila_acc_relay_sum_result,
		ila_acc_relay_first_channel_set_complete 	=> ila_acc_relay_first_channel_set_complete,
		ila_acc_relay_volume_data 					=> ila_acc_relay_volume_data,
		ila_acc_relay_bias_data						=> ila_acc_relay_bias_data,
		ila_acc_relay_prev_data						=> ila_acc_relay_prev_data,
		ila_acc_relay_iteration_counter				=> ila_acc_relay_iteration_counter,
		ila_acc_relay_bias_read 					=> ila_acc_relay_bias_read,
		ila_acc_relay_prev_read 					=> ila_acc_relay_prev_read,
		ila_acc_relay_filter_iteration_counter		=> ila_acc_relay_filter_iteration_counter,
		ila_acc_relay_affine_en						=> ila_acc_relay_affine_en, 
		
		--MULTIPLIER
		ila_multiplier_mult_a_0						=> ila_multiplier_mult_a_0,
		ila_multiplier_mult_a_1						=> ila_multiplier_mult_a_1, 
		ila_multiplier_mult_a_2						=> ila_multiplier_mult_a_2,
		ila_multiplier_mult_a_3						=> ila_multiplier_mult_a_3,
		ila_multiplier_mult_a_4						=> ila_multiplier_mult_a_4,
		ila_multiplier_mult_a_5						=> ila_multiplier_mult_a_5,
		ila_multiplier_mult_a_6						=> ila_multiplier_mult_a_6,
		ila_multiplier_mult_a_7						=> ila_multiplier_mult_a_7,
		ila_multiplier_mult_a_8						=> ila_multiplier_mult_a_8, 
		ila_multiplier_mult_a_9						=> ila_multiplier_mult_a_9, 
		ila_multiplier_mult_a_10					=> ila_multiplier_mult_a_10,
		ila_multiplier_mult_a_11					=> ila_multiplier_mult_a_11,
		ila_multiplier_mult_a_12					=> ila_multiplier_mult_a_12,
		ila_multiplier_mult_a_13					=> ila_multiplier_mult_a_13, 
		ila_multiplier_mult_a_14					=> ila_multiplier_mult_a_14,
		ila_multiplier_mult_a_15					=> ila_multiplier_mult_a_15, 
		ila_multiplier_mult_a_16					=> ila_multiplier_mult_a_16,
		ila_multiplier_mult_a_17					=> ila_multiplier_mult_a_17, 
		ila_multiplier_mult_a_18					=> ila_multiplier_mult_a_18,
		ila_multiplier_mult_a_19					=> ila_multiplier_mult_a_19,
		ila_multiplier_mult_a_20					=> ila_multiplier_mult_a_20,
		ila_multiplier_mult_a_21					=> ila_multiplier_mult_a_21,
		ila_multiplier_mult_a_22					=> ila_multiplier_mult_a_22,
		ila_multiplier_mult_a_23					=> ila_multiplier_mult_a_23,
		ila_multiplier_mult_a_24					=> ila_multiplier_mult_a_24,
		ila_multiplier_mult_a_25					=> ila_multiplier_mult_a_25,
		ila_multiplier_mult_a_26					=> ila_multiplier_mult_a_26,
		ila_multiplier_mult_a_27					=> ila_multiplier_mult_a_27,
		ila_multiplier_mult_a_28					=> ila_multiplier_mult_a_28,
		ila_multiplier_mult_a_29					=> ila_multiplier_mult_a_29, 
		ila_multiplier_mult_a_30					=> ila_multiplier_mult_a_30,
		ila_multiplier_mult_a_31					=> ila_multiplier_mult_a_31,
		ila_multiplier_mult_a_32					=> ila_multiplier_mult_a_32,

		ila_multiplier_mult_b_0						=> ila_multiplier_mult_b_0,
		ila_multiplier_mult_b_1						=> ila_multiplier_mult_b_1, 
		ila_multiplier_mult_b_2						=> ila_multiplier_mult_b_2,
		ila_multiplier_mult_b_3						=> ila_multiplier_mult_b_3,
		ila_multiplier_mult_b_4						=> ila_multiplier_mult_b_4,
		ila_multiplier_mult_b_5						=> ila_multiplier_mult_b_5, 
		ila_multiplier_mult_b_6						=> ila_multiplier_mult_b_6,
		ila_multiplier_mult_b_7						=> ila_multiplier_mult_b_7,
		ila_multiplier_mult_b_8						=> ila_multiplier_mult_b_8,
		ila_multiplier_mult_b_9						=> ila_multiplier_mult_b_9, 
		ila_multiplier_mult_b_10					=> ila_multiplier_mult_b_10,
		ila_multiplier_mult_b_11					=> ila_multiplier_mult_b_11, 
		ila_multiplier_mult_b_12					=> ila_multiplier_mult_b_12,
		ila_multiplier_mult_b_13					=> ila_multiplier_mult_b_13,
		ila_multiplier_mult_b_14					=> ila_multiplier_mult_b_14,
		ila_multiplier_mult_b_15					=> ila_multiplier_mult_b_15,
		ila_multiplier_mult_b_16					=> ila_multiplier_mult_b_16,
		ila_multiplier_mult_b_17					=> ila_multiplier_mult_b_17,
		ila_multiplier_mult_b_18					=> ila_multiplier_mult_b_18,
		ila_multiplier_mult_b_19					=> ila_multiplier_mult_b_19,
		ila_multiplier_mult_b_20					=> ila_multiplier_mult_b_20,
		ila_multiplier_mult_b_21					=> ila_multiplier_mult_b_21,
		ila_multiplier_mult_b_22					=> ila_multiplier_mult_b_22,
		ila_multiplier_mult_b_23					=> ila_multiplier_mult_b_23,
		ila_multiplier_mult_b_24					=> ila_multiplier_mult_b_24, 
		ila_multiplier_mult_b_25					=> ila_multiplier_mult_b_25,
		ila_multiplier_mult_b_26					=> ila_multiplier_mult_b_26,
		ila_multiplier_mult_b_27					=> ila_multiplier_mult_b_27,
		ila_multiplier_mult_b_28					=> ila_multiplier_mult_b_28,
		ila_multiplier_mult_b_29					=> ila_multiplier_mult_b_29, 
		ila_multiplier_mult_b_30					=> ila_multiplier_mult_b_30, 
		ila_multiplier_mult_b_31					=> ila_multiplier_mult_b_31, 
		ila_multiplier_mult_b_32					=> ila_multiplier_mult_b_32,  

		ila_products_array_0						=> ila_products_array_0, 
		ila_products_array_1						=> ila_products_array_1, 
		ila_products_array_2						=> ila_products_array_2,  
		ila_products_array_3						=> ila_products_array_3,  
		ila_products_array_4						=> ila_products_array_4,  
		ila_products_array_5						=> ila_products_array_5,  
		ila_products_array_6						=> ila_products_array_6, 
		ila_products_array_7						=> ila_products_array_7,  
		ila_products_array_8						=> ila_products_array_8, 
		ila_products_array_9						=> ila_products_array_9, 
		ila_products_array_10						=> ila_products_array_10, 
		ila_products_array_11						=> ila_products_array_11, 
		ila_products_array_12						=> ila_products_array_12,  
		ila_products_array_13						=> ila_products_array_13, 
		ila_products_array_14						=> ila_products_array_14, 
		ila_products_array_15						=> ila_products_array_15,  
		ila_products_array_16						=> ila_products_array_16, 
		ila_products_array_17						=> ila_products_array_17, 
		ila_products_array_18						=> ila_products_array_18, 
		ila_products_array_19						=> ila_products_array_19, 
		ila_products_array_20						=> ila_products_array_20, 
		ila_products_array_21						=> ila_products_array_21, 
		ila_products_array_22						=> ila_products_array_22, 
		ila_products_array_23						=> ila_products_array_23, 
		ila_products_array_24						=> ila_products_array_24, 
		ila_products_array_25						=> ila_products_array_25,  
		ila_products_array_26						=> ila_products_array_26,  
		ila_products_array_27						=> ila_products_array_27,  
		ila_products_array_28						=> ila_products_array_28,  
		ila_products_array_29						=> ila_products_array_29,  
		ila_products_array_30						=> ila_products_array_30,  
		ila_products_array_31						=> ila_products_array_31, 
		ila_products_array_32						=> ila_products_array_32, 
		
		--ACCUMULATOR SIGNALS		
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
 
  
  
  
  
INPUT_BUFFER : conv_input_buffer_32
  port map(
       almost_empty      => inbuff_almost_empty,
       almost_full       => inbuff_almost_full,
       din               => i_inbuff_din,
       dout              => inbuff_dout,
       empty             => inbuff_empty,
       full              => inbuff_full,
       rd_clk            => i_master_clk,
       rd_en             => inbuff_rd_en,
       rst               => ext_reset,
       valid             => inbuff_valid,
       wr_clk            => i_master_clk,
       wr_en             => i_inbuff_wr_en
  );

OUTPUT_BUFFER : conv_output_buffer_32
  port map(
       almost_empty      => outbuff_almost_empty,
       almost_full       => outbuff_almost_full,
       din               => outbuff_din,
       dout              => outbuff_dout,
       empty             => outbuff_empty,
       full              => outbuff_full,
       rd_clk            => i_master_clk,
       rd_en             => i_outbuff_rd_en,
       rst               => ext_reset,
       valid             => outbuff_valid,
       wr_clk            => i_master_clk,
       wr_en             => outbuff_wr_en
  );

RELU_ACTIVATION_UNIT : relu_unit
  generic map(
       g_conv_width => g_conv_width,
       g_relu_width => g_relu_width
  )
  port map(
       i_clk                   => i_master_clk,
       i_enable                => '1',
       i_fifo_almost_full      => outbuff_almost_full,
       i_fifo_full             => outbuff_full,
       i_normalized_data       => conv_volume_out, --normalized_data,
       i_normalized_data_valid => conv_data_valid, --normalized_data_valid,
       i_relu_en               => relu_en,
       i_reset_n               => i_ext_reset_n,
       o_relu_out              => outbuff_din,
       o_wr_en                 => outbuff_wr_en
  );


end arch;
