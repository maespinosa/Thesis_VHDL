-------------------------------------------------------------------------------
--
-- Title       : normalizer
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\compile\normalizer.vhd
-- Generated   : Thu Feb  1 16:55:18 2018
-- From        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\normalizer.bde
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


entity normalizer is
  generic(
       -- name : type := value
       g_data_width : integer := 32
  );
  port(
       i_clk : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_fresh_params : in STD_LOGIC;
       i_input_data_valid : in STD_LOGIC;
       i_outbuff_almost_full : in STD_LOGIC;
       i_reset_n : in STD_LOGIC;
       i_beta : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_epsilon : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_gamma : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_mean : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_variance : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_normalized_data_valid : out STD_LOGIC;
       o_normalizer_ready : out STD_LOGIC;
       o_normalized_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0)
  );
end normalizer;

architecture arch of normalizer is

---- Component declarations -----

component divider_fp
  port (
       aclk : in STD_LOGIC;
       aclken : in STD_LOGIC;
       aresetn : in STD_LOGIC;
       m_axis_result_tready : in STD_LOGIC;
       s_axis_a_tdata : in STD_LOGIC_VECTOR(15 downto 0);
       s_axis_a_tvalid : in STD_LOGIC;
       s_axis_b_tdata : in STD_LOGIC_VECTOR(15 downto 0);
       s_axis_b_tvalid : in STD_LOGIC;
       m_axis_result_tdata : out STD_LOGIC_VECTOR(15 downto 0);
       m_axis_result_tuser : out STD_LOGIC_VECTOR(0 downto 0);
       m_axis_result_tvalid : out STD_LOGIC;
       s_axis_a_tready : out STD_LOGIC;
       s_axis_b_tready : out STD_LOGIC
  );
end component;
component square_root_fp
  port (
       aclk : in STD_LOGIC;
       aclken : in STD_LOGIC;
       aresetn : in STD_LOGIC;
       m_axis_result_tready : in STD_LOGIC;
       s_axis_a_tdata : in STD_LOGIC_VECTOR(15 downto 0);
       s_axis_a_tuser : in STD_LOGIC_VECTOR(0 downto 0);
       s_axis_a_tvalid : in STD_LOGIC;
       m_axis_result_tdata : out STD_LOGIC_VECTOR(15 downto 0);
       m_axis_result_tuser : out STD_LOGIC_VECTOR(1 downto 0);
       m_axis_result_tvalid : out STD_LOGIC;
       s_axis_a_tready : out STD_LOGIC
  );
end component;
component norm_router
  generic(
       g_data_width : INTEGER := 32
  );
  port (
       i_beta : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_clk : in STD_LOGIC;
       i_div_result_valid : in STD_LOGIC;
       i_diva_ready : in STD_LOGIC;
       i_divb_ready : in STD_LOGIC;
       i_enable : in STD_LOGIC;
       i_epsilon : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_fresh_params : in STD_LOGIC;
       i_gamma : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_data : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_input_data_valid : in STD_LOGIC;
       i_mean : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_outbuff_almost_full : in STD_LOGIC;
       i_quotient : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_reset_n : in STD_LOGIC;
       i_sqrt_rad_ready : in STD_LOGIC;
       i_sqrt_result_valid : in STD_LOGIC;
       i_square_root : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       i_variance : in STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_denominator : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_div_result_ready : out STD_LOGIC;
       o_diva_valid : out STD_LOGIC;
       o_divb_valid : out STD_LOGIC;
       o_normalized_data : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_normalized_data_valid : out STD_LOGIC;
       o_normalizer_ready : out STD_LOGIC;
       o_numerator : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_radicand : out STD_LOGIC_VECTOR(g_data_width-1 downto 0);
       o_sqrt_rad_valid : out STD_LOGIC;
       o_sqrt_result_ready : out STD_LOGIC
  );
end component;

----     Constants     -----
constant DANGLING_INPUT_CONSTANT : STD_LOGIC := 'Z';

---- Signal declarations used on the diagram ----

signal NET102 : STD_LOGIC;
signal NET66 : STD_LOGIC;
signal NET70 : STD_LOGIC;
signal NET74 : STD_LOGIC;
signal NET78 : STD_LOGIC;
signal NET82 : STD_LOGIC;
signal NET86 : STD_LOGIC;
signal NET90 : STD_LOGIC;
signal NET94 : STD_LOGIC;
signal NET98 : STD_LOGIC;
signal BUS46 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS50 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS54 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS58 : STD_LOGIC_VECTOR(15 downto 0);
signal BUS62 : STD_LOGIC_VECTOR(15 downto 0);

---- Declaration for Dangling input ----
signal Dangling_Input_Signal : STD_LOGIC;

begin

----  Component instantiations  ----

DIVIDER : divider_fp
  port map(
       aclk => i_clk,
       aclken => i_enable,
       aresetn => i_reset_n,
       m_axis_result_tdata => BUS54,
       m_axis_result_tready => NET82,
       m_axis_result_tvalid => NET86,
       s_axis_a_tdata => BUS46,
       s_axis_a_tready => NET70,
       s_axis_a_tvalid => NET66,
       s_axis_b_tdata => BUS50,
       s_axis_b_tready => NET78,
       s_axis_b_tvalid => NET74
  );

ROUTER : norm_router
  generic map(
       g_data_width => g_data_width
  )
  port map(
       i_beta => i_beta(g_data_width-1 downto 0),
       i_clk => i_clk,
       i_div_result_valid => NET86,
       i_diva_ready => NET70,
       i_divb_ready => NET78,
       i_enable => i_enable,
       i_epsilon => i_epsilon(g_data_width-1 downto 0),
       i_fresh_params => i_fresh_params,
       i_gamma => i_gamma(g_data_width-1 downto 0),
       i_input_data => i_input_data(g_data_width-1 downto 0),
       i_input_data_valid => i_input_data_valid,
       i_mean => i_mean(g_data_width-1 downto 0),
       i_outbuff_almost_full => i_outbuff_almost_full,
       i_quotient => BUS54(15 downto 0),
       i_reset_n => i_reset_n,
       i_sqrt_rad_ready => NET98,
       i_sqrt_result_valid => NET102,
       i_square_root => BUS62(15 downto 0),
       i_variance => i_variance(g_data_width-1 downto 0),
       o_denominator => BUS50(15 downto 0),
       o_div_result_ready => NET82,
       o_diva_valid => NET66,
       o_divb_valid => NET74,
       o_normalized_data => o_normalized_data(g_data_width-1 downto 0),
       o_normalized_data_valid => o_normalized_data_valid,
       o_normalizer_ready => o_normalizer_ready,
       o_numerator => BUS46(15 downto 0),
       o_radicand => BUS58(15 downto 0),
       o_sqrt_rad_valid => NET90,
       o_sqrt_result_ready => NET94
  );

SQUARE_ROOT : square_root_fp
  port map(
       s_axis_a_tuser(0) => Dangling_Input_Signal,
       aclk => i_clk,
       aclken => i_enable,
       aresetn => i_reset_n,
       m_axis_result_tdata => BUS62,
       m_axis_result_tready => NET98,
       m_axis_result_tvalid => NET102,
       s_axis_a_tdata => BUS58,
       s_axis_a_tready => NET94,
       s_axis_a_tvalid => NET90
  );


---- Dangling input signal assignment ----

Dangling_Input_Signal <= DANGLING_INPUT_CONSTANT;

end arch;
