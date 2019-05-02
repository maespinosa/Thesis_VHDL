library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Convolution_Layer_v1_0_M00_AXI is
	generic (
		-- Users to add parameters here
        g_data_width : integer := 32; 
		g_bytes_per_data : integer := 4; 
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Base address of targeted slave
		C_M_TARGET_SLAVE_BASE_ADDR	: std_logic_vector	:= x"40000000";
		-- Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
		C_M_AXI_BURST_LEN	: integer	:= 16;
		-- Thread ID Width
		C_M_AXI_ID_WIDTH	: integer	:= 1;
		-- Width of Address Bus
		C_M_AXI_ADDR_WIDTH	: integer	:= 32;
		-- Width of Data Bus
		C_M_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of User Write Address Bus
		C_M_AXI_AWUSER_WIDTH	: integer	:= 0;
		-- Width of User Read Address Bus
		C_M_AXI_ARUSER_WIDTH	: integer	:= 0;
		-- Width of User Write Data Bus
		C_M_AXI_WUSER_WIDTH	: integer	:= 0;
		-- Width of User Read Data Bus
		C_M_AXI_RUSER_WIDTH	: integer	:= 0;
		-- Width of User Response Bus
		C_M_AXI_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here
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
		o_affine_select			   : out std_logic; 
		o_channels_in_set		   : out std_logic_vector(15 downto 0);
		o_filters_in_set		   : out std_logic_vector(15 downto 0);
		o_ch_al_filt			   : out std_logic_vector(15 downto 0); 
		
		
		o_bias_fifo_din 		   : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
		o_bias_fifo_wr_en		   : out std_logic; 	 
		o_bias_values_loaded	   : out std_logic; 
		   
		o_prev_fifo_din			   : out std_logic_vector(g_data_width-1 downto 0); 
		o_prev_fifo_wr_en		   : out std_logic; 
	   
	   -- TO NORMALIZER
	    o_beta                  : out std_logic_vector(g_data_width-1 downto 0); 
	    o_epsilon               : out std_logic_vector(g_data_width-1 downto 0);
	    o_fresh_params          : out std_logic; 
	    o_gamma                 : out std_logic_vector(g_data_width-1 downto 0);
	    o_mean                  : out std_logic_vector(g_data_width-1 downto 0);
	    o_variance              : out std_logic_vector(g_data_width-1 downto 0);
	   
	   --TO RELU UNIT
	    o_relu_en 				: out std_logic; 
	   
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
		i_operation_complete     : in std_logic; 
		i_volume_complete		 : in std_logic; 
        i_channels_allowed       : in std_logic_vector(7 downto 0); 
        i_dsps_used              : in std_logic_vector(7 downto 0); 	

		i_iterations_required          : in std_logic_vector(7 downto 0); 
		i_row_complete 				   : in std_logic; 
		i_layer_ready				   : in std_logic; 
		i_filter_iterations_required   : in std_logic_vector(15 downto 0); 
		
		i_prev_fifo_full			   : in std_logic; 
		i_prev_fifo_almost_full		   : in std_logic; 
		i_bias_fifo_full			   : in std_logic; 
		i_bias_fifo_almost_full		   : in std_logic; 
		
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
		i_bias_addr_reg				: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_bias_params_reg			: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
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
		o_bias_addr_reg				: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_bias_params_reg			: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
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

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Initiate AXI transactions
		--INIT_AXI_TXN	: in std_logic;
		-- Asserts when transaction is complete
		TXN_DONE	: out std_logic;
		-- Asserts when ERROR is detected
		ERROR	: out std_logic;
		-- Global Clock Signal.
		M_AXI_ACLK	: in std_logic;
		-- Global Reset Singal. This Signal is Active Low
		M_AXI_ARESETN	: in std_logic;
		-- Master Interface Write Address ID
		M_AXI_AWID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Master Interface Write Address
		M_AXI_AWADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Burst length. The burst length gives the exact number of transfers in a burst
		M_AXI_AWLEN	: out std_logic_vector(7 downto 0);
		-- Burst size. This signal indicates the size of each transfer in the burst
		M_AXI_AWSIZE	: out std_logic_vector(2 downto 0);
		-- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
		M_AXI_AWBURST	: out std_logic_vector(1 downto 0);
		-- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
		M_AXI_AWLOCK	: out std_logic;
		-- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
		M_AXI_AWCACHE	: out std_logic_vector(3 downto 0);
		-- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
		M_AXI_AWPROT	: out std_logic_vector(2 downto 0);
		-- Quality of Service, QoS identifier sent for each write transaction.
		M_AXI_AWQOS	: out std_logic_vector(3 downto 0);
		-- Optional User-defined signal in the write address channel.
		M_AXI_AWUSER	: out std_logic_vector(C_M_AXI_AWUSER_WIDTH-1 downto 0);
		-- Write address valid. This signal indicates that
    -- the channel is signaling valid write address and control information.
		M_AXI_AWVALID	: out std_logic;
		-- Write address ready. This signal indicates that
    -- the slave is ready to accept an address and associated control signals
		M_AXI_AWREADY	: in std_logic;
		-- Master Interface Write Data.
		M_AXI_WDATA	: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte
    -- lanes hold valid data. There is one write strobe
    -- bit for each eight bits of the write data bus.
		M_AXI_WSTRB	: out std_logic_vector(C_M_AXI_DATA_WIDTH/8-1 downto 0);
		-- Write last. This signal indicates the last transfer in a write burst.
		M_AXI_WLAST	: out std_logic;
		-- Optional User-defined signal in the write data channel.
		M_AXI_WUSER	: out std_logic_vector(C_M_AXI_WUSER_WIDTH-1 downto 0);
		-- Write valid. This signal indicates that valid write
    -- data and strobes are available
		M_AXI_WVALID	: out std_logic;
		-- Write ready. This signal indicates that the slave
    -- can accept the write data.
		M_AXI_WREADY	: in std_logic;
		-- Master Interface Write Response.
		M_AXI_BID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Write response. This signal indicates the status of the write transaction.
		M_AXI_BRESP	: in std_logic_vector(1 downto 0);
		-- Optional User-defined signal in the write response channel
		--M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
		-- Write response valid. This signal indicates that the
    -- channel is signaling a valid write response.
		M_AXI_BVALID	: in std_logic;
		-- Response ready. This signal indicates that the master
    -- can accept a write response.
		M_AXI_BREADY	: out std_logic;
		-- Master Interface Read Address.
		M_AXI_ARID	: out std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Read address. This signal indicates the initial
    -- address of a read burst transaction.
		M_AXI_ARADDR	: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		-- Burst length. The burst length gives the exact number of transfers in a burst
		M_AXI_ARLEN	: out std_logic_vector(7 downto 0);
		-- Burst size. This signal indicates the size of each transfer in the burst
		M_AXI_ARSIZE	: out std_logic_vector(2 downto 0);
		-- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
		M_AXI_ARBURST	: out std_logic_vector(1 downto 0);
		-- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
		M_AXI_ARLOCK	: out std_logic;
		-- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
		M_AXI_ARCACHE	: out std_logic_vector(3 downto 0);
		-- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
		M_AXI_ARPROT	: out std_logic_vector(2 downto 0);
		-- Quality of Service, QoS identifier sent for each read transaction
		M_AXI_ARQOS	: out std_logic_vector(3 downto 0);
		-- Optional User-defined signal in the read address channel.
		M_AXI_ARUSER	: out std_logic_vector(C_M_AXI_ARUSER_WIDTH-1 downto 0);
		-- Write address valid. This signal indicates that
    -- the channel is signaling valid read address and control information
		M_AXI_ARVALID	: out std_logic;
		-- Read address ready. This signal indicates that
    -- the slave is ready to accept an address and associated control signals
		M_AXI_ARREADY	: in std_logic;
		-- Read ID tag. This signal is the identification tag
    -- for the read data group of signals generated by the slave.
		M_AXI_RID	: in std_logic_vector(C_M_AXI_ID_WIDTH-1 downto 0);
		-- Master Read Data
		M_AXI_RDATA	: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of the read transfer
		M_AXI_RRESP	: in std_logic_vector(1 downto 0);
		-- Read last. This signal indicates the last transfer in a read burst
		M_AXI_RLAST	: in std_logic;
		-- Optional User-defined signal in the read address channel.
		--M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
		-- Read valid. This signal indicates that the channel
    -- is signaling the required read data.
		M_AXI_RVALID	: in std_logic;
		-- Read ready. This signal indicates that the master can
    -- accept the read data and response information.
		M_AXI_RREADY	: out std_logic
	);
end Convolution_Layer_v1_0_M00_AXI;

