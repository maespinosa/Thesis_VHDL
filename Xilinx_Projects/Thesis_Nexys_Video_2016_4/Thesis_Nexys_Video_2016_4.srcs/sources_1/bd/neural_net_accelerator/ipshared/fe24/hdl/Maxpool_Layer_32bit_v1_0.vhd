library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Maxpool_Layer_32bit_v1_0 is
	generic (
		-- Users to add parameters here
		G_DATA_WIDTH  : integer := 32; 
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
        o_pooling_complete : out std_logic; 
		o_cycle : out std_logic_vector(63 downto 0);
		o_epoch : out std_logic_vector(63 downto 0);  


		--ILA SIGNALS 
		ila_row_cntrl_PR0_din 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_PR0_wr_en 			: out std_logic; 
		ila_row_cntrl_PR0_rd_en			: out std_logic; 
		ila_row_cntrl_PR1_din 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_PR1_wr_en 			: out std_logic; 
		ila_row_cntrl_PR1_rd_en			: out std_logic; 
		ila_row_cntrl_PR2_din 			: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_PR2_wr_en 			: out std_logic; 
		ila_row_cntrl_PR2_rd_en			: out std_logic; 
		ila_row_cntrl_third_row_activate : out std_logic; 
		ila_row_cntrl_recycle_en 			: out std_logic; 
		ila_row_cntrl_prime_PR0_en 		: out std_logic; 
		ila_row_cntrl_prime_PR1_en 		: out std_logic;
		ila_row_cntrl_prime_PR2_en			: out std_logic; 

		ila_row_cntrl_pixel_counter		: out unsigned(7 downto 0); 
		ila_row_cntrl_column_counter		: out unsigned(7 downto 0);
		ila_row_cntrl_row_counter			: out unsigned(15 downto 0);  
		ila_row_cntrl_sorter_data_valid	: out std_logic; 
		ila_row_cntrl_stride_counter		: out unsigned(3 downto 0); 

		ila_row_cntrl_inbuff_rd_en			: out std_logic; 
		ila_row_cntrl_volume_processed		: out std_logic; 
		ila_row_cntrl_volume_rows_processed : out unsigned(7 downto 0); 
		ila_row_cntrl_output_rows_generated : out unsigned(7 downto 0);
		ila_row_cntrl_output_volume_size	: out std_logic_vector(7 downto 0);  
		ila_row_cntrl_channel_counter		: out unsigned(15 downto 0); 
		ila_row_cntrl_channel_complete		: out std_logic; 
		ila_row_cntrl_row_complete			: out std_logic; 
		ila_row_cntrl_busy 				: out std_logic; 
		ila_row_cntrl_fsm_state 			: out unsigned(3 downto 0);
	   
		
		ila_row_cntrl_kernel_data_0		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_2		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_3		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_kernel_data_4		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_5		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_kernel_data_6		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_7		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_kernel_data_8		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_kernel_data_9		: out std_logic_vector(g_data_width-1 downto 0);  

		ila_row_cntrl_sorter_data_0		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_sorter_data_1		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_2		: out std_logic_vector(g_data_width-1 downto 0);  
		ila_row_cntrl_sorter_data_3		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_4		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_5		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_6		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_7		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_8		: out std_logic_vector(g_data_width-1 downto 0); 
		ila_row_cntrl_sorter_data_9		: out std_logic_vector(g_data_width-1 downto 0);
		
		--POOL ROW 0 SIGNALS 
		ila_PR0_full 					: out std_logic; 
		ila_PR0_almost_full 		: out std_logic; 
		ila_PR0_empty 				: out std_logic; 
		ila_PR0_almost_empty 		: out std_logic;  

		--POOL ROW 1 SIGNALS 
		ila_PR1_full 					: out std_logic; 
		ila_PR1_almost_full 		: out std_logic;
		ila_PR1_empty 				: out std_logic; 
		ila_PR1_almost_empty 		: out std_logic;  

		--POOL ROW 2 SIGNALS 
		ila_PR2_full 					: out std_logic; 
		ila_PR2_almost_full 		: out std_logic;
		ila_PR2_empty 				: out std_logic; 
		ila_PR2_almost_empty 		: out std_logic; 
		
		ila_inbuff_wr_en			: out std_logic; 
		ila_inbuff_empty			: out std_logic;
		ila_inbuff_almost_empty		: out std_logic;
		ila_inbuff_full				: out std_logic; 
		ila_inbuff_almost_full		: out std_logic; 
		ila_inbuff_valid			: out std_logic;
		ila_inbuff_rd_en			: out std_logic; 
		
		
		ila_outbuff_rd_en : out std_logic; 
		ila_outbuff_dout : out std_logic_vector(g_data_width-1 downto 0); 
		ila_outbuff_empty : out std_logic; 
		ila_outbuff_almost_empty : out std_logic; 
		ila_outbuff_full   : out std_logic; 
		ila_outbuff_almost_full : out std_logic; 
		ila_outbuff_valid	: out std_logic; 
		
		--HEAP SORTER ILA
		ila_heap_sorter_ready : out std_logic; 
		ila_heap_sorter_fsm_state 	: out std_logic_vector(3 downto 0); 
		ila_heap_sorter_position1 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position2 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position3 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position4 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position5 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position6 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position7 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position8 	: out std_logic_vector(g_data_width-1 downto 0);
		ila_heap_sorter_position9 	: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_done 		: out std_logic; 
		ila_heap_sorter_sorted_data_0: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_1: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_2: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_3: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_4: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_5: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_6: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_7: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_8: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorted_data_9: out std_logic_vector(g_data_width-1 downto 0); 
		ila_heap_sorter_sorter_ready : out std_logic;
		
		
		ila_master_fsm_state  : out std_logic_vector(3 downto 0); 
		ila_master_axi_awready	: out std_logic; 
		ila_master_axi_awaddr		: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		ila_master_axi_awsize   	: out std_logic_vector(2 downto 0); 
		ila_master_axi_awlen    	: out std_logic_vector(7 downto 0); 
		ila_master_axi_awvalid	: out std_logic;
		ila_master_axi_wready 	: out std_logic; 
		ila_master_axi_wdata		: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		ila_master_axi_wlast		: out std_logic;
		ila_master_axi_wvalid		: out std_logic;
		ila_master_axi_wstrb    	: out std_logic_vector(3 downto 0); 
		ila_master_axi_bvalid 	: out std_logic; 
		ila_master_axi_bready		: out std_logic;
		ila_master_axi_wbc		: out std_logic_vector(8 downto 0); 
		
		
		ila_master_axi_arsize		: out std_logic_vector(2 downto 0); 
		ila_master_axi_araddr		: out std_logic_vector(C_M00_AXI_ADDR_WIDTH-1 downto 0);
		ila_master_axi_arlen    	: out std_logic_vector(7 downto 0); 
		ila_master_axi_arvalid	: out std_logic;
		ila_master_axi_rready		: out std_logic;
		
		ila_master_axi_arready 	: out std_logic;
		ila_master_axi_rdata 		: out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0);
		ila_master_axi_rlast 		: out std_logic;
		ila_master_axi_rvalid		: out std_logic;

		ila_master_axi_rbc				  : out unsigned(7 downto 0);
		ila_master_outbuff_rd_en          : out std_logic; 
		ila_master_inbuff_din             : out std_logic_vector(g_data_width-1 downto 0); 
		ila_master_inbuff_wr_en           : out std_logic; 
		ila_master_input_volume_size      : out STD_LOGIC_VECTOR(7 downto 0);
		ila_master_input_volume_channels  : out std_logic_vector(15 downto 0); 
		ila_master_output_volume_size     : out STD_LOGIC_VECTOR(7 downto 0);
		ila_master_output_volume_channels : out std_logic_vector(15 downto 0); 
		ila_master_pool_kernel_size 	  : out std_logic_vector(3 downto 0); 
		ila_master_stride                 : out STD_LOGIC_VECTOR(3 downto 0); 

		ila_master_input_data_addr_reg    : out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 
		ila_master_output_data_addr_reg   : out std_logic_vector(C_M00_AXI_DATA_WIDTH-1 downto 0); 

		ila_master_row_counter			  : out unsigned(7 downto 0); 
		ila_master_channel_counter	      : out unsigned(15 downto 0); 
		ila_master_writes_remaining 	  : out unsigned(15 downto 0); 
		ila_master_calculated 			  : out std_logic; 
		ila_master_more_bursts_needed     : out std_logic; 


		ila_master_channel_complete_counter : out unsigned(7 downto 0); 
		ila_master_complete_shift_reg	  	: out std_logic_vector(1 downto 0); 
		ila_master_data_valid             	: out std_logic; 
		ila_master_operating_length		  	: out unsigned(8 downto 0); 
		ila_master_input_index			  	: out unsigned(31 downto 0); 
		ila_master_input_addr_counter 	  	: out unsigned(31 downto 0); 
		ila_master_stride_counter 		  	: out unsigned(7 downto 0); 
		ila_master_addr1_multiple		  	: out std_logic_vector(7 downto 0); 
		ila_master_addr2_multiple      		: out std_logic_vector(7 downto 0);
		ila_master_start		            : out std_logic; 
		ila_master_start_reg				: out std_logic_vector(1 downto 0); 
		
		ila_master_first_calculated 		: out std_logic;
	
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
end Maxpool_Layer_32bit_v1_0;

