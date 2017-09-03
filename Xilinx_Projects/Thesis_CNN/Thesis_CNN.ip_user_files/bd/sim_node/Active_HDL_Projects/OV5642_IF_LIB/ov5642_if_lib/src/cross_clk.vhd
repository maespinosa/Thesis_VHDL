-------------------------------------------------------------------------------
--
-- Title       : cross_clk
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\cross_clk.vhd
-- Generated   : Tue May  9 21:41:23 2017
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
--{entity {cross_clk} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity cross_clk is	  
	port(
	i_clk1 : in std_logic;
	i_clk2 : in std_logic; 	   
	i_reset_n : in std_logic; 	  
	
	i_start_capture 		: in std_logic; 
	i_i2c_busy				: in std_logic; 
	i_capture_busy			: in std_logic; 
	i_config_done			: in std_logic; 
	i_image_enable			: in std_logic; 
	i_debug_state			: in std_logic_vector(2 downto 0); 
	i_frame_done			: in std_logic; 
	i_pclk_counter  		: in std_logic_vector(7 downto 0); 
	i_X_pos					: in std_logic_vector(11 downto 0); 
	i_Y_pos					: in std_logic_vector(11 downto 0); 
	i_pixel_number 			: in std_logic_vector(31 downto 0); 
	
	i_outbuff_almost_full 	: in std_logic;
	i_outbuff_full			: in std_logic; 
	i_outbuff_prog_full		: in std_logic; 
	
	
	i_prog_full_thresh 		: in std_logic_vector(10 downto 0); 
	i_sw_config_bypass		: in std_logic;   
	
	
	o_start_capture 		: out std_logic; 
	o_i2c_busy				: out std_logic; 
	o_capture_busy			: out std_logic; 
	o_config_done			: out std_logic; 
	o_image_enable			: out std_logic; 
	o_debug_state			: out std_logic_vector(2 downto 0); 
	o_frame_done			: out std_logic; 
	o_pclk_counter  		: out std_logic_vector(7 downto 0); 
	o_X_pos					: out std_logic_vector(11 downto 0); 
	o_Y_pos					: out std_logic_vector(11 downto 0); 
	o_pixel_number 			: out std_logic_vector(31 downto 0); 
	
	o_outbuff_almost_full 	: out std_logic;
	o_outbuff_full			: out std_logic; 
	o_outbuff_prog_full		: out std_logic; 
	
	
	o_prog_full_thresh 		: out std_logic_vector(10 downto 0); 
	o_sw_config_bypass		: out std_logic
	
	); 
end cross_clk;

--}} End of automatically maintained section

architecture arch of cross_clk is 

	signal start_capture 		:  std_logic; 
	signal i2c_busy				:  std_logic; 
	signal capture_busy			:  std_logic; 
	signal config_done			:  std_logic; 
	signal image_enable			:  std_logic; 
	signal debug_state			:  std_logic_vector(2 downto 0); 
	signal frame_done			:  std_logic; 
	signal pclk_counter  		:  std_logic_vector(7 downto 0); 
	signal X_pos				:  std_logic_vector(11 downto 0); 
	signal Y_pos				:  std_logic_vector(11 downto 0); 
	signal pixel_number 		:  std_logic_vector(31 downto 0); 
	
	signal outbuff_almost_full 	:  std_logic;
	signal outbuff_full			:  std_logic; 
	signal outbuff_prog_full	:  std_logic; 
	
	
	signal prog_full_thresh 	:  std_logic_vector(10 downto 0); 
	signal sw_config_bypass		:  std_logic; 

begin	   
	
	o_start_capture 	<= start_capture; 
	o_i2c_busy		<= i2c_busy; 
	o_capture_busy	<= capture_busy;  
	o_config_done	    <= config_done; 
	o_image_enable	<= image_enable; 
	o_debug_state	    <= debug_state; 
	o_frame_done		<= frame_done; 
	o_pclk_counter  	<= pclk_counter; 
	o_X_pos			<= X_pos; 
	o_Y_pos			<= Y_pos; 
	o_pixel_number 	<= pixel_number; 
	
	o_outbuff_almost_full  <= outbuff_almost_full; 
	o_outbuff_full		 <= outbuff_full;  
	o_outbuff_prog_full	 <= outbuff_prog_full; 
	
	
	o_prog_full_thresh     <= prog_full_thresh; 
	o_sw_config_bypass	 <= sw_config_bypass; 
	
	

	clk_domain_1 : process(i_clk1, i_reset_n) 	 --100MHz clk domain 
	begin 		 
		if(i_reset_n = '0') then  
			i2c_busy 		<= '0'; 
			capture_busy	<= '0'; 
			config_done	    <= '0'; 
			image_enable	<= '0'; 
			debug_state	    <= (others => '0');  
			frame_done		<= '0';  
			pclk_counter  	<= (others => '0'); 
			X_pos			<= (others => '0');  
			Y_pos			<= (others => '0');  
			pixel_number 	<= (others => '0');  
			
		elsif(rising_edge(i_clk1)) then 
			
			i2c_busy 		<= i_i2c_busy; 
			capture_busy	<= i_capture_busy; 
			config_done	    <= i_config_done; 
			image_enable	<= i_image_enable; 
			debug_state	    <= i_debug_state;  
			frame_done		<= i_frame_done;  
			pclk_counter  	<= i_pclk_counter; 
			X_pos			<= i_X_pos;  
			Y_pos			<= i_Y_pos;  
			pixel_number 	<= i_pixel_number;	 
			
			outbuff_almost_full <= i_outbuff_almost_full;
			outbuff_full		<= i_outbuff_full; 
			outbuff_prog_full 	<= i_outbuff_prog_full;  
			
			sw_config_bypass	 <= i_sw_config_bypass; 
			
		end if; 
	end process;   
	
	
	
	clk_domain_2 : process(i_clk2, i_reset_n) 	 --150MHz clk domain 
	begin 		 
		if(i_reset_n = '0') then  
			start_capture 		<= '0'; 
			prog_full_thresh 	<= (others => '0'); 
			
		elsif(rising_edge(i_clk2)) then 
			
			start_capture 		<= i_start_capture;  
			prog_full_thresh 	<= i_prog_full_thresh; 	 
			
		end if; 
	end process; 
end arch;
