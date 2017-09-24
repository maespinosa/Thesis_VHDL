-------------------------------------------------------------------------------
--
-- Title       : accumulator_relay
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\accumulator_relay.vhd
-- Generated   : Sat Sep 16 21:23:05 2017
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
--{entity {accumulator_relay} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all; 

entity accumulator_relay is	 
	port( 
	i_clk	: in std_logic; 
	i_reset_n : in std_logic; 
	
	i_acc_filter_data : in std_logic_vector(31 downto 0); 
	o_recycled_acc_data : out std_logic_vector(31 downto 0); 
	o_recycled_acc_data_en : out std_logic;		  
	
	i_data_valid 	: in std_logic; 
	o_rd_en			: out std_logic; 
	i_empty			: in std_logic; 
	i_almost_empty	: in std_logic; 
	i_prog_empty	: in std_logic; 
	o_prog_emtpy_thresh : out std_logic_vector(10 downto 0); 
	
	o_conv_volume_out : out std_logic_vector(31 downto 0);
	o_conv_data_ready	: out std_logic; 
	
	i_prog_full		: in std_logic
	); 
end accumulator_relay;

--}} End of automatically maintained section

architecture arch of accumulator_relay is
begin
	
	main: process(i_prog_full,i_data_valid) is 
	begin  	
		o_rd_en					<= '0'; 
		o_recycled_acc_data_en 	<= '0'; 
		o_recycled_acc_data 	<= (others => '0'); 
		
		if(i_prog_full = '1') 	 
			o_rd_en 			<= '1'; 			
			
			if(i_data_valid = '1') then   
				o_recycled_acc_data_en 	<= '1'; 
				o_recycled_acc_data 	<= i_acc_filter_data; 
			else 
				o_recycled_acc_data_en 	<= '0'; 
				o_recycled_acc_data 	<= (others => '0'); 
			end if; 
			
		else 
			o_rd_en <= '0'; 
		end if; 

	end process; 
	
	
	
	
	
	
	
	
end arch;
