----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/11/2017 08:27:53 PM
-- Design Name: 
-- Module Name: bubble_sorter - arch
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.NUMERIC_STD.ALL; 

library work; 
use work.cnn_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with unsigned or Ununsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


----                              1  
--
----                       2             3 
--                     4       5     6       7
--                  8     9

entity heap_sorter is
	Generic (
		g_data_width : integer := 32
		); 
    Port ( 
		   i_clk            : in STD_LOGIC;
           i_reset_n        : in STD_LOGIC;
           i_data           : in array_type_9x32bit;
		   i_data_valid		: in std_logic; 
           o_sorted_data    : out array_type_9x32bit; 
		   o_sorted_data_valid : out std_logic; 
		   o_sorter_ready	: out std_logic
           );
end heap_sorter;

architecture arch of heap_sorter is

signal position1 : signed(g_data_width-1 downto 0); 
signal position2 : signed(g_data_width-1 downto 0); 
signal position3 : signed(g_data_width-1 downto 0); 
signal position4 : signed(g_data_width-1 downto 0); 
signal position5 : signed(g_data_width-1 downto 0); 
signal position6 : signed(g_data_width-1 downto 0); 
signal position7 : signed(g_data_width-1 downto 0); 
signal position8 : signed(g_data_width-1 downto 0); 
signal position9 : signed(g_data_width-1 downto 0); 

type state_type is (
	IDLE,
	BUILD_MAX_HEAP_P4, 
	BUILD_MAX_HEAP_P3,
	BUILD_MAX_HEAP_P2,
	BUILD_MAX_HEAP_P1, 
	BUILD_MIN_HEAP_P4, 
	BUILD_MIN_HEAP_P3,
	BUILD_MIN_HEAP_P2,
	BUILD_MIN_HEAP_P1
	); 
signal current_state : state_type; 
signal next_state : state_type; 

signal done : std_logic; 

signal sorted_data : array_type_9x32bit; 
signal sorter_ready : std_logic; 

begin

o_sorted_data <= sorted_data when done = '1' else 
				 (others => (others => '0')); 
				 
o_sorted_data_valid		<= done; 

o_sorter_ready <= sorter_ready; 

state_transistion: process(i_clk, i_reset_n)
begin 
    if(i_reset_n <= '0') then 
        current_state <= IDLE; 
    elsif(rising_edge(i_clk)) then 
        current_state <= next_state; 
    end if; 
end process;

next_state_comb: process(current_state, i_data_valid, position1,position2,position3,position4,position5,position6,position7,position8,position9) 
begin 
	sorter_ready <= '0'; 
	
    case current_state is 
		when IDLE => 
			sorter_ready <= '1'; 
			if(i_data_valid = '1') then 
				if(i_data(8)(g_data_width-1) = '1' and i_data(7)(g_data_width-1) = '1' and 
					i_data(6)(g_data_width-1) = '1' and i_data(5)(g_data_width-1) = '1' and
						i_data(4)(g_data_width-1) = '1' and i_data(3)(g_data_width-1) = '1' and 	
							i_data(2)(g_data_width-1) = '1' and i_data(1)(g_data_width-1) = '1' and 
								i_data(0)(g_data_width-1) = '1') then 
					next_state <= BUILD_MIN_HEAP_P4; 
				else 
					next_state <= BUILD_MAX_HEAP_P4;
				end if; 
			else 
				next_state <= IDLE; 
			end if; 

		when BUILD_MAX_HEAP_P4 =>  
			if(position4 > position9 and position4 > position8) then 
				next_state <= BUILD_MAX_HEAP_P3;  
			else
				next_state <= BUILD_MAX_HEAP_P4; 
			end if; 
			
				
		when BUILD_MAX_HEAP_P3 =>  
			if(position3 > position7 and position3 > position6) then 
				next_state <= BUILD_MAX_HEAP_P2; 
			else
				next_state <= BUILD_MAX_HEAP_P3; 
			end if; 
			
		when BUILD_MAX_HEAP_P2 =>  
			if(position2 > position5 and position2 > position4) then 
				next_state <= BUILD_MAX_HEAP_P1;
			else
				next_state <= BUILD_MAX_HEAP_P2;
			end if; 
			
		when BUILD_MAX_HEAP_P1 =>  
			if(position1 > position2 and position1 > position3) then 
				next_state <= IDLE; 
			else
				next_state <= BUILD_MAX_HEAP_P1;
			end if;           
            
		when BUILD_MIN_HEAP_P4 =>  
			if(position4 < position9 and position4 < position8) then 
				next_state <= BUILD_MIN_HEAP_P3;  
			else
				next_state <= BUILD_MIN_HEAP_P4; 
			end if; 
			
				
		when BUILD_MIN_HEAP_P3 =>  
			if(position3 < position7 and position3 < position6) then 
				next_state <= BUILD_MIN_HEAP_P2; 
			else
				next_state <= BUILD_MIN_HEAP_P3; 
			end if; 
			
		when BUILD_MIN_HEAP_P2 =>  
			if(position2 < position5 and position2 < position4) then 
				next_state <= BUILD_MIN_HEAP_P1;
			else
				next_state <= BUILD_MIN_HEAP_P2;
			end if; 
			
		when BUILD_MIN_HEAP_P1 =>  
			if(position1 < position2 and position1 < position3) then 
				next_state <= IDLE; 
			else
				next_state <= BUILD_MIN_HEAP_P1;
			end if;   
			
        when others => 
            next_state <= IDLE;   
    end case; 
    