architecture implementation of Convolution_Layer_v1_0_M00_AXI is

	-- I/O Connections assignments

    type master_state is (
		IDLE, 
		CALC_WEIGHTS_READ_LENGTH, 
		FCS_READ_ADDRESS_WEIGHTS, 
		FCS_READ_DATA_WEIGHTS, 
		FCS_LOADING_WEIGHTS,
		CALC_BIAS_READ_LENGTH, 
		FCS_READ_ADDRESS_BIAS, 
		FCS_READ_DATA_BIAS, 
		FCS_INPUT_VOLUME_SETUP,
		CALC_INPUT_VOLUME_READ_LENGTH, 
		FCS_READ_ADDRESS_INPUT_VOLUME,
		FCS_READ_DATA_INPUT_VOLUME,
		FCS_PROCESSING_DATA,
		CALC_OUTPUT_WRITE_LENGTH, 
		FCS_WRITE_ADDRESS_CONV_OUT,
		FCS_WRITE_DATA_CONV_OUT,
		FCS_WRITE_RESPONSE_CONV_OUT,
		CALC_STRIDE_READ_LENGTH, 
		FCS_READ_ADDRESS_STRIDE,
		FCS_READ_DATA_STRIDE,
		FCS_STRIDE_RETURN,
		FCS_STRIDE_PROCESSING,
		COUNTER_RESET, 
		CALC_PREV_READ_LENGTH, 
		READ_ADDRESS_PREV_DATA, 
		READ_DATA_PREV_DATA, 
		RCS_PREV_DATA_SETUP, 
		RCS_READ_ADDRESS_PREV_DATA,
		RCS_READ_DATA_PREV_DATA	
		); 

    signal current_state : master_state; 
    signal next_state : master_state; 


	-- AXI4FULL signals
	--AXI4 internal temp signals
	signal axi_awaddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awlen    : std_logic_vector(7 downto 0); 
	signal axi_awlen_temp : std_logic_vector(7 downto 0); 
	signal axi_awvalid	: std_logic;
	signal axi_wdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	signal axi_wlast	: std_logic;
	signal axi_wvalid	: std_logic;
	signal axi_wstrb    : std_logic_vector(3 downto 0); 
	signal axi_bready	: std_logic;
	signal axi_araddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arlen    : std_logic_vector(7 downto 0); 
	signal axi_arlen_temp : std_logic_vector(7 downto 0); 
	signal axi_arsize	: std_logic_vector(2 downto 0); 
	signal axi_arvalid	: std_logic;
	signal axi_rready	: std_logic;
	--write beat count in a burst
	signal write_beat_counter : unsigned(7 downto 0); 
	--read beat count in a burst
	signal read_beat_counter	: unsigned(7 downto 0);


	--size of C_M_AXI_BURST_LEN length burst in bytes
	--signal burst_size_bytes	: std_logic_vector(C_TRANSACTIONS_NUM+2 downto 0);
	--The burst counters are used to track the number of burst transfers of C_M_AXI_BURST_LEN burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
	--signal write_burst_counter	: std_logic_vector(C_NO_BURSTS_REQ downto 0);
	--signal read_burst_counter	: std_logic_vector(C_NO_BURSTS_REQ downto 0);
	signal writes_done	        : std_logic;
	signal reads_done	        : std_logic;
	signal burst_write_active	: std_logic;
	signal burst_read_active	: std_logic;
	--Interface response error flags
	signal write_resp_error	    : std_logic;
	signal read_resp_error	    : std_logic;
    
	signal outbuff_rd_en          : std_logic; 
	signal inbuff_din             : std_logic_vector(g_data_width-1 downto 0); 
	signal inbuff_wr_en           : std_logic; 

	signal input_data_addr_reg    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal output_data_addr_reg   : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal weights_addr_reg       : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal bias_addr_reg          : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal prev_addr_reg			: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 	
	
	signal input_addr_counter	  : unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal output_addr_counter	  : unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal weights_addr_counter	  : unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal bias_addr_counter	  : unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal prev_addr_counter	  : unsigned(C_M_AXI_DATA_WIDTH-1 downto 0); 
	
	signal row_counter			  : unsigned(7 downto 0); 
	signal out_volume_row_counter : unsigned(7 downto 0); 
	signal input_volume_row_counter : unsigned(7 downto 0); 
	signal channel_counter	      : unsigned(15 downto 0); 
	signal prev_channel_counter	  : unsigned(15 downto 0); 
	signal output_channel_counter : unsigned(15 downto 0); 
	signal input_channel_counter  : unsigned(15 downto 0); 
	signal writes_remaining 	  : unsigned(15 downto 0);
	signal reads_remaining		  : unsigned(31 downto 0);  
	signal calculated 			  : std_logic; 
	signal column_counter		  : unsigned(7 downto 0); 
	signal more_bursts_needed     : std_logic;
	signal iteration_counter	  : unsigned(15 downto 0); 
	signal channel_loop_counter	  : unsigned(15 downto 0); 
	signal row_loop_counter		  : unsigned(7 downto 0); 


	signal input_volume_height       : std_logic_vector(7 downto 0); 
	signal input_volume_width        : std_logic_vector(7 downto 0); 
	signal input_volume_channels     : std_logic_vector(15 downto 0); 

    signal output_volume_height      : std_logic_vector(7 downto 0); 
    signal output_volume_width		 : std_logic_vector(7 downto 0); 
    signal output_volume_channels    : std_logic_vector(11 downto 0); 

    signal weight_filter_height      : std_logic_vector(3 downto 0); 
    signal weight_filter_width       : std_logic_vector(3 downto 0); 
    signal weight_filter_channels    : std_logic_vector(15 downto 0); 
    signal number_of_filters         : std_logic_vector(15 downto 0); 
	
	signal bias_length				 : std_logic_vector(15 downto 0); 

	signal stride 					 : std_logic_vector(3 downto 0); 
	signal pad                       : std_logic_vector(3 downto 0); 

    signal beta                      : std_logic_vector(g_data_width-1 downto 0); 
    signal epsilon                   : std_logic_vector(g_data_width-1 downto 0);  
    signal fresh_params              : std_logic;  
    signal gamma                     : std_logic_vector(g_data_width-1 downto 0);  
    signal mean                      : std_logic_vector(g_data_width-1 downto 0); 
    signal variance                  : std_logic_vector(g_data_width-1 downto 0);  
   
    signal relu_en                   : std_logic;    
    signal busy                      : std_logic; 	
	signal start		             : std_logic; 
	signal start_reg				 : std_logic_vector(1 downto 0); 
	signal stride_counter            : unsigned(3 downto 0); 
	
	signal filter_counter			 : unsigned(15 downto 0); 
	
	
    signal bias_fifo_din 			: STD_LOGIC_VECTOR(g_data_width-1 downto 0);
    signal bias_fifo_wr_en		  	: std_logic; 	 
    signal bias_values_loaded		: std_logic; 
		   
	signal prev_fifo_din			: std_logic_vector(g_data_width-1 downto 0); 
	signal prev_fifo_wr_en			: std_logic; 
	
	signal affine_select			 : std_logic; 
	signal affine_channels_in_set 			: std_logic_vector(15 downto 0); 
	signal affine_filters_in_set			: std_logic_vector(15 downto 0); 
	signal affine_channels_iterations 			: std_logic_vector(15 downto 0); 
	signal affine_filters_iterations			: std_logic_vector(15 downto 0); 
	
	signal channels_allowed			: std_logic_vector(15 downto 0); 
	signal operation_complete 		: std_logic; 
	
	signal weight_index				: unsigned(31 downto 0); 
	signal input_index				: unsigned(31 downto 0); 
	signal output_index				: unsigned(31 downto 0); 
	signal prev_index 				: unsigned(31 downto 0); 
	signal iteration_index			: unsigned(31 downto 0); 
	signal weight_iteration_index   : unsigned(31 downto 0); 
	signal last_channel_base		: unsigned(31 downto 0); 
	signal out_last_channel_base	: unsigned(31 downto 0); 
	signal prev_last_channel_base	: unsigned(31 downto 0); 
	
	signal data_written 	: std_logic; 
	signal output_base_pixel : unsigned(31 downto 0); 
	signal input_arsize : std_logic_vector(2 downto 0); 
	signal debug_mode : std_logic;
	signal debug_base : unsigned(31 downto 0); 
	signal prev_debug_base : unsigned(31 downto 0); 
	
	signal affine_filter_iteration_counter : unsigned(15 downto 0); 
	signal convolution_done : std_logic; 
	signal fsm_state : std_logic_vector(4 downto 0); 
	
	
