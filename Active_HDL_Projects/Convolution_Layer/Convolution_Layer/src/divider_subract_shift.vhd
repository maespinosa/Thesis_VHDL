-------------------------------------------------------------------------------
--
-- Title       : divider_subract_shift
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\divider_subract_shift.vhd
-- Generated   : Sat Sep 30 14:10:43 2017
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
--{entity {divider_subract_shift} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 


entity divider_subract_shift is		
	generic(
	g_div_input_width : integer := 32; 
	g_div_output_width : integer := 32; 
	g_mult_input_width : integer := 32; 
	g_mult_output_width : integer := 63
	);
	port(
	i_clk : in std_logic; 
	i_reset_n : in std_logic; 
	i_enable : in std_logic; 
	i_start	: in std_logic; 
	
	i_denominator : in std_logic_vector(g_div_input_width-1 downto 0); 
	i_numerator	: in std_logic_vector(g_div_input_width-1 downto 0); 
	i_product_a	: in std_logic_vector(g_mult_output_width-1 downto 0); 
	i_product_b	: in std_logic_vector(g_mult_output_width-1 downto 0); 
	
	o_multiplicand_a : out std_logic_vector(g_mult_input_width-1 downto 0); 
	o_multiplicand_b : out std_logic_vector(g_mult_input_width-1 downto 0); 
	o_multiplicand_c : out std_logic_vector(g_mult_input_width-1 downto 0); 
	o_multiplicand_d : out std_logic_vector(g_mult_input_width-1 downto 0); 
	o_quotient	: out std_logic_vector(g_div_output_width-1 downto 0); 
	o_done: out std_logic
	); 
end divider_subract_shift;
												 

architecture arch of divider_subract_shift is	  

type divider_state is (IDLE, CHECK_DENOM, SHIFT, SUBTRACT, MULTIPLY, DIVISION_DONE); 	
signal current_state : divider_state; 
signal next_state	: divider_state; 

signal done : std_logic; 
signal denominator : std_logic_vector(g_div_input_width-1 downto 0); 	   
signal numerator : std_logic_vector (g_div_input_width-1 downto 0); 
signal quotient : std_logic_vector(g_div_output_width-1 downto 0); 
signal multiplicand_a : std_logic_vector(g_mult_input_width-1 downto 0); 
signal multiplicand_b : std_logic_vector(g_mult_input_width-1 downto 0); 
signal multiplicand_c : std_logic_vector(g_mult_input_width-1 downto 0); 
signal multiplicand_d : std_logic_vector(g_mult_input_width-1 downto 0); 
signal multiply_counter : unsigned(2 downto 0);  
signal x 	: std_logic_vector(g_div_input_width-1 downto 0); 	   


begin  
	o_multiplicand_a <= multiplicand_a; 
	o_multiplicand_b <= multiplicand_b; 
	o_multiplicand_c <= multiplicand_c; 
	o_multiplicand_d <= multiplicand_d; 
	o_done			 <= done; 
	o_quotient 		 <= quotient; 
	
	state_transition: process(i_clk,i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process;   
	
	
	next_state_comb: process(current_state, i_enable, i_start, denominator,multiply_counter) is 
	begin
		
		case current_state is 
			when IDLE => 
				if(i_enable = '1' and i_start = '1') then 
					next_state <= CHECK_DENOM; 
				else 
					next_state <= IDLE; 
				end if; 
			
			when CHECK_DENOM => 
				if(signed(denominator) /= 1) then 
					next_state <= SHIFT; 
				else 
					next_state <= DIVISION_DONE; 
				end if; 

			when SHIFT =>
				if(signed(denominator) > 1) then 
					next_state <= SHIFT; 
				else 
					next_state <= SUBTRACT; 
				end if; 
			
			when SUBTRACT =>
				next_state <= MULTIPLY; 
			
			when MULTIPLY =>  
				if(multiply_counter = 7) then 
					next_state <= CHECK_DENOM; 
				else 
					next_state <= MULTIPLY; 
				end if; 
			
				
			when DIVISION_DONE => 
				next_state <= IDLE;    
			
			when others => 
				next_state <= IDLE; 
			
		end case; 

	end process;
	

	sequential_logic: process(i_clk, i_reset_n) is 
	begin
		if(i_reset_n = '0') then   
			done <= '0'; 
			denominator <= (others => '0'); 
			numerator <= (others => '0'); 
			multiplicand_a <= (others => '0'); 
			multiplicand_b <= (others => '0'); 
			multiplicand_c <= (others => '0'); 
			multiplicand_d <= (others => '0'); 
			multiply_counter <= (others => '0'); 	
			x <= (others => '0'); 
			
		elsif(rising_edge(i_clk)) then 	
			done <= done; 
			denominator <= denominator;
			numerator <= numerator; 
			multiplicand_a <= multiplicand_a; 
			multiplicand_b <= multiplicand_b; 
			multiplicand_c <= multiplicand_c; 
			multiplicand_d <= multiplicand_d; 
			multiply_counter <= multiply_counter; 	
			x <= x; 
			
			case current_state is 
				when IDLE => 
					done <= '0'; 
					denominator <= i_denominator; 
					numerator <= i_numerator; 
				
				when CHECK_DENOM =>  	

				when SHIFT => 
					if(signed(denominator) > 1) then 
						denominator <= denominator(g_div_input_width) & denominator(g_div_input_width) & denominator(g_div_input_width-2 downto (g_div_input_width/2)+1) & '0'& denominator(g_div_input_width/2 downto 1); 
					else
						denominator <= denominator; 
					end if; 

					
				when SUBTRACT =>
					x <= std_logic_vector(2 - signed(denominator)); 
					
				when MULTIPLY =>  
					multiplicand_a <= std_logic_vector(denominator);
					multiplicand_b <= std_logic_vector(x); 
					multiplicand_c <= std_logic_vector(numerator); 
					multiplicand_d <= std_logic_vector(x);  
					
					if(multiply_counter = 7) then 
						multiply_counter <= (others => '0');  
						denominator <= i_product_a(47 downto 16); 
						numerator <= i_product_a(47 downto 16);
					
					else 	
						multiply_counter <= multiply_counter + 1; 	  
						denominator <= denominator; 
						numerator <= numerator; 
						
					end if; 

				when DIVISION_DONE =>  
					done <= '1';  
					quotient <= numerator; 
				
			end case; 
			
		end if; 

	end process; 
	
	
	
		
end arch;
