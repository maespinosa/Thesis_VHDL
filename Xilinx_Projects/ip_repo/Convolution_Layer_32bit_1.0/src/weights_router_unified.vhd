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
use ieee.std_logic_misc.all;

library xil_defaultlib; 
use xil_defaultlib.types_pkg.all; 

entity weights_router_unified is	
	generic(
		g_mult_delay : integer := 8; 
		g_data_width : integer := 32; 
		g_dsps_used : integer := 33
	); 
	port(
	i_clk					: in std_logic; 
	i_reset_n 				: in std_logic;   
	i_enable				: in std_logic; 
	
	i_filter_data 			: in array_type_varx32bit(g_dsps_used-1 downto 0); 
	i_num_filters			: in std_logic_vector(11 downto 0); 
	
	o_data_valid			: out std_logic_vector(g_dsps_used-1 downto 0);
	o_recycle_filter_en		: out std_logic;
	o_recycle_filter_data	: out array_type_varx32bit(g_dsps_used-1 downto 0); 
	o_weights_mult			: out array_type_varx32bit(g_dsps_used-1 downto 0); 
	o_filters_loaded		: out std_logic;
	
	i_fifo_data_valid 		: in std_logic_vector(g_dsps_used-1 downto 0); 
	o_rd_en 				: out std_logic;
	i_empty					: in std_logic_vector(g_dsps_used-1 downto 0);
	i_almost_empty 			: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	i_weight_filter_size	: in std_logic_vector(3 downto 0); 
	i_convolution_en		: in std_logic; 
	i_clear_weights			: in std_logic; 
	o_reset_weight_fifo_n	: out std_logic; 
	
	i_volume_ready 			: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_conv_complete			: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_affine_complete		: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_acc_ready				: in std_logic; 
	i_affine_en 			: in std_logic; 
	o_weight_router_ready	: out std_logic
	
	); 
end weights_router_unified;



architecture arch of weights_router_unified is	 

type router_state is (IDLE, PRIMING, LOAD_KERNEL, PROCESSING, ACC_HOLD, EMPTY_WEIGHTS); 
signal current_state 	: router_state;
signal next_state 		: router_state;

signal filter_element_counter 	: unsigned(3 downto 0); 

--type array_type_11x16bit is array(10 downto 0) of std_logic_vector(31 downto 0); 
type array_type_dspsx32bit is array(g_dsps_used-1 downto 0) of std_logic_vector(31 downto 0); 

type array_type_11x32bit is array(10 downto 0) of std_logic_vector(31 downto 0); 
type array_type_dspsx11x32bit is array(g_dsps_used-1 downto 0) of array_type_11x32bit; 
signal filter_row_shift_reg	: array_type_dspsx11x32bit; --array_type_11x16bit; 	 

signal data_valid 			: std_logic; --std_logic_vector(g_dsps_used-1 downto 0); 
signal recycle_filter_en	: std_logic; --std_logic_vector(g_dsps_used-1 downto 0); 
signal recycle_filter_data	: array_type_varx32bit(g_dsps_used-1 downto 0);--std_logic_vector(31 downto 0); 
signal weights_mult			: array_type_varx32bit(g_dsps_used-1 downto 0); --std_logic_vector(31 downto 0); 
signal filters_loaded		: std_logic; --std_logic_vector(g_dsps_used-1 downto 0); 
signal rd_en				: std_logic; --std_logic_vector(g_dsps_used-1 downto 0); 
signal reset_weight_fifo_n  : std_logic; 	 

signal delay_shift_register : std_logic_vector(g_mult_delay-1 downto 0);
signal weight_router_ready  : std_logic; --std_logic_vector(g_dsps_used-1 downto 0); 

