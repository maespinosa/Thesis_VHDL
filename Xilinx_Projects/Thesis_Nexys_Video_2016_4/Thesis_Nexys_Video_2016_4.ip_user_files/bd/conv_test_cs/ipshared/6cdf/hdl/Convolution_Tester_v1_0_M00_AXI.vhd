library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity Convolution_Tester_v1_0_M00_AXI is
	generic (
		-- Users to add parameters here
		G_DATA_WIDTH : integer := 32; 
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
		i_trigger : in std_logic; 
		i_init_calib_complete : in std_logic; 
		i_data_written : in std_logic; 
		i_test_number : in std_logic_vector(3 downto 0); 
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
end Convolution_Tester_v1_0_M00_AXI;

architecture implementation of Convolution_Tester_v1_0_M00_AXI is
    
    type master_state is (
    	IDLE,
		FIRST,
    	IMAGE_DATA_TO_MEM_WRITE_ADDRESS,
    	IMAGE_DATA_TO_MEM_WRITE_DATA,
    	IMAGE_DATA_TO_MEM_WRITE_RESPONSE,
		WEIGHTS_TO_MEM_WRITE_ADDRESS, 
    	WEIGHTS_TO_MEM_WRITE_DATA,
    	WEIGHTS_TO_MEM_WRITE_RESPONSE,
        CONFIG_INPUT_DATA_ADDR_WRITE_ADDR, 
        CONFIG_INPUT_DATA_ADDR_WRITE_DATA,
        CONFIG_INPUT_DATA_ADDR_WRITE_RESP,
        CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR,
        CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA,
        CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP,
        CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR,
        CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA,
        CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP,
        CONFIG_INPUT_PARAMS_WRITE_ADDR,
        CONFIG_INPUT_PARAMS_WRITE_DATA,
        CONFIG_INPUT_PARAMS_WRITE_RESP,
        CONFIG_OUTPUT_PARAMS_WRITE_ADDR,
        CONFIG_OUTPUT_PARAMS_WRITE_DATA,
        CONFIG_OUTPUT_PARAMS_WRITE_RESP,
        CONFIG_WEIGHT_PARAMS_WRITE_ADDR,
        CONFIG_WEIGHT_PARAMS_WRITE_DATA,
        CONFIG_WEIGHT_PARAMS_WRITE_RESP,
        CONFIG_CONV_PARAMS_WRITE_ADDR,
        CONFIG_CONV_PARAMS_WRITE_DATA,
        CONFIG_CONV_PARAMS_WRITE_RESP,
        CONFIG_NORM_PARAMS_0_WRITE_ADDR,
        CONFIG_NORM_PARAMS_0_WRITE_DATA,
        CONFIG_NORM_PARAMS_0_WRITE_RESP,
        CONFIG_NORM_PARAMS_1_WRITE_ADDR,
        CONFIG_NORM_PARAMS_1_WRITE_DATA,
        CONFIG_NORM_PARAMS_1_WRITE_RESP,
        CONFIG_NORM_PARAMS_2_WRITE_ADDR,
        CONFIG_NORM_PARAMS_2_WRITE_DATA,
        CONFIG_NORM_PARAMS_2_WRITE_RESP,
		CONFIG_BIAS_ADDR_WRITE_ADDR, 
		CONFIG_BIAS_ADDR_WRITE_DATA, 
		CONFIG_BIAS_ADDR_WRITE_RESP, 
		CONFIG_BIAS_PARAMS_WRITE_ADDR, 
		CONFIG_BIAS_PARAMS_WRITE_DATA, 
		CONFIG_BIAS_PARAMS_WRITE_RESP,
		CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR, 
		CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA, 
		CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP,
		CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR, 
		CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA, 
		CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP,
		CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR, 
		CONFIG_INPUT_MULTIPLE_0_WRITE_DATA, 
		CONFIG_INPUT_MULTIPLE_0_WRITE_RESP,
		CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR, 
		CONFIG_INPUT_MULTIPLE_1_WRITE_DATA, 
		CONFIG_INPUT_MULTIPLE_1_WRITE_RESP,	
		CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR, 
		CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA, 
		CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP,
		CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR, 
		CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA, 
		CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP,	
		CONFIG_AFFINE_PARAMS_WRITE_ADDR,
		CONFIG_AFFINE_PARAMS_WRITE_DATA,		
		CONFIG_AFFINE_PARAMS_WRITE_RESP,
		CONFIG_CONTROL_WRITE_ADDR,
        CONFIG_CONTROL_WRITE_DATA,
        CONFIG_CONTROL_WRITE_RESP,
        HOLD_IRQ, 
		READ_ADDRESS, 
		READ_DATA
    	); 

    signal current_state : master_state; 
    signal next_state : master_state; 


	-- AXI4FULL signals
	--AXI4 internal temp signals
	signal axi_awaddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awlen    : std_logic_vector(7 downto 0); 
	signal axi_awsize   : std_logic_vector(2 downto 0); 
	signal axi_awvalid	: std_logic;
	signal axi_wdata	: std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	signal axi_wlast	: std_logic;
	signal axi_wvalid	: std_logic;
	signal axi_wstrb    : std_logic_vector(3 downto 0); 
	signal axi_bready	: std_logic;
	signal axi_araddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arlen    : std_logic_vector(7 downto 0);
	signal axi_arsize 	: std_logic_vector(2 downto 0); 
	signal axi_arvalid	: std_logic;
	signal axi_rready	: std_logic;

	signal image_mem_axi_addr   : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"8000_0000"; 
	signal weights_mem_axi_addr : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"8004_B800"; 
	signal output_mem_axi_addr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"8006_D900"; 
	signal bias_mem_axi_addr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"9C00_0000"; 
	
	signal conv_axi_addr        : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"44A0_0000"; 
    signal write_burst_counter  : unsigned(15 downto 0);
    signal write_beat_counter   : unsigned(15 downto 0); 
	
    --constant image_filename :string := "C:\Users\J30933\Downloads\Thesis_VHDL-Conv_Forward_Pass\Active_HDL_Projects\Max_Pool_Layer\data_processing\input_image.txt"; 
    --constant weights_filename :string := "C:\Users\J30933\Downloads\Thesis_VHDL-Conv_Forward_Pass\Active_HDL_Projects\Max_Pool_Layer\data_processing\W1.txt";  
	signal image_close_flag 	: std_logic; 
    signal image_data_read 		: std_logic_vector(G_DATA_WIDTH-1 downto 0);
	signal image_file_reset 	: std_logic;
	
    signal weight_close_flag 	: std_logic; 
    signal weight_data_read 	: std_logic_vector(G_DATA_WIDTH-1 downto 0);   
	signal weight_file_reset 	: std_logic;
	
    signal read_en 			: std_logic; 
    signal mem_addr 		: std_logic_vector(18 downto 0); 
    
    signal read_beat_counter : std_logic_vector(15 downto 0); 
	signal data_valid 		: std_logic; 
	
    constant c_axi_length 	: integer := 8; 
	constant c_axi_bursts 	: integer := 3025; 
					
	signal conv_data 		: std_logic_vector(31 downto 0); 
	signal conv_data_valid 	: std_logic; 
	signal addr_counter 	: unsigned(31 downto 0); 
	signal column_counter 	: unsigned(31 downto 0); 
	signal row_counter		: unsigned(31 downto 0); 
	signal filter_counter	: unsigned(31 downto 0); 
	
    signal data_read        : std_logic_vector(31 downto 0); 
	signal close_flag 		: std_logic; 
	signal comp_flag 		: std_logic; 
	signal read_flag 		: std_logic; 
	
	signal Test_number 		: integer; 
	signal debug 			: std_logic; 


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
	
	Test_number <= 2; 

	TXN_DONE	<= '0'; 
	ERROR	<= '0'; 
		
	state_transition: process(M_AXI_ACLK, M_AXI_ARESETN, i_ext_reset_n) is 
	begin 
		if(M_AXI_ARESETN = '0' or i_ext_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(M_AXI_ACLK)) then
			current_state <= next_state; 
		end if; 
	end process; 


	next_state_comb: process(current_state,write_beat_counter,conv_axi_addr,bias_mem_axi_addr,debug,image_mem_axi_addr,weights_mem_axi_addr, output_mem_axi_addr,i_trigger, write_burst_counter, M_AXI_ARREADY,M_AXI_RLAST,M_AXI_AWREADY,M_AXI_WREADY,M_AXI_BVALID,i_init_calib_complete, data_valid, i_data_written, column_counter, filter_counter, row_counter, i_test_number) is 
	begin 
		axi_rready <= '0'; 
		axi_bready <= '0'; 
		image_file_reset <= '0'; 
		weight_file_reset <= '0'; 
		read_en <= '0'; 
		axi_wlast <= '0'; 
		axi_wvalid <= '0'; 
		axi_awaddr <= (others => '0'); 
		axi_awlen <= (others => '0');  
		axi_awsize <= (others => '0'); 
		axi_awvalid <= '0'; 
		
		axi_wdata <= (others => '0');  
		axi_wstrb <= (others => '0'); 
		
		debug <= '0'; 
		
		if(unsigned(i_test_number) = 1) then 
	
			case current_state is
			
				when IDLE => 
				  image_file_reset <= '1'; 
				  weight_file_reset <= '1'; 
				  if(i_init_calib_complete = '1' and i_trigger = '1') then 
					  next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR;
					  --read_en <= '1'; 
				  else 
					  next_state <= IDLE; 
				  end if;

				--=================================================================			
				------------ CONFIGURE INPUT DATA ADDRESS ---------------------
				--=================================================================	
				when CONFIG_INPUT_DATA_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 8);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
					
					
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_DATA_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
				
					axi_wdata <= image_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_DATA_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT DATA ADDRESS ---------------------
				--=================================================================	
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 12);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= output_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE FILTER WEIGHTS ADDRESS ---------------------
				--=================================================================		
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 16);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
								
					axi_wdata <= weights_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT IMAGE PARAMETERS ---------------------
				--=================================================================	
				when CONFIG_INPUT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 20);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"E3" & x"E3" & x"0003"; --227x227x3
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT VOLUME PARAMETERS -------------------
				--=================================================================	
				when CONFIG_OUTPUT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 24);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
							
					axi_wdata <= x"37" & x"37" & x"0060"; --55x55x96
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT KERNEL PARAMETERS -------------------
				--=================================================================	
				when CONFIG_WEIGHT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 28);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					--axi_wdata <= x"BB" & x"003" & x"060"; --11x11x3x96
					axi_wdata <= x"BB" & x"000003";--x"000100"; --11x11x3
					
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_RESP;
					end if; 

				--=================================================================			
				------------ CONFIGURE CONVOLUTION PARAMETERS -------------------
				--=================================================================	
				when CONFIG_CONV_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 32);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_CONV_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"0060" & x"0340"; --Channels Allowed 3 Stride 4 Pad 0
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_CONV_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_RESP;
					end if; 


				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 0-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 36);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_RESP;
					end if; 


				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 1-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 40);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_RESP;
					end if; 
					
					
				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 2-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_2_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 44);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_2_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_2_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_RESP;
					end if; 

					
				--=================================================================			
				------------ CONFIGURE BIAS ADDRESS REGISTER -------------------
				--=================================================================	
				when CONFIG_BIAS_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 48);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_BIAS_ADDR_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= bias_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_BIAS_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_RESP;
					end if; 
					
					
				--=================================================================			
				------------ CONFIGURE BIAS PARAMETERS REGISTER -------------------
				--=================================================================	
				when CONFIG_BIAS_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 52);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_BIAS_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"0000" & x"005F"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_BIAS_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 56);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(363,32)); --WH*WW*CH_AL = 11*11*3 IN BYTES!!!!
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 60);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(11*11*3,32)); --WH*WW*NUM_CH   = 11*11*3  WH*WW*CH_AL*FILT = 11*11*3*96
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 64);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(227*227,32)); --IH*IW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 68);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned((11-0)*227,32)); --(WH-PAD)*IW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_RESP;
					end if; 
					
					
				--=================================================================			
				------------ CONFIGURE OUTPUT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 72);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(55*55,32)); --OH*OW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 76);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(0,32)); --IH*IW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE CONTROL REGISTER ---------------------------
				--=================================================================	
				when CONFIG_CONTROL_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 0);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
					
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_DATA; 
					else 
						next_state <= CONFIG_CONTROL_WRITE_ADDR; 
					end if; 
				when CONFIG_CONTROL_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"00000001"; --Start
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_RESP; 
					else 
						next_state <= CONFIG_CONTROL_WRITE_DATA; 
					end if; 

				when CONFIG_CONTROL_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= HOLD_IRQ;
					else 
						next_state <= CONFIG_CONTROL_WRITE_RESP;
					end if; 
				 
				when HOLD_IRQ => 
					null;
					-- if(i_data_written = '1') then 
						-- next_state <= READ_ADDRESS; 
					-- else 
						-- next_state <= HOLD_IRQ;
					-- end if; 
				

				when others => 
					next_state <= IDLE; 


			end case; 
		
		elsif(unsigned(i_test_number) = 2) then
		
			case current_state is
			
				when IDLE => 
				  image_file_reset <= '1'; 
				  weight_file_reset <= '1'; 
				  if(i_init_calib_complete = '1' and i_trigger = '1') then 
					  next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR;
					  --read_en <= '1'; 
				  else 
					  next_state <= IDLE; 
				  end if;

				--=================================================================			
				------------ CONFIGURE INPUT DATA ADDRESS ---------------------
				--=================================================================	
				when CONFIG_INPUT_DATA_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 8);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
					
					
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_DATA_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
				
					axi_wdata <= image_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_DATA_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT DATA ADDRESS ---------------------
				--=================================================================	
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 12);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= output_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE FILTER WEIGHTS ADDRESS ---------------------
				--=================================================================		
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 16);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
								
					axi_wdata <= weights_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT IMAGE PARAMETERS ---------------------
				--=================================================================	
				when CONFIG_INPUT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 20);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"0D" & x"0D" & x"0180"; --x"0010"; --x"0180"; --13x13x384
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT VOLUME PARAMETERS -------------------
				--=================================================================	
				when CONFIG_OUTPUT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 24);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
							
					axi_wdata <= x"0D" & x"0D" & x"0100"; --x"0005"; --x"0100"; --13x13x256
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT KERNEL PARAMETERS -------------------
				--=================================================================	
				when CONFIG_WEIGHT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 28);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					--axi_wdata <= x"33" & x"180" & x"100"; --x"010" & x"005"; --x"180" & x"100"; --3x3x384x256
					axi_wdata <= x"33" & x"000180";--x"000100"; ---3x3x384
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_RESP; 
					end if; 

				--=================================================================			
				------------ CONFIGURE CONVOLUTION PARAMETERS -------------------
				--=================================================================	
				when CONFIG_CONV_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 32);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_CONV_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"0100" & x"0811"; --Channels Allowed 8 Stride 1 Pad 1
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_CONV_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_RESP; 
					end if; 


				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 0-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 36);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_RESP; 
					end if; 


				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 1-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 40);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_RESP; 
					end if; 
					
					
				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 2-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_2_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 44);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_2_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_2_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_RESP; 
					end if; 

					
				--=================================================================			
				------------ CONFIGURE BIAS ADDRESS REGISTER -------------------
				--=================================================================	
				when CONFIG_BIAS_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 48);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_BIAS_ADDR_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= bias_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_BIAS_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE BIAS PARAMETERS REGISTER -------------------
				--=================================================================	
				when CONFIG_BIAS_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 52);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_BIAS_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"0000" & x"00FF"; --x"0004"; --x"00FF"; --1x256-1
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_BIAS_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 56);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(3*3*8,32)); --WH*WW*CH_AL = 3*3*8 IN BYTES!!!!
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 60);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(3*3*384,32)); --WH*WW*NUM_CH   = 3*3*384  WH*WW*CH_AL*FILT = 11*11*3*96
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 64);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(13*13,32)); --IH*IW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 68);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned((3-1)*13,32)); --(WH-PAD)*IW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_RESP; 
					end if; 
					
					
				--=================================================================			
				------------ CONFIGURE OUTPUT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 72);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(13*13,32)); --OH*OW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 76);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(13*256,32)); --IW*OC
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP; 
					end if; 
					
				--=================================================================			
				------------ CONFIGURE CONTROL REGISTER ---------------------------
				--=================================================================	
				when CONFIG_CONTROL_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 0);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
					
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_DATA; 
					else 
						next_state <= CONFIG_CONTROL_WRITE_ADDR; 
					end if; 
				when CONFIG_CONTROL_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"00020011"; --Start
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_RESP; 
					else 
						next_state <= CONFIG_CONTROL_WRITE_DATA; 
					end if; 

				when CONFIG_CONTROL_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= HOLD_IRQ;
					else 
						next_state <= CONFIG_CONTROL_WRITE_RESP; 
					end if; 

				 
				when HOLD_IRQ => 
					null;
					-- if(i_data_written = '1') then 
						-- next_state <= READ_ADDRESS; 
					-- else 
						-- next_state <= HOLD_IRQ;
					-- end if; 
				
					


				when others => 
					next_state <= IDLE; 


			end case; 
		
		
		elsif(unsigned(i_test_number) = 3) then
		
			case current_state is
			
				when IDLE => 
				  image_file_reset <= '1'; 
				  weight_file_reset <= '1'; 
				  if(i_init_calib_complete = '1' and i_trigger = '1') then 
					  next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR;
					  --read_en <= '1'; 
				  else 
					  next_state <= IDLE; 
				  end if;

				--=================================================================			
				------------ CONFIGURE INPUT DATA ADDRESS ---------------------
				--=================================================================	
				when CONFIG_INPUT_DATA_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 8);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
					
					
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_DATA_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
				
					axi_wdata <= image_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_DATA_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT DATA ADDRESS ---------------------
				--=================================================================	
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 12);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= output_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE FILTER WEIGHTS ADDRESS ---------------------
				--=================================================================		
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 16);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA => 
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
								
					axi_wdata <= weights_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT IMAGE PARAMETERS ---------------------
				--=================================================================	
				when CONFIG_INPUT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 20);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"06" & x"06" & x"0100"; --x"0010"; --x"0180"; --6x6x256
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
				
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_PARAMS_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT VOLUME PARAMETERS -------------------
				--=================================================================	
				when CONFIG_OUTPUT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 24);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
				
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					if(debug = '0') then		
						axi_wdata <= x"01" & x"01" & x"1000"; --x"0010"; --x"1000"; --1x1x4096
					else 
						axi_wdata <= x"01" & x"01" & x"0010"; --x"0010"; --x"1000"; --1x1x4096
					end if; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_PARAMS_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT KERNEL PARAMETERS -------------------
				--=================================================================	
				when CONFIG_WEIGHT_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 28);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"66" & x"000100";--x"000100"; --6x6x256
					--axi_wdata <= x"66" & x"100" & x"FFF";--x"100" & x"010"; --x"100" & x"FFF"; --6x6x256x4096
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_PARAMS_WRITE_RESP;
					end if; 

				--=================================================================			
				------------ CONFIGURE CONVOLUTION PARAMETERS -------------------
				--=================================================================	
				when CONFIG_CONV_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 32);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_CONV_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					if(debug = '0') then
						axi_wdata <= x"1000" & x"0400"; --Number of Filters 4096, Channels Allowed 4 Stride 0 Pad 0
					else 
						axi_wdata <= x"0010" & x"0400"; --Number of Filters 16, Channels Allowed 4 Stride 0 Pad 0
					end if; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_CONV_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_CONV_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_CONV_PARAMS_WRITE_RESP;
					end if; 



				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 0-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 36);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_0_WRITE_RESP;
					end if; 

				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 1-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 40);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
					
					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_1_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE NORM LAYER PARAMETERS 2-------------------
				--=================================================================	
				when CONFIG_NORM_PARAMS_2_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 44);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_DATA; 
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_ADDR; 
					end if; 
				when CONFIG_NORM_PARAMS_2_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_RESP; 
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_DATA; 
					end if; 
				when CONFIG_NORM_PARAMS_2_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_ADDR;
					else 
						next_state <= CONFIG_NORM_PARAMS_2_WRITE_RESP;
					end if; 

					
				--=================================================================			
				------------ CONFIGURE BIAS ADDRESS REGISTER -------------------
				--=================================================================	
				when CONFIG_BIAS_ADDR_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 48);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_DATA; 
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_ADDR; 
					end if; 
				when CONFIG_BIAS_ADDR_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= bias_mem_axi_addr; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_BIAS_ADDR_WRITE_RESP; 
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_DATA; 
					end if; 
				when CONFIG_BIAS_ADDR_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_BIAS_ADDR_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE BIAS PARAMETERS REGISTER -------------------
				--=================================================================	
				when CONFIG_BIAS_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 52);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_BIAS_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					if(debug = '0') then
						axi_wdata <= x"0000" & x"0FFF"; --x"000F"; --x"00FF"; --1x4096-1
					else 
						axi_wdata <= x"0000" & x"000F"; --x"000F"; --x"00FF"; --1x16-1
					end if; 
					
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_BIAS_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_BIAS_PARAMS_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 56);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(6*6*4,32)); --WH*WW*CH_AL = 6*6*4 IN BYTES!!!!
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE WEIGHT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 60);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(6*6*256,32)); --WH*WW*NUM_CH   = 3*3*384  
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP;
					end if; 
					
					
				--=================================================================			
				------------ CONFIGURE INPUT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 64);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(6*6,32)); --IH*IW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_0_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE INPUT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 68);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned((6-0)*6,32)); --(WH-PAD)*IW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_INPUT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR;
					else 
						next_state <= CONFIG_INPUT_MULTIPLE_1_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT MULTIPLE 0 REGISTER -------------------
				--=================================================================	
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 72);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					axi_wdata <= std_logic_vector(to_unsigned(1*1,32)); --OH*OW
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE OUTPUT MULTIPLE 1 REGISTER -------------------
				--=================================================================	
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 76);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					if(debug = '0') then
						axi_wdata <= std_logic_vector(to_unsigned(4*6,32)); --CH_AL*FILT_SIZE
					else 
						axi_wdata <= std_logic_vector(to_unsigned(4*6,32)); --CH_AL*FILT_SIZE
					end if; 
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP; 
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA; 
					end if; 
				when CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_AFFINE_PARAMS_WRITE_ADDR;
					else 
						next_state <= CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE AFFINE PARAMS REGISTER -------------------
				--=================================================================	
				when CONFIG_AFFINE_PARAMS_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 80);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 

					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_AFFINE_PARAMS_WRITE_DATA; 
					else 
						next_state <= CONFIG_AFFINE_PARAMS_WRITE_ADDR; 
					end if; 
				when CONFIG_AFFINE_PARAMS_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 

					if(debug = '0') then 
						axi_wdata <= x"0100" & x"0004";  -- Filters in set 256 Channels in set 4 
					else
						axi_wdata <= x"0008" & x"0004"; -- Filters in set 8 Channels in set 4
					end if; 
					
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_AFFINE_PARAMS_WRITE_RESP; 
					else 
						next_state <= CONFIG_AFFINE_PARAMS_WRITE_DATA; 
					end if; 
				when CONFIG_AFFINE_PARAMS_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_ADDR;
					else 
						next_state <= CONFIG_AFFINE_PARAMS_WRITE_RESP;
					end if; 
					
				--=================================================================			
				------------ CONFIGURE CONTROL REGISTER ---------------------------
				--=================================================================	
				when CONFIG_CONTROL_WRITE_ADDR => 
					axi_awaddr <= std_logic_vector(unsigned(conv_axi_addr) + 0);
					axi_awlen <= x"00"; 
					axi_awsize <= "010";
					axi_awvalid <= '1'; 
					
					if(M_AXI_AWREADY = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_DATA; 
					else 
						next_state <= CONFIG_CONTROL_WRITE_ADDR; 
					end if; 
				when CONFIG_CONTROL_WRITE_DATA =>
					axi_awaddr <= (others => '0');
					axi_awlen <= x"00"; 
					axi_awsize <= "000";
					axi_awvalid <= '0'; 
 
					axi_wdata <= x"00022011"; --Start
					axi_wstrb <= "1111";
					axi_wvalid <= '1'; 
					if(M_AXI_WREADY = '1') then 
						next_state <= CONFIG_CONTROL_WRITE_RESP; 
					else 
						next_state <= CONFIG_CONTROL_WRITE_DATA; 
					end if; 

				when CONFIG_CONTROL_WRITE_RESP => 
					axi_bready <= '1'; 
					if(M_AXI_BVALID = '1') then 
						next_state <= HOLD_IRQ;
					else 
						next_state <= CONFIG_CONTROL_WRITE_RESP;
					end if; 

				 
				when HOLD_IRQ => 
					null;
					-- if(i_data_written = '1') then 
						-- next_state <= READ_ADDRESS; 
					-- else 
						-- next_state <= HOLD_IRQ;
					-- end if; 
				
					


				when others => 
					next_state <= IDLE; 


			end case; 
		
		end if; 
		
	
	
	
	
	end process; 




	read_process: process(M_AXI_ACLK, M_AXI_ARESETN, i_ext_reset_n) is 
	begin 
		if(M_AXI_ARESETN = '0' or i_ext_reset_n = '0') then 
			axi_araddr        <= (others => '0'); 
			axi_arlen         <= (others => '0');  
			axi_arsize 			<= (others => '0'); 
			axi_arvalid	      <= '0';
			read_beat_counter <= (others => '0'); 
			write_beat_counter <= (others => '0'); 
			write_burst_counter<= (others => '0'); 
			mem_addr <= (others => '0'); 

			data_valid <= '0'; 
			
			image_mem_axi_addr  <= (others => '0'); 
			weights_mem_axi_addr<= (others => '0'); 
			output_mem_axi_addr	<= (others => '0'); 
			conv_axi_addr 		<= (others => '0'); 
			
			conv_data 		<= (others => '0');  
			conv_data_valid <= '0'; 
			addr_counter 	<= (others => '0');  
			column_counter 	<= (others => '0');  
			row_counter		<= (others => '0');   
			filter_counter	<= (others => '0');  

			-- axi_wlast <= '0'; 
			-- axi_wvalid <= '0'; 
			-- axi_awaddr <= (others => '0'); 
			-- axi_awlen <= (others => '0');  
			-- axi_awsize <= (others => '0'); 
			-- axi_awvalid <= '0'; 
			
			-- axi_wdata <= (others => '0');  
			-- axi_wstrb <= (others => '0'); 
			
			
		elsif(rising_edge(M_AXI_ACLK)) then 

			-- axi_araddr         	<= axi_araddr; 
			-- axi_arlen          	<= axi_arlen; 
			-- axi_arvalid	       	<= axi_arvalid;
			-- read_beat_counter  	<= read_beat_counter; 
			-- write_beat_counter 	<= write_beat_counter; 
			-- write_burst_counter	<= write_burst_counter; 
			-- mem_addr 			<= mem_addr; 
			-- data_valid 			<= data_valid; 
			
			-- image_mem_axi_addr  <= image_mem_axi_addr; 
			-- weights_mem_axi_addr<= weights_mem_axi_addr; 
			-- output_mem_axi_addr	<= output_mem_axi_addr; 
			-- conv_axi_addr 		<= conv_axi_addr; 
			
			
			-- axi_wlast 			<= axi_wlast; 
			-- axi_wvalid 			<= axi_wvalid; 
			-- axi_awaddr 			<= axi_awaddr; 
			-- axi_awlen 			<= x"00";
			-- axi_awsize 			<= "010";
			-- axi_awvalid 		<= axi_awvalid; 
			
			-- axi_wdata 			<= axi_wdata;  
			-- axi_wstrb 			<= "1111";



			case current_state is 

                when IDLE => 
                    axi_araddr        	<= (others => '0'); 
                    axi_arlen         	<= (others => '0');  
                    axi_arvalid          <= '0';
                    read_beat_counter 	<= (others => '0'); 
					write_beat_counter 	<= (others => '0'); 
					write_burst_counter	<= (others => '0'); 
					data_valid 			<= '0';

					conv_data 			<= (others => '0');  
					conv_data_valid 	<= '0'; 
					addr_counter 		<= (others => '0');  
					column_counter 		<= (others => '0');  
					row_counter			<= (others => '0');   
					filter_counter		<= (others => '0');  

					
					if(unsigned(i_test_number) = 1) then 
					
						image_mem_axi_addr  <= x"8000_0000"; 
						weights_mem_axi_addr<= x"8004_B800"; 
						output_mem_axi_addr	<= x"8006_D900"; 
						conv_axi_addr 		<= x"44A0_0000"; 
						bias_mem_axi_addr 	<= x"9C00_0000"; 
						mem_addr 			<= (others => '0'); 
					
					elsif(unsigned(i_test_number) = 2) then 
					
						image_mem_axi_addr  <= x"80DB_5A00"; 
						weights_mem_axi_addr<= x"80DF_5300"; 
						output_mem_axi_addr	<= x"8115_5400"; 
						conv_axi_addr 		<= x"44A0_0000"; 
						bias_mem_axi_addr 	<= x"9C00_1030"; 
						mem_addr 			<= (others => '0'); 
					
					elsif(unsigned(i_test_number) = 3) then 
					
						image_mem_axi_addr  <= x"8117_F900"; 
						weights_mem_axi_addr<= x"8400_0000"; 
						output_mem_axi_addr	<= x"8D00_0100"; 
						conv_axi_addr 		<= x"44A0_0000"; 
						bias_mem_axi_addr 	<= x"9C00_1140"; 
						mem_addr 			<= (others => '0'); 
					end if; 
			
					
					

	            when CONFIG_INPUT_DATA_ADDR_WRITE_ADDR => 
					null; 
	            when CONFIG_INPUT_DATA_ADDR_WRITE_DATA => 
					null; 	
	            when CONFIG_INPUT_DATA_ADDR_WRITE_RESP => 
					null; 

	            when CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR => 
					null;  
	            when CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA => 
					null;  
	            when CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP => 
					null; 

	            when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_ADDR => 
					null; 
	            when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_DATA => 
					null; 
	            when CONFIG_FILTER_WEIGHTS_ADDR_WRITE_RESP => 
					null; 

	            when CONFIG_INPUT_PARAMS_WRITE_ADDR => 
					null; 
	            when CONFIG_INPUT_PARAMS_WRITE_DATA =>
					null; 
	            when CONFIG_INPUT_PARAMS_WRITE_RESP => 
					null; 
					
	            when CONFIG_OUTPUT_PARAMS_WRITE_ADDR => 
					null; 
	            when CONFIG_OUTPUT_PARAMS_WRITE_DATA =>
					null; 
	            when CONFIG_OUTPUT_PARAMS_WRITE_RESP => 
					null; 
					
	            when CONFIG_WEIGHT_PARAMS_WRITE_ADDR => 
					null; 
	            when CONFIG_WEIGHT_PARAMS_WRITE_DATA =>
					null; 
	            when CONFIG_WEIGHT_PARAMS_WRITE_RESP => 
					null; 

	            when CONFIG_CONV_PARAMS_WRITE_ADDR => 
					null; 
	            when CONFIG_CONV_PARAMS_WRITE_DATA =>
					null; 
	            when CONFIG_CONV_PARAMS_WRITE_RESP => 
					null; 
					
	            when CONFIG_NORM_PARAMS_0_WRITE_ADDR => 
					null; 
	            when CONFIG_NORM_PARAMS_0_WRITE_DATA =>
					null; 
	            when CONFIG_NORM_PARAMS_0_WRITE_RESP => 
					null; 

	            when CONFIG_NORM_PARAMS_1_WRITE_ADDR => 
					null; 
	            when CONFIG_NORM_PARAMS_1_WRITE_DATA =>
					null; 
	            when CONFIG_NORM_PARAMS_1_WRITE_RESP => 
					null; 

	            when CONFIG_NORM_PARAMS_2_WRITE_ADDR => 
					null; 
	            when CONFIG_NORM_PARAMS_2_WRITE_DATA =>
					null; 
	            when CONFIG_NORM_PARAMS_2_WRITE_RESP => 
					null; 

	            when CONFIG_WEIGHT_MULTIPLE_0_WRITE_ADDR => 
					null;  
	            when CONFIG_WEIGHT_MULTIPLE_0_WRITE_DATA =>
					null;  
	            when CONFIG_WEIGHT_MULTIPLE_0_WRITE_RESP => 
					null; 

	            when CONFIG_WEIGHT_MULTIPLE_1_WRITE_ADDR => 
					null; 
	            when CONFIG_WEIGHT_MULTIPLE_1_WRITE_DATA =>
					null; 
	            when CONFIG_WEIGHT_MULTIPLE_1_WRITE_RESP => 
					null; 
					
	            when CONFIG_INPUT_MULTIPLE_0_WRITE_ADDR => 
					null; 
	            when CONFIG_INPUT_MULTIPLE_0_WRITE_DATA =>
					null; 
	            when CONFIG_INPUT_MULTIPLE_0_WRITE_RESP => 
					null; 
					
	            when CONFIG_INPUT_MULTIPLE_1_WRITE_ADDR => 
					null; 
	            when CONFIG_INPUT_MULTIPLE_1_WRITE_DATA =>
					null; 
	            when CONFIG_INPUT_MULTIPLE_1_WRITE_RESP => 
					null; 
					
	            when CONFIG_OUTPUT_MULTIPLE_0_WRITE_ADDR => 
					null;  
	            when CONFIG_OUTPUT_MULTIPLE_0_WRITE_DATA =>
					null; 
	            when CONFIG_OUTPUT_MULTIPLE_0_WRITE_RESP => 
					null; 
					
	            when CONFIG_OUTPUT_MULTIPLE_1_WRITE_ADDR => 
					null; 
	            when CONFIG_OUTPUT_MULTIPLE_1_WRITE_DATA =>
					null; 
	            when CONFIG_OUTPUT_MULTIPLE_1_WRITE_RESP => 
					null; 
					
				when CONFIG_CONTROL_WRITE_ADDR => 
					null; 
				when CONFIG_CONTROL_WRITE_DATA =>
					null; 
				when CONFIG_CONTROL_WRITE_RESP => 
					null; 

				when CONFIG_AFFINE_PARAMS_WRITE_ADDR => 
					null; 
				when CONFIG_AFFINE_PARAMS_WRITE_DATA =>
					null; 
				when CONFIG_AFFINE_PARAMS_WRITE_RESP => 
					null; 

					
					
                when HOLD_IRQ => 
                	null; 

				when READ_ADDRESS => 
					null; 
					
				when READ_DATA => 
					null; 


				when others => 
					axi_araddr        <= (others => '0'); 
					axi_arlen         <= (others => '0');  
					axi_arvalid	      <= '0';
					read_beat_counter <= (others => '0'); 
					write_beat_counter <= (others => '0'); 
					write_burst_counter<= (others => '0'); 

			end case; 

		end if; 

	end process; 

 
  
  

end implementation;



