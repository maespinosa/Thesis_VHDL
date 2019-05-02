library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Convolution_Layer_32bit_v1_0 is
	generic (
		-- Users to add parameters here
        G_DATA_WIDTH : integer := 32; 
		G_DSPS_USED : integer := 33;
	   G_ADDER_DELAY	  : integer := 12; 
	   G_MULT_DELAY		  : integer := 8; 
	   G_NUM_ADDER_LAYERS : integer := 6; 
		
		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M00_AXI
		C_M00_AXI_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M00_AXI_BURST_LEN	: integer	:= 16;
		C_M00_AXI_ID_WIDTH	: integer	:= 1;
		C_M00_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M00_AXI_DATA_WIDTH	: integer	:= 32;
		C_M00_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M00_AXI_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here
		i_ext_reset_n : in std_logic; 
        o_convolution_done : out std_logic; 
		o_data_written : out std_logic; 
		o_cycle : out std_logic_vector(63 downto 0);
		o_epoch : out std_logic_vector(63 downto 0);  
		
		 ila_master_axi_awaddr				: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		 ila_master_axi_awlen    			: out std_logic_vector(7 downto 0); 
		 ila_master_axi_awvalid				: out std_logic;
		 ila_master_axi_wdata				: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		 ila_master_axi_wlast				: out std_logic;
		 ila_master_axi_wvalid				: out std_logic;
		 ila_master_axi_wstrb    			: out std_logic_vector(3 downto 0); 
		 ila_master_axi_bready				: out std_logic;
		 ila_master_axi_araddr				: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		 ila_master_axi_arlen    			: out std_logic_vector(7 downto 0); 
		 ila_master_axi_arsize				: out std_logic_vector(2 downto 0); 
		 ila_master_axi_arvalid				: out std_logic;
		 ila_master_axi_rready				: out std_logic;
		 ila_master_axi_awready				: out std_logic;
		 ila_master_axi_wready				: out std_logic; 
		 ila_master_axi_bvalid				: out std_logic;
		 ila_master_axi_arready				: out std_logic;
		 ila_master_axi_rdata				: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		 ila_master_axi_rlast				: out std_logic;
		 ila_master_axi_rvalid 				: out std_logic;
		 ila_master_wbc 						: out unsigned(7 downto 0); 
		 ila_master_rbc						: out unsigned(7 downto 0);
		 ila_master_input_data_addr_reg    	: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_output_data_addr_reg   	: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_weights_addr_reg      	: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_bias_addr_reg          	: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_prev_addr_reg			: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 	
		 ila_master_input_addr_counter	  	: out unsigned(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_output_addr_counter	  	: out unsigned(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_weights_addr_counter	  	: out unsigned(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_bias_addr_counter	  	: out unsigned(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_prev_addr_counter	  	: out unsigned(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_row_counter			  	: out unsigned(7 downto 0); 
		 ila_master_out_volume_row_counter 	: out unsigned(7 downto 0); 
		 ila_master_input_volume_row_counter : out unsigned(7 downto 0); 
		 ila_master_channel_counter	      	: out unsigned(15 downto 0); 
		 ila_master_prev_channel_counter	  	: out unsigned(15 downto 0); 
		 ila_master_output_channel_counter 	: out unsigned(15 downto 0); 
		 ila_master_input_channel_counter  	: out unsigned(15 downto 0); 
		 ila_master_writes_remaining 	  	: out unsigned(15 downto 0);
		 ila_master_reads_remaining		 	: out unsigned(31 downto 0);  
		 ila_master_calculated 			  	: out std_logic; 
		 ila_master_column_counter		  	: out unsigned(7 downto 0); 
		 ila_master_more_bursts_needed    	: out std_logic;
		 ila_master_iteration_counter	  	: out unsigned(15 downto 0); 
		 ila_master_channel_loop_counter	  	: out unsigned(15 downto 0); 
		 ila_master_row_loop_counter		  	: out unsigned(7 downto 0); 
		 ila_master_busy                     : out std_logic; 	
		 ila_master_stride_counter           : out unsigned(3 downto 0); 
		 ila_master_filter_counter			: out unsigned(15 downto 0); 
		 ila_master_bias_values_loaded		: out std_logic; 
		 ila_master_channels_allowed			: out std_logic_vector(15 downto 0); 
		 ila_master_operation_complete 		: out std_logic; 
		 ila_master_weight_index				: out unsigned(31 downto 0); 
		 ila_master_input_index				: out unsigned(31 downto 0); 
		 ila_master_output_index				: out unsigned(31 downto 0); 
		 ila_master_prev_index 				: out unsigned(31 downto 0); 
		 ila_master_last_channel_base		: out unsigned(31 downto 0); 
		 ila_master_out_last_channel_base	: out unsigned(31 downto 0); 
		 ila_master_prev_last_channel_base	: out unsigned(31 downto 0); 
		 ila_master_data_written 			: out std_logic; 
		 ila_master_output_base_pixel 		: out unsigned(31 downto 0); 
		 ila_master_input_arsize 			: out std_logic_vector(2 downto 0); 
		 ila_master_debug_mode 				: out std_logic; 
		 ila_master_affine_filter_iteration_counter : out unsigned(15 downto 0); 
		 ila_master_convolution_done 		: out std_logic; 
		 ila_master_fsm_state				: out std_logic_vector(4 downto 0); 
		
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
		ila_kernel_addend_shift_register_10 		: out std_logic_vector(g_data_width-1 downto 0); 
		
		
		ila_master_affine_select 				: out std_logic; 
		ila_master_relu_en 						: out std_logic;
		ila_master_weights_loaded				: out std_logic; 
		ila_master_conv_complete 				: out std_logic;
		ila_master_more_dsps        			: out std_logic;
		ila_master_iteration_complete 			: out std_logic;
		--ila_master_operation_complete			: out std_logic;
		ila_master_volume_complete				: out std_logic;
		--ila_master_channels_allowed				: out std_logic_vector(7 downto 0); 
		ila_master_dsps_used					: out std_logic_vector(7 downto 0); 	
		ila_master_iterations_required 			: out std_logic_vector(7 downto 0); 
		ila_master_row_complete 				: out std_logic;
		ila_master_layer_ready 					: out std_logic;  
		ila_master_filter_iterations_required 	: out std_logic_vector(15 downto 0); 
		ila_master_acc_row_complete				: out std_logic;
		ila_master_input_volume_height        	: out std_logic_vector(7 downto 0); 
		ila_master_input_volume_width         	: out std_logic_vector(7 downto 0); 
		ila_master_input_volume_channels      	: out std_logic_vector(15 downto 0); 
		ila_master_output_volume_height       	: out std_logic_vector(7 downto 0); 
		ila_master_output_volume_width		   	: out std_logic_vector(7 downto 0); 
		ila_master_output_volume_channels     	: out std_logic_vector(11 downto 0); 
		ila_master_weight_filter_height       	: out std_logic_vector(3 downto 0); 
		ila_master_weight_filter_width        	: out std_logic_vector(3 downto 0); 
		ila_master_weight_filter_channels     	: out std_logic_vector(15 downto 0); 
		ila_master_number_of_filters          	: out std_logic_vector(15 downto 0); 
		ila_master_stride 					   	: out std_logic_vector(3 downto 0); 
		ila_master_pad                        	: out std_logic_vector(3 downto 0); 
		--ila_master_channels_allowed				: out std_logic_vector(15 downto 0);
		ila_master_bias_length					: out std_logic_vector(15 downto 0); 
		ila_master_ch_al_filt					: out std_logic_vector(15 downto 0); 
		ila_master_affine_channels_in_set 		: out std_logic_vector(15 downto 0); 
		ila_master_affine_filters_in_set 		: out std_logic_vector(15 downto 0); 
		ila_master_channels_iterations          : out std_logic_vector(15 downto 0); 
		ila_master_affine_filters_iterations    : out std_logic_vector(15 downto 0); 
		ila_master_start 						: out std_logic;

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
		s00_axi_aresetn	: in std_logic;
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;

		-- Ports of Axi Master Bus Interface M00_AXI
		--m00_axi_init_axi_txn	: in std_logic;
		m00_axi_txn_done	: out std_logic;
		m00_axi_error	: out std_logic;
		m00_axi_aclk	: in std_logic;
		m00_axi_aresetn	: in std_logic;
		m00_axi_awid	: out std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_awaddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_awlen	: out std_logic_vector(7 downto 0);
		m00_axi_awsize	: out std_logic_vector(2 downto 0);
		m00_axi_awburst	: out std_logic_vector(1 downto 0);
		m00_axi_awlock	: out std_logic;
		m00_axi_awcache	: out std_logic_vector(3 downto 0);
		m00_axi_awprot	: out std_logic_vector(2 downto 0);
		m00_axi_awqos	: out std_logic_vector(3 downto 0);
		m00_axi_awuser	: out std_logic_vector(C_M00_AXI_AWUSER_WIDTH-1 downto 0);
		m00_axi_awvalid	: out std_logic;
		m00_axi_awready	: in std_logic;
		m00_axi_wdata	: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		m00_axi_wstrb	: out std_logic_vector(C_M00_AXI_DATA_WIDTH/8-1 downto 0);
		m00_axi_wlast	: out std_logic;
		m00_axi_wuser	: out std_logic_vector(C_M00_AXI_WUSER_WIDTH-1 downto 0);
		m00_axi_wvalid	: out std_logic;
		m00_axi_wready	: in std_logic;
		m00_axi_bid	: in std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_bresp	: in std_logic_vector(1 downto 0);
		--m00_axi_buser	: in std_logic_vector(C_M00_AXI_BUSER_WIDTH-1 downto 0);
		m00_axi_bvalid	: in std_logic;
		m00_axi_bready	: out std_logic;
		m00_axi_arid	: out std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_araddr	: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		m00_axi_arlen	: out std_logic_vector(7 downto 0);
		m00_axi_arsize	: out std_logic_vector(2 downto 0);
		m00_axi_arburst	: out std_logic_vector(1 downto 0);
		m00_axi_arlock	: out std_logic;
		m00_axi_arcache	: out std_logic_vector(3 downto 0);
		m00_axi_arprot	: out std_logic_vector(2 downto 0);
		m00_axi_arqos	: out std_logic_vector(3 downto 0);
		m00_axi_aruser	: out std_logic_vector(C_M00_AXI_ARUSER_WIDTH-1 downto 0);
		m00_axi_arvalid	: out std_logic;
		m00_axi_arready	: in std_logic;
		m00_axi_rid	: in std_logic_vector(C_M00_AXI_ID_WIDTH-1 downto 0);
		m00_axi_rdata	: in std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		m00_axi_rresp	: in std_logic_vector(1 downto 0);
		m00_axi_rlast	: in std_logic;
		--m00_axi_ruser	: in std_logic_vector(C_M00_AXI_RUSER_WIDTH-1 downto 0);
		m00_axi_rvalid	: in std_logic;
		m00_axi_rready	: out std_logic
	);
end Convolution_Layer_32bit_v1_0;

architecture arch_imp of Convolution_Layer_32bit_v1_0 is

	-- component declaration
	component Convolution_Layer_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;	
		C_S_AXI_ADDR_WIDTH	: integer	:= 6
		);
		port (
		
		i_control_reg             : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_status_reg              : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    i_input_data_addr_reg     : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	    i_output_data_addr_reg    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    i_weights_addr_reg		  : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    i_input_volume_params_reg : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    i_output_volume_params_reg : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    i_weight_params_reg        : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    i_conv_params_reg		   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_norm_params_0_reg        : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_norm_params_1_reg        : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_norm_params_2_reg        : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_bias_addr_reg            : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_bias_params_reg          : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_weight_multiple_0_reg    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_weight_multiple_1_reg	   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_input_multiple_0_reg    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_input_multiple_1_reg	   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_output_multiple_0_reg    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_output_multiple_1_reg	   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		i_affine_params_reg_0		   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		i_affine_params_reg_1		   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		
	    o_control_reg             : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    o_status_reg              : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    o_input_data_addr_reg     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	    o_output_data_addr_reg    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    o_weights_addr_reg		  : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    o_input_volume_params_reg : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    o_output_volume_params_reg : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    o_weight_params_reg        : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
	    o_conv_params_reg          : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_norm_params_0_reg        : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_norm_params_1_reg        : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_norm_params_2_reg        : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_bias_addr_reg            : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_bias_params_reg          : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_weight_multiple_0_reg    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_weight_multiple_1_reg	   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_input_multiple_0_reg    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_input_multiple_1_reg	   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_output_multiple_0_reg    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_output_multiple_1_reg	   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 	
		o_affine_params_reg_0			: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		o_affine_params_reg_1			: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		
	    o_slv_reg_rden			 : out std_logic; 
	    o_slv_reg_wren			 : out std_logic_vector(21 downto 0); 
		
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component Convolution_Layer_v1_0_S00_AXI;

	component Convolution_Layer_v1_0_M00_AXI is
		generic (
		g_data_width : integer := 32; 
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		C_M_AXI_BURST_LEN	: integer	:= 16;
		C_M_AXI_ID_WIDTH	: integer	:= 1;
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		i_ext_reset_n : in std_logic; 
		o_convolution_done : out std_logic; 
		o_data_written : out std_logic; 
		
	   --TO CONVOLVER
	    o_start                    : out std_logic; 
	    o_output_volume_size       : out std_logic_vector(7 downto 0); 
	    o_input_volume_channels    : out std_logic_vector(15 downto 0); 
	    o_input_volume_size        : out std_logic_vector(7 downto 0); 
	    o_number_of_filters        : out std_logic_vector(15 downto 0); 
	    o_weight_filter_channels   : out std_logic_vector(15 downto 0); 
	    o_weight_filter_size       : out std_logic_vector(3 downto 0); 
	    o_pad                      : out std_logic_vector(3 downto 0); 
	    o_stride                   : out std_logic_vector(3 downto 0); 
		o_channels_in_set		   : out std_logic_vector(15 downto 0); 
		o_filters_in_set		   : out std_logic_vector(15 downto 0); 
		o_ch_al_filt			   : out std_logic_vector(15 downto 0); 
		
		o_bias_fifo_din 			  : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		o_bias_fifo_wr_en		  : out std_logic; 	 
		o_bias_values_loaded		  : out std_logic; 
		   
		o_prev_fifo_din				   : out std_logic_vector(g_data_width-1 downto 0); 
		o_prev_fifo_wr_en			   : out std_logic; 
	   
	   
	   -- TO NORMALIZER
	    o_beta                  : out std_logic_vector(g_data_width-1 downto 0); 
	    o_epsilon               : out std_logic_vector(g_data_width-1 downto 0);
	    o_fresh_params          : out std_logic; 
	    o_gamma                 : out std_logic_vector(g_data_width-1 downto 0); 
	    o_mean                  : out std_logic_vector(g_data_width-1 downto 0); 
	    o_variance              : out std_logic_vector(g_data_width-1 downto 0); 
	   
	   --TO RELU UNIT
	    o_relu_en 				: out std_logic; 
	    o_affine_select				   : out std_logic; 
	   --FROM LOGIC
	    i_inbuff_empty             : in STD_LOGIC;
	    i_inbuff_almost_empty      : in STD_LOGIC;
	    i_inbuff_full              : in STD_LOGIC;
	    i_inbuff_almost_full       : in STD_LOGIC;
	    i_inbuff_valid             : in STD_LOGIC; 
	   
	    i_outbuff_dout              : in std_logic_vector(g_data_width-1 downto 0); 
	    i_outbuff_empty             : in STD_LOGIC;
	    i_outbuff_almost_empty      : in STD_LOGIC;
	    i_outbuff_full              : in STD_LOGIC;
	    i_outbuff_almost_full       : in STD_LOGIC;
	    i_outbuff_valid             : in STD_LOGIC; 
		
		i_weights_loaded         : in std_logic; 
		i_conv_complete          : in std_logic; 
		i_more_dsps              : in std_logic; 
		i_iteration_complete     : in std_logic;
		i_volume_complete		 : in std_logic; 
		i_operation_complete     : in std_logic; 
        i_channels_allowed        :in std_logic_vector(7 downto 0); 
        i_dsps_used              : in std_logic_vector(7 downto 0); 	

		i_iterations_required           : in std_logic_vector(7 downto 0); 
		i_row_complete 				   : in std_logic; 
		i_layer_ready					: in std_logic; 
		
		i_filter_iterations_required : in std_logic_vector(15 downto 0); 
		--i_filters_in_set 				: in std_logic_vector(15 downto 0); 
		
		i_prev_fifo_full				   : in std_logic; 
		i_prev_fifo_almost_full		   : in std_logic; 
		--i_prev_fifo_prog_full		   : in std_logic; 
		i_bias_fifo_full				   : in std_logic; 
		i_bias_fifo_almost_full		   : in std_logic; 
		--i_bias_fifo_prog_full		   : in std_logic; 
		
		i_acc_row_complete				: in std_logic; 
		
		--FROM SLAVE INTERFACE
		i_control_reg               : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_status_reg                : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_input_data_addr_reg       : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	    i_output_data_addr_reg      : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_weights_addr_reg		    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_input_volume_params_reg   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_output_volume_params_reg  : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_weight_params_reg         : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_conv_params_reg		    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_norm_params_0_reg 	    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  
		i_norm_params_1_reg 	    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  
		i_norm_params_2_reg 	    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  
		i_bias_addr_reg             : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_bias_params_reg           : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_weight_multiple_0_reg    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_weight_multiple_1_reg	   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_input_multiple_0_reg    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_input_multiple_1_reg	   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_output_multiple_0_reg    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_output_multiple_1_reg	   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_affine_params_reg_0	   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_affine_params_reg_1	   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		
	    i_slv_reg_rden			 : in std_logic; 
	    i_slv_reg_wren			 : in std_logic_vector(21 downto 0); 
		
	   --TO SLAVE INTERFACE
	    o_control_reg               : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_status_reg                : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_input_data_addr_reg       : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	    o_output_data_addr_reg      : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_weights_addr_reg		    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_input_volume_params_reg   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_output_volume_params_reg  : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_weight_params_reg         : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_conv_params_reg		    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_norm_params_0_reg 	    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  
		o_norm_params_1_reg 	    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  
		o_norm_params_2_reg 	    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);  
		o_bias_addr_reg             : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_bias_params_reg           : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_weight_multiple_0_reg    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_weight_multiple_1_reg	   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_input_multiple_0_reg    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_input_multiple_1_reg	   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_output_multiple_0_reg    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_output_multiple_1_reg	   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_affine_params_reg_0	   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_affine_params_reg_1	   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		
		--TO LOGIC 
	    o_inbuff_din			    : out std_logic_vector(g_data_width-1 downto 0); 
	    o_inbuff_wr_en 				: out std_logic; 
	    o_outbuff_rd_en				: out std_logic; 
		
		 ila_master_axi_awaddr				: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		 ila_master_axi_awlen    			: out std_logic_vector(7 downto 0); 
		 ila_master_axi_awvalid				: out std_logic;
		 ila_master_axi_wdata				: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		 ila_master_axi_wlast				: out std_logic;
		 ila_master_axi_wvalid				: out std_logic;
		 ila_master_axi_wstrb    			: out std_logic_vector(3 downto 0); 
		 ila_master_axi_bready				: out std_logic;
		 ila_master_axi_araddr				: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		 ila_master_axi_arlen    			: out std_logic_vector(7 downto 0); 
		 ila_master_axi_arsize				: out std_logic_vector(2 downto 0); 
		 ila_master_axi_arvalid				: out std_logic;
		 ila_master_axi_rready				: out std_logic;
		 ila_master_axi_awready				: out std_logic;
		 ila_master_axi_wready				: out std_logic; 
		 ila_master_axi_bvalid				: out std_logic;
		 ila_master_axi_arready				: out std_logic;
		 ila_master_axi_rdata				: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		 ila_master_axi_rlast				: out std_logic;
		 ila_master_axi_rvalid 				: out std_logic;
		 ila_master_wbc 						: out unsigned(7 downto 0); 
		 ila_master_rbc						: out unsigned(7 downto 0);
		 ila_master_input_data_addr_reg    	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_output_data_addr_reg   	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_weights_addr_reg      	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_bias_addr_reg          	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_prev_addr_reg			: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 	
		 ila_master_input_addr_counter	  	: out unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_output_addr_counter	  	: out unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_weights_addr_counter	  	: out unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_bias_addr_counter	  	: out unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_prev_addr_counter	  	: out unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
		 ila_master_row_counter			  	: out unsigned(7 downto 0); 
		 ila_master_out_volume_row_counter 	: out unsigned(7 downto 0); 
		 ila_master_input_volume_row_counter : out unsigned(7 downto 0); 
		 ila_master_channel_counter	      	: out unsigned(15 downto 0); 
		 ila_master_prev_channel_counter	  	: out unsigned(15 downto 0); 
		 ila_master_output_channel_counter 	: out unsigned(15 downto 0); 
		 ila_master_input_channel_counter  	: out unsigned(15 downto 0); 
		 ila_master_writes_remaining 	  	: out unsigned(15 downto 0);
		 ila_master_reads_remaining		 	: out unsigned(31 downto 0);  
		 ila_master_calculated 			  	: out std_logic; 
		 ila_master_column_counter		  	: out unsigned(7 downto 0); 
		 ila_master_more_bursts_needed    	: out std_logic;
		 ila_master_iteration_counter	  	: out unsigned(15 downto 0); 
		 ila_master_channel_loop_counter	  	: out unsigned(15 downto 0); 
		 ila_master_row_loop_counter		  	: out unsigned(7 downto 0); 
		 ila_master_busy                     : out std_logic; 	
		 ila_master_stride_counter           : out unsigned(3 downto 0); 
		 ila_master_filter_counter			: out unsigned(15 downto 0); 
		 ila_master_bias_values_loaded		: out std_logic; 
		 ila_master_channels_allowed			: out std_logic_vector(15 downto 0); 
		 ila_master_operation_complete 		: out std_logic; 
		 ila_master_weight_index				: out unsigned(31 downto 0); 
		 ila_master_input_index				: out unsigned(31 downto 0); 
		 ila_master_output_index				: out unsigned(31 downto 0); 
		 ila_master_prev_index 				: out unsigned(31 downto 0); 
		 ila_master_last_channel_base		: out unsigned(31 downto 0); 
		 ila_master_out_last_channel_base	: out unsigned(31 downto 0); 
		 ila_master_prev_last_channel_base	: out unsigned(31 downto 0); 
		 ila_master_data_written 			: out std_logic; 
		 ila_master_output_base_pixel 		: out unsigned(31 downto 0); 
		 ila_master_input_arsize 			: out std_logic_vector(2 downto 0); 
		 ila_master_debug_mode 				: out std_logic; 
		 ila_master_affine_filter_iteration_counter : out unsigned(15 downto 0); 
		 ila_master_convolution_done 		: out std_logic; 
		 ila_master_fsm_state				: out std_logic_vector(4 downto 0); 
		 
		ila_master_affine_select 				: out std_logic; 
		ila_master_relu_en 						: out std_logic;
		ila_master_weights_loaded				: out std_logic; 
		ila_master_conv_complete 				: out std_logic;
		ila_master_more_dsps        			: out std_logic;
		ila_master_iteration_complete 			: out std_logic;
		--ila_master_operation_complete			: out std_logic;
		ila_master_volume_complete				: out std_logic;
		--ila_master_channels_allowed				: out std_logic_vector(7 downto 0); 
		ila_master_dsps_used					: out std_logic_vector(7 downto 0); 	
		ila_master_iterations_required 			: out std_logic_vector(7 downto 0); 
		ila_master_row_complete 				: out std_logic;
		ila_master_layer_ready 					: out std_logic;  
		ila_master_filter_iterations_required 	: out std_logic_vector(15 downto 0); 
		ila_master_acc_row_complete				: out std_logic;
		ila_master_input_volume_height        	: out std_logic_vector(7 downto 0); 
		ila_master_input_volume_width         	: out std_logic_vector(7 downto 0); 
		ila_master_input_volume_channels      	: out std_logic_vector(15 downto 0); 
		ila_master_output_volume_height       	: out std_logic_vector(7 downto 0); 
		ila_master_output_volume_width		   	: out std_logic_vector(7 downto 0); 
		ila_master_output_volume_channels     	: out std_logic_vector(11 downto 0); 
		ila_master_weight_filter_height       	: out std_logic_vector(3 downto 0); 
		ila_master_weight_filter_width        	: out std_logic_vector(3 downto 0); 
		ila_master_weight_filter_channels     	: out std_logic_vector(15 downto 0); 
		ila_master_number_of_filters          	: out std_logic_vector(15 downto 0); 
		ila_master_stride 					   	: out std_logic_vector(3 downto 0); 
		ila_master_pad                        	: out std_logic_vector(3 downto 0); 
		--ila_master_channels_allowed				: out std_logic_vector(15 downto 0);
		ila_master_bias_length					: out std_logic_vector(15 downto 0); 
		ila_master_ch_al_filt					: out std_logic_vector(15 downto 0); 
		ila_master_affine_channels_in_set 		: out std_logic_vector(15 downto 0); 
		ila_master_affine_filters_in_set 		: out std_logic_vector(15 downto 0); 
		ila_master_channels_iterations          : out std_logic_vector(15 downto 0); 
		ila_master_affine_filters_iterations    : out std_logic_vector(15 downto 0); 
		ila_master_start 						: out std_logic;

		--INIT_AXI_TXN	: in std_logic;
		TXN_DONE	: out std_logic;
		ERROR	: out std_logic;
		M_AXI_ACLK	: in std_logic;
		M_AXI_ARESETN	: in std_logic;
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_AWLEN	: out std_logic_vector(7 downto 0);
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		M_AXI_AWLOCK	: out std_logic;
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		M_AXI_AWVALID	: out std_logic;
		M_AXI_AWREADY	: in std_logic;
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		M_AXI_WLAST	: out std_logic;
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		M_AXI_WVALID	: out std_logic;
		M_AXI_WREADY	: in std_logic;
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		--M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		M_AXI_BVALID	: in std_logic;
		M_AXI_BREADY	: out std_logic;
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		M_AXI_ARLEN	: out std_logic_vector(7 downto 0);
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		M_AXI_ARLOCK	: out std_logic;
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		M_AXI_ARVALID	: out std_logic;
		M_AXI_ARREADY	: in std_logic;
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		M_AXI_RLAST	: in std_logic;
		--M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		M_AXI_RVALID	: in std_logic;
		M_AXI_RREADY	: out std_logic
		);
	end component Convolution_Layer_v1_0_M00_AXI;

	
	component Convolution_Layer_Top is
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
		   g_adder_delay      : integer := 12; 
		   g_mult_delay		  : integer := 8; 
		   g_num_adder_layers : integer := 6
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
		   i_ch_al_filt			   : in std_logic_vector(15 downto 0); 
	   
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
		   o_operation_complete          : out std_logic; 
		   o_volume_processed		: out std_logic; 
		   o_conv_complete			: out std_logic; 
		   o_more_dsps              : out std_logic; 
		   o_iteration_complete     : out std_logic;
		   o_channels_allowed       : out std_logic_vector(7 downto 0); 
		   o_dsps_used              : out std_logic_vector(7 downto 0); 
		   
		   o_iterations_required           : out std_logic_vector(7 downto 0); 
		   o_row_complete 				   : out std_logic; 
		   o_filter_iterations_required    : out std_logic_vector(15 downto 0); 
		
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
		   
		   o_outbuff_dout              : out std_logic_vector(g_data_width-1 downto 0); 
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
	end component;
	
	--TO CONVOLVER
	signal start                    : std_logic;
	signal output_volume_size       : std_logic_vector(7 downto 0); 
	signal input_volume_channels    : std_logic_vector(15 downto 0); 
	signal input_volume_size        : std_logic_vector(7 downto 0); 
	signal number_of_filters        : std_logic_vector(15 downto 0); 
	signal weight_filter_channels   : std_logic_vector(15 downto 0); 
	signal weight_filter_size       : std_logic_vector(3 downto 0); 
	signal pad                      : std_logic_vector(3 downto 0); 
	signal stride                   : std_logic_vector(3 downto 0); 
	   
	   
	signal bias_fifo_din 		   : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal bias_fifo_wr_en		   : std_logic;
	signal bias_values_loaded	   : std_logic; 
		   
	signal prev_fifo_din		    : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal prev_fifo_wr_en		   : std_logic;
		   
	   
	-- TO NORMALIZER
	signal beta                  : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal epsilon               : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal fresh_params          : std_logic; 
	signal gamma                 : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal mean                  : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal variance              : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	   
	--TO RELU UNIT
	signal relu_en 				: std_logic; 
	   
	--FROM LOGIC
	signal inbuff_empty             : std_logic; 
	signal inbuff_almost_empty      : std_logic; 
	signal inbuff_full              : std_logic; 
	signal inbuff_almost_full       : std_logic; 
	signal inbuff_valid             : std_logic; 
	   
	signal outbuff_dout              : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal outbuff_empty             : std_logic; 
	signal outbuff_almost_empty      : std_logic; 
	signal outbuff_full              : std_logic; 
	signal outbuff_almost_full       : std_logic; 
	signal outbuff_valid             : std_logic; 
		
	signal weights_loaded            : std_logic; 
	signal conv_complete             : std_logic; 
	signal more_dsps                 : std_logic; 
	signal iteration_complete        : std_logic; 
	signal operation_complete        : std_logic; 
    signal channels_allowed          : std_logic_vector(7 downto 0); 
    signal dsps_used                 : std_logic_vector(7 downto 0); 	
	
    signal iterations_required       : std_logic_vector(7 downto 0); 
	signal row_complete 			 : std_logic; 
	
	signal filter_iterations_required : std_logic_vector(15 downto 0); 
	signal filters_in_set 	: std_logic_vector(15 downto 0); 
		
	signal prev_fifo_full			 : std_logic; 
	signal prev_fifo_almost_full     : std_logic; 
	signal prev_fifo_prog_full		 : std_logic; 
	signal bias_fifo_full			 : std_logic; 
	signal bias_fifo_almost_full	 : std_logic; 
	signal bias_fifo_prog_full		 : std_logic; 

	--FROM SLAVE INTERFACE
	signal control_reg_to_master     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal status_reg_to_master                 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_data_addr_reg_to_master        : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_data_addr_reg_to_master       : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weights_addr_reg_to_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_volume_params_reg_to_master    : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_volume_params_reg_to_master   : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weight_params_reg_to_master          : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal conv_params_reg_to_master 		     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal norm_params_0_reg_to_master  	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal norm_params_1_reg_to_master  	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal norm_params_2_reg_to_master  	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal bias_addr_reg_to_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal bias_params_reg_to_master  	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weight_multiple_0_reg_to_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weight_multiple_1_reg_to_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_multiple_0_reg_to_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_multiple_1_reg_to_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_multiple_0_reg_to_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_multiple_1_reg_to_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal affine_params_reg_0_to_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal affine_params_reg_1_to_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	
	signal slv_reg_rden			     : std_logic; 
	signal slv_reg_wren			     : std_logic_vector(21 downto 0); 
		
	--TO SLAVE INTERFACE
	signal control_reg_from_master               : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal status_reg_from_master               : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_data_addr_reg_from_master       : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_data_addr_reg_from_master      : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weights_addr_reg_from_master		     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_volume_params_reg_from_master   : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_volume_params_reg_from_master  : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weight_params_reg_from_master         : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal conv_params_reg_from_master		     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);  
	signal norm_params_0_reg_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);   
	signal norm_params_1_reg_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);  
	signal norm_params_2_reg_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);  
	signal bias_addr_reg_from_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal bias_params_reg_from_master  	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weight_multiple_0_reg_from_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal weight_multiple_1_reg_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_multiple_0_reg_from_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal input_multiple_1_reg_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_multiple_0_reg_from_master				 : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal output_multiple_1_reg_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	signal affine_params_reg_0_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 	
	signal affine_params_reg_1_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 	
	
	signal bias_fifo_loaded	: std_logic; 
	
		--TO LOGIC 
	signal inbuff_din			     : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal inbuff_wr_en 		     : std_logic; 
	signal outbuff_rd_en			 : std_logic;  
	
	signal affine_select   			 : std_logic;    
	signal channels_in_set			 : std_logic_vector(15 downto 0);  
	signal acc_row_complete			 : std_logic; 
	signal layer_ready			     : std_logic; 
	signal volume_complete			 : std_logic; 
	signal ch_al_filt			   : std_logic_vector(15 downto 0); 
	
	signal epoch : unsigned(63 downto 0);
	signal cycle : unsigned(63 downto 0); 
	
	signal busy: std_logic; 
	