architecture arch_imp of Maxpool_Layer_32bit_v1_0 is

	-- component declaration
	component Maxpool_Layer_32bit_v1_0_S00_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 6
		);
		port (
        i_control_reg            : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        i_status_reg             : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        i_input_data_addr_reg    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        i_output_data_addr_reg   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        i_input_params_reg       : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        i_output_params_reg      : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        i_kernel_params_reg      : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_addr1_params_reg       : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_addr2_params_reg       : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		i_debug_reg      	 	 : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		
        o_control_reg            : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        o_status_reg             : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        o_input_data_addr_reg    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        o_output_data_addr_reg   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        o_input_params_reg       : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        o_output_params_reg      : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
        o_kernel_params_reg      : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_addr1_params_reg       : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_addr2_params_reg       : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		o_debug_reg      	 	 : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); 
		
        o_slv_reg_rden           : out STD_LOGIC;
        o_slv_reg_wren           : out STD_LOGIC_VECTOR(10 downto 0);
        
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
	end component Maxpool_Layer_32bit_v1_0_S00_AXI;

	component Maxpool_Layer_32bit_v1_0_M00_AXI is
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

	    i_outbuff_dout           : in std_logic_vector(g_data_width-1 downto 0); 
	    i_outbuff_empty          : in std_logic; 
	    i_outbuff_almost_empty   : in std_logic; 
	    i_outbuff_full           : in std_logic; 
	    i_outbuff_almost_full    : in std_logic; 
	    i_outbuff_valid	        : in std_logic; 
		i_channel_complete       : in std_logic;
		i_inbuff_empty           : in std_logic; 
		i_inbuff_almost_empty    : in std_logic; 
		i_inbuff_full	        : in std_logic; 
		i_inbuff_almost_full     : in std_logic;
		--POOL ROW 0 SIGNALS 
		i_PR0_full 					: in std_logic; 
		i_PR0_almost_full 		: in std_logic; 
		i_PR0_empty 				: in std_logic; 
		i_PR0_almost_empty 		: in std_logic;  

		--POOL ROW 1 SIGNALS 
		i_PR1_full 					: in std_logic; 
		i_PR1_almost_full 		: in std_logic;
		i_PR1_empty 				: in std_logic; 
		i_PR1_almost_empty 		: in std_logic;  

		--POOL ROW 2 SIGNALS 
		i_PR2_full 					: in std_logic; 
		i_PR2_almost_full 		: in std_logic;
		i_PR2_empty 				: in std_logic; 
		i_PR2_almost_empty 		: in std_logic;  
	   
		
		i_busy                   : in std_logic; 
		i_row_complete			 : in std_logic; 
		
		i_sorter_fsm_state 	: in std_logic_vector(3 downto 0); 
	    i_controller_fsm_state : in std_logic_vector(3 downto 0); 

		   --TO LOGIC 
		o_outbuff_rd_en          : out std_logic; 
		o_inbuff_din             : out std_logic_vector(g_data_width-1 downto 0); 
		o_inbuff_wr_en           : out std_logic; 
	    o_input_volume_size      : out STD_LOGIC_VECTOR(7 downto 0);
	    o_output_volume_size     : out STD_LOGIC_VECTOR(7 downto 0);
		o_pool_kernel_size 	    : out std_logic_vector(3 downto 0); 
	    o_stride                 : out STD_LOGIC_VECTOR(3 downto 0); 
		o_pooling_complete       : out std_logic; 
		o_start 				 : out std_logic; 
		o_master_ack				: out std_logic; 

	       --FROM AXI SLAVE
	    i_control_reg            : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_status_reg             : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_input_data_addr_reg    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	    i_output_data_addr_reg   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_input_params_reg       : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_output_params_reg      : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_kernel_params_reg      : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_addr1_params_reg       : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_addr2_params_reg       : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		i_debug_reg       		 : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		
		
	    i_slv_reg_rden			: in std_logic; 
	    i_slv_reg_wren			: in std_logic_vector(10 downto 0); 

	       --TO AXI SLAVE
	    o_control_reg            : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_status_reg             : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_input_data_addr_reg    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	    o_output_data_addr_reg   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_input_params_reg       : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_output_params_reg      : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_kernel_params_reg      : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_addr1_params_reg       : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_addr2_params_reg       : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_debug_reg 			 : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		
		
		ila_master_fsm_state  : out std_logic_vector(3 downto 0); 
		ila_master_axi_awready	: out std_logic; 
		ila_master_axi_awaddr		: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		ila_master_axi_awsize   	: out std_logic_vector(2 downto 0); 
		ila_master_axi_awlen    	: out std_logic_vector(7 downto 0); 
		ila_master_axi_awvalid	: out std_logic;
		ila_master_axi_wready 	: out std_logic; 
		ila_master_axi_wdata		: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		ila_master_axi_wlast		: out std_logic;
		ila_master_axi_wvalid		: out std_logic;
		ila_master_axi_wstrb    	: out std_logic_vector(3 downto 0); 
		ila_master_axi_bvalid 	: out std_logic; 
		ila_master_axi_bready		: out std_logic;
		ila_master_axi_wbc		: out std_logic_vector(8 downto 0); 
		
		
		ila_master_axi_arsize		: out std_logic_vector(2 downto 0); 
		ila_master_axi_araddr		: out std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
		ila_master_axi_arlen    	: out std_logic_vector(7 downto 0); 
		ila_master_axi_arvalid	: out std_logic;
		ila_master_axi_rready		: out std_logic;
		
		ila_master_axi_arready 	: out std_logic;
		ila_master_axi_rdata 		: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
		ila_master_axi_rlast 		: out std_logic;
		ila_master_axi_rvalid		: out std_logic;
		
		ila_master_axi_rbc				  : out unsigned(7 downto 0);
		ila_master_outbuff_rd_en          : out std_logic; 
		ila_master_inbuff_din             : out std_logic_vector(g_data_width-1 downto 0); 
		ila_master_inbuff_wr_en           : out std_logic; 
		ila_master_input_volume_size      : out STD_LOGIC_VECTOR(7 downto 0);
		ila_master_input_volume_channels  : out std_logic_vector(15 downto 0); 
		ila_master_output_volume_size     : out STD_LOGIC_VECTOR(7 downto 0);
		ila_master_output_volume_channels : out std_logic_vector(15 downto 0); 
		ila_master_pool_kernel_size 	  : out std_logic_vector(3 downto 0); 
		ila_master_stride                 : out STD_LOGIC_VECTOR(3 downto 0); 

		ila_master_input_data_addr_reg    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		ila_master_output_data_addr_reg   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 

		ila_master_row_counter			  : out unsigned(7 downto 0); 
		ila_master_channel_counter	      : out unsigned(15 downto 0); 
		ila_master_writes_remaining 	  : out unsigned(15 downto 0); 
		ila_master_calculated 			  : out std_logic; 
		ila_master_more_bursts_needed     : out std_logic; 


		ila_master_channel_complete_counter : out unsigned(7 downto 0); 
		ila_master_complete_shift_reg	  	: out std_logic_vector(1 downto 0); 
		ila_master_data_valid             	: out std_logic; 
		ila_master_operating_length		  	: out unsigned(8 downto 0); 
		ila_master_input_index			  	: out unsigned(31 downto 0); 
		ila_master_input_addr_counter 	  	: out unsigned(31 downto 0); 
		ila_master_stride_counter 		  	: out unsigned(7 downto 0); 
		ila_master_addr1_multiple		  	: out std_logic_vector(7 downto 0); 
		ila_master_addr2_multiple      		: out std_logic_vector(7 downto 0);
		ila_master_start		            : out std_logic; 
		ila_master_start_reg				: out std_logic_vector(1 downto 0); 
		
		ila_master_first_calculated 		: out std_logic;
	
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
	end component Maxpool_Layer_32bit_v1_0_M00_AXI;


	component max_pool_unit is
	  generic(
	       -- name : type := value
	       g_data_width : integer := 32
	  );
	  port(
	       i_clk : in STD_LOGIC;
	       i_reset_n : in STD_LOGIC;
		   i_start : in std_logic; 
	       i_input_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
	       i_output_volume_size : in STD_LOGIC_VECTOR(7 downto 0);
		   i_pool_kernel_size 	: in std_logic_vector(3 downto 0); 
	       i_stride : in STD_LOGIC_VECTOR(3 downto 0); 
		   i_master_ack : in std_logic; 
		   i_outbuff_rd_en : in std_logic; 
		   i_inbuff_din : in std_logic_vector(g_data_width-1 downto 0); 
		   i_inbuff_wr_en : in std_logic; 
		   o_inbuff_empty  : out std_logic; 
		   o_inbuff_almost_empty : out std_logic; 
		   o_inbuff_full	: out std_logic; 
		   o_inbuff_almost_full : out std_logic; 
	       o_outbuff_dout : out std_logic_vector(g_data_width-1 downto 0); 
	       o_outbuff_empty : out std_logic; 
	       o_outbuff_almost_empty : out std_logic; 
	       o_outbuff_full   : out std_logic; 
	       o_outbuff_almost_full : out std_logic; 
	       o_outbuff_valid	: out std_logic; 
		   o_channel_complete : out std_logic; 
		   o_row_complete : out std_logic; 
		   o_busy : out std_logic; 
		   --o_operation_complete : out std_logic 
		   o_sorter_fsm_state 	: out std_logic_vector(3 downto 0); 
	       o_controller_fsm_state : out std_logic_vector(3 downto 0); 
	   
			--POOL ROW 0 SIGNALS 
			o_PR0_full 					: out std_logic; 
			o_PR0_almost_full 		: out std_logic; 
			o_PR0_empty 				: out std_logic; 
			o_PR0_almost_empty 		: out std_logic;  

			--POOL ROW 1 SIGNALS 
			o_PR1_full 					: out std_logic; 
			o_PR1_almost_full 		: out std_logic;
			o_PR1_empty 				: out std_logic; 
			o_PR1_almost_empty 		: out std_logic;  

			--POOL ROW 2 SIGNALS 
			o_PR2_full 					: out std_logic; 
			o_PR2_almost_full 		: out std_logic;
			o_PR2_empty 				: out std_logic; 
			o_PR2_almost_empty 		: out std_logic; 


			--ILA SIGNALS 
			ila_row_cntrl_PR0_din 			: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_PR0_wr_en 			: out std_logic; 
			ila_row_cntrl_PR0_rd_en			: out std_logic; 
			ila_row_cntrl_PR1_din 			: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_PR1_wr_en 			: out std_logic; 
			ila_row_cntrl_PR1_rd_en			: out std_logic; 
			ila_row_cntrl_PR2_din 			: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_PR2_wr_en 			: out std_logic; 
			ila_row_cntrl_PR2_rd_en			: out std_logic; 
			ila_row_cntrl_third_row_activate : out std_logic; 
			ila_row_cntrl_recycle_en 			: out std_logic; 
			ila_row_cntrl_prime_PR0_en 		: out std_logic; 
			ila_row_cntrl_prime_PR1_en 		: out std_logic;
			ila_row_cntrl_prime_PR2_en			: out std_logic; 

			ila_row_cntrl_pixel_counter		: out unsigned(7 downto 0); 
			ila_row_cntrl_column_counter		: out unsigned(7 downto 0);
			ila_row_cntrl_row_counter			: out unsigned(15 downto 0);  
			ila_row_cntrl_sorter_data_valid	: out std_logic; 
			ila_row_cntrl_stride_counter		: out unsigned(3 downto 0); 

			ila_row_cntrl_inbuff_rd_en			: out std_logic; 
			ila_row_cntrl_volume_processed		: out std_logic; 
			ila_row_cntrl_volume_rows_processed : out unsigned(7 downto 0); 
			ila_row_cntrl_output_rows_generated : out unsigned(7 downto 0);
			ila_row_cntrl_output_volume_size	: out std_logic_vector(7 downto 0);  
			ila_row_cntrl_channel_counter		: out unsigned(15 downto 0); 
			ila_row_cntrl_channel_complete		: out std_logic; 
			ila_row_cntrl_row_complete			: out std_logic; 
			ila_row_cntrl_busy 				: out std_logic; 
			ila_row_cntrl_fsm_state 			: out unsigned(3 downto 0); 
		   
			
			ila_row_cntrl_kernel_data_0		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_kernel_data_1		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_kernel_data_2		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_kernel_data_3		: out std_logic_vector(g_data_width-1 downto 0);  
			ila_row_cntrl_kernel_data_4		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_kernel_data_5		: out std_logic_vector(g_data_width-1 downto 0);  
			ila_row_cntrl_kernel_data_6		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_kernel_data_7		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_kernel_data_8		: out std_logic_vector(g_data_width-1 downto 0);  
			ila_row_cntrl_kernel_data_9		: out std_logic_vector(g_data_width-1 downto 0);  

			ila_row_cntrl_sorter_data_0		: out std_logic_vector(g_data_width-1 downto 0);  
			ila_row_cntrl_sorter_data_1		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_sorter_data_2		: out std_logic_vector(g_data_width-1 downto 0);  
			ila_row_cntrl_sorter_data_3		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_sorter_data_4		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_sorter_data_5		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_sorter_data_6		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_sorter_data_7		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_sorter_data_8		: out std_logic_vector(g_data_width-1 downto 0); 
			ila_row_cntrl_sorter_data_9		: out std_logic_vector(g_data_width-1 downto 0);
			
			--POOL ROW 0 SIGNALS 
			ila_PR0_full 					: out std_logic; 
			ila_PR0_almost_full 		: out std_logic; 
			ila_PR0_empty 				: out std_logic; 
			ila_PR0_almost_empty 		: out std_logic;  

			--POOL ROW 1 SIGNALS 
			ila_PR1_full 					: out std_logic; 
			ila_PR1_almost_full 		: out std_logic;
			ila_PR1_empty 				: out std_logic; 
			ila_PR1_almost_empty 		: out std_logic;  

			--POOL ROW 2 SIGNALS 
			ila_PR2_full 					: out std_logic; 
			ila_PR2_almost_full 		: out std_logic;
			ila_PR2_empty 				: out std_logic; 
			ila_PR2_almost_empty 		: out std_logic; 
			
			ila_inbuff_wr_en			: out std_logic; 
			ila_inbuff_empty			: out std_logic;
			ila_inbuff_almost_empty		: out std_logic;
			ila_inbuff_full				: out std_logic; 
			ila_inbuff_almost_full		: out std_logic; 
			ila_inbuff_valid			: out std_logic;
			ila_inbuff_rd_en			: out std_logic; 
			
			
			ila_outbuff_rd_en : out std_logic; 
			ila_outbuff_dout : out std_logic_vector(g_data_width-1 downto 0); 
			ila_outbuff_empty : out std_logic; 
			ila_outbuff_almost_empty : out std_logic; 
			ila_outbuff_full   : out std_logic; 
			ila_outbuff_almost_full : out std_logic; 
			ila_outbuff_valid	: out std_logic; 
			
			--HEAP SORTER ILA
			ila_heap_sorter_ready : out std_logic; 
			ila_heap_sorter_fsm_state 	: out std_logic_vector(3 downto 0); 
			ila_heap_sorter_position1 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position2 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position3 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position4 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position5 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position6 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position7 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position8 	: out std_logic_vector(g_data_width-1 downto 0);
			ila_heap_sorter_position9 	: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_done 		: out std_logic; 
			ila_heap_sorter_sorted_data_0: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_1: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_2: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_3: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_4: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_5: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_6: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_7: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_8: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorted_data_9: out std_logic_vector(g_data_width-1 downto 0); 
			ila_heap_sorter_sorter_ready : out std_logic
			
	  );
	end component;




    signal control_reg_from_master              : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal status_reg_from_master               : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal input_data_addr_reg_from_master      : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal output_data_addr_reg_from_master     : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal input_params_reg_from_master         : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal output_params_reg_from_master        : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal kernel_params_reg_from_master        : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
	signal addr1_params_reg_from_master         : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);  
	signal addr2_params_reg_from_master         : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);  
	signal debug_reg_from_master         		: std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);  
        
    signal control_reg_to_master              : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal status_reg_to_master               : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal input_data_addr_reg_to_master      : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
    signal output_data_addr_reg_to_master     : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal input_params_reg_to_master         : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal output_params_reg_to_master        : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
    signal kernel_params_reg_to_master        : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
	signal addr1_params_reg_to_master         : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);  
	signal addr2_params_reg_to_master         : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);  
	signal debug_reg_to_master         		  : std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0); 
	
    signal slv_reg_rden						: std_logic; 
    signal slv_reg_wren						: std_logic_vector(10 downto 0); 

    signal outbuff_dout           : std_logic_vector(g_data_width-1 downto 0); 
    signal outbuff_empty          : std_logic; 
    signal outbuff_almost_empty   : std_logic; 
    signal outbuff_full   		  : std_logic; 
    signal outbuff_almost_full    : std_logic; 
    signal outbuff_valid	      : std_logic; 
    signal channel_complete       : std_logic; 
    signal inbuff_full	          : std_logic; 
    signal inbuff_almost_full     : std_logic;
    signal inbuff_empty           : std_logic; 
    signal inbuff_almost_empty    : std_logic; 
    
    signal outbuff_rd_en          : std_logic; 
    signal inbuff_din             : std_logic_vector(g_data_width-1 downto 0); 
    signal inbuff_wr_en           : std_logic; 
    signal input_volume_size      : STD_LOGIC_VECTOR(7 downto 0);
    signal output_volume_size     : STD_LOGIC_VECTOR(7 downto 0);
    signal pool_kernel_size 	  : std_logic_vector(3 downto 0); 
    signal stride                 : STD_LOGIC_VECTOR(3 downto 0); 
    signal busy     			  : std_logic; 
	signal row_complete			  : std_logic; 

    signal start 				  : std_logic; 
	signal master_ack				: std_logic; 
    
	signal sorter_fsm_state 	: std_logic_vector(3 downto 0); 
	signal controller_fsm_state : std_logic_vector(3 downto 0); 
		
	signal PR0_empty			: std_logic; 
	signal PR0_almost_empty		: std_logic; 
	signal PR0_full				: std_logic; 
	signal PR0_almost_full		: std_logic; 

	signal PR1_empty			: std_logic; 
	signal PR1_almost_empty		: std_logic; 
	signal PR1_full				: std_logic; 
	signal PR1_almost_full		: std_logic; 

	signal PR2_empty			: std_logic; 
	signal PR2_almost_empty		: std_logic; 
	signal PR2_full				: std_logic; 
	signal PR2_almost_full		: std_logic; 
	
	signal epoch : unsigned(63 downto 0);
	signal cycle : unsigned(63 downto 0); 
