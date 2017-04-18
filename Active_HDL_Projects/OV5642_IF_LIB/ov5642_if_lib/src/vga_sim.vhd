-------------------------------------------------------------------------------
--
-- Title       : vga_sim
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\vga_sim.vhd
-- Generated   : Mon Apr 17 16:35:32 2017
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
--{entity {vga_sim} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;	
use IEEE.NUMERIC_STD.all; 

entity vga_sim is	
	port(
	i_clk : in std_logic; 
	i_reset_n : in std_logic; 	
	i_video_on : in std_logic; 
	o_vga_data	: out std_logic_vector(9 downto 0); 	   
	o_not_almost_empty : out std_logic
	);

end vga_sim;

--}} End of automatically maintained section

architecture arch of vga_sim is	
signal vga_counter : unsigned(9 downto 0); 	  
signal vga_data	: unsigned(9 downto 0); 

begin	
	
	o_vga_data <= std_logic_vector(vga_data); 
	o_not_almost_empty <= '1'; 
	
	main: process(i_clk, i_reset_n) 
	begin 	 
		if(i_reset_n = '0') then 
			vga_data <= (others => '0'); 
			vga_counter <= (others => '0'); 
		elsif(rising_edge(i_clk)) then 	
			vga_data <= vga_data; 
			vga_counter <= vga_counter; 
			
			if i_video_on = '1' then 	
				vga_counter <= vga_counter + 1;   
				vga_data <= vga_counter;  
				if(vga_counter = 639 or vga_counter = 0) then 
					vga_data <= (others => '1'); 
				end if; 
				
			else
				vga_counter <= (others => '0'); 
				vga_data <= (others => '0'); 
			end if;  
		end if; 
			
			
	end process; 
	

	 -- enter your statements here --

end arch;
