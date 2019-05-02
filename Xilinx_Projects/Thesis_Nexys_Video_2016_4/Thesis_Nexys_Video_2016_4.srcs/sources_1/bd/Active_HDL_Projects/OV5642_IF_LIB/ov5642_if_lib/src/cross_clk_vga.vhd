-------------------------------------------------------------------------------
--
-- Title       : cross_clk_vga
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\cross_clk_vga.vhd
-- Generated   : Wed May 17 18:20:56 2017
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
--{entity {cross_clk_vga} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity cross_clk_vga is	
	port(		 	  
	i_clk1 					: in std_logic; 
	i_clk2 					: in std_logic; 	  
	i_reset_n 				: in std_logic; 	
	
	i_start_display 		: in std_logic; 
	i_pixel_x 				: in std_logic_vector(9 downto 0); 
	i_pixel_y 				: in std_logic_vector(9 downto 0);
	i_video_on 				: in std_logic; 
	
	i_inbuff_valid			: in std_logic; 
	i_inbuff_empty			: in std_logic; 
	i_inbuff_almost_empty	: in std_logic;  
	i_inbuff_prog_empty		: in std_logic; 
	
	i_prog_empty_threshold	: in std_logic_vector(10 downto 0);   
	
	o_start_display 		: out std_logic; 
	o_pixel_x 				: out std_logic_vector(9 downto 0); 
	o_pixel_y 				: out std_logic_vector(9 downto 0);
	o_video_on 				: out std_logic; 
	
	o_inbuff_valid			: out std_logic; 
	o_inbuff_empty			: out std_logic; 
	o_inbuff_almost_empty	: out std_logic;  
	o_inbuff_prog_empty		: out std_logic; 
	
	o_prog_empty_threshold	: out std_logic_vector(10 downto 0)	  
	
	); 
end cross_clk_vga;

--}} End of automatically maintained section

architecture arch of cross_clk_vga is	  

signal start_display : std_logic; 
signal pixel_x		 : std_logic_vector(9 downto 0); 
signal pixel_y 	     : std_logic_vector(9 downto 0); 
signal video_on		 : std_logic; 
signal inbuff_valid	 : std_logic; 
signal inbuff_empty	 : std_logic; 
signal inbuff_almost_empty : std_logic; 
signal inbuff_prog_empty	: std_logic; 
signal prog_empty_threshold	: std_logic_vector(10 downto 0); 




begin 
	
	o_start_display 		<= start_display; 
	o_pixel_x 				<= pixel_x; 
	o_pixel_y 				<= pixel_y;
	o_video_on 				<= video_on; 
	
	o_inbuff_valid			<= inbuff_valid; 
	o_inbuff_empty			<= inbuff_empty; 
	o_inbuff_almost_empty	<= inbuff_almost_empty;  
	o_inbuff_prog_empty		<= inbuff_prog_empty; 
	
	o_prog_empty_threshold	<= prog_empty_threshold; 	 
	
	
	
	clk_domain1: process(i_clk1, i_reset_n)	-- 150MHz_CLK
	begin 
		if(i_reset_n = '0') then 
			start_display <= '0'; 
			prog_empty_threshold <= (others => '0'); 
			
		elsif(rising_edge(i_clk1)) then  
			start_display <= i_start_display; 
			prog_empty_threshold <= i_prog_empty_threshold; 
			
		end if; 

	end process;  
	
	clk_domain2: process(i_clk2, i_reset_n) -- VGA_CLK 
	begin 		
		if(i_reset_n = '0') then  
			pixel_x		 			<= (others => '0'); 
			pixel_y 				<= (others => '0'); 
			video_on 				<= '0'; 
			inbuff_valid 			<= '0'; 
			inbuff_empty 			<= '0'; 
			inbuff_almost_empty 	<= '0'; 
			inbuff_prog_empty 		<= '0'; 
			
			
		elsif(rising_edge(i_clk2)) then 	
			pixel_x <= i_pixel_x; 
			pixel_y <= i_pixel_y; 
			
			inbuff_valid <= i_inbuff_valid; 
			video_on <= i_video_on; 
			inbuff_empty <= i_inbuff_empty; 
			inbuff_almost_empty <= i_inbuff_almost_empty; 
			inbuff_prog_empty <= i_inbuff_prog_empty; 

		end if; 

	end process; 
	
	



end arch;
