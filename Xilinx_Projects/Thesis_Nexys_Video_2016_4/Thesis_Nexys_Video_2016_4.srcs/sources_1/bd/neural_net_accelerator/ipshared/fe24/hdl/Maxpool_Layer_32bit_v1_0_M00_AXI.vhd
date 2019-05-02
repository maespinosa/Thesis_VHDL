library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Maxpool_Layer_32bit_v1_0_M00_AXI is
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
        
       --FROM LOGIC
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
	   i_row_complete			: in std_logic; 
	   
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
	   o_pooling_complete		: out std_logic; 
	   o_start					: out std_logic; 
	   o_master_ack				: out std_logic; 

       --FROM AXI SLAVE
       i_control_reg            : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
       i_status_reg             : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
       i_input_data_addr_reg    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
       i_output_data_addr_reg   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
       i_input_params_reg       : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
       i_output_params_reg      : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
       i_kernel_params_reg      : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	   i_addr1_params_reg		: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	   i_addr2_params_reg		: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
       i_debug_reg		: in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
       
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
	   o_addr1_params_reg		: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	   o_addr2_params_reg		: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	   o_debug_reg		: out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	  
		
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
end Maxpool_Layer_32bit_v1_0_M00_AXI;

architecture implementation of Maxpool_Layer_32bit_v1_0_M00_AXI is

                                                            

    type master_state is (
				IDLE, 
				READ_ADDRESS, 
				READ_DATA_FIRST_ROWS, 
				FINISH_READ_FIRST, 
				READ_ADDRESS_STRIDE, 
				READ_DATA_STRIDE, 
				FINISH_STRIDE_READ,
				POOLER_EXECUTING,
				CALC_WRITE_LENGTH,
				WRITE_ADDRESS,
				WRITE_FIRST_BEAT,
				WRITE_WAIT_WREADY,
				WRITE_ALL, 
				WRITE_RESPONSE
				); 

    signal current_state : master_state; 
    signal next_state : master_state; 


	-- AXI4FULL signals
	--AXI4 internal temp signals
	signal axi_awaddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awsize   : std_logic_vector(2 downto 0); 
	signal axi_awlen    : std_logic_vector(7 downto 0); 
	signal axi_awlen_temp : std_logic_vector(7 downto 0); 
	signal axi_awvalid	: std_logic;
	signal axi_wdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	signal axi_wlast	: std_logic;
	signal axi_wvalid	: std_logic;
	signal axi_wstrb    : std_logic_vector(3 downto 0); 
	signal axi_bready	: std_logic;
	signal axi_arsize	: std_logic_vector(2 downto 0); 
	signal axi_araddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arlen    : std_logic_vector(7 downto 0); 
	signal axi_arvalid	: std_logic;
	signal axi_rready	: std_logic;
	--write beat count in a burst
	signal write_beat_counter : unsigned(8 downto 0); 
	--read beat count in a burst
	signal read_beat_counter	: unsigned(7 downto 0);

    
	signal outbuff_rd_en          : std_logic; 
	signal inbuff_din             : std_logic_vector(g_data_width-1 downto 0); 
	signal inbuff_wr_en           : std_logic; 
	signal input_volume_size      : STD_LOGIC_VECTOR(7 downto 0);
	signal input_volume_channels  : std_logic_vector(15 downto 0); 
	signal output_volume_size     : STD_LOGIC_VECTOR(7 downto 0);
	signal output_volume_channels : std_logic_vector(15 downto 0); 
	signal pool_kernel_size 	  : std_logic_vector(3 downto 0); 
	signal stride                 : STD_LOGIC_VECTOR(3 downto 0); 

	signal input_data_addr_reg    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal output_data_addr_reg    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 

	signal row_counter			  : unsigned(7 downto 0); 
	signal channel_counter	      : unsigned(15 downto 0); 
	signal writes_remaining 	  : unsigned(15 downto 0); 
	signal calculated 			  : std_logic; 
	signal more_bursts_needed     : std_logic; 
	signal pooling_complete       : std_logic; 
	signal toggle 				  : std_logic; 
	signal channel_complete_counter : unsigned(7 downto 0); 
	signal complete_shift_reg	  : std_logic_vector(1 downto 0); 
	signal data_valid             : std_logic; 
	signal operating_length		  : unsigned(8 downto 0); 
	signal input_index			  : unsigned(31 downto 0); 
	signal input_addr_counter 	  : unsigned(31 downto 0); 
	signal stride_counter 		  : unsigned(7 downto 0); 
	signal addr1_multiple		  : std_logic_vector(7 downto 0); 
	signal addr2_multiple      : std_logic_vector(7 downto 0);
	signal start		             : std_logic; 
	signal start_reg				 : std_logic_vector(1 downto 0); 
	
	signal first_calculated : std_logic;
	signal fsm_state : std_logic_vector(3 downto 0); 
	signal master_ack: std_logic; 
	
