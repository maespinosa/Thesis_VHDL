LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

ENTITY matlab_compare IS
    generic
    (
        data_width    : positive; -- The data width of the RAM
        filename      : string := "" -- The file used to initialize the block RAM.
    );
    port(
	     sys_clk, enable, reset_n  : in std_logic;
	     data_to_write            : in std_logic_vector(data_width-1 downto 0); 
	     pixel_valid               : in std_logic; 
	     match                    : out std_logic 
  );    
END ENTITY matlab_compare;

--
ARCHITECTURE arch OF matlab_compare IS
 
  signal close_flag : std_logic; 
  signal data_read : std_logic_vector(data_width-1 downto 0); 
  signal int_data_to_write: std_logic_vector(data_width-1 downto 0); 
  
BEGIN
  read_file: process(sys_clk,reset_n)
    file file_to_read: text; 
    variable read_ptr: line; 
    variable data_from_file : std_logic_vector(data_width-1 downto 0); 
  begin 
    if (reset_n = '0' or close_flag = '1') then 
      match <= '0'; 
      data_read <= (others => '0'); 
      close_flag <= '0';
      file_open(file_to_read, filename, read_mode); 
      int_data_to_write <= (others =>'0'); 
    elsif (rising_edge(sys_clk)) then 

--      if(close_flag = '1') then 
--        close_flag <= '0'; 
--        file_open(file_to_read, filename, read_mode); 
--        int_data_to_write <= (others =>'0');
--      end if; 
      
      if(enable = '1'and pixel_valid = '1' and not(endfile(file_to_read))) then 
        int_data_to_write <= data_to_write; 
        readline(file_to_read, read_ptr); 
        
        hread(read_ptr, data_from_file); 
        data_read <= data_from_file(data_width-1 downto 0);
        
        match <= (int_data_to_write(0) xnor  data_read(0)) and  (int_data_to_write(1) xnor data_read(1)) and (int_data_to_write(2) xnor data_read(2)) and (int_data_to_write(3) xnor data_read(3)) and (int_data_to_write(4) xnor data_read(4)) and (int_data_to_write(5) xnor data_read(5)) and (int_data_to_write(6) xnor data_read(6)) and (int_data_to_write(7) xnor data_read(7)) and (int_data_to_write(8) xnor data_read(8)) and (int_data_to_write(9) xnor data_read(9)); 
        --match <= (data_to_write(0) xnor  data_read(0)) and  (data_to_write(1) xnor data_read(1)) and (data_to_write(2) xnor data_read(2)) and (data_to_write(3) xnor data_read(3)) and (data_to_write(4) xnor data_read(4)) and (data_to_write(5) xnor data_read(5)) and (data_to_write(6) xnor data_read(6)) and (data_to_write(7) xnor data_read(7)) and (data_to_write(8) xnor data_read(8)) and (data_to_write(9) xnor data_read(9)); 
   
        
      elsif (endfile(file_to_read)) then 
        file_close(file_to_read); 
        close_flag <= '1'; 
      end if;  
    end if; 
  end process;   
  

END ARCHITECTURE arch;
