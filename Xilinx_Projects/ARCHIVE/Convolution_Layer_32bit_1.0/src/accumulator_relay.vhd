-------------------------------------------------------------------------------
--
-- Title       : accumulator_relay
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\accumulator_relay.vhd
-- Generated   : Sat Sep 16 21:23:05 2017
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
--{entity {accumulator_relay} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all; 

entity accumulator_relay is	 
	generic(
		g_data_width : integer := 32; 
		g_adder_delay : integer := 11
	); 
	port( 
	i_clk						: in std_logic; 
	i_reset_n 					: in std_logic; 
	
	i_acc_fifo_data 			: in std_logic_vector(g_data_width-1 downto 0);  
	i_acc_fifo_valid 			: in std_logic;  
	i_acc_fifo_empty			: in std_logic; 
	i_acc_fifo_almost_empty		: in std_logic; 
	i_normalizer_ready			: in std_logic;  
	i_num_filters				: in std_logic_vector(15 downto 0); 
	i_num_iterations			: in std_logic_vector(7 downto 0); 
	i_filter_iterations			: in std_logic_vector(15 downto 0); 
	i_filters_in_set			: in std_logic_vector(15 downto 0);  
	i_output_volume_size		: in std_logic_vector(7 downto 0); 	
	i_more_dsps_needed			: in std_logic; 
	
	i_prev_fifo_data 		    : in std_logic_vector(g_data_width-1 downto 0); 
	i_prev_fifo_valid 			: in std_logic; 
	i_prev_fifo_empty 			: in std_logic; 
	i_prev_fifo_almost_empty    : in std_logic; 

	i_bias_fifo_data			: in std_logic_vector(g_data_width-1 downto 0); 
	i_bias_fifo_valid 			: in std_logic; 
	i_bias_fifo_full			: in std_logic; 
	i_bias_fifo_almost_full		: in std_logic; 
	i_bias_fifo_empty			: in std_logic; 
	i_bias_fifo_almost_empty	: in std_logic; 
	i_bias_values_loaded		: in std_logic; 
	
	i_affine_en					: in std_logic; 
	
	o_acc_fifo_rd_en			: out std_logic; 
	o_prev_fifo_rd_en			: out std_logic; 
	o_bias_fifo_rd_en			: out std_logic; 
	o_bias_fifo_data_return		: out std_logic_vector(g_data_width-1 downto 0); 
	o_bias_fifo_data_return_en  : out std_logic; 
	o_bias_fifo_return_wr_en	: out std_logic; 

	o_conv_volume_out 			: out std_logic_vector(g_data_width-1 downto 0);
	o_conv_data_valid			: out std_logic; 
	
	o_row_complete				: out std_logic; 
	o_volume_complete			: out std_logic; 
	o_iteration_complete		: out std_logic; 
	o_fsm_state 				: out std_logic_vector(3 downto 0)
	
	); 
end accumulator_relay;

--}} End of automatically maintained section

architecture arch of accumulator_relay is

type relay_state is (IDLE, ALL_CHANNELS, BIAS_ADDER_HOLD, MORE_CHANNELS, PREV_ADDER_HOLD); 
signal current_state 			: relay_state; 
signal next_state 				: relay_state;   

signal filter_counter 			: unsigned(15 downto 0); 
signal output_pixel_counter		: unsigned(7 downto 0);
signal volume_row_counter		: unsigned(7 downto 0); 
signal adder_counter			: unsigned(7 downto 0); 

signal addend 					: std_logic_vector(g_data_width-1 downto 0); 
signal augend   				: std_logic_vector(g_data_width-1 downto 0); 
signal sum_result 				: std_logic_vector(g_data_width-1 downto 0); 

signal acc_fifo_rd_en			: std_logic; 
signal prev_fifo_rd_en			: std_logic; 
signal bias_fifo_rd_en			: std_logic; 

	
signal conv_volume_out 			: std_logic_vector(g_data_width-1 downto 0);
signal conv_data_valid			: std_logic; 

signal first_channel_set_complete : std_logic; 

signal volume_data 				: std_logic_vector(g_data_width-1 downto 0); 
signal bias_data				: std_logic_vector(g_data_width-1 downto 0); 
signal prev_data				: std_logic_vector(g_data_width-1 downto 0); 

signal bias_fifo_data_return 	: std_logic_vector(g_data_width-1 downto 0); 
signal bias_fifo_return_wr_en 	: std_logic; 

