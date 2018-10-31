library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

entity Virtual_Memory_v1_0_S00_AXI is
	generic (
		-- Users to add parameters here
		G_BASE_ADDRESS : std_logic_vector(31 downto 0) := x"8000_0000"; 
		-- User parameters ends
		-- Do not modify the parameters beyond this line

		-- Width of ID for for write address, write data, read address and read data
		C_S_AXI_ID_WIDTH	: integer	:= 1;
		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH	: integer	:= 10;
		-- Width of optional user defined signal in write address channel
		C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
		-- Width of optional user defined signal in read address channel
		C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
		-- Width of optional user defined signal in write data channel
		C_S_AXI_WUSER_WIDTH	: integer	:= 0;
		-- Width of optional user defined signal in read data channel
		C_S_AXI_RUSER_WIDTH	: integer	:= 0;
		-- Width of optional user defined signal in write response channel
		C_S_AXI_BUSER_WIDTH	: integer	:= 0
	);
	port (
		-- Users to add ports here
		--i_data_written : in std_logic; 

		-- User ports ends
		-- Do not modify the ports beyond this line

		-- Global Clock Signal
		S_AXI_ACLK	: in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN	: in std_logic;
		-- Write Address ID
		S_AXI_AWID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		-- Write address
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Burst length. The burst length gives the exact number of transfers in a burst
		S_AXI_AWLEN	: in std_logic_vector(7 downto 0);
		-- Burst size. This signal indicates the size of each transfer in the burst
		S_AXI_AWSIZE	: in std_logic_vector(2 downto 0);
		-- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
		S_AXI_AWBURST	: in std_logic_vector(1 downto 0);
		-- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
		S_AXI_AWLOCK	: in std_logic;
		-- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
		S_AXI_AWCACHE	: in std_logic_vector(3 downto 0);
		-- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		-- Quality of Service, QoS identifier sent for each
    -- write transaction.
		S_AXI_AWQOS	: in std_logic_vector(3 downto 0);
		-- Region identifier. Permits a single physical interface
    -- on a slave to be used for multiple logical interfaces.
		S_AXI_AWREGION	: in std_logic_vector(3 downto 0);
		-- Optional User-defined signal in the write address channel.
		S_AXI_AWUSER	: in std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0);
		-- Write address valid. This signal indicates that
    -- the channel is signaling valid write address and
    -- control information.
		S_AXI_AWVALID	: in std_logic;
		-- Write address ready. This signal indicates that
    -- the slave is ready to accept an address and associated
    -- control signals.
		S_AXI_AWREADY	: out std_logic;
		-- Write Data
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes. This signal indicates which byte
    -- lanes hold valid data. There is one write strobe
    -- bit for each eight bits of the write data bus.
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write last. This signal indicates the last transfer
    -- in a write burst.
		S_AXI_WLAST	: in std_logic;
		-- Optional User-defined signal in the write data channel.
		S_AXI_WUSER	: in std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0);
		-- Write valid. This signal indicates that valid write
    -- data and strobes are available.
		S_AXI_WVALID	: in std_logic;
		-- Write ready. This signal indicates that the slave
    -- can accept the write data.
		S_AXI_WREADY	: out std_logic;
		-- Response ID tag. This signal is the ID tag of the
    -- write response.
		S_AXI_BID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		-- Write response. This signal indicates the status
    -- of the write transaction.
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		-- Optional User-defined signal in the write response channel.
		S_AXI_BUSER	: out std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
		-- Write response valid. This signal indicates that the
    -- channel is signaling a valid write response.
		S_AXI_BVALID	: out std_logic;
		-- Response ready. This signal indicates that the master
    -- can accept a write response.
		S_AXI_BREADY	: in std_logic;
		-- Read address ID. This signal is the identification
    -- tag for the read address group of signals.
		S_AXI_ARID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		-- Read address. This signal indicates the initial
    -- address of a read burst transaction.
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Burst length. The burst length gives the exact number of transfers in a burst
		S_AXI_ARLEN	: in std_logic_vector(7 downto 0);
		-- Burst size. This signal indicates the size of each transfer in the burst
		S_AXI_ARSIZE	: in std_logic_vector(2 downto 0);
		-- Burst type. The burst type and the size information, 
    -- determine how the address for each transfer within the burst is calculated.
		S_AXI_ARBURST	: in std_logic_vector(1 downto 0);
		-- Lock type. Provides additional information about the
    -- atomic characteristics of the transfer.
		S_AXI_ARLOCK	: in std_logic;
		-- Memory type. This signal indicates how transactions
    -- are required to progress through a system.
		S_AXI_ARCACHE	: in std_logic_vector(3 downto 0);
		-- Protection type. This signal indicates the privilege
    -- and security level of the transaction, and whether
    -- the transaction is a data access or an instruction access.
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		-- Quality of Service, QoS identifier sent for each
    -- read transaction.
		S_AXI_ARQOS	: in std_logic_vector(3 downto 0);
		-- Region identifier. Permits a single physical interface
    -- on a slave to be used for multiple logical interfaces.
		S_AXI_ARREGION	: in std_logic_vector(3 downto 0);
		-- Optional User-defined signal in the read address channel.
		S_AXI_ARUSER	: in std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);
		-- Write address valid. This signal indicates that
    -- the channel is signaling valid read address and
    -- control information.
		S_AXI_ARVALID	: in std_logic;
		-- Read address ready. This signal indicates that
    -- the slave is ready to accept an address and associated
    -- control signals.
		S_AXI_ARREADY	: out std_logic;
		-- Read ID tag. This signal is the identification tag
    -- for the read data group of signals generated by the slave.
		S_AXI_RID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		-- Read Data
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response. This signal indicates the status of
    -- the read transfer.
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		-- Read last. This signal indicates the last transfer
    -- in a read burst.
		S_AXI_RLAST	: out std_logic;
		-- Optional User-defined signal in the read address channel.
		S_AXI_RUSER	: out std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
		-- Read valid. This signal indicates that the channel
    -- is signaling the required read data.
		S_AXI_RVALID	: out std_logic;
		-- Read ready. This signal indicates that the master can
    -- accept the read data and response information.
		S_AXI_RREADY	: in std_logic
	);
