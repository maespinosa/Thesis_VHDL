----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/04/2017 06:53:10 PM
-- Design Name: 
-- Module Name: sensor_to_FPGA_model - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sensor_to_FPGA_model is
  Port ( 
    i_clk_100MHz : in std_logic; 
    i_reset_n    : in std_logic; 
    i_PCLK_sim       : in std_logic
  );
end sensor_to_FPGA_model;

architecture Behavioral of sensor_to_FPGA_model is

--sg25E
--x16
--single rank

constant DM_BITS    : integer :=   2; 
constant BA_BITS    : integer :=   3; 
constant ADDR_BITS  : integer :=   13; 
constant DQ_BITS    : integer :=   16; 
constant DQS_BITS   : integer :=   2; 



component sim_node_wrapper is
  port (
    DDR2_addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    DDR2_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR2_cas_n : out STD_LOGIC;
    DDR2_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_dm : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR2_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR2_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    DDR2_ras_n : out STD_LOGIC;
    DDR2_we_n : out STD_LOGIC;
--    UART_rxd : in STD_LOGIC;
--    UART_txd : out STD_LOGIC;
    i_HREF : in STD_LOGIC;
    i_PCLK : in STD_LOGIC;
    i_SDATA : in STD_LOGIC_VECTOR ( 9 downto 0 );
    i_VSYNC : in STD_LOGIC;
    i_btn_config : in STD_LOGIC;
    i_config_bypass : in STD_LOGIC;
    o_PWDN : out STD_LOGIC;
    o_SIOC : out STD_LOGIC;
    o_SIOD : inout STD_LOGIC;
    o_XCLK : out STD_LOGIC;
    o_hsync : out STD_LOGIC;
    o_vga_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    o_vsync : out STD_LOGIC;
    o_locked_up : out STD_LOGIC;
    o_i2c_busy : out STD_LOGIC;
    o_debug_state : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_sioc_state_debug : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_siod_state_debug : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_capture_state_debug : out STD_LOGIC_VECTOR ( 3 downto 0 );
    --pixel_valid_out : out std_logic; 
    reset_rtl : in STD_LOGIC;
    sys_clk : in STD_LOGIC
    --vga_data_out : out STD_LOGIC_VECTOR ( 11 downto 0 ); 
    --read_en_out : out std_logic
  );
end component sim_node_wrapper; 

component read_file IS
    generic
    (
        data_width    	: positive; -- The data width of the RAM
        filename 		: string := "" -- The file used to initialize the block RAM.
    );
    port(
	     i_xclk, i_enable, i_reset_n  : in std_logic; 
		 i_pclk				: in std_logic; 
	     o_SDATA            : out std_logic_vector(data_width-1 downto 0); 
		 o_VSYNC			: out std_logic;  
		 o_HREF			: out std_logic; 
		 o_PCLK			: out std_logic
  );    											   
END component read_file;


component ddr2 is 
    port (
        ck      : in std_logic;
        ck_n    : in std_logic;
        cke     : in std_logic;
        cs_n    : in std_logic;
        ras_n   : in std_logic; 
        cas_n   : in std_logic; 
        we_n    : in std_logic; 
        dm_rdqs : inout std_logic_vector(DM_BITS-1 downto 0); 
        ba      : in std_logic_vector(BA_BITS-1 downto 0);
        addr    : in std_logic_vector(ADDR_BITS-1 downto 0); 
        dq      : inout std_logic_vector(DQ_BITS-1 downto 0); 
        dqs     : inout std_logic_vector(DQS_BITS-1 downto 0); 
        dqs_n   : inout std_logic_vector(DQS_BITS-1 downto 0); 
        rdqs_n  : out std_logic_vector(DQS_BITS-1 downto 0); 
        odt     : in std_logic 
    );
end component ddr2; 

component matlab_compare IS
    generic
    (
        data_width    : positive; -- The data width of the RAM
        filename      : string := "" -- The file used to initialize the block RAM.
    );
    port(
	     sys_clk, enable, reset_n  : in std_logic;
	     data_to_write            : in std_logic_vector(data_width-1 downto 0); 
	     pixel_valid               : in std_logic; 
	     match                    : out std_logic 
  );    
