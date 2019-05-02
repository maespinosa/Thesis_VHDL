library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity Max_Pool_Tester_v1_0_M00_AXI is
	generic (
		-- Users to add parameters here
        G_DATA_WIDTH : integer := 16; 
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
        i_trigger : in std_logic; 
		--i_arm : in std_logic; 
        i_init_calib_complete : in std_logic; 
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
end Max_Pool_Tester_v1_0_M00_AXI;

architecture implementation of Max_Pool_Tester_v1_0_M00_AXI is
  
    
    component input_bram IS
      PORT (
        clka : IN STD_LOGIC;
        ena : IN STD_LOGIC;
        wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        addra : IN STD_LOGIC_VECTOR(18 DOWNTO 0);
        dina : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        douta : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
      );
    END component;
    
    
    type master_state is (
    	IDLE,
		FIRST, 
    	DATA_TO_MEM_WRITE_ADDRESS,
    	DATA_TO_MEM_WRITE_DATA,
    	DATA_TO_MEM_WRITE_RESPONSE,
        CONFIG_INPUT_DATA_ADDR_WRITE_ADDR, 
        CONFIG_INPUT_DATA_ADDR_WRITE_DATA,
        CONFIG_INPUT_DATA_ADDR_WRITE_RESP,
        CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR,
        CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA,
        CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP,
        CONFIG_INPUT_PARAMS_WRITE_ADDR,
        CONFIG_INPUT_PARAMS_WRITE_DATA,
        CONFIG_INPUT_PARAMS_WRITE_RESP,
        CONFIG_OUTPUT_PARAMS_WRITE_ADDR,
        CONFIG_OUTPUT_PARAMS_WRITE_DATA,
        CONFIG_OUTPUT_PARAMS_WRITE_RESP,
        CONFIG_KERNEL_PARAMS_WRITE_ADDR,
        CONFIG_KERNEL_PARAMS_WRITE_DATA,
        CONFIG_KERNEL_PARAMS_WRITE_RESP,
		CONFIG_ADDR_MULT_0_WRITE_ADDR, 
		CONFIG_ADDR_MULT_0_WRITE_DATA, 
		CONFIG_ADDR_MULT_0_WRITE_RESP,  		
        CONFIG_CONTROL_WRITE_ADDR,
        CONFIG_CONTROL_WRITE_DATA,
        CONFIG_CONTROL_WRITE_RESP,
        HOLD_IRQ
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
	signal axi_arvalid	: std_logic;
	signal axi_rready	: std_logic;

	signal ddr_mem_axi_addr           : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"8000_0000"; 
	signal max_pool_axi_addr          : std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0) := x"44A0_0000"; 
    signal write_burst_counter        : unsigned(15 downto 0); 
    signal write_beat_counter         : unsigned(15 downto 0); 
	
    --constant filename :string := "C:\Users\J30933\Downloads\Thesis_VHDL-Conv_Forward_Pass\Active_HDL_Projects\Max_Pool_Layer\data_processing\conv1.txt"; 
    signal close_flag : std_logic; 
    signal data_read : std_logic_vector(G_DATA_WIDTH-1 downto 0);   
    signal read_en : std_logic; 
    signal mem_addr : std_logic_vector(18 downto 0); 
    
    signal read_beat_counter : std_logic_vector(15 downto 0); 
	--signal data_valid : std_logic_vector(2 downto 0); 
	signal data_valid : std_logic; 
	signal file_reset : std_logic; 
	
    constant c_axi_length : integer := 8; 
	constant c_axi_bursts : integer := 3025; 


begin

    -- memory: input_bram
      -- PORT map(
        -- clka => M_AXI_ACLK, 
        -- ena => '1', 
        -- wea => (others => '0'), 
        -- addra => mem_addr, 
        -- dina => (others => '0'), 
        -- douta => data_read 
      -- );
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
	M_AXI_ARSIZE	<= "001";
	M_AXI_ARBURST	<= "01";
	M_AXI_ARLOCK	<= '0';
    M_AXI_ARCACHE	<= "0010";
	M_AXI_ARPROT	<= "000";
	M_AXI_ARQOS	    <= x"0";
	M_AXI_ARUSER	<= (others => '1');
	M_AXI_ARVALID	<= axi_arvalid;
	M_AXI_RREADY	<= axi_rready;




	state_transition: process(M_AXI_ACLK, M_AXI_ARESETN) is 
	begin 
		if(M_AXI_ARESETN = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(M_AXI_ACLK)) then
			current_state <= next_state; 
		end if; 
	end process; 


	next_state_comb: process(current_state,write_beat_counter, write_burst_counter, M_AXI_ARREADY,M_AXI_RLAST,M_AXI_AWREADY,M_AXI_WREADY,M_AXI_BVALID,i_init_calib_complete, data_valid, i_trigger,max_pool_axi_addr) is 
	begin 
		axi_rready <= '0'; 
		axi_bready <= '0'; 
		file_reset <= '0'; 
		read_en <= '0'; 
		axi_wlast <= '0'; 
		axi_wvalid <= '0'; 
		axi_awaddr <= (others => '0'); 
		axi_awlen <= (others => '0');  
		axi_awsize <= (others => '0'); 
		axi_awvalid <= '0'; 
		
		axi_wdata <= (others => '0');  
		axi_wstrb <= (others => '0'); 

		case current_state is 
		    when IDLE => 
			  file_reset <= '1'; 
		      if(i_init_calib_complete = '1' and i_trigger = '1') then 
		          next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR;
				  --read_en <= '1'; 
		      else 
		          next_state <= IDLE; 
		      end if;
			  
			  
			-- when FIRST => 
				-- read_en <= '1'; 
				-- next_state <= DATA_TO_MEM_WRITE_ADDRESS; 
				
		           
	
            -- when DATA_TO_MEM_WRITE_ADDRESS => 
				-- axi_awaddr <= ddr_mem_axi_addr;
				-- axi_awlen <= std_logic_vector(to_unsigned(c_axi_length, 8) - 1); 
				-- axi_awsize <= "001";
				-- axi_awvalid <= '1'; 
			
				-- next_state <= DATA_TO_MEM_WRITE_ADDRESS; 
				-- if(M_AXI_AWREADY = '1') then 
                    -- next_state <= DATA_TO_MEM_WRITE_DATA; --READ_ADDRESS; 
                -- else 
                    -- next_state <= DATA_TO_MEM_WRITE_ADDRESS; --READ_DATA_FIRST_ROWS; 
                -- end if; 
            -- when DATA_TO_MEM_WRITE_DATA => 
				-- axi_awaddr <= (others => '0');
				-- axi_awlen <= x"00"; 
				-- axi_awsize <= "000";
				-- axi_awvalid <= '0'; 
				
				
				-- if(ddr_mem_axi_addr(1) = '0') then 
					-- axi_wdata <= x"0000" & data_read; 
					-- axi_wstrb <= "0011";
				-- else 
					-- axi_wdata <= data_read & x"0000"; 
					-- axi_wstrb <= "1100";
				-- end if; 
				
				-- next_state <= DATA_TO_MEM_WRITE_DATA; 
				
                -- if(M_AXI_WREADY = '1') then 
				
					-- if(data_valid = '1') then 
						-- axi_wvalid <= '1'; 
					-- end if; 
					
					-- if(write_beat_counter < c_axi_length-1)then --31 
						-- next_state <= DATA_TO_MEM_WRITE_DATA;
						-- read_en <= '1';
					-- elsif(write_beat_counter = c_axi_length-1) then --31
						-- next_state <= DATA_TO_MEM_WRITE_DATA;
						-- read_en <= '0';
					-- else 
						-- next_state <= DATA_TO_MEM_WRITE_RESPONSE; 
						-- read_en <= '0'; 
					-- end if; 
					
					-- if(write_beat_counter = c_axi_length-1) then --31
						-- axi_wlast <= '1';
						-- axi_wvalid <= '1'; 
						-- read_en <= '1'; 
					-- end if; 
					
                -- else 
					-- axi_wvalid <= '0'; 
				    -- read_en <= '0'; 
					-- axi_wlast <= '0'; 
					
					-- next_state <= DATA_TO_MEM_WRITE_DATA;
					-- if(write_beat_counter < c_axi_length-1) then --31
						-- next_state <= DATA_TO_MEM_WRITE_DATA;
					-- elsif(write_beat_counter = c_axi_length-1) then --31
						-- next_state <= DATA_TO_MEM_WRITE_DATA;
						-- axi_wlast <= '1';
						-- axi_wvalid <= '1'; 
						-- read_en <= '1'; 
					-- else 
						-- next_state <= DATA_TO_MEM_WRITE_RESPONSE;
					-- end if; 

                 -- end if; 
            -- when DATA_TO_MEM_WRITE_RESPONSE => 
				-- axi_bready <= '1'; 
				-- read_en <= '0'; 

				-- if(M_AXI_BVALID = '1') then 
					-- if(write_burst_counter < c_axi_bursts) then 
						-- next_state <= DATA_TO_MEM_WRITE_ADDRESS;
					-- else 
						-- next_state <= CONFIG_INPUT_DATA_ADDR_WRITE_ADDR; 
					-- end if; 
				-- end if; 
				
            
            when CONFIG_INPUT_DATA_ADDR_WRITE_ADDR => 
				axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 8); --0x8
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
			
				axi_wdata <= x"8006_D900"; 
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
				

            when CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR => 
				axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 12); --0xC
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
				
				axi_wdata <= x"8018_9300"; 
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
					next_state <= CONFIG_INPUT_PARAMS_WRITE_ADDR;
				else 
					next_state <= CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP; 
				end if; 
				

            when CONFIG_INPUT_PARAMS_WRITE_ADDR => 
				axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 16); --0x10
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
				
				axi_wdata <= x"37" & x"37" & x"0060"; 
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
				

            when CONFIG_OUTPUT_PARAMS_WRITE_ADDR => 
                axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 20); --0x14
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
                        
				axi_wdata <= x"1B" & x"1B" & x"0060"; 
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
					next_state <= CONFIG_KERNEL_PARAMS_WRITE_ADDR;
				else 
					next_state <= CONFIG_OUTPUT_PARAMS_WRITE_RESP; 
				end if; 
				

            when CONFIG_KERNEL_PARAMS_WRITE_ADDR => 
			    axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 24); --0x18
                axi_awlen <= x"00"; 
                axi_awsize <= "010";
                axi_awvalid <= '1'; 
				if(M_AXI_AWREADY = '1') then 
                    next_state <= CONFIG_KERNEL_PARAMS_WRITE_DATA; 
                else 
                    next_state <= CONFIG_KERNEL_PARAMS_WRITE_ADDR; 
                end if; 
            when CONFIG_KERNEL_PARAMS_WRITE_DATA =>
				axi_awaddr <= (others => '0');
				axi_awlen <= x"00"; 
				axi_awsize <= "000";
				axi_awvalid <= '0'; 
				
                axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
                axi_wstrb <= "1111";
				axi_wvalid <= '1'; 
                if(M_AXI_WREADY = '1') then 
                    next_state <= CONFIG_KERNEL_PARAMS_WRITE_RESP; 
                else 
                    next_state <= CONFIG_KERNEL_PARAMS_WRITE_DATA; 
                end if; 
            when CONFIG_KERNEL_PARAMS_WRITE_RESP => 
				axi_bready <= '1'; 
				if(M_AXI_BVALID = '1') then 
					next_state <= CONFIG_ADDR_MULT_0_WRITE_ADDR;
				else 
					next_state <= CONFIG_KERNEL_PARAMS_WRITE_RESP; 
				end if; 

				
            when CONFIG_ADDR_MULT_0_WRITE_ADDR => 
			    axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 32); --0x20
                axi_awlen <= x"00"; 
                axi_awsize <= "010";
                axi_awvalid <= '1'; 
				if(M_AXI_AWREADY = '1') then 
                    next_state <= CONFIG_ADDR_MULT_0_WRITE_DATA; 
                else 
                    next_state <= CONFIG_ADDR_MULT_0_WRITE_ADDR; 
                end if; 
            when CONFIG_ADDR_MULT_0_WRITE_DATA =>
				axi_awaddr <= (others => '0');
				axi_awlen <= x"00"; 
				axi_awsize <= "000";
				axi_awvalid <= '0'; 
				
                axi_wdata(15 downto 0) <= std_logic_vector(to_unsigned(55,16)); --IH(USED)
				axi_wdata(31 downto 16) <= std_logic_vector(to_unsigned(55*2,16)); --IH(USED)*Stride
                axi_wstrb <= "1111";
				axi_wvalid <= '1'; 
                if(M_AXI_WREADY = '1') then 
                    next_state <= CONFIG_ADDR_MULT_0_WRITE_RESP; 
                else 
                    next_state <= CONFIG_ADDR_MULT_0_WRITE_DATA; 
                end if; 
            when CONFIG_ADDR_MULT_0_WRITE_RESP => 
				axi_bready <= '1'; 
				if(M_AXI_BVALID = '1') then 
					next_state <= CONFIG_CONTROL_WRITE_ADDR;
				else 
					next_state <= CONFIG_ADDR_MULT_0_WRITE_RESP; 
				end if; 
				
				
				

            when CONFIG_CONTROL_WRITE_ADDR => 
			    axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 28); --0x1C
                axi_awlen <= x"00"; 
                axi_awsize <= "010";
                axi_awvalid <= '1'; 
				axi_wstrb <= "1111";
				
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
				
                axi_wdata <= x"00000001"; 
                axi_wstrb <= "1111";
				axi_wvalid <= '1'; 
                if(M_AXI_WREADY = '1') then 
                    next_state <= CONFIG_CONTROL_WRITE_RESP; 
                else 
                    next_state <= CONFIG_CONTROL_WRITE_DATA; 
                end if; 

            when CONFIG_CONTROL_WRITE_RESP => 
			    axi_wstrb <= "1111";
			 	axi_bready <= '1'; 
				if(M_AXI_BVALID = '1') then 
					next_state <= HOLD_IRQ;
				else 
					next_state <= CONFIG_CONTROL_WRITE_RESP; 
				end if; 

             
            when HOLD_IRQ => 
            	next_state <= HOLD_IRQ; 
            
            
   --         when READ_OUTPUT_READ_ADDRESS => 
            
   --         when READ_OUTPUT_READ_DATA => 
            
            
            
            
            
			--when READ_ADDRESS => 
			--	if(M_AXI_ARREADY = '1') then 
			--		next_state <= READ_DATA_FIRST_ROWS; 
			--	else 
			--		next_state <= READ_ADDRESS; 
			--	end if; 


			--when READ_DATA_FIRST_ROWS => 
			--	if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
			--		axi_rready <= '1'; 
			--		next_state <= READ_DATA_FIRST_ROWS; 
			--	else 
			--		next_state <= READ_DATA_FIRST_ROWS; 
			--		axi_rready <= '0'; 
			--		if(M_AXI_RLAST = '1') then 
			--			next_state <= READ_DATA_STRIDE; 
			--		end if; 

			--	end if; 

			--when READ_ADDRESS_STRIDE => 
			--	if(M_AXI_ARREADY = '1') then 
			--		next_state <= READ_ADDRESS_STRIDE; 
			--	else 
			--		next_state <= READ_DATA_STRIDE; 
			--	end if; 

			--when READ_DATA_STRIDE => 
			--	if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
			--		axi_rready <= '1'; 
			--		next_state <= READ_DATA_STRIDE; 
			--	else 
			--		next_state <= READ_DATA_STRIDE; 
			--		axi_rready <= '0'; 
			--		if(M_AXI_RLAST = '1' and row_counter < unsigned(input_volume_size)-1) then 
			--			next_state <= READ_ADDRESS_STRIDE; 
			--		elsif(M_AXI_RLAST = '1' and row_counter >= unsigned(input_volume_size)-1) then 
			--		    next_state <= WRITE_ADDRESS; 
			--		end if; 

			--	end if; 

			--when POOLER_EXECUTING => 
			--	if(i_channel_complete = '1') then 
			--		next_state <= WRITE_ADDRESS; 
			--	else 
			--		next_state <= POOLER_EXECUTING; 
			--	end if;



			when others => 
				next_state <= IDLE; 


		end case; 

	end process; 




	read_process: process(M_AXI_ACLK, M_AXI_ARESETN) is 
	begin 
		if(M_AXI_ARESETN = '0') then 
			axi_araddr        <= (others => '0'); 
			axi_arlen         <= (others => '0');  
			axi_arvalid	      <= '0';
			read_beat_counter <= (others => '0'); 
			write_beat_counter <= (others => '0'); 
			write_burst_counter<= (others => '0'); 
			mem_addr <= (others => '0'); 

			data_valid <= '0'; 


		elsif(rising_edge(M_AXI_ACLK)) then 

			axi_araddr         <= axi_araddr; 
			axi_arlen          <= axi_arlen; 
			axi_arvalid	       <= axi_arvalid;
			read_beat_counter  <= read_beat_counter; 
			write_beat_counter <= write_beat_counter; 
			write_burst_counter<= write_burst_counter; 
			mem_addr <= mem_addr; 
			data_valid <= data_valid; 


			case current_state is 

                when IDLE => 
                    axi_araddr        <= (others => '0'); 
                    axi_arlen         <= (others => '0');  
                    axi_arvalid          <= '0';
                    read_beat_counter <= (others => '0'); 
					write_beat_counter <= (others => '0'); 
					write_burst_counter<= (others => '0'); 
					data_valid <= '0';

                    max_pool_axi_addr <= x"44A0_0000"; 
                    ddr_mem_axi_addr <= x"8000_0000"; 
                    mem_addr <= (others => '0'); 
					
				when FIRST => 
					null;
                    
                when DATA_TO_MEM_WRITE_ADDRESS => 
					null; 

                when DATA_TO_MEM_WRITE_DATA => 

                    if(M_AXI_WREADY = '1') then
						data_valid <= '1'; 
						
						
						if(write_beat_counter < c_axi_length-2) then --30
							write_beat_counter <= write_beat_counter + 1; 
							data_valid <= '1'; 
							ddr_mem_axi_addr <= std_logic_vector(unsigned(ddr_mem_axi_addr) + 2);
						elsif(write_beat_counter = c_axi_length-2) then --30
							write_beat_counter <= write_beat_counter + 1; 
							data_valid <= '0'; 
							ddr_mem_axi_addr <= std_logic_vector(unsigned(ddr_mem_axi_addr) + 2);
						elsif(write_beat_counter = c_axi_length-1) then --31
							write_beat_counter <= write_beat_counter + 1; --(others => '0');
							write_burst_counter <= write_burst_counter + 1; 
							data_valid <= '0'; 
							ddr_mem_axi_addr <= std_logic_vector(unsigned(ddr_mem_axi_addr) + 2);
						else
							write_beat_counter <= (others => '0');
							write_burst_counter <= write_burst_counter + 1; 
							data_valid <= '0'; 
							ddr_mem_axi_addr <= ddr_mem_axi_addr;
						end if; 
                         
                    else 
						data_valid <= '1'; 
                        write_beat_counter <= write_beat_counter; 
                        write_burst_counter <= write_burst_counter; 
                        ddr_mem_axi_addr <= ddr_mem_axi_addr; 
                    end if; 
                
                
                when DATA_TO_MEM_WRITE_RESPONSE => 
					write_beat_counter <= (others => '0'); 


	            when CONFIG_INPUT_DATA_ADDR_WRITE_ADDR => 
					null; 
										
					
	            when CONFIG_INPUT_DATA_ADDR_WRITE_DATA => 
	                -- if(M_AXI_WREADY = '1') then 
                        -- axi_wdata <= x"8000_0000"; 
                        -- axi_wstrb <= "1111";
	                -- else 
                        -- axi_wdata <= (others => '0'); 
                        -- axi_wstrb <= "0000"; 
	                -- end if; 
					null; 
					
	            when CONFIG_INPUT_DATA_ADDR_WRITE_RESP => 
					null;

	            when CONFIG_OUTPUT_DATA_ADDR_WRITE_ADDR => 
                    -- axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 12);
                    -- axi_awlen <= x"00"; 
                    -- axi_awsize <= "010";
                    -- axi_awvalid <= '1'; 
					null; 
					
	            when CONFIG_OUTPUT_DATA_ADDR_WRITE_DATA => 
	                -- if(M_AXI_WREADY = '1') then 
                        -- axi_wdata <= x"A000_0000"; 
                        -- axi_wstrb <= "1111";
	                -- else 
                        -- axi_wdata <= (others => '0'); 
                        -- axi_wstrb <= "0000"; 
	                -- end if; 
					null; 
					
	            when CONFIG_OUTPUT_DATA_ADDR_WRITE_RESP => 
					null;

	            when CONFIG_INPUT_PARAMS_WRITE_ADDR => 
                    -- axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 16);
                    -- axi_awlen <= x"00"; 
                    -- axi_awsize <= "010";
                    -- axi_awvalid <= '1'; 
					null; 
					
	            when CONFIG_INPUT_PARAMS_WRITE_DATA =>
	                -- if(M_AXI_WREADY = '1') then 
                        -- axi_wdata <= x"37" & x"37" & x"0060"; 
                        -- axi_wstrb <= "1111";
	                -- else 
                        -- axi_wdata <= (others => '0'); 
                        -- axi_wstrb <= "0000"; 
	                -- end if;
					null; 
	            when CONFIG_INPUT_PARAMS_WRITE_RESP => 
                	null;

	            when CONFIG_OUTPUT_PARAMS_WRITE_ADDR => 
                    -- axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 20);
                    -- axi_awlen <= x"00"; 
                    -- axi_awsize <= "010";
                    -- axi_awvalid <= '1'; 
					null;
	            when CONFIG_OUTPUT_PARAMS_WRITE_DATA =>
	                -- if(M_AXI_WREADY = '1') then 
                        -- axi_wdata <= x"1B" & x"1B" & x"0060"; 
                        -- axi_wstrb <= "1111";
	                -- else 
                        -- axi_wdata <= (others => '0'); 
                        -- axi_wstrb <= "0000"; 
	                -- end if; 
					null;
	            when CONFIG_OUTPUT_PARAMS_WRITE_RESP => 
                	null;

	            when CONFIG_KERNEL_PARAMS_WRITE_ADDR => 
                    -- axi_awaddr <= std_logic_vector(unsigned(max_pool_axi_addr) + 24);
                    -- axi_awlen <= x"00"; 
                    -- axi_awsize <= "010";
                    -- axi_awvalid <= '1'; 
					null;
	            when CONFIG_KERNEL_PARAMS_WRITE_DATA =>
	                -- if(M_AXI_WREADY = '1') then 
                        -- axi_wdata <= x"03" & x"03" & x"02" & x"00"; 
                        -- axi_wstrb <= "1111";
	                -- else 
                        -- axi_wdata <= (others => '0'); 
                        -- axi_wstrb <= "0000"; 
	                -- end if; 
					null;
	            when CONFIG_KERNEL_PARAMS_WRITE_RESP => 
                	 null;

				when CONFIG_ADDR_MULT_0_WRITE_ADDR =>
					null;
				when CONFIG_ADDR_MULT_0_WRITE_DATA =>
					null;
				when CONFIG_ADDR_MULT_0_WRITE_RESP => 
					null;
				
				when CONFIG_CONTROL_WRITE_ADDR => 
					null;  
				when CONFIG_CONTROL_WRITE_DATA =>
					null;

				when CONFIG_CONTROL_WRITE_RESP => 
					null;
                 
                when HOLD_IRQ => 
                	null; 
                



                
   --             when READ_OUTPUT_READ_ADDRESS => 
                
   --             when READ_OUTPUT_READ_DATA => 
                
			--when READ_ADDRESS => 
			--	axi_araddr <= input_data_addr_reg; 
			--	axi_arlen <= std_logic_vector(to_unsigned(to_integer(unsigned(input_volume_size)*unsigned(pool_kernel_size)),8)); 
			--	axi_arvalid	<= '1';



			--when READ_DATA_FIRST_ROWS => 

			--	if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
			--		if(M_AXI_RVALID = '1') then 
			--			inbuff_din <= M_AXI_RDATA(15 downto 0); 
			--			inbuff_wr_en <= '1'; 
			--			read_beat_counter <= read_beat_counter + 1; 
			--			input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
			--		else 
			--			inbuff_din <= (others => '0'); 
			--			inbuff_wr_en <= '0'; 
			--			read_beat_counter <= read_beat_counter; 
			--			input_data_addr_reg <= input_data_addr_reg; 
			--		end if; 
			--	else 
			--		inbuff_din <= (others => '0'); 
			--		inbuff_wr_en <= '0'; 
			--		if (M_AXI_RLAST = '1') then 
			--			read_beat_counter <= (others => '0'); 
			--			row_counter <= row_counter + unsigned(pool_kernel_size); 
			--		else 
			--			read_beat_counter <= read_beat_counter; 
			--		end if; 
			--	end if; 
			

			--when READ_ADDRESS_STRIDE => 
			--	axi_araddr <= input_data_addr_reg; 
			--	axi_arlen <= std_logic_vector(to_unsigned(to_integer(unsigned(input_volume_size)*unsigned(stride)),8)); 
			--	axi_arvalid	<= '1';



			--when READ_DATA_STRIDE => 
			--	if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
			--		if(M_AXI_RVALID = '1') then 
			--			inbuff_din <= M_AXI_RDATA(15 downto 0); 
			--			inbuff_wr_en <= '1'; 
			--			read_beat_counter <= read_beat_counter + 1; 
			--			input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + 2); 
			--		else 
			--			inbuff_din <= (others => '0'); 
			--			inbuff_wr_en <= '0'; 
			--			read_beat_counter <= read_beat_counter; 
			--			input_data_addr_reg <= input_data_addr_reg; 
			--		end if; 
			--	else 
			--		inbuff_din <= (others => '0'); 
			--		inbuff_wr_en <= '0'; 
			--		if (M_AXI_RLAST = '1') then 
			--			read_beat_counter <= (others => '0'); 
			--			row_counter <= row_counter + unsigned(stride); 
			--		else 
			--			read_beat_counter <= read_beat_counter; 
			--		end if; 
			--	end if; 

			--when POOLER_EXECUTING => 
			--	null; 

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

      -- read_file: process(M_AXI_ACLK,M_AXI_ARESETN)
        -- file file_to_read: text; 
        -- variable read_ptr: line; 
		-- --variable fstatus : FILE_OPEN_STATUS; 
        -- variable data_from_file : std_logic_vector(G_DATA_WIDTH-1 downto 0); 
      -- begin 
        -- if (M_AXI_ARESETN = '0' or file_reset = '1') then 
      
          -- data_read <= (others => '0'); 
          -- close_flag <= '0';
          -- --file_open(file_to_read, filename, read_mode);  

    
        -- elsif (rising_edge(M_AXI_ACLK)) then 
		  -- data_read <= data_read; 
		  -- close_flag <= close_flag; 
		  

			  -- if(not(endfile(file_to_read)) and read_en = '1' and close_flag = '0') then 
		
				-- readline(file_to_read, read_ptr); 
				-- hread(read_ptr, data_from_file); 
				-- data_read <= data_from_file(G_DATA_WIDTH-1 downto 0);	 

			  -- elsif (endfile(file_to_read)) then 
				-- file_close(file_to_read); 
				-- close_flag <= '1'; 
			  -- else 
				-- data_read <= data_read; 
			  -- end if;  

		  
        -- end if; 
      -- end process;   
  
  
end implementation;