begin

-- Instantiation of Axi Bus Interface S00_AXI
Convolution_Layer_v1_0_S00_AXI_inst : Convolution_Layer_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (

		i_control_reg             => control_reg_from_master, 
		i_status_reg              => status_reg_from_master, 
	    i_input_data_addr_reg     => input_data_addr_reg_from_master, 
	    i_output_data_addr_reg    => output_data_addr_reg_from_master, 
	    i_weights_addr_reg		  => weights_addr_reg_from_master, 
	    i_input_volume_params_reg => input_volume_params_reg_from_master, 
	    i_output_volume_params_reg => output_volume_params_reg_from_master, 
	    i_weight_params_reg        => weight_params_reg_from_master, 
	    i_conv_params_reg		   => conv_params_reg_from_master, 
		i_norm_params_0_reg        => norm_params_0_reg_from_master, 
		i_norm_params_1_reg        => norm_params_1_reg_from_master, 
		i_norm_params_2_reg        => norm_params_2_reg_from_master, 
		i_bias_addr_reg            => bias_addr_reg_from_master,
		i_bias_params_reg          => bias_params_reg_from_master,
		i_weight_multiple_0_reg    => weight_multiple_0_reg_from_master, 
		i_weight_multiple_1_reg	   => weight_multiple_1_reg_from_master, 
		i_input_multiple_0_reg     => input_multiple_0_reg_from_master, 
		i_input_multiple_1_reg	   => input_multiple_1_reg_from_master, 
		i_output_multiple_0_reg    => output_multiple_0_reg_from_master, 
		i_output_multiple_1_reg	   => output_multiple_1_reg_from_master, 
		i_affine_params_reg_0       => affine_params_reg_0_from_master, 
		i_affine_params_reg_1	       => affine_params_reg_1_from_master, 
		
	    o_control_reg             => control_reg_to_master, 
	    o_status_reg              => status_reg_to_master, 
	    o_input_data_addr_reg     => input_data_addr_reg_to_master, 
	    o_output_data_addr_reg    => output_data_addr_reg_to_master, 
	    o_weights_addr_reg		  => weights_addr_reg_to_master, 
	    o_input_volume_params_reg => input_volume_params_reg_to_master, 
	    o_output_volume_params_reg=> output_volume_params_reg_to_master, 
	    o_weight_params_reg        => weight_params_reg_to_master, 
	    o_conv_params_reg          => conv_params_reg_to_master, 
		o_norm_params_0_reg        => norm_params_0_reg_to_master, 
		o_norm_params_1_reg        => norm_params_1_reg_to_master, 
		o_norm_params_2_reg        => norm_params_2_reg_to_master, 
		o_bias_addr_reg            => bias_addr_reg_to_master,
		o_bias_params_reg          => bias_params_reg_to_master,
		o_weight_multiple_0_reg    => weight_multiple_0_reg_to_master, 
		o_weight_multiple_1_reg	   => weight_multiple_1_reg_to_master, 
		o_input_multiple_0_reg     => input_multiple_0_reg_to_master, 
		o_input_multiple_1_reg	   => input_multiple_1_reg_to_master, 
		o_output_multiple_0_reg    => output_multiple_0_reg_to_master, 
		o_output_multiple_1_reg	   => output_multiple_1_reg_to_master, 
		o_affine_params_reg_0	       => affine_params_reg_0_to_master, 
		o_affine_params_reg_1	       => affine_params_reg_1_to_master, 
		
	    o_slv_reg_rden			 => slv_reg_rden, 
	    o_slv_reg_wren			 => slv_reg_wren, 
	
		S_AXI_ACLK	=> s00_axi_aclk,
		S_AXI_ARESETN	=> s00_axi_aresetn,
		S_AXI_AWADDR	=> s00_axi_awaddr,
		S_AXI_AWPROT	=> s00_axi_awprot,
		S_AXI_AWVALID	=> s00_axi_awvalid,
		S_AXI_AWREADY	=> s00_axi_awready,
		S_AXI_WDATA	=> s00_axi_wdata,
		S_AXI_WSTRB	=> s00_axi_wstrb,
		S_AXI_WVALID	=> s00_axi_wvalid,
		S_AXI_WREADY	=> s00_axi_wready,
		S_AXI_BRESP	=> s00_axi_bresp,
		S_AXI_BVALID	=> s00_axi_bvalid,
		S_AXI_BREADY	=> s00_axi_bready,
		S_AXI_ARADDR	=> s00_axi_araddr,
		S_AXI_ARPROT	=> s00_axi_arprot,
		S_AXI_ARVALID	=> s00_axi_arvalid,
		S_AXI_ARREADY	=> s00_axi_arready,
		S_AXI_RDATA	=> s00_axi_rdata,
		S_AXI_RRESP	=> s00_axi_rresp,
		S_AXI_RVALID	=> s00_axi_rvalid,
		S_AXI_RREADY	=> s00_axi_rready
	);

