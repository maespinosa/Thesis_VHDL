-------------------------------------------------------------------------------
--
-- Title       : division_by_mutiplication
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\division_by_mutiplication.vhd
-- Generated   : Tue Dec  5 20:06:02 2017
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\division_by_mutiplication.bde
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


entity division_by_mutiplication is
  generic(
       g_div_input_width : integer := 32;
       g_div_output_width : integer := 32;
       g_mult_input_width : integer := 32;
       g_mult_output_width : integer := 63
  );
  port(
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_start : in STD_LOGIC;
       i_denominator : in STD_LOGIC_VECTOR(g_div_input_width-1 downto 0);
       i_numerator : in STD_LOGIC_VECTOR(g_div_input_width-1 downto 0);
       o_done : out STD_LOGIC;
       o_quotient : out STD_LOGIC_VECTOR(g_div_output_width-1 downto 0)
  );
end division_by_mutiplication;

architecture arch of division_by_mutiplication is

---- Component declarations -----

component divider_multiplier
  port (
       a : in STD_LOGIC_VECTOR(31 downto 0);
       b : in STD_LOGIC_VECTOR(31 downto 0);
       clk : in STD_LOGIC;
       p : out STD_LOGIC_VECTOR(63 downto 0)
  );
end component;
component divider_subract_shift
  generic(
       g_div_input_width : INTEGER := 32;
       g_div_output_width : INTEGER := 32;
       g_mult_input_width : INTEGER := 32;
       g_mult_output_width : INTEGER := 63
  );
  port (
       i_clk : in STD_LOGIC;
       i_denominator : in STD_LOGIC_VECTOR(g_div_input_width-1 downto 0);
       i_enable : in STD_LOGIC;
       i_numerator : in STD_LOGIC_VECTOR(g_div_input_width-1 downto 0);
       i_product_a : in STD_LOGIC_VECTOR(g_mult_output_width-1 downto 0);
       i_product_b : in STD_LOGIC_VECTOR(g_mult_output_width-1 downto 0);
       i_reset_n : in STD_LOGIC;
       i_start : in STD_LOGIC;
       o_done : out STD_LOGIC;
       o_multiplicand_a : out STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
       o_multiplicand_b : out STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
       o_multiplicand_c : out STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
       o_multiplicand_d : out STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
       o_quotient : out STD_LOGIC_VECTOR(g_div_output_width-1 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal mult_a : STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
signal mult_b : STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
signal mult_c : STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
signal mult_d : STD_LOGIC_VECTOR(g_mult_input_width-1 downto 0);
signal product_a : STD_LOGIC_VECTOR(g_mult_output_width-1 downto 0);
signal product_b : STD_LOGIC_VECTOR(g_mult_output_width-1 downto 0);

begin

----  Component instantiations  ----

MULTIPLIER1 : divider_multiplier
  port map(
       a => mult_a(g_mult_input_width-1 downto 0),
       b => mult_b(g_mult_input_width-1 downto 0),
       clk => i_clk,
       p => product_a(g_mult_output_width-1 downto 0)
  );

MULTIPLIER2 : divider_multiplier
  port map(
       a => mult_c(g_mult_input_width-1 downto 0),
       b => mult_d(g_mult_input_width-1 downto 0),
       clk => i_clk,
       p => product_b(g_mult_output_width-1 downto 0)
  );

SHIFT_SUBTRACT : divider_subract_shift
  generic map(
       g_div_input_width => g_div_input_width,
       g_div_output_width => g_div_output_width,
       g_mult_input_width => g_mult_input_width,
       g_mult_output_width => g_mult_output_width
  )
  port map(
       i_clk => i_clk,
       i_denominator => i_denominator(g_div_input_width-1 downto 0),
       i_enable => i_enable,
       i_numerator => i_numerator(g_div_input_width-1 downto 0),
       i_product_a => product_a(g_mult_output_width-1 downto 0),
       i_product_b => product_b(g_mult_output_width-1 downto 0),
       i_reset_n => i_reset_n,
       i_start => i_start,
       o_done => o_done,
       o_multiplicand_a => mult_a(g_mult_input_width-1 downto 0),
       o_multiplicand_b => mult_b(g_mult_input_width-1 downto 0),
       o_multiplicand_c => mult_c(g_mult_input_width-1 downto 0),
       o_multiplicand_d => mult_d(g_mult_input_width-1 downto 0),
       o_quotient => o_quotient(g_div_output_width-1 downto 0)
  );


end arch;
