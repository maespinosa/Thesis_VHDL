-------------------------------------------------------------------------------
--
-- Title       : bubble_sorter_signed
-- Design      : Bubble_Sorter
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : C:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Bubble_Sorter\Bubble_Sorter\src\bubble_sorter_signed.vhd
-- Generated   : Tue Jun 20 17:49:14 2017
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
--{entity {bubble_sorter_signed} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

library Bubble_Sorter; 
use Bubble_Sorter.cnn_types.all;


entity bubble_sorter_signed is
    Port ( i_clk            : in STD_LOGIC;
           i_reset_n        : in STD_LOGIC;
           i_data           : in array_type_9x16bit_signed;
           o_sorted_data    : out array_type_9x16bit_signed
           );
end bubble_sorter_signed;

architecture arch of bubble_sorter_signed is

--signal data_reg: array_type_9x16bit; 
signal data_reg: array_type_9x9x16bit_signed;  
signal q : array_type_9x9x16bit_signed;

type state_type is (IDLE, SHIFT, SWAP); 
signal current_state : state_type; 
signal next_state : state_type; 

component sort_unit_signed
port(
    i_data : in array_type_9x16bit_signed; 
    o_data : out array_type_9x16bit_signed  
); 
end component sort_unit_signed; 


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

stage0: sort_unit_signed
port map(
    i_data => data_reg(0),
    o_data => q(0)
); 
stage1: sort_unit_signed
port map(
    i_data => data_reg(1),
    o_data => q(1)
); 
stage2: sort_unit_signed
port map(
    i_data => data_reg(2),
    o_data => q(2)
); 
stage3: sort_unit_signed
port map(
    i_data => data_reg(3),
    o_data => q(3)
); 
stage4: sort_unit_signed
port map(
    i_data => data_reg(4),
    o_data => q(4)
); 
stage5: sort_unit_signed
port map(
    i_data => data_reg(5),
    o_data => q(5)
); 
stage6: sort_unit_signed
port map(
    i_data => data_reg(6),
    o_data => q(6)
); 
stage7: sort_unit_signed
port map(
    i_data => data_reg(7),
    o_data => q(7)
); 
stage8: sort_unit_signed
port map(
    i_data => data_reg(8),
    o_data => q(8)
); 


end arch;
