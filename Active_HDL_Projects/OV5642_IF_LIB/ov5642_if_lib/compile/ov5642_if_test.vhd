-------------------------------------------------------------------------------
--
-- Title       : OV5642_IF_TEST
-- Design      : ov5642_if_lib
-- Author      : Unknown
-- Company     : Unknown
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\compile\ov5642_if_test.vhd
-- Generated   : Mon Apr 24 19:30:45 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\ov5642_if_test.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;


entity OV5642_IF_TEST is
  generic(
       data_width : integer := 10
  );
  port(
       EMPTY : out STD_LOGIC;
       FULL : out STD_LOGIC;
       match : out STD_LOGIC;
       o_PIXEL_NUMBER : out INTEGER;
       o_SIOC : out STD_LOGIC;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER;
       o_hsync : out STD_LOGIC;
       o_vsync : out STD_LOGIC;
       o_pixel_x : out STD_LOGIC_VECTOR(9 downto 0);
       o_pixel_y : out STD_LOGIC_VECTOR(9 downto 0);
       o_vga_data : out STD_LOGIC_VECTOR(11 downto 0);
       o_SIOD : inout STD_LOGIC
  );
end OV5642_IF_TEST;

library ieee;

architecture behavioral of OV5642_IF_TEST is

function aldec_slv2int (val:std_logic_vector) return integer is
begin
return conv_integer(unsigned(val));
end aldec_slv2int;

---- Component declarations -----

