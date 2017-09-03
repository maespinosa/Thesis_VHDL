-------------------------------------------------------------------------------
--
-- Title       : filter_top
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\filter_top.vhd
-- Generated   : Tue Aug 15 23:13:32 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_top.bde
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


entity filter_top is
  port(
       i_clk : in STD_LOGIC;
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0)
  );
end filter_top;

architecture arch of filter_top is

---- Component declarations -----

component conv_multiplier
  port (
       a : in STD_LOGIC_VECTOR(15 downto 0);
       b : in STD_LOGIC_VECTOR(15 downto 0);
       clk : in STD_LOGIC;
       p : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;
component input_fifo_network
  port (
       din : in STD_LOGIC_VECTOR(15 downto 0);
       i_rd_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_wr_clk : in STD_LOGIC;
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_en : in STD_LOGIC_VECTOR(10 downto 0);
       wr_en : in STD_LOGIC_VECTOR(10 downto 0);
       almost_empty : out STD_LOGIC_VECTOR(10 downto 0);
       almost_full : out STD_LOGIC_VECTOR(10 downto 0);
       dout0 : out STD_LOGIC_VECTOR(15 downto 0);
       dout1 : out STD_LOGIC_VECTOR(15 downto 0);
       dout10 : out STD_LOGIC_VECTOR(15 downto 0);
       dout2 : out STD_LOGIC_VECTOR(15 downto 0);
       dout3 : out STD_LOGIC_VECTOR(15 downto 0);
       dout4 : out STD_LOGIC_VECTOR(15 downto 0);
       dout5 : out STD_LOGIC_VECTOR(15 downto 0);
       dout6 : out STD_LOGIC_VECTOR(15 downto 0);
       dout7 : out STD_LOGIC_VECTOR(15 downto 0);
       dout8 : out STD_LOGIC_VECTOR(15 downto 0);
       dout9 : out STD_LOGIC_VECTOR(15 downto 0);
       empty : out STD_LOGIC_VECTOR(10 downto 0);
       full : out STD_LOGIC_VECTOR(10 downto 0);
       prog_empty : out STD_LOGIC_VECTOR(10 downto 0);
       prog_full : out STD_LOGIC_VECTOR(10 downto 0);
       valid : out STD_LOGIC_VECTOR(10 downto 0)
  );
end component;
component input_fifo_net_controller
  port (
       i_almost_empty : in STD_LOGIC_VECTOR(10 downto 0);
       i_almost_full : in STD_LOGIC_VECTOR(10 downto 0);
       i_clk : in STD_LOGIC;
       i_empty : in STD_LOGIC_VECTOR(10 downto 0);
       i_full : in STD_LOGIC_VECTOR(10 downto 0);
       i_inbuff_almost_empty : in STD_LOGIC;
       i_inbuff_dout : in STD_LOGIC_VECTOR(15 downto 0);
       i_inbuff_empty : in STD_LOGIC;
       i_inbuff_prog_empty : in STD_LOGIC;
       i_inbuff_valid : in STD_LOGIC;
       i_prog_empty : in STD_LOGIC_VECTOR(10 downto 0);
       i_prog_full : in STD_LOGIC_VECTOR(10 downto 0);
       i_reset_n : in STD_LOGIC;
       i_valid : in STD_LOGIC_VECTOR(10 downto 0);
       o_inbuff_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_inbuff_rd_en : out STD_LOGIC;
       o_prog_empty_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_prog_full_thresh : out STD_LOGIC_VECTOR(9 downto 0);
       o_rd_en : out STD_LOGIC_VECTOR(10 downto 0);
       o_wr_en : out STD_LOGIC_VECTOR(10 downto 0);
       w0 : out STD_LOGIC_VECTOR(15 downto 0);
       w1 : out STD_LOGIC_VECTOR(15 downto 0);
       w10 : out STD_LOGIC_VECTOR(15 downto 0);
       w2 : out STD_LOGIC_VECTOR(15 downto 0);
       w3 : out STD_LOGIC_VECTOR(15 downto 0);
       w4 : out STD_LOGIC_VECTOR(15 downto 0);
       w5 : out STD_LOGIC_VECTOR(15 downto 0);
       w6 : out STD_LOGIC_VECTOR(15 downto 0);
       w7 : out STD_LOGIC_VECTOR(15 downto 0);
       w8 : out STD_LOGIC_VECTOR(15 downto 0);
       w9 : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal i_rd_clk : STD_LOGIC;
signal NET149 : STD_LOGIC;
signal almost_empty : STD_LOGIC_VECTOR(10 downto 0);
signal almost_full : STD_LOGIC_VECTOR(10 downto 0);
signal BUS152 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS160 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS168 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS176 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS184 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS192 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS200 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS208 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS216 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS224 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS232 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS789 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS793 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS797 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS801 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS805 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS809 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS813 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS817 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS821 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS825 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS829 : STD_LOGIC_VECTOR(15 downto 0);
signal din : STD_LOGIC_VECTOR(15 downto 0);
signal empty : STD_LOGIC_VECTOR(10 downto 0);
signal full : STD_LOGIC_VECTOR(10 downto 0);
signal prog_empty : STD_LOGIC_VECTOR(10 downto 0);
signal prog_empty_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal prog_full : STD_LOGIC_VECTOR(10 downto 0);
signal prog_full_thresh : STD_LOGIC_VECTOR(9 downto 0);
signal rd_en : STD_LOGIC_VECTOR(10 downto 0);
signal valid : STD_LOGIC_VECTOR(10 downto 0);
signal wr_en : STD_LOGIC_VECTOR(10 downto 0);

begin

----  Component instantiations  ----

U1 : input_fifo_network
  port map(
       almost_empty => almost_empty,
       almost_full => almost_full,
       din => din,
       dout0 => BUS232,
       dout1 => BUS224,
       dout10 => BUS152,
       dout2 => BUS216,
       dout3 => BUS208,
       dout4 => BUS200,
       dout5 => BUS192,
       dout6 => BUS184,
       dout7 => BUS176,
       dout8 => BUS168,
       dout9 => BUS160,
       empty => empty,
       full => full,
       i_rd_clk => i_rd_clk,
       i_reset_n => i_reset_n,
       i_wr_clk => i_rd_clk,
       prog_empty => prog_empty,
       prog_empty_thresh => prog_empty_thresh,
       prog_full => prog_full,
       prog_full_thresh => prog_full_thresh,
       rd_en => rd_en,
       valid => valid,
       wr_en => wr_en
  );

U10 : conv_multiplier
  port map(
       a => BUS216,
       b => BUS825,
       clk => NET149
  );

U11 : conv_multiplier
  port map(
       a => BUS224,
       b => BUS829,
       clk => NET149
  );

U12 : conv_multiplier
  port map(
       a => BUS232,
       b => BUS789,
       clk => NET149
  );

U13 : input_fifo_net_controller
  port map(
       i_almost_empty => almost_empty,
       i_almost_full => almost_full,
       i_clk => i_rd_clk,
       i_empty => empty,
       i_full => full,
       i_inbuff_almost_empty => i_inbuff_almost_empty,
       i_inbuff_dout => i_inbuff_dout,
       i_inbuff_empty => i_inbuff_empty,
       i_inbuff_prog_empty => i_inbuff_prog_empty,
       i_inbuff_valid => i_inbuff_valid,
       i_prog_empty => prog_empty,
       i_prog_full => prog_full,
       i_reset_n => i_reset_n,
       i_valid => valid,
       o_inbuff_prog_empty_thresh => o_inbuff_prog_empty_thresh,
       o_inbuff_rd_en => o_inbuff_rd_en,
       o_prog_empty_thresh => prog_empty_thresh,
       o_prog_full_thresh => prog_full_thresh,
       o_rd_en => rd_en,
       o_wr_en => wr_en,
       w0 => BUS793,
       w1 => BUS797,
       w10 => BUS789,
       w2 => BUS801,
       w3 => BUS805,
       w4 => BUS809,
       w5 => BUS813,
       w6 => BUS817,
       w7 => BUS821,
       w8 => BUS825,
       w9 => BUS829
  );

U2 : conv_multiplier
  port map(
       a => BUS152,
       b => BUS793,
       clk => NET149
  );

U3 : conv_multiplier
  port map(
       a => BUS160,
       b => BUS797,
       clk => NET149
  );

U4 : conv_multiplier
  port map(
       a => BUS168,
       b => BUS801,
       clk => NET149
  );

U5 : conv_multiplier
  port map(
       a => BUS176,
       b => BUS805,
       clk => NET149
  );

U6 : conv_multiplier
  port map(
       a => BUS184,
       b => BUS809,
       clk => NET149
  );

U7 : conv_multiplier
  port map(
       a => BUS192,
       b => BUS813,
       clk => NET149
  );

U8 : conv_multiplier
  port map(
       a => BUS200,
       b => BUS817,
       clk => NET149
  );

U9 : conv_multiplier
  port map(
       a => BUS208,
       b => BUS821,
       clk => NET149
  );


---- Terminal assignment ----

    -- Inputs terminals
	i_rd_clk <= i_clk;


end arch;
