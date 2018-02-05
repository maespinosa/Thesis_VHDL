-------------------------------------------------------------------------------
--
-- Title       : input_fifo_network_3
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\input_fifo_network_3.vhd
-- Generated   : Thu Jan 25 01:10:35 2018
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_fifo_network_3.bde
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


entity input_fifo_network_3 is
  generic(
       -- name : type := value
       g_data_width : integer := 16
  );
  port(
       i_enable : in STD_LOGIC;
       i_rd_clk : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_wr_clk : in STD_LOGIC;
       din : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       prog_empty_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       prog_full_thresh : in STD_LOGIC_VECTOR(9 downto 0);
       rd_en : in STD_LOGIC_VECTOR(2 downto 0);
       wr_en : in STD_LOGIC_VECTOR(2 downto 0);
       almost_empty : out STD_LOGIC_VECTOR(2 downto 0);
       almost_full : out STD_LOGIC_VECTOR(2 downto 0);
       empty : out STD_LOGIC_VECTOR(2 downto 0);
       full : out STD_LOGIC_VECTOR(2 downto 0);
       o_dout0 : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_dout1 : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_dout2 : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       prog_empty : out STD_LOGIC_VECTOR(2 downto 0);
       prog_full : out STD_LOGIC_VECTOR(2 downto 0);
       valid : out STD_LOGIC_VECTOR(2 downto 0)
  );
end input_fifo_network_3;

architecture arch of input_fifo_network_3 is

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

signal dout0 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout1 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);
signal dout2 : STD_LOGIC_VECTOR(g_data_width-1 downto 0);

begin

---- User Signal Assignments ----
o_dout2 <= dout2; 
o_dout1 <= dout1; 
o_dout0 <= dout0; 

----  Component instantiations  ----

U1 : input_network_fifo
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

U2 : input_network_fifo
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

U3 : input_network_fifo
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


end arch;
