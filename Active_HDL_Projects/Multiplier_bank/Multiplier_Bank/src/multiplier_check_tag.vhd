-------------------------------------------------------------------------------
--
-- Title       : multiplier_check_tag
-- Design      : Multiplier_Bank
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Multiplier_bank\Multiplier_Bank\src\multiplier_check_tag.vhd
-- Generated   : Fri Jul 21 06:25:48 2017
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {multiplier_check_tag} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;	   
use IEEE.numeric_std.all; 


library multiplier_bank; 
use multiplier_bank.multiplier_types.all;

entity multiplier_check_tag is
	port
	(
	i_clk : in std_logic; 
	i_reset_n : in std_logic;
	
	o_mult_read_en 				: out std_logic; 
	o_mult_prog_full_thresh		: out std_logic_vector(9 downto 0);  
	
	o_prod_wr_en				: out std_logic; 
	o_prod_data					: out std_logic_vector(31 downto 0); 
	o_prod_prog_full_thresh		: out std_logic_vector(9 downto 0); 
	o_multiplicand_a : out array_type_240x16bit; 
	o_multiplicand_b : out array_type_240x16bit; 
	
	i_mult_data_valid			: in std_logic; 
	i_mult_data	   				: in std_logic_vector(15 downto 0); 
	i_mult_fifo_empty			: in std_logic; 
	i_mult_fifo_almost_empty	: in std_logic; 
	i_mult_fifo_prog_empty		: in std_logic; 
	
	i_prod_fifo_full			: in std_logic; 
	i_prod_fifo_almost_full		: in std_logic; 
	i_prod_fifo_prog_full		: in std_logic; 	 
			
    i_product : in array_type_240x32bit
		

	); 
end multiplier_check_tag;

--}} End of automatically maintained section

architecture arch of multiplier_check_tag is
begin

	 -- enter your statements here --

end arch;
