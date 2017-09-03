-------------------------------------------------------------------------------
--
-- Title       : input_fifo_network
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\input_fifo_network.vhd
-- Generated   : Sat Sep  2 20:46:40 2017
-- From        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_fifo_network.bde
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


entity input_fifo_network is
  generic(
       -- name : type := value
       g_data_width : integer := 16;
       g_red_bits : integer := 4;
       g_green_bits : integer := 4;
       g_blue_bits : integer := 4
  );
  port(
       i_rd_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_wr_clk : in STD_LOGIC;
       din : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_en : in STD_LOGIC_VECTOR(10 downto 0);
       wr_en : in STD_LOGIC_VECTOR(10 downto 0);
       almost_empty : out STD_LOGIC_VECTOR(10 downto 0);
       almost_full : out STD_LOGIC_VECTOR(10 downto 0);
       empty : out STD_LOGIC_VECTOR(10 downto 0);
       full : out STD_LOGIC_VECTOR(10 downto 0);
       o_dout0_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout0_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout0_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout10_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout10_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout10_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout1_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout1_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout1_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout2_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout2_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout2_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout3_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout3_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout3_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout4_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout4_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout4_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout5_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout5_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout5_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout6_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout6_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout6_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout7_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout7_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout7_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout8_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout8_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout8_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout9_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout9_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout9_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       prog_empty : out STD_LOGIC_VECTOR(10 downto 0);
       prog_full : out STD_LOGIC_VECTOR(10 downto 0);
       valid : out STD_LOGIC_VECTOR(10 downto 0)
  );
end input_fifo_network;

architecture arch of input_fifo_network is

---- Component declarations -----

component input_network_colors
  generic(
       g_data_width : INTEGER := 16;
       g_red_bits : INTEGER := 4;
       g_green_bits : INTEGER := 4;
       g_blue_bits : INTEGER := 4
  );
  port (
       i_clk : in STD_LOGIC;
       i_dout0 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout1 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout10 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout2 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout3 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout4 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout5 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout6 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout7 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout8 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_dout9 : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_reset_n : in STD_LOGIC;
       o_dout0_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout0_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout0_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout10_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout10_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout10_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout1_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout1_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout1_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout2_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout2_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout2_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout3_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout3_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout3_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout4_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout4_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout4_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout5_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout5_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout5_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout6_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout6_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout6_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout7_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout7_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout7_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout8_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout8_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout8_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0);
       o_dout9_blue : out STD_LOGIC_VECTOR(g_blue_bits-1 downto 0);
       o_dout9_green : out STD_LOGIC_VECTOR(g_green_bits-1 downto 0);
       o_dout9_red : out STD_LOGIC_VECTOR(g_red_bits-1 downto 0)
  );
