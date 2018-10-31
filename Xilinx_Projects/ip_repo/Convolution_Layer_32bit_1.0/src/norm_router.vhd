-------------------------------------------------------------------------------
--
-- Title       : norm_router
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\norm_router.vhd
-- Generated   : Sat Sep 30 23:15:41 2017
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
--{entity {norm_router} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; 

entity norm_router is 
	generic( 
	g_data_width : integer := 32
	); 
	port(
	i_clk 				: in std_logic; 
	i_reset_n 			: in std_logic; 
	i_enable 			: in std_logic;
	i_fresh_params		: in std_logic;  

	i_mean 				: in std_logic_vector(g_data_width-1 downto 0); 
	i_variance 			: in std_logic_vector(g_data_width-1 downto 0); 	 
	i_gamma 			: in std_logic_vector(g_data_width-1 downto 0); 
	i_beta				: in std_logic_vector(g_data_width-1 downto 0);   
	i_epsilon 			: in std_logic_vector(g_data_width-1 downto 0); 
	
	i_input_data 		: in std_logic_vector(g_data_width-1 downto 0); 	
	i_input_data_valid  : in std_logic;
	i_square_root 		: in std_logic_vector(g_data_width-1 downto 0); 
	i_quotient 			: in std_logic_vector(g_data_width-1 downto 0);   
	
	i_diva_ready		: in std_logic; 
	i_divb_ready		: in std_logic; 
	i_div_result_valid	: in std_logic;   
	i_sqrt_rad_ready	: in std_logic; 
	i_sqrt_result_valid	: in std_logic; 
	i_outbuff_almost_full	: in std_logic; 
	
	o_radicand 			: out std_logic_vector(g_data_width-1 downto 0); 
	o_numerator 		: out std_logic_vector(g_data_width-1 downto 0); 
	o_denominator 		: out std_logic_vector(g_data_width-1 downto 0); 	
	o_normalized_data 	: out std_logic_vector(g_data_width-1 downto 0);
	o_normalized_data_valid : out std_logic; 
	
	o_diva_valid 		: out std_logic; 
	o_divb_valid 		: out std_logic; 
	o_div_result_ready	: out std_logic; 
	o_sqrt_rad_valid	: out std_logic; 
	o_sqrt_result_ready : out std_logic; 
	o_normalizer_ready	: out std_logic
	); 
end norm_router;



architecture arch of norm_router is	  

type norm_state is (IDLE, SQRT, SUB, DIVIDE, COMPLETE); 
signal current_state : norm_state; 
signal next_state	: norm_state; 

signal square_root		: std_logic_vector(g_data_width-1 downto 0); 
signal numerator 		: std_logic_vector(g_data_width-1 downto 0);
signal denominator 		: std_logic_vector(g_data_width-1 downto 0); 
signal difference 		: std_logic_vector(g_data_width-1 downto 0); 
signal quotient 		: std_logic_vector(g_data_width-1 downto 0); 
signal normalized_data  : std_logic_vector(g_data_width-1 downto 0);  
signal radicand 		: std_logic_vector(g_data_width-1 downto 0);
signal diva_valid		: std_logic; 
signal divb_valid		: std_logic; 
signal div_result_ready	: std_logic; 
signal sqrt_rad_valid	: std_logic; 
signal sqrt_result_ready: std_logic; 
signal normalizer_ready	: std_logic; 	  
signal normalized_data_valid : std_logic;
			

begin  
	
	o_radicand 			<= radicand;  
	o_numerator 		<= numerator; 
	o_denominator 		<= denominator; 	
	o_normalized_data 	<= normalized_data;
	o_normalized_data_valid <= normalized_data_valid; 
	
	o_diva_valid 		<= diva_valid; 
	o_divb_valid 		<= divb_valid; 
	o_div_result_ready	<= div_result_ready; 
	o_sqrt_rad_valid	<= sqrt_rad_valid; 
	o_sqrt_result_ready <= sqrt_result_ready; 
	o_normalizer_ready	<= normalizer_ready; 
	
	state_transition: process(i_clk, i_reset_n) is 
	begin  
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process; 
	
	
	next_state_comb: process(current_state, i_enable, i_fresh_params,i_sqrt_result_valid,i_sqrt_rad_ready,i_div_result_valid,i_diva_ready,i_divb_ready) is 
	begin  
		sqrt_rad_valid 		<= '0';
		sqrt_result_ready 	<= '1'; 
		radicand 			<= (others => '0'); 
		diva_valid 			<= '0'; 
		divb_valid 			<= '0'; 
		div_result_ready 	<= '0'; 
		numerator 			<= (others => '0'); 
		denominator 		<= (others => '0');   
		normalized_data_valid <= '0'; 
		normalizer_ready 	<= '0'; 
		
		case current_state is 
			when IDLE =>  
				if(i_enable = '1' and i_fresh_params = '1') then 
					next_state <= SQRT; 
				else 
					next_state <= IDLE; 
				end if; 
			
			when SQRT => 
				if(i_sqrt_result_valid = '0' and i_sqrt_rad_ready = '1') then 
					sqrt_rad_valid <= '1'; 
					sqrt_result_ready <= '1';
					next_state <= SQRT; 
				else 
					sqrt_rad_valid <= '0'; 
					sqrt_result_ready <= '0'; 
					next_state <= SUB; 
				end if; 
			
				
			when SUB => 
				normalizer_ready <= '1'; 
				if(i_input_data_valid = '1') then 
					next_state <= DIVIDE; 
				else 
					next_state <= SUB; 
				end if; 
				
				
			when DIVIDE => 
				if(i_div_result_valid = '0' and i_diva_ready = '1' and i_divb_ready = '1') then 
					diva_valid <= '1'; 
					divb_valid <= '1'; 
					div_result_ready <= '1'; 
					numerator <= difference; 
					denominator <= square_root;	
					next_state <= DIVIDE; 
				else 
					diva_valid <= '0'; 
					divb_valid <= '0'; 	
					div_result_ready <= '0'; 
					numerator <= (others => '0'); 
					denominator <= (others => '0');  
					next_state <= COMPLETE; 
				end if; 
			
				
			when COMPLETE => 
				normalized_data_valid <= '1'; 
				if(i_outbuff_almost_full = '1') then 
					next_state <= COMPLETE; 
				else
					next_state <= SUB; 
				end if; 
			
			when others => 	
				next_state <= IDLE; 
			
		end case; 

	end process; 
	
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then
			square_root		<= (others => '0');  	 
			difference 		<= (others => '0'); 
			quotient 		<= (others => '0'); 
			normalized_data <= (others => '0'); 
			radicand 		<= (others => '0'); 
			
			
		elsif(rising_edge(i_clk)) then
			square_root 	<= square_root; 
			difference 		<= difference; 
			quotient 		<= quotient; 
			normalized_data <= normalized_data; 
			radicand 		<= radicand; 

			
			case current_state is 
				when IDLE => 
					square_root		<= (others => '0');   
					difference 		<= (others => '0'); 
					quotient 		<= (others => '0'); 
					normalized_data <= (others => '0'); 
					radicand 		<= (others => '0'); 
				
				
				when SQRT => 
					if(i_sqrt_result_valid = '0' and i_sqrt_rad_ready = '1') then 
						square_root <= square_root; 
						radicand <= std_logic_vector(signed(i_variance) + signed(i_epsilon)); 
					else 
						square_root <= i_square_root;
						radicand <= radicand; 
					end if;  
				
				when SUB =>  
					if(i_input_data_valid = '1') then 
						difference <= std_logic_vector(signed(i_input_data) - signed(i_mean)); 
					else 
						difference <= difference; 
					end if; 
					
				
				when DIVIDE => 
					if(i_div_result_valid = '0' and i_diva_ready = '1' and i_divb_ready = '1') then 
						quotient <= quotient; 
					else 
						quotient <= i_quotient; 
					end if; 
				
				
				when COMPLETE => 	   
					normalized_data <= quotient;
				
				when others => 
					square_root		<= (others => '0');   
					difference 		<= (others => '0'); 
					quotient 		<= (others => '0'); 
					normalized_data <= (others => '0');  
				
				
			end case;  
		
		end if; 
		
	end process; 
	
	
	
	
	



end arch;