-- Instantiation of Axi Bus Interface M00_AXI
Convolution_Layer_v1_0_M00_AXI_inst : Convolution_Layer_v1_0_M00_AXI
	generic map (
		C_M_TARGET_SLAVE_BASE_ADDR	=> C_M00_AXI_TARGET_SLAVE_BASE_ADDR,
		C_M_AXI_BURST_LEN	=> C_M00_AXI_BURST_LEN,
		C_M_AXI_ID_WIDTH	=> C_M00_AXI_ID_WIDTH,
		C_M_AXI_ADDR_WIDTH	=> C_M00_AXI_ADDR_WIDTH,
		C_M_AXI_DATA_WIDTH	=> C_M00_AXI_DATA_WIDTH,
		C_M_AXI_AWUSER_WIDTH	=> C_M00_AXI_AWUSER_WIDTH,
		C_M_AXI_ARUSER_WIDTH	=> C_M00_AXI_ARUSER_WIDTH,
		C_M_AXI_WUSER_WIDTH	=> C_M00_AXI_WUSER_WIDTH,
		C_M_AXI_RUSER_WIDTH	=> C_M00_AXI_RUSER_WIDTH,
		C_M_AXI_BUSER_WIDTH	=> C_M00_AXI_BUSER_WIDTH
	)
	port map (
	    i_ext_reset_n    => i_ext_reset_n, 
		o_convolution_done => o_convolution_done, 
		o_data_written => o_data_written, 
	   --TO CONVOLVER
	    o_start                    => start, 
	    o_output_volume_size       => output_volume_size, 
	    o_input_volume_channels    => input_volume_channels, 
	    o_input_volume_size        => input_volume_size, 
	    o_number_of_filters        => number_of_filters, 
	    o_weight_filter_channels   => weight_filter_channels, 
	    o_weight_filter_size       => weight_filter_size, 
	    o_pad                      => pad, 
	    o_stride                   => stride, 
		o_channels_in_set 		   => channels_in_set, 
		o_filters_in_set		   => filters_in_set, 
		o_ch_al_filt			   => ch_al_filt, 
		
		o_bias_fifo_din 		   => bias_fifo_din, 
		o_bias_fifo_wr_en		   => bias_fifo_wr_en, 
		o_bias_values_loaded	   => bias_fifo_loaded, 
		   
		o_prev_fifo_din			   => prev_fifo_din, 
		o_prev_fifo_wr_en		   => prev_fifo_wr_en, 
		   
	   -- TO NORMALIZER
	    o_beta                  => beta, 
	    o_epsilon               => epsilon, 
	    o_fresh_params          => fresh_params, 
	    o_gamma                 => gamma, 
	    o_mean                  => mean, 
	    o_variance              => variance, 
	   
	   --TO RELU UNIT
	    o_relu_en 				=> relu_en, 
		o_affine_select			=> affine_select, 
	   
	   --FROM LOGIC
	    i_inbuff_empty             => inbuff_empty, 
	    i_inbuff_almost_empty      => inbuff_almost_empty, 
	    i_inbuff_full              => inbuff_full, 
	    i_inbuff_almost_full       => inbuff_almost_full, 
	    i_inbuff_valid             => inbuff_valid, 
	   
	    i_outbuff_dout              => outbuff_dout, 
	    i_outbuff_empty             => outbuff_empty, 
	    i_outbuff_almost_empty      => outbuff_almost_empty, 
	    i_outbuff_full              => outbuff_full, 
	    i_outbuff_almost_full       => outbuff_almost_full, 
	    i_outbuff_valid             => outbuff_valid, 
		
		i_weights_loaded            => weights_loaded, 
		i_conv_complete             => conv_complete, 
		i_more_dsps                 => more_dsps, 
		i_iteration_complete        => iteration_complete,
	    i_volume_complete			=> volume_complete, 
		i_operation_complete        => operation_complete, 
        i_channels_allowed          => channels_allowed, 
        i_dsps_used                 =>	dsps_used, 
		
		i_iterations_required       => iterations_required, 
		i_row_complete 			    => row_complete, 
		
		i_filter_iterations_required => filter_iterations_required, 
		
		i_prev_fifo_full			=> prev_fifo_full, 
		i_prev_fifo_almost_full	    => prev_fifo_almost_full, 
		i_bias_fifo_full			=> bias_fifo_full, 
		i_bias_fifo_almost_full	    => bias_fifo_almost_full, 
		
		i_acc_row_complete			=> acc_row_complete,
		i_layer_ready				=> layer_ready, 
		   
		
		
		--FROM SLAVE INTERFACE
		i_control_reg               => control_reg_to_master, 
		i_status_reg                => status_reg_to_master, 
	    i_input_data_addr_reg       => input_data_addr_reg_to_master, 
	    i_output_data_addr_reg      => output_data_addr_reg_to_master, 
	    i_weights_addr_reg		    => weights_addr_reg_to_master, 
	    i_input_volume_params_reg   => input_volume_params_reg_to_master, 
	    i_output_volume_params_reg  => output_volume_params_reg_to_master, 
	    i_weight_params_reg         => weight_params_reg_to_master, 
	    i_conv_params_reg		    => conv_params_reg_to_master, 
		i_norm_params_0_reg 	    => norm_params_0_reg_to_master, 
		i_norm_params_1_reg 	    => norm_params_1_reg_to_master, 
		i_norm_params_2_reg 	    => norm_params_2_reg_to_master, 
		i_bias_addr_reg             => bias_addr_reg_to_master, 
		i_bias_params_reg			=> bias_params_reg_to_master, 
		i_weight_multiple_0_reg     => weight_multiple_0_reg_to_master, 
		i_weight_multiple_1_reg	    => weight_multiple_1_reg_to_master, 
		i_input_multiple_0_reg      => input_multiple_0_reg_to_master, 
		i_input_multiple_1_reg	    => input_multiple_1_reg_to_master, 
		i_output_multiple_0_reg     => output_multiple_0_reg_to_master, 
		i_output_multiple_1_reg	    => output_multiple_1_reg_to_master, 
		i_affine_params_reg_0  	    => affine_params_reg_0_to_master, 
		i_affine_params_reg_1  	    => affine_params_reg_1_to_master, 
		
	    i_slv_reg_rden			    => slv_reg_rden, 
	    i_slv_reg_wren			    => slv_reg_wren, 
		
	   --TO SLAVE INTERFACE
	    o_control_reg               => control_reg_from_master, 
	    o_status_reg                => status_reg_from_master, 
	    o_input_data_addr_reg       => input_data_addr_reg_from_master, 
	    o_output_data_addr_reg      => output_data_addr_reg_from_master, 
	    o_weights_addr_reg		    => weights_addr_reg_from_master, 
	    o_input_volume_params_reg   => input_volume_params_reg_from_master, 
	    o_output_volume_params_reg  => output_volume_params_reg_from_master, 
	    o_weight_params_reg         => weight_params_reg_from_master, 
	    o_conv_params_reg		    => conv_params_reg_from_master, 
		o_norm_params_0_reg 	    => norm_params_0_reg_from_master,  
		o_norm_params_1_reg 	    => norm_params_1_reg_from_master,
		o_norm_params_2_reg 	    => norm_params_2_reg_from_master,
		o_bias_addr_reg				=> bias_addr_reg_from_master, 
		o_bias_params_reg			=> bias_params_reg_from_master, 
		o_weight_multiple_0_reg     => weight_multiple_0_reg_from_master, 
		o_weight_multiple_1_reg	    => weight_multiple_1_reg_from_master, 
		o_input_multiple_0_reg      => input_multiple_0_reg_from_master, 
		o_input_multiple_1_reg	    => input_multiple_1_reg_from_master, 
		o_output_multiple_0_reg     => output_multiple_0_reg_from_master, 
		o_output_multiple_1_reg	    => output_multiple_1_reg_from_master, 
		o_affine_params_reg_0  	    => affine_params_reg_0_from_master, 
		o_affine_params_reg_1  	    => affine_params_reg_1_from_master, 
		--TO LOGIC 
	    o_inbuff_din			    => inbuff_din, 
	    o_inbuff_wr_en 				=> inbuff_wr_en, 
	    o_outbuff_rd_en				=> outbuff_rd_en, 
	
	
		 ila_master_axi_awaddr				=> ila_master_axi_awaddr,
		 ila_master_axi_awlen    			=> ila_master_axi_awlen,
		 ila_master_axi_awvalid				=> ila_master_axi_awvalid,
		 ila_master_axi_wdata				=> ila_master_axi_wdata,
		 ila_master_axi_wlast				=> ila_master_axi_wlast,
		 ila_master_axi_wvalid				=> ila_master_axi_wvalid,
		 ila_master_axi_wstrb    			=> ila_master_axi_wstrb,
		 ila_master_axi_bready				=> ila_master_axi_bready,
		 ila_master_axi_araddr				=> ila_master_axi_araddr,
		 ila_master_axi_arlen    			=> ila_master_axi_arlen,
		 ila_master_axi_arsize				=> ila_master_axi_arsize,
		 ila_master_axi_arvalid				=> ila_master_axi_arvalid,
		 ila_master_axi_rready				=> ila_master_axi_rready,
		 ila_master_axi_awready				=> ila_master_axi_awready,
		 ila_master_axi_wready				=> ila_master_axi_wready,
		 ila_master_axi_bvalid				=> ila_master_axi_bvalid,
		 ila_master_axi_arready				=> ila_master_axi_arready,
		 ila_master_axi_rdata				=> ila_master_axi_rdata,
		 ila_master_axi_rlast				=> ila_master_axi_rlast,
		 ila_master_axi_rvalid 				=> ila_master_axi_rvalid,
		 ila_master_wbc 						=> ila_master_wbc,
		 ila_master_rbc						=> ila_master_rbc,
		 ila_master_input_data_addr_reg    	=> ila_master_input_data_addr_reg,
		 ila_master_output_data_addr_reg   	=> ila_master_output_data_addr_reg,
		 ila_master_weights_addr_reg      	=> ila_master_weights_addr_reg,
		 ila_master_bias_addr_reg          	=> ila_master_bias_addr_reg,
		 ila_master_prev_addr_reg			=> ila_master_prev_addr_reg,
		 ila_master_input_addr_counter	  	=> ila_master_input_addr_counter,
		 ila_master_output_addr_counter	  	=> ila_master_output_addr_counter,
		 ila_master_weights_addr_counter	  	=> ila_master_weights_addr_counter,
		 ila_master_bias_addr_counter	  	=> ila_master_bias_addr_counter,
		 ila_master_prev_addr_counter	  	=> ila_master_prev_addr_counter,
		 ila_master_row_counter			  	=> ila_master_row_counter,
		 ila_master_out_volume_row_counter 	=> ila_master_out_volume_row_counter, 
		 ila_master_input_volume_row_counter => ila_master_input_volume_row_counter,
		 ila_master_channel_counter	      	=> ila_master_channel_counter,
		 ila_master_prev_channel_counter	  	=> ila_master_prev_channel_counter,
		 ila_master_output_channel_counter 	=> ila_master_output_channel_counter,
		 ila_master_input_channel_counter  	=> ila_master_input_channel_counter,
		 ila_master_writes_remaining 	  	=> ila_master_writes_remaining,
		 ila_master_reads_remaining		 	=> ila_master_reads_remaining,
		 ila_master_calculated 			  	=> ila_master_calculated,
		 ila_master_column_counter		  	=> ila_master_column_counter,
		 ila_master_more_bursts_needed    	=> ila_master_more_bursts_needed,
		 ila_master_iteration_counter	  	=> ila_master_iteration_counter,
		 ila_master_channel_loop_counter	  	=> ila_master_channel_loop_counter,
		 ila_master_row_loop_counter		  	=> ila_master_row_loop_counter,
		 ila_master_busy                     => busy,
		 ila_master_stride_counter           => ila_master_stride_counter,
		 ila_master_filter_counter			=> ila_master_filter_counter,
		 ila_master_bias_values_loaded		=> ila_master_bias_values_loaded,
		 ila_master_channels_allowed			=> ila_master_channels_allowed,
		 ila_master_operation_complete 		=> ila_master_operation_complete,
		 ila_master_weight_index				=> ila_master_weight_index,
		 ila_master_input_index				=> ila_master_input_index,
		 ila_master_output_index				=> ila_master_output_index,
		 ila_master_prev_index 				=> ila_master_prev_index,
		 ila_master_last_channel_base		=> ila_master_last_channel_base,
		 ila_master_out_last_channel_base	=> ila_master_out_last_channel_base,
		 ila_master_prev_last_channel_base	=> ila_master_prev_last_channel_base,
		 ila_master_data_written 			=> ila_master_data_written,
		 ila_master_output_base_pixel 		=> ila_master_output_base_pixel,
		 ila_master_input_arsize 			=> ila_master_input_arsize,
		 ila_master_debug_mode 				=> ila_master_debug_mode,
		 ila_master_affine_filter_iteration_counter => ila_master_affine_filter_iteration_counter,
		 ila_master_convolution_done 		=> ila_master_convolution_done,
		 ila_master_fsm_state				=> ila_master_fsm_state,
		 
		 
		ila_master_affine_select 				=> ila_master_affine_select,
		ila_master_relu_en 						=> ila_master_relu_en,
		ila_master_weights_loaded				=>  ila_master_weights_loaded,
		ila_master_conv_complete 				=> ila_master_conv_complete,
		ila_master_more_dsps        			=> ila_master_more_dsps,
		ila_master_iteration_complete 			=> ila_master_iteration_complete,
		--ila_master_operation_complete			=> ila_master_operation_complete,
		ila_master_volume_complete				=> ila_master_volume_complete,
		--ila_master_channels_allowed				=> ila_master_channels_allowed,
		ila_master_dsps_used					=> ila_master_dsps_used,
		ila_master_iterations_required 			=> ila_master_iterations_required,
		ila_master_row_complete 				=> ila_master_row_complete,
		ila_master_layer_ready 					=> ila_master_layer_ready,
		ila_master_filter_iterations_required 	=> ila_master_filter_iterations_required,
		ila_master_acc_row_complete				=> ila_master_acc_row_complete,
		ila_master_input_volume_height        	=> ila_master_input_volume_height,
		ila_master_input_volume_width         	=> ila_master_input_volume_width,
		ila_master_input_volume_channels      	=> ila_master_input_volume_channels,
		ila_master_output_volume_height       	=> ila_master_output_volume_height,
		ila_master_output_volume_width		   	=> ila_master_output_volume_width,
		ila_master_output_volume_channels     	=> ila_master_output_volume_channels,
		ila_master_weight_filter_height       	=> ila_master_weight_filter_height,
		ila_master_weight_filter_width        	=> ila_master_weight_filter_width,
		ila_master_weight_filter_channels       => ila_master_weight_filter_channels,
		ila_master_number_of_filters          	=> ila_master_number_of_filters,
		ila_master_stride 					   	=> ila_master_stride,
		ila_master_pad                        	=> ila_master_pad,
		--ila_master_channels_allowed				=> ila_master_channels_allowed,
		ila_master_bias_length					=> ila_master_bias_length,
		ila_master_ch_al_filt					=> ila_master_ch_al_filt,
		ila_master_affine_channels_in_set 		=> ila_master_affine_channels_in_set,
		ila_master_affine_filters_in_set 		=> ila_master_affine_filters_in_set,
		ila_master_channels_iterations          => ila_master_channels_iterations,
		ila_master_affine_filters_iterations    => ila_master_affine_filters_iterations,
		ila_master_start 						=> ila_master_start,
			 
		 
		--INIT_AXI_TXN	=> m00_axi_init_axi_txn,
		TXN_DONE	=> m00_axi_txn_done,
		ERROR	=> m00_axi_error,
		M_AXI_ACLK	=> m00_axi_aclk,
		M_AXI_ARESETN	=> m00_axi_aresetn,
		M_AXI_AWID	=> m00_axi_awid,
		M_AXI_AWADDR	=> m00_axi_awaddr,
		M_AXI_AWLEN	=> m00_axi_awlen,
		M_AXI_AWSIZE	=> m00_axi_awsize,
		M_AXI_AWBURST	=> m00_axi_awburst,
		M_AXI_AWLOCK	=> m00_axi_awlock,
		M_AXI_AWCACHE	=> m00_axi_awcache,
		M_AXI_AWPROT	=> m00_axi_awprot,
		M_AXI_AWQOS	=> m00_axi_awqos,
		M_AXI_AWUSER	=> m00_axi_awuser,
		M_AXI_AWVALID	=> m00_axi_awvalid,
		M_AXI_AWREADY	=> m00_axi_awready,
		M_AXI_WDATA	=> m00_axi_wdata,
		M_AXI_WSTRB	=> m00_axi_wstrb,
		M_AXI_WLAST	=> m00_axi_wlast,
		M_AXI_WUSER	=> m00_axi_wuser,
		M_AXI_WVALID	=> m00_axi_wvalid,
		M_AXI_WREADY	=> m00_axi_wready,
		M_AXI_BID	=> m00_axi_bid,
		M_AXI_BRESP	=> m00_axi_bresp,
		--M_AXI_BUSER	=> m00_axi_buser,
		M_AXI_BVALID	=> m00_axi_bvalid,
		M_AXI_BREADY	=> m00_axi_bready,
		M_AXI_ARID	=> m00_axi_arid,
		M_AXI_ARADDR	=> m00_axi_araddr,
		M_AXI_ARLEN	=> m00_axi_arlen,
		M_AXI_ARSIZE	=> m00_axi_arsize,
		M_AXI_ARBURST	=> m00_axi_arburst,
		M_AXI_ARLOCK	=> m00_axi_arlock,
		M_AXI_ARCACHE	=> m00_axi_arcache,
		M_AXI_ARPROT	=> m00_axi_arprot,
		M_AXI_ARQOS	=> m00_axi_arqos,
		M_AXI_ARUSER	=> m00_axi_aruser,
		M_AXI_ARVALID	=> m00_axi_arvalid,
		M_AXI_ARREADY	=> m00_axi_arready,
		M_AXI_RID	=> m00_axi_rid,
		M_AXI_RDATA	=> m00_axi_rdata,
		M_AXI_RRESP	=> m00_axi_rresp,
		M_AXI_RLAST	=> m00_axi_rlast,
		--M_AXI_RUSER	=> m00_axi_ruser,
		M_AXI_RVALID	=> m00_axi_rvalid,
		M_AXI_RREADY	=> m00_axi_rready
	);

	-- Add user logic here
	convolution_unit: Convolution_Layer_Top 
	  generic map(
		   -- name : type := value
		   g_axi_bus_width    => G_DATA_WIDTH,
		   g_data_width       => G_DATA_WIDTH,
		   g_weight_width     => G_DATA_WIDTH,
		   g_multiplier_width => G_DATA_WIDTH,
		   g_product_width    => G_DATA_WIDTH,
		   g_conv_width       => G_DATA_WIDTH,
		   g_relu_width       => G_DATA_WIDTH,
		   g_dsps_used        => G_DSPS_USED,--33,
		   g_norm_width       => G_DATA_WIDTH, 
		   g_adder_delay      => G_ADDER_DELAY, 
		   g_mult_delay		  => G_MULT_DELAY, 
		   g_num_adder_layers => G_NUM_ADDER_LAYERS 
	  )
	  port map(
		   i_ext_reset_n              => i_ext_reset_n,
		   i_master_clk               => m00_axi_aclk,
		   
		   --TO CONVOLVER
		   i_start                    => start,
		   i_output_volume_size       => output_volume_size, 
		   i_input_volume_channels    => input_volume_channels, 
		   i_input_volume_size        => input_volume_size, 
		   i_number_of_filters        => number_of_filters,
		   i_weight_filter_channels   => weight_filter_channels,
		   i_weight_filter_size       => weight_filter_size, 
		   i_pad                      => pad,
		   i_stride                   => stride,
		   i_ch_al_filt			      => ch_al_filt, 
	   
		   i_bias_fifo_din 			  => bias_fifo_din, 
		   i_bias_fifo_wr_en		  => bias_fifo_wr_en, 
		   i_bias_values_loaded		  => bias_fifo_loaded, 
		   
		   i_prev_fifo_din			  => prev_fifo_din, 
		   i_prev_fifo_wr_en		  => prev_fifo_wr_en, 
		   
		   i_affine_select			  => affine_select, 	   
		   i_channels_in_set		  => channels_in_set(7 downto 0),  
		   i_filters_in_set			  => filters_in_set, 
		   
		   -- TO NORMALIZER
		   i_beta                  => beta, 
		   i_epsilon               => epsilon, 
		   i_fresh_params          => fresh_params,
		   i_gamma                 => gamma,
		   i_mean                  => mean, 
		   i_variance              => variance,
		   
		   --TO RELU UNIT
		   i_relu_en 				=> relu_en, 
		   
		   --FROM CONVOLVER  
		   o_weights_loaded         => weights_loaded, 
		   o_conv_complete          => conv_complete, 
		   o_operation_complete		=> operation_complete, 
		   o_volume_processed		=> volume_complete, 
		   o_more_dsps              => more_dsps,  
		   o_iteration_complete     => iteration_complete, 
		   o_channels_allowed       => channels_allowed, 
		   o_dsps_used              => dsps_used, 
		   o_iterations_required    => iterations_required, 
		   o_row_complete 			=> row_complete, 
		   o_layer_ready			=> layer_ready, 
		   o_filter_iterations_required => filter_iterations_required, 
		
		   o_prev_fifo_full			=> prev_fifo_full, 
		   o_prev_fifo_almost_full	=> prev_fifo_almost_full, 
		   o_bias_fifo_full			=> bias_fifo_full, 
		   o_bias_fifo_almost_full	=> bias_fifo_almost_full, 
		   
		   o_acc_row_complete		=> acc_row_complete, 
		   --TO AXI MASTER 
		   o_inbuff_empty             => inbuff_empty, 
		   o_inbuff_almost_empty      => inbuff_almost_empty, 
		   o_inbuff_full              => inbuff_full, 
		   o_inbuff_almost_full       => inbuff_almost_full, 
		   o_inbuff_valid             => inbuff_valid,  
		   
		   o_outbuff_dout              => outbuff_dout, 
		   o_outbuff_empty             => outbuff_empty, 
		   o_outbuff_almost_empty      => outbuff_almost_empty, 
		   o_outbuff_full              => outbuff_full, 
		   o_outbuff_almost_full       => outbuff_almost_full, 
		   o_outbuff_valid             => outbuff_valid, 
		   
		   --FROM AXI MASTER
		   i_inbuff_din					=> inbuff_din, 
		   i_inbuff_wr_en 				=> inbuff_wr_en,  
		   i_outbuff_rd_en				=> outbuff_rd_en,
		   
			-- o_cycle => o_cycle, 
			-- o_epoch => o_epoch, 
		   
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
			 ila_volume_stack_fifo_full 				=> ila_volume_stack_fifo_full,
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
			 ila_volume_router_state				=> ila_volume_router_state,
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
			 ila_weight_mux_almost_full 				=> ila_weight_mux_almost_full,
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
			
		
			ila_inbuff_din                			=> ila_inbuff_din,
			ila_inbuff_dout               			=> ila_inbuff_dout,
			ila_inbuff_almost_empty      			=> ila_inbuff_almost_empty,
			ila_inbuff_almost_full        			=> ila_inbuff_almost_full,
			ila_inbuff_empty              			=> ila_inbuff_empty,
			ila_inbuff_full               			=> ila_inbuff_full,
			ila_inbuff_rd_en              			=> ila_inbuff_rd_en,
			ila_inbuff_valid              			=> ila_inbuff_valid,
			ila_outbuff_almost_empty      			=> ila_outbuff_almost_empty,
			ila_outbuff_almost_full       			=> ila_outbuff_almost_full,
			ila_outbuff_empty             			=> ila_outbuff_empty,
			ila_outbuff_full              			=> ila_outbuff_full,
			ila_outbuff_valid             			=> ila_outbuff_valid,
			ila_outbuff_wr_en             			=> ila_outbuff_wr_en,
			ila_outbuff_din               			=> ila_outbuff_din,
			ila_outbuff_dout              			=> ila_outbuff_dout, 
			
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

	-- User logic ends
o_cycle <= std_logic_vector(cycle); 
o_epoch <= std_logic_vector(epoch); 	
ila_master_busy <= busy; 

epoch_counter_proc: process(m00_axi_aclk, m00_axi_aresetn)
    begin
        if(m00_axi_aresetn = '0') then
            cycle <= (others => '0');
            epoch <= (others => '0');
        elsif(rising_edge(m00_axi_aclk)) then
			if(busy = '1') then 
				if(cycle < 100) then
					cycle <= cycle + 1;
				else
					cycle <= (others =>'0');
					epoch <= epoch + 1;
				end if;
			end if;
        end if;
    end process; 
end arch_imp;




