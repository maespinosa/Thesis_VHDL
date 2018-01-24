-------------------------------------------------------------------------------
--
-- Title       : weights_router
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\weights_router.vhd
-- Generated   : Sat Sep 16 19:33:27 2017
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
--{entity {weights_router} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use ieee.numeric_std.all;

entity weights_router is	  
	port(
	i_clk					: in std_logic; 
	i_reset_n 				: in std_logic;   
	i_enable				: in std_logic; 
	
	i_filter_data 			: in std_logic_vector(15 downto 0); 
	i_num_filters			: in std_logic_vector(11 downto 0); 
	
	o_data_valid			: out std_logic;   
	o_recycle_filter_en		: out std_logic; 
	o_recycle_filter_data	: out std_logic_vector(15 downto 0);
	o_weights_mult			: out std_logic_vector(15 downto 0);
	o_filters_loaded			: out std_logic; 
	o_filters_processed		: out std_logic; 
	
	i_fifo_data_valid 		: in std_logic; 
	o_rd_en 				: out std_logic; 
	i_empty					: in std_logic; 
	i_almost_empty 			: in std_logic; 
	i_prog_empty			: in std_logic; 
	o_prog_empty_thresh 	: out std_logic_vector(9 downto 0); 
	
	i_prog_full				: in std_logic; 
	i_weight_filter_size	: in std_logic_vector(3 downto 0); 
	i_volume_row_size		: in std_logic_vector(9 downto 0); 
	i_convolution_en		: in std_logic; 
	i_clear_weights			: in std_logic; 
	o_reset_weight_fifo_n	: out std_logic; 
	
	i_volume_ready 			: in std_logic; 
	i_conv_complete			: in std_logic
	
	); 
end weights_router;

--}} End of automatically maintained section

architecture arch of weights_router is	 

type router_state is (IDLE, PRIMING, LOAD_KERNEL, PROCESSING); 
signal current_state 	: router_state;
signal next_state 		: router_state;

signal filter_element_counter 	: unsigned(3 downto 0); 
signal row_element_counter 		: unsigned(7 downto 0);

type array_type_11x16bit is array(10 downto 0) of std_logic_vector(15 downto 0); 
signal filter_row_shift_reg	: array_type_11x16bit; 	 

signal data_valid 			: std_logic; 
signal recycle_filter_en	: std_logic; 
signal recycle_filter_data	: std_logic_vector(15 downto 0); 
signal weights_mult			: std_logic_vector(15 downto 0); 
signal filters_loaded		: std_logic; 
signal filters_processed	: std_logic; 
signal rd_en				: std_logic; 
--signal prog_empty_thresh	: std_logic_vector(9 downto 0); 
signal reset_weight_fifo_n  : std_logic; 	 
signal filter_number		: unsigned(11 downto 0); 