begin
	-- I/O Connections assignments

	--I/O Connections. Write Address (AW)
	M_AXI_AWID	<= (others => '0');
	--The AXI address is a concatenation of the target base address + active offset range
	M_AXI_AWADDR	<= axi_awaddr; --std_logic_vector( unsigned(C_M_TARGET_SLAVE_BASE_ADDR) + unsigned(axi_awaddr) );
	M_AXI_AWLEN 	<= axi_awlen; --std_logic_vector( to_unsigned(C_M_AXI_BURST_LEN - 1, 8) );
	M_AXI_AWSIZE	<= "010";
	M_AXI_AWBURST	<= "01";
	M_AXI_AWLOCK	<= '0';
	M_AXI_AWCACHE	<= "0010";
	M_AXI_AWPROT	<= "000";
	M_AXI_AWQOS		<= x"0";
	M_AXI_AWUSER	<= (others => '1');
	M_AXI_AWVALID	<= axi_awvalid;
	M_AXI_WDATA		<= axi_wdata;
	--All bursts are complete and aligned in this example
	M_AXI_WSTRB		<= axi_wstrb; 
	M_AXI_WLAST		<= axi_wlast;
	M_AXI_WUSER		<= (others => '0');
	M_AXI_WVALID	<= axi_wvalid;
	--Write Response (B)
	M_AXI_BREADY	<= axi_bready;
	
	--Read Address (AR)
	M_AXI_ARID	    <= (others => '0');
	M_AXI_ARADDR	<= axi_araddr; --std_logic_vector( unsigned( C_M_TARGET_SLAVE_BASE_ADDR ) + unsigned( axi_araddr ) );
	M_AXI_ARLEN	    <= axi_arlen;
	M_AXI_ARSIZE	<= axi_arsize; --"001";
	M_AXI_ARBURST	<= "01";
	M_AXI_ARLOCK	<= '0';
    M_AXI_ARCACHE	<= "0010";
	M_AXI_ARPROT	<= "000";
	M_AXI_ARQOS	    <= x"0";
	M_AXI_ARUSER	<= (others => '1');
	M_AXI_ARVALID	<= axi_arvalid;
	M_AXI_RREADY	<= axi_rready;

	o_control_reg            <= i_control_reg;
	
	--start 					<= i_control_reg(0);
	debug_mode <= i_control_reg(4); 
	affine_select 			<= i_control_reg(13); 
	o_relu_en 				<= i_control_reg(12); 
	input_arsize			<= i_control_reg(18 downto 16); 

	o_status_reg(0)          <= busy; 
	o_status_reg(3 downto 1) <= (others => '0'); 
	o_status_reg(4)			 <= i_iteration_complete; 
	o_status_reg(5) 	     <= i_more_dsps; 
	o_status_reg(6)          <= i_weights_loaded; 
	o_status_Reg(7)          <= i_conv_complete; 
	o_status_reg(8) 		 <= i_outbuff_empty; 
	o_status_reg(9)          <= i_outbuff_almost_empty; 
	o_status_reg(11 downto 10) <= (others => '0'); 
	o_status_reg(12) 	     <= i_outbuff_full; 
	o_status_reg(13) 		 <= i_outbuff_almost_full; 
	o_status_reg(15 downto 14) <= (others => '0'); 
	o_status_reg(16)         <= i_inbuff_empty; 
	o_status_reg(17) 	     <= i_inbuff_almost_empty; 
	o_status_reg(19 downto 18) <= (others => '0'); 
	o_status_reg(20)         <= i_inbuff_full; 
	o_status_reg(21)         <= i_inbuff_almost_full; 
    o_status_reg(23 downto 22) <= (others => '0'); 
	o_status_reg(31 downto 24) <= (others => '0'); --i_iteration_count; 

	o_input_data_addr_reg      <= i_input_data_addr_reg; 
	o_output_data_addr_reg     <= i_output_data_addr_reg;
	o_weights_addr_reg		   <= i_weights_addr_reg;  
	o_input_volume_params_reg  <= i_input_volume_params_reg; 
	o_output_volume_params_reg <= i_output_volume_params_reg; 
	
    o_input_volume_params_reg  <= i_input_volume_params_reg; 
	input_volume_height        <= i_input_volume_params_reg(31 downto 24);
	input_volume_width         <= i_input_volume_params_reg(23 downto 16); 
	input_volume_channels      <= i_input_volume_params_reg(15 downto 0); 
	
    o_output_volume_params_reg <= i_output_volume_params_reg; 
    output_volume_height       <= i_output_volume_params_reg(31 downto 24); 
    output_volume_width		   <= i_output_volume_params_reg(23 downto 16); 
    output_volume_channels     <= i_output_volume_params_reg(11 downto 0); 

    o_weight_params_reg        <= i_weight_params_reg; 	
    weight_filter_height       <= i_weight_params_reg(31 downto 28); 
    weight_filter_width        <= i_weight_params_reg(27 downto 24); 
    weight_filter_channels     <= i_weight_params_reg(15 downto 0); 
    number_of_filters          <= i_conv_params_reg(31 downto 16); 

	o_conv_params_reg          <= i_conv_params_reg; 
	--number_of_dsps             <= i_conv_params_reg(15 downto 8); 
	stride 					   <= i_conv_params_reg(7 downto 4); 
	pad                        <= i_conv_params_reg(3 downto 0);  
	channels_allowed			<= x"00" & i_conv_params_reg(15 downto 8); 
    
	o_norm_params_0_reg        <= i_norm_params_0_reg; 
	o_norm_params_1_reg        <= i_norm_params_1_reg; 
	o_norm_params_2_reg        <= i_norm_params_2_reg; 
	

	beta 					   <= x"0000" & i_norm_params_0_reg(15 downto 0); 
    epsilon 				   <= x"0000" & i_norm_params_0_reg(31 downto 16); 
	gamma     			       <= x"0000" & i_norm_params_1_reg(15 downto 0); 
	mean     			       <= x"0000" & i_norm_params_1_reg(31 downto 16); 
	variance                   <= x"0000" & i_norm_params_2_reg(15 downto 0); 
	fresh_params               <= i_norm_params_2_reg(16); 
	
	o_bias_addr_reg			   <= i_bias_addr_reg; 
	o_bias_params_reg          <= i_bias_params_reg; 
	bias_length				   <= i_bias_params_reg(15 downto 0); 
	
	o_weight_multiple_0_reg    <= i_weight_multiple_0_reg; 
	o_weight_multiple_1_reg	   <= i_weight_multiple_1_reg; 
	o_input_multiple_0_reg    <= i_input_multiple_0_reg; 
	o_input_multiple_1_reg	   <= i_input_multiple_1_reg; 
	o_output_multiple_0_reg    <= i_output_multiple_0_reg; 
	o_output_multiple_1_reg	   <= i_output_multiple_1_reg; 
	
	o_ch_al_filt 				<= i_output_multiple_1_reg(15 downto 0); 
	
	o_affine_params_reg_0			<= i_affine_params_reg_0; 
	affine_channels_in_set 		<= i_affine_params_reg_0(15 downto 0); 
	affine_filters_in_set		<= i_affine_params_reg_0(31 downto 16); 
	o_affine_params_reg_1			<= i_affine_params_reg_1; 
	affine_channels_iterations	<= i_affine_params_reg_1(15 downto 0); 
	affine_filters_iterations	<= i_affine_params_reg_1(31 downto 16); 
	
	
	
	o_outbuff_rd_en            <= outbuff_rd_en; 
	o_inbuff_din               <= inbuff_din; 
	o_inbuff_wr_en             <= inbuff_wr_en; 

	o_start                    <= start; 
	o_output_volume_size       <= output_volume_height; 
    o_input_volume_channels    <= input_volume_channels;
    o_input_volume_size        <= input_volume_height; 
    o_number_of_filters        <= number_of_filters; 
    o_weight_filter_channels   <= weight_filter_channels; 
    o_weight_filter_size       <= weight_filter_height; 
    o_pad                      <= pad; 
    o_stride                   <= stride; 
   

    o_beta                     <= beta; 
    o_epsilon                  <= epsilon; 
    o_fresh_params             <= fresh_params; 
    o_gamma                    <= gamma; 
    o_mean                     <= mean; 
    o_variance                 <= variance; 
   
    
	o_affine_select				<= affine_select; 
	
    o_bias_fifo_din 			<= bias_fifo_din; 
    o_bias_fifo_wr_en		  	<= bias_fifo_wr_en;  	 
    o_bias_values_loaded		<= bias_values_loaded; 
		   
	o_prev_fifo_din				<= prev_fifo_din; 
	o_prev_fifo_wr_en			<= prev_fifo_wr_en; 
	
	o_channels_in_set 			<= affine_channels_in_set; 
	o_filters_in_set		    <= affine_filters_in_set; 
	
	o_data_written 				<= data_written; 
	o_convolution_done          <= convolution_done; 
	
	ila_master_axi_awaddr				<= axi_awaddr;
	ila_master_axi_awready				<= M_AXI_AWREADY; 
	ila_master_axi_awlen    			<= axi_awlen;
	ila_master_axi_awvalid				<= axi_awvalid;
	ila_master_axi_wdata				<= axi_wdata;
	ila_master_axi_wready				<= M_AXI_WREADY; 
	ila_master_axi_wlast				<= axi_wlast;
	ila_master_axi_wvalid				<= axi_wvalid;
	ila_master_axi_wstrb    			<= axi_wstrb;
	ila_master_axi_bvalid				<= M_AXI_BVALID; 
	ila_master_axi_bready				<= axi_bready;
	ila_master_axi_araddr				<= axi_araddr;
	ila_master_axi_arready				<= M_AXI_ARREADY; 
	ila_master_axi_arlen    			<= axi_arlen;
	ila_master_axi_arsize				<= axi_arsize;
	ila_master_axi_arvalid				<= axi_arvalid;
	ila_master_axi_rdata				<= M_AXI_RDATA; 
	ila_master_axi_rlast				<= M_AXI_RLAST; 
	ila_master_axi_rvalid 				<= M_AXI_RVALID; 
	ila_master_axi_rready				<= axi_rready;
	ila_master_wbc 						<= write_beat_counter;
	ila_master_rbc						<= read_beat_counter;
	ila_master_input_data_addr_reg    	<= input_data_addr_reg;
	ila_master_output_data_addr_reg   	<= output_data_addr_reg;
	ila_master_weights_addr_reg      	<= weights_addr_reg;
	ila_master_bias_addr_reg          	<= bias_addr_reg;
	ila_master_prev_addr_reg			<= prev_addr_reg;	
	ila_master_input_addr_counter	  	<= input_addr_counter; 
	ila_master_output_addr_counter	  	<= output_addr_counter; 
	ila_master_weights_addr_counter	  	<= weights_addr_counter;
	ila_master_bias_addr_counter	  	<= bias_addr_counter ;
	ila_master_prev_addr_counter	  	<= prev_addr_counter;
	ila_master_row_counter			  	<= row_counter;
	ila_master_out_volume_row_counter 	<= out_volume_row_counter;
	ila_master_input_volume_row_counter <= input_volume_row_counter;
	ila_master_channel_counter	      	<= channel_counter ;
	ila_master_prev_channel_counter	  	<= prev_channel_counter;
	ila_master_output_channel_counter 	<= output_channel_counter;
	ila_master_input_channel_counter  	<= input_channel_counter;
	ila_master_writes_remaining 	  	<= writes_remaining;
	ila_master_reads_remaining		 	<= reads_remaining;
	ila_master_calculated 			  	<= calculated ;
	ila_master_column_counter		  	<= column_counter;
	ila_master_more_bursts_needed    	<= more_bursts_needed;
	ila_master_iteration_counter	  	<= iteration_counter;
	ila_master_channel_loop_counter	  	<= channel_loop_counter;
	ila_master_row_loop_counter		  	<= row_loop_counter;
    ila_master_busy                     <= busy;
	ila_master_stride_counter           <= stride_counter;
	ila_master_filter_counter			<= filter_counter;
    ila_master_bias_values_loaded		<= bias_values_loaded;
	ila_master_channels_allowed			<= channels_allowed;
	ila_master_operation_complete 		<= operation_complete;
	ila_master_weight_index				<= weight_index ;
	ila_master_input_index				<= input_index;
	ila_master_output_index				<= output_index;
	ila_master_prev_index 				<= prev_index;
	ila_master_last_channel_base		<= last_channel_base;
	ila_master_out_last_channel_base	<= out_last_channel_base;
	ila_master_prev_last_channel_base	<= prev_last_channel_base; 
	ila_master_data_written 			<= data_written ;
	ila_master_output_base_pixel 		<= output_base_pixel;
	ila_master_input_arsize 			<= input_arsize;
	ila_master_debug_mode 				<= debug_mode ;
	ila_master_affine_filter_iteration_counter <= affine_filter_iteration_counter;
	ila_master_convolution_done 		<= convolution_done;
	ila_master_fsm_state				<= fsm_state; 
	
	
	ila_master_affine_select 				<= affine_select; 
	ila_master_relu_en 						<= i_control_reg(12); 
	ila_master_weights_loaded				<= i_weights_loaded; 
	ila_master_conv_complete 				<= i_conv_complete; 
	ila_master_more_dsps        			<= i_more_dsps; 
	ila_master_iteration_complete 			<= i_iteration_complete;
	--ila_master_operation_complete			<= i_operation_complete; 
	ila_master_volume_complete				<= i_volume_complete; 
    --ila_master_channels_allowed				<= i_channels_allowed; 
    ila_master_dsps_used					<= i_dsps_used; 	
	ila_master_iterations_required 			<= i_iterations_required; 
	ila_master_row_complete 				<= i_row_complete; 
	ila_master_layer_ready 					<= i_layer_ready;  
	ila_master_filter_iterations_required 	<= i_filter_iterations_required; 
	ila_master_acc_row_complete				<= i_acc_row_complete; 
	ila_master_input_volume_height        	<= input_volume_height;
	ila_master_input_volume_width         	<= input_volume_width; 
	ila_master_input_volume_channels      	<= input_volume_channels; 	
    ila_master_output_volume_height       	<= output_volume_height; 
    ila_master_output_volume_width		   	<= output_volume_width; 
    ila_master_output_volume_channels     	<= output_volume_channels; 
    ila_master_weight_filter_height       	<= weight_filter_height; 
    ila_master_weight_filter_width        	<= weight_filter_width; 
    ila_master_weight_filter_channels     	<= weight_filter_channels; 
    ila_master_number_of_filters          	<= number_of_filters; 
	ila_master_stride 					   	<= stride; 
	ila_master_pad                        	<= pad;  
	--ila_master_channels_allowed				<=channels_allowed; 
	ila_master_bias_length					<= bias_length; 
	ila_master_ch_al_filt					<= i_output_multiple_1_reg(15 downto 0); 
	ila_master_affine_channels_in_set 		<= affine_channels_in_set; 
	ila_master_affine_filters_in_set 		<= affine_filters_in_set; 
	ila_master_channels_iterations          <= affine_channels_iterations; 
	ila_master_affine_filters_iterations    <= affine_filters_iterations; 
	ila_master_start 						 <= start; 

	
	state_transition: process(M_AXI_ACLK,M_AXI_ARESETN) is 
	begin 
		if(M_AXI_ARESETN = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(M_AXI_ACLK)) then
			current_state <= next_state; 
		end if; 
	end process; 
	
	kickoff: process(M_AXI_ACLK,M_AXI_ARESETN) is 
	begin 
		if(M_AXI_ARESETN = '0') then 
			start <= '0';
			start_reg <= (others => '0');  

		elsif(rising_edge(M_AXI_ACLK)) then
			start_reg(0) <= i_control_reg(0); 
			start_reg(1) <= start_reg(0); 
					
			if(start_reg(1) = '0' and start_reg(0) = '1') then 
				start <= '1'; 
			elsif(i_volume_complete = '1') then 
				start <= '0';
			end if; 
		end if; 
	end process; 


	next_state_comb: process(current_state,M_AXI_RVALID,i_outbuff_dout,filter_counter, affine_select, affine_channels_in_set, affine_channels_iterations, affine_filter_iteration_counter, affine_filters_in_set, affine_filters_iterations, i_filter_iterations_required, start, i_volume_complete, prev_channel_counter, number_of_filters, i_prev_fifo_full, i_bias_fifo_full, i_row_complete,write_beat_counter,axi_awlen,output_channel_counter,output_volume_channels,out_volume_row_counter,output_volume_height,i_more_dsps,iteration_counter,i_iterations_required, i_layer_ready,i_control_reg,M_AXI_ARREADY,i_inbuff_full,M_AXI_RLAST,more_bursts_needed,i_weights_loaded,channel_counter,channels_allowed,operation_complete,M_AXI_AWREADY, i_outbuff_empty,i_outbuff_valid,M_AXI_WREADY, column_counter,output_volume_width,stride_counter,stride,row_counter,input_volume_height,M_AXI_BVALID, i_acc_row_complete,input_volume_row_counter, axi_wvalid) is 
	begin 
		axi_rready 		<= '0'; 
		axi_bready 		<= '0'; 
		
		--axi_araddr        <= (others => '0'); 
		--axi_arlen         <= (others => '0');  
		--axi_arvalid	      <= '0';
		--axi_arsize 			<= (others => '0');
		
		axi_wlast <= '0'; 
		--axi_awaddr <= (others => '0'); 
		--axi_awsize <= (others => '0'); 
		--axi_awvalid <= '0'; 
		axi_wdata <= (others => '0');  
		axi_wstrb <= (others => '0'); 
		axi_wvalid <= '0'; 
		
		relu_en 		<= '0'; 
		busy 			<= '0'; 
		outbuff_rd_en 	<= '0'; 
		TXN_DONE 		<= '0'; 
		ERROR 			<= '0'; 
		fsm_state		<= "00000"; 

		case current_state is 
		    when IDLE => 
				fsm_state		<= "00000"; 
				busy <= '0'; 
		    	if (start = '1' and i_layer_ready = '1' and i_volume_complete = '0' and affine_select = '0') then 
		    		next_state <= CALC_WEIGHTS_READ_LENGTH; 
		    	elsif (start = '1' and i_layer_ready = '1' and i_volume_complete = '0' and affine_select = '1') then 
		    		next_state <= CALC_BIAS_READ_LENGTH; 
		    	else 
		    		next_state <= IDLE; 
		    	end if; 

			when CALC_WEIGHTS_READ_LENGTH =>
				busy <= '1';			
				fsm_state <= "10100"; 
				next_state <= FCS_READ_ADDRESS_WEIGHTS; 
			
			
			
			when FCS_READ_ADDRESS_WEIGHTS => 
				--axi_araddr <= std_logic_vector(weights_addr_counter + unsigned(weights_addr_reg)); 
				--axi_arvalid	<= '1';
				--axi_arsize <= "010"; 
				
				busy <= '1'; 
				fsm_state		<= "00001"; 
				if(M_AXI_ARREADY = '1') then 
					next_state <= FCS_READ_DATA_WEIGHTS; 
				else 
					next_state <= FCS_READ_ADDRESS_WEIGHTS; 
				end if; 

			when FCS_READ_DATA_WEIGHTS => 
				busy <= '1'; 
				fsm_state		<= "00010"; 
				axi_rready <= '1';
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
					if(M_AXI_RLAST = '0') then 
						next_state <= FCS_READ_DATA_WEIGHTS; 
					else 
						if(more_bursts_needed = '0') then 
							if(filter_counter < unsigned(number_of_filters)-1 and affine_select = '0') then 
								next_state <= CALC_WEIGHTS_READ_LENGTH;
							elsif(filter_counter >= unsigned(number_of_filters)-1 and affine_select = '0') then 
								next_state <= FCS_LOADING_WEIGHTS; 
							elsif(filter_counter < unsigned(affine_filters_in_set)-1 and affine_select = '1') then 
								next_state <= CALC_WEIGHTS_READ_LENGTH;
							elsif(filter_counter >= unsigned(affine_filters_in_set)-1 and affine_select = '1') then 
								next_state <= FCS_LOADING_WEIGHTS; 
							else 
								next_state <= CALC_WEIGHTS_READ_LENGTH;							
							end if; 
						else
							next_state <= CALC_WEIGHTS_READ_LENGTH;
						end if; 
					end if; 
				else 
					next_state <= FCS_READ_DATA_WEIGHTS; 
				end if; 
				
			when FCS_LOADING_WEIGHTS => 
				busy <= '1'; 
				fsm_state		<= "00011"; 
				if(i_weights_loaded = '1' and iteration_counter = 0 and affine_select = '0') then 
					next_state <= CALC_BIAS_READ_LENGTH;
				elsif(i_weights_loaded = '1' and iteration_counter > 0 and affine_select = '0') then -- and input_volume_row_counter < input_volume_height) then 
					next_state <= FCS_INPUT_VOLUME_SETUP; 
				elsif(i_weights_loaded = '1' and iteration_counter = 0 and affine_select = '1') then 
					next_state <= FCS_PROCESSING_DATA; 
				elsif(i_weights_loaded = '1' and iteration_counter > 0 and affine_select = '1') then 
					next_state <= RCS_PREV_DATA_SETUP; 
				else 
					next_state <= FCS_LOADING_WEIGHTS; 
				end if;

			when CALC_BIAS_READ_LENGTH => 
				busy <= '1'; 
				fsm_state <= "10101"; 
				next_state <= FCS_READ_ADDRESS_BIAS; 
				
				
				
			when FCS_READ_ADDRESS_BIAS => 
				--axi_araddr <= bias_addr_reg; 
				--axi_arvalid	<= '1';
				--axi_arsize <= "010";
			
				busy <= '1'; 
				fsm_state		<= "00100"; 
				if(M_AXI_ARREADY = '1') then 
					next_state <= FCS_READ_DATA_BIAS; 
				else 
					next_state <= FCS_READ_ADDRESS_BIAS; 
				end if; 

			when FCS_READ_DATA_BIAS =>
				busy <= '1'; 
				fsm_state		<= "00101"; 
				axi_rready <= '1';
				if(i_bias_fifo_full = '0' and M_AXI_RVALID = '1') then 
					if(M_AXI_RLAST = '0') then 
						next_state <= FCS_READ_DATA_BIAS;					
					else 
						if(more_bursts_needed = '0') then 
							next_state <= FCS_INPUT_VOLUME_SETUP; 
						else 
							next_state <= CALC_BIAS_READ_LENGTH;
						end if; 
					end if; 
				else 
					next_state <= FCS_READ_DATA_BIAS; 
				end if; 
				
			when FCS_INPUT_VOLUME_SETUP => 
				busy <= '1'; 
				fsm_state		<= "00110"; 
				next_state <= CALC_INPUT_VOLUME_READ_LENGTH; 
				
			when CALC_INPUT_VOLUME_READ_LENGTH => 
				busy <= '1'; 
				fsm_state <= "10110"; 
				next_state <= FCS_READ_ADDRESS_INPUT_VOLUME; 
			
			
			when FCS_READ_ADDRESS_INPUT_VOLUME => 
				--axi_araddr <= std_logic_vector(input_addr_counter + unsigned(input_data_addr_reg)); 
				--axi_arvalid	<= '1';
				--axi_arsize <= input_arsize; --"001";
			
				busy <= '1'; 
				fsm_state		<= "00111"; 
				if(M_AXI_ARREADY = '1') then 
					next_state <= FCS_READ_DATA_INPUT_VOLUME;
				else 
					next_state <= FCS_READ_ADDRESS_INPUT_VOLUME; 
				end if; 

			when FCS_READ_DATA_INPUT_VOLUME => 
				busy <= '1'; 
				fsm_state		<= "01000"; 
				axi_rready <= '1';
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
					if(M_AXI_RLAST = '0') then 
						next_state <= FCS_READ_DATA_INPUT_VOLUME; 
					else 
						if(more_bursts_needed = '0') then 
							if(channel_counter < unsigned(channels_allowed)-1 and affine_select = '0') then 
								next_state <= CALC_INPUT_VOLUME_READ_LENGTH;
							elsif(channel_counter >= unsigned(channels_allowed)-1 and affine_select = '0') then 
								next_state <= FCS_PROCESSING_DATA; 
							elsif(channel_counter < unsigned(affine_channels_in_set)-1 and affine_select = '1') then 
								next_state <= CALC_INPUT_VOLUME_READ_LENGTH;
							elsif(channel_counter >= unsigned(affine_channels_in_set)-1 and affine_select = '1') then 
								next_state <= CALC_WEIGHTS_READ_LENGTH; 
							else 
								next_state <= CALC_INPUT_VOLUME_READ_LENGTH; 
							end if; 
						else
							next_state <= CALC_INPUT_VOLUME_READ_LENGTH;
						end if; 

					end if; 
				else 
					next_state <= FCS_READ_DATA_INPUT_VOLUME; 
				end if; 

			when FCS_PROCESSING_DATA => 
				busy <= '1'; 
				fsm_state		<= "01001"; 
				--if(i_acc_row_complete = '1') then 
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					next_state <= CALC_OUTPUT_WRITE_LENGTH; 
				else 
					next_state <= FCS_PROCESSING_DATA; 
				end if;
				
			when CALC_OUTPUT_WRITE_LENGTH => 
				busy <= '1'; 
				fsm_state <= "10111"; 
				next_state <= FCS_WRITE_ADDRESS_CONV_OUT; 
			
			
			when FCS_WRITE_ADDRESS_CONV_OUT =>
				busy <= '1'; 			
				fsm_state		<= "01010"; 
				if(M_AXI_AWREADY = '1') then 
					next_state <= FCS_WRITE_DATA_CONV_OUT; --READ_ADDRESS; 
				else 
					next_state <= FCS_WRITE_ADDRESS_CONV_OUT; --READ_DATA_FIRST_ROWS; 
				end if;


			when FCS_WRITE_DATA_CONV_OUT => 
				axi_wdata <= (others => '0'); 
				axi_wstrb <= "0000";
				axi_wlast <= '0';
				axi_wvalid <= '0'; 
				outbuff_rd_en <= '0';
				
				busy <= '1'; 
				fsm_state		<= "01011"; 
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					if(M_AXI_WREADY = '1') then -- and axi_wvalid = '1') then 
						outbuff_rd_en <= '1'; 
						axi_wvalid <= '1'; 
						axi_wdata <= i_outbuff_dout; 
						axi_wstrb <= (others => '1'); 
						
						if(write_beat_counter < unsigned(axi_awlen) and more_bursts_needed = '0') then 
							next_state <= FCS_WRITE_DATA_CONV_OUT;
							axi_wlast <= '0'; 
						elsif(write_beat_counter < 255 and more_bursts_needed = '1') then 
							next_state <= FCS_WRITE_DATA_CONV_OUT;
							axi_wlast <= '0'; 
						else 
							next_state <= FCS_WRITE_RESPONSE_CONV_OUT;
							axi_wlast <= '1'; 
						end if; 

					else 
						next_state <= FCS_WRITE_DATA_CONV_OUT; 
					end if; 
					
				else 
					next_state <= FCS_WRITE_DATA_CONV_OUT; 
				end if; 				


			when FCS_WRITE_RESPONSE_CONV_OUT => 
				busy <= '1'; 
				fsm_state		<= "01100"; 

				if(M_AXI_BVALID = '1') then 
					axi_bready <= '1'; 

					if(output_channel_counter < unsigned(output_volume_channels)-1 and iteration_counter = 0 and affine_select = '0') then 
						next_state <= FCS_PROCESSING_DATA;
					elsif(output_channel_counter < unsigned(output_volume_channels)-1 and iteration_counter > 0 and affine_select = '0') then 
						next_state <= RCS_PREV_DATA_SETUP; 
					elsif(output_channel_counter < unsigned(affine_filters_in_set)-1 and iteration_counter = 0 and affine_select = '1') then
						next_state <= FCS_PROCESSING_DATA; 
				    elsif(output_channel_counter < unsigned(affine_filters_in_set)-1 and iteration_counter > 0 and affine_select = '1') then
						next_state <= RCS_PREV_DATA_SETUP; 
					else
						if(out_volume_row_counter < unsigned(output_volume_height)-1 and  input_volume_row_counter < unsigned(input_volume_height) and iteration_counter = 0 and affine_select = '0') then 
							next_state <= FCS_STRIDE_PROCESSING; 
						elsif(out_volume_row_counter < unsigned(output_volume_height)-1 and  input_volume_row_counter >= unsigned(input_volume_height) and iteration_counter = 0 and affine_select = '0') then 
							next_state <= FCS_PROCESSING_DATA; 
						elsif(out_volume_row_counter < unsigned(output_volume_height)-1 and iteration_counter > 0 and affine_select = '0') then 
							next_state <= RCS_PREV_DATA_SETUP; 
						elsif(affine_filter_iteration_counter < unsigned(i_filter_iterations_required)-1 and iteration_counter = 0 and affine_select = '1') then 
							next_state <= CALC_WEIGHTS_READ_LENGTH; 
						elsif(affine_filter_iteration_counter < unsigned(i_filter_iterations_required)-1 and iteration_counter > 0 and affine_select = '1') then 
							next_state <= CALC_WEIGHTS_READ_LENGTH; 
						else 
							if(i_more_dsps = '0') then 
								next_state <= IDLE; 
							else 
								if(iteration_counter < unsigned(i_iterations_required)-1 and affine_select = '0') then 
									next_state <= RCS_PREV_DATA_SETUP;
								elsif(iteration_counter < unsigned(i_iterations_required)-1 and affine_select = '1') then 
									next_state <= FCS_INPUT_VOLUME_SETUP;
								else 
									next_state <= IDLE; 
								end if; 
							end if; 
						end if; 
						
					end if;
				else 
					next_state <= FCS_WRITE_RESPONSE_CONV_OUT; 
				end if; 
				
				
			
			when FCS_STRIDE_PROCESSING =>
				busy <= '1'; 
				fsm_state		<= "01101"; 
				next_state <= CALC_STRIDE_READ_LENGTH;

			when CALC_STRIDE_READ_LENGTH => 
				busy <= '1'; 
				fsm_state <= "11000"; 
				next_state <= FCS_READ_ADDRESS_STRIDE; 
				
				
			when FCS_READ_ADDRESS_STRIDE =>
				--axi_araddr <= std_logic_vector(input_addr_counter + unsigned(input_data_addr_reg)); 
				--axi_arvalid	<= '1';
				--axi_arsize <= input_arsize;
			
				busy <= '1'; 
				fsm_state		<= "01110"; 			
				if(M_AXI_ARREADY = '1') then 
					next_state <= FCS_READ_DATA_STRIDE; 
				else 
					next_state <= FCS_READ_ADDRESS_STRIDE; 
				end if; 

			when FCS_READ_DATA_STRIDE => 
				busy <= '1'; 
				fsm_state		<= "01111"; 
				axi_rready <= '1'; 
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
					if(M_AXI_RLAST = '0') then 
						next_state <= FCS_READ_DATA_STRIDE; 
					else 
						if(M_AXI_RLAST = '1') then 						
							if(channel_counter < unsigned(channels_allowed)-1) then 
								next_state <= CALC_STRIDE_READ_LENGTH;
							elsif(channel_counter >= unsigned(channels_allowed)-1) then 
								if(stride_counter < unsigned(stride)-1) then 
									next_state <= CALC_STRIDE_READ_LENGTH;
								else 
									next_state <= FCS_PROCESSING_DATA;
								end if; 
							else 
								next_state <= FCS_READ_DATA_STRIDE;
							end if; 
						else 
							next_state <= FCS_READ_DATA_STRIDE; 
						end if; 
					end if; 
				else 
					next_state <= FCS_READ_DATA_STRIDE;
				end if; 
				
			when RCS_PREV_DATA_SETUP =>
				busy <= '1'; 
				fsm_state		<= "10000"; 
				next_state <= CALC_PREV_READ_LENGTH; 
				
			when CALC_PREV_READ_LENGTH => 
				busy <= '1'; 
				fsm_state <= "11001"; 
				next_state <= RCS_READ_ADDRESS_PREV_DATA; 

			
			when RCS_READ_ADDRESS_PREV_DATA => 
				--axi_araddr <= std_logic_vector(prev_addr_counter + unsigned(prev_addr_reg)); 
				--axi_arvalid	<= '1';
				--axi_arsize <= "010";
			
				busy <= '1'; 
				fsm_state		<= "10001"; 
				if(M_AXI_ARREADY = '1') then 
					next_state <= RCS_READ_DATA_PREV_DATA;
				else 
					next_state <= RCS_READ_ADDRESS_PREV_DATA; 
				end if; 

			when RCS_READ_DATA_PREV_DATA =>
				busy <= '1'; 
				fsm_state		<= "10010"; 
				axi_rready <= '1';
				if(i_prev_fifo_full = '0' and M_AXI_RVALID = '1') then 
					if(M_AXI_RLAST = '0') then 
						next_state <= RCS_READ_DATA_PREV_DATA; 
					else 
						if(prev_channel_counter < unsigned(output_volume_channels)-1 and affine_select = '0') then 
							if(prev_channel_counter = 0 and i_weights_loaded = '0' and affine_select = '0') then 
								next_state <= CALC_WEIGHTS_READ_LENGTH; 								
							else 
								next_state <= FCS_PROCESSING_DATA;
							end if; 
						elsif(prev_channel_counter >= unsigned(output_volume_channels)-1 and input_volume_row_counter < unsigned(input_volume_height) and affine_select = '0') then 
							next_state <= FCS_STRIDE_PROCESSING;
						elsif(prev_channel_counter >= unsigned(output_volume_channels)-1 and input_volume_row_counter >= unsigned(input_volume_height) and affine_select = '0') then 
							next_state <= FCS_PROCESSING_DATA; 								
						elsif(prev_channel_counter < unsigned(affine_filters_in_set)-1 and affine_select = '1') then 
							next_state <= FCS_PROCESSING_DATA; 					
						elsif(prev_channel_counter >= unsigned(affine_filters_in_set)-1 and affine_select = '1') then 
							next_state <= FCS_PROCESSING_DATA; 
						else 
							next_state <= RCS_READ_DATA_PREV_DATA; 
						end if; 
					end if; 
				else
					next_state <= RCS_READ_DATA_PREV_DATA; 
				end if; 
				
				
			when others => 

				fsm_state		<= "10011"; 
				next_state <= IDLE; 


		end case; 

	end process; 


	read_process: process(M_AXI_ACLK,M_AXI_ARESETN) is 
	begin 
		if(M_AXI_ARESETN = '0') then 
			axi_araddr        		<= (others => '0'); 
			axi_arlen         		<= (others => '0');  
			axi_arlen_temp 			<= (others => '0'); 
			axi_arvalid	      		<= '0';
			axi_arsize				<= (others => '0'); 
			inbuff_din        		<= (others => '0'); 
			inbuff_wr_en      		<= '0'; 
			read_beat_counter 		<= (others => '0'); 
			writes_remaining  		<= (others => '0'); 
			reads_remaining   		<= (others => '0'); 
			axi_awaddr         		<= (others => '0'); 
			axi_awlen          		<= (others => '0');
			axi_awlen_temp			<= (others => '0'); 
			more_bursts_needed 		<= '0'; 
			calculated        		<= '0'; 
			axi_awvalid       		<= '0'; 
			input_data_addr_reg 	<= (others => '0'); 
			output_data_addr_reg 	<= (others => '0'); 
			weights_addr_reg   		<= (others => '0'); 
			row_counter        		<= (others => '0'); 
			out_volume_row_counter 	<= (others => '0'); 
			input_volume_row_counter<= (others => '0'); 
			column_counter     		<= (others => '0'); 
			stride_counter     		<= (others => '0'); 
			bias_addr_reg 			<= (others => '0'); 
			output_channel_counter 	<= (others =>'0'); 
			input_channel_counter	<= (others => '0'); 
			iteration_counter 		<= (others => '0'); 
			filter_counter 			<= (others => '0');
			weights_addr_counter    <= (others => '0'); 
			input_addr_counter		<= (others => '0'); 
			output_addr_counter		<= (others => '0'); 
			bias_addr_counter		<= (others => '0'); 
			prev_addr_counter		<= (others => '0'); 
			channel_loop_counter	<= (others => '0'); 
			row_loop_counter		<= (others => '0'); 
			bias_fifo_din			<= (others => '0'); 
			bias_fifo_wr_en			<= '0'; 
			bias_values_loaded		<= '0'; 
			prev_fifo_din			<= (others => '0'); 
			prev_fifo_wr_en			<= '0'; 
			--axi_wdata 				<= (others => '0'); 
			--axi_wvalid 				<= '0'; 
			--axi_wstrb 				<= (others => '0'); 
			--axi_wlast 				<= '0'; 
			write_beat_counter		<= (others => '0'); 
			weight_index 			<= (others => '0'); 
			input_index 			<= (others => '0'); 
			channel_counter			<= (others => '0'); 
			output_index			<= (others => '0'); 
			last_channel_base		<= (others => '0'); 
			out_last_channel_base  <= (others => '0');  
			data_written 			<= '0'; 
			output_base_pixel		<= (others => '0'); 
			prev_addr_reg			<= (others => '0'); 
			prev_index 				<= (others => '0'); 
			prev_channel_counter	<= (others => '0'); 
			prev_last_channel_base  <= (others => '0'); 
			affine_filter_iteration_counter <= (others => '0'); 
			convolution_done <= '0';
			debug_base <= (others => '0'); 
			prev_debug_base <= (others => '0'); 
			iteration_index <= (others => '0'); 
			weight_iteration_index <= (others => '0'); 
			

		elsif(rising_edge(M_AXI_ACLK)) then 

			data_written <= '0'; 
			
			operation_complete <= i_operation_complete; 
			
			
			case current_state is 

			when IDLE => 
			    convolution_done <= '0';
			
				axi_araddr        		<= (others => '0'); 
				axi_arlen         		<= (others => '0');  
				axi_arlen_temp			<= (others => '0'); 
				axi_arvalid	      		<= '0';
				axi_arsize				<= (others => '0'); 
				inbuff_din        		<= (others => '0'); 
				inbuff_wr_en      		<= '0'; 
				read_beat_counter 		<= (others => '0'); 
				writes_remaining  		<= (others => '0'); 
				axi_awaddr         		<= (others => '0'); 
				axi_awlen          		<= (others => '0'); 
				axi_awlen_temp			<= (others => '0'); 
				more_bursts_needed 		<= '0'; 
				calculated        		<= '0'; 
				axi_awvalid       		<= '0'; 
				row_counter        		<= (others => '0'); 
				out_volume_row_counter 	<= (others => '0'); 
				input_volume_row_counter<= (others => '0'); 
				column_counter     		<= (others => '0'); 
				stride_counter     		<= (others => '0'); 
				output_channel_counter 	<= (others =>'0'); 
				input_channel_counter	<= (others => '0'); 
				iteration_counter 		<= (others => '0'); 
				filter_counter 			<= (others => '0');
				weights_addr_counter    <= (others => '0'); 
				input_addr_counter		<= (others => '0'); 
				output_addr_counter		<= (others => '0'); 
				bias_addr_counter		<= (others => '0'); 
				prev_addr_counter		<= (others => '0'); 
				channel_loop_counter	<= (others => '0'); 
				row_loop_counter		<= (others => '0'); 
				bias_fifo_din			<= (others => '0'); 
				bias_fifo_wr_en			<= '0'; 
				bias_values_loaded		<= '0'; 
				prev_fifo_din			<= (others => '0'); 
				prev_fifo_wr_en			<= '0'; 
				--axi_wdata 				<= (others => '0'); 
				--axi_wvalid 				<= '0'; 
				--axi_wstrb 				<= (others => '0'); 
				--axi_wlast 				<= '0'; 
				write_beat_counter		<= (others => '0'); 
				weight_index 			<= (others => '0'); 
				input_index 			<= (others => '0'); 
				channel_counter			<= (others => '0'); 
				output_index			<= (others => '0'); 
				last_channel_base		<= (others => '0'); 
				out_last_channel_base		<= (others => '0');
				data_written 			<= '0'; 
				output_base_pixel		<= (others => '0'); 
				
				prev_index 				<= (others => '0'); 
				prev_channel_counter	<= (others => '0'); 
				prev_last_channel_base  <= (others => '0'); 
				affine_filter_iteration_counter <= (others => '0'); 
				debug_base <= (others => '0'); 
				prev_debug_base <= (others => '0'); 
				iteration_index <= (others => '0'); 
				weight_iteration_index <= (others => '0'); 
			
				if(i_slv_reg_wren(2) = '1' ) then 
					input_data_addr_reg <= i_input_data_addr_reg; 
				else 
					input_data_addr_reg <= input_data_addr_reg; 
				end if; 


				if(i_slv_reg_wren(3) = '1') then 
					output_data_addr_reg <= i_output_data_addr_reg; 
					prev_addr_reg 		 <= i_output_data_addr_reg; 
				else 
					output_data_addr_reg <= output_data_addr_reg;
					prev_addr_reg		 <= prev_addr_reg; 				
				end if; 

				if(i_slv_reg_wren(4) = '1') then 
					weights_addr_reg <= i_weights_addr_reg; 
				else 
					weights_addr_reg <= weights_addr_reg; 
				end if; 

				if(i_slv_reg_wren(12)= '1') then 
					bias_addr_reg <= i_bias_addr_reg; 
				else 
					bias_addr_reg <= bias_addr_reg; 
				end if; 
				
				
				--reads_remaining <= to_unsigned(to_integer(unsigned(weight_filter_height)*unsigned(weight_filter_width)*unsigned(i_channels_allowed)*unsigned(number_of_filters)),16); 
				if(affine_select = '0') then 
					reads_remaining <= unsigned(i_weight_multiple_0_reg)-1; 
				else 
					reads_remaining <= x"0000" & unsigned(bias_length);
				end if; 
					
				
			--FIRST CHANNEL SET: READ IN THE FIRST SET OF WEIGHT VALUES===============================================================
			when CALC_WEIGHTS_READ_LENGTH => 
				calculated <= '1'; 
				prev_fifo_wr_en <= '0';
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 
				
				if(reads_remaining > 255 and calculated = '0') then 
					axi_arlen_temp <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_arlen_temp <= std_logic_vector(reads_remaining(7 downto 0)); --std_logic_vector(to_unsigned(to_integer(unsigned(weight_filter_width)*unsigned(number_of_filters)*unsigned(i_channels_allowed)),8)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
					--weights_addr_counter <= (others => '0'); 
				else 
					axi_arlen_temp <= axi_arlen_temp; 
					more_bursts_needed <= more_bursts_needed; 
				end if;
			
			when FCS_READ_ADDRESS_WEIGHTS => 
				
				axi_araddr <= std_logic_vector(weights_addr_counter + unsigned(weights_addr_reg)); 
				axi_arsize <= "010"; 
				axi_arlen <= axi_arlen_temp; 
				
				if(M_AXI_ARREADY = '1') then 
                    axi_arvalid <= '0'; 
                else 
                    axi_arvalid <= '1'; 
                end if; 

			-- when FCS_READ_ADDRESS_WEIGHTS => 
				-- prev_fifo_wr_en <= '0';
				-- axi_araddr <= std_logic_vector(weights_addr_counter + unsigned(weights_addr_reg)); 
				-- axi_arvalid	<= '1';
				-- calculated <= '1'; 
				-- axi_arsize <= "010"; 
				
				-- inbuff_din <= (others => '0'); 
				-- inbuff_wr_en <= '0'; 

				-- if(reads_remaining > 255 and calculated = '0') then 
					-- axi_arlen <= x"FF"; 
					-- reads_remaining <= reads_remaining - 256; 
					-- more_bursts_needed <= '1'; 
				-- elsif(reads_remaining <= 255 and calculated = '0') then 
					-- axi_arlen <= std_logic_vector(reads_remaining(7 downto 0)); --std_logic_vector(to_unsigned(to_integer(unsigned(weight_filter_width)*unsigned(number_of_filters)*unsigned(i_channels_allowed)),8)); 
					-- more_bursts_needed <= '0'; 
					-- reads_remaining <= (others => '0'); 
					-- --weights_addr_counter <= (others => '0'); 
				-- else 
					-- axi_arlen <= axi_arlen; 
					-- more_bursts_needed <= more_bursts_needed; 
				-- end if;

			when FCS_READ_DATA_WEIGHTS => 
				axi_arvalid <= '0'; 
				calculated <= '0'; 
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
				
					if(weights_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
						inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
					elsif(weights_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
						inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000";
					elsif(g_bytes_per_data = 4) then 
						inbuff_din <= M_AXI_RDATA; 
					end if; 
					
					inbuff_wr_en <= '1'; 

					if(M_AXI_RLAST = '0') then 				
						read_beat_counter <= read_beat_counter + 1; 
						weights_addr_counter <= unsigned(weights_addr_counter) + g_bytes_per_data; 
					else 
						read_beat_counter <= (others => '0'); 
						
						if(filter_counter < unsigned(number_of_filters)-1 and more_bursts_needed = '0' and affine_select = '0') then 
							filter_counter <= filter_counter + 1; 
							weights_addr_counter <= weight_index + unsigned(i_weight_multiple_1_reg(31-(g_bytes_per_data/2) downto 0)&"00");  
							weight_index <= weight_index + unsigned(i_weight_multiple_1_reg(31-(g_bytes_per_data/2) downto 0)&"00");  
							reads_remaining <= unsigned(i_weight_multiple_0_reg)-1;  
						elsif(filter_counter >= unsigned(number_of_filters)-1 and more_bursts_needed = '0' and affine_select = '0') then 
							weight_index <= weights_addr_counter - weight_index + g_bytes_per_data + weight_iteration_index; 
							weights_addr_counter <= weights_addr_counter - weight_index + g_bytes_per_data + weight_iteration_index; 
							weight_iteration_index <= weights_addr_counter - weight_index + g_bytes_per_data + weight_iteration_index;
						elsif(filter_counter < unsigned(number_of_filters)-1 and more_bursts_needed = '1' and affine_select = '0') then 
							weights_addr_counter <= unsigned(weights_addr_counter) + g_bytes_per_data;
						elsif(filter_counter < unsigned(affine_filters_in_set)-1 and more_bursts_needed = '0' and affine_select = '1') then 
							filter_counter <= filter_counter + 1; 
							weights_addr_counter <= weight_index + unsigned(i_weight_multiple_1_reg(31-(g_bytes_per_data/2) downto 0)&"00");  
							weight_index <= weight_index + unsigned(i_weight_multiple_1_reg(31-(g_bytes_per_data/2) downto 0)&"00");   
							reads_remaining <= unsigned(i_weight_multiple_0_reg)-1;  
						elsif(filter_counter >= unsigned(affine_filters_in_set)-1 and affine_filter_iteration_counter < unsigned(i_filter_iterations_required)-1 and more_bursts_needed = '0' and affine_select = '1') then 
							weights_addr_counter <= weight_index + unsigned(i_weight_multiple_1_reg(31-(g_bytes_per_data/2) downto 0)&"00");  
							weight_index <= weight_index + unsigned(i_weight_multiple_1_reg(31-(g_bytes_per_data/2) downto 0)&"00");  
						elsif(filter_counter >= unsigned(affine_filters_in_set)-1 and affine_filter_iteration_counter >= unsigned(i_filter_iterations_required)-1 and more_bursts_needed = '0' and affine_select = '1') then 
							-- weight_index <= weights_addr_counter - weight_index + g_bytes_per_data; 
							-- weights_addr_counter <= weights_addr_counter - weight_index + g_bytes_per_data; 
							weight_index <= weights_addr_counter - weight_index + g_bytes_per_data + weight_iteration_index; 
							weights_addr_counter <= weights_addr_counter - weight_index + g_bytes_per_data + weight_iteration_index; 
							weight_iteration_index <= weights_addr_counter - weight_index + g_bytes_per_data + weight_iteration_index;
						elsif(filter_counter < unsigned(affine_filters_in_set)-1 and more_bursts_needed = '1' and affine_select = '1') then 
							weights_addr_counter <= unsigned(weights_addr_counter) + g_bytes_per_data;
						else 
							weights_addr_counter <= unsigned(weights_addr_counter) + g_bytes_per_data;
						end if; 					
						
					end if; 	
						
						
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					read_beat_counter <= read_beat_counter; 
					weights_addr_counter <= weights_addr_counter; 
				end if; 

				
			--FIRST CHANNEL SET: HOLD UNTIL THE WEIGHTS ARE LOADED INTO THE BUFFERS===============================================================
			when FCS_LOADING_WEIGHTS => 
				filter_counter <= (others => '0'); 
				more_bursts_needed <= '0'; 
				--reads_remaining <= x"0000" & unsigned(bias_length)-1; 
				read_beat_counter <= (others => '0'); 
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 
				
				if(affine_select = '0') then 
					reads_remaining <= x"0000" & unsigned(bias_length);
				else 
					reads_remaining <= unsigned(i_weight_multiple_0_reg)-1;	
				end if; 
					

			
			--FIRST CHANNEL SET: READ IN THE BIAS VALUES (ONLY NEEDS TO BE DONE DURING FIRST CHANNEL SET)===============================================================	
			
			when CALC_BIAS_READ_LENGTH => 
				calculated <= '1'; 
				bias_fifo_din <= (others => '0'); 
				bias_fifo_wr_en <= '0'; 
				
				if(reads_remaining > 255 and calculated = '0') then 
					axi_arlen_temp <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_arlen_temp <= std_logic_vector(reads_remaining(7 downto 0)); --std_logic_vector(to_unsigned(to_integer(unsigned(weight_filter_width)*unsigned(number_of_filters)*unsigned(i_channels_allowed)),8)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_arlen_temp <= axi_arlen_temp; 
					more_bursts_needed <= more_bursts_needed; 
				end if;
				
			when FCS_READ_ADDRESS_BIAS => 
				axi_araddr <= bias_addr_reg; 
				axi_arsize <= "010";
				axi_arlen <= axi_arlen_temp; 
				
				if(M_AXI_ARREADY = '1') then 
                    axi_arvalid <= '0'; 
                else 
                    axi_arvalid <= '1'; 
                end if; 

			
			-- when FCS_READ_ADDRESS_BIAS => 
				-- axi_araddr <= bias_addr_reg; 
				-- axi_arvalid	<= '1';
				-- calculated <= '1'; 
				-- axi_arsize <= "010";
				
				-- bias_fifo_din <= (others => '0'); 
				-- bias_fifo_wr_en <= '0'; 

				-- if(reads_remaining > 255 and calculated = '0') then 
					-- axi_arlen <= x"FF"; 
					-- reads_remaining <= reads_remaining - 256; 
					-- more_bursts_needed <= '1'; 
				-- elsif(reads_remaining <= 255 and calculated = '0') then 
					-- axi_arlen <= std_logic_vector(reads_remaining(7 downto 0)); --std_logic_vector(to_unsigned(to_integer(unsigned(weight_filter_width)*unsigned(number_of_filters)*unsigned(i_channels_allowed)),8)); 
					-- more_bursts_needed <= '0'; 
					-- reads_remaining <= (others => '0'); 
				-- else 
					-- axi_arlen <= axi_arlen; 
					-- more_bursts_needed <= more_bursts_needed; 
				-- end if;
				

			when FCS_READ_DATA_BIAS => 
				axi_arvalid <= '0';
				calculated <= '0'; 
				if(i_bias_fifo_full = '0' and M_AXI_RVALID = '1') then 
				
					if(bias_addr_reg(1 downto 0) = "00" and g_bytes_per_data = 2) then 
						bias_fifo_din <= M_AXI_RDATA(15 downto 0) & x"0000";
					elsif(bias_addr_reg(1 downto 0) = "10" and g_bytes_per_data = 2) then 
						bias_fifo_din <= M_AXI_RDATA(31 downto 16) & x"0000";
					elsif(g_bytes_per_data = 4) then 
						bias_fifo_din <= M_AXI_RDATA; 
					end if; 
					
					bias_fifo_wr_en <= '1';
					
					if(M_AXI_RLAST = '0') then 
						read_beat_counter <= read_beat_counter + 1; 
						bias_addr_reg <= std_logic_vector(unsigned(bias_addr_reg) + g_bytes_per_data); 					
					else 
						read_beat_counter <= (others => '0'); 					
						if(more_bursts_needed = '0') then 
							--reads_remaining <= to_unsigned(to_integer(unsigned(weight_filter_height)-unsigned(pad)*unsigned(input_volume_width)*unsigned(i_channels_allowed)),32); 
							reads_remaining <= unsigned(i_input_multiple_1_reg)-1; 
						else 
							reads_remaining <= reads_remaining; 
						end if;
					end if; 
						
				else 
					bias_fifo_din <= (others => '0'); 
					bias_fifo_wr_en <= '0'; 
					read_beat_counter <= read_beat_counter; 
					bias_addr_reg <= bias_addr_reg; 
				end if; 
				
			
				
			when FCS_INPUT_VOLUME_SETUP => 
				bias_fifo_din <= (others => '0'); 
				bias_fifo_wr_en <= '0'; 
			
				filter_counter <= (others => '0'); 
				read_beat_counter <= (others => '0'); 
				channel_counter <= (others => '0'); 

				if(affine_select = '0') then 
					reads_remaining <= unsigned(i_input_multiple_1_reg)-1;  --(WH-PAD)*IW*CH_AL
				else 
					reads_remaining <= unsigned(i_input_multiple_0_reg)-1; 
				end if; 
				

			--FIRST CHANNEL SET: READ IN THE FIRST FEW ROWS OF THE IMAGE===============================================================
			when CALC_INPUT_VOLUME_READ_LENGTH => 
				calculated <= '1'; 
				read_beat_counter <= (others => '0'); 
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 

				if(reads_remaining > 255 and calculated = '0') then 
					axi_arlen_temp <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_arlen_temp <= std_logic_vector(reads_remaining(7 downto 0)); --std_logic_vector(to_unsigned(to_integer(unsigned(input_volume_width)*unsigned(weight_filter_height)),8)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_arlen_temp <= axi_arlen_temp; 
					more_bursts_needed <= more_bursts_needed; 
				end if;

			
			when FCS_READ_ADDRESS_INPUT_VOLUME => 
				axi_araddr <= std_logic_vector(input_addr_counter + unsigned(input_data_addr_reg)); 
				axi_arsize <= input_arsize; --"010";
				axi_arlen <= axi_arlen_temp; 
				
				if(M_AXI_ARREADY = '1') then 
                    axi_arvalid <= '0'; 
                else 
                    axi_arvalid <= '1'; 
                end if; 


			-- when FCS_READ_ADDRESS_INPUT_VOLUME => 
				-- axi_araddr <= std_logic_vector(input_addr_counter + unsigned(input_data_addr_reg)); 
				-- axi_arvalid	<= '1';
				-- calculated <= '1'; 
				-- read_beat_counter <= (others => '0'); 
				-- axi_arsize <= "010";
				
				-- inbuff_din <= (others => '0'); 
				-- inbuff_wr_en <= '0'; 

				-- if(reads_remaining > 255 and calculated = '0') then 
					-- axi_arlen <= x"FF"; 
					-- reads_remaining <= reads_remaining - 256; 
					-- more_bursts_needed <= '1'; 
				-- elsif(reads_remaining <= 255 and calculated = '0') then 
					-- axi_arlen <= std_logic_vector(reads_remaining(7 downto 0)); --std_logic_vector(to_unsigned(to_integer(unsigned(input_volume_width)*unsigned(weight_filter_height)),8)); 
					-- more_bursts_needed <= '0'; 
					-- reads_remaining <= (others => '0'); 
				-- else 
					-- axi_arlen <= axi_arlen; 
					-- more_bursts_needed <= more_bursts_needed; 
				-- end if;
				
			when FCS_READ_DATA_INPUT_VOLUME => 
				axi_arvalid <= '0';
				calculated <= '0'; 
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
					if(input_addr_counter(1 downto 0) = "00" and axi_arsize = "001") then 
					--if(axi_araddr(1 downto 0) = "00" and axi_arsize = "001") then 
						inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
					elsif(input_addr_counter(1 downto 0) = "10" and axi_arsize = "001") then 
					--elsif(axi_araddr(1 downto 0) = "10" and axi_arsize = "001") then 
						inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000";
					elsif(axi_arsize = "010") then 
						inbuff_din <= M_AXI_RDATA; 
					end if; 
					
					inbuff_wr_en <= '1'; 
					
					if(M_AXI_RLAST = '0') then 
						read_beat_counter <= read_beat_counter + 1; 
						if(axi_arsize = "001") then 
							input_addr_counter <= input_addr_counter + 2; 
						else 
							input_addr_counter <= input_addr_counter + 4; 
						end if; 
					else 
						read_beat_counter <= (others => '0'); 
						
						if(axi_arsize = "001") then 
							if(channel_counter < unsigned(channels_allowed)-1 and more_bursts_needed = '0' and affine_select = '0') then 
								channel_counter <= channel_counter + 1; 
								input_addr_counter <= input_index + unsigned(i_input_multiple_0_reg(31-1 downto 0)&"0");  
								input_index <= input_index + unsigned(i_input_multiple_0_reg(31-1 downto 0)&"0");   						
								reads_remaining <= unsigned(i_input_multiple_1_reg)-1;  
							elsif(channel_counter >= unsigned(channels_allowed)-1 and more_bursts_needed = '0' and affine_select = '0') then 
								last_channel_base <= input_index; 
								input_index <= input_addr_counter + 2 - input_index + iteration_index;
								input_addr_counter <= input_addr_counter + 2 - input_index + iteration_index;
								input_volume_row_counter <= "0000" & unsigned(weight_filter_height) - unsigned(pad); 
							elsif(channel_counter < unsigned(channels_allowed)-1 and more_bursts_needed = '1' and affine_select = '0') then 
								input_addr_counter <= unsigned(input_addr_counter) + 2;
							elsif(channel_counter < unsigned(affine_channels_in_set)-1 and more_bursts_needed = '0' and affine_select = '1') then 
								channel_counter <= channel_counter + 1; 
								input_addr_counter <= unsigned(input_addr_counter) + 2;  
								input_index <= unsigned(input_addr_counter) + 2;
								reads_remaining <= unsigned(i_input_multiple_0_reg)-1;  
							elsif(channel_counter >= unsigned(affine_channels_in_set)-1 and more_bursts_needed = '0' and affine_select = '1') then 
								last_channel_base <= input_index; 
								input_addr_counter <= unsigned(input_addr_counter) + 2;  
								input_index <= unsigned(input_addr_counter) + 2;
								input_volume_row_counter <= input_volume_row_counter + unsigned(input_volume_height);
								reads_remaining <= unsigned(i_weight_multiple_0_reg)-1;
							elsif(channel_counter < unsigned(affine_channels_in_set)-1 and more_bursts_needed = '1' and affine_select = '1') then 
								input_addr_counter <= unsigned(input_addr_counter) + 2;
							else 
								input_addr_counter <= unsigned(input_addr_counter) + 2;
							end if; 
							
						elsif(axi_arsize = "010") then 
							if(channel_counter < unsigned(channels_allowed)-1 and more_bursts_needed = '0' and affine_select = '0') then 
								channel_counter <= channel_counter + 1; 
								input_addr_counter <= input_index + unsigned(i_input_multiple_0_reg(31-2 downto 0)&"00");  
								input_index <= input_index + unsigned(i_input_multiple_0_reg(31-2 downto 0)&"00");   
								reads_remaining <= unsigned(i_input_multiple_1_reg)-1;  
							elsif(channel_counter >= unsigned(channels_allowed)-1 and more_bursts_needed = '0' and affine_select = '0') then 
								last_channel_base <= input_index; 
								input_index <= input_addr_counter + 4 - input_index + iteration_index;
								input_addr_counter <= input_addr_counter + 4 - input_index + iteration_index;
								input_volume_row_counter <= "0000" & unsigned(weight_filter_height) - unsigned(pad); 
							elsif(channel_counter < unsigned(channels_allowed)-1 and more_bursts_needed = '1' and affine_select = '0') then 
								input_addr_counter <= unsigned(input_addr_counter) + 4;
							elsif(channel_counter < unsigned(affine_channels_in_set)-1 and more_bursts_needed = '0' and affine_select = '1') then 
								channel_counter <= channel_counter + 1; 
								input_addr_counter <= unsigned(input_addr_counter) + 4;  
								input_index <= unsigned(input_addr_counter) + 4;
								reads_remaining <= unsigned(i_input_multiple_0_reg)-1;  
							elsif(channel_counter >= unsigned(affine_channels_in_set)-1 and more_bursts_needed = '0' and affine_select = '1') then 
								last_channel_base <= input_index; 
								input_addr_counter <= unsigned(input_addr_counter) + 4;  
								input_index <= unsigned(input_addr_counter) + 4;
								input_volume_row_counter <= input_volume_row_counter + unsigned(input_volume_height); 
								reads_remaining <= unsigned(i_weight_multiple_0_reg)-1;  
							elsif(channel_counter < unsigned(affine_channels_in_set)-1 and more_bursts_needed = '1' and affine_select = '1') then 
								input_addr_counter <= unsigned(input_addr_counter) + 4;
							else 
								input_addr_counter <= unsigned(input_addr_counter) + 4;
							end if; 
						end if; 
						
					end if; 	
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					read_beat_counter <= read_beat_counter; 
					input_addr_counter <= input_addr_counter; 
				end if; 
				
			--FIRST CHANNEL SET: HOLD UNTIL THE FIRST OUTPUT VOLUME ROW IS PROCESSED===============================================================
			
			when FCS_PROCESSING_DATA => 
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 
				prev_fifo_wr_en <= '0';
				writes_remaining <= to_unsigned(to_integer(unsigned(output_volume_width)),16)-1; 
								
				
			--FIRST CHANNEL SET: WRITE OUT THE CONVOLUTION RESULTS FOR THE FIRST ROW OF THE OUPUT VOLUME===============================================================
			when CALC_OUTPUT_WRITE_LENGTH => 
				prev_fifo_wr_en <= '0';
				calculated <= '1';	
				
				if(writes_remaining > 255 and calculated = '0') then 
				    axi_awlen_temp <= x"FF"; 
					writes_remaining <= writes_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(writes_remaining <= 255 and calculated = '0') then 
				    axi_awlen_temp <= std_logic_vector(writes_remaining(7 downto 0)); 
					more_bursts_needed <= '0'; 
					writes_remaining <= (others => '0'); 
				else 
					axi_awlen_temp <= axi_awlen_temp;
					more_bursts_needed <= more_bursts_needed; 
				end if;

				
			
			when FCS_WRITE_ADDRESS_CONV_OUT => 
				axi_awaddr <= std_logic_vector(output_addr_counter + unsigned(output_data_addr_reg));
				--axi_awsize <= "001";
				axi_awlen <= axi_awlen_temp; 
				
				if(M_AXI_AWREADY = '1') then -- and calculated = '1') then 
                    axi_awvalid <= '0'; 
                else 
                    axi_awvalid <= '1'; 
                end if; 


				
			-- when FCS_WRITE_ADDRESS_CONV_OUT => 
				-- prev_fifo_wr_en <= '0';
				-- axi_awaddr <= std_logic_vector(output_addr_counter + unsigned(output_data_addr_reg));
				-- axi_awvalid <= '1'; 
				-- --axi_awsize <= "001";
				
				-- if(writes_remaining > 255 and calculated = '0') then 
				    -- axi_awlen <= x"FF"; 
					-- writes_remaining <= writes_remaining - 256; 
					-- more_bursts_needed <= '1'; 
				-- elsif(writes_remaining <= 255 and calculated = '0') then 
				    -- axi_awlen <= std_logic_vector(writes_remaining(7 downto 0)); 
					-- more_bursts_needed <= '0'; 
					-- writes_remaining <= (others => '0'); 
				-- else 
					-- axi_awlen <= axi_awlen;
					-- more_bursts_needed <= more_bursts_needed; 
				-- end if;

				-- calculated <= '1';	

				
			when FCS_WRITE_DATA_CONV_OUT =>
				--axi_awaddr <= (others => '0');
				--axi_awlen <= x"00"; 
				--axi_awsize <= "000";
				axi_awvalid <= '0'; 
				calculated <= '0'; 
				
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					--axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then -- and axi_wvalid = '1') then 
					
						--axi_wdata <= i_outbuff_dout; 
						--axi_wstrb <= (others => '1'); 
						output_addr_counter <= output_addr_counter + 4;
					
						if(write_beat_counter < unsigned(axi_awlen)) then 
							write_beat_counter <= write_beat_counter + 1;  
							--axi_wlast <= '0'; 	
						else 
							--axi_wlast <= '1'; 
							--axi_wvalid <= '0'; 
							write_beat_counter <= (others => '0');
						end if; 
					end if; 
					
				else 
					--axi_wdata <= (others => '0'); 
					--axi_wvalid <= '0'; 
					--axi_wstrb <= "0000"; 
					--axi_wlast <= '0'; 
				end if; 

			when FCS_WRITE_RESPONSE_CONV_OUT =>  
				--axi_wdata <= (others => '0'); 
				--axi_wvalid <= '0'; 
				--axi_wstrb <= "0000"; 
				--axi_wlast <= '0'; 
				if(M_AXI_BVALID = '1') then 
					data_written <= '1'; 
					if(output_channel_counter < unsigned(output_volume_channels)-1 and affine_select = '0') then 
						output_channel_counter <= output_channel_counter + 1; 
						output_addr_counter <= output_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");  
						output_index <= output_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");   
						
					elsif(output_channel_counter < unsigned(affine_filters_in_set)-1 and affine_select = '1') then 
						output_channel_counter <= output_channel_counter + 1; 
						prev_channel_counter <= prev_channel_counter + 1; 
						output_addr_counter <= output_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");  
						output_index <= output_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");   
					else 
						 
						output_channel_counter <= (others => '0'); 
						prev_channel_counter <= (others => '0'); 
						
						if(out_volume_row_counter < unsigned(output_volume_height)-1 and affine_select = '0') then 
							out_volume_row_counter <= out_volume_row_counter + 1; 

							if(out_volume_row_counter = 0 and debug_mode = '0') then 
								out_last_channel_base <= output_index;
								output_index <= unsigned(output_addr_counter) - output_index; 
								output_addr_counter <= unsigned(output_addr_counter) - output_index; 
							elsif(out_volume_row_counter > 0 and debug_mode = '0') then  
								output_index <= unsigned(output_addr_counter) - out_last_channel_base; 
								output_addr_counter <= unsigned(output_addr_counter) - out_last_channel_base;
							elsif(out_volume_row_counter = 0 and debug_mode = '1') then 
								out_last_channel_base <= output_index;
								output_index <= unsigned(output_addr_counter) - output_index + debug_base; 
								output_addr_counter <= unsigned(output_addr_counter) - output_index + debug_base; 
							elsif(out_volume_row_counter > 0 and debug_mode = '1') then  
								output_index <= unsigned(output_addr_counter) - out_last_channel_base + debug_base; 
								output_addr_counter <= unsigned(output_addr_counter) - out_last_channel_base + debug_base;
							end if; 
							
							
						elsif(affine_filter_iteration_counter < unsigned(i_filter_iterations_required)-1 and affine_select = '1') then 
								output_addr_counter <= unsigned(output_addr_counter); 
								output_index <= unsigned(output_addr_counter);
								affine_filter_iteration_counter <= affine_filter_iteration_counter + 1; 
								
						else 
							out_volume_row_counter <= (others => '0'); 
							prev_channel_counter <= (others => '0');--x"0001"; 
							affine_filter_iteration_counter <= (others => '0'); 
							
							if(debug_mode = '0') then 
								output_addr_counter <= (others => '0'); 
								output_index <= (others => '0'); 
								prev_index <= (others => '0');
								prev_addr_counter <= (others => '0');
							else 
								output_addr_counter <= unsigned(output_addr_counter); 
								output_index <= unsigned(output_addr_counter);
								prev_index <= prev_index;
								prev_addr_counter <= prev_addr_counter;
								debug_base <= unsigned(output_addr_counter);
							end if; 
							
							if(i_more_dsps = '0') then 
								iteration_counter <= (others => '0');  
								convolution_done <= '1'; 
							else 
								if(iteration_counter < unsigned(i_iterations_required)-1) then 
									iteration_counter <= iteration_counter + 1;
									convolution_done <= '0';
								else 
									iteration_counter <= (others => '0'); 
									convolution_done <= '1';
								end if; 
							end if; 
						end if; 
					end if; 
				end if; 
				
			when FCS_STRIDE_PROCESSING => 
				prev_fifo_wr_en <= '0';
				reads_remaining <= to_unsigned(to_integer(unsigned(input_volume_width)),32)-1; 
				channel_counter <= (others => '0'); 
				
			--FIRST CHANNEL SET: READ IN THE NUMBER OF ROWS INDICATED BY STRIDE VALUE===============================================================	
			when CALC_STRIDE_READ_LENGTH => 
				calculated <= '1'; 
				read_beat_counter <= (others => '0'); 
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 
				
				if(reads_remaining > 255 and calculated = '0') then 
					axi_arlen_temp <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_arlen_temp <= std_logic_vector(reads_remaining(7 downto 0)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_arlen_temp <= axi_arlen_temp; 
					more_bursts_needed <= more_bursts_needed; 
				end if;				
				

			when FCS_READ_ADDRESS_STRIDE => 
				axi_araddr <= std_logic_vector(input_addr_counter + unsigned(input_data_addr_reg)); 
				axi_arsize <= input_arsize;
				axi_arlen <= axi_arlen_temp; 
				
				if(M_AXI_ARREADY = '1') then 
                    axi_arvalid <= '0'; 
                else 
                    axi_arvalid <= '1'; 
                end if; 

			-- when FCS_READ_ADDRESS_STRIDE => 
				-- axi_araddr <= std_logic_vector(input_addr_counter + unsigned(input_data_addr_reg)); 
				-- axi_arvalid	<= '1';
				-- calculated <= '1'; 
				-- read_beat_counter <= (others => '0'); 
				-- axi_arsize <= "010";
				
				-- inbuff_din <= (others => '0'); 
				-- inbuff_wr_en <= '0'; 
				

				-- if(reads_remaining > 255 and calculated = '0') then 
					-- axi_arlen <= x"FF"; 
					-- reads_remaining <= reads_remaining - 256; 
					-- more_bursts_needed <= '1'; 
				-- elsif(reads_remaining <= 255 and calculated = '0') then 
					-- axi_arlen <= std_logic_vector(reads_remaining(7 downto 0)); 
					-- more_bursts_needed <= '0'; 
					-- reads_remaining <= (others => '0'); 
				-- else 
					-- axi_arlen <= axi_arlen; 
					-- more_bursts_needed <= more_bursts_needed; 
				-- end if;				
				
				
				
			when FCS_READ_DATA_STRIDE => 
				axi_arvalid <= '0';
				calculated <= '0'; 
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
					
					if(input_addr_counter(1 downto 0) = "00" and axi_arsize = "001") then 
						inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
					elsif(input_addr_counter(1 downto 0) = "10" and axi_arsize = "001") then 
						inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000";
					elsif(axi_arsize = "010") then 
						inbuff_din <= M_AXI_RDATA; 
					end if; 
					
					inbuff_wr_en <= '1'; 

					if(M_AXI_RLAST = '0') then 
						if(input_addr_counter(1 downto 0) = "00" and axi_arsize = "001") then 
							input_addr_counter <= input_addr_counter + 2; 
						elsif(input_addr_counter(1 downto 0) = "10" and axi_arsize = "001") then 
							input_addr_counter <= input_addr_counter + 2; 
						elsif(axi_arsize = "010") then 
							input_addr_counter <= input_addr_counter + 4; 
						end if; 

						read_beat_counter <= read_beat_counter + 1; 
						
					else 
	
						read_beat_counter <= (others => '0'); 
						reads_remaining <= to_unsigned(to_integer(unsigned(input_volume_width)),32)-1; 
						if(axi_arsize = "001") then 
							if(channel_counter < unsigned(channels_allowed)-1) then 
								channel_counter <= channel_counter + 1; 
								input_addr_counter <= input_index + unsigned(i_input_multiple_0_reg(31-1 downto 0)&"0");  
								input_index <= input_index + unsigned(i_input_multiple_0_reg(31-1 downto 0)&"0");   
								
							elsif(channel_counter >= unsigned(channels_allowed)-1) then 
								
								channel_counter <= (others => '0'); 
								
								if(input_volume_row_counter < unsigned(input_volume_height)-1) then 
									input_index <= unsigned(input_addr_counter) + 2 + iteration_index - last_channel_base; 
									input_addr_counter <= unsigned(input_addr_counter) + 2 + iteration_index - last_channel_base; 
								else 
									input_index <= unsigned(input_addr_counter) + 2;  
									input_addr_counter <= unsigned(input_addr_counter) + 2; 
									iteration_index <= unsigned(input_addr_counter) + 2; 
								end if; 
								
								input_volume_row_counter <= input_volume_row_counter + 1;
								
								if(stride_counter < unsigned(stride)-1) then 
									stride_counter <= stride_counter + 1; 
								else 
									stride_counter <= (others => '0'); 
								end if; 
							else 
								input_addr_counter <= unsigned(input_addr_counter) + 2;
							end if; 
						elsif(axi_arsize = "010") then 
							if(channel_counter < unsigned(channels_allowed)-1) then 
								channel_counter <= channel_counter + 1; 
								input_addr_counter <= input_index + unsigned(i_input_multiple_0_reg(31-2 downto 0)&"00");  
								input_index <= input_index + unsigned(i_input_multiple_0_reg(31-2 downto 0)&"00");   
							elsif(channel_counter >= unsigned(channels_allowed)-1) then 
								
								channel_counter <= (others => '0'); 
								
								if(input_volume_row_counter < unsigned(input_volume_height)-1) then 
									input_index <= unsigned(input_addr_counter) + 4 + iteration_index - last_channel_base; 
									input_addr_counter <= unsigned(input_addr_counter) + 4 + iteration_index - last_channel_base;
								else 
									input_index <= unsigned(input_addr_counter) + 4;  
									input_addr_counter <= unsigned(input_addr_counter) + 4; 
									iteration_index <= unsigned(input_addr_counter) + 4;  
								end if; 
								
								input_volume_row_counter <= input_volume_row_counter + 1;
								
								if(stride_counter < unsigned(stride)-1) then 
									stride_counter <= stride_counter + 1; 
								else 
									stride_counter <= (others => '0'); 
								end if; 
							else 
								input_addr_counter <= unsigned(input_addr_counter) + 4;
							end if; 
						end if; 
					end if; 
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					read_beat_counter <= read_beat_counter; 
					input_addr_counter <= input_addr_counter; 
				end if; 

				
			when RCS_PREV_DATA_SETUP => 	
				reads_remaining <= to_unsigned(to_integer(unsigned(output_volume_width)),32)-1; 
				
			when CALC_PREV_READ_LENGTH => 
				calculated <= '1'; 		
				prev_fifo_din <= (others => '0'); 
				prev_fifo_wr_en <= '0'; 

				if(reads_remaining > 255 and calculated = '0') then 
					axi_arlen_temp <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_arlen_temp <= std_logic_vector(reads_remaining(7 downto 0)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_arlen_temp <= axi_arlen_temp; 
					more_bursts_needed <= more_bursts_needed; 
				end if;
			
			when RCS_READ_ADDRESS_PREV_DATA => 
				axi_araddr <= std_logic_vector(prev_addr_counter + unsigned(prev_addr_reg)); 
				axi_arsize <= "010";
				axi_arlen <= axi_arlen_temp; 
				
				if(M_AXI_ARREADY = '1') then 
                    axi_arvalid <= '0'; 
                else 
                    axi_arvalid <= '1'; 
                end if; 
			
			-- when RCS_READ_ADDRESS_PREV_DATA => 
				-- axi_araddr <= std_logic_vector(prev_addr_counter + unsigned(prev_addr_reg)); 
				-- axi_arvalid	<= '1';
				-- calculated <= '1'; 
				-- axi_arsize <= "010";
				
				-- prev_fifo_din <= (others => '0'); 
				-- prev_fifo_wr_en <= '0'; 

				-- if(reads_remaining > 255 and calculated = '0') then 
					-- axi_arlen <= x"FF"; 
					-- reads_remaining <= reads_remaining - 256; 
					-- more_bursts_needed <= '1'; 
				-- elsif(reads_remaining <= 255 and calculated = '0') then 
					-- axi_arlen <= std_logic_vector(reads_remaining(7 downto 0)); 
					-- more_bursts_needed <= '0'; 
					-- reads_remaining <= (others => '0'); 
				-- else 
					-- axi_arlen <= axi_arlen; 
					-- more_bursts_needed <= more_bursts_needed; 
				-- end if;
				

			when RCS_READ_DATA_PREV_DATA => 
				axi_arvalid <= '0';
				calculated <= '0'; 
				if(i_prev_fifo_full = '0' and M_AXI_RVALID = '1') then 
				
					if(prev_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
						prev_fifo_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
					elsif(prev_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
						prev_fifo_din <= M_AXI_RDATA(31 downto 16) & x"0000";
					elsif(g_bytes_per_data = 4) then 
						prev_fifo_din <= M_AXI_RDATA; 
					end if; 
					
					prev_fifo_wr_en <= '1'; 
					
					if(M_AXI_RLAST = '0') then 
						read_beat_counter <= read_beat_counter + 1; 
						prev_addr_counter <= prev_addr_counter + g_bytes_per_data; 
					else 

						read_beat_counter <= (others => '0'); 

						reads_remaining <= to_unsigned(to_integer(unsigned(output_volume_width)),32)-1; 
						
						if(prev_channel_counter < unsigned(output_volume_channels)-1 and affine_select = '0') then 
							prev_channel_counter <= prev_channel_counter + 1; 
							prev_addr_counter <= prev_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");  
							prev_index <= prev_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");   
							
							if(prev_channel_counter = 0 and i_weights_loaded = '0' and affine_select = '0') then 
								reads_remaining <= unsigned(i_weight_multiple_0_reg)-1;  
							end if; 
						
						elsif(prev_channel_counter >= unsigned(output_volume_channels)-1 and affine_select = '0') then 
							prev_channel_counter <= (others => '0');--x"0001"; 
							
							reads_remaining <= to_unsigned(to_integer(unsigned(output_volume_width)),32)-1; 	

							if(out_volume_row_counter < unsigned(output_volume_height)-1) then 

								if(out_volume_row_counter = 0 and debug_mode = '0') then 
									prev_last_channel_base <= prev_index;
									prev_index <= prev_addr_counter + 4 - prev_index; 
									prev_addr_counter <= prev_addr_counter + 4 - prev_index; 
								elsif(out_volume_row_counter > 0 and debug_mode = '0') then  
									prev_index <= prev_addr_counter + 4 - prev_last_channel_base; 
									prev_addr_counter <= prev_addr_counter + 4 - prev_last_channel_base; 
								elsif(out_volume_row_counter = 0 and debug_mode = '1') then 
									prev_last_channel_base <= prev_index;
									prev_index <= prev_addr_counter + 4 - prev_index + prev_debug_base; 
									prev_addr_counter <= prev_addr_counter + 4 - prev_index + prev_debug_base; 
								elsif(out_volume_row_counter > 0 and debug_mode = '1') then  
									prev_index <= prev_addr_counter + 4 - prev_last_channel_base + prev_debug_base; 
									prev_addr_counter <= prev_addr_counter + 4 - prev_last_channel_base + prev_debug_base; 
								end if;

								
								
							elsif(out_volume_row_counter >= unsigned(output_volume_height)-1) then 
								if(debug_mode = '0') then 
									prev_index <= (others => '0');
									prev_addr_counter <= (others => '0');
								else 
									prev_index <= unsigned(prev_addr_counter) + g_bytes_per_data;
									prev_addr_counter <= unsigned(prev_addr_counter) + g_bytes_per_data;
									prev_debug_base <= unsigned(prev_addr_counter) + g_bytes_per_data;
								end if; 
							end if; 
								

						elsif(prev_channel_counter < unsigned(affine_filters_in_set)-1 and affine_select = '1') then 
							prev_addr_counter <= prev_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");  
							prev_index <= prev_index + unsigned(i_output_multiple_0_reg(31-2 downto 0)&"00");   
						
							if(prev_channel_counter = 0 and i_weights_loaded = '0' and affine_select = '1') then 
								reads_remaining <= unsigned(i_input_multiple_0_reg)-1; 
							end if; 
							
						elsif(prev_channel_counter >= unsigned(affine_filters_in_set)-1 and affine_select = '1') then 
							prev_index <= prev_addr_counter + 4 - prev_last_channel_base; 
							prev_addr_counter <= prev_addr_counter + 4 - prev_last_channel_base; 
							reads_remaining <= unsigned(i_weight_multiple_0_reg)-1; 
						end if; 
						
					end if; 

				else 
					prev_fifo_din <= (others => '0'); 
					prev_fifo_wr_en <= '0'; 
					read_beat_counter <= read_beat_counter; 
					prev_addr_counter <= prev_addr_counter; 
				end if; 
				
				
			when COUNTER_RESET => 
				output_channel_counter <= (others => '0'); 
				out_volume_row_counter <= (others => '0'); 
				input_volume_row_counter <= (others => '0'); 


			when others => 
				axi_araddr        		<= (others => '0'); 
				axi_arlen         		<= (others => '0');  
				axi_arvalid	      		<= '0';
				axi_arsize				<= (others => '0'); 
				inbuff_din        		<= (others => '0'); 
				inbuff_wr_en      		<= '0'; 
				read_beat_counter 		<= (others => '0'); 
				writes_remaining  		<= (others => '0'); 
				reads_remaining   		<= (others => '0'); 
				axi_awaddr         		<= (others => '0'); 
				axi_awlen          		<= (others => '0'); 
				more_bursts_needed 		<= '0'; 
				calculated        		<= '0'; 
				axi_awvalid       		<= '0'; 
				input_data_addr_reg 	<= (others => '0'); 
				output_data_addr_reg 	<= (others => '0'); 
				weights_addr_reg   		<= (others => '0'); 
				row_counter        		<= (others => '0'); 
				out_volume_row_counter 	<= (others => '0'); 
				input_volume_row_counter<= (others => '0'); 
				column_counter     		<= (others => '0'); 
				stride_counter     		<= (others => '0'); 
				bias_addr_reg 			<= (others => '0'); 
				output_channel_counter 	<= (others =>'0'); 
				input_channel_counter	<= (others => '0'); 
				iteration_counter 		<= (others => '0'); 
				filter_counter 			<= (others => '0');
				weights_addr_counter    <= (others => '0'); 
				input_addr_counter		<= (others => '0'); 
				output_addr_counter		<= (others => '0'); 
				bias_addr_counter		<= (others => '0'); 
				prev_addr_counter		<= (others => '0'); 
				channel_loop_counter	<= (others => '0'); 
				row_loop_counter		<= (others => '0'); 
				bias_fifo_din			<= (others => '0'); 
				bias_fifo_wr_en			<= '0'; 
				bias_values_loaded		<= '0'; 
				prev_fifo_din			<= (others => '0'); 
				prev_fifo_wr_en			<= '0'; 
				--axi_wdata 				<= (others => '0'); 
				--axi_wvalid 				<= '0'; 
				--axi_wstrb 				<= (others => '0'); 
				--axi_wlast 				<= '0'; 
				write_beat_counter		<= (others => '0'); 
				weight_index 			<= (others => '0'); 
				input_index 			<= (others => '0'); 
				channel_counter			<= (others => '0'); 
				output_index			<= (others => '0'); 
				last_channel_base		<= (others => '0'); 
				data_written 			<= '0'; 
				output_base_pixel		<= (others => '0'); 
				prev_addr_reg			<= (others => '0'); 
				prev_index 				<= (others => '0'); 
				prev_channel_counter	<= (others => '0'); 
					
				
			end case; 


		end if; 

	end process; 

end implementation;
