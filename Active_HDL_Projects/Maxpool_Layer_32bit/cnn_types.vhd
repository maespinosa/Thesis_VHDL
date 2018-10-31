
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

package cnn_types is 
	type array_type_4x16bit is array (3 downto 0) of unsigned(15 downto 0);
	type array_type_9x16bit is array (8 downto 0) of std_logic_vector(15 downto 0); 
	type array_type_9x32bit is array (8 downto 0) of std_logic_vector(31 downto 0); 
	type array_type_9x9x16bit is array (8 downto 0) of array_type_9x16bit; 

	type array_type_4x16bit_signed is array (3 downto 0) of signed(15 downto 0);
	type array_type_9x16bit_signed is array (8 downto 0) of signed(15 downto 0); 
	type array_type_9x9x16bit_signed is array (8 downto 0) of array_type_9x16bit_signed; 


end cnn_types; 

