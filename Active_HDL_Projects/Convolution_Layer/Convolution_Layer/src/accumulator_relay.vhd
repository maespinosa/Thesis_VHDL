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
		g_data_width : integer := 16
	); 
	port( 
	i_clk					: in std_logic; 
	i_reset_n 				: in std_logic; 
	
	i_acc_filter_data 		: in std_logic_vector(g_data_width-1 downto 0);  
	i_data_valid 			: in std_logic;  
	i_empty					: in std_logic; 
	i_almost_empty			: in std_logic; 
	i_prog_empty			: in std_logic; 
	i_prog_full				: in std_logic; 
	i_send					: in std_logic; 
	i_normalizer_ready		: in std_logic;  
	i_recycle_en			: in std_logic;   
	i_num_filters				: in std_logic_vector(11 downto 0); 
	i_num_iterations			: in std_logic_vector(7 downto 0); 
	i_output_volume_size		: in std_logic_vector(7 downto 0); 	
	
	
	o_recycled_acc_data 	: out std_logic_vector(g_data_width-1 downto 0); 
	o_recycled_acc_data_en 	: out std_logic;		  
	o_rd_en					: out std_logic; 
	o_prog_emtpy_thresh 	: out std_logic_vector(9 downto 0); 
	o_conv_volume_out 		: out std_logic_vector(g_data_width-1 downto 0);
	o_conv_data_valid		: out std_logic; 
	o_send_done			: out std_logic 
	
	); 
end accumulator_relay;

--}} End of automatically maintained section

architecture arch of accumulator_relay is

type relay_state is (IDLE, RECYCLE, SEND); --FILL, ITERATE, EMPTY); 
signal current_state 		: relay_state; 
signal next_state 			: relay_state;   

signal recycled_acc_data 	: std_logic_vector(g_data_width-1 downto 0); 
signal recycled_acc_data_en : std_logic;		  
	
signal rd_en				: std_logic; 
signal prog_emtpy_thresh 	: std_logic_vector(9 downto 0); 
	
signal conv_volume_out 		: std_logic_vector(g_data_width-1 downto 0);
signal conv_data_valid		: std_logic; 

signal hold_clear			: std_logic; 

signal filter_counter 				: unsigned(11 downto 0); 
signal volume_pixel_counter			: unsigned(7 downto 0);
signal filter_iterations 			: unsigned(7 downto 0);   

signal send_done			: std_logic; 


