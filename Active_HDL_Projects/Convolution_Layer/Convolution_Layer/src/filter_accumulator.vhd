-------------------------------------------------------------------------------
--
-- Title       : filter_accumulator
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\filter_accumulator.vhd
-- Generated   : Sat Sep 16 21:03:07 2017
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
--{entity {filter_accumulator} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all; 


entity filter_accumulator is
	generic(
		g_data_width 	: integer := 16; 
		g_adder_delay 	: integer := 6
	); 
	port(
	i_clk 						: in std_logic; 
	i_reset_n 					: in std_logic; 
	
	i_acc_data_valid 			: in std_logic; 
	i_acc_data 					: in std_logic_vector(g_data_width-1 downto 0); 
	i_recycled_acc_data_en 		: in std_logic;
	i_recycled_acc_data			: in std_logic_vector(g_data_width-1 downto 0);  
	i_send_done					: in std_logic;
	i_full						: in std_logic; 
	i_almost_full				: in std_logic; 
	i_prog_full					: in std_logic; 
	i_num_filters				: in std_logic_vector(11 downto 0); 
	i_num_iterations			: in std_logic_vector(7 downto 0); 
	i_output_volume_size		: in std_logic_vector(7 downto 0); 	
	
	o_prog_full_thresh			: out std_logic_vector(9 downto 0); 
	o_filter_accumulator_ready 	: out std_logic; 
	o_send						: out std_logic; 
	o_recycle_en				: out std_logic;
	o_acc_filter_data 			: out std_logic_vector(g_data_width-1 downto 0); 
	o_data_valid 				: out std_logic
	); 
end filter_accumulator;
																					  
--}} End of automatically maintained section

architecture arch of filter_accumulator is		
signal hold_flag 					: std_logic;  
--signal filter_iteration : unsigned(7 downto 0);   
signal filter_counter 				: unsigned(11 downto 0); 
signal volume_pixel_counter			: unsigned(7 downto 0);
signal recycled_data_multiplicand 	: std_logic_vector(15 downto 0);
signal dsp_acc_data 				: std_logic_vector(15 downto 0);  
signal send_flag 					: std_logic; 
signal filter_accumulator_ready 	: std_logic;  
signal adder_delay_counter 			: unsigned(3 downto 0); 	 
signal accumulated_data 			: std_logic_vector(15 downto 0); 	  
signal acc_filter_data 				: std_logic_vector(15 downto 0);    
signal data_valid 					: std_logic;	
signal filter_iterations 			: unsigned(7 downto 0);   
signal recycle_en 					: std_logic; 

type filter_acc_state is (IDLE, FIRST_CHANNEL_SET, ITERATE_CHANNEL_SETS, ADDER_WAIT, SEND);
signal current_state 		: filter_acc_state; 
signal next_state			: filter_acc_state; 