begin
	
	o_data_valid			<= data_valid;  
	o_recycle_filter_en		<= recycle_filter_en; 
	o_recycle_filter_data	<= recycle_filter_data; 
	o_weights_mult			<= weights_mult;
	o_filters_loaded	    <= filters_loaded; 
	o_filters_processed		<= filters_processed; 
	o_rd_en					<= rd_en; 
	o_prog_empty_thresh		<= "0000001111";  
	o_reset_weight_fifo_n	<= reset_weight_fifo_n;
	
	
	state_transitions: process(i_clk,i_reset_n) is 
	begin 	   	
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if;
	end process; 
	
	next_state_comb: process(i_empty, current_state, filter_element_counter,i_weight_filter_size,i_convolution_en,row_element_counter,i_volume_row_size, i_volume_ready) is 
	begin 
		rd_en 		<= '0'; 	
		recycle_filter_en <= '0'; 
		
		
		case current_state is 
			when IDLE =>   
				filters_loaded <= '0'; 	
				rd_en <= '0'; 
				if(i_empty = '0' and i_convolution_en = '1') then 
					next_state <= PRIMING; 
				else 
					next_state <= IDLE; 
				end if; 
			
			
			when PRIMING =>
				filters_loaded <= '0'; 
				if(i_almost_empty = '0') then 	
					next_state <= LOAD_KERNEL; 
				else 
					next_state <= PRIMING; 
				end if; 						 
			
				
			when LOAD_KERNEL =>  
			
					if(filter_element_counter = unsigned(i_weight_filter_size) and i_convolution_en = '1') then 	 
						rd_en 		<= '0';  
						recycle_filter_en <= '0'; 
						filters_loaded <= '1'; 
						next_state 	<= PROCESSING; 	 
					else				
						rd_en 		<= '1';  
						recycle_filter_en <= '1'; 
						next_state 	<= LOAD_KERNEL; 
					end if;	
					
					
			when PROCESSING => 	 
				filters_loaded <= not(i_conv_complete); 
 
				if(i_clear_weights = '1') then 
					--data_valid <= '0'; 
					next_state <= IDLE; 
				else  	 
					if(i_conv_complete = '1') then 
						next_state <= IDLE; 
					else 
						next_state <= PROCESSING;
					end if; 

				end if; 
			when others => 
				next_state <= IDLE; 

		end case; 
		
		
		
	end process; 
	
	
	
	sequential_logic: process(i_clk,i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then   
			filter_element_counter 	<= (others => '0');	
			row_element_counter 	<= (others => '0');   
			--filters_loaded 			<= '0'; 	
			filter_row_shift_reg 	<= (others => (others => '0')); 
			reset_weight_fifo_n 	<= '0';  
			weights_mult 			<= (others => '0');   
			filters_processed 		<= '0'; 			
			filter_number 			<= (others => '0');    
			recycle_filter_data		<= (others => '0');   
			data_valid 				<= '0'; 
			
		elsif(rising_edge(i_clk)) then 
			filter_element_counter 	<= filter_element_counter; 
			row_element_counter 	<= row_element_counter;  
			--filters_loaded 			<= filters_loaded; 
			filter_row_shift_reg 	<= filter_row_shift_reg; 
			reset_weight_fifo_n 	<= reset_weight_fifo_n;  
			weights_mult 			<= weights_mult;   
			filters_processed 		<= filters_processed; 			
			filter_number 			<= filter_number;  
			recycle_filter_data		<= recycle_filter_data;	  
			data_valid 				<= data_valid; 
			
			case current_state is 
				when IDLE => 
					data_valid <= '0'; 
					
				when PRIMING => 

					data_valid <= '0'; 
					
				when LOAD_KERNEL => 
					data_valid <= '0'; 
				
					if(filter_element_counter >= unsigned(i_weight_filter_size)) then 	 
						filter_element_counter <= x"1";
						--filters_loaded <= '1'; 
					else
						if(i_fifo_data_valid = '1') then
							filter_element_counter <= filter_element_counter + 1; 
							filter_row_shift_reg <= filter_row_shift_reg(9 downto 0) & i_filter_data;  	
							recycle_filter_data <= i_filter_data; 
						else 
							filter_element_counter <= filter_element_counter; 
							filter_row_shift_reg <= filter_row_shift_reg;  	 
							recycle_filter_data <= recycle_filter_data; 
						end if; 
					end if; 
					
				when PROCESSING =>	
					if(i_clear_weights = '1') then 	  	 
						reset_weight_fifo_n <= '1';	
						data_valid <= '0'; 
	
					else
						--filters_loaded <= not(i_conv_complete); 
						
						if(filter_element_counter > unsigned(i_weight_filter_size) and i_volume_ready = '0') then 
							if(i_conv_complete = '1') then 	 
								filter_element_counter <= (others => '0'); 
							else 
								filter_element_counter <= x"1"; 
							end if;  
							data_valid <= '0'; 
							weights_mult <= (others => '0'); 
						elsif(filter_element_counter <= unsigned(i_weight_filter_size) and i_volume_ready = '1') then  
							filter_element_counter <= filter_element_counter + 1; 
							data_valid <= '1'; 
							weights_mult <= filter_row_shift_reg(to_integer(filter_element_counter)-1);	
						else 
							if(i_conv_complete = '1') then 	 
								filter_element_counter <= (others => '0'); 
							else 
								filter_element_counter <= filter_element_counter; 
							end if; 
							
							data_valid <= '0'; 
							weights_mult <= (others => '0');	
						end if;    
						
					end if; 
					
				when others => 	
					filter_element_counter 	<= (others => '0');	
					row_element_counter 	<= (others => '0');   
					--filters_loaded 			<= '0'; 	
					filter_row_shift_reg 	<= (others => (others => '0')); 
					reset_weight_fifo_n 	<= '0';  
					weights_mult 			<= (others => '0');   
					filters_processed 		<= '0'; 			
					filter_number 			<= (others => '0'); 
					recycle_filter_data		<= (others => '0');
					
				
			end case; 	 
		end if; 

	end process; 
	
	



end arch;