end component;
component input_network_fifo
  port (
       din : in STD_LOGIC_VECTOR(15 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_clk : in STD_LOGIC;
       rd_en : in STD_LOGIC;
       rst : in STD_LOGIC;
       wr_clk : in STD_LOGIC;
       wr_en : in STD_LOGIC;
       almost_empty : out STD_LOGIC;
       almost_full : out STD_LOGIC;
       dout : out STD_LOGIC_VECTOR(15 downto 0);
       empty : out STD_LOGIC;
       full : out STD_LOGIC;
       prog_empty : out STD_LOGIC;
       prog_full : out STD_LOGIC;
       valid : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal dout0 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout1 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout10 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout2 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout3 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout4 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout5 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout6 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout7 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout8 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout9 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);

begin

----  Component instantiations  ----

U0 : input_network_fifo
  port map(
       almost_empty => almost_empty(0),
       almost_full => almost_full(0),
       din => din(g_data_width-1 downto 0),
       dout => dout0(g_data_width-1 downto 0),
       empty => empty(0),
       full => full(0),
       prog_empty => prog_empty(0),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(0),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(0),
       rst => i_reset_n,
       valid => valid(0),
       wr_clk => i_wr_clk,
       wr_en => wr_en(0)
  );

U10 : input_network_fifo
  port map(
       almost_empty => almost_empty(8),
       almost_full => almost_full(8),
       din => dout7(g_data_width-1 downto 0),
       dout => dout8(g_data_width-1 downto 0),
       empty => empty(8),
       full => full(8),
       prog_empty => prog_empty(8),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(8),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(8),
       rst => i_reset_n,
       valid => valid(8),
       wr_clk => i_wr_clk,
       wr_en => wr_en(8)
  );

U11 : input_network_fifo
  port map(
       almost_empty => almost_empty(9),
       almost_full => almost_full(9),
       din => dout8(g_data_width-1 downto 0),
       dout => dout9(g_data_width-1 downto 0),
       empty => empty(9),
       full => full(9),
       prog_empty => prog_empty(9),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(9),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(9),
       rst => i_reset_n,
       valid => valid(9),
       wr_clk => i_wr_clk,
       wr_en => wr_en(9)
  );

U12 : input_network_fifo
  port map(
       dout(0) => dout10(0),
       dout(1) => dout10(1),
       dout(2) => dout10(2),
       dout(3) => dout10(3),
       dout(4) => dout10(4),
       dout(5) => dout10(5),
       dout(6) => dout10(6),
       dout(7) => dout10(7),
       dout(8) => dout10(8),
       dout(9) => dout10(9),
       dout(10) => dout10(10),
       dout(11) => dout10(11),
       dout(12) => dout10(12),
       dout(13) => dout10(13),
       dout(14) => dout10(14),
       dout(15) => dout10(15),
       almost_empty => almost_empty(10),
       almost_full => almost_full(10),
       din => dout9(g_data_width-1 downto 0),
       empty => empty(10),
       full => full(10),
       prog_empty => prog_empty(10),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(10),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(10),
       rst => i_reset_n,
       valid => valid(10),
       wr_clk => i_wr_clk,
       wr_en => wr_en(10)
  );

U2 : input_network_colors
  generic map(
       g_data_width => g_data_width,
       g_red_bits => g_red_bits,
       g_green_bits => g_green_bits,
       g_blue_bits => g_blue_bits
  )
  port map(
       i_clk => i_wr_clk,
       i_dout0 => dout0(g_data_width-1 downto 0),
       i_dout1 => dout1(g_data_width-1 downto 0),
       i_dout10 => dout10(g_data_width-1 downto 0),
       i_dout2 => dout2(g_data_width-1 downto 0),
       i_dout3 => dout3(g_data_width-1 downto 0),
       i_dout4 => dout4(g_data_width-1 downto 0),
       i_dout5 => dout5(g_data_width-1 downto 0),
       i_dout6 => dout6(g_data_width-1 downto 0),
       i_dout7 => dout7(g_data_width-1 downto 0),
       i_dout8 => dout8(g_data_width-1 downto 0),
       i_dout9 => dout9(g_data_width-1 downto 0),
       i_reset_n => i_reset_n,
       o_dout0_blue => o_dout0_blue(g_blue_bits-1 downto 0),
       o_dout0_green => o_dout0_green(g_green_bits-1 downto 0),
       o_dout0_red => o_dout0_red(g_red_bits-1 downto 0),
       o_dout10_blue => o_dout10_blue(g_blue_bits-1 downto 0),
       o_dout10_green => o_dout10_green(g_green_bits-1 downto 0),
       o_dout10_red => o_dout10_red(g_red_bits-1 downto 0),
       o_dout1_blue => o_dout1_blue(g_blue_bits-1 downto 0),
       o_dout1_green => o_dout1_green(g_green_bits-1 downto 0),
       o_dout1_red => o_dout1_red(g_red_bits-1 downto 0),
       o_dout2_blue => o_dout2_blue(g_blue_bits-1 downto 0),
       o_dout2_green => o_dout2_green(g_green_bits-1 downto 0),
       o_dout2_red => o_dout2_red(g_red_bits-1 downto 0),
       o_dout3_blue => o_dout3_blue(g_blue_bits-1 downto 0),
       o_dout3_green => o_dout3_green(g_green_bits-1 downto 0),
       o_dout3_red => o_dout3_red(g_red_bits-1 downto 0),
       o_dout4_blue => o_dout4_blue(g_blue_bits-1 downto 0),
       o_dout4_green => o_dout4_green(g_green_bits-1 downto 0),
       o_dout4_red => o_dout4_red(g_red_bits-1 downto 0),
       o_dout5_blue => o_dout5_blue(g_blue_bits-1 downto 0),
       o_dout5_green => o_dout5_green(g_green_bits-1 downto 0),
       o_dout5_red => o_dout5_red(g_red_bits-1 downto 0),
       o_dout6_blue => o_dout6_blue(g_blue_bits-1 downto 0),
       o_dout6_green => o_dout6_green(g_green_bits-1 downto 0),
       o_dout6_red => o_dout6_red(g_red_bits-1 downto 0),
       o_dout7_blue => o_dout7_blue(g_blue_bits-1 downto 0),
       o_dout7_green => o_dout7_green(g_green_bits-1 downto 0),
       o_dout7_red => o_dout7_red(g_red_bits-1 downto 0),
       o_dout8_blue => o_dout8_blue(g_blue_bits-1 downto 0),
       o_dout8_green => o_dout8_green(g_green_bits-1 downto 0),
       o_dout8_red => o_dout8_red(g_red_bits-1 downto 0),
       o_dout9_blue => o_dout9_blue(g_blue_bits-1 downto 0),
       o_dout9_green => o_dout9_green(g_green_bits-1 downto 0),
       o_dout9_red => o_dout9_red(g_red_bits-1 downto 0)
  );

U3 : input_network_fifo
  port map(
       almost_empty => almost_empty(1),
       almost_full => almost_full(1),
       din => dout0(g_data_width-1 downto 0),
       dout => dout1(g_data_width-1 downto 0),
       empty => empty(1),
       full => full(1),
       prog_empty => prog_empty(1),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(1),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(1),
       rst => i_reset_n,
       valid => valid(1),
       wr_clk => i_wr_clk,
       wr_en => wr_en(1)
  );

U4 : input_network_fifo
  port map(
       almost_empty => almost_empty(2),
       almost_full => almost_full(2),
       din => dout1(g_data_width-1 downto 0),
       dout => dout2(g_data_width-1 downto 0),
       empty => empty(2),
       full => full(2),
       prog_empty => prog_empty(2),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(2),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(2),
       rst => i_reset_n,
       valid => valid(2),
       wr_clk => i_wr_clk,
       wr_en => wr_en(2)
  );

U5 : input_network_fifo
  port map(
       almost_empty => almost_empty(3),
       almost_full => almost_full(3),
       din => dout2(g_data_width-1 downto 0),
       dout => dout3(g_data_width-1 downto 0),
       empty => empty(3),
       full => full(3),
       prog_empty => prog_empty(3),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(3),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(3),
       rst => i_reset_n,
       valid => valid(3),
       wr_clk => i_wr_clk,
       wr_en => wr_en(3)
  );

U6 : input_network_fifo
  port map(
       almost_empty => almost_empty(4),
       almost_full => almost_full(4),
       din => dout3(g_data_width-1 downto 0),
       dout => dout4(g_data_width-1 downto 0),
       empty => empty(4),
       full => full(4),
       prog_empty => prog_empty(4),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(4),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(4),
       rst => i_reset_n,
       valid => valid(4),
       wr_clk => i_wr_clk,
       wr_en => wr_en(4)
  );

U7 : input_network_fifo
  port map(
       almost_empty => almost_empty(5),
       almost_full => almost_full(5),
       din => dout4(g_data_width-1 downto 0),
       dout => dout5(g_data_width-1 downto 0),
       empty => empty(5),
       full => full(5),
       prog_empty => prog_empty(5),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(5),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(5),
       rst => i_reset_n,
       valid => valid(5),
       wr_clk => i_wr_clk,
       wr_en => wr_en(5)
  );

U8 : input_network_fifo
  port map(
       almost_empty => almost_empty(6),
       almost_full => almost_full(6),
       din => dout5(g_data_width-1 downto 0),
       dout => dout6(g_data_width-1 downto 0),
       empty => empty(6),
       full => full(6),
       prog_empty => prog_empty(6),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(6),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(6),
       rst => i_reset_n,
       valid => valid(6),
       wr_clk => i_wr_clk,
       wr_en => wr_en(6)
  );

U9 : input_network_fifo
  port map(
       almost_empty => almost_empty(7),
       almost_full => almost_full(7),
       din => dout6(g_data_width-1 downto 0),
       dout => dout7(g_data_width-1 downto 0),
       empty => empty(7),
       full => full(7),
       prog_empty => prog_empty(7),
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full(7),
       prog_full_thresh => prog_full_thresh,
       rd_clk => i_rd_clk,
       rd_en => rd_en(7),
       rst => i_reset_n,
       valid => valid(7),
       wr_clk => i_wr_clk,
       wr_en => wr_en(7)
  );


end arch;
