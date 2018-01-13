-------------------------------------------------------------------------------
--
-- Title       : exponential_function
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\exponential_function.vhd
-- Generated   : Wed Oct  4 00:22:25 2017
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : This module implements the computer arithmetic for the exponential function 
--				 found in the text "Computer Arithmetic Algorithms" 2nd Ed. by Israel Koren	
--				 pg. 226 Section 9.1.  
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {exponential_function} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all;

entity exponential_function is 
	port(
	i_clk : in std_logic; 
	i_reset_n : in std_logic; 
	i_enable 	: in std_logic;
	
	i_data : in std_logic_vector(15 downto 0); 
	i_valid 	: in std_logic; 
	
	o_data	: out std_logic_vector(15 downto 0); 
	o_valid	: out std_logic; 
	o_ready	: out std_logic	
	); 
end exponential_function;



architecture arch of exponential_function is  
type exp_state is(IDLE, CALCULATE_D, CALCULATE_XY, CALCULATE_ALL, DONE); 
signal current_state : exp_state; 
signal next_state : exp_state; 

type array_type_varx16bit is array(integer range <>) of std_logic_vector(15 downto 0); 
constant c_integer_exp_table : array_type_varx16bit(5 downto 0) := (
		0 => "0000000100000000", --1
		1 => "0000001010110111", --2.714844
		2 => "0000011101100011", --7.386719
		3 => "0001010000010101", --20.08203
		4 => "0011011010011001", --54.59766
		5 => "1001010001101001" --148.4102 
		); 	  
		
		
constant c_table_1 : array_type_varx16bit(8 downto 0) := (
		0 => "0000001000000000", --2
		1 => "0000000110000000", --1.5
		2 => "0000000101000000", --1.25
		3 => "0000000100100000", --1.125
		4 => "0000000100010000", --1.0625
		5 => "0000000100001000", --1.03125
		6 => "0000000100000100", --1.015625
		7 => "0000000100000010", --1.007813
		8 => "0000000100000001"  --1.003906
		); 	  		

constant c_table_2 : array_type_varx16bit(8 downto 0) := (
		0 => "0000000010110001", --0.691406
		1 => "0000000001100111", --0.402344
		2 => "0000000000111001", --0.222656
		3 => "0000000000011110", --0.117188
		4 => "0000000000001111", --0.058594
		5 => "0000000000001000", --0.031250
		6 => "0000000000000100", --0.015625
		7 => "0000000000000010", --0.007813
		8 => "0000000000000001"  --0.003906
		); 	   
		
constant c_table_3 : array_type_varx16bit(8 downto 0) := (
		0 => "0000000000000000", --0.0
		1 => "0000000010000000", --0.5
		2 => "0000000011000000", --0.75
		3 => "0000000011100000", --0.875
		4 => "0000000011110000", --0.9375
		5 => "0000000011111000", --0.96875
		6 => "0000000011111100", --0.984375
		7 => "0000000011111110", --0.992188
		8 => "0000000011111111"  --0.996094
		); 	 
		
		
signal x_array : array_type_varx16bit(8 downto 0); 
signal y_array : array_type_varx16bit(8 downto 0); 
signal D_array : array_type_varx16bit(8 downto 0); 
signal s_array : std_logic_vector(7 downto 0);  
signal counter : unsigned(7 downto 0); 
signal mult_counter : unsigned(7 downto 0); 
signal a_mult : std_logic_vector(15 downto 0); 
signal b_mult		: std_logic_vector(15 downto 0); 
signal product		: std_logic_vector(31 downto 0);  
signal exp_integer	: std_logic_vector(15 downto 0);   
signal result 		: std_logic_vector(15 downto 0); 
signal result_valid	: std_logic; 


COMPONENT exponential_multiplier
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;


