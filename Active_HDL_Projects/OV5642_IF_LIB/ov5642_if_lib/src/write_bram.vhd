-------------------------------------------------------------------------------
--
-- Title       : write_bram
-- Design      : ov5642_if_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\OV5642_IF_LIB\ov5642_if_lib\src\write_bram.vhd
-- Generated   : Fri Jun  2 15:22:27 2017
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
--{entity {write_bram} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity write_bram is 
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 
	
	i_i2c_sensor_data 	: in std_logic_vector(31 downto 0); 
	i_config_bram_addr 	: in std_logic_vector(31 downto 0);  
	
	o_bram_we			: out std_logic; 
	o_data				: out std_logic_vector(15 downto 0); 
	o_address			: out std_logic_vector(10 downto 0); 
	
	i_btn_config		: in std_logic
	); 
end write_bram;


architecture arch of write_bram is	

signal bram_we : std_logic; 
signal data		: std_logic_vector(15 downto 0); 
signal address	: std_logic_vector(10 downto 0); 
signal write_counter : unsigned(3 downto 0); 

begin	 
	
o_bram_we 		<= bram_we; 
o_data			<= data; 
o_address		<= address; 

main: process (i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		bram_we <= '0'; 
		data	<= (others => '0'); 
		address <= (others => '0');  
		write_counter <= (others => '0'); 

	elsif(rising_edge(i_clk)) then 	 
		bram_we <= bram_we; 
		data <=  data; 
		address <= address; 
		write_counter <= write_counter; 
		
		if(i_btn_config = '0' and i_config_bram_addr(16) = '1') then 
			address <= i_config_bram_addr(10 downto 0); 
			data <= i_i2c_sensor_data(15 downto 0); 
			bram_we <= '1';  
			write_counter <= write_counter + 1; 

		elsif (write_counter > 0) then 
			address <= address; 
			data <= data; 
			bram_we <= '1'; 
			
			write_counter <= write_counter + 1; 
			if(write_counter = 5) then 
				write_counter <= (others => '0'); 
			end if; 
			
		else 
			address <= address; 
			data <= data; 
			bram_we <= '0'; 
		end if; 
	end if; 
end process; 

end arch;
