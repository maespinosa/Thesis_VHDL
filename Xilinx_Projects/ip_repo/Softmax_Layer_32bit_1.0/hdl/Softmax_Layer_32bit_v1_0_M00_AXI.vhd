library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Softmax_Layer_32bit_v1_0_M00_AXI is
	generic (
		-- Users to add parameters here
		G_DATA_WIDTH : integer := 32; 
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
	    -- FROM LOGIC
		i_inbuff_full	          : in std_logic; 
		i_inbuff_almost_full      : in std_logic;  
		i_inbuff_empty            : in std_logic; 
		i_inbuff_almost_empty	  : in std_logic; 
	    i_outbuff_dout            : in std_logic_vector(G_DATA_WIDTH-1 downto 0); 
	    i_outbuff_full            : in std_logic; 
	    i_outbuff_almost_full     : in std_logic; 
	    i_outbuff_empty           : in std_logic; 
	    i_outbuff_almost_empty    : in std_logic; 
	    i_outbuff_valid	          : in std_logic;  
	    i_expbuff_full            : in std_logic; 
	    i_expbuff_almost_full     : in std_logic; 
	    i_expbuff_empty           : in std_logic; 
	    i_expbuff_almost_empty    : in std_logic; 
	    i_expbuff_valid           : in std_logic; 
		i_softmax_complete        : in std_logic;
	    i_busy                    : in std_logic; 

		-- TO LOGIC
	    o_num_elements            : out std_logic_vector(15 downto 0);   
		o_inbuff_din              : out std_logic_vector(G_DATA_WIDTH-1 downto 0); 
		o_inbuff_wr_en            : out std_logic; 
		o_outbuff_rd_en           : out std_logic; 
		o_data_loaded 			  : out std_logic;
		o_start					  : out std_logic; 

	   --FROM AXI SLAVE
	    i_control_reg            : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_status_reg             : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_input_data_addr_reg    : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	    i_output_data_addr_reg   : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_prediction_0_reg		 : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_prediction_1_reg		 : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_prediction_2_reg		 : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_prediction_3_reg		 : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    i_prediction_4_reg		 : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    --i_prediction_5_reg		 : in std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);

	    i_slv_reg_rden			 : in std_logic; 
	    i_slv_reg_wren			 : in std_logic_vector(9 downto 0); 

	   --TO AXI SLAVE
	    o_control_reg            : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_status_reg             : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_input_data_addr_reg    : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0);
	    o_output_data_addr_reg   : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_prediction_0_reg		 : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_prediction_1_reg		 : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_prediction_2_reg		 : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_prediction_3_reg		 : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    o_prediction_4_reg		 : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	    --o_prediction_5_reg		 : out std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
		o_softmax_complete		 : out std_logic; 

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
end Softmax_Layer_32bit_v1_0_M00_AXI;