begin  
	
	o_data <= result; 
	o_valid <= result_valid; 
	
	exp_mult_inst: exponential_multiplier 
	port map( 	
	clk => i_clk, 
	a => a_mult, 
	b => b_mult, 
	p => product
	); 
	
	state_transitions: process(i_clk, i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process; 
	
	
	next_state_comb: process(current_state, i_enable, i_valid, D_array, counter, mult_counter) is 
	begin 
		result_valid <= '0'; 
		
		case current_state is 
			when IDLE =>
				if(i_enable = '1' and i_valid = '1') then 
					next_state <= CALCULATE_D; 
				else 
					next_state <= IDLE; 
				end if; 
			
			when CALCULATE_D => 
				next_state <= CALCULATE_XY; 
				
			when CALCULATE_XY => 
				if(signed(D_array(to_integer(counter))) >= 0) then 
					
					if(mult_counter < 3) then 
						next_state <= CALCULATE_XY; 
					else 
						if(counter < 9) then
							next_state <= CALCULATE_D; 	 
						else 
							if(signed(exp_integer) = 0) then 
								next_state <= DONE; 
							else 
								next_state <= CALCULATE_ALL; 
							end if; 
						end if; 
					end if; 
					
				else 
					if(counter < 9) then
						next_state <= CALCULATE_D; 	 
					else 
						if(signed(exp_integer) = 0) then 
							next_state <= DONE; 
						else 
							next_state <= CALCULATE_ALL; 
						end if; 
					end if; 
				end if; 
				
			when CALCULATE_ALL => 
				if(mult_counter < 3) then 
					next_state <= CALCULATE_ALL; 
				else 
					next_state <= DONE; 
				end if; 
				
			when DONE => 
				result_valid <= '1'; 
				
				
			when others => 	
				next_state <= IDLE; 
			
		end case; 

	end process; 
	
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 	 
		if(i_reset_n = '0') then  
			x_array 		<= (others => (others => '0')); 
			y_array 		<= (others => (others => '0')); 
			D_array 		<= (others => (others => '0')); 
			s_array 		<= (others => '0');
			counter 		<= (others => '0'); 
			mult_counter 	<= (others => '0'); 
			a_mult 			<= (others => '0'); 
			b_mult			<= (others => '0');  
			exp_integer 	<= (others => '0');   
			result 			<= (others => '0'); 
			
			
		elsif(rising_edge(i_clk)) then 	  
			x_array 		<= x_array; 
			y_array 		<= y_array; 
			D_array 		<= D_array; 
			s_array 		<= s_array; 
			counter 		<= counter; 
			mult_counter 	<= mult_counter; 
			a_mult 			<= a_mult; 
			b_mult 			<= b_mult; 
			exp_integer 	<= exp_integer; 
			result			<= result; 
			
			case current_state is 
				when IDLE =>
					if(i_enable = '1' and i_valid = '1') then 
						x_array(0) 	<= "00000000" & i_data(7 downto 0);
						y_array(0) 	<= std_logic_vector(to_signed(1,16)); 
						D_array(0) 	<= (others => '0'); 
						counter 	<= counter + 1;   
						exp_integer <= c_integer_exp_table(to_integer(signed(i_data(15 downto 8)))); 
					else 
						x_array 		<= (others => (others => '0')); 
						y_array 		<= (others => (others => '0')); 
						D_array 		<= (others => (others => '0')); 
						s_array 		<= (others => '0'); 
						counter 		<= (others => '0');
						mult_counter 	<= (others => '0'); 
						result 			<= (others => '0'); 
					end if; 
				
				
				when CALCULATE_D =>	   
					D_array(to_integer(counter)) <= std_logic_vector(signed(c_table_1(to_integer(counter)-1)) - signed(x_array(to_integer(counter) - 1))); 
				  	
				when CALCULATE_XY => 
					if(signed(D_array(to_integer(counter))) >= 0) then 
						x_array(to_integer(counter)) <= D_array(to_integer(counter)); 	 
						s_array(to_integer(counter)) <= '1'; 
						
						if(mult_counter < 3) then 
							a_mult 							<= c_table_1(to_integer(counter)-1); 
							b_mult 							<= y_array(to_integer(counter)-1);
							y_array(to_integer(counter)) 	<= (others => '0'); 
							mult_counter 					<= mult_counter + 1; 
						else 
							a_mult 							<= (others => '0'); 
							b_mult 							<= (others => '0');
							y_array(to_integer(counter)) 	<= product(23 downto 8); 
							mult_counter 					<= (others => '0');   
							counter <= counter + 1; 
						end if; 
						
					else 
						x_array(to_integer(counter)) <= x_array(to_integer(counter)-1);    
						y_array(to_integer(counter)) <= y_array(to_integer(counter)-1); 
						s_array(to_integer(counter)) <= '0'; 	 
						counter <= counter + 1; 
					end if;   
					
				when CALCULATE_ALL =>  
					if(mult_counter < 3) then 
						a_mult <= exp_integer; 
						b_mult <= y_array(to_integer(counter)); 
						result <= (others => '0'); 
					else 
						a_mult <= (others => '0'); 
						b_mult <= (others => '0'); 
						result <= product(23 downto 8); 
					end if; 
					
				when DONE => 
					result <= result; 
					result_valid <= '1'; 
				
				when others => 	  
					x_array 		<= (others => (others => '0')); 
					y_array 		<= (others => (others => '0')); 
					D_array 		<= (others => (others => '0')); 
					s_array 		<= (others => '0'); 
					counter 		<= (others => '0');
					mult_counter 	<= (others => '0'); 
					a_mult 			<= (others => '0'); 
					b_mult			<= (others => '0'); 
					exp_integer		<= (others => '0');  
					result 			<= (others => '0'); 
			end case;  
		end if; 
		
	end process; 
	



end arch;
