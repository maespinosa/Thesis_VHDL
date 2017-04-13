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
-- Generated   : Tue Apr 11 19:00:41 2017
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
       match : out STD_LOGIC;
       o_PIXEL_NUMBER : out INTEGER;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER
  );
end OV5642_IF_TEST;

architecture behavioral of OV5642_IF_TEST is

---- Component declarations -----

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
       i_reset_n : in STD_LOGIC;
       o_FRAME_DONE : out STD_LOGIC;
       o_IMAGE_DATA : out STD_LOGIC_VECTOR(data_width-1 downto 0);
       o_PIXEL_NUMBER : out INTEGER;
       o_PIXEL_VALID : out STD_LOGIC;
       o_PWDN : out STD_LOGIC;
       o_RST : out STD_LOGIC;
       o_X_POS : out INTEGER;
       o_Y_POS : out INTEGER
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

---- Signal declarations used on the diagram ----

signal clk : STD_LOGIC;
signal i_EN : STD_LOGIC := '1';
signal i_HREF : STD_LOGIC;
signal i_PCLK : STD_LOGIC;
signal NET4125 : STD_LOGIC := '1';
signal NET4560 : STD_LOGIC;
signal PIXEL_VALID : STD_LOGIC;
signal PWDN : STD_LOGIC;
signal reset_n : STD_LOGIC;
signal VSYNC : STD_LOGIC;
signal xclk : STD_LOGIC;
signal IMAGE_DATA : STD_LOGIC_VECTOR(data_width-1 downto 0);
signal o_SDATA : STD_LOGIC_VECTOR(data_width-1 downto 0);

begin

---- User Signal Assignments ----
--i_SDATA <= o_SDATA(9 downto 0);

----  Component instantiations  ----

COMPARE_MATLAB : matlab_compare
  generic map(
       data_width => 10,
       filename => "../../../../Thesis_Matlab_Models/Bayer_Image/test_image1.txt"
  )
  port map(
       data_to_write => IMAGE_DATA(9 downto 0),
       enable => i_EN,
       match => match,
       pixel_valid => PIXEL_VALID,
       reset_n => reset_n,
       sys_clk => clk
  );

IMAGE_CAPTURE_FSM : image_capture_control
  generic map(
       data_width => 10
  )
  port map(
       i_EN => NET4125,
       i_HREF => i_HREF,
       i_PCLK => i_PCLK,
       i_SDATA => o_SDATA(data_width-1 downto 0),
       i_VSYNC => VSYNC,
       i_clk => clk,
       i_reset_n => reset_n,
       o_FRAME_DONE => NET4560,
       o_IMAGE_DATA => IMAGE_DATA(9 downto 0),
       o_PIXEL_NUMBER => o_PIXEL_NUMBER,
       o_PIXEL_VALID => PIXEL_VALID,
       o_PWDN => PWDN,
       o_X_POS => o_X_POS,
       o_Y_POS => o_Y_POS
  );

SCENE_SIMULATOR : read_file
  generic map(
       data_width => 10,
       filename => "../../../../Thesis_Matlab_Models/Bayer_Image/test_image.txt"
  )
  port map(
       i_enable => PWDN,
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
       o_clk => clk,
       o_reset_n => reset_n
  );

WRITE_OUTPUT : hwrite_file
  generic map(
       data_width => 10,
       filename => "simresult_image.txt"
  )
  port map(
       data_to_write => IMAGE_DATA(data_width-1 downto 0),
       data_valid => PIXEL_VALID,
       enable => i_EN,
       reset_n => reset_n,
       stop_strobe => NET4560,
       sys_clk => clk
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


end behavioral;