component dist_mem_gen_v7_2
  port (
       a : in STD_LOGIC_VECTOR(10 downto 0);
       clk : in STD_LOGIC;
       d : in STD_LOGIC_VECTOR(15 downto 0);
       we : in STD_LOGIC;
       spo : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component fifo_generator_v9_3
  port (
       din : in STD_LOGIC_VECTOR(11 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(11 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;
component hwrite_file
  generic(
       data_width : POSITIVE;
       filename : STRING := ""
  );
  port (
       data_to_write : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       data_valid : in STD_LOGIC;
       enable : in STD_LOGIC;
       reset_n : in STD_LOGIC;
       stop_strobe : in STD_LOGIC;
       sys_clk : in STD_LOGIC
  );
end component;
component matlab_compare
  generic(
       data_width : POSITIVE;
       filename : STRING := ""
  );
  port (
       data_to_write : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       enable : in STD_LOGIC;
       pixel_valid : in STD_LOGIC;
       reset_n : in STD_LOGIC;
       sys_clk : in STD_LOGIC;
       match : out STD_LOGIC
  );
end component;
component read_file
  generic(
       data_width : POSITIVE;
       filename : STRING := ""
  );
  port (
       i_enable : in STD_LOGIC;
       i_pclk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_xclk : in STD_LOGIC;
       o_HREF : out STD_LOGIC;
       o_PCLK : out STD_LOGIC;
       o_SDATA : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_VSYNC : out STD_LOGIC
  );
end component;
component sim_clk_generator
-- synthesis translate_off
  generic(
       clk_period : TIME
  );
-- synthesis translate_on
  port (
       o_clk : out STD_LOGIC;
       o_reset_n : out STD_LOGIC
  );
end component;
component camera_configurator
  port (
       i_bram_data : in STD_LOGIC_VECTOR(15 downto 0);
       i_btn_config : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_i2c_busy : in STD_LOGIC;
       i_i2c_sent : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_bram_address : out STD_LOGIC_VECTOR(10 downto 0);
       o_bram_we : out STD_LOGIC;
       o_config_done : out STD_LOGIC;
       o_i2c_address : out STD_LOGIC_VECTOR(15 downto 0);
       o_i2c_data : out STD_LOGIC_VECTOR(7 downto 0);
       o_i2c_ena : out STD_LOGIC;
       o_i2c_rw : out STD_LOGIC
  );
end component;
component image_capture_control
  generic(
       data_width : INTEGER
  );
  port (
       i_EN : in STD_LOGIC;
       i_HREF : in STD_LOGIC;
       i_PCLK : in STD_LOGIC;
       i_SDATA : in STD_LOGIC_VECTOR(data_width-1 downto 0);
       i_VSYNC : in STD_LOGIC;
       i_clk : in STD_LOGIC;
       i_not_almost_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_FRAME_DONE : out STD_LOGIC;
       o_IMAGE_DATA : out STD_LOGIC_VECTOR(11 downto 0);
       o_PIXEL_NUMBER : out INTEGER;
       o_PIXEL_VALID : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_X_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_Y_POS : out STD_LOGIC_VECTOR(11 downto 0);
       o_debug_state : out STD_LOGIC_VECTOR(2 downto 0);
       o_pclk : out STD_LOGIC;
       o_pclk_counter : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component OV5462_SCCB_CNTRL
  generic(
       g_slave_id : STD_LOGIC_VECTOR(7 downto 0) := x"78"
  );
  port (
       i_clk : in STD_LOGIC;
       i_i2c_addr : in STD_LOGIC_VECTOR(15 downto 0);
       i_i2c_data : in STD_LOGIC_VECTOR(7 downto 0);
       i_i2c_ena : in STD_LOGIC;
       i_i2c_rw : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       o_busy : out STD_LOGIC;
       o_config_done : out STD_LOGIC;
       o_i2c_sent : out STD_LOGIC;
       o_sioc : out STD_LOGIC;
       io_siod : inout STD_LOGIC
  );
end component;
component vga_sync
  port (
       i_clk : in STD_LOGIC;
       i_not_almost_empty : in STD_LOGIC;
       i_not_almost_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_valid : in STD_LOGIC;
       i_vga_data : in STD_LOGIC_VECTOR(11 downto 0);
       o_hsync : out STD_LOGIC;
       o_pixel_x : out STD_LOGIC_VECTOR(9 downto 0);
       o_pixel_y : out STD_LOGIC_VECTOR(9 downto 0);
       o_read_en : out STD_LOGIC;
       o_vga_data : out STD_LOGIC_VECTOR(11 downto 0);
       o_video_on : out STD_LOGIC;
       o_vsync : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal ALMOSTFULL : STD_LOGIC;
signal clk_100MHz : STD_LOGIC;
signal clk_150MHz : STD_LOGIC;
signal i_EN : STD_LOGIC := '1';
signal i_HREF : STD_LOGIC;
signal i_PCLK : STD_LOGIC;
signal NET4699 : STD_LOGIC;
signal NET4701 : STD_LOGIC;
signal NET4703 : STD_LOGIC;
signal NET4709 : STD_LOGIC := '1';
signal NET4712 : STD_LOGIC := '1';
signal NET4719 : STD_LOGIC;
signal NET5007 : STD_LOGIC;
signal NET5560 : STD_LOGIC;
signal NET5627 : STD_LOGIC;
signal NET5803 : STD_LOGIC;
signal NET6226 : STD_LOGIC;
signal NET6530 : STD_LOGIC;
signal NET6590 : STD_LOGIC;
signal NET6594 : STD_LOGIC;
signal NET6616 : STD_LOGIC;
signal NET6669 : STD_LOGIC;
signal NET6764 : STD_LOGIC;
signal PIXEL_VALID : STD_LOGIC;
signal PWDN : STD_LOGIC;
signal reset_n : STD_LOGIC;
signal VSYNC : STD_LOGIC;
signal xclk : STD_LOGIC;
signal BUS4695 : STD_LOGIC_VECTOR(7 downto 0);
signal BUS4697 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS4705 : STD_LOGIC_VECTOR(10 downto 0);
signal BUS4707 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS5126 : STD_LOGIC_VECTOR(11 downto 0);
signal IMAGE_DATA : STD_LOGIC_VECTOR(11 downto 0);
signal o_SDATA : STD_LOGIC_VECTOR(data_width-1 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

---- User Signal Assignments ----
--i_SDATA <= o_SDATA(9 downto 0);

----  Component instantiations  ----

CAMERA_CONFIG : camera_configurator
  port map(
       i_bram_data => BUS4707,
       i_btn_config => NET4712,
       i_clk => clk_100MHz,
       i_i2c_busy => NET4703,
       i_i2c_sent => NET5007,
       i_reset_n => reset_n,
       o_bram_address => BUS4705,
       o_bram_we => NET4719,
       o_i2c_address => BUS4697,
       o_i2c_data => BUS4695,
       o_i2c_ena => NET4699,
       o_i2c_rw => NET4701
  );

CLK_100MHz_GEN : sim_clk_generator
-- synthesis translate_off
  generic map(
       clk_period => 10 ns
  )
-- synthesis translate_on
  port map(
       o_clk => clk_100MHz
  );

COMPARE_MATLAB : matlab_compare
  generic map(
       data_width => 12,
       filename => "../../../../Thesis_Matlab_Models/Bayer_Image/test_image1.txt"
  )
  port map(
       data_to_write => IMAGE_DATA(11 downto 0),
       enable => i_EN,
       match => match,
       pixel_valid => PIXEL_VALID,
       reset_n => reset_n,
       sys_clk => i_PCLK
  );

CONFIG_BRAM : dist_mem_gen_v7_2
  port map(
       d(0) => Dangling_Input_Signal,
       d(1) => Dangling_Input_Signal,
       d(2) => Dangling_Input_Signal,
       d(3) => Dangling_Input_Signal,
       d(4) => Dangling_Input_Signal,
       d(5) => Dangling_Input_Signal,
       d(6) => Dangling_Input_Signal,
       d(7) => Dangling_Input_Signal,
       d(8) => Dangling_Input_Signal,
       d(9) => Dangling_Input_Signal,
       d(10) => Dangling_Input_Signal,
       d(11) => Dangling_Input_Signal,
       d(12) => Dangling_Input_Signal,
       d(13) => Dangling_Input_Signal,
       d(14) => Dangling_Input_Signal,
       d(15) => Dangling_Input_Signal,
       a => BUS4705,
       clk => clk_100MHz,
       spo => BUS4707,
       we => NET4719
  );

FIFO : fifo_generator_v9_3
  port map(
       almost_full => NET5803,
       din => IMAGE_DATA,
       dout => BUS5126,
       empty => EMPTY,
       full => FULL,
       prog_empty => NET6669,
       prog_full => NET6616,
       rd_clk => xclk,
       rd_en => NET6590,
       rst => NET5627,
       valid => NET6530,
       wr_clk => i_PCLK,
       wr_en => PIXEL_VALID
  );

IMAGE_CAPTURE_FSM : image_capture_control
  generic map(
       data_width => 10
  )
  port map(
       aldec_slv2int(o_X_POS) => o_X_POS,
       aldec_slv2int(o_Y_POS) => o_Y_POS,
       i_EN => NET4709,
       i_HREF => i_HREF,
       i_PCLK => i_PCLK,
       i_SDATA => o_SDATA(data_width-1 downto 0),
       i_VSYNC => VSYNC,
       i_clk => clk_150MHz,
       i_not_almost_full => ALMOSTFULL,
       i_reset_n => reset_n,
       o_FRAME_DONE => NET6226,
       o_IMAGE_DATA => IMAGE_DATA,
       o_PIXEL_NUMBER => o_PIXEL_NUMBER,
       o_PIXEL_VALID => PIXEL_VALID,
       o_PWDN => PWDN
  );

PCLK_GEN : sim_clk_generator
-- synthesis translate_off
  generic map(
       clk_period => 20 ns
  )
-- synthesis translate_on
  port map(
       o_clk => NET6764
  );

SCCB_CONTROLLER : OV5462_SCCB_CNTRL
  port map(
       i_clk => clk_100MHz,
       i_i2c_addr => BUS4697,
       i_i2c_data => BUS4695,
       i_i2c_ena => NET4699,
       i_i2c_rw => NET4701,
       i_reset_n => reset_n,
       io_siod => o_SIOD,
       o_busy => NET4703,
       o_i2c_sent => NET5007,
       o_sioc => o_SIOC
  );

SCENE_SIMULATOR : read_file
  generic map(
       data_width => 10,
       filename => "../../../../Thesis_Matlab_Models/Bayer_Image/test_image.txt"
  )
  port map(
       i_enable => PWDN,
       i_pclk => NET6764,
       i_reset_n => reset_n,
       i_xclk => xclk,
       o_HREF => i_HREF,
       o_PCLK => i_PCLK,
       o_SDATA => o_SDATA(data_width-1 downto 0),
       o_VSYNC => VSYNC
  );

SYS_CLK_GEN : sim_clk_generator
-- synthesis translate_off
  generic map(
       clk_period => 6.66 ns
  )
-- synthesis translate_on
  port map(
       o_clk => clk_150MHz,
       o_reset_n => reset_n
  );

NET5560 <= not(NET6669);

NET5627 <= not(reset_n);

ALMOSTFULL <= not(NET5803);

VGA : vga_sync
  port map(
       i_clk => xclk,
       i_not_almost_empty => NET5560,
       i_not_almost_full => NET6616,
       i_reset_n => reset_n,
       i_valid => NET6530,
       i_vga_data => BUS5126,
       o_hsync => o_hsync,
       o_pixel_x => o_pixel_x,
       o_pixel_y => o_pixel_y,
       o_read_en => NET6590,
       o_vga_data => o_vga_data,
       o_video_on => NET6594,
       o_vsync => o_vsync
  );

WRITE_OUTPUT : hwrite_file
  generic map(
       data_width => 12,
       filename => "simresult_image.txt"
  )
  port map(
       data_to_write => IMAGE_DATA(11 downto 0),
       data_valid => PIXEL_VALID,
       enable => i_EN,
       reset_n => reset_n,
       stop_strobe => NET6226,
       sys_clk => clk_150MHz
  );

XCLK_GEN : sim_clk_generator
-- synthesis translate_off
  generic map(
       clk_period => 40 ns
  )
-- synthesis translate_on
  port map(
       o_clk => xclk
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end behavioral;
