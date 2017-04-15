-------------------------------------------------------------------------------
--
-- Title       : camera_configurator
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\camera_configurator.vhd
-- Generated   : Thu Apr 13 21:12:15 2017
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
--{entity {camera_configurator} architecture {arch}}

library IEEE;	   

use IEEE.STD_LOGIC_1164.all;

entity camera_configurator is	 
	port(  
		i_clk			: in std_logic; 
		i_reset_n 		: in std_logic; 
		i_btn_config 	: in std_logic; 
		i_i2c_busy	  	: in std_logic;    
		i_bram_data		: in std_logic_vector(15 downto 0); 	 
		i_ack_error 	: in std_logic;
		
		o_bram_addr		: out std_logic_vector(9 downto 0); 
		o_i2c_rw		: out std_logic; 
		o_i2c_en		: out std_logic; 
		o_i2c_addr	    : out std_logic_vector(15 downto 0); 
		o_i2c_data		: out std_logic_vector(7 downto 0);
		o_bram_we		: out std_logic; 
		o_config_done 	: out std_logic
	); 
end camera_configurator;

--}} End of automatically maintained section

architecture arch of camera_configurator is	

signal bram_addr 	: std_logic_vector(9 downto 0); 
signal i2c_rw	 	: std_logic; 
signal i2c_en		: std_logic; 
signal i2c_addr		: std_logic_vector(15 downto 0) ;
signal i2c_data		: std_logic_vector(7 downto 0); 
signal bram_we		: std_logic; 
signal config_done 	: std_logic; 

type state_type is (IDLE, FETCH_ADDRESS, FETCH_DATA, SEND_ADDRESS, SEND_DATA); 

signal current_state : state_type; 	 	 
signal next_state : state_type;		

begin	
	
state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE: 
	elsif(rising_edge(i_clk)) then 
		current_state <= next_state; 
	end if; 
end process; 
	
	
next_state_comb: process(all) 
begin 
	config_done <= '0';
	i2c_en <= '0'; 
	bram_we <= '0';    
	i2c_rw <= '0'; 
	
	
	
	case current_state is 			
		when IDLE =>  
			if(i_btn_config = '1' ) then 
				next_state <= FETCH_ADDRESS;
			else 
				next_state <= IDLE; 
			end if; 
		
		when FETCH_ADDRESS => 
			if(  ) then 
				next_state <= FETCH_DATA;
			else 
				next_state <= FETCH_ADDRESS; 
			end if; 
		
		when FETCH_DATA => 
			if(  ) then 
				next_state <= SEND_ADDRESS;
			else 
				next_state <= FETCH_DATA; 
			end if; 
		
		when SEND_ADDRESS => 
			if(  ) then 
				next_state <= SEND_DATA;
			else 
				next_state <= SEND_ADDRESS; 
			end if; 
		
		when SEND_DATA => 	
			if(  ) then 
				next_state <= DONE;
			else 
				next_state <= SEND_DATA; 
			end if; 
		when DONE =>
			config_done <= '1';  
			next_state <= IDLE; 
		
		when others => 	
			next_state <= IDLE; 
		
	end case; 
end process; 

	
config_camera: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then  
		
	elsif(rising_edge(i_clk)) then 
		
		case current_state is 			
			when IDLE => 
			when FETCH_ADDRESS => 
			when FETCH_DATA => 
			when SEND_ADDRESS => 
			when SEND_DATA => 	
			when DONE => 
			when others => 
		end case; 
	end if; 
	
			
		
			
		
	
	
	
end process; 


	 -- enter your statements here --

end arch;	

