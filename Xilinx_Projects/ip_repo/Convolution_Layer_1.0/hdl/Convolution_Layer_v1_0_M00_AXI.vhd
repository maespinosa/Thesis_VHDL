library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Convolution_Layer_v1_0_M00_AXI is
	generic (
		-- Users to add parameters here
        g_data_width : integer := 16; 
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
		
	   --TO CONVOLVER
	    o_start                    : out std_logic; 
	    o_output_volume_size       : out std_logic_vector(7 downto 0); 
	    o_input_volume_channels    : out std_logic_vector(11 downto 0): 
	    o_input_volume_size        : out std_logic_vector(7 downto 0); 
	    o_number_of_filters        : out std_logic_vector(11 downto 0); 
	    o_weight_filter_channels   : out std_logic_vector(11 downto 0); 
	    o_weight_filter_size       : out std_logic_vector(3 downto 0); 
	    o_pad                      : out std_logic_vector(3 downto 0); 
	    o_stride                   : out std_logic_vector(3 downto 0); 
	   
	   -- TO NORMALIZER
	    o_beta                  : out std_logic_vector(g_data_width-1 downto 0); 
	    o_epsilon               : out std_logic_vector(g_data_width-1 downto 0);
	    o_fresh_params          : out std_logic; 
	    o_gamma                 : out std_logic_vector(g_data_width-1 downto 0),
	    o_mean                  : out std_logic_vector(g_data_width-1 downto 0),
	    o_variance              : out std_logic_vector(g_data_width-1 downto 0),
	   
	   --TO RELU UNIT
	    o_relu_en 				: out std_logic; 
	   
	   --FROM LOGIC
	    i_inbuff_empty             : in STD_LOGIC;
	    i_inbuff_almost_empty      : in STD_LOGIC;
	    i_inbuff_prog_empty        : in STD_LOGIC;
	    i_inbuff_prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
	    i_inbuff_full              : in STD_LOGIC;
	    i_inbuff_almost_full       : in STD_LOGIC;
	    i_inbuff_prog_full         : in STD_LOGIC;
	    i_inbuff_prog_full_thresh  : in STD_LOGIC_VECTOR(9 downto 0);
	    i_inbuff_valid             : in STD_LOGIC; 
	   
	   
	    i_outbuff_empty             : in STD_LOGIC;
	    i_outbuff_almost_empty      : in STD_LOGIC;
	    i_outbuff_prog_empty        : in STD_LOGIC;
	    i_outbuff_prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
	    i_outbuff_full              : in STD_LOGIC;
	    i_outbuff_almost_full       : in STD_LOGIC;
	    i_outbuff_prog_full         : in STD_LOGIC;
	    i_outbuff_prog_full_thresh  : in STD_LOGIC_VECTOR(9 downto 0);
	    i_outbuff_valid             : in STD_LOGIC; 
		
		i_weights_loaded         : in std_logic; 
		i_conv_complete          : in std_logic; 
		i_more_dsps              : in std_logic; 
		i_iteration_complete     : in std_logic;
		i_operation_complete     : in std_logic; 
        i_channels_allowed        :in std_logic_vector(7 downto 0); 
        i_dsps_used              : in std_logic_vector(7 downto 0); 		
		
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
		
	    i_slv_reg_rden			 : in std_logic; 
	    i_slv_reg_wren			 : in std_logic_vector(15 downto 0); 
		
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
		
		--TO LOGIC 
	    o_inbuff_din			    : out std_logic_vector(g_data_width-1 downto 0); 
	    o_inbuff_wr_en 				: out std_logic; 
	    o_outbuff_rd_en				: out std_logic; 
		
		

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Initiate AXI transactions
		INIT_AXI_TXN	: in std_logic;
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
		M_AXI_BUSER	: in std_logic_vector(C_M_AXI_BUSER_WIDTH-1 downto 0);
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
		M_AXI_RUSER	: in std_logic_vector(C_M_AXI_RUSER_WIDTH-1 downto 0);
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

    type master_state is (IDLE, READ_ADDRESS_WEIGHTS, READ_DATA_WEIGHTS, READ_ADDRESS_VOLUME, READ_DATA_VOLUME, WRITE_ADDRESS, WRITE_ALL, WRITE_RESPONSE)

    signal current_state : master_state; 
    signal next_state : master_state; 


	-- AXI4FULL signals
	--AXI4 internal temp signals
	signal axi_awaddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awvalid	: std_logic;
	signal axi_wdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	signal axi_wlast	: std_logic;
	signal axi_wvalid	: std_logic;
	signal axi_wstrb    : std_logic_vector(3 downto 0); 
	signal axi_bready	: std_logic;
	signal axi_araddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arlen    : std_logic_vector(2 downto 0); 
	signal axi_arvalid	: std_logic;
	signal axi_rready	: std_logic;
	--write beat count in a burst
	signal write_beat_counter : unsigned(7 downto 0); 
	--read beat count in a burst
	signal read_beat_counter	: unsigned(7 downto 0);


	--size of C_M_AXI_BURST_LEN length burst in bytes
	signal burst_size_bytes	: std_logic_vector(C_TRANSACTIONS_NUM+2 downto 0);
	--The burst counters are used to track the number of burst transfers of C_M_AXI_BURST_LEN burst length needed to transfer 2^C_MASTER_LENGTH bytes of data.
	signal write_burst_counter	: std_logic_vector(C_NO_BURSTS_REQ downto 0);
	signal read_burst_counter	: std_logic_vector(C_NO_BURSTS_REQ downto 0);
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

	signal input_data_addr_reg    : std_logic_vector(g_axi_data_width-1 downto 0); 
	signal output_data_addr_reg   : std_logic_vector(g_axi_data_width-1 downto 0); 
	signal weights_addr_reg       : std_logic_vector(g_axi_data_width-1 downto 0); 

	signal row_counter			  : unsigned(7 downto 0); 
	signal out_volume_row_counter : unsigned(7 downto 0); 
	signal channel_counter	      : unsigned(15 downto 0); 
	signal writes_remaining 	  : unsigned(15 downto 0);
	signal reads_remaining		  : unsigned(15 downto 0);  
	signal calculated 			  : std_logic; 
	
	


	signal input_volume_height       : std_logic_vector(7 downto 0); 
	signal input_volume_width        : std_logic_vector(7 downto 0); 
	signal input_volume_channels     : std_logic_vector(11 downto 0); 

    signal output_volume_height      : std_logic_vector(7 downto 0); 
    signal output_volume_width		 : std_logic_vector(7 downto 0); 
    signal output_volume_channels    : std_logic_vector(11 downto 0); 

    signal weight_filter_height      : std_logic_vector(3 downto 0); 
    signal weight_filter_width       : std_logic_vector(3 downto 0); 
    signal weight_filter_channels    : std_logic_vector(11 downto 0); 
    signal number_of_filters         : std_logic_vector(11 downto 0); 

	signal stride 					 : std_logic_vector(3 downto 0); 
	signal pad                       : std_logic_vector(3 downto 0); 

    signal beta                      : std_logic_vector(g_axi_data_width-1 downto 0); 
    signal epsilon                   : std_logic_vector(g_axi_data_width-1 downto 0);  
    signal fresh_params              : std_logic_vector(g_axi_data_width-1 downto 0);  
    signal gamma                     : std_logic_vector(g_axi_data_width-1 downto 0);  
    signal mean                      : std_logic_vector(g_axi_data_width-1 downto 0); 
    signal variance                  : std_logic_vector(g_axi_data_width-1 downto 0);  
   
    signal relu_en                   : std_logic_vector(g_axi_data_width-1 downto 0);      
begin
	-- I/O Connections assignments

	--I/O Connections. Write Address (AW)
	M_AXI_AWID	<= (others => '0');
	--The AXI address is a concatenation of the target base address + active offset range
	M_AXI_AWADDR	<= axi_awaddr; --std_logic_vector( unsigned(C_M_TARGET_SLAVE_BASE_ADDR) + unsigned(axi_awaddr) );
	M_AXI_AWLEN 	<= axi_awlen; --std_logic_vector( to_unsigned(C_M_AXI_BURST_LEN - 1, 8) );
	M_AXI_AWSIZE	<= "001";
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
	M_AXI_ARSIZE	<= "001";
	M_AXI_ARBURST	<= "01";
	M_AXI_ARLOCK	<= '0';
    M_AXI_ARCACHE	<= "0010";
	M_AXI_ARPROT	<= "000";
	M_AXI_ARQOS	    <= x"0";
	M_AXI_ARUSER	<= (others => '1');
	M_AXI_ARVALID	<= axi_arvalid;
	M_AXI_RREADY	<= axi_rready;

	o_control_reg            <= i_control_reg;

	o_status_reg(0)          <= i_busy; 
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
	o_status_reg(31 downto 24) <= i_iteration_count; 

	o_input_data_addr_reg      <= input_data_addr_reg; 
	o_output_data_addr_reg     <= output_data_addr_reg;
	o_weights_addr_reg		   <= weights_addr_reg;  
	o_input_volume_params_reg  <= i_input_volume_params_reg; 
	o_output_volume_params_reg <= i_output_volume_params_reg; 
	
    o_input_volume_params_reg  <= i_input_volume_params_reg; 
	input_volume_height        <= i_input_volume_params_reg(31 downto 24);
	input_volume_width         <= i_input_volume_params_reg(23 downto 16); 
	input_volume_channels      <= i_input_volume_params_reg(11 downto 0); 
	
    o_output_volume_params_reg <= i_output_volume_params_reg; 
    output_volume_height       <= i_output_volume_params_reg(31 downto 24); 
    output_volume_width		   <= i_output_volume_params_reg(23 downto 16); 
    output_volume_channels     <= i_output_volume_params_reg(11 downto 0); 

    o_weight_params_reg        <= i_weight_params_reg; 	
    weight_filter_height       <= i_weight_params_reg(31 downto 28); 
    weight_filter_width        <= i_weight_params_reg(27 downto 24); 
    weight_filter_channels     <= i_weight_params_reg(23 downto 12); 
    number_of_filters          <= i_weight_params_reg(11 downto 0); 

	o_conv_params_reg          <= i_conv_params_reg; 
	number_of_dsps             <= i_conv_params_reg(15 downto 8); 
	stride 					   <= i_conv_params_reg(7 downto 4); 
	pad                        <= i_conv_params_reg(3 downto 0);  
    
	o_norm_params_0_reg        <= i_norm_params_0_reg; 
	o_norm_params_1_reg        <= i_norm_params_1_reg; 
	beta 					   <= i_norm_params_0_reg(7 downto 0); 
    epsilon 				   <= i_norm_params_0_reg(15 downto 8); 
	gamma     			       <= i_norm_params_0_reg(23 downto 16); 
	mean     			       <= i_norm_params_0_reg(31 downto 24); 
	variance                   <= i_norm_params_1_reg(7 downto 0); 
	fresh_params               <= i_norm_params_1_reg(8); 
	


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
   
    o_relu_en 				   <= relu_en; 

	
	
	state_transition: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		else 
			current_state <= next_state; 
		end if; 
	end process; 


	next_state_comb: process(all) is 
	begin 
		axi_rready <= '0'; 
		axi_bready <= '0'; 

		case current_state is 
		    when IDLE => 
		    	if (i_control_reg(0) = '1') then 
		    		next_state <= READ_ADDRESS_WEIGHTS; 
		    	else 
		    		next_state <= IDLE; 
		    	end if; 


			when READ_ADDRESS_WEIGHTS => 
				if(M_AXI_ARREADY = '1') then 
					next_state <= READ_ADDRESS_WEIGHTS; 
				else 
					next_state <= READ_DATA_WEIGHTS; 
				end if; 

			when READ_DATA_WEIGHTS => 
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					axi_rready <= '1'; 
					next_state <= READ_DATA_WEIGHTS; 
				else 
					next_state <= READ_DATA_WEIGHTS; 
					axi_rready <= '0'; 
					if(M_AXI_RLAST = '1' and more_bursts_needed = '0') then 
						next_state <= LOADING_WEIGHTS; 
					elsif(M_AXI_RLAST = '1' and more_bursts_needed = '1') then 
					    next_state <= READ_ADDRESS_WEIGHTS; 
					end if; 

				end if; 

			when LOADING_WEIGHTS => 
				if(i_weights_loaded = '1') then 
					next_state <= READ_ADDRESS_INPUT_VOLUME; 
				else 
					next_state <= LOADING_WEIGHTS; 
				end if;

			when READ_ADDRESS_INPUT_VOLUME => 
				if(M_AXI_ARREADY = '1') then 
					next_state <= READ_ADDRESS_INPUT_VOLUME; 
				else 
					next_state <= READ_DATA_INPUT_VOLUME; 
				end if; 

			when READ_DATA_INPUT_VOLUME => 
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					axi_rready <= '1'; 
					next_state <= READ_DATA_INPUT_VOLUME; 
				else 
					next_state <= READ_DATA_INPUT_VOLUME; 
					axi_rready <= '0'; 
					if(M_AXI_RLAST = '1' and more_bursts_needed = '0') then 
						if(channel_counter = unsigned(i_channels_allowed)) then 
							next_state <= PROCESSING_DATA;
						else 
							next_state <= READ_ADDRESS_INPUT_VOLUME; 
					    end if; 
					elsif(M_AXI_RLAST = '1' and more_bursts_needed = '1') then 
					    next_state <= READ_ADDRESS_INPUT_VOLUME; 
					end if; 

				end if; 

			when PROCESSING_DATA => 
				if(i_operation_complete = '1') then 
					next_state <= WRITE_ADDRESS; 
				else 
					next_state <= PROCESSING_DATA; 
				end if;
				
			when READ_ADDRESS_STRIDE => 
				if(M_AXI_ARREADY = '1') then 
					next_state <= READ_ADDRESS_STRIDE; 
				else 
					next_state <= READ_DATA_STRIDE; 
				end if; 

			when READ_DATA_STRIDE => 
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					axi_rready <= '1'; 
					next_state <= READ_DATA_STRIDE; 
				else 
					next_state <= READ_DATA_STRIDE; 
					axi_rready <= '0'; 
					if(M_AXI_RLAST = '1' and more_bursts_needed = '0') then 
						if(channel_counter = unsigned(i_channels_allowed)) then 
							next_state <= PROCESSING_DATA;
						else 
							next_state <= READ_ADDRESS_STRIDE; 
					    end if; 
					elsif(M_AXI_RLAST = '1' and more_bursts_needed = '1') then 
					    next_state <= READ_ADDRESS_STRIDE; 
					end if; 

				end if; 
				

			when STRIDE_RETURN => 
				--row_counter <= row_counter + 1; 
				if(channel_counter < channels_allowed) then 
					next_state <= READ_ADDRESS_STRIDE; 
				else 
				
					if(stride_counter < unsigned(stride) and i_operation_complete = '1') then 
						next_state <= READ_ADDRESS_STRIDE; 
					elsif(stride_counter = unsigned(stride) and row_counter <= unsigned(input_volume_height) and i_operation_complete = '1')
						next_address <= WRITE_ADDRESS; 
					end if; 

				end if; 





				
				

			when WRITE_ADDRESS => 
				if(M_AXI_AWREADY = '1') then 
					next_state <= WRITE_ALL; --READ_ADDRESS; 
				else 
					next_state <= WRITE_ADDRESS; --READ_DATA_FIRST_ROWS; 
				end if;


			when WRITE_OUTPUT => 
 
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1' and M_AXI_WREADY = '1') then 
					if(write_beat_counter < 255) then 
						next_state <= WRITE_ALL: 						
					else 
						next_state <= WRITE_RESPONSE; 
					end if; 
				else 
					next_state <= WRITE_ALL; 
				end if; 


			when WRITE_RESPONSE => 
				axi_bready <= '1'; 

				if(M_AXI_BVALID = '1') then 
					if(more_bursts_needed = '1') then 
						next_state <= WRITE_ADDRESS;
					else 
						next_state <= IDLE; 
					end if; 
				end if; 

			when others => 
				next_state <= IDLE; 


		end case; 

	end process; 




	read_process: process(i_clk_i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			axi_araddr        <= (others => '0'); 
			axi_arlen         <= (others => '0');  
			axi_arvalid	      <= '0';
			inbuff_din        <= (others => '0'); 
			inbuff_wr_en      <= '0'; 
			read_beat_counter <= (others => '0'); 
			writes_remaining  <= (others => '0'); 
			reads_remaining   <= (others => '0'); 
			axi_awaddr         <= (others => '0'); 
			axi_awlen          <= (others => '0'); 
			more_bursts_needed <= '0'; 
			calculated         <= '0'; 
			axi_awvalid        <= '0'; 
			axi_wstrb          <= (others => '0'); 
			input_data_addr_reg <= (others => '0'); 
			output_data_addr_reg <= (others => '0'); 
			weights_addr_reg   <= (others => '0'); 
			row_counter        <= (others => '0'); 
			out_volume_row_counter <= (others => '0'); 

		elsif(rising_edge(i_clk)) then 

			axi_araddr         <= axi_araddr; 
			axi_arlen          <= axi_arlen; 
			axi_arvalid	       <= axi_arvalid;
			inbuff_din         <= inbuff_din; 
			inbuff_wr_en       <= inbuff_wr_en; 
			read_beat_counter  <= read_beat_counter; 
			writes_remaining   <= writes_remaining;
			reads_remaining    <= reads_remaining;  
			axi_awaddr         <= axi_awaddr;
			axi_awlen          <= axi_awlen; 
			more_bursts_needed <= more_bursts_needed; 
			calculated         <= calculated;  
			axi_awvalid        <= axi_awvalid; 
			axi_wstrb          <= axi_wstrb; 
			input_data_addr_reg <= input_data_addr_reg; 
			output_data_addr_reg <= output_data_addr_reg; 
            weights_addr_reg <= weights_addr_reg; 
			row_counter      <= row_counter; 
			out_volume_row_counter <= out_volume_row_counter; 

			case current_state is 

			when IDLE => 
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

				if(i_slv_reg_wren(4) = '1') then 
					weights_addr_reg <= i_weights_addr_reg; 
				else 
					weights_addr_reg <= weights_addr_reg; 
				end if; 

				

			when READ_ADDRESS_WEIGHTS => 
				axi_araddr <= weights_addr_reg; 
				axi_arvalid	<= '1';
				calculated <= '1'; 


				if(reads_remaining > 255 and calculated = '0') then 
					axi_awlen <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_awlen <= std_logic_vector(unsigned(weight_filter_width)*unsigned(number_of_filters)*unsigned(i_channels_allowed)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_awlen <= axi_awlen; 
					more_bursts_needed <= more_bursts_needed; 
				end if;



			when READ_DATA_WEIGHTS => 
				calculated <= '0'; 
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					if(M_AXI_RVALID = '1') then 
						inbuff_din <= M_AXI_RDATA; 
						inbuff_wr_en <= '1'; 
						read_beat_counter <= read_beat_counter + 1; 
						weights_addr_reg <= weights_addr_reg + 2; 
					else 
						inbuff_din <= (others => '0'); 
						inbuff_wr_en <= '0'; 
						read_beat_counter <= read_beat_counter; 
						weights_addr_reg <= weights_addr_reg; 
					end if; 
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					
					if (M_AXI_RLAST = '1') then 
						read_beat_counter <= (others => '0'); 
					else 
						read_beat_counter <= read_beat_counter; 
					end if; 

				end if; 

			when LOADING_WEIGTHS => 
				more_bursts_needed <= '0'; 
				reads_remaining <= (others => '0'); 

				
			when READ_ADDRESS_INPUT_VOLUME => 
				axi_araddr <= input_data_addr_reg; 
				axi_arvalid	<= '1';
				calculated <= '1'; 


				if(reads_remaining > 255 and calculated = '0') then 
					axi_awlen <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_awlen <= std_logic_vector(unsigned(input_volume_width)*unsigned(weight_filter_height)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_awlen <= axi_awlen; 
					more_bursts_needed <= more_bursts_needed; 
				end if;



			when READ_DATA_INPUT_VOLUME => 
				calculated <= '0'; 
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					if(M_AXI_RVALID = '1') then 
						inbuff_din <= M_AXI_RDATA; 
						inbuff_wr_en <= '1'; 
						read_beat_counter <= read_beat_counter + 1; 
						input_data_addr_reg <= input_data_addr_reg + 2; 
					else 
						inbuff_din <= (others => '0'); 
						inbuff_wr_en <= '0'; 
						read_beat_counter <= read_beat_counter; 
						input_data_addr_reg <= input_data_addr_reg; 
					end if; 
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					
					if (M_AXI_RLAST = '1') then 
						read_beat_counter <= (others => '0'); 
						input_data_addr_reg <= unsigned(input_volume_height)*unsigned(input_volume_width)*(channel_counter + 1) 
						channel_counter <= channel_counter + 1; 
					else 
						read_beat_counter <= read_beat_counter; 
					end if; 

				end if; 
				
				
			when PROCESSING_DATA => 
				input_data_addr_reg <= unsigned(input_volume_width)*unsigned(weight_filter_height); 
                row_counter <= row_counter + unsigned(weight_filter_height); 	
                channel_counter <= (others => '0'); 	
                out_volume_row_counter <= out_volume_row_counter + 1; 				
				
			when READ_ADDRESS_STRIDE => 
				axi_araddr <= input_data_addr_reg; 
				axi_arvalid	<= '1';
				calculated <= '1'; 


				if(reads_remaining > 255 and calculated = '0') then 
					axi_awlen <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
					axi_awlen <= std_logic_vector(unsigned(input_volume_width)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_awlen <= axi_awlen; 
					more_bursts_needed <= more_bursts_needed; 
				end if;



			when READ_DATA_STRIDE => 
				calculated <= '0'; 
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					if(M_AXI_RVALID = '1') then 
						inbuff_din <= M_AXI_RDATA; 
						inbuff_wr_en <= '1'; 
						read_beat_counter <= read_beat_counter + 1; 
						input_data_addr_reg <= input_data_addr_reg + 2; 
					else 
						inbuff_din <= (others => '0'); 
						inbuff_wr_en <= '0'; 
						read_beat_counter <= read_beat_counter; 
						input_data_addr_reg <= input_data_addr_reg; 
					end if; 
				else 
					inbuff_din <= (others => '0'); 
					inbuff_wr_en <= '0'; 
					
					if (M_AXI_RLAST = '1') then 
						read_beat_counter <= (others => '0'); 
						input_data_addr_reg <= (unsigned(input_volume_height)*unsigned(input_volume_width)*(channel_counter + 1)) + row_counter*unsigned(input_volume_width); 
						channel_counter <= channel_counter + 1; 
						row_counter <= row_counter + 1; 
					else 
						read_beat_counter <= read_beat_counter; 
					end if; 

				end if; 
				
				
				
			when STRIDE_RETURN => 
				--row_counter <= row_counter + 1; 
				if(channel_counter < channels_allowed) then 
					input_data_addr_reg <= input_data_addr_reg; 
				else 
					channel_counter <= (others => '0'); 
					input_data_addr_reg <= unsigned(input_volume_width)*row_counter; 
					row_counter <= row_counter + 1; 
					
					if(stride_counter < unsigned(stride) and i_operation_complete = '1') then 
						stride_counter <= stride_counter + 1; 
					elsif(stride_counter = unsigned(stride) and row_counter < unsigned(input_volume_height) and i_operation_complete = '1')
						stride_counter <= (others => '0'); 
					elsif(stride_counter = unsigned(stride) and row_counter = unsigned(input_volume_height) and i_operation_complete = '1')
						stride_counter <= (others => '0'); 
					end if; 

				end if; 
				
					
			
			when WRITE_ADDRESS => 
				axi_awaddr <= output_data_addr_reg;
				calculated <= '1';  
				axi_awvalid <= '1'; 
				axi_wstrb <= "1100"; 
                axi_awlen <= x"00"; 

				--if(writes_remaining > 255 and calculated = '0') then 
				--	axi_awlen <= x"FF"; 
				--	writes_remaining <= writes_remaining - 256; 
				--	more_bursts_needed <= '1'; 
				--elsif(writes_remaining <= 255 and calculated = '0') then 
				--	axi_awlen <= std_logic_vector(unsigned(num_elements)); 
				--	more_bursts_needed <= '0'; 
				--else 
				--	axi_awlen <= axi_awlen; 
				--	more_bursts_needed <= more_bursts_needed; 
				--end if;




			when WRITE_ALL =>
				calculated <= '0'; 
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1' and M_AXI_WREADY = '1') then 
					axi_wdata <= i_outbuff_dout; 
					axi_wvalid <= '1'; 
					axi_wstrb <= "1111";
					axi_wlast <= '1';

					if(channel_counter < unsigned(output_volume_channels))
						channel_counter <= channel_counter + 1; 
						output_data_addr_reg <= output_data_addr_reg + unsigned(output_volume_height)*unsigned(output_volume_width); 
					else 
						channel_counter <= (others => '0'); 
						output_data_addr_reg <= std_logic_vector(unsigned(output_data_addr_reg) - unsigned(output_volume_height)*unsigned(output_volume_width)*unsigned(output_volume_channels) + 2); 
                    end if; 

					--if(write_beat_counter < 255) then 
					--	write_beat_counter <= write_beat_counter + 1;  
					--	axi_wlast <= '0'; 						
					--else 
					--	axi_wlast <= '1'; 
					--	write_beat_counter <= (others => '0');
					--	channel_counter <= channel_counter + 1; 
					--end if; 

					--output_data_addr_reg <= output_data_addr_reg + 2; 
				else 
					axi_wdata <= (others => '0'); 
					axi_wvalid <= '0'; 
					axi_wstrb <= axi_wstrb; 
					axi_wlast <= '0'; 
					channel_counter <= channel_counter; 
					--write_beat_counter <= write_beat_counter; 
					output_data_addr_reg <= output_data_addr_reg; 
				end if; 

			when WRITE_RESPONSE =>  
				null; 

			when others => 
				axi_araddr        <= (others => '0'); 
				axi_arlen         <= (others => '0');  
				axi_arvalid	      <= '0';
				inbuff_din        <= (others => '0'); 
				inbuff_wr_en      <= '0'; 
				read_beat_counter <= (others => '0'); 
				writes_remaining  <= (others => '0'); 
				reads_remaining   <= (others => '0'); 
				axi_awaddr         <= (others => '0'); 
				axi_awlen          <= (others => '0'); 
				more_bursts_needed <= '0'; 
				calculated         <= '0'; 
				axi_awvalid        <= '0'; 
				axi_wstrb          <= (others => '0'); 

			end case; 


		end if; 

	end process; 

end implementation;