begin

-- Instantiation of Axi Bus Interface S00_AXI
Maxpool_Layer_32bit_v1_0_S00_AXI_inst : Maxpool_Layer_32bit_v1_0_S00_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
	
        i_control_reg            => control_reg_from_master,
        i_status_reg             => status_reg_from_master,
        i_input_data_addr_reg    => input_data_addr_reg_from_master,
        i_output_data_addr_reg   => output_data_addr_reg_from_master,
        i_input_params_reg       => input_params_reg_from_master,
        i_output_params_reg      => output_params_reg_from_master,
        i_kernel_params_reg      => kernel_params_reg_from_master,
		i_addr1_params_reg		 => addr1_params_reg_from_master, 
		i_addr2_params_reg		 => addr2_params_reg_from_master,
		i_debug_reg		 		 => debug_reg_from_master,
		
        o_control_reg            => control_reg_to_master,
        o_status_reg             => status_reg_to_master,
        o_input_data_addr_reg    => input_data_addr_reg_to_master,
        o_output_data_addr_reg   => output_data_addr_reg_to_master,
        o_input_params_reg       => input_params_reg_to_master,
        o_output_params_reg      => output_params_reg_to_master,
        o_kernel_params_reg      => kernel_params_reg_to_master,
		o_addr1_params_reg		 => addr1_params_reg_to_master, 
		o_addr2_params_reg		 => addr2_params_reg_to_master,
		o_debug_reg		 		 => debug_reg_to_master,
		
        o_slv_reg_rden           => slv_reg_rden,
        o_slv_reg_wren           => slv_reg_wren,
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
Maxpool_Layer_32bit_v1_0_M00_AXI_inst : Maxpool_Layer_32bit_v1_0_M00_AXI
	generic map (
		g_data_width => G_DATA_WIDTH, 
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


        i_outbuff_dout           => outbuff_dout, 
        i_outbuff_empty          => outbuff_empty, 
        i_outbuff_almost_empty   => outbuff_almost_empty, 
        i_outbuff_full           => outbuff_full, 
        i_outbuff_almost_full    => outbuff_almost_full, 
        i_outbuff_valid	         => outbuff_valid, 
	    i_channel_complete       => channel_complete, 
	    i_inbuff_empty           => inbuff_empty, 
	    i_inbuff_almost_empty    => inbuff_almost_empty,  
	    i_inbuff_full	         => inbuff_full, 
	    i_inbuff_almost_full     => inbuff_almost_full, 
		
		--POOL ROW 0 SIGNALS 
		i_PR0_full 				 => PR0_full,
		i_PR0_almost_full 		 => PR0_almost_full,
		i_PR0_empty 			 => PR0_empty,
		i_PR0_almost_empty 		 => PR0_almost_empty, 

		--POOL ROW 1 SIGNALS 
		i_PR1_full 				 => PR1_full,
		i_PR1_almost_full 		 => PR1_almost_full,
		i_PR1_empty 			 => PR1_empty,
		i_PR1_almost_empty 		 => PR1_almost_empty, 

		--POOL ROW 2 SIGNALS 
		i_PR2_full 				 => PR2_full,
		i_PR2_almost_full 		 => PR2_almost_full,
		i_PR2_empty 			 => PR2_empty,
		i_PR2_almost_empty 		 => PR2_almost_empty, 

	    i_busy                   => busy, 
		i_row_complete			 => row_complete, 
		i_sorter_fsm_state 	     => sorter_fsm_state, 
	    i_controller_fsm_state   => controller_fsm_state, 
		

	   --TO LOGIC 
	    o_outbuff_rd_en          => outbuff_rd_en, 
	    o_inbuff_din             => inbuff_din, 
	    o_inbuff_wr_en           => inbuff_wr_en, 
        o_input_volume_size      => input_volume_size, 
        o_output_volume_size     => output_volume_size, 
	    o_pool_kernel_size 	     => pool_kernel_size, 
        o_stride                 => stride, 
		o_pooling_complete       => o_pooling_complete, 
		o_start					 => start, 
		o_master_ack			 => master_ack, 

       --FROM AXI SLAVE
        i_control_reg            => control_reg_to_master,
        i_status_reg             => status_reg_to_master,
        i_input_data_addr_reg    => input_data_addr_reg_to_master,
        i_output_data_addr_reg   => output_data_addr_reg_to_master,
        i_input_params_reg       => input_params_reg_to_master,
        i_output_params_reg      => output_params_reg_to_master,
        i_kernel_params_reg      => kernel_params_reg_to_master,
		i_addr1_params_reg		 => addr1_params_reg_to_master, 
		i_addr2_params_reg		 => addr2_params_reg_to_master,
		i_debug_reg		 		 => debug_reg_to_master,
		
        i_slv_reg_rden			 => slv_reg_rden,
        i_slv_reg_wren			 => slv_reg_wren,

       --TO AXI SLAVE
        o_control_reg            => control_reg_from_master, 
        o_status_reg             => status_reg_from_master, 
        o_input_data_addr_reg    => input_data_addr_reg_from_master, 
        o_output_data_addr_reg   => output_data_addr_reg_from_master, 
        o_input_params_reg       => input_params_reg_from_master, 
        o_output_params_reg      => output_params_reg_from_master, 
        o_kernel_params_reg      => kernel_params_reg_from_master, 
		o_addr1_params_reg		 => addr1_params_reg_from_master, 
		o_addr2_params_reg		 => addr2_params_reg_from_master,
		o_debug_reg		 		 => debug_reg_from_master,
		
		
		ila_master_fsm_state  => ila_master_fsm_state,
		ila_master_axi_awready	 => ila_master_axi_awready,
		ila_master_axi_awaddr		=> ila_master_axi_awaddr,
		ila_master_axi_awsize   	=> ila_master_axi_awsize,
		ila_master_axi_awlen    	=> ila_master_axi_awlen,
		ila_master_axi_awvalid	=> ila_master_axi_awvalid, 
		ila_master_axi_wready 	=> ila_master_axi_wready, 
		ila_master_axi_wdata		=> ila_master_axi_wdata,
		ila_master_axi_wlast		=> ila_master_axi_wlast,
		ila_master_axi_wvalid		=> ila_master_axi_wvalid,
		ila_master_axi_wstrb    	=> ila_master_axi_wstrb,
		ila_master_axi_bvalid 	=> ila_master_axi_bvalid,
		ila_master_axi_bready		=> ila_master_axi_bready,
		ila_master_axi_wbc		=> ila_master_axi_wbc,
		
		
		ila_master_axi_arsize		=> ila_master_axi_arsize,
		ila_master_axi_araddr		=> ila_master_axi_araddr,
		ila_master_axi_arlen    	=> ila_master_axi_arlen,
		ila_master_axi_arvalid	=> ila_master_axi_arvalid,
		ila_master_axi_rready		=> ila_master_axi_rready,
		
		ila_master_axi_arready 	=> ila_master_axi_arready,
		ila_master_axi_rdata 		=> ila_master_axi_rdata,
		ila_master_axi_rlast 		=> ila_master_axi_rlast,
		ila_master_axi_rvalid		=> ila_master_axi_rvalid,

		ila_master_axi_rbc				  => ila_master_axi_rbc,
		ila_master_outbuff_rd_en          => ila_master_outbuff_rd_en,
		ila_master_inbuff_din             => ila_master_inbuff_din,
		ila_master_inbuff_wr_en           => ila_master_inbuff_wr_en,
		ila_master_input_volume_size      => ila_master_input_volume_size,
		ila_master_input_volume_channels  => ila_master_input_volume_channels,
		ila_master_output_volume_size     => ila_master_output_volume_size,
		ila_master_output_volume_channels => ila_master_output_volume_channels,
		ila_master_pool_kernel_size 	  => ila_master_pool_kernel_size,
		ila_master_stride                 => ila_master_stride,

		ila_master_input_data_addr_reg    => ila_master_input_data_addr_reg,
		ila_master_output_data_addr_reg   => ila_master_output_data_addr_reg,

		ila_master_row_counter			  => ila_master_row_counter,
		ila_master_channel_counter	      => ila_master_channel_counter,
		ila_master_writes_remaining 	  => ila_master_writes_remaining,
		ila_master_calculated 			  => ila_master_calculated,
		ila_master_more_bursts_needed     => ila_master_more_bursts_needed,


		ila_master_channel_complete_counter => ila_master_channel_complete_counter,
		ila_master_complete_shift_reg	  	=> ila_master_complete_shift_reg,
		ila_master_data_valid             	=> ila_master_data_valid,
		ila_master_operating_length		  	=> ila_master_operating_length,
		ila_master_input_index			  	=> ila_master_input_index,
		ila_master_input_addr_counter 	  	=> ila_master_input_addr_counter,
		ila_master_stride_counter 		  	=> ila_master_stride_counter,
		ila_master_addr1_multiple		  	=> ila_master_addr1_multiple,
		ila_master_addr2_multiple      		=> ila_master_addr2_multiple,
		ila_master_start		            => ila_master_start,
		ila_master_start_reg				=> ila_master_start_reg,
		
		ila_master_first_calculated 		=> ila_master_first_calculated,
	
		
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


	maxpool_unit: max_pool_unit 
	  generic map(
	       g_data_width => G_DATA_WIDTH
	  )
	  port map(
	       i_clk   					=> m00_axi_aclk,
	       i_reset_n                => m00_axi_aresetn,
		   i_start 					=> start, 
	       i_input_volume_size      => input_volume_size,
	       i_output_volume_size     => output_volume_size,
		   i_pool_kernel_size 	    => pool_kernel_size,
	       i_stride                 => stride,
		   i_outbuff_rd_en          => outbuff_rd_en,
		   i_inbuff_din             => inbuff_din,
		   i_inbuff_wr_en           => inbuff_wr_en,
		   o_inbuff_empty           => inbuff_empty, 
		   o_inbuff_almost_empty    => inbuff_almost_empty, 
		   o_inbuff_full	        => inbuff_full,
		   o_inbuff_almost_full     => inbuff_almost_full,
	       o_outbuff_dout           => outbuff_dout,
	       o_outbuff_empty          => outbuff_empty,
	       o_outbuff_almost_empty   => outbuff_almost_empty,
	       o_outbuff_full           => outbuff_full, 
	       o_outbuff_almost_full    => outbuff_almost_full, 
	       o_outbuff_valid	        => outbuff_valid,
		   o_channel_complete       => channel_complete, 
		   o_row_complete			=> row_complete, 
		   o_busy					=> busy, 
		   o_sorter_fsm_state 	    => sorter_fsm_state, 
	       o_controller_fsm_state   => controller_fsm_state, 
		   i_master_ack				=> master_ack, 
		   --POOL ROW 0 SIGNALS 
		   o_PR0_full 				=> PR0_full, 
		   o_PR0_almost_full 		=> PR0_almost_full, 
		   o_PR0_empty 				=> PR0_empty,
		   o_PR0_almost_empty 		=> PR0_almost_empty,
		   
		   --POOL ROW 1 SIGNALS 
		   o_PR1_full 				=> PR1_full,
		   o_PR1_almost_full 		=> PR1_almost_full, 
		   o_PR1_empty 				=> PR1_empty,
		   o_PR1_almost_empty 		=> PR1_almost_empty,  
		   
		   --POOL ROW 2 SIGNALS 
		   o_PR2_full 				=> PR2_full, 
		   o_PR2_almost_full 		=> PR2_almost_full,
		   o_PR2_empty 				=> PR2_empty,
		   o_PR2_almost_empty 		=> PR2_almost_empty, 
		   

			--ILA SIGNALS 
			ila_row_cntrl_PR0_din 			=> ila_row_cntrl_PR0_din,
			ila_row_cntrl_PR0_wr_en 		=> ila_row_cntrl_PR0_wr_en,
			ila_row_cntrl_PR0_rd_en			=> ila_row_cntrl_PR0_rd_en,
			ila_row_cntrl_PR1_din 			=> ila_row_cntrl_PR1_din,
			ila_row_cntrl_PR1_wr_en 		=> ila_row_cntrl_PR1_wr_en ,
			ila_row_cntrl_PR1_rd_en			=> ila_row_cntrl_PR1_rd_en,
			ila_row_cntrl_PR2_din 			=> ila_row_cntrl_PR2_din,
			ila_row_cntrl_PR2_wr_en 		=> ila_row_cntrl_PR2_wr_en,
			ila_row_cntrl_PR2_rd_en			=> ila_row_cntrl_PR2_rd_en,
			ila_row_cntrl_third_row_activate=> ila_row_cntrl_third_row_activate,
			ila_row_cntrl_recycle_en 		=> ila_row_cntrl_recycle_en,
			ila_row_cntrl_prime_PR0_en 		=> ila_row_cntrl_prime_PR0_en ,
			ila_row_cntrl_prime_PR1_en 		=>  ila_row_cntrl_prime_PR1_en,
			ila_row_cntrl_prime_PR2_en		=> ila_row_cntrl_prime_PR2_en,

			ila_row_cntrl_pixel_counter		=> ila_row_cntrl_pixel_counter,
			ila_row_cntrl_column_counter	=> ila_row_cntrl_column_counter,
			ila_row_cntrl_row_counter		=> ila_row_cntrl_row_counter,
			ila_row_cntrl_sorter_data_valid	=> ila_row_cntrl_sorter_data_valid,
			ila_row_cntrl_stride_counter	=> ila_row_cntrl_stride_counter,

			ila_row_cntrl_inbuff_rd_en			=> ila_row_cntrl_inbuff_rd_en,
			ila_row_cntrl_volume_processed		=> ila_row_cntrl_volume_processed,
			ila_row_cntrl_volume_rows_processed => ila_row_cntrl_volume_rows_processed, 
			ila_row_cntrl_output_rows_generated => ila_row_cntrl_output_rows_generated,
			ila_row_cntrl_output_volume_size	=> ila_row_cntrl_output_volume_size,
			ila_row_cntrl_channel_counter		=> ila_row_cntrl_channel_counter,
			ila_row_cntrl_channel_complete		=> ila_row_cntrl_channel_complete,
			ila_row_cntrl_row_complete			=> ila_row_cntrl_row_complete,
			ila_row_cntrl_busy 					=> ila_row_cntrl_busy,
			ila_row_cntrl_fsm_state 			=> ila_row_cntrl_fsm_state,
		   
			
			ila_row_cntrl_kernel_data_0		=> ila_row_cntrl_kernel_data_0,
			ila_row_cntrl_kernel_data_1		=> ila_row_cntrl_kernel_data_1,
			ila_row_cntrl_kernel_data_2		=> ila_row_cntrl_kernel_data_2,
			ila_row_cntrl_kernel_data_3		=> ila_row_cntrl_kernel_data_3,
			ila_row_cntrl_kernel_data_4		=> ila_row_cntrl_kernel_data_4,
			ila_row_cntrl_kernel_data_5		=> ila_row_cntrl_kernel_data_5,
			ila_row_cntrl_kernel_data_6		=> ila_row_cntrl_kernel_data_6,
			ila_row_cntrl_kernel_data_7		=> ila_row_cntrl_kernel_data_7,
			ila_row_cntrl_kernel_data_8		=> ila_row_cntrl_kernel_data_8,
			ila_row_cntrl_kernel_data_9		=> ila_row_cntrl_kernel_data_9,

			ila_row_cntrl_sorter_data_0		=> ila_row_cntrl_sorter_data_0,
			ila_row_cntrl_sorter_data_1		=> ila_row_cntrl_sorter_data_1,
			ila_row_cntrl_sorter_data_2		=> ila_row_cntrl_sorter_data_2,
			ila_row_cntrl_sorter_data_3		=> ila_row_cntrl_sorter_data_3,
			ila_row_cntrl_sorter_data_4		=> ila_row_cntrl_sorter_data_4,
			ila_row_cntrl_sorter_data_5		=> ila_row_cntrl_sorter_data_5,
			ila_row_cntrl_sorter_data_6		=> ila_row_cntrl_sorter_data_6,
			ila_row_cntrl_sorter_data_7		=> ila_row_cntrl_sorter_data_7,
			ila_row_cntrl_sorter_data_8		=> ila_row_cntrl_sorter_data_8 ,
			ila_row_cntrl_sorter_data_9		=> ila_row_cntrl_sorter_data_9,
			
			--POOL ROW 0 SIGNALS 
			ila_PR0_full 					=> ila_PR0_full,
			ila_PR0_almost_full 		=> ila_PR0_almost_full,
			ila_PR0_empty 				=> ila_PR0_empty,
			ila_PR0_almost_empty 		=> ila_PR0_almost_empty,

			--POOL ROW 1 SIGNALS 
			ila_PR1_full 				=> ila_PR1_full, 
			ila_PR1_almost_full 		=> ila_PR1_almost_full,
			ila_PR1_empty 				=> ila_PR1_empty,
			ila_PR1_almost_empty 		=> ila_PR1_almost_empty,

			--POOL ROW 2 SIGNALS 
			ila_PR2_full 				=> ila_PR2_full,
			ila_PR2_almost_full 		=> ila_PR2_almost_full,
			ila_PR2_empty 				=> ila_PR2_empty,
			ila_PR2_almost_empty 		=> ila_PR2_almost_empty,
			
			ila_inbuff_wr_en			=> ila_inbuff_wr_en,
			ila_inbuff_empty			=> ila_inbuff_empty,
			ila_inbuff_almost_empty		=> ila_inbuff_almost_empty,
			ila_inbuff_full				=> ila_inbuff_full,
			ila_inbuff_almost_full		=> ila_inbuff_almost_full,
			ila_inbuff_valid			=> ila_inbuff_valid,
			ila_inbuff_rd_en			=> ila_inbuff_rd_en ,
			
			
			ila_outbuff_rd_en 			=> ila_outbuff_rd_en,
			ila_outbuff_dout 			=> ila_outbuff_dout,
			ila_outbuff_empty 			=>  ila_outbuff_empty,
			ila_outbuff_almost_empty	=> ila_outbuff_almost_empty,
			ila_outbuff_full  			=> ila_outbuff_full,
			ila_outbuff_almost_full 	=> ila_outbuff_almost_full,
			ila_outbuff_valid			=> ila_outbuff_valid,
			
			--HEAP SORTER ILA
			ila_heap_sorter_ready 		=> ila_heap_sorter_ready,
			ila_heap_sorter_fsm_state 	=> ila_heap_sorter_fsm_state,
			ila_heap_sorter_position1 	=> ila_heap_sorter_position1,
			ila_heap_sorter_position2 	=> ila_heap_sorter_position2 ,
			ila_heap_sorter_position3 	=> ila_heap_sorter_position3 ,
			ila_heap_sorter_position4 	=> ila_heap_sorter_position4,
			ila_heap_sorter_position5 	=> ila_heap_sorter_position5,
			ila_heap_sorter_position6 	=> ila_heap_sorter_position6,
			ila_heap_sorter_position7 	=> ila_heap_sorter_position7,
			ila_heap_sorter_position8 	=> ila_heap_sorter_position8,
			ila_heap_sorter_position9 	=> ila_heap_sorter_position9,
			ila_heap_sorter_done 		=> ila_heap_sorter_done,
			ila_heap_sorter_sorted_data_0	=> ila_heap_sorter_sorted_data_0, 
			ila_heap_sorter_sorted_data_1	=> ila_heap_sorter_sorted_data_1 ,
			ila_heap_sorter_sorted_data_2	=> ila_heap_sorter_sorted_data_2,
			ila_heap_sorter_sorted_data_3	=> ila_heap_sorter_sorted_data_3,
			ila_heap_sorter_sorted_data_4	=> ila_heap_sorter_sorted_data_4,
			ila_heap_sorter_sorted_data_5	=> ila_heap_sorter_sorted_data_5,
			ila_heap_sorter_sorted_data_6	=> ila_heap_sorter_sorted_data_6,
			ila_heap_sorter_sorted_data_7	=> ila_heap_sorter_sorted_data_7,
			ila_heap_sorter_sorted_data_8	=> ila_heap_sorter_sorted_data_8,
			ila_heap_sorter_sorted_data_9	=> ila_heap_sorter_sorted_data_9,
			ila_heap_sorter_sorter_ready 	=> ila_heap_sorter_sorter_ready

			
	  );
o_cycle <= std_logic_vector(cycle); 
o_epoch <= std_logic_vector(epoch); 
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


	-- User logic ends

end arch_imp;
