-------------------------------------------------------------------------------
--
-- Title       : accumulator
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\accumulator.vhd
-- Generated   : Sat Sep  2 22:35:03 2017
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
--{entity {accumulator} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use ieee.numeric_std.all;  
use ieee.std_logic_misc.all;

library Convolution_Layer; 
use Convolution_Layer.types_pkg.all;

entity accumulator is
	generic( 
	g_data_width  : integer := 16; 
	g_product_width : integer := 32; 
	g_accumulator_width	: integer := 32; 
	g_dsps_used	: integer := 200; 
	g_layer_1_adders : integer := 16; --100; 
	g_layer_2_adders : integer := 8; --50; 
	g_layer_3_adders : integer := 4; --25; 
	g_layer_4_adders : integer := 2; --12; 
	g_layer_5_adders : integer := 1;--6; 
	g_layer_6_adders : integer := 1;--3; 
	g_layer_7_adders : integer := 2;
	g_num_adder_layers : integer := 6; 
	g_adder_delay		: integer := 8
	); 
	port(
	i_clk 					: in std_logic; 
	i_reset_n 				: in std_logic; 
	i_enable				: in std_logic; 
	
	i_products_array		: in array_type_varx16bit(g_dsps_used-1 downto 0); 
	i_products_array_valid 	: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_filter_size			: in std_logic_vector(3 downto 0); 	
	i_filter_acc_ready		: in std_logic; 
	o_acc_valid				: out std_logic; 
	o_acc_data				: out std_logic_vector(g_data_width-1 downto 0); 
	o_acc_ready 			: out std_logic
	); 
end accumulator;

--}} End of automatically maintained section

architecture arch of accumulator is	 

signal dsp_sums : array_type_varx16bit(10 downto 0); --signed(g_data_width-1 downto 0);   
signal filter_element_counter : unsigned(3 downto 0); 
signal kernel_sum_reg : std_logic_vector(g_data_width-1 downto 0); 	 
signal kernel_sum_valid : std_logic; 
signal kernel_sum_result : std_logic_vector(g_data_width-1 downto 0); 

signal kernel_value : std_logic_vector(g_data_width-1 downto 0);
signal acc_complete : std_logic; 
signal adder_delay_counter : unsigned(3 downto 0); 

signal acc_data : std_logic_vector(g_data_width-1 downto 0); 	 
signal acc_valid : std_logic; 

signal layer_1_result : array_type_varx16bit(g_layer_1_adders-1 downto 0); 
signal layer_2_result : array_type_varx16bit(g_layer_2_adders-1 downto 0); 
signal layer_3_result : array_type_varx16bit(g_layer_3_adders-1 downto 0); 
signal layer_4_result : array_type_varx16bit(g_layer_4_adders-1 downto 0); 
signal layer_5_result : array_type_varx16bit(g_layer_5_adders-1 downto 0); 
signal layer_6_result : array_type_varx16bit(g_layer_6_adders-1 downto 0); 
signal layer_7_result : array_type_varx16bit(g_layer_7_adders-1 downto 0);
signal Adder_result : std_logic_vector(15 downto 0); 	   

signal delay_counter : unsigned(7 downto 0); 

signal layer_5_result_DEBUG : std_logic_vector(15 downto 0); 	
signal layer_6_result_DEBUG : std_logic_vector(15 downto 0); 

signal delay_shift_register : std_logic_vector((g_num_adder_layers*g_adder_delay)-1 downto 0);

type accumulator_state is (IDLE, SUM_KERNEL_ELEMENTS, ADD_WAIT, SHIFT_IN_SUMS); 
signal current_state 		: accumulator_state; 
signal next_state			: accumulator_state;   

signal acc_ready : std_logic; 

