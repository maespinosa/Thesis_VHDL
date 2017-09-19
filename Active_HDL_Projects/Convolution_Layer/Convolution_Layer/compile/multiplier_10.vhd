-------------------------------------------------------------------------------
--
-- Title       : multiplier_bank
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\multiplier_10.vhd
-- Generated   : Wed Sep 13 00:44:23 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\multiplier_10.bde
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


entity multiplier_bank is
  generic(
       -- name : type := value
       g_multiplier_width : integer := 16;
       g_product_width : integer := 32
  );
  port(
       i_clk : in STD_LOGIC;
       i_data0 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data1 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data2 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data3 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data4 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data5 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data6 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data7 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data8 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_data9 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w0 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w1 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w2 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w3 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w4 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w5 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w6 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w7 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w8 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       i_w9 : in STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
       o_product0 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product1 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product2 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product3 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product4 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product5 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product6 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product7 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product8 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0);
       o_product9 : out STD_LOGIC_VECTOR(g_product_width-1 downto 0)
  );
end multiplier_bank;

architecture arch of multiplier_bank is

---- Component declarations -----

component conv_multiplier
  port (
       a : in STD_LOGIC_VECTOR(15 downto 0);
       b : in STD_LOGIC_VECTOR(15 downto 0);
       clk : in STD_LOGIC;
       p : out STD_LOGIC_VECTOR(31 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal i_data7_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal i_w2_red : STD_LOGIC_VECTOR(g_multiplier_width-1 downto 0);
signal o_product0_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product1_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product2_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product3_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product4_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product5_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product6_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product7_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product8_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);
signal o_product9_red : STD_LOGIC_VECTOR(g_product_width-1 downto 0);

begin

----  Component instantiations  ----

R0 : conv_multiplier
  port map(
       a => i_data0(g_multiplier_width-1 downto 0),
       b => i_w0(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product0_red(g_product_width-1 downto 0)
  );

R1 : conv_multiplier
  port map(
       a => i_data1(g_multiplier_width-1 downto 0),
       b => i_w1(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product1_red(g_product_width-1 downto 0)
  );

R2 : conv_multiplier
  port map(
       a => i_data2(g_multiplier_width-1 downto 0),
       b => i_w2_red(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product2_red(g_product_width-1 downto 0)
  );

R3 : conv_multiplier
  port map(
       a => i_data3(g_multiplier_width-1 downto 0),
       b => i_w3(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product3_red(g_product_width-1 downto 0)
  );

R4 : conv_multiplier
  port map(
       a => i_data4(g_multiplier_width-1 downto 0),
       b => i_w4(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product4_red(g_product_width-1 downto 0)
  );

R5 : conv_multiplier
  port map(
       a => i_data5(g_multiplier_width-1 downto 0),
       b => i_w5(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product5_red(g_product_width-1 downto 0)
  );

R6 : conv_multiplier
  port map(
       a => i_data6(g_multiplier_width-1 downto 0),
       b => i_w6(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product6_red(g_product_width-1 downto 0)
  );

R7 : conv_multiplier
  port map(
       a => i_data7_red(g_multiplier_width-1 downto 0),
       b => i_w7(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product7_red(g_product_width-1 downto 0)
  );

R8 : conv_multiplier
  port map(
       a => i_data8(g_multiplier_width-1 downto 0),
       b => i_w8(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product8_red(g_product_width-1 downto 0)
  );

R9 : conv_multiplier
  port map(
       a => i_data9(g_multiplier_width-1 downto 0),
       b => i_w9(g_multiplier_width-1 downto 0),
       clk => i_clk,
       p => o_product9_red(g_product_width-1 downto 0)
  );


---- Terminal assignment ----

    -- Inputs terminals
	i_data7_red( g_multiplier_width-1 downto 0 ) <= i_data7;
	i_w2_red( g_multiplier_width-1 downto 0 ) <= i_w2;

    -- Output\buffer terminals
	o_product0 <= o_product0_red( g_product_width-1 downto 0 );
	o_product1 <= o_product1_red( g_product_width-1 downto 0 );
	o_product2 <= o_product2_red( g_product_width-1 downto 0 );
	o_product3 <= o_product3_red( g_product_width-1 downto 0 );
	o_product4 <= o_product4_red( g_product_width-1 downto 0 );
	o_product5 <= o_product5_red( g_product_width-1 downto 0 );
	o_product6 <= o_product6_red( g_product_width-1 downto 0 );
	o_product7 <= o_product7_red( g_product_width-1 downto 0 );
	o_product8 <= o_product8_red( g_product_width-1 downto 0 );
	o_product9 <= o_product9_red( g_product_width-1 downto 0 );


end arch;
