--
-- VHDL Architecture scanner_cmf_lib.read_file.arch
--
-- Created:
--          by - J30933.UNKNOWN (DCAVPCE00387928)
--          at - 15:56:42 03/30/2016
--
-- using Mentor Graphics HDL Designer(TM) 2015.1 (Build 16)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use ieee.numeric_std.all; 
use std.textio.all;
use ieee.std_logic_textio.all;

ENTITY read_file IS
    generic
    (
        data_width    	: positive; -- The data width of the RAM
        filename 		: string := "" -- The file used to initialize the block RAM.
    );
    port(
	i_xclk, i_enable, i_reset_n  : in std_logic; 
		i_pclk				: in std_logic; 
	     o_SDATA            : out std_logic_vector(data_width-1 downto 0); 
		 o_VSYNC			: out std_logic;  
		 o_HREF			: out std_logic; 
		 o_PCLK			: out std_logic
  );    											   
END ENTITY read_file;

--
ARCHITECTURE arch OF read_file IS  	

--file file_to_read: text open read_mode is filename;

constant rows_720p				  : integer := 780; 
constant columns_720p 			  : integer := 1280; 

constant rows_vga				  : integer := 4;--480;    -----CHANGE FOR SIM HERE 
constant columns_vga			  : integer := 640*2;  

--DVP Timing Diagram Constants 
constant one_720p				  : integer := 3066144;   
constant two_720p				  : integer := 7904; 
constant three_720p				  : integer := 6234; 
constant four_720p				  : integer := 1558; 
constant five_720p				  : integer := 1930524; 
constant six_720p				  : integer := 1280; 
constant seven_720p				  : integer := 278; 
constant eight_720p				  : integer := 0; 
constant nine_720p 				  : integer := 278; 		 

constant one_vga				  : integer := 1533072-1;   
constant two_vga				  : integer := 10-1;--3952; 
constant three_vga				  : integer := 10-1;--3117; 
constant four_vga				  : integer := 779-1; 
constant five_vga				  : integer := 10-1; --1152222; 
constant six_vga				  : integer := columns_vga-1; 
constant seven_vga				  : integer := 139-1; 
constant eight_vga				  : integer := 0; 
constant nine_vga 				  : integer := 139-1; 

  
signal close_flag : std_logic; 
signal counter 	: integer;  
signal read_pulse	: std_logic; 
signal row_counter : integer;    
signal column_counter: integer;

signal SDATA   					:  std_logic_vector(data_width-1 downto 0); 
signal VSYNC					: std_logic; 
signal HREF					    : std_logic; 
signal PCLK 				    : std_logic; 

type state_type is (IDLE, V_SYNC, SOF, HREF_HI, HREF_LO, EOF); 

signal current_state : state_type; 
signal next_state : state_type;
  