component FP_ADDER_8E_8F IS
  PORT (
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END component;


begin
	
	Adder_layer_1: for i in g_layer_1_adders-1 downto 0 generate 	--100
	begin 
		Layer_1_Adder: FP_ADDER_8E_8F	
		port map(
			a => i_products_array(i*2), 
			b => i_products_array(i*2 + 1), 
			clk => i_clk, 
			result => layer_1_result(i)	   
		);
	end generate; 
	
	Adder_layer_2: for i in g_layer_2_adders-1 downto 0 generate --50
	begin 
		Layer_2_Adder: FP_ADDER_8E_8F	
		port map(
			a => layer_1_result(i*2),
			b => layer_1_result(i*2 + 1),  
			clk => i_clk, 
			result => layer_2_result(i)	 
		);
	end generate; 
	
	Adder_layer_3: for i in g_layer_3_adders-1 downto 0 generate --25
	begin 
		Layer_3_Adder: FP_ADDER_8E_8F	
		port map(
			a => layer_2_result(i*2),
			b => layer_2_result(i*2 + 1), 
			clk => i_clk, 
			result => layer_3_result(i)		   
		);
	end generate; 
	
	Adder_layer_4: for i in g_layer_4_adders-1 downto 0 generate --12
	begin 
		Layer_4_Adder: FP_ADDER_8E_8F	
		port map(
			a => layer_3_result(i*2),
			b => layer_3_result(i*2 + 1), 
			clk => i_clk, 
			result => layer_4_result(i)		--6
		);
	end generate;  
	
--	Adder_layer_5: for i in g_layer_5_adders-1 downto 0 generate --6
--	begin 
--		Layer_5_Adder: FP_ADDER_8E_8F	
--		port map(
--			a => layer_4_result(i*2),
--			b => layer_4_result(i*2 + 1), 
--			clk => i_clk, 
--			result => layer_5_result(i)	  --3
--		);
--	end generate; 	 
--	
--	
--	Adder_layer_6: for i in g_layer_6_adders-1 downto 0 generate --3
--	begin 
--		Layer_6_Adder: FP_ADDER_8E_8F	
--		port map(
--			a => layer_5_result(i*2),
--			b => layer_5_result(i*2 + 1), 
--			clk => i_clk, 
--			result => layer_6_result(i)
--		);
--	end generate; 	 
	
	
	Adder_layer_5_DEBUG: FP_ADDER_8E_8F	
	port map(
		a => layer_4_result(0),
		b => layer_4_result(1), 
		clk => i_clk, 
		result => layer_5_result_DEBUG
	);	  
	
	Adder_layer_6_DEBUG: FP_ADDER_8E_8F	
	port map(
		a => layer_5_result_DEBUG,
		b => i_products_array(g_dsps_used-1), 
		clk => i_clk, 
		result => layer_6_result_DEBUG
	);
	
--
--	Adder_layer_7a: FP_ADDER_8E_8F	
--	port map(
--		a => layer_6_result(0),
--		b => layer_6_result(1), 
--		clk => i_clk, 
--		result => layer_7_result(0)
--	);
--	
--	Adder_layer_7b: FP_ADDER_8E_8F	
--	port map(
--		a => layer_6_result(2),
--		b => layer_3_result(g_layer_3_adders-1), 
--		clk => i_clk, 
--		result => layer_7_result(1)
--	);
--	
--	Last_Adder: FP_ADDER_8E_8F	
--	port map(
--		a => layer_7_result(0),
--		b => layer_7_result(1),
--		clk => i_clk, 
--		result => Adder_result
--	);

	Kernel_sum: FP_ADDER_8E_8F	
	port map(
		a => kernel_value,
		b => kernel_sum_reg,
		clk => i_clk, 
		result => kernel_sum_result
	);

	
	o_acc_valid <= kernel_sum_valid; --delay_shift_register((g_num_adder_layers*g_adder_delay)-1); 
	o_acc_data	<= kernel_sum_reg; --layer_6_result_DEBUG; --Adder_result; 
	o_acc_ready <= acc_ready; 
	
	shift_valid: process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then 
			delay_shift_register <= (others =>'0');	
		elsif(rising_edge(i_clk)) then 
			delay_shift_register <=  delay_shift_register((g_num_adder_layers*g_adder_delay)-2 downto 0) & and_reduce(i_products_array_valid(8 downto 0)); 
		end if; 

	end process; 
	
	state_transitions:process(i_clk,i_reset_n)is 
	begin 
		if(i_reset_n = '0') then
			current_state <= IDLE; 
		elsif(rising_edge(i_clk))then
			current_state <= next_state; 
		end if; 
	end process; 	
	
	next_state_comb : process(all) is 
	begin 						 
		
		acc_ready <= '0';
		kernel_sum_valid <= '0'; 
		
		case current_state is 
			
			when IDLE =>   
				acc_ready <= '1'; 
				if(and_reduce(i_products_array_valid(8 downto 0)) = '1' and i_filter_acc_ready = '1') then 
					--acc_ready <= '0'; 
					next_state <= SHIFT_IN_SUMS; 
				else 
					--acc_ready <= '1'; 
					next_state <= IDLE; 
				end if; 
				
			when SHIFT_IN_SUMS => 
				acc_ready <= '1';
				next_state <= SHIFT_IN_SUMS; 
				if(delay_shift_register((g_num_adder_layers*g_adder_delay)-1) = '1')then   
					if(filter_element_counter < unsigned(i_filter_size)) then
						next_state <= SHIFT_IN_SUMS; 
					else 
						next_state <= SUM_KERNEL_ELEMENTS; 
					end if; 	  
				end if;	
			
			when SUM_KERNEL_ELEMENTS =>
				acc_ready <= '0';
				if(acc_complete = '0') then
					next_state <= ADD_WAIT;	 
				else   
					next_state <= IDLE; 
				end if; 
				
					
			when ADD_WAIT => 
				acc_ready <= '0';
				if(adder_delay_counter < g_adder_delay-1) then
					next_state <= ADD_WAIT; 
					
				else 
					next_state <= SUM_KERNEL_ELEMENTS;
					if(filter_element_counter = unsigned(i_filter_size)) then 
						kernel_sum_valid <= '1'; 
					else 
						kernel_sum_valid <= '0'; 
					end if; 
				end if; 
				
			when others => 
				next_state <= IDLE;   
		end case; 
			
				
		
		
	end process;  
	
	sequential_logic : process(i_clk, i_reset_n) is 
	begin 
		if(i_reset_n = '0') then
			kernel_sum_reg 			<= (others => '0'); 
			filter_element_counter 	<= (others => '0'); 
			dsp_sums 				<= (others => (others => '0'));  
			kernel_value 			<= (others => '0');  
			acc_complete 			<= '0'; 
			adder_delay_counter 	<= (others => '0'); 	
			--kernel_sum_valid 		<= '0'; 
			
		elsif(rising_edge(i_clk))then 
			
			kernel_sum_reg 			<= kernel_sum_reg; 
			filter_element_counter 	<= filter_element_counter; 
			dsp_sums 				<= dsp_sums; 
			kernel_value 			<= kernel_value;  
			acc_complete 			<= acc_complete; 
			adder_delay_counter 	<= adder_delay_counter;   
			--kernel_sum_valid 		<= kernel_sum_valid;  
			
			case current_state is 
				when IDLE => 
					acc_complete <= '0'; 
					--kernel_sum_valid <= '0'; 
				
				when SHIFT_IN_SUMS =>  
					if(delay_shift_register((g_num_adder_layers*g_adder_delay)-1) = '1') then   
						if(filter_element_counter < unsigned(i_filter_size)) then
							filter_element_counter <= filter_element_counter + 1;  
							dsp_sums <= dsp_sums(9 downto 0) & layer_6_result_DEBUG; 
						else 
							filter_element_counter <= (others => '0'); --filter_element_counter; 
							dsp_sums <= dsp_sums; --dsp_sums(9 downto 0) & layer_6_result_DEBUG; 
						end if; 	  
					end if;	
					
					
				when SUM_KERNEL_ELEMENTS => 

					
					if(filter_element_counter < unsigned(i_filter_size)) then
						filter_element_counter <= filter_element_counter + 1;  
						kernel_value <= dsp_sums(to_integer(filter_element_counter));  
						kernel_sum_reg <= kernel_sum_result; 
						--acc_complete <= '0'; 
					else 
						filter_element_counter <= (others => '0'); --filter_element_counter; 
						kernel_value <= (others => '0');--dsp_sums(to_integer(filter_element_counter));   
						kernel_sum_reg <= (others => '0');--kernel_sum_result; 
						--acc_complete <= '1';
						--kernel_sum_valid <= '1'; 
					end if; 
					
				when ADD_WAIT =>  

					if(adder_delay_counter < g_adder_delay-1) then
						adder_delay_counter <= adder_delay_counter + 1; 
					else 
						adder_delay_counter <= (others => '0'); 
						if(filter_element_counter = unsigned(i_filter_size)) then 
							acc_complete <='1'; 
							--kernel_sum_valid <= '1'; 
							kernel_sum_reg <= kernel_sum_result;
						else 
							acc_complete <= '0'; 
							--kernel_sum_valid <= '0'; 
							kernel_sum_reg <= (others => '0');
						end if; 
						
					end if;  
					
					
					
					
				when others => 
					null; 	 
			end case; 
				
				
				
				
		end if; 

	end process; 
	
	
		

--	dsp_sum: process(i_enable, i_products_array, i_filter_size) is
--	begin 
--		if(i_enable = '1' and and_reduce(i_products_array_valid) = '1') then 
--			for i in 0 to g_dsps_used-1 loop 
--				dsp_sums <= dsp_sums + signed(i_products_array(i)); 
--			end loop;
--		else 
--			dsp_sums <= (others => '0'); 
--		end if; 
--
--	end process; 
--	
--	
--	kernel_sums: process(i_clk, i_reset_n) is 
--	begin 
--		if(i_reset_n = '0') then  
--			kernel_sum <= (others => '0'); 
--			filter_element_counter <= (others => '0');
--			kernel_sum_valid <= '0'; 
--			
--		elsif(rising_edge(i_clk)) then 	
--			kernel_sum <= kernel_sum; 
--			filter_element_counter <= filter_element_counter; 
--			
--			if(i_enable = '1' and and_reduce(i_products_array_valid) = '1') then 
--				if(filter_element_counter = unsigned(i_filter_size)) then 
--					kernel_sum <= (others => '0'); 	
--					kernel_sum_valid <= '0'; 
--					filter_element_counter <= (others => '0'); 
--				else 
--					kernel_sum <= kernel_sum + dsp_sums;  
--					kernel_sum_valid <= '0'; 
--					filter_element_counter <= filter_element_counter + 1;  
--					if(filter_element_counter = unsigned(i_filter_size)-1) then 
--						kernel_sum_valid <= '1'; 
--					end if; 
--					
--						
--				end if; 
--			else   
--				filter_element_counter <= filter_element_counter; 
--				kernel_sum <= (others => '0'); 
--				kernel_sum_valid <= '0'; 
--			end if; 
--			
--		end if; 
--
--		
--	end process; 
	
	
	

end arch;