end Virtual_Memory_v1_0_S00_AXI;

architecture arch_imp of Virtual_Memory_v1_0_S00_AXI is

	-- AXI4FULL signals
	signal axi_awsize 	: std_logic_vector(2 downto 0);
	signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready	: std_logic;
	signal axi_wdata 	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_wvalid   : std_logic; 
	signal axi_wlast    : std_logic;
	signal axi_wready	: std_logic;
	signal axi_bresp	: std_logic_vector(1 downto 0);
	signal axi_buser	: std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
	signal axi_bvalid	: std_logic;
	signal axi_arsize   : std_logic_vector(2 downto 0); 
	signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready	: std_logic;
	signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal axi_rresp	: std_logic_vector(1 downto 0);
	signal axi_rlast	: std_logic;
	signal axi_ruser	: std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
	signal axi_rvalid	: std_logic;
	
	signal axi_arburst      : std_logic_vector(2-1 downto 0);
	signal axi_awburst      : std_logic_vector(2-1 downto 0);
	signal axi_arlen      : std_logic_vector(8-1 downto 0);
	signal axi_awlen      : std_logic_vector(8-1 downto 0);
	
	signal beat_counter   : unsigned(15 downto 0); 
	signal write_ram_data : std_logic_vector(31 downto 0); 
	
	signal match : std_logic; 
	signal truth_data : std_logic_vector(31 downto 0); 
	
	signal address_temp : std_logic_vector(31 downto 0); 
	
	constant c_bytes_per_data			: integer := 4; 
	
	constant c_input_layer1_pixels 		: integer := 227*227*3; 
	
	constant c_weights_layer1_pixels 	: integer := 11*11*3*96; 
	constant c_bias_layer1_pixels 		: integer := 96; 
	constant c_conv_layer1_pixels 		: integer := 55*55*96; 
	
	constant c_maxpool_layer1_pixels 	: integer := 27*27*96; 
	
	constant c_weights_layer2_pixels 	: integer := 5*5*96*256; 
	constant c_bias_layer2_pixels 		: integer := 256; 
	constant c_conv_layer2_pixels 		: integer := 27*27*256; 
	
	constant c_conv_layer4_pixels 		: integer := 13*13*384; 

	constant c_maxpool_layer3_pixels 	: integer := 27*27*96; 	
	constant c_weights_layer5_pixels 	: integer := 3*3*384*256; 
	constant c_bias_layer5_pixels 		: integer := 256; 
	constant c_conv_layer5_pixels 		: integer := 13*13*256; 

	constant c_weights_layer6_pixels 	: integer := 6*6*256*4096; 
	constant c_bias_layer6_pixels 		: integer := 4096; 
	constant c_fc_layer6_pixels 		: integer := 4096; 
	
	constant c_fc_layer8_pixels 		: integer := 1000; 
	
	constant c_output_layer1_pixels : integer := 55*55*96; 
	constant c_output_layer2_pixels : integer := 27*27*256; 
	
	constant c_input_layer1_region_start : std_logic_vector(31 downto 0) := (others => '0'); 
	constant c_input_layer1_region_end : std_logic_vector(31 downto 0) := x"0004_B7FF"; 
	
	constant c_weights_layer1_region_start : std_logic_vector(31 downto 0) := x"0004_B800"; 
	constant c_weights_layer1_region_end : std_logic_vector(31 downto 0) := x"0006_D8FF"; 
	
	constant c_conv_layer1_region_start : std_logic_vector(31 downto 0) := x"0006_D900"; 
	constant c_conv_layer1_region_end : std_logic_vector(31 downto 0) := x"0018_92FF"; 
	
	constant c_maxpool_layer1_region_start : std_logic_vector(31 downto 0) := x"0018_9300"; 
	constant c_maxpool_layer1_region_end : std_logic_vector(31 downto 0) := x"001C_D8FF"; 
	
	constant c_weights_layer2_region_start : std_logic_vector(31 downto 0) := x"001C_D900"; 
	constant c_weights_layer2_region_end : std_logic_vector(31 downto 0) := x"0042_5BFF"; 
	
	constant c_conv_layer2_region_start : std_logic_vector(31 downto 0) := x"0042_5A00"; 
	constant c_conv_layer2_region_end : std_logic_vector(31 downto 0) := x"004D_BEFF"; 
	
	constant c_maxpool_layer2_region_start : std_logic_vector(31 downto 0) := x"004D_BF00"; 
	constant c_maxpool_layer2_region_end : std_logic_vector(31 downto 0) := x"0050_63FF"; 
	
	-- constant c_weights_layer3_region_start : std_logic_vector(31 downto 0) := x"0050_6400"; 
	-- constant c_weights_layer3_region_end : std_logic_vector(31 downto 0) := x"0086_64FF"; 
	
	-- constant c_conv_layer3_region_start : std_logic_vector(31 downto 0) := x"0086_6500"; 
	-- constant c_conv_layer3_region_end : std_logic_vector(31 downto 0) := x"008A_5AFF"; 
	
	-- constant c_weights_layer4_region_start : std_logic_vector(31 downto 0) := x"008A_5B00"; 
	-- constant c_weights_layer4_region_end : std_logic_vector(31 downto 0) := x"00DB_5BFF"; 
	
	constant c_conv_layer4_region_start : std_logic_vector(31 downto 0) := x"00DB_5A00"; 
	constant c_conv_layer4_region_end : std_logic_vector(31 downto 0) := x"00DF_52FF"; 
	
	constant c_weights_layer5_region_start : std_logic_vector(31 downto 0) := x"00DF_5300"; 
	constant c_weights_layer5_region_end : std_logic_vector(31 downto 0) := x"0115_53FF"; 
	
	constant c_conv_layer5_region_start : std_logic_vector(31 downto 0) := x"0115_5400"; 
	constant c_conv_layer5_region_end : std_logic_vector(31 downto 0) := x"0117_F8FF"; 
	
	constant c_maxpool_layer3_region_start : std_logic_vector(31 downto 0) := x"0117_F900"; 
	constant c_maxpool_layer3_region_end : std_logic_vector(31 downto 0) := x"0118_88FF"; 
	
	constant c_weights_layer6_region_start : std_logic_vector(31 downto 0) := x"0400_0000"; 
	constant c_weights_layer6_region_end : std_logic_vector(31 downto 0) := x"0D00_00FF"; 
	
	constant c_fc_layer6_region_start : std_logic_vector(31 downto 0) := x"0D00_0100"; 
	constant c_fc_layer6_region_end : std_logic_vector(31 downto 0) := x"0D00_41FF"; 
	
	constant c_fc_layer8_region_start : std_logic_vector(31 downto 0) := x"18FA_0100"; 
	constant c_fc_layer8_region_end : std_logic_vector(31 downto 0) := x"18FB_00FF"; 
	
	constant c_bias_layer1_region_start : std_logic_vector(31 downto 0) := x"1C00_0000"; 
	constant c_bias_layer1_region_end : std_logic_vector(31 downto 0) := x"1C00_01FF"; 
	
	constant c_bias_layer2_region_start : std_logic_vector(31 downto 0) := x"1C00_0200"; 
	constant c_bias_layer2_region_end : std_logic_vector(31 downto 0) := x"1C00_040F"; 
	
	constant c_bias_layer5_region_start : std_logic_vector(31 downto 0) := x"1C00_1030"; 
	constant c_bias_layer5_region_end : std_logic_vector(31 downto 0) := x"1C00_113F"; 
	
	constant c_bias_layer6_region_start : std_logic_vector(31 downto 0) := x"1C00_1140"; 
	constant c_bias_layer6_region_end : std_logic_vector(31 downto 0) := x"1C00_214F"; 
	
	constant c_probs_region_start : std_logic_vector(31 downto 0) := x"1C00_4000"; 
	constant c_probs_region_end : std_logic_vector(31 downto 0) := x"1C00_4FFF"; 
	
	
	--constant c_output_layer1_region_start : std_logic_vector(31 downto 0) := x"000A_0000"; 
	--constant c_output_layer1_region_end : std_logic_vector(31 downto 0) := x"0013_FFFF"; 
	
    type state_type is 
        (	
            IDLE, 
            READ_ADDRESS, 
			READ_DATA, 
			WRITE_ADDRESS, 
			WRITE_DATA, 
			WRITE_RESPONSE
        ); 
    signal current_state 				: state_type; 
    signal next_state 					: state_type;  

	
	--type output_mem_type is array(0 to (c_output_layer1_pixels)-1) of std_logic_vector(31 downto 0); 
	--signal output_mem : output_mem_type; 
	
	type image_mem_type is array(0 to (c_input_layer1_pixels*2)) of std_logic_vector(7 downto 0); 
    type W1_mem_type is array(0 to (c_weights_layer1_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type b1_mem_type is array(0 to (c_bias_layer1_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type conv1_mem_type is array(0 to (c_conv_layer1_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	
	type MP1_mem_type is array(0 to (c_maxpool_layer1_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	
	type W2_mem_type is array(0 to (c_weights_layer2_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type b2_mem_type is array(0 to (c_bias_layer2_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type conv2_mem_type is array(0 to (c_conv_layer2_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	
	
	type conv4_mem_type is array(0 to (c_conv_layer4_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	

	type W5_mem_type is array(0 to (c_weights_layer5_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type b5_mem_type is array(0 to (c_bias_layer5_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type conv5_mem_type is array(0 to (c_conv_layer5_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	
	
	type MP3_mem_type is array(0 to (c_maxpool_layer3_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type W6_mem_type is array(0 to (c_weights_layer6_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type b6_mem_type is array(0 to (c_bias_layer6_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type fc6_mem_type is array(0 to (c_fc_layer6_pixels*c_bytes_per_data*4)) of std_logic_vector(7 downto 0); 
	
	type fc8_mem_type is array(0 to (c_fc_layer8_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	type probs_mem_type is array(0 to (c_fc_layer8_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	
	type conv1_truth_mem_type is array(0 to c_conv_layer1_pixels*c_bytes_per_data) of std_logic_vector(7 downto 0); 
	type conv5_truth_mem_type is array(0 to c_conv_layer5_pixels*c_bytes_per_data*2) of std_logic_vector(7 downto 0);
	type affine6_truth_mem_type is array(0 to c_fc_layer6_pixels*c_bytes_per_data) of std_logic_vector(7 downto 0);
	type mp1_truth_mem_type is array(0 to (c_maxpool_layer1_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0);
	
	type prob_truth_mem_type is array(0 to (c_fc_layer8_pixels*c_bytes_per_data)) of std_logic_vector(7 downto 0); 
	
	--READ ORIGINAL IMAGE FILE
    impure function read_image_file(FileName : STRING) return image_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : image_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_input_layer1_pixels*2) loop 
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	
	--READ W1 file 
    impure function read_W1_file(FileName : STRING) return W1_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : W1_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_weights_layer1_pixels*c_bytes_per_data) loop --4718591 loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end;  
	--READ b1 file 
    impure function read_b1_file(FileName : STRING) return b1_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : b1_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_bias_layer1_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	--READ CONV1 file 
    impure function read_conv1_file(FileName : STRING) return conv1_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : conv1_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_conv_layer1_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
    
	--READ MAXPOOL1 file 
    impure function read_MP1_file(FileName : STRING) return MP1_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : MP1_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_maxpool_layer1_pixels*c_bytes_per_data) loop 
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end;  
	
	--READ W2 file 
    impure function read_W2_file(FileName : STRING) return W2_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : W2_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_weights_layer2_pixels*c_bytes_per_data) loop --4718591 loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end;  
	--READ b2 file 
    impure function read_b2_file(FileName : STRING) return b2_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : b2_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_bias_layer2_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	--READ CONV2 file 
    impure function read_conv2_file(FileName : STRING) return conv2_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : conv2_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_conv_layer2_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	
	--READ CONV4 file 
    impure function read_conv4_file(FileName : STRING) return conv4_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : conv4_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_conv_layer4_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
		
	--READ W5 file 
    impure function read_W5_file(FileName : STRING) return W5_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : W5_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_weights_layer5_pixels*c_bytes_per_data) loop --4718591 loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end;  
	--READ b5 file 
    impure function read_b5_file(FileName : STRING) return b5_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : b5_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_bias_layer5_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	--READ CONV5 file 
    impure function read_conv5_file(FileName : STRING) return conv5_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : conv5_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_conv_layer5_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	
    
	--READ MAXPOOL3 file 
    impure function read_MP3_file(FileName : STRING) return MP3_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : MP3_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_maxpool_layer3_pixels*c_bytes_per_data) loop 
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end;  
	
	--READ W6 file 
    impure function read_W6_file(FileName : STRING) return W6_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : W6_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_weights_layer6_pixels*c_bytes_per_data) loop --4718591 loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end;  
	--READ b6 file 
    impure function read_b6_file(FileName : STRING) return b6_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : b6_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_bias_layer6_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	--READ FC6 file 
    impure function read_fc6_file(FileName : STRING) return fc6_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : fc6_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_fc_layer6_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	
	--READ FC8 file 
    impure function read_fc8_file(FileName : STRING) return fc8_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : fc8_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_fc_layer8_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end; 
	
    impure function read_con1_truth_file(FileName : STRING) return conv1_truth_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : conv1_truth_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_conv_layer1_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file;       
        end loop; 
        
        return dout;  
    end; 
	
    impure function read_conv5_truth_file(FileName : STRING) return conv5_truth_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : conv5_truth_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_conv_layer5_pixels*c_bytes_per_data*2) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file;       
        end loop; 
        
        return dout;  
    end; 
	
    impure function read_affine6_truth_file(FileName : STRING) return affine6_truth_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : affine6_truth_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_fc_layer6_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file;       
        end loop; 
        
        return dout;  
    end;
	
	--READ MAXPOOL1 TRUTH file 
    impure function read_mp1_truth_file(FileName : STRING) return mp1_truth_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : mp1_truth_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_maxpool_layer1_pixels*c_bytes_per_data) loop 
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file(7 downto 0);       
        end loop; 
        
        return dout;  
    end;  
	
    impure function read_prob_truth_file(FileName : STRING) return prob_truth_mem_type is 
        file FileHandle              : TEXT open READ_MODE is FileName; 
        variable read_ptr            : line; 
        variable data_from_file      : std_logic_vector(7 downto 0); 
        variable dout                : prob_truth_mem_type := (others => (others => '0')); 
    begin 
        for i in 0 to (c_fc_layer8_pixels*c_bytes_per_data) loop
            exit when endfile(FileHandle); 
        
            readline(FileHandle, read_ptr); 
            hread(read_ptr, data_from_file); 
            dout(i) := data_from_file;       
        end loop; 
        
        return dout;  
    end;
	
	
	signal image_ram : image_mem_type; -- := read_image_file("input_image_8bit.txt"); 
	
    signal W1_ram : W1_mem_type;-- := read_W1_file("W1_8bit.txt"); 
    signal b1_ram : b1_mem_type;-- := read_b1_file("b1_8bit.txt"); 
    signal conv1_ram : conv1_mem_type;-- := read_conv1_file("conv1_truth_data_8bit.txt"); 
	
	signal MP1_ram : MP1_mem_type; -- := read_MP1_file("MP1_8bit.txt"); 
	
    signal W2_ram : W2_mem_type; -- := read_W2_file("W2_8bit.txt"); 
    signal b2_ram : b2_mem_type; -- := read_b2_file("b2_8bit.txt"); 
    signal conv2_ram : conv2_mem_type; -- := read_conv2_file("conv2_8bit.txt"); 
	
	signal conv4_ram : conv4_mem_type; -- := read_conv4_file("conv4_8bit.txt"); 
    signal W5_ram : W5_mem_type; -- := read_W5_file("W5_8bit.txt"); 
    signal b5_ram : b5_mem_type; -- := read_b5_file("b5_8bit.txt"); 
    signal conv5_ram : conv5_mem_type; -- := read_conv5_file("conv5_8bit.txt"); 
    
	signal MP3_ram : MP3_mem_type; -- := read_MP3_file("MP3_8bit.txt"); 	
	
    signal W6_ram : W6_mem_type; -- := read_W6_file("W6_8bit.txt"); 
    signal b6_ram : b6_mem_type; -- := read_b6_file("b6_8bit.txt"); 
    signal fc6_ram : fc6_mem_type; -- := read_fc6_file("fc6_8bit.txt"); 

	signal fc8_ram : fc8_mem_type := read_fc8_file("fc8_8bit.txt"); 
	signal probs_ram : probs_mem_type; 
	
	signal conv1_truth_ram : conv1_truth_mem_type;-- := read_con1_truth_file("conv1_truth_data_8bit.txt");
	signal conv5_truth_ram : conv5_truth_mem_type;-- := read_conv5_truth_file("conv5_compare_8bit.txt");
	signal affine6_truth_ram : affine6_truth_mem_type;-- := read_affine6_truth_file("affine_compare_layer6_8bit.txt");
	signal mp1_truth_ram : mp1_truth_mem_type;-- := read_mp1_truth_file("mp1_truth_data_8bit.txt"); 
	signal prob_truth_ram : prob_truth_mem_type := read_prob_truth_file("prob_8bit.txt"); 
		
	signal ram_data : std_logic_vector(31 downto 0); --type mem_type is array(0 to (27*27*96)+(256-1)*(5*5*96*256)-1) of std_logic_vector(15 downto 0); 
	
	signal address_counter : unsigned(31 downto 0); 
	signal address_shifted : std_logic_vector(31 downto 0); 
	
	signal debug_state : integer;
    signal valid_match : std_logic; 
	
begin
	-- I/O Connections assignments

	S_AXI_AWREADY	<= axi_awready;
	S_AXI_WREADY	<= axi_wready;
	S_AXI_BRESP		<= axi_bresp;
	S_AXI_BUSER		<= axi_buser;
	S_AXI_BVALID	<= axi_bvalid;
	S_AXI_ARREADY	<= axi_arready;
	S_AXI_RDATA		<= axi_rdata;
	S_AXI_RRESP		<= axi_rresp;
	S_AXI_RLAST		<= axi_rlast;
	S_AXI_RUSER		<= axi_ruser;
	S_AXI_RVALID	<= axi_rvalid;
	S_AXI_BID 		<= S_AXI_AWID;
	S_AXI_RID 		<= S_AXI_ARID;
	--aw_wrap_size 	<= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_awlen))); 
	--ar_wrap_size 	<= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_arlen))); 
	--aw_wrap_en 		<= '1' when (((axi_awaddr AND std_logic_vector(to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH))) XOR std_logic_vector(to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH))) = low) else '0';
	--ar_wrap_en 		<= '1' when (((axi_araddr AND std_logic_vector(to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH))) XOR std_logic_vector(to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH))) = low) else '0';
	S_AXI_BUSER 	<= (others => '0');
	
	
read_address_translation: process(current_state, address_counter,axi_araddr,S_AXI_ARVALID,MP1_ram,beat_counter,W1_ram,b1_ram,conv1_ram,W2_ram,b2_ram,conv2_ram,W5_ram,b5_ram,conv5_ram,W6_ram,b6_ram,fc6_ram,fc8_ram,image_ram,axi_awaddr,S_AXI_AWVALID,write_ram_data) 
	--read_address_translation: process(all) 
	begin 
		debug_state <= 0; 

		if(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_input_layer1_region_end) and current_state = READ_DATA) then 
			if(address_counter(1 downto 0) = "00") then 
				--axi_rdata <= x"0000" & ram_data; 
				ram_data(7 downto 0) <= image_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS))); 
				ram_data(15 downto 8) <= image_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)+1)); 
				ram_data(31 downto 16) <= (others => '0'); 
			elsif(address_counter(1 downto 0) = "10") then 
				--axi_rdata <= ram_data & x"0000";
				ram_data(15 downto 0) <= (others => '0'); 
				ram_data(23 downto 16) <= image_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS))); 
				ram_data(31 downto 24) <= image_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)+1)); 
			end if; 
			debug_state <= 1; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer1_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer1_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= b1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer1_region_start))); 
			ram_data(15 downto 8) <= b1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer1_region_start)+1)); 
			ram_data(23 downto 16) <= b1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer1_region_start)+2)); 
			ram_data(31 downto 24) <= b1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer1_region_start)+3)); 
			debug_state <= 2; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer1_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer1_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= W1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer1_region_start))); 
			ram_data(15 downto 8) <= W1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer1_region_start)+1)); 
			ram_data(23 downto 16) <= W1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer1_region_start)+2)); 
			ram_data(31 downto 24) <= W1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer1_region_start)+3)); 
			debug_state <= 3; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer1_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer1_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= conv1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start))); 
			ram_data(15 downto 8) <= conv1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start)+1)); 
			ram_data(23 downto 16) <= conv1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start)+2)); 
			ram_data(31 downto 24) <= conv1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start)+3)); 
			debug_state <= 4; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer1_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer1_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start))); 
			ram_data(15 downto 8) <= MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+1)); 
			ram_data(23 downto 16) <= MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+2)); 
			ram_data(31 downto 24) <= MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+3)); 
			debug_state <= 5; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer2_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer2_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= W2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer2_region_start))); 
			ram_data(15 downto 8) <= W2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer2_region_start)+1)); 
			ram_data(23 downto 16) <= W2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer2_region_start)+2)); 
			ram_data(31 downto 24) <= W2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer2_region_start)+3)); 
			debug_state <= 6; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer2_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer2_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= b2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer2_region_start))); 
			ram_data(15 downto 8) <= b2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer2_region_start)+1)); 	
			ram_data(23 downto 16) <= b2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer2_region_start)+2)); 
			ram_data(31 downto 24) <= b2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer2_region_start)+3)); 
			debug_state <= 7; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer2_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer2_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= conv2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer2_region_start))); 
			ram_data(15 downto 8) <= conv2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer2_region_start)+1)); 
			ram_data(23 downto 16) <= conv2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer2_region_start)+2)); 
			ram_data(31 downto 24) <= conv2_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer2_region_start)+3)); 
			debug_state <= 8; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer4_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer4_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= conv4_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer4_region_start))); 
			ram_data(15 downto 8) <= conv4_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer4_region_start)+1)); 	
			ram_data(23 downto 16) <= conv4_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer4_region_start)+2)); 	
			ram_data(31 downto 24) <= conv4_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer4_region_start)+3)); 	
			debug_state <= 9; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer5_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer5_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= W5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer5_region_start))); 
			ram_data(15 downto 8) <= W5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer5_region_start)+1)); 
			ram_data(23 downto 16) <= W5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer5_region_start)+2)); 
			ram_data(31 downto 24) <= W5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer5_region_start)+3)); 
			debug_state <= 10; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer5_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer5_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= b5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer5_region_start))); 
			ram_data(15 downto 8) <= b5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer5_region_start)+1)); 	
			ram_data(23 downto 16) <= b5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer5_region_start)+2)); 
			ram_data(31 downto 24) <= b5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer5_region_start)+3)); 
			debug_state <= 11; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer5_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer5_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start))); 
			ram_data(15 downto 8) <= conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+1)); 	
			ram_data(23 downto 16) <= conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+2)); 	
			ram_data(31 downto 24) <= conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+3)); 	
			debug_state <= 12; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer3_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer3_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= MP3_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer3_region_start))); 
			ram_data(15 downto 8) <= MP3_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer3_region_start)+1)); 
			ram_data(23 downto 16) <= MP3_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer3_region_start)+2)); 
			ram_data(31 downto 24) <= MP3_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer3_region_start)+3)); 
			debug_state <= 13; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer6_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_weights_layer6_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= W6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer6_region_start))); 
			ram_data(15 downto 8) <= W6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer6_region_start)+1)); 
			ram_data(23 downto 16) <= W6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer6_region_start)+2)); 
			ram_data(31 downto 24) <= W6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_weights_layer6_region_start)+3)); 
			debug_state <= 14; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer6_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_bias_layer6_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= b6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer6_region_start))); 
			ram_data(15 downto 8) <= b6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer6_region_start)+1)); 	
			ram_data(23 downto 16) <= b6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer6_region_start)+2)); 	
			ram_data(31 downto 24) <= b6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_bias_layer6_region_start)+3)); 				
			debug_state <= 15; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer6_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer6_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start))); 
			ram_data(15 downto 8) <= fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+1)); 	
			ram_data(23 downto 16) <= fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+2)); 	
			ram_data(31 downto 24) <= fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+3)); 
			debug_state <= 16; 
		elsif(unsigned(axi_araddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer8_region_end) and unsigned(axi_araddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer8_region_start) and current_state = READ_DATA) then 
			ram_data(7 downto 0) <= fc8_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer8_region_start))); 
			ram_data(15 downto 8) <= fc8_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer8_region_start)+1)); 	
			ram_data(23 downto 16) <= fc8_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer8_region_start)+2)); 	
			ram_data(31 downto 24) <= fc8_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer8_region_start)+3)); 				
			debug_state <= 17; 
		else 
			ram_data <= (others => '0'); 
			debug_state <= 18; 
	
		end if; 
		
	end process; 
	
	
	-- write_address_translation: process(S_AXI_ACLK, S_AXI_ARESETN) is 
	-- begin 
	   -- if(S_AXI_ARESETN = '0') then 
	       -- output_mem <= (others => (others => '0')); 
	   -- elsif(rising_edge(S_AXI_ACLK)) then 
	       -- output_mem <= output_mem;

			-- if(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_output_layer1_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_output_layer1_region_start) and S_AXI_AWVALID = '1') then 
				-- output_mem(to_integer(unsigned(axi_awaddr)-unsigned(G_BASE_ADDRESS)-unsigned(c_output_layer1_region_start)+beat_counter)) <= write_ram_data;
			-- end if;    
	   -- end if; 
	-- end process; 
	
	
	write_address_translation: process(S_AXI_ACLK, S_AXI_ARESETN) is 
	begin 
	   if(S_AXI_ARESETN = '0') then 
	       --output_mem <= (others => (others => '0')); 
		   --conv1_ram <= (others => (others => '0'));  
		   conv2_ram <= (others => (others => '0'));  
		   conv5_ram <= (others => (others => '0')); 
		   fc6_ram <= (others => (others => '0'));  
		   MP1_ram <= (others => (others => '0')); 
		   probs_ram <= (others => (others => '0')); 
	   elsif(rising_edge(S_AXI_ACLK)) then 
	       --output_mem <= output_mem;
		   -- conv1_ram <= conv1_ram; 
		   -- conv2_ram <= conv2_ram; 
		   -- conv5_ram <= conv5_ram; 
		   -- fc6_ram <= fc6_ram; 
		   -- MP1_ram <= MP1_ram; 
		   -- probs_ram <= probs_ram; 

			if(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer1_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer1_region_start) and S_AXI_WVALID = '1') then 
				conv1_ram(to_integer(unsigned(axi_awaddr)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start)+beat_counter)) <= S_AXI_WDATA;
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer2_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer2_region_start) and S_AXI_WVALID = '1') then 
				conv2_ram(to_integer(unsigned(axi_awaddr)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer2_region_start)+beat_counter)) <= S_AXI_WDATA;
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer5_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer5_region_start) and S_AXI_WVALID = '1') then 
				--conv5_ram(to_integer(unsigned(axi_awaddr)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+beat_counter)) <= write_ram_data;
				
				conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start))) <= S_AXI_WDATA(7 downto 0);
				conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+1)) <= S_AXI_WDATA(15 downto 8);
				conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+2)) <= S_AXI_WDATA(23 downto 16);
				conv5_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+3)) <= S_AXI_WDATA(31 downto 24);			
				
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer6_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer6_region_start) and S_AXI_WVALID = '1') then 
				--fc6_ram(to_integer(unsigned(axi_awaddr)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+beat_counter)) <= S_AXI_WDATA;

				fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start))) <= S_AXI_WDATA(7 downto 0);
				fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+1)) <= S_AXI_WDATA(15 downto 8);
				fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+2)) <= S_AXI_WDATA(23 downto 16);
				fc6_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+3)) <= S_AXI_WDATA(31 downto 24);			
			
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer1_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer1_region_start) and S_AXI_WVALID = '1') then 
				
				MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start))) <= S_AXI_WDATA(7 downto 0);
				MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+1)) <= S_AXI_WDATA(15 downto 8);
				MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+2)) <= S_AXI_WDATA(23 downto 16);
				MP1_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+3)) <= S_AXI_WDATA(31 downto 24);	
			
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_probs_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_probs_region_start) and S_AXI_WVALID = '1') then 
				
				probs_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start))) <= S_AXI_WDATA(7 downto 0);
				probs_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start)+1)) <= S_AXI_WDATA(15 downto 8);
				probs_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start)+2)) <= S_AXI_WDATA(23 downto 16);
				probs_ram(to_integer(unsigned(address_counter)-unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start)+3)) <= S_AXI_WDATA(31 downto 24);				
			end if;    
	   end if; 
	end process; 
   
   
	state_transitions: process(S_AXI_ACLK, S_AXI_ARESETN) is 
	begin 
	   if(S_AXI_ARESETN = '0') then 
	       current_state <= IDLE; 
	   elsif(rising_edge(S_AXI_ACLK)) then 
	       current_state <= next_state; 
	   end if; 
	end process; 
	
    next_state_comb: process(current_state, S_AXI_ARVALID, S_AXI_AWVALID,S_AXI_RREADY,beat_counter,axi_arlen, axi_awlen,S_AXI_BREADY) is 
    begin 
		axi_arready <= '0'; 
		axi_awready <= '0'; 
		axi_wready <= '0'; 
		axi_bvalid <= '0'; 
		
        case current_state is 
        
			when IDLE => 
				axi_arready <= '1'; 
				axi_awready <= '1'; 
				
				if(S_AXI_ARVALID = '1') then 
					next_state <= READ_ADDRESS; 
				elsif(S_AXI_AWVALID = '1') then
					next_state <= WRITE_ADDRESS; 
				else 
					next_state <= IDLE; 
				end if; 
			
			when READ_ADDRESS =>
				axi_arready <= '1';
				next_state <= READ_DATA; 

		
			when READ_DATA =>
				if(beat_counter <= unsigned(axi_arlen)) then 
					next_state <= READ_DATA; 
				else
					next_state <= IDLE; 
				end if; 
			
			when WRITE_ADDRESS => 
				axi_awready <= '1'; 
				next_state <= WRITE_DATA; 
			
			when WRITE_DATA => 
				axi_wready <= '1'; 
				
				if(beat_counter < unsigned(axi_awlen)) then 
					next_state <= WRITE_DATA; 
				elsif(beat_counter = unsigned(axi_awlen)) then 
					next_state <= WRITE_DATA; 
				else 
					next_state <= WRITE_RESPONSE;
				end if; 

			when WRITE_RESPONSE => 
				axi_bvalid <= '1'; 
				--axi_wready <= '1'; 
				
				if(S_AXI_BREADY = '1') then 
					next_state <= IDLE; 
				else 
					next_state <= WRITE_RESPONSE; 
				end if; 
				
			
			when others => 
				next_state <= IDLE; 
				
		        
        end case; 
    end process; 
	
    
    sequential_logic: process(S_AXI_ACLK, S_AXI_ARESETN) is 
    begin 
        if(S_AXI_ARESETN = '0') then 
			beat_counter 	<= (others => '0'); 
			axi_araddr 		<= (others => '0');  
			axi_arlen 		<= (others => '0'); 
			axi_arsize 		<= (others => '0'); 
			axi_arburst 	<= (others => '0'); 
			axi_rdata 		<= (others => '0');  
			axi_rvalid 		<= '0'; 
			axi_rlast 		<= '0'; 
			axi_awaddr 		<= (others => '0');  
			axi_awlen 		<= (others => '0'); 
			axi_awsize  	<= (others => '0'); 
			axi_awburst 	<= (others => '0'); 
			axi_wdata 		<= (others => '0'); 
			axi_wvalid 		<= '0'; 
			axi_wlast 		<= '0'; 
			write_ram_data  <= (others => '0'); 
			address_counter <= (others => '0'); 
			address_shifted <= (others => '0'); 
			address_temp    <= (others => '0'); 

        elsif(rising_edge(S_AXI_ACLK)) then

			case current_state is 
			
				when IDLE =>
					beat_counter 	<= (others => '0'); 
					axi_araddr 		<= (others => '0');  
					axi_arlen 		<= (others => '0'); 
					axi_arsize 		<= (others => '0'); 
					axi_arburst 	<= (others => '0'); 
					axi_rdata 		<= (others => '0');  
					axi_rvalid 		<= '0'; 
					axi_rlast 		<= '0'; 
					axi_awaddr 		<= (others => '0');  
					axi_awlen 		<= (others => '0'); 
					axi_awsize  	<= (others => '0'); 
					axi_awburst 	<= (others => '0'); 
					axi_wdata 		<= (others => '0'); 
					axi_wvalid 		<= '0'; 
					axi_wlast 		<= '0'; 
					write_ram_data	<= (others => '0'); 
					address_counter <= unsigned(S_AXI_ARADDR); 
					address_shifted <= (others => '0'); 
				
				when READ_ADDRESS => 
					axi_araddr 	<= S_AXI_ARADDR; 
					axi_arlen 	<= S_AXI_ARLEN;
					axi_arsize 	<= S_AXI_ARSIZE;
					axi_arburst <= S_AXI_ARBURST; 
					address_counter <= unsigned(S_AXI_ARADDR); 
					address_shifted <= S_AXI_ARADDR(31 downto 16) & '0' & S_AXI_ARADDR(15 downto 1); 
					
				when READ_DATA => 
					if(beat_counter < unsigned(axi_arlen) and S_AXI_RREADY = '1') then
						
						if(axi_arsize = "000") then 
							address_counter <= address_counter + 1; 
						elsif(axi_arsize = "001") then 
							address_counter <= address_counter + 2;
						elsif(axi_arsize = "010") then 
							address_counter <= address_counter + 4;
						elsif(axi_arsize = "011") then 
							address_counter <= address_counter + 8;	
						else 
							address_counter <= address_counter; 
						end if; 
							
						
						--address_counter <= address_counter + unsigned(axi_arsize)+2; 
						axi_rdata <= ram_data; 
						-- if(address_counter(1 downto 0) = "00") then 
							-- axi_rdata <= x"0000" & ram_data; 
						-- elsif(address_counter(1 downto 0) = "10") then 
							-- axi_rdata <= ram_data & x"0000";
						-- end if; 
						
						
						axi_rvalid <= '1'; 
						axi_rlast <= '0'; 
						beat_counter <= beat_counter + 1;  
					elsif(beat_counter < unsigned(axi_arlen) and S_AXI_RREADY = '0') then 
						axi_rdata <= (others => '0'); 
						axi_rvalid <= '0'; 
						axi_rlast <= '0'; 
						beat_counter <= beat_counter; 
					elsif(beat_counter = unsigned(axi_arlen) and S_AXI_RREADY = '1') then 
						--address_counter <= address_counter + 2; 
						axi_rdata <= ram_data; 
						-- if(address_counter(1 downto 0) = "00") then 
							-- axi_rdata <= x"0000" & ram_data; 
						-- elsif(address_counter(1 downto 0) = "10") then 
							-- axi_rdata <= ram_data & x"0000";
						-- end if; 
		
						
						axi_rvalid <= '1'; 
						axi_rlast <= '1'; 
						beat_counter <= beat_counter + 1; 
					elsif(beat_counter > unsigned(axi_arlen)) then 
						axi_rdata <= (others => '0'); 
						axi_rvalid <= '0'; 
						axi_rlast <= '0'; 
						beat_counter <= (others => '0'); 
						address_counter <= (others => '0'); 
					end if; 
				
				
				when WRITE_ADDRESS => 
					axi_awaddr 	<= S_AXI_AWADDR; 
					axi_awlen 	<= S_AXI_AWLEN; 
					axi_awsize  <= S_AXI_AWSIZE;
					axi_awburst <= S_AXI_AWBURST; 
					
					address_temp <= S_AXI_AWADDR;

					address_counter <= unsigned(S_AXI_AWADDR); 
					
				
				when WRITE_DATA => 
					if(beat_counter < unsigned(axi_awlen)) then 
						if(S_AXI_WVALID = '1') then 
							write_ram_data <= S_AXI_WDATA;
							beat_counter <= beat_counter + 1; 	
							
							if(axi_awsize = "000") then 
								address_counter <= address_counter + 1; 
							elsif(axi_awsize = "001") then 
								address_counter <= address_counter + 2;
							elsif(axi_awsize = "010") then 
								address_counter <= address_counter + 4;
							elsif(axi_awsize = "011") then 
								address_counter <= address_counter + 8;	
							else 
								address_counter <= address_counter; 
							end if; 

						end if; 
					elsif(beat_counter = unsigned(axi_awlen)) then 
						if(S_AXI_WVALID = '1') then 
							write_ram_data <= S_AXI_WDATA;
							beat_counter <= beat_counter + 1; 	
						end if; 
						
					else 
						write_ram_data <= S_AXI_WDATA; 
						beat_counter <= (others => '0'); 
						address_counter <= (others => '0'); 
					end if; 			
				
				when WRITE_RESPONSE => 
					write_ram_data <= (others => '0');
				
				
				
				when others => 
					beat_counter 	<= (others => '0'); 
					axi_araddr 		<= (others => '0');  
					axi_arlen 		<= (others => '0'); 
					axi_arsize 		<= (others => '0'); 
					axi_arburst 	<= (others => '0'); 
					axi_rdata 		<= (others => '0');  
					axi_rvalid 		<= '0'; 
					axi_rlast 		<= '0'; 
					axi_awaddr 		<= (others => '0');  
					axi_awlen 		<= (others => '0'); 
					axi_awsize  	<= (others => '0'); 
					axi_awburst 	<= (others => '0'); 
					axi_wdata 		<= (others => '0'); 
					axi_wvalid 		<= '0'; 
					axi_wlast 		<= '0'; 
					write_ram_data	<= (others => '0'); 
			end case; 
        end if; 
    end process; 
	
	match_proc: process(write_ram_data, truth_data, valid_match) is 
	begin 
		if(write_ram_data(31 downto 16) = truth_data(31 downto 16) and valid_match = '1') then 
			match <= '1'; 
		elsif(valid_match = '0') then 
			match <= '1'; 
		else 
			match <= '0'; 
		end if; 
	end process; 
	
	
    
	compare: process(S_AXI_ACLK, S_AXI_ARESETN) is 
	begin 
		if(S_AXI_ARESETN = '0') then
			--match <= '0'; 
			truth_data <= (others => '0');
			valid_match <= '0'; 
		elsif(rising_edge(S_AXI_ACLK)) then 
		
			if(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer1_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer1_region_start) and current_state = WRITE_DATA)then 
				truth_data(7 downto 0) <= conv1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start))); 
				truth_data(15 downto 8) <= conv1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start)+1)); 
				truth_data(23 downto 16) <= conv1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start)+2)); 
				truth_data(31 downto 24) <= conv1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer1_region_start)+3)); 
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer2_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer2_region_start) and current_state = WRITE_DATA)then 
				--onv2_ram(to_integer(unsigned(axi_awaddr)-unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer2_region_start)+beat_counter)) <= write_ram_data;
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer5_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_conv_layer5_region_start) and current_state = WRITE_DATA)then  
				truth_data(7 downto 0) <= conv5_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start))); 
				truth_data(15 downto 8) <= conv5_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+1)); 
				truth_data(23 downto 16) <= conv5_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+2)); 
				truth_data(31 downto 24) <= conv5_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_conv_layer5_region_start)+3)); 
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer6_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_fc_layer6_region_start) and current_state = WRITE_DATA)then 
				--fc6_ram(to_integer(unsigned(axi_awaddr)-unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+beat_counter)) <= write_ram_data;
				truth_data(7 downto 0) <= affine6_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start))); 
				truth_data(15 downto 8) <= affine6_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+1)); 
				truth_data(23 downto 16) <= affine6_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+2)); 
				truth_data(31 downto 24) <= affine6_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_fc_layer6_region_start)+3)); 
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer1_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_maxpool_layer1_region_start) and current_state = WRITE_DATA)then 
				truth_data(7 downto 0) <= mp1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start))); 
				truth_data(15 downto 8) <= mp1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+1)); 
				truth_data(23 downto 16) <= mp1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+2)); 
				truth_data(31 downto 24) <= mp1_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_maxpool_layer1_region_start)+3)); 
			elsif(unsigned(axi_awaddr) < unsigned(G_BASE_ADDRESS) + unsigned(c_probs_region_end) and unsigned(axi_awaddr) >= unsigned(G_BASE_ADDRESS) + unsigned(c_probs_region_start) and current_state = WRITE_DATA)then 
				truth_data(7 downto 0) <= prob_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start))); 
				truth_data(15 downto 8) <= prob_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start)+1)); 
				truth_data(23 downto 16) <= prob_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start)+2)); 
				truth_data(31 downto 24) <= prob_truth_ram(to_integer(unsigned(address_counter)- unsigned(G_BASE_ADDRESS)-unsigned(c_probs_region_start)+3)); 
				
			else 
				truth_data <= (others => '0'); 
			end if; 
			
			if(S_AXI_WVALID = '1') then 
				valid_match <= '1'; 
			else 
				valid_match <= '0'; 
			end if; 
			
		end if; 
		
	end process; 
	
	
end arch_imp;


