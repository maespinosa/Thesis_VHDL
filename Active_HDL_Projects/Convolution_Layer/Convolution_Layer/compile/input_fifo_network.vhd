-------------------------------------------------------------------------------
--
-- Title       : input_fifo_network
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\input_fifo_network.vhd
-- Generated   : Sun Aug 13 17:02:37 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_fifo_network.bde
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
  port(
       i_rd_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_wr_clk : in STD_LOGIC;
       din : in STD_LOGIC_VECTOR(15 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_en : in STD_LOGIC_VECTOR(10 downto 0);
       wr_en : in STD_LOGIC_VECTOR(10 downto 0);
       almost_empty : out STD_LOGIC_VECTOR(10 downto 0);
       almost_full : out STD_LOGIC_VECTOR(10 downto 0);
       dout : out STD_LOGIC_VECTOR(15 downto 0);
       empty : out STD_LOGIC_VECTOR(10 downto 0);
       full : out STD_LOGIC_VECTOR(10 downto 0);
       prog_empty : out STD_LOGIC_VECTOR(10 downto 0);
       prog_full : out STD_LOGIC_VECTOR(10 downto 0);
       valid : out STD_LOGIC_VECTOR(10 downto 0)
  );
end input_fifo_network;

architecture arch of input_fifo_network is

---- Component declarations -----

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

signal dout0_din1 : STD_LOGIC_VECTOR(15 downto 0);
signal dout1_din2 : STD_LOGIC_VECTOR(15 downto 0);
signal dout2_din3 : STD_LOGIC_VECTOR(15 downto 0);
signal dout3_din4 : STD_LOGIC_VECTOR(15 downto 0);
signal dout4_din5 : STD_LOGIC_VECTOR(15 downto 0);
signal dout5_din6 : STD_LOGIC_VECTOR(15 downto 0);
signal dout6_din7 : STD_LOGIC_VECTOR(15 downto 0);
signal dout7_din8 : STD_LOGIC_VECTOR(15 downto 0);
signal dout8_din9 : STD_LOGIC_VECTOR(15 downto 0);
signal dout9_din10 : STD_LOGIC_VECTOR(15 downto 0);

begin

----  Component instantiations  ----

U0 : input_network_fifo
  port map(
       almost_empty => almost_empty(0),
       almost_full => almost_full(0),
       din => din,
       dout => dout0_din1,
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
       din => dout7_din8,
       dout => dout8_din9,
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
       din => dout8_din9,
       dout => dout9_din10,
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
       almost_empty => almost_empty(10),
       almost_full => almost_full(10),
       din => dout9_din10,
       dout => dout,
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

U3 : input_network_fifo
  port map(
       almost_empty => almost_empty(1),
       almost_full => almost_full(1),
       din => dout0_din1,
       dout => dout1_din2,
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
       din => dout1_din2,
       dout => dout2_din3,
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
       din => dout2_din3,
       dout => dout3_din4,
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
       din => dout3_din4,
       dout => dout4_din5,
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
       din => dout4_din5,
       dout => dout5_din6,
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
       din => dout5_din6,
       dout => dout6_din7,
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
       din => dout6_din7,
       dout => dout7_din8,
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
