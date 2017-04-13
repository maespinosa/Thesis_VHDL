--
-- VHDL Architecture scanner_cmf_lib.hwrite_file.arch
--
-- Created:
--          by - J30933.UNKNOWN (DCAVPCE00387928)
--          at - 10:15:07 04/ 1/2016
--
-- using Mentor Graphics HDL Designer(TM) 2015.1 (Build 16)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;

ENTITY hwrite_file IS
    generic
    (
        data_width    : positive; -- The data width of the RAM
        filename      : string := "" -- The file used to initialize the block RAM.
    );
    port(
	     sys_clk, enable, reset_n  : in std_logic;
	     stop_strobe               : in std_logic; 
	     data_to_write            : in std_logic_vector(data_width-1 downto 0); 
	     data_valid               : in std_logic 
  );    
END ENTITY hwrite_file;

--
ARCHITECTURE arch OF hwrite_file IS
  
--  file file_to_write: text open read_mode is "C:/SourceTree_LOCAL/NextGen_Spa_Demo/VHDL/scanner_cmf/scanner_cmf_lib/test_tile.txt";
  file file_to_write: text open write_mode is filename;
  file file_to_read: text open read_mode is filename;
  signal continue : std_logic; 
  --signal close_flag : std_logic; 
  
BEGIN
  
  write_file: process(sys_clk,reset_n)
    variable write_ptr: line; 
    variable data_to_file : std_logic_vector(data_width-1 downto 0); 
  begin 
    if (reset_n = '0') then 
      continue <= '1'; 

    elsif (rising_edge(sys_clk)) then 
      if(enable = '1' and stop_strobe = '0' and continue = '1' and data_valid = '1') then 
        hwrite(write_ptr, data_to_write);
        writeline(file_to_write, write_ptr); 
        
        -- to stop sim
        --assert(X=Y) "Truth data doesn't match" severity failure; 
      elsif (stop_strobe = '1') then 
        file_close(file_to_write); 	 
		assert stop_strobe = '0' report "Frame Complete" severity failure; 
        continue <= '0'; 
      end if;  
    end if; 
  end process; 
  
  
        
END ARCHITECTURE arch;
