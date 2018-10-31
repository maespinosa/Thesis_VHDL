library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Convolution_Layer_32bit_v1_0 is
	generic (
		-- Users to add parameters here
        G_DATA_WIDTH : integer := 32; 
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
		i_affine_params_reg		   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		
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
		o_affine_params_reg			: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		
	    o_slv_reg_rden			 : out std_logic; 
	    o_slv_reg_wren			 : out std_logic_vector(20 downto 0); 
		
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
	    o_input_volume_channels    : out std_logic_vector(11 downto 0); 
	    o_input_volume_size        : out std_logic_vector(7 downto 0); 
	    o_number_of_filters        : out std_logic_vector(11 downto 0); 
	    o_weight_filter_channels   : out std_logic_vector(11 downto 0); 
	    o_weight_filter_size       : out std_logic_vector(3 downto 0); 
	    o_pad                      : out std_logic_vector(3 downto 0); 
	    o_stride                   : out std_logic_vector(3 downto 0); 
		o_channels_in_set		   : out std_logic_vector(15 downto 0); 
		o_filters_in_set		   : out std_logic_vector(15 downto 0); 
		
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
		i_affine_params_reg	   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		
		
	    i_slv_reg_rden			 : in std_logic; 
	    i_slv_reg_wren			 : in std_logic_vector(20 downto 0); 
		
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
		o_affine_params_reg	   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		
		--TO LOGIC 
	    o_inbuff_din			    : out std_logic_vector(g_data_width-1 downto 0); 
	    o_inbuff_wr_en 				: out std_logic; 
	    o_outbuff_rd_en				: out std_logic; 
		
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
		   g_norm_width       : integer := 32
	  );
	  port(
		   i_ext_reset_n : in STD_LOGIC;
		   i_master_clk  : in STD_LOGIC;
		   
		   --TO CONVOLVER
		   i_start                    : in std_logic; 
		   i_output_volume_size       : in std_logic_vector(7 downto 0); 
		   i_input_volume_channels    : in std_logic_vector(11 downto 0); 
		   i_input_volume_size        : in std_logic_vector(7 downto 0); 
		   i_number_of_filters        : in std_logic_vector(11 downto 0); 
		   i_weight_filter_channels   : in std_logic_vector(11 downto 0); 
		   i_weight_filter_size       : in std_logic_vector(3 downto 0); 
		   i_pad                      : in std_logic_vector(3 downto 0); 
		   i_stride                   : in std_logic_vector(3 downto 0); 
		   
	   
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
		
		   o_prev_fifo_full				   : out std_logic; 
		   o_prev_fifo_almost_full		   : out std_logic; 
		   --o_prev_fifo_prog_full		   : out std_logic; 
		   o_bias_fifo_full				   : out std_logic; 
		   o_bias_fifo_almost_full		   : out std_logic; 
		   --o_bias_fifo_prog_full		   : out std_logic; 
		   o_acc_row_complete			   : out std_logic; 
		   
		   o_layer_ready				   : out std_logic; 
		   
		   
		   --TO AXI MASTER 
		   o_inbuff_empty             : out STD_LOGIC;
		   o_inbuff_almost_empty      : out STD_LOGIC;
		   --o_inbuff_prog_empty        : out STD_LOGIC;
		   --o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
		   o_inbuff_full              : out STD_LOGIC;
		   o_inbuff_almost_full       : out STD_LOGIC;
		   --o_inbuff_prog_full         : out STD_LOGIC;
		   --o_inbuff_prog_full_thresh  : out STD_LOGIC_VECTOR(9 downto 0);
		   o_inbuff_valid             : out STD_LOGIC; 
		   
		   o_outbuff_dout              : out std_logic_vector(g_data_width-1 downto 0); 
		   o_outbuff_empty             : out STD_LOGIC;
		   o_outbuff_almost_empty      : out STD_LOGIC;
		   --o_outbuff_prog_empty        : out STD_LOGIC;
		   --o_outbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
		   o_outbuff_full              : out STD_LOGIC;
		   o_outbuff_almost_full       : out STD_LOGIC;
		   --o_outbuff_prog_full         : out STD_LOGIC;
		   --o_outbuff_prog_full_thresh  : out STD_LOGIC_VECTOR(9 downto 0);
		   o_outbuff_valid             : out STD_LOGIC; 
		   
		   --FROM AXI MASTER
		   i_inbuff_din					: in std_logic_vector(g_data_width-1 downto 0); 
		   i_inbuff_wr_en 				: in std_logic; 
		   i_outbuff_rd_en				: in std_logic
		   
		   
	  );
	end component;
	
	--TO CONVOLVER
	signal start                    : std_logic;
	signal output_volume_size       : std_logic_vector(7 downto 0); 
	signal input_volume_channels    : std_logic_vector(11 downto 0); 
	signal input_volume_size        : std_logic_vector(7 downto 0); 
	signal number_of_filters        : std_logic_vector(11 downto 0); 
	signal weight_filter_channels   : std_logic_vector(11 downto 0); 
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
	--signal inbuff_prog_empty        : std_logic; 
	--signal inbuff_prog_empty_thresh : std_logic_vector(12 downto 0); 
	signal inbuff_full              : std_logic; 
	signal inbuff_almost_full       : std_logic; 
	--signal inbuff_prog_full         : std_logic; 
	--signal inbuff_prog_full_thresh  : std_logic_vector(12 downto 0); 
	signal inbuff_valid             : std_logic; 
	   
	signal outbuff_dout              : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal outbuff_empty             : std_logic; 
	signal outbuff_almost_empty      : std_logic; 
	--signal outbuff_prog_empty        : std_logic; 
	--signal outbuff_prog_empty_thresh : std_logic_vector(12 downto 0); 
	signal outbuff_full              : std_logic; 
	signal outbuff_almost_full       : std_logic; 
	--signal outbuff_prog_full         : std_logic; 
	--signal outbuff_prog_full_thresh  : std_logic_vector(12 downto 0); 
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
	signal affine_params_reg_to_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
	
	
	signal slv_reg_rden			     : std_logic; 
	signal slv_reg_wren			     : std_logic_vector(20 downto 0); 
		
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
	signal affine_params_reg_from_master 	     : std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 	
		
	signal bias_fifo_loaded	: std_logic; 
	
		--TO LOGIC 
	signal inbuff_din			     : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	signal inbuff_wr_en 		     : std_logic; 
	signal outbuff_rd_en			 : std_logic;  
	
	signal affine_select   			 : std_logic;    
	signal channels_in_set			 : std_logic_vector(15 downto 0);  
	signal filters_in_set			 : std_logic_vector(15 downto 0); 
	signal acc_row_complete			 : std_logic; 
	signal layer_ready			     : std_logic; 
	signal volume_complete			 : std_logic; 
	
	
	
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
		i_affine_params_reg	       => affine_params_reg_from_master, 
		
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
		o_affine_params_reg	       => affine_params_reg_to_master, 
		
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
	   -- i_inbuff_prog_empty        => inbuff_prog_empty, 
	    --i_inbuff_prog_empty_thresh => inbuff_prog_empty_thresh, 
	    i_inbuff_full              => inbuff_full, 
	    i_inbuff_almost_full       => inbuff_almost_full, 
	    --i_inbuff_prog_full         => inbuff_prog_full, 
	    --i_inbuff_prog_full_thresh  => inbuff_prog_full_thresh, 
	    i_inbuff_valid             => inbuff_valid, 
	   
	    i_outbuff_dout              => outbuff_dout, 
	    i_outbuff_empty             => outbuff_empty, 
	    i_outbuff_almost_empty      => outbuff_almost_empty, 
	    --i_outbuff_prog_empty        => outbuff_prog_empty, 
	    --i_outbuff_prog_empty_thresh => outbuff_prog_empty_thresh, 
	    i_outbuff_full              => outbuff_full, 
	    i_outbuff_almost_full       => outbuff_almost_full, 
	    --i_outbuff_prog_full         => outbuff_prog_full, 
	    --i_outbuff_prog_full_thresh  => outbuff_prog_full_thresh, 
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
		
		i_prev_fifo_full			=> prev_fifo_full, 
		i_prev_fifo_almost_full	    => prev_fifo_almost_full, 
		--i_prev_fifo_prog_full	    => prev_fifo_prog_full, 
		i_bias_fifo_full			=> bias_fifo_full, 
		i_bias_fifo_almost_full	    => bias_fifo_almost_full, 
	   -- i_bias_fifo_prog_full	    => bias_fifo_prog_full, 
		
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
		i_affine_params_reg  	    => affine_params_reg_to_master, 
		
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
		o_affine_params_reg  	    => affine_params_reg_from_master, 
		
		--TO LOGIC 
	    o_inbuff_din			    => inbuff_din, 
	    o_inbuff_wr_en 				=> inbuff_wr_en, 
	    o_outbuff_rd_en				=> outbuff_rd_en, 
	
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
		   g_dsps_used        => 33,
		   g_norm_width       => G_DATA_WIDTH
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
		
		   o_prev_fifo_full			=> prev_fifo_full, 
		   o_prev_fifo_almost_full	=> prev_fifo_almost_full, 
		   --o_prev_fifo_prog_full	=> prev_fifo_prog_full, 
		   o_bias_fifo_full			=> bias_fifo_full, 
		   o_bias_fifo_almost_full	=> bias_fifo_almost_full, 
		   --o_bias_fifo_prog_full	=> bias_fifo_prog_full, 
		   
		   o_acc_row_complete		=> acc_row_complete, 
		   --TO AXI MASTER 
		   o_inbuff_empty             => inbuff_empty, 
		   o_inbuff_almost_empty      => inbuff_almost_empty, 
		   --o_inbuff_prog_empty        => inbuff_prog_empty, 
		   --o_inbuff_prog_empty_thresh => inbuff_prog_empty_thresh, 
		   o_inbuff_full              => inbuff_full, 
		   o_inbuff_almost_full       => inbuff_almost_full, 
		   --o_inbuff_prog_full         => inbuff_prog_full, 
		   --o_inbuff_prog_full_thresh  => inbuff_prog_full_thresh, 
		   o_inbuff_valid             => inbuff_valid,  
		   
		   o_outbuff_dout              => outbuff_dout, 
		   o_outbuff_empty             => outbuff_empty, 
		   o_outbuff_almost_empty      => outbuff_almost_empty, 
		   --o_outbuff_prog_empty        => outbuff_prog_empty, 
		   --o_outbuff_prog_empty_thresh => outbuff_prog_empty_thresh, 
		   o_outbuff_full              => outbuff_full, 
		   o_outbuff_almost_full       => outbuff_almost_full, 
		  -- o_outbuff_prog_full         => outbuff_prog_full, 
		   --o_outbuff_prog_full_thresh  => outbuff_prog_full_thresh, 
		   o_outbuff_valid             => outbuff_valid, 
		   
		   --FROM AXI MASTER
		   i_inbuff_din					=> inbuff_din, 
		   i_inbuff_wr_en 				=> inbuff_wr_en,  
		   i_outbuff_rd_en				=> outbuff_rd_en
		   
		   
	  );

	-- User logic ends

end arch_imp;