end component matlab_compare;    
    
    signal int_ck      : std_logic_vector(0 downto 0);
    signal int_ck_n    : std_logic_vector(0 downto 0);
    signal int_cke     : std_logic_vector(0 downto 0);
    signal int_cs_n    : std_logic_vector(0 downto 0);
    signal int_ras_n   : std_logic; 
    signal int_cas_n   : std_logic; 
    signal int_we_n    : std_logic; 
    signal int_dm_rdqs : std_logic_vector(DM_BITS-1 downto 0); 
    signal int_ba      : std_logic_vector(BA_BITS-1 downto 0);
    signal int_addr    : std_logic_vector(ADDR_BITS-1 downto 0); 
    signal int_dq      : std_logic_vector(DQ_BITS-1 downto 0); 
    signal int_dqs     : std_logic_vector(DQS_BITS-1 downto 0); 
    signal int_dqs_n   : std_logic_vector(DQS_BITS-1 downto 0); 
    signal int_rdqs_n  : std_logic_vector(DQS_BITS-1 downto 0); 
    signal int_odt     : std_logic_vector(0 downto 0); 
    
    signal int_XCLK    : std_logic; 
    signal int_HREF    : std_logic; 
    signal int_VSYNC   : std_logic; 
    signal int_SDATA   : std_logic_vector(9 downto 0); 
    
    signal int_pixel_valid_out  : std_logic; 
    signal int_vga_data_out     : std_logic_vector(11 downto 0); 
    signal int_match        : std_logic; 
    signal int_read_en_out : std_logic; 

begin


FGPA: sim_node_wrapper
  port map(
    DDR2_addr   => int_addr, 
    DDR2_ba     => int_ba, 
    DDR2_cas_n  => int_cas_n, 
    DDR2_ck_n   => int_ck_n, 
    DDR2_ck_p   => int_ck, 
    DDR2_cke    => int_cke, 
    DDR2_cs_n   => int_cs_n, 
    DDR2_dm     => int_dm_rdqs, 
    DDR2_dq     => int_dq, 
    DDR2_dqs_n  => int_dqs_n, 
    DDR2_dqs_p  => int_dqs, 
    DDR2_odt    => int_odt, 
    DDR2_ras_n  => int_ras_n, 
    DDR2_we_n   => int_we_n, 
--    UART_rxd    => '0', 
--    UART_txd    => open, 
    i_HREF              => int_HREF, 
    i_PCLK              => i_PCLK_sim, 
    i_SDATA             => int_SDATA, 
    i_VSYNC             => int_VSYNC, 
    i_btn_config        => '1', 
    i_config_bypass     => '0', 
    o_PWDN              => open, 
    o_SIOC              => open, 
    o_SIOD              => open, 
    o_XCLK              => int_XCLK, 
    o_hsync             => open, 
    o_vga_data          => open, 
    o_vsync             => open, 
    --pixel_valid_out     => int_pixel_valid_out, 
    reset_rtl           => i_reset_n, 
    sys_clk             => i_clk_100MHz, 
    --vga_data_out        => int_vga_data_out, 
    --read_en_out         => int_read_en_out, 
    o_locked_up         => open, 
    o_i2c_busy          => open, 
    o_debug_state       => open, 
    o_sioc_state_debug  => open, 
    o_siod_state_debug  => open, 
    o_capture_state_debug  => open
  );

ov5642_model : read_file
    generic map
    (
        data_width  => 10, -- The data width of the RAM
        --filename 	=> "C:\Sourcetree_Local\Thesis_Matlab_Models\Bayer_Image\test_image1.txt" --
        filename    => "C:\Sourcetree_Local\Thesis_Matlab_Models\Test_Image\test_image.txt" -- The file used to initialize the block RAM.
    )
    port map(
	     i_xclk        => int_XCLK, 
	     i_enable      => '0', 
	     i_reset_n     => i_reset_n, 
		 i_pclk	       => i_PCLK_sim, 
	     o_SDATA       => int_SDATA, 
		 o_VSYNC	   => int_VSYNC, 
		 o_HREF		   => int_HREF, 
		 o_PCLK		   => open
  );    											   

Nexys_DDR2 : ddr2 
    port map (
        ck      => int_ck(0), 
        ck_n    => int_ck_n(0), 
        cke     => int_cke(0), 
        cs_n    => int_cs_n(0), 
        ras_n   => int_ras_n,  
        cas_n   => int_cas_n,  
        we_n    => int_we_n,  
        dm_rdqs => int_dm_rdqs,  
        ba      => int_ba, 
        addr    => int_addr,  
        dq      => int_dq,  
        dqs     => int_dqs,  
        dqs_n   => int_dqs_n,  
        rdqs_n  => int_rdqs_n,  
        odt     => int_odt(0)  
    );

Compare_Matlab : matlab_compare
    generic map 
    (
        data_width    =>  12,  -- The data width of the RAM
        filename      =>  "C:\Sourcetree_Local\Thesis_Matlab_Models\Test_Image\test_image_output.txt" -- The file used to initialize the block RAM.
    )
    port map(
	     sys_clk       => int_XCLK,
	     enable        => int_read_en_out, 
	     reset_n       => i_reset_n, 
	     data_to_write => int_vga_data_out, 
	     pixel_valid   => int_pixel_valid_out, 
	     match         => int_match 
  );    



end Behavioral;