signal row_complete				: std_logic; 
signal volume_complete			: std_logic; 
signal iteration_complete 		: std_logic; 
signal iteration_counter		: unsigned(7 downto 0); 
signal bias_read : std_logic; 
signal prev_read : std_logic; 
signal filter_iteration_counter	: unsigned(15 downto 0); 
signal affine_en				: std_logic; 
signal fsm_state				: std_logic_vector(3 downto 0); 


component FP_ADDER_8E_24F IS
  PORT (
    a 		: IN STD_LOGIC_VECTOR(g_data_width-1 DOWNTO 0);
    b 		: IN STD_LOGIC_VECTOR(g_data_width-1 DOWNTO 0);
    clk 	: IN STD_LOGIC;
    result 	: OUT STD_LOGIC_VECTOR(g_data_width-1 DOWNTO 0)
  );
END component;

begin 	
	 
	o_acc_fifo_rd_en		<= acc_fifo_rd_en; 
	o_prev_fifo_rd_en		<= prev_fifo_rd_en; 
	o_bias_fifo_rd_en		<= bias_fifo_rd_en; 
	o_conv_volume_out 		<= conv_volume_out;
	o_conv_data_valid	    <= conv_data_valid;   

	o_bias_fifo_data_return_en <= '1' when i_bias_values_loaded = '1' else 
								  '0'; 
	o_bias_fifo_data_return <= bias_fifo_data_return;
	o_bias_fifo_return_wr_en <= bias_fifo_return_wr_en; 
								  
	bias_fifo_data_return <= i_bias_fifo_data; 
	
	o_row_complete <= row_complete; 
	o_iteration_complete <= iteration_complete; 
	o_volume_complete <= volume_complete; 
	
	o_fsm_state <= fsm_state; 
	
	
	prev_bias_adder: FP_ADDER_8E_24F 
	port map(
		a 		=> addend,  
		b 		=> augend, 
		clk 	=> i_clk, 
		result 	=> sum_result
	);

	
	state_transitions: process(i_clk, i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process;   
	
	
	next_state_comb: process(current_state, prev_read, affine_en, i_filters_in_set,conv_data_valid, bias_read, output_pixel_counter,filter_iteration_counter, i_filter_iterations, i_num_iterations, i_output_volume_size, i_num_filters, i_more_dsps_needed, i_acc_fifo_empty, i_bias_fifo_empty, i_prev_fifo_empty, adder_counter,first_channel_set_complete, iteration_counter, filter_counter, volume_row_counter) is 
	begin 
		acc_fifo_rd_en 			<= '0'; 
		bias_fifo_rd_en 		<= '0'; 
		prev_fifo_rd_en 		<= '0'; 
		bias_fifo_return_wr_en 	<= '0'; 
		--conv_data_valid <= '0';
		fsm_state 				<= "0000"; 

		
		case current_state is 
			when IDLE => 
				fsm_state 				<= "0000"; 
				if(i_acc_fifo_empty = '0' and i_bias_fifo_empty = '0') then 
					next_state <= ALL_CHANNELS; 
				else 
					next_state <= IDLE; 
				end if; 
				
			when ALL_CHANNELS =>
				fsm_state 				<= "0001"; 
				if(i_acc_fifo_empty = '0') then 
					acc_fifo_rd_en <= '1';
					next_state <= BIAS_ADDER_HOLD; 
					
					if(i_bias_fifo_empty = '0' and output_pixel_counter = 0 and bias_read = '0') then 
						bias_fifo_rd_en <= '1';
						bias_fifo_return_wr_en <= '1'; 
					else 
						bias_fifo_rd_en <= '0';
						bias_fifo_return_wr_en <= '0'; 
					end if; 
					
				else 
					acc_fifo_rd_en <= '0'; 
					bias_fifo_rd_en <= '0'; 
					bias_fifo_return_wr_en <= '0'; 
					next_state <= ALL_CHANNELS; 
				end if; 

			when BIAS_ADDER_HOLD => 
				fsm_state 				<= "0010"; 
				if(unsigned(adder_counter) <= g_adder_delay) then 
					next_state <= BIAS_ADDER_HOLD; 
				elsif(i_more_dsps_needed = '0') then 
					--conv_data_valid <= '1'; 
					next_state <= ALL_CHANNELS; 
				elsif(i_more_dsps_needed = '1' and ((output_pixel_counter < unsigned(i_output_volume_size)-1 or filter_counter < unsigned(i_num_filters)-1) or volume_row_counter < unsigned(i_output_volume_size)-1) and affine_en = '0') then 
					--conv_data_valid <= '1';
					next_state <= ALL_CHANNELS; 
				elsif(i_more_dsps_needed = '1' and ((output_pixel_counter = unsigned(i_output_volume_size)-1 or filter_counter = unsigned(i_num_filters)-1) or volume_row_counter = unsigned(i_output_volume_size)-1) and affine_en = '0') then  -- first_channel_set_complete = '1') then 
					next_state <= MORE_CHANNELS; 
				elsif(i_more_dsps_needed = '1' and ((filter_counter < unsigned(i_filters_in_set)-1 or filter_iteration_counter < unsigned(i_filter_iterations)-1)) and affine_en = '1' and iteration_counter = 0) then 
					--conv_data_valid <= '1';
					next_state <= ALL_CHANNELS; 
				elsif(i_more_dsps_needed = '1' and ((filter_counter = unsigned(i_filters_in_set)-1 and filter_iteration_counter = unsigned(i_filter_iterations)-1)) and affine_en = '1') then  -- first_channel_set_complete = '1') then 
					next_state <= MORE_CHANNELS; 
				else 
					next_state <= BIAS_ADDER_HOLD; 
				end if; 
				
			
			when MORE_CHANNELS => 
				fsm_state 				<= "0011"; 
				if(i_acc_fifo_empty = '0') then 
					if(i_prev_fifo_empty = '0' and prev_read = '0') then 
						prev_fifo_rd_en <= '1';
						next_state <= PREV_ADDER_HOLD; 
						acc_fifo_rd_en <= '1';
					else 
						prev_fifo_rd_en <= '0';
						next_state <= MORE_CHANNELS; 
						acc_fifo_rd_en <= '0';
					end if;
								
				else 
					acc_fifo_rd_en <= '0'; 
					prev_fifo_rd_en <= '0'; 
					next_state <= MORE_CHANNELS; 
				end if; 
				
				
			when PREV_ADDER_HOLD => 
				fsm_state 				<= "0100"; 
				next_state <= PREV_ADDER_HOLD; 
				if(unsigned(adder_counter) <= g_adder_delay) then 
					next_state <= PREV_ADDER_HOLD; 
				else
					next_state <= MORE_CHANNELS; 
					if((output_pixel_counter >= unsigned(i_output_volume_size)-1)) then
						if(filter_counter >= unsigned(i_num_filters)-1 and affine_en = '0') then 					
							if(volume_row_counter >= unsigned(i_output_volume_size)-1) then 
								if(iteration_counter < unsigned(i_num_iterations)-1) then 
									next_state <= MORE_CHANNELS; 
								else 	
									next_state <= IDLE; 
								end if; 

							end if;
							
						elsif(filter_counter >= unsigned(i_filters_in_set)-1 and affine_en = '1') then 												
							if(filter_iteration_counter >= unsigned(i_filter_iterations)-1)then 						
								if(iteration_counter < unsigned(i_num_iterations)-1) then 
									next_state <= MORE_CHANNELS;  
								else 	
									next_state <= IDLE; 
								end if; 
							end if; 
						end if; 
					end if; 
				end if; 

			when others =>
				fsm_state 				<= "0101"; 
				next_state <= IDLE; 
			

		end case; 
	end process; 
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 		  
		if(i_reset_n = '0') then   
			conv_volume_out 			<= (others => '0'); 
			conv_data_valid				<= '0';  
			output_pixel_counter 		<= (others => '0');   
			filter_counter 				<= (others => '0'); 	
			adder_counter				<= (others => '0'); 
			volume_row_counter			<= (others => '0'); 
			volume_data 				<= (others => '0'); 
			bias_data 					<= (others => '0'); 
			prev_data 					<= (others => '0'); 
			addend						<= (others => '0'); 
			augend						<= (others => '0'); 
			first_channel_set_complete 	<= '0'; 
			row_complete 				<= '0'; 
			volume_complete				<= '0'; 
			iteration_complete			<= '0'; 
			bias_read <= '0'; 
			iteration_counter 			<= (others => '0'); 
			filter_iteration_counter    <= (others => '0'); 
			affine_en					<= '0'; 
			prev_read <= '0'; 
			
			
		elsif(rising_edge(i_clk)) then	  
			-- conv_volume_out 			<= conv_volume_out; 
			-- conv_data_valid				<= conv_data_valid;    
			-- output_pixel_counter 		<= output_pixel_counter;   
			-- filter_counter 				<= filter_counter; 
			-- adder_counter				<= adder_counter;
			-- volume_row_counter			<= volume_row_counter; 
			-- volume_data 				<= volume_data; 
			-- bias_data 					<= bias_data; 
			-- prev_data 					<= prev_data; 
			-- augend 						<= augend; 
			-- addend 						<= addend; 
			-- first_channel_set_complete 	<= first_channel_set_complete; 
			row_complete 				<= '0'; 
			volume_complete				<= '0'; 
			iteration_complete			<= '0'; 
			-- bias_read 					<= bias_read; 
			-- iteration_counter			<= iteration_counter; 
			-- filter_iteration_counter    <= filter_iteration_counter; 
			-- affine_en 					<= affine_en; 
			
			case current_state is 
				when IDLE => 	
					conv_volume_out 			<= (others => '0'); 
					conv_data_valid				<= '0';   
					output_pixel_counter 		<= (others => '0'); 
					filter_counter 				<= (others => '0'); 
					adder_counter				<= (others => '0'); 
					volume_row_counter			<= (others => '0'); 
					volume_data 				<= (others => '0'); 
					bias_data 					<= (others => '0'); 
					prev_data 					<= (others => '0'); 
					addend						<= (others => '0'); 
					augend						<= (others => '0'); 
					first_channel_set_complete 	<= '0'; 
					row_complete 				<= '0'; 
					volume_complete				<= '0'; 
					iteration_complete			<= '0'; 
					bias_read 					<= '0'; 
					iteration_counter			<= (others => '0'); 
					filter_iteration_counter 	<= (others => '0');
					affine_en 					<= i_affine_en; 
					
				when ALL_CHANNELS => 
					conv_data_valid <= '0'; 
					if(i_acc_fifo_empty = '0') then 
						
						volume_data <= i_acc_fifo_data; 
						addend 		<= i_acc_fifo_data; 
						
						if(i_bias_fifo_empty = '0' and output_pixel_counter = 0 and bias_read = '0') then 
							bias_data <= i_bias_fifo_data; 
							augend 	  <= i_bias_fifo_data; 
							bias_read <= '1'; 
						else 
							bias_data <= bias_data; 
							augend 	  <= i_bias_fifo_data; 
							bias_read <= bias_read; 
						end if; 

					end if;	
					
				
				when BIAS_ADDER_HOLD => 
						
					if(adder_counter <= g_adder_delay) then 
						adder_counter <= adder_counter + 1; 
					else
						adder_counter <= (others => '0'); 
						conv_data_valid <= '1'; 
						conv_volume_out <= sum_result; 
						bias_read <= '0'; 
						
						
						if((output_pixel_counter < unsigned(i_output_volume_size)-1)) then
							output_pixel_counter <= output_pixel_counter + 1; 
						else 
							row_complete <= '1'; 
							output_pixel_counter <= (others => '0'); 
							
							if(filter_counter < unsigned(i_num_filters)-1 and affine_en = '0') then 
								filter_counter <= filter_counter + 1; 
							elsif(filter_counter >= unsigned(i_num_filters)-1 and affine_en = '0') then
								 
								filter_counter <= (others => '0'); 	

								if(volume_row_counter < unsigned(i_output_volume_size)-1) then 
									first_channel_set_complete <= '0'; 
									volume_row_counter <= volume_row_counter + 1; 
								else 
									first_channel_set_complete <= '1'; 
									volume_row_counter <= (others => '0');		

									if(i_more_dsps_needed = '0') then 
										volume_complete <= '1'; 
										iteration_complete <= '1'; 
									else
										volume_complete <= '0'; 
										iteration_complete <= '1'; 
										
										if(iteration_counter < unsigned(i_num_iterations)-1) then 
											volume_complete <= '0'; 
											iteration_counter <= iteration_counter + 1; 
										else 	
											volume_complete <= '1'; 
											iteration_counter <= (others => '0'); 
										end if; 
										
										
									end if; 
								end if; 
								
							elsif(filter_counter < unsigned(i_filters_in_set)-1 and affine_en = '1') then 
								filter_counter <= filter_counter + 1; 
							elsif(filter_counter >= unsigned(i_filters_in_set)-1 and affine_en = '1') then 					
								--row_complete <= '1'; 
								filter_counter <= (others => '0'); 	
								
								if(filter_iteration_counter < unsigned(i_filter_iterations)-1)then 
									filter_iteration_counter <= filter_iteration_counter + 1; 
								else 
									filter_iteration_counter <= (others => '0'); 
									iteration_complete <= '1'; 
									
									if(iteration_counter < unsigned(i_num_iterations)-1) then 
										volume_complete <= '0'; 
										iteration_counter <= iteration_counter + 1; 
									else 	
										volume_complete <= '1'; 
										iteration_counter <= (others => '0'); 
									end if; 
								end if; 
									
								if(volume_row_counter < unsigned(i_output_volume_size)-1) then 
									volume_row_counter <= volume_row_counter + 1; 
								else 
									volume_row_counter <= (others => '0');		

									if(i_more_dsps_needed = '0') then 
										volume_complete <= '1'; 
										iteration_complete <= '1'; 
									else
										volume_complete <= '0'; 
									end if; 
								end if; 
							
							end if; 	
								
						end if; 
					end if; 

				when MORE_CHANNELS => 
					conv_data_valid <= '0'; 
					if(i_acc_fifo_empty = '0') then 
						
						volume_data <= i_acc_fifo_data; 
						addend <= i_acc_fifo_data; 


						if(i_prev_fifo_empty = '0' and prev_read = '0') then 
							prev_data <= i_prev_fifo_data; 
							augend 	  <= i_prev_fifo_data; 
							prev_read <= '1'; 
						else 
							prev_data <= prev_data; 
							augend 	  <= i_prev_fifo_data; 
							prev_read <= prev_read; 
						end if; 
						
					end if;
					
				
				when PREV_ADDER_HOLD => 
					prev_read <= '0'; 			
					if(adder_counter <= g_adder_delay) then 
						adder_counter <= adder_counter + 1; 
					else
						adder_counter <= (others => '0'); 
						conv_data_valid <= '1'; 
						conv_volume_out <= sum_result; 
						
						
						if((output_pixel_counter < unsigned(i_output_volume_size)-1)) then
							output_pixel_counter <= output_pixel_counter + 1; 
						else
							row_complete <= '1';
							output_pixel_counter <= (others => '0'); 							
							
							if(filter_counter < unsigned(i_num_filters)-1 and affine_en = '0') then 
								filter_counter <= filter_counter + 1; 
							elsif(filter_counter >= unsigned(i_num_filters)-1 and affine_en = '0') then 					
								
								filter_counter <= (others => '0'); 	
								if(volume_row_counter < unsigned(i_output_volume_size)-1) then 
									volume_row_counter <= volume_row_counter + 1; 
								else 
									iteration_complete <= '1'; 
									
									if(iteration_counter < unsigned(i_num_iterations)-1) then 
										volume_complete <= '0'; 
										iteration_counter <= iteration_counter + 1; 
									else 	
										volume_complete <= '1'; 
										iteration_counter <= (others => '0'); 
									end if; 

								end if;
							elsif(filter_counter < unsigned(i_filters_in_set)-1 and affine_en = '1') then 
								filter_counter <= filter_counter + 1; 
								
							elsif(filter_counter >= unsigned(i_filters_in_set)-1 and affine_en = '1') then 					
								--row_complete <= '1'; 
								filter_counter <= (others => '0'); 	
								if(filter_iteration_counter < unsigned(i_filter_iterations)-1)then 
									filter_iteration_counter <= filter_iteration_counter + 1; 
								else 
									filter_iteration_counter <= (others => '0'); 
									iteration_complete <= '1'; 
									
									if(iteration_counter < unsigned(i_num_iterations)-1) then 
										volume_complete <= '0'; 
										iteration_counter <= iteration_counter + 1; 
									else 	
										volume_complete <= '1'; 
										iteration_counter <= (others => '0'); 
									end if; 

								end if; 
								
								if(volume_row_counter < unsigned(i_output_volume_size)-1) then 
									volume_row_counter <= volume_row_counter + 1; 
								else 
									volume_row_counter <= (others => '0');	
								end if;
							end if; 
						end if; 
				
					end if; 

				when others =>
					null; 
				
			end case; 
		end if; 

	end process; 
	
	
end arch;