begin 	
	
	o_recycled_acc_data 	<= recycled_acc_data;  
	o_recycled_acc_data_en  <= recycled_acc_data_en;   
	o_rd_en			  		<= rd_en; 
	o_prog_emtpy_thresh 	<= (others => '0'); 
	o_conv_volume_out 		<= conv_volume_out;
	o_conv_data_valid	    <= conv_data_valid;   
	--o_hold_clear			<= hold_clear;	
	o_send_done				<= send_done; 
	
	prog_emtpy_thresh <= (others => '0'); 


	
	state_transitions: process(i_clk, i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if; 
	end process;   
	
	
	next_state_comb: process(all) is 
	begin 
		rd_en 					<= '0';  
		send_done 				<= '0';
		
		case current_state is 
			when IDLE => 
				rd_en <= '0';
				send_done 			<= '0';
				if(i_empty = '0' and i_recycle_en = '1' and i_send = '0') then 	
					next_state <= RECYCLE; 
				elsif(i_empty = '0' and i_recycle_en = '0' and i_send = '1') then 
					next_state <= SEND; 
				else  
					next_state <= IDLE; 	
			 	end if;   

			when RECYCLE =>
				rd_en 		<= '1';  
				send_done 	<= '0';
				next_state 	<= IDLE; 
				
			when SEND =>   
				rd_en 		<= '1'; 
				send_done 	<= '0';
				if(filter_counter < unsigned(i_num_filters)) then  
					next_state <= SEND; 
				else 
					next_state <= IDLE; 
					send_done 			<= '1';
				end if;    

			when others => 	
				next_state <= IDLE; 
			

		end case; 
	end process; 
	
	sequential_logic: process(i_clk, i_reset_n) is 
	begin 		  
		if(i_reset_n = '0') then   
			
			recycled_acc_data_en 	<= '0';
			recycled_acc_data 		<= (others => '0');  
			conv_volume_out 		<= (others => '0'); 
			conv_data_valid			<= '0';  
			volume_pixel_counter 	<= (others => '0');   
			filter_counter 			<= (others => '0'); 	
			filter_iterations		<= (others => '0'); 	
			
		elsif(rising_edge(i_clk)) then	  
			
			recycled_acc_data_en 	<= recycled_acc_data_en;
			recycled_acc_data 		<= recycled_acc_data; 	
			conv_volume_out 		<= conv_volume_out; 
			conv_data_valid			<= conv_data_valid;    
			volume_pixel_counter 	<= volume_pixel_counter;   
			filter_counter 			<= filter_counter; 
			filter_iterations		<= filter_iterations; 
			
			
			case current_state is 
				when IDLE => 	
					recycled_acc_data_en   	<= '0'; 
					recycled_acc_data 	 	<= (others => '0'); 
					conv_volume_out 		<= (others => '0'); 
					conv_data_valid			<= '0';   
				
				
				when RECYCLE => 
					recycled_acc_data_en   	<= '1'; 
					recycled_acc_data 	 	<= i_acc_filter_data; 
					conv_volume_out 		<= (others => '0'); 
					conv_data_valid			<= '0';   
					
				when SEND =>  
				
					if(filter_counter < unsigned(i_num_filters) and i_data_valid = '1') then   
						conv_volume_out 	<= i_acc_filter_data;
						conv_data_valid		<= '1';  
						
						if(volume_pixel_counter < unsigned(i_output_volume_size) and i_data_valid = '1') then 
							volume_pixel_counter <= volume_pixel_counter + 1; 	
							filter_counter <= filter_counter; 
						else 
							volume_pixel_counter <= (others => '0');   
							filter_counter <= filter_counter + 1; 
						end if;	 
						
						
					elsif(filter_counter < unsigned(i_num_filters) and i_data_valid = '0') then  
						volume_pixel_counter <= volume_pixel_counter; 	
						filter_counter <= filter_counter;  
						
						conv_volume_out 	<= (others => '0');
						conv_data_valid		<= '0';  

					else 
						volume_pixel_counter 	<= (others => '0');   
						filter_counter 			<= (others => '0'); 	  
						conv_volume_out 	<= (others => '0');
						conv_data_valid		<= '0'; 
						 
						
						if(unsigned(i_num_iterations) > 1) then 
							filter_iterations <= filter_iterations + 1;  
						else 
							filter_iterations <= filter_iterations; 
						end if; 

					end if;    

				when others =>
					null; 
				
			end case; 
		end if; 

	end process; 
	
		
		
--	
--	
--	next_state_comb: process(current_state,i_empty,i_prog_full,i_send,i_data_valid,i_empty,i_normalizer_ready) is 
--	begin 
--		--hold_clear <= '0';  
--		recycled_acc_data_en 	<= '0';
--		recycled_acc_data 		<= (others => '0'); 
--		rd_en 					<= '0'; 
--		conv_data_valid 		<= '0'; 
--		conv_volume_out			<= (others => '0'); 
--					
--		
--		case current_state is 
--			when IDLE =>  
--				--hold_clear <= '0'; 
--				if(i_empty = '0') then 
--					next_state <= FILL; 
--				else 
--					next_state <= IDLE; 
--				end if; 
--			
--			when FILL =>  
--				--hold_clear <= '0'; 
--				if(i_prog_full = '1') then 
--					next_state <= ITERATE; 
--				else 
--					next_state 				<= FILL; 
--				end if; 
--			
--			when ITERATE =>
--				--hold_clear <= '0'; 
--				if(i_send = '1') then 
--					next_state 					<= EMPTY; 
--					rd_en 					<= '0'; 
--				else   
--					next_state 					<= ITERATE; 
--					rd_en 					<= '1'; 			
--					
--					if(i_data_valid = '1') then   
--						recycled_acc_data_en 	<= '1'; 
--						recycled_acc_data 		<= i_acc_filter_data; 
--					else 
--						recycled_acc_data_en 	<= '0';
--						recycled_acc_data 		<= (others => '0'); 
--					end if;
--				end if; 
--				
--			when EMPTY => 	 
--				--hold_clear <= '0'; 
--				recycled_acc_data_en 	<= '0'; 
--				recycled_acc_data 	<= (others => '0'); 
--				rd_en <= '0'; 
--				
--				if(i_empty = '1') then 
--					--hold_clear <= '1'; 
--					recycled_acc_data_en 	<= '0'; 
--					recycled_acc_data 	<= (others => '0');  
--					rd_en <= '0'; 
--					next_state <= IDLE; 
--				elsif(i_normalizer_ready = '1' ) then 	
--					rd_en <= '1'; 
--					if(i_data_valid = '1') then 
--						conv_data_valid <= '1'; 
--						conv_volume_out <= i_acc_filter_data;   
--					else 
--						conv_data_valid <= '0'; 
--						conv_volume_out <= (others => '0'); 
--					end if;
--					next_state <= EMPTY; 
--				else
--					conv_data_valid <= '0'; 
--					rd_en <= '0'; 
--					conv_volume_out <= (others => '0'); 
--					next_state <= IDLE; 
--					
--				end if; 
--				
--
--			when others => 	  
--				next_state <= IDLE; 
--			
--			
--		end case; 	
--	end process; 
--		
--
--	

	
	
	
	
end arch;