end process; 

sequential_logic: process(i_clk, i_reset_n) 
begin 
    if(i_reset_n = '0') then 
		position1 <= (others => '0'); 
		position2 <= (others => '0'); 
		position3 <= (others => '0'); 
		position4 <= (others => '0'); 
		position5 <= (others => '0'); 
		position6 <= (others => '0'); 
		position7 <= (others => '0'); 
		position8 <= (others => '0'); 
		position9 <= (others => '0'); 
		done <= '0'; 
		sorted_data <= (others => (others => '0')); 
    elsif(rising_edge(i_clk)) then 
       
		position1 <= position1; 
		position2 <= position2; 
		position3 <= position3; 
		position4 <= position4; 
		position5 <= position5; 
		position6 <= position6; 
		position7 <= position7; 
		position8 <= position8; 
		position9 <= position9; 
		done <= done; 
		sorted_data <= sorted_data; 
		
        case current_state is 
            when IDLE => 
			
				sorted_data <= (others => (others => '0')); 
				if(i_data_valid = '1') then 
					position1 <= signed(i_data(0)); 
					position2 <= signed(i_data(1)); 
					position3 <= signed(i_data(2)); 
					position4 <= signed(i_data(3)); 
					position5 <= signed(i_data(4)); 
					position6 <= signed(i_data(5)); 
					position7 <= signed(i_data(6)); 
					position8 <= signed(i_data(7)); 
					position9 <= signed(i_data(8)); 
					done <= '0'; 
					
				else 
					position1 <= (others => '0'); 
					position2 <= (others => '0'); 
					position3 <= (others => '0'); 
					position4 <= (others => '0'); 
					position5 <= (others => '0'); 
					position6 <= (others => '0'); 
					position7 <= (others => '0'); 
					position8 <= (others => '0'); 
					position9 <= (others => '0'); 
					done <= '0'; 
				end if; 