begin
	-- I/O Connections assignments

	--I/O Connections. Write Address (AW)
	M_AXI_AWID	<= (others => '0');
	--The AXI address is a concatenation of the target base address + active offset range
	M_AXI_AWADDR	<= axi_awaddr; --std_logic_vector( unsigned(C_M_TARGET_SLAVE_BASE_ADDR) + unsigned(axi_awaddr) );
	M_AXI_AWLEN 	<= axi_awlen; --std_logic_vector( to_unsigned(C_M_AXI_BURST_LEN - 1, 8) );
	M_AXI_AWSIZE	<= axi_awsize; --"001";
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


	o_outbuff_rd_en          <= outbuff_rd_en; 
	o_inbuff_din             <= inbuff_din; 
	o_inbuff_wr_en           <= inbuff_wr_en; 
	o_input_volume_size      <= addr1_multiple; --input_volume_size; 
	o_output_volume_size     <= output_volume_size; 
	o_pool_kernel_size 	     <= pool_kernel_size; 
	o_stride                 <= stride; 
	o_pooling_complete       <= pooling_complete; 

	o_control_reg            <= i_control_reg;


	o_status_reg(0)          <= i_busy; 
	o_status_reg(3 downto 1) <= (others => '0'); 
	o_status_reg(4)			 <= i_channel_complete; 
	o_status_reg(7 downto 5) <= (others => '0'); 
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
	o_status_reg(31 downto 22) <= (others => '0'); 
	
	o_debug_reg(3 downto 0) <= i_sorter_fsm_state; 
	o_debug_reg(7 downto 4) <= i_controller_fsm_state; 
	o_debug_reg(11 downto 8) <= fsm_state; 
	o_debug_reg(31 downto 12) <= (others => '0'); 


	o_input_data_addr_reg    <= input_data_addr_reg; 
	o_output_data_addr_reg   <= output_data_addr_reg;

	o_input_params_reg       <= i_input_params_reg;
	o_output_params_reg      <= i_output_params_reg;
	o_kernel_params_reg      <= i_kernel_params_reg;
	o_addr1_params_reg	     <= i_addr1_params_reg; 
	o_addr2_params_reg		 <= i_addr2_params_reg; 
	
	o_start 				 <= start; 
	input_volume_size        <= i_input_params_reg(31 downto 24); 
	output_volume_size       <= i_output_params_reg(31 downto 24); 
	pool_kernel_size 	     <= i_kernel_params_reg(27 downto 24);  
	stride  				 <= i_kernel_params_reg(11 downto 8); 
	input_volume_channels	 <= i_input_params_reg(15 downto 0); 
	output_volume_channels   <= i_output_params_reg(15 downto 0); 
	
	TXN_DONE <= '0'; 
	ERROR <= '0'; 
	
	addr1_multiple         		<= i_addr1_params_reg(7 downto 0); 
	addr2_multiple 		 		<= i_addr1_params_reg(23 downto 16); 
	
	o_master_ack				<= master_ack; 

	
	ila_master_fsm_state  		<= fsm_state; 
	ila_master_axi_awready		<= M_AXI_AWREADY;
	ila_master_axi_awaddr		<= axi_awaddr; 
	ila_master_axi_awsize   	<= axi_awsize; 
	ila_master_axi_awlen    	<= axi_awlen; 
	ila_master_axi_awvalid		<= axi_awvalid; 
	ila_master_axi_wready 		<= M_AXI_WREADY; 
	ila_master_axi_wdata		<= axi_wdata;
	ila_master_axi_wlast		<= axi_wlast;
	ila_master_axi_wvalid		<= axi_wvalid;
	ila_master_axi_wstrb    	<= axi_wstrb;
	ila_master_axi_bvalid 		<= M_AXI_BVALID;
	ila_master_axi_bready		<= axi_bready;
	ila_master_axi_wbc			<= std_logic_vector(write_beat_counter); 
	
	ila_master_axi_arsize		<= axi_arsize;
	ila_master_axi_araddr		<= axi_araddr; 
	ila_master_axi_arlen    	<= axi_arlen;
	ila_master_axi_arvalid		<= axi_arvalid;
	ila_master_axi_rready		<= axi_rready;
	
	ila_master_axi_arready 		<= M_AXI_ARREADY;
	ila_master_axi_rdata 		<= M_AXI_RDATA;
	ila_master_axi_rlast 		<= M_AXI_RLAST;
	ila_master_axi_rvalid		<= M_AXI_RVALID;
	
	ila_master_axi_rbc				  <= read_beat_counter; 
	ila_master_outbuff_rd_en          <= outbuff_rd_en; 
	ila_master_inbuff_din             <= inbuff_din;
	ila_master_inbuff_wr_en           <= inbuff_wr_en ;
	ila_master_input_volume_size      <= input_volume_size; 
	ila_master_input_volume_channels  <= input_volume_channels;
	ila_master_output_volume_size     <= output_volume_size;
	ila_master_output_volume_channels <= output_volume_channels;
	ila_master_pool_kernel_size 	  <= pool_kernel_size ;
	ila_master_stride                 <= stride ;

	ila_master_input_data_addr_reg    <= input_data_addr_reg;
	ila_master_output_data_addr_reg   <= output_data_addr_reg;

	ila_master_row_counter			  <= row_counter;
	ila_master_channel_counter	      <= channel_counter;	
	ila_master_writes_remaining 	  <= writes_remaining; 
	ila_master_calculated 			  <= calculated; 
	ila_master_more_bursts_needed     <= more_bursts_needed;


	ila_master_channel_complete_counter <= channel_complete_counter;
	ila_master_complete_shift_reg	  	<= complete_shift_reg;
	ila_master_data_valid             	<= data_valid;
	ila_master_operating_length		  	<= operating_length;
	ila_master_input_index			  	<= input_index;
	ila_master_input_addr_counter 	  	<= input_addr_counter;
	ila_master_stride_counter 		  	<= stride_counter;
	ila_master_addr1_multiple		  	<= addr1_multiple;
	ila_master_addr2_multiple      		<= addr2_multiple ;
	ila_master_start		            <= start;
	ila_master_start_reg				<= start_reg;
	
	ila_master_first_calculated 		<= first_calculated; 
	
	
	
	
	

	state_transition: process(M_AXI_ACLK, M_AXI_ARESETN) is 
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
			elsif(pooling_complete = '1') then 
				start <= '0';
			end if; 
		end if; 
	end process; 
	
	
	next_state_comb: process(current_state,first_calculated,addr1_multiple,M_AXI_RVALID,axi_wvalid, channel_counter, input_data_addr_reg,input_addr_counter,stride, pool_kernel_size,pooling_complete,i_row_complete,start, i_control_reg,output_volume_size,axi_awlen,i_outbuff_dout,operating_length,M_AXI_ARREADY,i_inbuff_full,M_AXI_RLAST,row_counter,input_volume_size,i_channel_complete,M_AXI_AWREADY,i_outbuff_empty,i_outbuff_valid,M_AXI_WREADY,M_AXI_BVALID, more_bursts_needed,channel_complete_counter,data_valid, writes_remaining, calculated,output_data_addr_reg,write_beat_counter,output_volume_channels, stride_counter) is 
	begin 
		axi_rready <= '0'; 
		axi_bready <= '0'; 
		outbuff_rd_en <= '0';

		axi_araddr        <= (others => '0'); 
		axi_arlen         <= (others => '0');  
		axi_arvalid	      <= '0';
		axi_arsize 			<= (others => '0');
		
		axi_wlast <= '0'; 
		axi_wvalid <= '0'; 
		--axi_awaddr <= (others => '0'); 
		--axi_awsize <= (others => '0'); 
		--axi_awvalid <= '0'; 
		axi_wdata <= (others => '0');  
		axi_wstrb <= (others => '0'); 

		case current_state is 
		    when IDLE => 
				fsm_state <= "0000"; 
				if (start = '1' and pooling_complete = '0') then
		    		next_state <= READ_ADDRESS; 
		    	else 
		    		next_state <= IDLE; 
		    	end if; 


			when READ_ADDRESS => 
				fsm_state <= "0001"; 
				axi_araddr <= std_logic_vector(unsigned(input_data_addr_reg) + input_addr_counter); 
				axi_arlen <= std_logic_vector(unsigned(addr1_multiple)-1); 
				axi_arvalid	<= '1';
				axi_arsize <= "010"; 
				
				if(M_AXI_ARREADY = '1') then 
					next_state <= READ_DATA_FIRST_ROWS; 
				else 
					next_state <= READ_ADDRESS; 
				end if; 


			when READ_DATA_FIRST_ROWS => 
				fsm_state <= "0010"; 
				axi_rready <= '1'; 
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
					if(M_AXI_RLAST = '0') then 
						axi_rready <= '1'; 
						next_state <= READ_DATA_FIRST_ROWS; 
					else
						if(row_counter < unsigned(pool_kernel_size)-1) then 
							next_state <= READ_ADDRESS; 
							axi_rready <= '1';
						else
							next_state <= FINISH_READ_FIRST; 
							axi_rready <= '0';
						end if; 
						
					end if; 
				else 
					next_state <= READ_DATA_FIRST_ROWS; 	
				end if; 
				
			when FINISH_READ_FIRST => 
				fsm_state <= "0011"; 
			    axi_rready <= '1';
				if(i_row_complete = '1') then 
					next_state <= CALC_WRITE_LENGTH;  
				else 
					next_state <= FINISH_READ_FIRST; 
				end if; 
				
				
            when CALC_WRITE_LENGTH => 
				fsm_state <= "1100"; 			
                next_state <= WRITE_ADDRESS; 
				
			when WRITE_ADDRESS => 
				fsm_state <= "0100"; 
				--axi_awaddr <= std_logic_vector(unsigned(output_data_addr_reg));
                --axi_awsize <= "010";
                --axi_awvalid <= '1'; 
				if(M_AXI_AWREADY = '1') then -- and calculated = '1') then 
                    next_state <= WRITE_ALL; 
                else 
                    next_state <= WRITE_ADDRESS; 
                end if; 
				
			when WRITE_ALL => 
				fsm_state <= "0101"; 
				axi_wdata <= (others => '0'); 
				axi_wstrb <= "0000";
				axi_wlast <= '0';
				axi_wvalid <= '0'; 
				outbuff_rd_en <= '0'; 
				
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					if(M_AXI_WREADY = '1') then -- and axi_wvalid = '1') then 					
						outbuff_rd_en <= '1'; 
						axi_wvalid <= '1';
						if(write_beat_counter < unsigned(axi_awlen)) then 
							next_state <= WRITE_ALL;
							axi_wlast <= '0';
						else
							axi_wlast <= '1';
							next_state <= WRITE_RESPONSE;
						end if; 

						if(output_data_addr_reg(1) = '0' and g_bytes_per_data = 2) then 
							axi_wdata <= x"0000" & i_outbuff_dout; 
							axi_wstrb <= "0011";
						elsif(output_data_addr_reg(1) = '1' and g_bytes_per_data = 2) then 
							axi_wdata <= i_outbuff_dout & x"0000"; 
							axi_wstrb <= "1100";
						elsif(g_bytes_per_data = 4) then 
							axi_wdata <= i_outbuff_dout; 
							axi_wstrb <= "1111";
						else 
							axi_wdata <= (others => '0'); 
							axi_wstrb <= "0000";
						end if; 

					else 
						next_state <= WRITE_ALL;
					end if;
				else 
					next_state <= WRITE_ALL; 
				end if; 

				
            when WRITE_RESPONSE =>  
				fsm_state <= "0110"; 
				if(M_AXI_BVALID = '1') then 

					axi_bready <= '1'; 
					if(row_counter < unsigned(output_volume_size)) then 
						next_state <= READ_ADDRESS_STRIDE; 
					else 
						if(channel_counter < unsigned(output_volume_channels)-1) then 
							next_state <= READ_ADDRESS; 
						else 
							next_state <= IDLE; 
						end if; 
					end if; 
				else 
					next_state <= WRITE_RESPONSE; 
				end if; 
				
				
				

			when READ_ADDRESS_STRIDE => 
				fsm_state <= "0111"; 
				axi_araddr <= std_logic_vector(unsigned(input_data_addr_reg) + input_addr_counter);  
				axi_arlen <= std_logic_vector(unsigned(addr1_multiple)-1); 
				axi_arvalid	<= '1';
				axi_arsize <= "010"; 
				

				if(M_AXI_ARREADY = '1') then 
					next_state <= READ_DATA_STRIDE; 
				else 
					next_state <= READ_ADDRESS_STRIDE; 
				end if; 

			when READ_DATA_STRIDE =>
				fsm_state <= "1000"; 			
				axi_rready <= '1';
	 
				if(i_inbuff_full = '0'and M_AXI_RVALID = '1') then 
					if(M_AXI_RLAST = '0') then 
						axi_rready <= '1'; 
						next_state <= READ_DATA_STRIDE; 
					else
						if(stride_counter < unsigned(stride)-1) then 
							next_state <= READ_ADDRESS_STRIDE; 
							axi_rready <= '1';
						else
							next_state <= FINISH_READ_FIRST; 
							axi_rready <= '0';
						end if; 
						
					end if; 
				else 
					next_state <= READ_DATA_STRIDE; 
				end if; 


			when FINISH_STRIDE_READ =>	
				fsm_state <= "1001"; 			
				if(row_counter < unsigned(output_volume_size)-1) then 
					next_state <= READ_ADDRESS_STRIDE; 
				elsif(row_counter >= unsigned(output_volume_size)-1) then 
					next_state <= POOLER_EXECUTING; 
				else 
					next_state <= FINISH_STRIDE_READ; 
				end if; 
				
			
				
			when POOLER_EXECUTING =>
				fsm_state <= "1010"; 			
				if(i_channel_complete = '1') then --channel_complete_counter = unsigned(output_volume_channels)) then 
					next_state <= CALC_WRITE_LENGTH; --WRITE_ADDRESS; 
				else 
					next_state <= POOLER_EXECUTING; 
				end if;

			when others => 
				fsm_state <= "1011"; 
				next_state <= IDLE; 


				
				
				
		end case; 

	end process; 




	read_process: process(M_AXI_ACLK,M_AXI_ARESETN) is 
	begin 
		if(M_AXI_ARESETN = '0') then 
			--axi_araddr        <= (others => '0'); 
			--axi_arlen         <= (others => '0');  
			--axi_arvalid	      <= '0';
			--axi_arsize 			<= (others => '0'); 
			inbuff_din        <= (others => '0'); 
			inbuff_wr_en      <= '0'; 
			read_beat_counter <= (others => '0'); 
			write_beat_counter <= (others => '0'); 
			row_counter       <= (others => '0');  
			channel_counter   <= (others => '0'); 
			writes_remaining  <= (others => '0'); 
			more_bursts_needed <= '0'; 
			calculated         <= '0'; 
			input_data_addr_reg <= (others => '0'); 
			output_data_addr_reg <= (others => '0'); 
			pooling_complete <= '0'; 
			toggle <= '0'; 
			channel_complete_counter <= (others => '0'); 
			complete_shift_reg <= (others => '0'); 
			data_valid <= '0'; 
			operating_length <= (others => '0'); 
			
			--axi_wlast <= '0'; 
			--axi_wvalid <= '0'; 
			axi_awaddr <= (others => '0'); 
			axi_awlen <= (others => '0'); 
			axi_awlen_temp <= (others => '0'); 			
			axi_awsize <= (others => '0'); 
			axi_awvalid <= '0'; 
			
			--axi_wdata <= (others => '0');  
			--axi_wstrb <= (others => '0'); 
			
			input_index <= (others => '0'); 
			input_addr_counter <= (others => '0'); 
			stride_counter <= (others => '0'); 
			first_calculated <= '0'; 
			master_ack <= '0'; 


		elsif(rising_edge(M_AXI_ACLK)) then 

			case current_state is 

			when IDLE =>
				
				--axi_araddr        <= (others => '0'); 
				--axi_arlen         <= (others => '0');  
				--axi_arvalid	      <= '0';
				--axi_arsize 			<= (others => '0'); 
				inbuff_din        <= (others => '0'); 
				inbuff_wr_en      <= '0'; 
				read_beat_counter <= (others => '0'); 
				write_beat_counter <= (others => '0'); 
				row_counter       <= (others => '0');  
				channel_counter   <= (others => '0'); 
				writes_remaining  <= (others => '0'); 
				more_bursts_needed <= '0'; 
				calculated         <= '0'; 
				toggle <= '0'; 
				channel_complete_counter <= (others => '0'); 
				complete_shift_reg <= (others => '0'); 
				data_valid <= '0'; 
				operating_length <= (others => '0'); 
				
				--axi_wlast <= '0'; 
				--axi_wvalid <= '0'; 
				axi_awaddr <= std_logic_vector(unsigned(output_data_addr_reg)); 
				axi_awlen <= (others => '0'); 
				axi_awlen_temp <= (others => '0'); 			
				axi_awsize <= (others => '0'); 
				axi_awvalid <= '0'; 
				
				--axi_wdata <= (others => '0');  
				--axi_wstrb <= (others => '0'); 
				
				input_index <= (others => '0'); 
				input_addr_counter <= (others => '0'); 
				stride_counter <= (others => '0'); 
				master_ack <= '0'; 

				pooling_complete <= '0'; 
				if(i_slv_reg_wren(2) = '1' ) then 
					input_data_addr_reg <= i_input_data_addr_reg; 
				else 
					input_data_addr_reg <= input_data_addr_reg; 
				end if; 


				if(i_slv_reg_wren(3) = '1') then 
					output_data_addr_reg <= i_output_data_addr_reg; 
				else 
					output_data_addr_reg <= output_data_addr_reg; 
				end if; 

			when READ_ADDRESS => 
				--axi_araddr <= std_logic_vector(unsigned(input_data_addr_reg) + input_addr_counter); 
				--axi_arlen <= std_logic_vector(unsigned(addr1_multiple)-1); 
				--axi_arvalid	<= '1';
				--axi_arsize <= "010"; 
				
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 


			when READ_DATA_FIRST_ROWS => 
				--axi_arvalid	<= '0';
				
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
				
					if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
						inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000";
					elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
						inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000"; 
					elsif(g_bytes_per_data = 4) then 
						inbuff_din <= M_AXI_RDATA; 
					end if; 
					inbuff_wr_en <= '1';
					
					if(M_AXI_RLAST = '0') then 
						read_beat_counter <= read_beat_counter + 1;
						input_addr_counter <= input_addr_counter + g_bytes_per_data;
					else 
						read_beat_counter <= (others => '0'); 
						
						if(row_counter < unsigned(pool_kernel_size)-1) then 
							row_counter <= row_counter + 1; 
							input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						else
							input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							row_counter <= x"01"; --(others => '0'); 
						end if; 
					end if; 
					
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					read_beat_counter <= read_beat_counter; 
					input_addr_counter <= input_addr_counter; 
				end if; 
						
						
						
						
				
				-- if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					
					-- if(M_AXI_RVALID = '1') then 
						
						-- input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						
						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000";
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000"; 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1'; 
						-- read_beat_counter <= read_beat_counter + 1; 
						
					-- else 
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
						-- read_beat_counter <= read_beat_counter; 
						-- input_addr_counter <= input_addr_counter; 
					-- end if; 

				-- else 
					
					-- if(M_AXI_RLAST = '1') then 

						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000"; 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1'; 
						-- read_beat_counter <= (others => '0'); 
						
						-- if(row_counter < unsigned(pool_kernel_size)-1) then 
							-- row_counter <= row_counter + 1; 
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						-- else
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- row_counter <= (others => '0'); 
						-- end if; 
					-- else 
						-- read_beat_counter <= read_beat_counter; 
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
					-- end if;
					
				-- end if; 
				
			when FINISH_READ_FIRST => 
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0';  
				writes_remaining <= to_unsigned(to_integer(unsigned(output_volume_size)-1),16); 
				master_ack <= '1'; 
				 

				
			when CALC_WRITE_LENGTH => 
				--axi_awaddr <= std_logic_vector(unsigned(output_data_addr_reg));
                --axi_awsize <= "010";
                --axi_awvalid <= '1'; 
				channel_complete_counter <= (others => '0'); 
				complete_shift_reg <= "00"; 
				master_ack <= '0'; 

				if(writes_remaining > 255 and calculated = '0') then 
					writes_remaining <= writes_remaining - 256; 
					more_bursts_needed <= '1'; 
					axi_awlen_temp <= x"FF"; 
				elsif(writes_remaining <= 255 and calculated = '0') then 
					more_bursts_needed <= '0'; 
					writes_remaining <= (others => '0'); 
					axi_awlen_temp <= std_logic_vector(writes_remaining(7 downto 0));  
				else 
					more_bursts_needed <= more_bursts_needed; 
					axi_awlen_temp <= axi_awlen_temp;
				end if;

				calculated <= '1';
				--if(calculated = '0') then 
					operating_length <= '0' & unsigned(axi_awlen_temp); 
				--end if;		
			
			when WRITE_ADDRESS => 
				axi_awaddr <= std_logic_vector(unsigned(output_data_addr_reg));
                axi_awsize <= "010";
                --axi_awvalid <= '1'; 
				axi_awlen <= axi_awlen_temp; 
				
				if(M_AXI_AWREADY = '1') then -- and calculated = '1') then 
                    axi_awvalid <= '0'; 
                else 
                    axi_awvalid <= '1'; 
                end if; 

			
			when WRITE_ALL =>
				calculated <= '0'; 
				axi_awvalid <= '0'; 
				
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					--axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then -- and axi_wvalid = '1') then 
						
						output_data_addr_reg <= std_logic_vector(unsigned(output_data_addr_reg) + g_bytes_per_data);
									
						if(write_beat_counter < unsigned(axi_awlen)) then 
							write_beat_counter <= write_beat_counter + 1;  
						else
							--axi_wvalid <= '0'; 
							write_beat_counter <= (others => '0');
							channel_complete_counter <= channel_complete_counter + 1; 
						end if; 

					end if; 

				end if; 
				
				
			when WRITE_RESPONSE =>
				write_beat_counter <= (others => '0'); 			
				--axi_wdata <= (others => '0'); 
				--axi_wvalid <= '0'; 
				--axi_wstrb <= "0000"; 
				--axi_wlast <= '0'; 
				first_calculated <= '0'; 
				axi_awaddr <= std_logic_vector(unsigned(output_data_addr_reg));
				
				if(M_AXI_BVALID = '1') then 

					if(row_counter >= unsigned(output_volume_size)) then --else 
						row_counter <= (others => '0'); 
						if(channel_counter < unsigned(output_volume_channels)-1) then 
							channel_counter <= channel_counter + 1; 
							input_addr_counter <= input_addr_counter; -- + g_bytes_per_data; 
						else
							channel_counter <= (others => '0'); 
							pooling_complete <= '1'; 
						end if; 
					end if; 

				else 
					pooling_complete <= '0';
				end if; 
				
				

			when READ_ADDRESS_STRIDE => 
				--axi_araddr <= std_logic_vector(unsigned(input_data_addr_reg) + input_addr_counter);  
				--axi_arlen <= std_logic_vector(unsigned(addr1_multiple)-1); 
				--axi_arvalid	<= '1';
				--axi_arsize <= "010"; 
				
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 



			when READ_DATA_STRIDE => 
			    --axi_arvalid	<= '0';
				
				if(i_inbuff_full = '0' and M_AXI_RVALID = '1') then 
					
					if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
						inbuff_din <= M_AXI_RDATA(15 downto 0); 
					elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
						inbuff_din <= M_AXI_RDATA(31 downto 16); 
					elsif(g_bytes_per_data = 4) then 
						inbuff_din <= M_AXI_RDATA; 
					end if; 
					inbuff_wr_en <= '1'; 
					
					if(M_AXI_RLAST = '0') then 
						read_beat_counter <= read_beat_counter + 1; 
						input_addr_counter <= input_addr_counter + g_bytes_per_data; 
					else 
						read_beat_counter <= (others => '0'); 
						input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						
						if(stride_counter < unsigned(stride)-1) then 
							row_counter <= row_counter + 1; 
							stride_counter <= stride_counter + 1; 
							input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						else
							stride_counter <= (others => '0'); 
							input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						end if; 
					end if; 
						
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					read_beat_counter <= read_beat_counter; 
					input_addr_counter <= input_addr_counter; 
				end if;
				
				-- if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					
					-- if(M_AXI_RVALID = '1') then 
						-- input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						
						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0); 
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16); 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1'; 
						-- read_beat_counter <= read_beat_counter + 1; 
						
					-- else 
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
						-- read_beat_counter <= read_beat_counter; 
						-- input_addr_counter <= input_addr_counter; 
					-- end if;
					
				-- else
					-- if(M_AXI_RLAST = '1') then 
						-- input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						
						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0); 
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16); 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1';
						-- read_beat_counter <= (others => '0'); 
						
						-- if(stride_counter < unsigned(stride)-1) then 
							-- row_counter <= row_counter + 1; 
							-- stride_counter <= stride_counter + 1; 
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						-- else
							-- stride_counter <= (others => '0'); 
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						-- end if; 
					-- else
						-- read_beat_counter <= read_beat_counter; 					
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
					-- end if;
					

				-- end if; 
			

			when FINISH_STRIDE_READ => 
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0';  
				writes_remaining <= to_unsigned(to_integer(unsigned(output_volume_size)),16); 

			when POOLER_EXECUTING => 
				writes_remaining <= to_unsigned(to_integer(unsigned(output_volume_size)*unsigned(output_volume_size)),16); 
		

				
			when others => 
				--axi_araddr        <= (others => '0'); 
				--axi_arlen         <= (others => '0');  
				--axi_arvalid	      <= '0';
				--axi_arsize 			<= (others => '0'); 
				inbuff_din        <= (others => '0'); 
				inbuff_wr_en      <= '0'; 
				read_beat_counter <= (others => '0'); 
				write_beat_counter <= (others => '0'); 
				row_counter       <= (others => '0');  
				channel_counter   <= (others => '0'); 
				writes_remaining  <= (others => '0'); 
				more_bursts_needed <= '0'; 
				calculated         <= '0'; 
				input_data_addr_reg <= (others => '0'); 
				output_data_addr_reg <= (others => '0'); 
				pooling_complete <= '0'; 
				toggle <= '0'; 
				channel_complete_counter <= (others => '0'); 
				complete_shift_reg <= (others => '0'); 
				data_valid <= '0'; 
				operating_length <= (others => '0'); 
				
				--axi_wlast <= '0'; 
				--axi_wvalid <= '0'; 
				--axi_awaddr <= (others => '0'); 
				axi_awlen <= (others => '0');  
				--axi_awsize <= (others => '0'); 
				axi_awvalid <= '0'; 
				
				--axi_wdata <= (others => '0');  
				--axi_wstrb <= (others => '0'); 
				
				input_index <= (others => '0'); 
				input_addr_counter <= (others => '0'); 
				stride_counter <= (others => '0'); 
				first_calculated <= '0'; 


			end case; 




		end if; 

	end process; 