component FP_ADDER_8E_8F IS
  PORT (
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END component;


begin 
	--o_hold <= hold_flag;
	o_prog_full_thresh <= (others => '0'); 
	
	o_acc_filter_data 			<= acc_filter_data; 
	o_data_valid 				<= data_valid; 
	
	o_filter_accumulator_ready 	<= filter_accumulator_ready;
	o_send 						<= send_flag; 	  
	o_recycle_en 				<= recycle_en; 
	
	
	filter_adder : FP_ADDER_8E_8F
	port map(
	    a => recycled_data_multiplicand, 
	    b => dsp_acc_data, 
	    clk => i_clk, 
	    result => accumulated_data
	); 	  
	
	
	state_transitions: process(i_clk, i_reset_n) is
	begin 	   
		if (i_reset_n = '0') then
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 	 
			current_state <= next_state; 
		end if; 	
	end process; 
	

	next_state_comb : process(all) is 	  	
	begin
		send_flag <= '0'; 
		filter_accumulator_ready <= '0'; 
		recycle_en <= '0'; 
		
		case current_state is 
			when IDLE =>
				filter_accumulator_ready <= '1'; 
				next_state <= FIRST_CHANNEL_SET; 
			
			when FIRST_CHANNEL_SET => 	 
				send_flag <= '0'; 
				filter_accumulator_ready <= '1';  
				recycle_en <= '0'; 
			
				if(filter_counter < unsigned(i_num_filters)) then  
					next_state <= FIRST_CHANNEL_SET; 
				else 
					if(unsigned(i_num_iterations) > 1) then 
						next_state <= ITERATE_CHANNEL_SETS;   
					else 
						next_state <= SEND; 
					end if; 
				end if;    
			
			when ITERATE_CHANNEL_SETS =>  
				send_flag <= '0'; 
				filter_accumulator_ready <= '1';  
				recycle_en <= '1'; 
			
--				if(filter_counter < unsigned(i_num_filters)) then  
--					next_state <= FIRST_CHANNEL_SET; 
--				else 
--					if(filter_iterations < unsigned(i_num_iterations)) then 
--						next_state <= ITERATE_CHANNEL_SETS;   
--					else 
--						filter_iteration <= SEND; 
--					end if; 
--				end if; 
				
				if(filter_counter < unsigned(i_num_filters) and i_acc_data_valid = '1') then   
					next_state <= ADDER_WAIT;	
				else 					
					next_state <= ITERATE_CHANNEL_SETS; 
				end if; 
				
				
			when SEND => 
				send_flag <= '1'; 
				filter_accumulator_ready <= '0';  	
				recycle_en <= '0'; 
				
				if(i_send_done = '1') then 
					next_state <= IDLE; 
				else 
					next_state <= SEND; 
				end if; 
				
			
			
			when ADDER_WAIT => 	
				send_flag <= '0'; 
				filter_accumulator_ready <= '0';   
				recycle_en <= '0'; 
				

				if(adder_delay_counter < g_adder_delay) then 
					next_state <= ADDER_WAIT; 
				else 
					if(filter_iterations < unsigned(i_num_iterations)) then 
						next_state <= ITERATE_CHANNEL_SETS;   
					else 
						next_state <= SEND; 
					end if; 
				end if; 

			when others => 
				next_state <= IDLE;
			
			end case; 
			
		
	end process; 
	
	
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 	   
		if(i_reset_n = '0') then
			filter_iterations 			<= (others => '0'); 
			filter_counter 				<= (others => '0'); 
			volume_pixel_counter 		<= (others => '0');   
			adder_delay_counter 		<= (others => '0'); 
			data_valid 					<= '0'; 
			acc_filter_data 			<= (others => '0');  
			recycled_data_multiplicand 	<= (others => '0');  
			dsp_acc_data 				<= (others => '0');  

		elsif(rising_edge(i_clk)) then 	  
			filter_iterations <= filter_iterations; 
			filter_counter <= filter_counter; 
			volume_pixel_counter <= volume_pixel_counter; 	
			adder_delay_counter <= adder_delay_counter;  
			
			data_valid <= data_valid; 
			acc_filter_data <= acc_filter_data;   
			
			recycled_data_multiplicand 	<= recycled_data_multiplicand; 
			dsp_acc_data 				<= dsp_acc_data;
			
			case current_state is 
				when IDLE => 	
					null; 
				
				when FIRST_CHANNEL_SET =>  
					
					data_valid 			<= '0'; 
					acc_filter_data 		<= (others => '0');   
					
					if(filter_counter < unsigned(i_num_filters) and i_acc_data_valid = '1') then   
						
						data_valid <= i_acc_data_valid; 
						acc_filter_data <= i_acc_data; 
						
						if(volume_pixel_counter < unsigned(i_output_volume_size)-1 and i_acc_data_valid = '1') then 
							volume_pixel_counter <= volume_pixel_counter + 1; 	
							filter_counter <= filter_counter; 
						else 
							volume_pixel_counter <= (others => '0');   
							filter_counter <= filter_counter + 1; 
						end if;	 
						
						
					elsif(filter_counter < unsigned(i_num_filters) and i_acc_data_valid = '0') then  
						volume_pixel_counter <= volume_pixel_counter; 	
						filter_counter <= filter_counter; 
						data_valid <= '0'; 
						acc_filter_data <= (others => '0'); 
					else 
						volume_pixel_counter 	<= (others => '0');   
						filter_counter 			<= (others => '0'); 	  
						data_valid 				<= '0'; 
						acc_filter_data 		<= (others => '0'); 
						
						if(unsigned(i_num_iterations) > 1) then 
							filter_iterations <= filter_iterations + 1;  
						else 
							filter_iterations <= filter_iterations; 
						end if; 

					end if;    
					
				when ITERATE_CHANNEL_SETS =>  	
					
					if(filter_counter < unsigned(i_num_filters) and i_acc_data_valid = '1') then   
						
						recycled_data_multiplicand 	<= i_recycled_acc_data; 
						dsp_acc_data 				<= i_acc_data;
						
						if(volume_pixel_counter < unsigned(i_output_volume_size) and i_acc_data_valid = '1') then 
							volume_pixel_counter <= volume_pixel_counter + 1; 	
							filter_counter <= filter_counter; 
						else 
							volume_pixel_counter <= (others => '0');   
							filter_counter <= filter_counter + 1; 
						end if;	
						
					elsif(filter_counter < unsigned(i_num_filters) and i_acc_data_valid = '0') then  
						recycled_data_multiplicand 	<= recycled_data_multiplicand; 
						dsp_acc_data 				<= dsp_acc_data;
						volume_pixel_counter 		<= volume_pixel_counter; 	
						filter_counter 				<= filter_counter; 
					else
						recycled_data_multiplicand 	<= (others => '0'); 
						dsp_acc_data 				<= (others => '0'); 
						volume_pixel_counter		<= (others => '0');   
						filter_counter 				<= (others => '0'); 
						
						if(filter_iterations < unsigned(i_num_iterations)) then 
							filter_iterations <= filter_iterations + 1;  
						else 
							filter_iterations <= filter_iterations; 
						end if; 

					end if; 
					
				when SEND => 	
					null; 
				
				when ADDER_WAIT => 
					if(adder_delay_counter < g_adder_delay) then 
						adder_delay_counter <= adder_delay_counter + 1;  
					else 
						adder_delay_counter <= (others => '0');	  
						data_valid <= '1'; 
						acc_filter_data <= accumulated_data; 
					end if; 	
					
				when others => 
					null; 
				
			end case; 
		end if; 

	end process; 
	
	
	
	
--	main: process(i_acc_data_valid,i_recycled_acc_data_en,hold_flag) 	 	
--	begin 
--		
--		o_data_valid 			<= '0'; 
--		o_acc_filter_data 		<= (others => '0');  
--		
--		if(hold_flag = '1') then 
--			o_data_valid 			<= '0'; 
--			o_acc_filter_data 		<= (others => '0');  
--		elsif(i_acc_data_valid = '1' and i_recycled_acc_data_en = '1') then 
--			o_acc_filter_data 	<= std_logic_vector(unsigned(i_acc_data) + unsigned(i_recycled_acc_data)); 
--			o_data_valid 		<= '1'; 
--		elsif(i_acc_data_valid = '1' and i_recycled_acc_data_en = '0') then 
--			o_acc_filter_data 	<= i_acc_data; 
--			o_data_valid 		<= '1'; 
--		end if;   
--	
--	end process;   


	
--	filter_counting: process(i_clk, i_reset_n) is 
--	begin  	 
--		if(i_reset_n = '0') then 
--			filter_iteration <= (others => '0'); 
--			filter_counter <= (others => '0'); 
--			hold_flag <= '0'; 
--			
--			
--		elsif(filter_counter = unsigned(i_num_filters)) then  
--			if(filter_iteration = unsigned(i_num_iterations)) then 
--
--				if(i_hold_clear = '1') then 
--					hold_flag <= '0'; 
--					filter_iteration <= (others => '0');  
--				else 
--					filter_iteration <= filter_iteration;
--					hold_flag <= '1';  
--				end if;
--
--			else 
--				filter_iteration <= filter_iteration + 1;
--			end if; 
--			
--		else 
--			filter_counter <= filter_counter + 1; 
--			filter_iteration <= filter_iteration; 
--		end if; 
--		
--		
--		
--		
--	end process; 
--	
	
end arch;
