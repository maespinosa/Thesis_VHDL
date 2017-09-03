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

library Bubble_Sorter; 
use Bubble_Sorter.cnn_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bubble_sorter is
    Port ( i_clk            : in STD_LOGIC;
           i_reset_n        : in STD_LOGIC;
           i_data           : in array_type_9x16bit;
           o_sorted_data    : out array_type_9x16bit
           );
end bubble_sorter;

architecture arch of bubble_sorter is

--signal data_reg: array_type_9x16bit; 
signal data_reg: array_type_9x9x16bit;  
signal q : array_type_9x9x16bit;

type state_type is (IDLE, SHIFT, SWAP); 
signal current_state : state_type; 
signal next_state : state_type; 

component sort_unit
port(
    i_data : in array_type_9x16bit; 
    o_data : out array_type_9x16bit  
); 
end component sort_unit; 


begin

o_sorted_data <= data_reg(8); 

state_transistion: process(i_clk, i_reset_n)
begin 
    if(i_reset_n <= '0') then 
        current_state <= IDLE; 
    elsif(rising_edge(i_clk)) then 
        current_state <= next_state; 
    end if; 
end process;

next_state_comb: process(current_state) 
begin 

    case current_state is 
        when IDLE => 
            next_state <= SHIFT; 
            
        when SHIFT =>  
            next_state <= SWAP; 
            
        when SWAP => 
            next_state <= SHIFT; 
            
        when others => 
            next_state <= IDLE;   
    end case; 
    
end process; 

sequential_logic: process(i_clk, i_reset_n) 
begin 
    if(i_reset_n = '0') then 
        data_reg <= (others => (others => (others => '0'))); 
		
    elsif(rising_edge(i_clk)) then 
        data_reg <= data_reg; 
    
        case current_state is 
            when IDLE => 
                data_reg <= data_reg; 
                
            when SHIFT =>  
                data_reg(0) <= i_data; 
                data_reg(1) <= q(0); 
                data_reg(2) <= q(1); 
                data_reg(3) <= q(2); 
                data_reg(4) <= q(3); 
                data_reg(5) <= q(4); 
                data_reg(6) <= q(5); 
                data_reg(7) <= q(6); 
                data_reg(8) <= q(7); 
                
            when SWAP => 
            

            when others => 
                data_reg <= (others => (others => (others => '0'))); 
                
        end case;       

    end if; 

end process; 

stage0: sort_unit
port map(
    i_data => data_reg(0),
    o_data => q(0)
); 
stage1: sort_unit
port map(
    i_data => data_reg(1),
    o_data => q(1)
); 
stage2: sort_unit
port map(
    i_data => data_reg(2),
    o_data => q(2)
); 
stage3: sort_unit
port map(
    i_data => data_reg(3),
    o_data => q(3)
); 
stage4: sort_unit
port map(
    i_data => data_reg(4),
    o_data => q(4)
); 
stage5: sort_unit
port map(
    i_data => data_reg(5),
    o_data => q(5)
); 
stage6: sort_unit
port map(
    i_data => data_reg(6),
    o_data => q(6)
); 
stage7: sort_unit
port map(
    i_data => data_reg(7),
    o_data => q(7)
); 
stage8: sort_unit
port map(
    i_data => data_reg(8),
    o_data => q(8)
); 


end arch;
