-------------------------------------------------------------------------------
--
-- Title       : relu_unit
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\relu_unit.vhd
-- Generated   : Sun Sep  3 08:38:20 2017
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use ieee.numeric_std.all; 


entity relu_unit is	 
	generic(
	g_conv_width 			: integer := 16; 
	g_relu_width 			: integer := 16
	); 
	port(
	i_clk 					: in std_logic; 
	i_reset_n				: in std_logic; 
	i_relu_en				: in std_logic; 
	i_enable				: in std_logic; 
	i_normalized_data  		: in std_logic_vector(g_conv_width-1 downto 0); 	 	
	i_fifo_full				: in std_logic; 
	i_fifo_almost_full 		: in std_logic; 
	i_fifo_prog_full		: in std_logic; 
	
	i_normalized_data_valid : in std_logic; 
	
	o_relu_out 				: out std_logic_vector(g_relu_width-1 downto 0); 
	o_wr_en 				: out std_logic; 	  
	o_fifo_prog_full_thresh : out std_logic_vector(9 downto 0); 
	
	o_outbuff_prog_full		: out std_logic
	); 
	
end relu_unit;



architecture arch of relu_unit is
begin
	
	activation: process(i_fifo_prog_full,i_enable, i_relu_en,i_normalized_data_valid,i_normalized_data) is 
	begin
		
		o_outbuff_prog_full <= i_fifo_prog_full;
		o_fifo_prog_full_thresh <= (others => '1'); 
		
		
		if(i_enable = '1') then    
			if(i_relu_en = '1') then  
				if(i_fifo_prog_full = '0' and i_normalized_data_valid = '1') then  
					if(signed(i_normalized_data) >= 0) then 
						o_relu_out <= i_normalized_data; 
						o_wr_en <= i_normalized_data_valid; 
					else 
						o_relu_out <= (others => '0'); 
						o_wr_en <= '1';  
					end if; 
				else 
					o_relu_out <= (others => '0'); 
					o_wr_en <= '0';  
				end if; 
			else
				if(i_fifo_prog_full = '0' and i_normalized_data_valid = '1') then  
					o_relu_out <= i_normalized_data; 
					o_wr_en <= i_normalized_data_valid; 
				else 
					o_relu_out <= (others => '0'); 
					o_wr_en <= '0';  
				end if; 	
			end if; 
		else 
			o_relu_out <= (others => '0'); 
			o_wr_en <= '0'; 
		end if; 
		
		
	end process; 
	
end arch;