end implementation;


	
	
	-- next_state_comb: process(current_state,first_calculated, axi_wvalid, channel_counter, stride, pool_kernel_size,pooling_complete,i_row_complete,start, i_control_reg,output_volume_size,axi_awlen,i_outbuff_dout,operating_length,M_AXI_ARREADY,i_inbuff_full,M_AXI_RLAST,row_counter,input_volume_size,i_channel_complete,M_AXI_AWREADY,i_outbuff_empty,i_outbuff_valid,M_AXI_WREADY,M_AXI_BVALID, more_bursts_needed,channel_complete_counter,data_valid, writes_remaining, calculated,output_data_addr_reg,write_beat_counter,output_volume_channels, stride_counter) is 
	-- begin 
		-- axi_rready <= '0'; 
		-- axi_bready <= '0'; 
		-- outbuff_rd_en <= '0';
		-- --busy <= '1'; 

		-- case current_state is 
		    -- when IDLE => 
				-- --busy <= '0'; 
				-- --axi_awlen <= (others => '0');  
				-- axi_rready <= '1'; 
		    	-- --if (i_control_reg(0) = '1') then 
				-- if (start = '1' and pooling_complete = '0') then
		    		-- next_state <= READ_ADDRESS; 
		    	-- else 
		    		-- next_state <= IDLE; 
		    	-- end if; 


			-- when READ_ADDRESS => 
				-- axi_rready <= '1'; 
				-- --axi_awlen <= (others => '0');  
				-- if(M_AXI_ARREADY = '1') then 
					-- next_state <= READ_DATA_FIRST_ROWS; 
				-- else 
					-- next_state <= READ_ADDRESS; 
				-- end if; 


			-- when READ_DATA_FIRST_ROWS => 
				-- --axi_awlen <= (others => '0');  
				-- if(i_inbuff_full = '0') then 
					-- if(M_AXI_RLAST = '0') then 
						-- axi_rready <= '1'; 
						-- next_state <= READ_DATA_FIRST_ROWS; 
					-- else--if(M_AXI_RLAST = '1') then 
						-- --axi_rready <= '0'; 
						-- --next_state <= FINISH_READ_FIRST; 
					-- --else 
						-- --axi_rready <= '1'; 
						-- --next_state <= READ_DATA_FIRST_ROWS; 
						
						-- if(row_counter < unsigned(pool_kernel_size)-1) then 
							-- next_state <= READ_ADDRESS; 
							-- axi_rready <= '1';
						-- else--if(row_counter >= unsigned(pool_kernel_size)-1)
							-- next_state <= FINISH_READ_FIRST; 
							-- axi_rready <= '0';
						-- end if; 
						
					-- end if; 
				-- else 
					-- next_state <= READ_DATA_FIRST_ROWS; 	
				-- end if; 
				
			-- when FINISH_READ_FIRST => 
			    -- --axi_awlen <= (others => '0');  
			    -- axi_rready <= '1';
				-- if(i_row_complete = '1') then 
					-- next_state <= WRITE_ADDRESS;  
				-- else 
					-- next_state <= FINISH_READ_FIRST; 
				-- end if; 
				
				
            -- when WRITE_ADDRESS => 	
				
				-- if(M_AXI_AWREADY = '1') then 
                    -- next_state <= WRITE_ALL; 
                -- else 
                    -- next_state <= WRITE_ADDRESS; 
                -- end if; 
				
			-- when WRITE_FIRST_BEAT => 
 
				-- if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					-- outbuff_rd_en <= '0'; 
					-- next_state <= WRITE_WAIT_WREADY;
				-- else 
					-- next_state <= WRITE_FIRST_BEAT;
					-- outbuff_rd_en <= '0'; 
				-- end if; 

			
			-- when WRITE_WAIT_WREADY => 
				-- outbuff_rd_en <= '0'; 
				-- if(M_AXI_WREADY = '1') then 
					-- next_state <= WRITE_ALL; 
				-- else
					-- next_state <= WRITE_WAIT_WREADY; 
				-- end if; 
				
			-- when WRITE_ALL => 
				-- if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					-- --if(i_outbuff_empty = '0' and i_outbuff_valid = '1' and M_AXI_WREADY = '1') then
					

					
					-- if(M_AXI_WREADY = '1') then 					
						-- outbuff_rd_en <= '1'; 
					
						-- -- if(write_beat_counter < unsigned(axi_awlen)+1 and more_bursts_needed = '0') then 
							-- -- next_state <= WRITE_ALL;
						-- -- elsif(write_beat_counter < 255 and more_bursts_needed = '1') then 
							-- -- next_state <= WRITE_ALL;
						-- -- else 
							-- -- next_state <= WRITE_RESPONSE;
						-- -- end if; 
						
						
						-- if(write_beat_counter < unsigned(axi_awlen) and more_bursts_needed = '0') then 
							-- next_state <= WRITE_ALL;
						-- elsif(write_beat_counter = unsigned(axi_awlen) and more_bursts_needed = '0') then
							-- next_state <= WRITE_ALL;
						-- elsif(write_beat_counter < 255 and more_bursts_needed = '1') then 
							-- next_state <= WRITE_ALL;	
						-- elsif(write_beat_counter = 255 and more_bursts_needed = '1') then
							-- next_state <= WRITE_ALL;
						-- else
							-- next_state <= WRITE_RESPONSE;
						-- end if; 
						
						
						
					-- else 
					
					
						-- if(write_beat_counter = unsigned(axi_awlen)+1) then 
							-- next_state <= WRITE_RESPONSE;
						-- else 
							-- next_state <= WRITE_ALL;
						-- end if; 

						-- -- if(axi_wvalid = '1') then 
							-- -- outbuff_rd_en <= '1'; 
						-- -- else 
							-- -- outbuff_rd_en <= '0'; 
						 -- -- end if; 
					-- end if;
				-- else 
				
					-- if(write_beat_counter = unsigned(axi_awlen)+1) then 
						-- next_state <= WRITE_RESPONSE;  
					-- else 
						-- next_state <= WRITE_ALL; 
					-- end if; 
				-- end if; 

				
            -- when WRITE_RESPONSE => 
				-- --axi_bready <= '1'; 
				-- if(M_AXI_BVALID = '1') then 
					-- -- if(channel_complete_counter < unsigned(output_volume_channels)) then 
						-- -- next_state <= READ_ADDRESS; 
					-- -- else 
						-- -- next_state <= IDLE; 
					-- -- end if;
					-- axi_bready <= '1'; 
					-- --if(more_bursts_needed = '0') then 
					
						-- if(row_counter < unsigned(output_volume_size)-1) then 
							-- next_state <= READ_ADDRESS_STRIDE; 
						-- else 
							-- if(channel_counter < unsigned(output_volume_channels)-1) then 
								-- next_state <= READ_ADDRESS; 
							-- else 
								-- next_state <= IDLE; 
							-- end if; 
						-- end if; 
					-- --end if; 
					
					-- -- if(more_bursts_needed = '1') then 
						-- -- next_state <= WRITE_ADDRESS; 
					-- -- elsif(more_bursts_needed = '0' and channel_complete_counter < unsigned(output_volume_channels)) then 
						-- -- next_state <= READ_ADDRESS; 
					-- -- elsif(more_bursts_needed = '0' and channel_complete_counter = unsigned(output_volume_channels)) then 
						-- -- next_state <= IDLE; 
					-- -- else 
						-- -- next_state <= WRITE_RESPONSE; 
					-- -- end if;
				-- else 
					-- next_state <= WRITE_RESPONSE; 
				-- end if; 
				
				
				

			-- when READ_ADDRESS_STRIDE => 
				-- --axi_awlen <= (others => '0');  
				-- axi_rready <= '1';
				-- if(M_AXI_ARREADY = '1') then 
					-- next_state <= READ_DATA_STRIDE; 
				-- else 
					-- next_state <= READ_ADDRESS_STRIDE; 
				-- end if; 

			-- when READ_DATA_STRIDE => 
			    -- --axi_awlen <= (others => '0');  
				-- if(i_inbuff_full = '0') then 
					-- if(M_AXI_RLAST = '0') then 
						-- axi_rready <= '1'; 
						-- next_state <= READ_DATA_STRIDE; 
					-- else--if(M_AXI_RLAST = '1') then 
						-- --axi_rready <= '0'; 
						-- --next_state <= FINISH_READ_FIRST; 				
					-- --else 
						-- --axi_rready <= '1'; 
						-- --next_state <= READ_DATA_STRIDE; 
						-- if(stride_counter < unsigned(stride)-1) then 
							-- next_state <= READ_ADDRESS_STRIDE; 
							-- axi_rready <= '1';
						-- else--if(row_counter >= unsigned(pool_kernel_size)-1)
							-- next_state <= FINISH_READ_FIRST; 
							-- axi_rready <= '0';
						-- end if; 
						
					-- end if; 
				-- else 
					-- next_state <= READ_DATA_STRIDE; 
				-- end if; 


			-- when FINISH_STRIDE_READ =>
                -- --axi_awlen <= (others => '0');  			
				-- if(row_counter < unsigned(output_volume_size)-1) then 
					-- next_state <= READ_ADDRESS_STRIDE; 
				-- elsif(row_counter >= unsigned(output_volume_size)-1) then 
					-- next_state <= POOLER_EXECUTING; 
				-- else 
					-- next_state <= FINISH_STRIDE_READ; 
				-- end if; 
				
			
				
			-- when POOLER_EXECUTING => 
				-- --axi_awlen <= (others => '0');  
				-- if(i_channel_complete = '1') then --channel_complete_counter = unsigned(output_volume_channels)) then 
					-- next_state <= WRITE_ADDRESS; 
				-- else 
					-- next_state <= POOLER_EXECUTING; 
				-- end if;


				

				
				
			-- when others => 
				-- next_state <= IDLE; 


				
				
				
		-- end case; 

	-- end process; 




	-- read_process: process(M_AXI_ACLK,M_AXI_ARESETN) is 
	-- begin 
		-- if(M_AXI_ARESETN = '0') then 
			-- axi_araddr        <= (others => '0'); 
			-- axi_arlen         <= (others => '0');  
			-- axi_arvalid	      <= '0';
			-- axi_arsize 			<= (others => '0'); 
			-- inbuff_din        <= (others => '0'); 
			-- inbuff_wr_en      <= '0'; 
			-- read_beat_counter <= (others => '0'); 
			-- write_beat_counter <= (others => '0'); 
			-- row_counter       <= (others => '0');  
			-- channel_counter   <= (others => '0'); 
			-- writes_remaining  <= (others => '0'); 
			-- more_bursts_needed <= '0'; 
			-- calculated         <= '0'; 
			-- input_data_addr_reg <= (others => '0'); 
			-- output_data_addr_reg <= (others => '0'); 
			-- pooling_complete <= '0'; 
			-- toggle <= '0'; 
			-- channel_complete_counter <= (others => '0'); 
			-- complete_shift_reg <= (others => '0'); 
			-- data_valid <= '0'; 
			-- operating_length <= (others => '0'); 
			
			-- axi_wlast <= '0'; 
			-- axi_wvalid <= '0'; 
			-- axi_awaddr <= (others => '0'); 
			-- axi_awlen <= (others => '0');  
			-- axi_awsize <= (others => '0'); 
			-- axi_awvalid <= '0'; 
			
			-- axi_wdata <= (others => '0');  
			-- axi_wstrb <= (others => '0'); 
			
			-- input_index <= (others => '0'); 
			-- input_addr_counter <= (others => '0'); 
			-- stride_counter <= (others => '0'); 
			-- first_calculated <= '0'; 
			-- fsm_state <= (others => '0'); 


		-- elsif(rising_edge(M_AXI_ACLK)) then 

			-- case current_state is 

			-- when IDLE =>
				-- fsm_state <= "0000"; 
				-- axi_araddr        <= (others => '0'); 
				-- axi_arlen         <= (others => '0');  
				-- axi_arvalid	      <= '0';
				-- axi_arsize 			<= (others => '0'); 
				-- inbuff_din        <= (others => '0'); 
				-- inbuff_wr_en      <= '0'; 
				-- read_beat_counter <= (others => '0'); 
				-- write_beat_counter <= (others => '0'); 
				-- row_counter       <= (others => '0');  
				-- channel_counter   <= (others => '0'); 
				-- writes_remaining  <= (others => '0'); 
				-- more_bursts_needed <= '0'; 
				-- calculated         <= '0'; 
				-- toggle <= '0'; 
				-- channel_complete_counter <= (others => '0'); 
				-- complete_shift_reg <= (others => '0'); 
				-- data_valid <= '0'; 
				-- operating_length <= (others => '0'); 
				
				-- axi_wlast <= '0'; 
				-- axi_wvalid <= '0'; 
				-- axi_awaddr <= (others => '0'); 
				-- axi_awlen <= (others => '0');  
				-- axi_awsize <= (others => '0'); 
				-- axi_awvalid <= '0'; 
				
				-- axi_wdata <= (others => '0');  
				-- axi_wstrb <= (others => '0'); 
				
				-- input_index <= (others => '0'); 
				-- input_addr_counter <= (others => '0'); 
				-- stride_counter <= (others => '0'); 

				-- pooling_complete <= '0'; 
				-- if(i_slv_reg_wren(2) = '1' ) then 
					-- input_data_addr_reg <= i_input_data_addr_reg; 
				-- else 
					-- input_data_addr_reg <= input_data_addr_reg; 
				-- end if; 


				-- if(i_slv_reg_wren(3) = '1') then 
					-- output_data_addr_reg <= i_output_data_addr_reg; 
				-- else 
					-- output_data_addr_reg <= output_data_addr_reg; 
				-- end if; 

			-- when READ_ADDRESS => 
				-- fsm_state <= "0001"; 
				-- axi_araddr <= std_logic_vector(unsigned(input_data_addr_reg) + input_addr_counter); 
				-- --axi_arlen <= std_logic_vector(to_unsigned(to_integer(unsigned(input_volume_size)*unsigned(pool_kernel_size))-1,8)); 
				-- axi_arlen <= std_logic_vector(unsigned(addr1_multiple)-1); 
				
				-- axi_arvalid	<= '1';
				-- axi_arsize <= "010"; 
				
				-- inbuff_din <= (others => '0'); 
				-- inbuff_wr_en <= '0'; 





			-- when READ_DATA_FIRST_ROWS => 
				-- fsm_state <= "0010"; 
				-- axi_arvalid	<= '0';
				-- if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					
					-- if(M_AXI_RVALID = '1') then 
						
						-- input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						
						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000";
							-- toggle <= not(toggle); 
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000"; 
							-- toggle <= not(toggle);
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1'; 
						-- read_beat_counter <= read_beat_counter + 1; 
						
					-- else 
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
						-- read_beat_counter <= read_beat_counter; 
						-- input_addr_counter <= input_addr_counter; 
					-- end if; 

				-- else 
					
					-- if(M_AXI_RLAST = '1') then 

						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
							-- toggle <= not(toggle); 
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000"; 
							-- toggle <= not(toggle);
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1'; 
						-- read_beat_counter <= (others => '0'); 
						-- --row_counter <= row_counter + unsigned(pool_kernel_size); 
						
						-- --input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						-- --input_index <= unsigned(input_data_addr_reg); 
						
						-- if(row_counter < unsigned(pool_kernel_size)-1) then 
							-- row_counter <= row_counter + 1; 
							-- --input_addr_counter <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- --input_index <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						-- else--if(row_counter >= unsigned(pool_kernel_size)-1)
							-- --input_addr_counter <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- --input_index <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- row_counter <= (others => '0'); 
						-- end if; 
					-- else 
						-- read_beat_counter <= read_beat_counter; 
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
					-- end if;
					
				-- end if; 
				
			-- when FINISH_READ_FIRST => 
				-- fsm_state <= "0011"; 
				-- inbuff_din <= (others => '0'); 
				-- inbuff_wr_en <= '0';  
				-- writes_remaining <= to_unsigned(to_integer(unsigned(output_volume_size)-1),16); 
				 

				
			-- when WRITE_ADDRESS => 
				-- fsm_state <= "0100"; 
				-- axi_awaddr <= std_logic_vector(unsigned(output_data_addr_reg));
                -- axi_awsize <= "010";
                -- axi_awvalid <= '1'; 
				-- channel_complete_counter <= (others => '0'); 
				-- complete_shift_reg <= "00"; 

				-- if(writes_remaining > 255 and calculated = '0') then 
					-- writes_remaining <= writes_remaining - 256; 
					-- more_bursts_needed <= '1'; 
					-- axi_awlen <= x"FF"; 
				-- elsif(writes_remaining <= 255 and calculated = '0') then 
					-- more_bursts_needed <= '0'; 
					-- writes_remaining <= (others => '0'); 
					-- axi_awlen <= std_logic_vector(writes_remaining(7 downto 0));  
				-- else 
					-- more_bursts_needed <= more_bursts_needed; 
					-- axi_awlen <= axi_awlen;
				-- end if;

				-- calculated <= '1';
				-- --if(calculated = '0') then 
					-- operating_length <= '0' & unsigned(axi_awlen); 
				-- --end if;		
			
			-- when WRITE_FIRST_BEAT => 
				-- fsm_state <= "0101"; 
				-- axi_awvalid <= '0';
				-- calculated <= '0'; 
				-- axi_wvalid <= '1'; 
				-- if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					-- if(output_data_addr_reg(1) = '0' and g_bytes_per_data = 2) then 
						-- axi_wdata <= x"0000" & i_outbuff_dout; 
						-- axi_wstrb <= "0011";
					-- elsif(output_data_addr_reg(1) = '1' and g_bytes_per_data = 2) then 
						-- axi_wdata <= i_outbuff_dout & x"0000"; 
						-- axi_wstrb <= "1100";
					-- elsif(g_bytes_per_data = 4) then 
						-- axi_wdata <= i_outbuff_dout; 
						-- axi_wstrb <= "1111";
					-- else 
						-- axi_wdata <= (others => '0'); 
						-- axi_wstrb <= "0000";
					-- end if; 
					
					-- output_data_addr_reg <= std_logic_vector(unsigned(output_data_addr_reg) + g_bytes_per_data);
					-- write_beat_counter <= write_beat_counter + 1; 		
				-- else 
					-- axi_wdata <= (others => '0'); 
					-- --axi_wvalid <= '0'; 
					-- axi_wstrb <= "0000"; 
					-- --axi_wlast <= '0'; 
				-- end if; 
				
			
			-- when WRITE_WAIT_WREADY => 
				-- fsm_state <= "0110"; 
				-- axi_wdata <= (others => '0'); 
				-- axi_wvalid <= '0'; 
				-- axi_wstrb <= "0000"; 
				
				
			-- when WRITE_ALL =>
				-- fsm_state <= "0111"; 
				-- axi_awvalid <= '0';
				-- calculated <= '0'; 
				-- --axi_wvalid <= '1'; 
				-- if(i_outbuff_empty = '0' and i_outbuff_valid = '1') then 
					-- axi_wvalid <= '1'; 
					-- if(M_AXI_WREADY = '1') then 
					-- --if(i_outbuff_empty = '0' and i_outbuff_valid = '1' and M_AXI_WREADY = '1') then 
						-- axi_wvalid <= '1'; 
						
						-- if(output_data_addr_reg(1) = '0' and g_bytes_per_data = 2) then 
							-- axi_wdata <= x"0000" & i_outbuff_dout; 
							-- axi_wstrb <= "0011";
						-- elsif(output_data_addr_reg(1) = '1' and g_bytes_per_data = 2) then 
							-- axi_wdata <= i_outbuff_dout & x"0000"; 
							-- axi_wstrb <= "1100";
						-- elsif(g_bytes_per_data = 4) then 
							-- axi_wdata <= i_outbuff_dout; 
							-- axi_wstrb <= "1111";
						-- else 
							-- axi_wdata <= (others => '0'); 
							-- axi_wstrb <= "0000";
						-- end if; 
						
						-- output_data_addr_reg <= std_logic_vector(unsigned(output_data_addr_reg) + g_bytes_per_data);
									
						-- if(write_beat_counter < unsigned(axi_awlen)) then 
							-- write_beat_counter <= write_beat_counter + 1;  
							-- axi_wlast <= '0'; 	
						-- elsif(write_beat_counter = unsigned(axi_awlen)) then 
							-- axi_wlast <= '1'; 
							-- write_beat_counter <= write_beat_counter + 1; 
						-- else
							-- axi_wlast <= '0'; 
							-- write_beat_counter <= (others => '0');
							-- channel_complete_counter <= channel_complete_counter + 1; 
						-- end if; 
						
					-- else 
						-- if(write_beat_counter = unsigned(axi_awlen)+1) then 
							-- write_beat_counter <= (others => '0'); 
							-- axi_wlast <= '0'; 
						-- end if; 
					
						-- -- if(first_calculated = '0' and axi_wvalid = '1') then 
							-- -- axi_wvalid <= '1';
							-- -- first_calculated <= '1';
						-- -- else 
							-- -- axi_wvalid <= '0'; 
						-- -- end if; 
						-- -- if(axi_wvalid = '1') then 
							-- -- write_beat_counter <= write_beat_counter + 1; 
							-- -- output_data_addr_reg <= std_logic_vector(unsigned(output_data_addr_reg) + g_bytes_per_data);
						-- -- end if; 
						
						-- if(output_data_addr_reg(1) = '0' and g_bytes_per_data = 2) then 
							-- axi_wdata <= x"0000" & i_outbuff_dout; 
							-- axi_wstrb <= "0011";
						-- elsif(output_data_addr_reg(1) = '1' and g_bytes_per_data = 2) then 
							-- axi_wdata <= i_outbuff_dout & x"0000"; 
							-- axi_wstrb <= "1100";
						-- elsif(g_bytes_per_data = 4) then 
							-- axi_wdata <= i_outbuff_dout; 
							-- axi_wstrb <= "1111";
						-- else 
							-- axi_wdata <= (others => '0'); 
							-- axi_wstrb <= "0000";
						-- end if;
						
					
						-- --axi_wdata <= (others => '0'); 
						-- --axi_wvalid <= '0'; 
						-- --axi_wstrb <= "0000"; 
						-- --axi_wlast <= '0'; 
					-- end if; 
				-- else 
					-- if(write_beat_counter = unsigned(axi_awlen)+1) then 
						-- write_beat_counter <= (others => '0'); 
						-- axi_wlast <= '0'; 
					-- end if; 
			
					-- axi_wdata <= (others => '0'); 
					-- axi_wvalid <= '0'; 
					-- axi_wstrb <= "0000";
				-- end if; 
				
				
			-- when WRITE_RESPONSE =>
				-- fsm_state <= "1000"; 
				-- write_beat_counter <= (others => '0'); 			
				-- axi_wdata <= (others => '0'); 
				-- axi_wvalid <= '0'; 
				-- axi_wstrb <= "0000"; 
				-- axi_wlast <= '0'; 
				-- first_calculated <= '0'; 
				-- if(M_AXI_BVALID = '1') then 
				
					-- --if(more_bursts_needed = '0') then 
					
						-- --if(row_counter < unsigned(output_volume_size)) then 
							-- --row_counter <= row_counter + 1; 
						-- if(row_counter >= unsigned(output_volume_size)-1) then --else 
							-- row_counter <= (others => '0'); 
							-- if(channel_counter < unsigned(output_volume_channels)-1) then 
								-- channel_counter <= channel_counter + 1; 
								-- --index_counter <= unsigned(input_volume_size)*unsigned(input_volume_size)*(channel_counter+1); 
								-- --input_addr_counter <= unsigned(input_volume_size)*unsigned(input_volume_size)*(channel_counter+1); 
								-- input_addr_counter <= input_addr_counter + g_bytes_per_data; 
							-- else
								-- channel_counter <= (others => '0'); 
								-- pooling_complete <= '1'; 
							-- end if; 
						-- end if; 
					-- --end if; 
					
					-- -- if(more_bursts_needed = '1') then 
						-- -- pooling_complete <= '0'; 
					-- -- elsif(more_bursts_needed = '0' and channel_complete_counter < unsigned(output_volume_channels)) then 
						-- -- pooling_complete <= '0';
					-- -- elsif(more_bursts_needed = '0' and channel_complete_counter = unsigned(output_volume_channels)) then 
						-- -- pooling_complete <= '1';
					-- -- end if;
				-- else 
					-- pooling_complete <= '0';
				-- end if; 
				
				

			-- when READ_ADDRESS_STRIDE => 
				-- fsm_state <= "1001"; 
				-- axi_araddr <= std_logic_vector(unsigned(input_data_addr_reg) + input_addr_counter);  
				-- --axi_arlen <= std_logic_vector(to_unsigned(to_integer(unsigned(input_volume_size)*unsigned(stride))-1,8)); 
				-- axi_arlen <= std_logic_vector(unsigned(addr1_multiple)-1); 
				-- axi_arvalid	<= '1';
				-- axi_arsize <= "010"; 
				
				-- inbuff_din <= (others => '0'); 
				-- inbuff_wr_en <= '0'; 



			-- when READ_DATA_STRIDE => 
				-- fsm_state <= "1010"; 
			    -- axi_arvalid	<= '0';
				-- if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					
					-- if(M_AXI_RVALID = '1') then 
						-- input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						
						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0); 
							-- toggle <= not(toggle); 
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16); 
							-- toggle <= not(toggle);
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1'; 
						-- read_beat_counter <= read_beat_counter + 1; 
						
					-- else 
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
						-- read_beat_counter <= read_beat_counter; 
						-- input_addr_counter <= input_addr_counter; 
					-- end if;
					
				-- else
					-- if(M_AXI_RLAST = '1') then 
						-- input_addr_counter <= input_addr_counter + g_bytes_per_data; 
						
						-- if(input_addr_counter(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(15 downto 0); 
							-- toggle <= not(toggle); 
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(input_addr_counter(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							-- inbuff_din <= M_AXI_RDATA(31 downto 16); 
							-- toggle <= not(toggle);
							-- --input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
						-- elsif(g_bytes_per_data = 4) then 
							-- inbuff_din <= M_AXI_RDATA; 
						-- end if; 
						-- inbuff_wr_en <= '1';
						-- read_beat_counter <= (others => '0'); 
						-- --row_counter <= row_counter + unsigned(stride); 
						
						-- if(stride_counter < unsigned(stride)-1) then 
							-- row_counter <= row_counter + 1; 
							-- stride_counter <= stride_counter + 1; 
							-- --input_addr_counter <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- --input_index <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						-- else--if(row_counter >= unsigned(pool_kernel_size)-1)
							-- stride_counter <= (others => '0'); 
							-- --input_addr_counter <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- --input_index <= input_index + unsigned(input_volume_size) + unsigned(input_volume_size) + unsigned(input_volume_size)	+ unsigned(input_volume_size); 
							-- input_addr_counter <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
							-- input_index <= input_index + unsigned(input_volume_size(5 downto 0)&"00");  
						-- end if; 
					-- else
						-- read_beat_counter <= read_beat_counter; 					
						-- inbuff_din <= (others => '0'); 
						-- inbuff_wr_en <= '0'; 
					-- end if;
					

				-- end if; 
			

			-- when FINISH_STRIDE_READ => 
				-- fsm_state <= "1011"; 
				-- inbuff_din <= (others => '0'); 
				-- inbuff_wr_en <= '0';  
				-- writes_remaining <= to_unsigned(to_integer(unsigned(output_volume_size)),16); 
		

				

			-- when POOLER_EXECUTING => 
				-- fsm_state <= "1100"; 
				-- writes_remaining <= to_unsigned(to_integer(unsigned(output_volume_size)*unsigned(output_volume_size)),16); 
		

				
			-- when others => 
				-- fsm_state <= "1101"; 
				-- axi_araddr        <= (others => '0'); 
				-- axi_arlen         <= (others => '0');  
				-- axi_arvalid	      <= '0';
				-- inbuff_din        <= (others => '0'); 
				-- inbuff_wr_en      <= '0'; 
				-- read_beat_counter <= (others => '0'); 
				-- row_counter       <= (others => '0');  
				-- channel_counter   <= (others => '0'); 
				-- writes_remaining  <= (others => '0'); 
				-- more_bursts_needed <= '0'; 
				-- calculated         <= '0'; 
				-- pooling_complete   <= '0';
				-- toggle <= '0'; 
				-- channel_complete_counter <= (others => '0'); 
				-- complete_shift_reg <= (others => '0'); 
				-- data_valid <= '0'; 
					

			-- end case; 




		-- end if; 

	-- end process; 


-- end implementation;