BEGIN 
	
  o_PCLK		<= i_pclk; 
  o_SDATA		<= SDATA; 
  o_VSYNC		<= VSYNC; 
  o_HREF		<= HREF;  
  
  
  state_transitions: process(i_pclk, i_reset_n) is
  begin    
	  if(i_reset_n <= '0') then 
	      current_state <= IDLE; 
	  elsif (rising_edge(i_pclk)) then 
		  current_state <= next_state; 		 
	  end if; 
	  
  end process; 
  
  
  next_state_comb: process(current_state, counter, row_counter) 
  begin    
	  VSYNC <= '0'; 
	  HREF  <= '0'; 
	  read_pulse <= '0'; 
	  
	  case current_state is  
	  
		when IDLE =>  
			VSYNC <= '0'; 
			HREF <= '0'; 
	  		if(counter = two_vga) then 
				next_state <= V_SYNC; 
		    else
				next_state <= IDLE; 
			end if; 
			
	  	when V_SYNC =>
		    HREF <= '0';
	  	    VSYNC <= '1';
	  		if(counter = two_vga) then 
				next_state <= SOF;	
		    else
				next_state <= V_SYNC; 
			end if; 
			
		when SOF => 
		    HREF <= '0';
	  	    VSYNC <= '0';
			if(counter = three_vga) then  
			   	next_state <= HREF_HI; 
				read_pulse <= '1'; 
			else 
				next_state <= SOF; 
		    end if; 
	  	
		when HREF_HI =>
		  
		    HREF <= '1';
	  	    VSYNC <= '0';
			
	  		if(counter = six_vga) then 
				next_state <= HREF_LO; 	
				read_pulse <= '0';
		    else
				next_state <= HREF_HI; 	
				read_pulse <= '1'; 
			end if; 
			
		when HREF_LO =>
		  
		    HREF <= '0';
	  	    VSYNC <= '0';  
		    read_pulse <= '0';
			  
	  		if(counter = seven_vga) then 
				  if(row_counter = rows_vga) then 
					  next_state <= EOF;  
				  else 
					  next_state <= HREF_HI;
					  read_pulse <= '1'; 
			      end if; 
		    else
				next_state <= HREF_LO; 
			end if; 
			
			
		when EOF =>	
		    HREF <= '0';
	  	    VSYNC <= '0';
		
			if(counter = five_vga) then 
				next_state <= V_SYNC; 
			else 
				next_state <= EOF; 
			end if; 

		when others => 	 
		    HREF <= '1';
	  	    VSYNC <= '1';
			next_state <= IDLE; 

		end case; 
 end process; 

  
	  
	
  
  sequential_logic : process(i_pclk, i_reset_n) 
  begin 
	  if(i_reset_n = '0') then 
		  --read_pulse 		<= '0';
		  counter 			<= 0;	 
		  row_counter 		<= 0; 	 
		  column_counter 	<= 0; 
		  
	  elsif (rising_edge(i_pclk)) then
		  
	      --read_pulse 		<= read_pulse; 
		  counter 			<= counter;
		  row_counter		<= row_counter;	
		  column_counter 	<= column_counter; 
		  
		  case current_state is  
		  
			when IDLE => 
			 	 
		  		if(counter = two_vga) then 
					counter <= 0; 
			    else
					counter <= counter + 1;
				end if; 
				
		  	when V_SYNC =>

		  		if(counter = two_vga) then 
					counter <= 0; 
			    else
					counter <= counter + 1;
				end if; 
				
			when SOF => 
				if(counter = three_vga) then 
				   	counter <= 0; 
				else 
					counter <= counter + 1; 
			    end if; 
		  	
			when HREF_HI =>

		  		if(counter = six_vga) then 
					counter <= 0;  
					--read_pulse <= '0'; 
			    else 
					--read_pulse <= '1';
					counter <= counter + 1;
					if(counter = 0) then 
--						read_pulse <= '1'; 
						row_counter <= row_counter + 1;	 
						column_counter <= column_counter + 1; 
					else  
						row_counter <= row_counter; 
						column_counter <= column_counter + 1; 
--						read_pulse <= '0'; 
					end if; 
				end if; 
				
			when HREF_LO =>	
			     

		  		if(counter = seven_vga) then 
					  counter <= 0; 
					  
					  if(row_counter = rows_vga) then 
						  row_counter <= 0;
						  column_counter <= 0;
					  else
						  row_counter <= row_counter;
						  column_counter <= 0;
				      end if; 
			    else
					counter <= counter + 1;
				end if; 
				
				
			when EOF =>	
			
				if(counter = five_vga) then 
					counter <= 0; 
				else 
					counter <= counter + 1; 
				end if; 

			when others => 	
				row_counter <= 777; 
				column_counter <= 777; 
				counter <= 777; 
			
			
			end case; 
		end if;  
	end process; 
			
	
	
	
	
	
	
  read_file: process(i_pclk,i_reset_n)
    file file_to_read: text; 
    variable read_ptr: line; 
    variable data_from_file : std_logic_vector(11 downto 0); 
  begin 
    if (i_reset_n = '0') then 
      SDATA <= (others => '0'); 
      close_flag <= '0';
      file_open(file_to_read, filename, read_mode);

    elsif (rising_edge(i_pclk)) then 

      if(close_flag = '1') then 
        close_flag <= '0'; 
        file_open(file_to_read, filename, read_mode); 
      end if; 
      
      if(read_pulse = '1' and not(endfile(file_to_read))) then 

        readline(file_to_read, read_ptr); 
        
        hread(read_ptr, data_from_file); 
        SDATA <= data_from_file(9 downto 0);
        
        
      elsif (endfile(file_to_read)) then 
        file_close(file_to_read); 
        close_flag <= '1'; 
      end if;  
    end if; 
  end process; 
        
END ARCHITECTURE arch;