begin
	
	o_data_valid			<= (others => delay_shift_register(g_mult_delay-1)); --data_valid;  
	
	o_recycle_filter_en		<= recycle_filter_en; 
	o_recycle_filter_data	<= recycle_filter_data; 
	o_weights_mult			<= weights_mult;
	o_filters_loaded	    <= filters_loaded; 
	o_rd_en					<= rd_en; 
	o_reset_weight_fifo_n	<= reset_weight_fifo_n;		
	o_weight_router_ready   <= weight_router_ready; 
	
	delay_unit : process(i_clk, i_reset_n) is
	begin
		if(i_reset_n = '0') then
			delay_shift_register <= (others => '0');
		elsif(rising_edge(i_clk)) then 
			delay_shift_register <= delay_shift_register(g_mult_delay-2 downto 0) & data_valid; 
		end if; 
		
	end process;  
	
	
	state_transitions: process(i_clk,i_reset_n) is 
	begin 	   	
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
		end if;
	end process; 
	
	next_state_comb: process(i_clear_weights,i_empty, i_almost_empty,current_state,i_conv_complete,i_affine_complete,filter_element_counter,i_weight_filter_size,i_convolution_en,i_affine_en,i_volume_ready, i_acc_ready) is 
	--next_state_comb: process(all) is
	begin 
		rd_en 		<= '0'; 	
		weight_router_ready <= '0';
		
		
		case current_state is 
			when IDLE =>   
				filters_loaded <= '0'; 	
				rd_en <= '0'; 
				weight_router_ready <= '1'; 
				if(i_clear_weights = '1') then 
					next_state <= EMPTY_WEIGHTS; 
				elsif(or_reduce(i_empty) = '0' and (i_convolution_en = '1' or i_affine_en = '1') and i_acc_ready = '1') then 
					next_state <= PRIMING; 
				else 
					next_state <= IDLE; 
				end if; 
			
			
			when PRIMING =>
				filters_loaded <= '0'; 
				if(or_reduce(i_almost_empty) = '0') then 	
					next_state <= LOAD_KERNEL; 
				else 
					next_state <= PRIMING; 
				end if; 						 
			
				
			when LOAD_KERNEL =>  
			
					if(filter_element_counter >= unsigned(i_weight_filter_size) and (i_convolution_en = '1' or i_affine_en = '1')) then 	 
						rd_en 		<= '0';  
						filters_loaded <= '1'; 
						next_state 	<= PROCESSING; 	 
					else				
						rd_en 		<= '1';  
						next_state 	<= LOAD_KERNEL; 
					end if;	
					
					
			when PROCESSING => 	
				if(i_affine_en = '0') then 
					filters_loaded <= not(and_reduce(i_conv_complete));  
				else 
					filters_loaded <= not(and_reduce(i_affine_complete)); 
				end if; 
 
				if(i_clear_weights = '1') then 
					next_state <= IDLE; 
				else  	 
					if(and_reduce(i_conv_complete) = '1' or and_reduce(i_affine_complete) = '1') then 
						next_state <= IDLE; 
					else 
						next_state <= PROCESSING;
					end if; 

				end if; 
				
			when EMPTY_WEIGHTS => 
				weight_router_ready <= '1'; 
				if(i_clear_weights = '1') then 
					next_state <= EMPTY_WEIGHTS; 
				else 
					next_state <= IDLE; 
				end if; 
				
			when others => 
				next_state <= IDLE; 

		end case; 

	end process; 
	
	
	
	sequential_logic: process(i_clk,i_reset_n) is 
	begin 	
		if(i_reset_n = '0') then   
			filter_element_counter 	<= (others => '0');		
			filter_row_shift_reg 	<= (others => (others => (others => '0'))); 
			reset_weight_fifo_n 	<= '0';  
			weights_mult 			<= (others => (others => '0'));  
			recycle_filter_data		<= (others => (others => '0'));   
			data_valid 				<= '0';	
			recycle_filter_en		<= '0';	
			
		elsif(rising_edge(i_clk)) then 
			filter_element_counter 	<= filter_element_counter; 
			filter_row_shift_reg 	<= filter_row_shift_reg; 
			reset_weight_fifo_n 	<= reset_weight_fifo_n;  
			weights_mult 			<= weights_mult;   
			recycle_filter_data		<= recycle_filter_data;	  
			data_valid 				<= data_valid; 
			recycle_filter_en		<= recycle_filter_en; 
			
			case current_state is 
				when IDLE => 
					reset_weight_fifo_n <= '1';	
					data_valid <= '0'; 
					
				when PRIMING => 
					data_valid <= '0'; 
					
				when LOAD_KERNEL => 
					data_valid <= '0'; 
				
					if(filter_element_counter >= unsigned(i_weight_filter_size) and (i_convolution_en = '1' or i_affine_en = '1')) then 	 
						filter_element_counter <= x"1";
						recycle_filter_en <= '0'; 
					else
						if(and_reduce(i_fifo_data_valid) = '1') then
							filter_element_counter <= filter_element_counter + 1; 
							--filter_row_shift_reg <= filter_row_shift_reg(9 downto 0) & i_filter_data;  	
							
							for i in 0 to g_dsps_used-1 loop 
							     filter_row_shift_reg(i) <= filter_row_shift_reg(i)(9 downto 0) & i_filter_data(i); 
							end loop; 
							
							recycle_filter_data <= i_filter_data; 
							recycle_filter_en	<= '1'; 
						else 
							filter_element_counter <= filter_element_counter; 
							filter_row_shift_reg <= filter_row_shift_reg;  	 
							recycle_filter_data <= recycle_filter_data; 
							recycle_filter_en <= '1'; 
						end if; 
					end if; 
					
				when PROCESSING =>	
						
					if(filter_element_counter > unsigned(i_weight_filter_size) and and_reduce(i_volume_ready) = '0') then 
						if(and_reduce(i_conv_complete) = '1' or and_reduce(i_affine_complete) = '1') then 	 
							filter_element_counter <= (others => '0'); 
						else 
							filter_element_counter <= x"1"; 
						end if;  
						data_valid <= '0'; 
						weights_mult <= (others => (others => '0')); 
					elsif(filter_element_counter <= unsigned(i_weight_filter_size) and and_reduce(i_volume_ready) = '1') then  
						filter_element_counter <= filter_element_counter + 1; 
						data_valid <= '1'; 
						--weights_mult <= filter_row_shift_reg(to_integer(filter_element_counter)-1);	
						for j in 0 to g_dsps_used-1 loop 
						      weights_mult(j) <= filter_row_shift_reg(j)(to_integer(filter_element_counter)-1);	
						end loop; 
						  
					else 
						if(and_reduce(i_conv_complete) = '1' or and_reduce(i_affine_complete) = '1') then 	 
							filter_element_counter <= (others => '0'); 
						else 
							filter_element_counter <= filter_element_counter; 
						end if; 
						
						data_valid <= '0'; 
						weights_mult <= (others => (others => '0')); 
					end if;    
						
	
					
					
				when EMPTY_WEIGHTS => 
				  	 
					reset_weight_fifo_n 	<= '0';	
					data_valid 				<= '0'; 
					recycle_filter_data 	<= (others => (others => '0')); 
					recycle_filter_en		<= '0'; 
					weights_mult 			<= (others => (others => '0')); 
					filter_element_counter 	<= (others => '0');	

				when others => 	
					filter_element_counter 	<= (others => '0');	
					filter_row_shift_reg 	<= (others => (others => (others => '0'))); 
					reset_weight_fifo_n 	<= '1';  
					weights_mult 			<= (others => (others => '0')); 
					recycle_filter_data		<= (others => (others => '0')); 
					recycle_filter_en		<= '0';	
					
				
			end case; 	 
		end if; 

	end process; 
	
	



end arch;
