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
use IEEE.NUMERIC_STD.all; 

entity camera_configurator is	 
	port(  
		i_clk			: in std_logic; 
		i_reset_n 		: in std_logic; 
		i_btn_config 	: in std_logic; 
		i_i2c_busy	  	: in std_logic;    
		i_bram_data		: in std_logic_vector(15 downto 0); 	
		i_i2c_sent		: in std_logic; 
		
		
		o_bram_address	: out std_logic_vector(10 downto 0); 
		o_i2c_rw		: out std_logic; 
		o_i2c_ena		: out std_logic; 
		o_i2c_address   : out std_logic_vector(15 downto 0); 
		o_i2c_data		: out std_logic_vector(7 downto 0);
		o_bram_we		: out std_logic; 
		o_config_done 	: out std_logic
	); 
end camera_configurator;

--}} End of automatically maintained section

architecture arch of camera_configurator is	

signal bram_address		: unsigned(10 downto 0); 
signal i2c_rw	 		: std_logic; 
signal i2c_ena			: std_logic; 
signal i2c_address		: std_logic_vector(15 downto 0) ;
signal i2c_data			: std_logic_vector(7 downto 0); 
signal bram_we			: std_logic; 
signal config_done 		: std_logic;   
signal address_counter	: unsigned(10 downto 0);  
signal wait_counter		: integer; 


type state_type is (IDLE, FETCH_ADDRESS, FETCH_DATA, SEND_ADDRESS_DATA, DONE, CONFIG_DONE_STATE, WAIT_STATE); 

signal current_state : state_type; 	 	 
signal next_state : state_type;		

begin
	
	
o_bram_address 	<= std_logic_vector(bram_address); 
o_i2c_rw 		<= i2c_rw; 
o_i2c_ena 		<= i2c_ena; 
o_i2c_address	<= i2c_address; 
o_i2c_data		<= i2c_data; 
o_bram_we 		<= bram_we; 
o_config_done	<= config_done; 
	
	
state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE; 
	elsif(rising_edge(i_clk)) then 
		current_state <= next_state; 
	end if; 
end process; 
	
	
next_state_comb: process(all) 
begin 
	config_done <= '0';
	i2c_ena <= '0'; 
	
	bram_we <= '0';    
	i2c_rw <= '0'; 

	case current_state is 			
		when IDLE =>   
			i2c_ena <= '0'; 
		
			if(i_btn_config = '1' ) then 
				next_state <= FETCH_ADDRESS;
			else 
				next_state <= IDLE; 
			end if; 
		
		when FETCH_ADDRESS =>
			i2c_ena <= '0'; 
			next_state <= FETCH_DATA;

		
		when FETCH_DATA => 	 
			i2c_ena <= '0'; 
			next_state <= SEND_ADDRESS_DATA;

		
		when SEND_ADDRESS_DATA =>  
			if(i_i2c_busy = '1')then 
				i2c_ena <= '0'; 
			else
				i2c_ena <= '1'; 
			end if; 

			if(i_i2c_sent = '0') then 
				next_state <= SEND_ADDRESS_DATA;
			else 
				next_state <= DONE; 
			end if; 
		

		when DONE =>
			if(address_counter < 1051) then 
				config_done <= '0'; 
				next_state <= FETCH_ADDRESS; 
			else 
				config_done <= '1';  
				next_state <= WAIT_STATE;   
			end if;    
			
		when WAIT_STATE => 
		    config_done <= '1'; 
			if(wait_counter < 1000) then 
				next_state <= WAIT_STATE;  
			else 
				next_state <= CONFIG_DONE_STATE;  
			end if; 
			
		
		when CONFIG_DONE_STATE => 
			if(i_btn_config = '1') then 
				config_done <= '0'; 
				next_state <= IDLE; 
			else 	  
				config_done <= '1'; 
				next_state <= CONFIG_DONE_STATE; 	 
			end if; 
		
		
		
		when others => 	
			next_state <= IDLE; 
		
	end case; 
end process; 

	
config_camera: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then   
		bram_address <= (others => '0');  
		address_counter <= (others => '0'); 
		wait_counter 	<= 0; 
		
	elsif(rising_edge(i_clk)) then 	
		bram_address <= bram_address; 
		address_counter <= address_counter;   
		wait_counter <= wait_counter; 
		
		case current_state is 			
			when IDLE =>
				bram_address <= address_counter; 
				if(i_btn_config = '1' ) then 
					address_counter <= address_counter + 1;
				else 
					address_counter <= (others => '0'); 
				end if; 
				
			when FETCH_ADDRESS => 
				address_counter <= address_counter + 1; 
				bram_address <= address_counter; 
				i2c_address <= i_bram_data; 
			
			
			when FETCH_DATA => 
				--address_counter <= address_counter + 1; 
				bram_address <= address_counter; 
				i2c_data <= i_bram_data(7 downto 0); 	
			
			when SEND_ADDRESS_DATA => 

				address_counter <= address_counter; 
		
				
			when DONE =>
				if(address_counter < 1051) then 
					address_counter <= address_counter + 1;
				else 
					address_counter <= (others => '0'); 
				end if; 
				
			when WAIT_STATE => 
				if(wait_counter < 1000) then 
					wait_counter <= wait_counter + 1; 
				else 
					wait_counter <= 0; 
				end if; 
				
				
			when CONFIG_DONE_STATE => 
				address_counter <= (others => '0'); 
			
				
			when others => 	 
				bram_address <= (others => '0');  
				address_counter <= (others => '0'); 
		end case; 
	end if; 
	
end process; 


	 -- enter your statements here --

end arch;	