----                              1  
--
----                       2             3 
--                     4       5     6       7
--                  8     9
            when BUILD_MAX_HEAP_P4 =>  
				if(position9 > position4 and position9 > position8) then 
					position9 <= position4; 
					position4 <= position9;
					position8 <= position8; 
				elsif(position8 > position4 and position8 > position9) then 
					position8 <= position4; 
					position4 <= position8;
					position9 <= position9;
				else
					position4 <= position4; 
					position8 <= position8; 
					position9 <= position9;
				end if; 
				
					
            when BUILD_MAX_HEAP_P3 =>  
				if(position7 > position3 and position7 > position6) then 
					position7 <= position3; 
					position3 <= position7;
					position6 <= position6; 
				elsif(position6 > position3 and position6 > position7) then 
					position6 <= position3; 
					position3 <= position6;
					position7 <= position7;
				else
					position3 <= position3; 
					position6 <= position6; 
					position7 <= position7;
				end if; 
				
            when BUILD_MAX_HEAP_P2 =>  
				if(position5 > position2 and position5 > position4) then 
					position5 <= position2; 
					position2 <= position5;
					position4 <= position4; 
				elsif(position4 > position2 and position4 > position5) then 
					position4 <= position2; 
					position2 <= position4;
					position5 <= position5;
				else
					position2 <= position2; 
					position4 <= position4; 
					position5 <= position5;
				end if; 
				
            when BUILD_MAX_HEAP_P1 =>  
				if(position2 > position1 and position2 > position3) then 
					position2 <= position1; 
					position1 <= position2;
					position3 <= position3; 
				elsif(position3 > position1 and position3 > position2) then 
					position3 <= position1; 
					position1 <= position3;
					position2 <= position2;
				else
					position1 <= position1; 
					position2 <= position2; 
					position3 <= position3;
					done <= '1'; 

					sorted_data(0) <= std_logic_vector(position1); 
					sorted_data(1) <= std_logic_vector(position2); 
					sorted_data(2) <= std_logic_vector(position3); 
					sorted_data(3) <= std_logic_vector(position4); 
					sorted_data(4) <= std_logic_vector(position5); 
					sorted_data(5) <= std_logic_vector(position6); 
					sorted_data(6) <= std_logic_vector(position7); 
					sorted_data(7) <= std_logic_vector(position8); 
					sorted_data(8) <= std_logic_vector(position9); 

				end if;      


            when BUILD_MIN_HEAP_P4 =>  
				if(position9 < position4 and position9 < position8) then 
					position9 <= position4; 
					position4 <= position9;
					position8 <= position8; 
				elsif(position8 < position4 and position8 < position9) then 
					position8 <= position4; 
					position4 <= position8;
					position9 <= position9;
				else
					position4 <= position4; 
					position8 <= position8; 
					position9 <= position9;
				end if; 
				
					
            when BUILD_MIN_HEAP_P3 =>  
				if(position7 < position3 and position7 < position6) then 
					position7 <= position3; 
					position3 <= position7;
					position6 <= position6; 
				elsif(position6 < position3 and position6 < position7) then 
					position6 <= position3; 
					position3 <= position6;
					position7 <= position7;
				else
					position3 <= position3; 
					position6 <= position6; 
					position7 <= position7;
				end if; 
				
            when BUILD_MIN_HEAP_P2 =>  
				if(position5 < position2 and position5 < position4) then 
					position5 <= position2; 
					position2 <= position5;
					position4 <= position4; 
				elsif(position4 < position2 and position4 < position5) then 
					position4 <= position2; 
					position2 <= position4;
					position5 <= position5;
				else
					position2 <= position2; 
					position4 <= position4; 
					position5 <= position5;
				end if; 
				
            when BUILD_MIN_HEAP_P1 =>  
				if(position2 < position1 and position2 < position3) then 
					position2 <= position1; 
					position1 <= position2;
					position3 <= position3; 
				elsif(position3 < position1 and position3 < position2) then 
					position3 <= position1; 
					position1 <= position3;
					position2 <= position2;
				else
					position1 <= position1; 
					position2 <= position2; 
					position3 <= position3;
					done <= '1'; 

					sorted_data(0) <= std_logic_vector(position1); 
					sorted_data(1) <= std_logic_vector(position2); 
					sorted_data(2) <= std_logic_vector(position3); 
					sorted_data(3) <= std_logic_vector(position4); 
					sorted_data(4) <= std_logic_vector(position5); 
					sorted_data(5) <= std_logic_vector(position6); 
					sorted_data(6) <= std_logic_vector(position7); 
					sorted_data(7) <= std_logic_vector(position8); 
					sorted_data(8) <= std_logic_vector(position9); 

				end if;           
				

            when others => 
				position1 <= (others => '0'); 
				position2 <= (others => '0'); 
				position3 <= (others => '0'); 
				position4 <= (others => '0'); 
				position5 <= (others => '0'); 
				position6 <= (others => '0'); 
				position7 <= (others => '0'); 
				position8 <= (others => '0'); 
				position9 <= (others => '0'); 
                
        end case;       

    end if; 

end process; 


end arch;
