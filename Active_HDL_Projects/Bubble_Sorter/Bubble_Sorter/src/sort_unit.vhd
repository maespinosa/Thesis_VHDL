----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/12/2017 01:11:15 AM
-- Design Name: 
-- Module Name: sort_unit - Behavioral
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
use ieee.numeric_std.all; 

library Bubble_Sorter; 
use Bubble_Sorter.cnn_types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sort_unit is
  Port (
  
    i_data : in array_type_9x16bit; 
    o_data : out array_type_9x16bit 
 
  );
end sort_unit;

architecture Behavioral of sort_unit is		


signal data_reg : array_type_9x16bit; 
signal a        : array_type_9x16bit; 
signal b        : array_type_9x16bit; 
signal c        : array_type_9x16bit; 
signal d        : array_type_9x16bit; 
signal e        : array_type_9x16bit; 
signal f        : array_type_9x16bit; 
signal g        : array_type_9x16bit; 
signal h        : array_type_9x16bit; 	
--signal i        : array_type_9x16bit; 






begin

o_data(0) <= a(0); 
o_data(1) <= b(1); 
o_data(2) <= c(2); 
o_data(3) <= d(3); 
o_data(4) <= e(4); 
o_data(5) <= f(5); 
o_data(6) <= g(6); 
o_data(7) <= h(7); 
o_data(8) <= h(8); 


--a(0) <= data_reg(1) when  data_reg(0) > data_reg(1) else 
--	data_reg(0); 
--	
--a(1) <= data_reg(0) when data_reg(0) > data_reg(1) else 
--	data_reg(1); 
--	
--a(8 downto 2) <= data_reg; 
--
--
--b(1) <= a(2) when 

swapper: process(i_data, data_reg, a, b, c, d, e, f, g, h) 
begin 

        data_reg <= i_data; 
 
        --STAGE 0 
        --Position 0
        if(data_reg(0) > data_reg(1)) then 	 
			a(8 downto 2) <= data_reg(8 downto 2); 
            a(0) <= data_reg(1);   
			a(1) <= data_reg(0); 
			--q(8 downto 1) <= data_reg(8 downto 2) & data_reg(0); 
        else  
			a(8 downto 2) <= data_reg(8 downto 2); 
            a(0) <= data_reg(0); 
			a(1) <= data_reg(1); 

        end if;   
		
        --Position 1
        if(a(1) > data_reg(2)) then 
			b(8 downto 3) <= a(8 downto 3); 
			b(0) <= a(0); 
            b(1) <= a(2); 
			b(2) <= a(1); 
			--q(8 downto 2) <= data_reg(8 downto 3) & data_reg(1); 
        else 	
			b(8 downto 3) <= a(8 downto 3); 
			b(0) <= a(0); 
            b(1) <= a(1); 
			b(2) <= a(2); 

        end if; 
		
			
        --Position 2
        if(b(2) > data_reg(3)) then 
			c(8 downto 4) <= b(8 downto 4);
			c(1 downto 0) <= b(1 downto 0); 
            c(2) <= b(3);
			c(3) <= b(2); 
			--q(8 downto 3) <= data_reg(8 downto 4) & data_reg(2); 
        else  
			c(8 downto 4) <= b(8 downto 4);
			c(1 downto 0) <= b(1 downto 0); 
            c(2) <= b(2); 	
			c(3) <= b(3); 

        end if; 	  
		
        --Position 3
        if(c(3) > data_reg(4)) then   
			d(8 downto 5) <= c(8 downto 5);
			d(2 downto 0) <= c(2 downto 0);
            d(3) <= c(4); 
			d(4) <= c(3); 
			--q(8 downto 4) <= data_reg(8 downto 5) & data_reg(3); 
        else   
			d(8 downto 5) <= c(8 downto 5);
			d(2 downto 0) <= c(2 downto 0);
            d(3) <= c(3); 	
			d(4) <= c(4); 
        end if; 
		
        --Position 4 
        if(d(4) > data_reg(5)) then  
			e(8 downto 6) <= d(8 downto 6); 
			e(3 downto 0) <= d(3 downto 0); 
            e(4) <= d(5);  	 
			e(5) <= d(4); 
			--q(8 downto 5) <= data_reg(8 downto 6) & data_reg(4); 
        else
			e(8 downto 6) <= d(8 downto 6); 
			e(3 downto 0) <= d(3 downto 0); 
            e(4) <= d(4);  
			e(5) <= d(5); 

        end if; 	 
       
		--Position 5 
        if(e(5) > data_reg(6)) then    
			f(8 downto 7) <= e(8 downto 7);
			f(4 downto 0) <= e(4 downto 0); 
            f(5) <= e(6); 
			f(6) <= e(5); 
			--q(8 downto 6) <= data_reg(8 downto 7) & data_reg(5); 
        else  
			f(8 downto 7) <= e(8 downto 7);
			f(4 downto 0) <= e(4 downto 0); 
            f(5) <= e(5); 
			f(6) <= e(6); 

        end if;   
		
		
		--Position 6
        if(f(6) > data_reg(7)) then   
			g(8) <= f(8);
			g(5 downto 0) <= f(5 downto 0);
            g(6) <= f(7);
			g(7) <= f(6); 
			--q(8 downto 7) <= data_reg(8) & data_reg(6); 
        else 
			g(8) <= f(8);
			g(5 downto 0) <= f(5 downto 0);
            g(6) <= f(6); 	
			g(7) <= f(7); 

        end if;
		
			
        --Position 7
        if(g(7) > data_reg(8)) then  
			h(6 downto 0) <= g(6 downto 0); 
            h(7) <= g(8); 	
			h(8) <= g(7); 
        else 
			h(6 downto 0) <= g(6 downto 0); 
            h(7) <= g(7);  
			h(8) <= g(8);

        end if; 
		
		
		
  end process; 
end Behavioral;