architecture implementation of Softmax_Layer_32bit_v1_0_M00_AXI is

	-- I/O Connections assignments

    type master_state is (IDLE, READ_ADDRESS, READ_DATA,SOFTMAX_EXECUTING, WRITE_ADDRESS, WRITE_ALL, WRITE_RESPONSE); 

    signal current_state : master_state; 
    signal next_state : master_state; 


	-- AXI4FULL signals
	--AXI4 internal temp signals
	signal axi_awaddr	: std_logic_vector(C_M_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awlen    : std_logic_vector(7 downto 0); 
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
	--write beat count in a burst
	signal write_beat_counter : unsigned(7 downto 0); 
	--read beat count in a burst
	signal read_beat_counter	: unsigned(7 downto 0);

	signal outbuff_rd_en          : std_logic; 
	signal inbuff_din             : std_logic_vector(g_data_width-1 downto 0); 
	signal inbuff_wr_en           : std_logic; 
	signal num_elements           : STD_LOGIC_VECTOR(15 downto 0);

	signal input_data_addr_reg    : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 
	signal output_data_addr_reg   : std_logic_vector(C_M_AXI_DATA_WIDTH-1 downto 0); 

	signal row_counter			  : unsigned(7 downto 0); 
	signal channel_counter	      : unsigned(15 downto 0); 
	signal writes_remaining 	  : unsigned(15 downto 0);
	signal reads_remaining		  : unsigned(15 downto 0);  
	signal calculated 			  : std_logic; 

	signal pred_prob_0 			  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_prob_1 			  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_prob_2			  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_prob_3 			  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_prob_4 			  : std_logic_vector(g_data_width-1 downto 0); 

	signal pred_class_0 		  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_class_1 		  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_class_2			  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_class_3 		  : std_logic_vector(g_data_width-1 downto 0); 
	signal pred_class_4 		  : std_logic_vector(g_data_width-1 downto 0); 

	signal more_bursts_needed     : std_logic; 
	signal data_loaded 			  : std_logic; 
	
	type array_type_5x32bit is array (4 downto 0) of std_logic_vector(31 downto 0);
	signal prob_array 			  : array_type_5x32bit; 
	signal class_array			  : array_type_5x32bit; 
	signal class_counter		  : unsigned(31 downto 0); 
	
	signal start		             : std_logic; 
	signal start_reg				 : std_logic_vector(1 downto 0); 

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
	M_AXI_ARSIZE	<= "010";
	M_AXI_ARBURST	<= "01";
	M_AXI_ARLOCK	<= '0';
    M_AXI_ARCACHE	<= "0010";
	M_AXI_ARPROT	<= "000";
	M_AXI_ARQOS	    <= x"0";
	M_AXI_ARUSER	<= (others => '1');
	M_AXI_ARVALID	<= axi_arvalid;
	M_AXI_RREADY	<= axi_rready;


	----Example design I/O
	--TXN_DONE	<= compare_done;
	----Burst size in bytes
	--burst_size_bytes	<= std_logic_vector( to_unsigned((C_M_AXI_BURST_LEN * (C_M_AXI_DATA_WIDTH/8)),C_TRANSACTIONS_NUM+3) );


	o_outbuff_rd_en          <= outbuff_rd_en; 
	o_inbuff_din             <= inbuff_din; 
	o_inbuff_wr_en           <= inbuff_wr_en; 
	o_num_elements			 <= num_elements; 

	o_control_reg            <= i_control_reg;

	o_status_reg(0)          <= i_busy; 
	o_status_reg(3 downto 1) <= (others => '0'); 
	o_status_reg(4)			 <= i_softmax_complete; 
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
    o_status_reg(23 downto 22) <= (others => '0'); 
    o_status_reg(24)		 <= i_expbuff_empty; 
    o_status_reg(25)         <= i_expbuff_almost_empty; 
    o_status_reg(27 downto 26) <= (others => '0'); 
    o_status_reg(28)         <= i_expbuff_full; 
    o_status_reg(29)         <= i_expbuff_almost_full; 
	o_status_reg(31 downto 30) <= (others => '0'); 


	o_input_data_addr_reg    <= input_data_addr_reg; 
	o_output_data_addr_reg   <= output_data_addr_reg;

	o_prediction_0_reg 	<= i_prediction_0_reg; 
	o_prediction_1_reg 	<= i_prediction_1_reg; 
	o_prediction_2_reg	<= i_prediction_2_reg; 
	o_prediction_3_reg 	<= i_prediction_3_reg; 
	o_prediction_4_reg 	<= i_prediction_4_reg; 
	
	pred_prob_0 	<= prob_array(0); 
	pred_prob_1 	<= prob_array(1);
	pred_prob_2		<= prob_array(2);
	pred_prob_3 	<= prob_array(3);
	pred_prob_4 	<= prob_array(4);
	
	pred_class_0 	<= class_array(0);
	pred_class_1 	<= class_array(1);
	pred_class_2	<= class_array(2);
	pred_class_3 	<= class_array(3);
	pred_class_4 	<= class_array(4);
	
	o_softmax_complete <= i_softmax_complete;

	TXN_DONE <= '0'; 
	ERROR <= '0'; 
	
	o_data_loaded <= data_loaded; 
	
	o_start <= start; 


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
			elsif(i_softmax_complete = '1') then 
				start <= '0';
			-- else 
				-- start <= '0'; 
			end if; 
		end if; 
	end process; 


	next_state_comb: process(current_state,start, i_control_reg,M_AXI_ARREADY,i_inbuff_full,M_AXI_RLAST,more_bursts_needed,i_softmax_complete,M_AXI_AWREADY,i_outbuff_empty,i_outbuff_valid,M_AXI_WREADY,write_beat_counter,M_AXI_BVALID) is 
	begin 
		axi_rready <= '0'; 
		axi_bready <= '0'; 
		outbuff_rd_en <= '0'; 
		data_loaded <= '0'; 

		case current_state is 
		    when IDLE => 
		    	--if (i_control_reg(0) = '1') then 
				if (start = '1') then 
		    		next_state <= READ_ADDRESS; 
		    	else 
		    		next_state <= IDLE; 
		    	end if; 


			when READ_ADDRESS => 
				if(M_AXI_ARREADY = '1') then 
					next_state <= READ_ADDRESS; 
				else 
					next_state <= READ_DATA; 
				end if; 

			when READ_DATA => 
				axi_rready <= '1'; 
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					--axi_rready <= '1'; 
					next_state <= READ_DATA; 
				else 
					next_state <= READ_DATA; 
					--axi_rready <= '0'; 
					if(M_AXI_RLAST = '1' and more_bursts_needed = '0') then 
						next_state <= SOFTMAX_EXECUTING; 
					elsif(M_AXI_RLAST = '1' and more_bursts_needed = '1') then 
					    next_state <= READ_ADDRESS; 
					end if; 

				end if; 

			when SOFTMAX_EXECUTING => 
				data_loaded <= '1'; 
				if(i_softmax_complete = '1') then 
					next_state <= WRITE_ADDRESS; 
				else 
					next_state <= SOFTMAX_EXECUTING; 
				end if;


			when WRITE_ADDRESS => 
				if(M_AXI_AWREADY = '1') then 
					next_state <= WRITE_ALL; --READ_ADDRESS; 
				else 
					next_state <= WRITE_ADDRESS; --READ_DATA_FIRST_ROWS; 
				end if;


			when WRITE_ALL => 
 
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1' and M_AXI_WREADY = '1') then 
					outbuff_rd_en <= '1'; 
                
					if(write_beat_counter < unsigned(axi_awlen) and more_bursts_needed = '0') then 
						next_state <= WRITE_ALL;
					elsif(write_beat_counter < 255 and more_bursts_needed = '1') then 
						next_state <= WRITE_ALL;
					else 
						next_state <= WRITE_RESPONSE;
					end if; 
				else 
					-- if(write_beat_counter = unsigned(axi_awlen)) then 
						-- next_state <= WRITE_RESPONSE;
					-- else 
						next_state <= WRITE_ALL;
					--end if; 

					outbuff_rd_en <= '0'; 
				end if; 


			when WRITE_RESPONSE => 
				axi_bready <= '1'; 
				next_state <= WRITE_RESPONSE; 
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




	read_process: process(M_AXI_ACLK,M_AXI_ARESETN) is 
	begin 
		if(M_AXI_ARESETN = '0') then 
			axi_araddr        <= (others => '0'); 
			axi_arlen         <= (others => '0');  
			axi_arvalid	      <= '0';
			axi_awaddr         <= (others => '0'); 
			axi_awlen          <= (others => '0'); 
			axi_awvalid        <= '0'; 
			axi_wstrb          <= (others => '0'); 
			axi_wdata 				<= (others => '0'); 
			axi_wvalid 				<= '0'; 
			axi_wlast 				<= '0'; 
			inbuff_din        <= (others => '0'); 
			inbuff_wr_en      <= '0'; 
			read_beat_counter <= (others => '0'); 
			writes_remaining  <= (others => '0'); 
			reads_remaining   <= (others => '0'); 
			more_bursts_needed <= '0'; 
			calculated         <= '0'; 
			input_data_addr_reg <= (others => '0'); 
			output_data_addr_reg <= (others => '0'); 
			channel_counter     <= (others => '0'); 
			write_beat_counter <= (others => '0');
			class_counter 		<= (others => '0'); 
			prob_array <= (others => (others => '0')); 
			class_array <= (others => (others => '0'));

		elsif(rising_edge(M_AXI_ACLK)) then 

			-- axi_araddr         <= axi_araddr; 
			-- axi_arlen          <= axi_arlen; 
			-- axi_arvalid	       <= axi_arvalid;
			-- inbuff_din         <= inbuff_din; 
			-- inbuff_wr_en       <= inbuff_wr_en; 
			-- read_beat_counter  <= read_beat_counter; 
			-- writes_remaining   <= writes_remaining;
			-- reads_remaining    <= reads_remaining;  
			-- axi_awaddr         <= axi_awaddr;
			-- axi_awlen          <= axi_awlen; 
			-- more_bursts_needed <= more_bursts_needed; 
			-- calculated         <= calculated;  
			-- axi_awvalid        <= axi_awvalid; 
			-- axi_wstrb          <= axi_wstrb; 
			-- input_data_addr_reg <= input_data_addr_reg; 
			-- output_data_addr_reg <= output_data_addr_reg; 


			case current_state is 

			when IDLE => 
				axi_araddr        <= (others => '0'); 
				axi_arlen         <= (others => '0');  
				axi_arvalid	      <= '0';
				axi_awaddr         <= (others => '0'); 
				axi_awlen          <= (others => '0'); 
				axi_awvalid        <= '0'; 
				axi_wstrb          <= (others => '0'); 
				axi_wdata 				<= (others => '0'); 
				axi_wvalid 				<= '0'; 
				axi_wlast 				<= '0'; 
				inbuff_din        <= (others => '0'); 
				inbuff_wr_en      <= '0'; 
				read_beat_counter <= (others => '0'); 
				writes_remaining  <= (others => '0'); 
				more_bursts_needed <= '0'; 
				calculated         <= '0'; 
				channel_counter     <= (others => '0'); 
				write_beat_counter <= (others => '0');
				class_counter 		<= (others => '0'); 
				-- prob_array <= (others => (others => '0')); 
				-- class_array <= (others => (others => '0'));
			
			
				if(i_slv_reg_wren(0) = '1') then 
					num_elements <= i_control_reg(31 downto 16); 
					reads_remaining <= unsigned(i_control_reg(31 downto 16))-1; 
				else 
					num_elements <= num_elements; 
					reads_remaining <= reads_remaining; 
				end if; 
			
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
				axi_araddr <= input_data_addr_reg; 
				axi_arvalid	<= '1';
				calculated <= '1'; 
				
				inbuff_din <= (others => '0'); 
				inbuff_wr_en <= '0'; 


				if(reads_remaining > 255 and calculated = '0') then 
					axi_arlen <= x"FF"; 
					reads_remaining <= reads_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(reads_remaining <= 255 and calculated = '0') then 
                    axi_arlen <= std_logic_vector(to_unsigned(to_integer(reads_remaining),8)); 
					more_bursts_needed <= '0'; 
					reads_remaining <= (others => '0'); 
				else 
					axi_arlen <= axi_arlen; 
					more_bursts_needed <= more_bursts_needed; 
				end if;



			when READ_DATA => 
				calculated <= '0'; 
				axi_arvalid <= '0'; 
				
				if(i_inbuff_full = '0' and M_AXI_RLAST = '0') then 
					if(M_AXI_RVALID = '1') then 
						if(input_data_addr_reg(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
						elsif(input_data_addr_reg(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000";
						elsif(g_bytes_per_data = 4) then 
							inbuff_din <= M_AXI_RDATA; 
						end if; 
						
						inbuff_wr_en <= '1'; 
						read_beat_counter <= read_beat_counter + 1; 
						input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + g_bytes_per_data); 
					else 
						inbuff_din <= (others => '0'); 
						inbuff_wr_en <= '0'; 
						read_beat_counter <= read_beat_counter; 
						input_data_addr_reg <= input_data_addr_reg; 
					end if; 
				else 
					--inbuff_din <= (others => '0'); 
					--inbuff_wr_en <= '0'; 
					
					if (M_AXI_RLAST = '1') then 
						--read_beat_counter <= (others => '0'); 
						
						
						if(input_data_addr_reg(1 downto 0) = "00" and g_bytes_per_data = 2) then 
							inbuff_din <= M_AXI_RDATA(15 downto 0) & x"0000"; 
						elsif(input_data_addr_reg(1 downto 0) = "10" and g_bytes_per_data = 2) then 
							inbuff_din <= M_AXI_RDATA(31 downto 16) & x"0000";
						elsif(g_bytes_per_data = 4)then 
							inbuff_din <= M_AXI_RDATA;
						end if; 
						inbuff_wr_en <= '1'; 
						read_beat_counter <= (others => '0'); 
						
						if(more_bursts_needed = '0') then 
							input_data_addr_reg <= (others => '0'); 
						else 
							input_data_addr_reg <= std_logic_vector(unsigned(input_data_addr_reg) + g_bytes_per_data); 
						end if; 
					--else 
						--read_beat_counter <= read_beat_counter; 
					else 
						read_beat_counter <= read_beat_counter; 
						inbuff_din <= (others => '0'); 
						inbuff_wr_en <= '0'; 
					end if; 

				end if; 

			when SOFTMAX_EXECUTING => 
				more_bursts_needed <= '0'; 
				reads_remaining <= (others => '0'); 
				writes_remaining <= unsigned(num_elements)-1; 

			
			when WRITE_ADDRESS => 
				axi_awaddr <= output_data_addr_reg;
				calculated <= '1';  
				axi_awvalid <= '1'; 
				


				if(writes_remaining > 255 and calculated = '0') then 
					axi_awlen <= x"FF"; 
					writes_remaining <= writes_remaining - 256; 
					more_bursts_needed <= '1'; 
				elsif(writes_remaining <= 255 and calculated = '0') then 
					axi_awlen <= std_logic_vector(writes_remaining(7 downto 0)); 
					more_bursts_needed <= '0'; 
					writes_remaining <= (others => '0'); 
				else 
					axi_awlen <= axi_awlen; 
					more_bursts_needed <= more_bursts_needed; 
				end if;




			when WRITE_ALL =>
				calculated <= '0'; 
				axi_awvalid <= '0';
				if(i_outbuff_empty = '0' and i_outbuff_valid = '1' and M_AXI_WREADY = '1') then 
			
					axi_wvalid <= '1'; 
					
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
					
					output_data_addr_reg <= std_logic_vector(unsigned(output_data_addr_reg) + g_bytes_per_data);
								
					if(write_beat_counter < unsigned(axi_awlen)) then 
						write_beat_counter <= write_beat_counter + 1;  
						class_counter <= class_counter + 1; 
						axi_wlast <= '0'; 	
					else 
						axi_wlast <= '1'; 
						write_beat_counter <= (others => '0');
						channel_counter <= channel_counter + 1; 
					end if; 
					
					
					if(signed(i_outbuff_dout) >= signed(prob_array(0))) then 
						prob_array(0) <= i_outbuff_dout; 
						prob_array(1) <= prob_array(0); 
						prob_array(2) <= prob_array(1); 
						prob_array(3) <= prob_array(2); 
						prob_array(4) <= prob_array(3); 
						
						class_array(0) <= std_logic_vector(class_counter); 
						class_array(1) <= class_array(0); 
						class_array(2) <= class_array(1); 
						class_array(3) <= class_array(2); 
						class_array(4) <= class_array(3); 
					elsif(signed(i_outbuff_dout) >= signed(prob_array(1))) then 
						prob_array(1) <= i_outbuff_dout; 
						prob_array(2) <= prob_array(1); 
						prob_array(3) <= prob_array(2); 
						prob_array(4) <= prob_array(3); 
 						
						class_array(1) <= std_logic_vector(class_counter); 
						class_array(2) <= class_array(1); 
						class_array(3) <= class_array(2); 
						class_array(4) <= class_array(3); 
					elsif(signed(i_outbuff_dout) >= signed(prob_array(2))) then 
						prob_array(2) <= i_outbuff_dout; 
						prob_array(3) <= prob_array(2); 
						prob_array(4) <= prob_array(3); 
 						
						class_array(2) <= std_logic_vector(class_counter); 
						class_array(3) <= class_array(2); 
						class_array(4) <= class_array(3); 
					elsif(signed(i_outbuff_dout) >= signed(prob_array(3))) then 
						prob_array(3) <= i_outbuff_dout; 
						prob_array(4) <= prob_array(3); 

						class_array(3) <= std_logic_vector(class_counter); 
						class_array(4) <= class_array(3); 
					elsif(signed(i_outbuff_dout) >= signed(prob_array(4))) then 
						prob_array(4) <= i_outbuff_dout; 

						class_array(4) <= std_logic_vector(class_counter); 
					end if; 
					

						
						

				else 
					axi_wdata <= (others => '0'); 
					axi_wvalid <= '0'; 
					axi_wstrb <= (others => '0');  
					write_beat_counter <= write_beat_counter; 
					output_data_addr_reg <= output_data_addr_reg; 
				end if; 

			when WRITE_RESPONSE =>  
				axi_wdata <= (others => '0'); 
				axi_wvalid <= '0'; 
				axi_wstrb <= "0000"; 
				axi_wlast <= '0'; 

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
