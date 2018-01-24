-------------------------------------------------------------------------------
--
-- Title       : input_fifo_net_controller
-- Design      : Convolution_Layer
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Thesis_VHDL\Active_HDL_Projects\Convolution_Layer\Convolution_Layer\src\input_fifo_net_controller.vhd
-- Generated   : Tue Aug 15 22:46:45 2017
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
--{entity {input_fifo_net_controller} architecture {arch}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;	
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library convolution_layer; 
use convolution_layer.types_pkg.all;


entity input_fifo_net_controller is	   
	generic(
	g_weight_width 					: integer := 16; 
	g_data_width 					: integer := 16; 
	g_dsps_used						: integer := 200;
	g_num_11_filters				: integer := 18; 
	g_num_7_filters					: integer := 28; 
	g_num_3_filters					: integer := 66
	); 
	port(
	i_clk 							: in std_logic; 
	i_reset_n 						: in std_logic; 
	i_enable						: in std_logic;	 
	i_start							: in std_logic; 
	
	--FROM INPUT BUFFER
    i_inbuff_valid					: in std_logic; 
	i_inbuff_dout					: in std_logic_vector(15 downto 0);  
	o_inbuff_rd_en					: out std_logic; 
	i_inbuff_empty					: in std_logic; 
	i_inbuff_almost_empty			: in std_logic; 

	i_inbuff_prog_empty				: in std_logic; 
	o_inbuff_prog_empty_thresh 		: out std_logic_vector(9 downto 0); 
	
	--FROM AXI INTERFACE
	i_input_volume_size				: in std_logic_vector(7 downto 0); 
	i_input_volume_channels			: in std_logic_vector(11 downto 0); 
	i_weight_filter_size			: in std_logic_vector(3 downto 0); 
	i_weight_filter_channels		: in std_logic_vector(11 downto 0); 
	i_number_of_filters				: in std_logic_vector(11 downto 0);
	--i_weight_filter_bytes			: in std_logic_vector(31 downto 0); 
	i_stride						: in std_logic_vector(3 downto 0); 
	i_pad					    	: in std_logic_vector(3 downto 0); 	
	
	
	--FROM LOGIC 
	i_get_volume_row				: in std_logic_vector(g_dsps_used-1 downto 0);
	i_get_weight_row				: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_filter_kernal_loaded			: in std_logic_vector(g_dsps_used-1 downto 0);	
	i_loaded_rows_processed			: in std_logic_vector(g_dsps_used-1 downto 0);
	
	i_volume_fifo_full				: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_volume_fifo_almost_full		: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_volume_fifo_prog_full			: in std_logic_vector(g_dsps_used-1 downto 0); 	
	
	i_weight_fifo_full				: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_weight_fifo_almost_full		: in std_logic_vector(g_dsps_used-1 downto 0); 
	i_weight_fifo_prog_full			: in std_logic_vector(g_dsps_used-1 downto 0); 	  
	
	i_data_return 					: in array_type_varx16bit(g_dsps_used-1 downto 0); 
	i_data_return_wr_en				: in std_logic_vector(g_dsps_used-1 downto 0); 	
	
	i_snake_fill_complete			: in std_logic_vector(g_dsps_used-1 downto 0); 
	
	--TO LOGIC
	o_volume_data					: out array_type_varx16bit(g_dsps_used-1 downto 0); 
	o_weight_data					: out array_type_varx16bit(g_dsps_used-1 downto 0); 
	o_volume_new_data_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_stop_stack_en					: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_volume_prev_data_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_volume_recycled_data_en 		: out std_logic_vector(g_dsps_used-1 downto 0); 
	
	o_volume_fifo_wr_en				: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_volume_fifo_prog_full_thresh 	: out std_logic_vector(9 downto 0); 	
	o_weight_fifo_wr_en				: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_weight_fifo_prog_full_thresh 	: out std_logic_vector(12 downto 0); 
	
	o_convolution_en				: out std_logic; 
	
	o_weights_new_data_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_weights_recycled_data_en		: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_weights_prev_data_wr_en		: out std_logic_vector(g_dsps_used-1 downto 0);  
	o_weights_prev_data_en	   		: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_all_channels_processed		: out std_logic; 
	
	o_recycled_data 				: out array_type_varx16bit(g_dsps_used-1 downto 0); 
	o_recycled_data_wr_en			: out std_logic_vector(g_dsps_used-1 downto 0); 
	o_prev_data						: out array_type_varx16bit(g_dsps_used-1 downto 0); 
	o_prev_data_wr_en				: out std_logic_vector(g_dsps_used-1 downto 0); 
	
	o_padded_volume_size			: out std_logic_vector(7 downto 0)
	

	); 	
end input_fifo_net_controller;


architecture arch of input_fifo_net_controller is	  


type dsps_11x11 is array (g_num_11_filters-1 downto 0) of integer range 0 to 219;
--constant base_volume_fifo_11x11 : dsps_11x11 := (0,11,22,33,44,55,66,77,88,99,110,121,132,143,154,165,176,187);	  

type state_type is (IDLE, WAIT_ONE_PAD, WAIT_ONE_CONV, IS_NET_READY, CALC_PARAMETERS, FETCH_AND_LOAD_WEIGHTS, PAD_VOLUME_TOP, PAD_VOLUME_LEFT, FETCH_VOLUME, PAD_VOLUME_RIGHT, PAD_VOLUME_BOTTOM, CONVOLUTION, PVL_SINGLE,FV_SINGLE, PVR_SINGLE, SNAKE_FILL,DWELL); 
signal current_state 				: state_type; 
signal next_state 					: state_type;  
signal resume_state					: state_type; 

signal inbuff_rd_en 				: std_logic;
signal volume_data 					: array_type_varx16bit(g_dsps_used-1 downto 0); 
signal weight_data 					: array_type_varx16bit(g_dsps_used-1 downto 0); 

signal input_volume_row_counter 	: unsigned(7 downto 0); 
signal volume_channel_counter				: unsigned(11 downto 0); 
signal weight_channel_counter		: unsigned(11 downto 0); 
--signal channels_remaining			: unsigned(11 downto 0); 	
signal more_dsps_needed				: std_logic; 
signal dsp_counter 					: unsigned(7 downto 0); 
signal channels_allowed 			: unsigned(7 downto 0);
signal filter_row_counter 			: unsigned(3 downto 0);  
signal filter_column_counter 		: unsigned(3 downto 0);  
signal filter_counter				: unsigned(11 downto 0); 
		 
signal volume_row_counter 			: unsigned(7 downto 0);  
signal volume_column_counter 		: unsigned(7 downto 0);  
--signal volume_counter				: unsigned(11 downto 0); 
signal volume_fifo_wr_en			: std_logic_vector(g_dsps_used-1 downto 0);   
signal volume_fifo_prog_full_thresh	: std_logic_vector(9 downto 0); 
signal padded_volume_row_size 		: unsigned(7 downto 0); 
signal padded_volume_column_size 	: unsigned(7 downto 0);  

--signal base_volume_fifo				: unsigned(7 downto 0); 

signal volume_rows_processed 		: unsigned(7 downto 0); 
signal volume_new_data_en			: std_logic_vector(g_dsps_used-1 downto 0);	 
signal volume_prev_data_en			: std_logic_vector(g_dsps_used-1 downto 0);  
signal volume_recycled_data_en		: std_logic_vector(g_dsps_used-1 downto 0);
signal weights_new_data_en			: std_logic_vector(g_dsps_used-1 downto 0);
signal weights_recycled_data_en		: std_logic_vector(g_dsps_used-1 downto 0);
signal weight_fifo_wr_en			: std_logic_vector(g_dsps_used-1 downto 0); 
signal stop_stack_en				: std_logic_vector(g_dsps_used-1 downto 0); 
signal element_counter				: unsigned(7 downto 0); 
signal pad_counter					: unsigned(3 downto 0);

signal channels_processed			: unsigned(11 downto 0); 
signal convolution_en				: std_logic; 
signal pad_8bit						: std_logic_vector(7 downto 0);	
signal pad_10bit					: std_logic_vector(9 downto 0); 
signal input_volume_size_10bit 		: std_logic_vector(9 downto 0);   

signal weights_prev_data_en	   		: std_logic_vector(g_dsps_used-1 downto 0); 
signal weights_prev_data_wr_en	   	: std_logic_vector(g_dsps_used-1 downto 0);    

signal all_channels_processed		: std_logic; 

signal prev_data_wr_en 				: std_logic_vector(g_dsps_used-1 downto 0);  
signal prev_data 					: array_type_varx16bit(g_dsps_used-1 downto 0);  
signal recycled_data_wr_en 			: std_logic_vector(g_dsps_used-1 downto 0);  
signal recycled_data 				: array_type_varx16bit(g_dsps_used-1 downto 0); 	

signal volume_row					: unsigned(7 downto 0);	  

				

begin

	
	
	--Controller Order of Operations   
	--0. Wait for start signal to go high before starting operation 																(IDLE) 
	--1. Wait until all "get" signals are high which indicates that the previous convolution has been completed 					(IS_NET_READY)
	--2. Once all "get" signals are high, then determine the number of channels required to process the entire volume  				(CALC_PARAMETERS)
			-- Also determine the number of rows necessary to complete the entire volume. 
	--3. Determine if the # of channels are greater than 200 dsps(1 dsps/channel), if so then determine the number of repeats	 	(CALC_PARAMETERS)
	--4. Begin fetching the weight filter data stack for that layer. Load weight data to the appropriate weight mux   				(FETCH_WEIGHTS)
	--5. Once all the weight filters have been loaded, begin fetching the volume data for that layer. 								(FETCH_VOLUME)
	--6. Once all weights and volume data for that channel set are loaded indicate a busy high in order to prevent any further data (CONVOLUTION)
		--transfer from the input buffer 
	--7. Wait for Convolution to complete on that channel set on those rows of volume data. 	   									(CONVOLUTION)
	--8. Once convolution has completed for the current rows, begin fetching volume data for the next rows in the volume.  			(FETCH_VOLUME)
	--9. Wait for Convolution to complete for that channel set and on the new rows of volume data. 								  	(CONVOLUTION)
	--10 Once convolution has completed for all rows in the volume for that channel set, repeat steps 1-9 for any remaining channels(FETCH_WEIGHTS)
		--in the input volume. 																				   						(FETCH_VOLUME)
	--11. Once the convolution for the entire input volume has been complete indicate convolution done. 							(CONVOLUTION) 

	o_inbuff_rd_en 					<= inbuff_rd_en;  
	o_volume_data 					<= volume_data; 
	o_weight_data 					<= weight_data; 
	o_inbuff_prog_empty_thresh  	<= std_logic_vector(to_unsigned(1000,10)); 
	o_volume_new_data_en			<= volume_new_data_en;
	o_volume_prev_data_en			<= volume_prev_data_en; 
	o_volume_recycled_data_en		<= volume_recycled_data_en; 
	o_weights_new_data_en			<= weights_new_data_en; 
	o_weights_recycled_data_en		<= weights_recycled_data_en; 
	
	o_stop_stack_en					<= stop_stack_en; 
	
	o_volume_fifo_wr_en			 	<= volume_fifo_wr_en; 
	o_volume_fifo_prog_full_thresh 	<= volume_fifo_prog_full_thresh;  
	o_convolution_en 				<= convolution_en; 	   
	
	o_weight_fifo_prog_full_thresh 	<= "1111000011110"; 
	o_weight_fifo_wr_en 			<= weight_fifo_wr_en; 	
	
	o_weights_prev_data_en 			<= weights_prev_data_en; 
	o_weights_prev_data_wr_en 		<= weights_prev_data_wr_en; 

	o_prev_data_wr_en 				<= prev_data_wr_en; 
	o_prev_data 					<= prev_data; 
			
	o_recycled_data_wr_en 			<= recycled_data_wr_en; 
	o_recycled_data 				<= recycled_data; 
	
	pad_8bit 						<= "0000" & i_pad;    
	pad_10bit 						<= "000000" & i_pad; 
	input_volume_size_10bit 		<= "00" & i_input_volume_size; 
	
	o_all_channels_processed 		<= all_channels_processed; 	  
	o_padded_volume_size			<= std_logic_vector(padded_volume_column_size); 
	
	
	state_transitions: process(i_clk,i_reset_n) is 
	begin  
		if(i_reset_n = '0') then 
			current_state <= IDLE; 
			--resume_state <= IDLE; 
		elsif(rising_edge(i_clk)) then 
			current_state <= next_state; 
			--resume_state <= resume_state; 
		end if; 
	end process; 	
	
	
	
 	next_state_combinational: process(all) is 
	begin  
		
		if(unsigned(i_weight_filter_size) = 11) then 	
			channels_allowed <= to_unsigned(g_num_11_filters,8); 
		elsif(unsigned(i_weight_filter_size) = 7) then
			channels_allowed <= to_unsigned(g_num_7_filters,8); 
		elsif(unsigned(i_weight_filter_size) = 3) then   
			channels_allowed <= to_unsigned(g_num_3_filters,8); 
		end if;  
		
		inbuff_rd_en <= '0';   
		--volume_fifo_wr_en <= (others => '0');
		
		volume_new_data_en 			<= (others => '0'); 
		volume_prev_data_en 		<= (others => '0'); 
		volume_recycled_data_en 	<= (others => '0'); 
		weights_recycled_data_en 	<= (others => '0'); 	
		weights_new_data_en			<= (others => '0');  
		weights_prev_data_en 		<= (others => '0'); 
	    weights_prev_data_wr_en 	<= (others => '0');  
		--weight_fifo_wr_en 			<= (others => '0'); 	 
		stop_stack_en 				<= (others => '0'); 	
		convolution_en 				<= '0';  
		all_channels_processed 		<= '0'; 
		
		case current_state is 
			when IDLE => 
				volume_new_data_en <= (others => '1');  
				weights_new_data_en <= (others => '1');
				stop_stack_en 				<= (others => '1'); 
				--weight_fifo_wr_en <= (others => '0'); 
				
				if(i_start = '1' and i_enable = '1') then 
					next_state <= IS_NET_READY; 
				else 
					next_state <= IDLE; 
				end if; 
			
			when IS_NET_READY => 
				volume_new_data_en <= (others => '1'); 
				weights_new_data_en <= (others => '1'); 
				--weight_fifo_wr_en <= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 
				if(and_reduce(i_get_volume_row) = '1' and and_reduce(i_get_weight_row) = '1') then 
					next_state <= CALC_PARAMETERS; 
				else
					next_state <= IS_NET_READY; 
				end if; 
			
			when CALC_PARAMETERS => 
				volume_new_data_en <= (others => '1'); 
				weights_new_data_en <= (others => '1');  
				--weight_fifo_wr_en <= (others => '0'); 
				next_state <= FETCH_AND_LOAD_WEIGHTS; 
				stop_stack_en 				<= (others => '1'); 
				
			when FETCH_AND_LOAD_WEIGHTS => 
				volume_new_data_en <= (others => '1'); 
				weights_new_data_en <= (others => '1');  
				stop_stack_en 				<= (others => '1'); 		
				next_state <= FETCH_AND_LOAD_WEIGHTS; 
				inbuff_rd_en <= '0'; 
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0') then 	 
					
					if(filter_column_counter = unsigned(i_weight_filter_size)-1 and filter_row_counter = unsigned(i_weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and (weight_channel_counter < unsigned(i_weight_filter_channels)-1 or filter_counter < unsigned(i_number_of_filters)-1)) then  
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_AND_LOAD_WEIGHTS; 
						elsif(more_dsps_needed = '0' and weight_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= PAD_VOLUME_TOP; 
						elsif(more_dsps_needed = '1' and (weight_channel_counter < channels_allowed or filter_counter < unsigned(i_number_of_filters)-1)) then 
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_AND_LOAD_WEIGHTS; 
						elsif(more_dsps_needed = '1' and weight_channel_counter >= channels_allowed) then 
							inbuff_rd_en <= '0'; 
							next_state <= PAD_VOLUME_TOP; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= FETCH_AND_LOAD_WEIGHTS; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= FETCH_AND_LOAD_WEIGHTS; 
					end if;		 
					
					
				end if; 
					
			
			when PAD_VOLUME_TOP => 
			
				next_state 					<= PAD_VOLUME_TOP;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						 
					
					if(volume_column_counter = unsigned(padded_volume_column_size)-1 and volume_row_counter >= unsigned(pad_8bit)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							inbuff_rd_en <= '1'; 
							next_state <= PAD_VOLUME_TOP; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= PAD_VOLUME_LEFT; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							inbuff_rd_en <= '1'; 
							next_state <= PAD_VOLUME_TOP; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							inbuff_rd_en <= '0'; 
							next_state <= PAD_VOLUME_LEFT; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= PAD_VOLUME_TOP; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= PAD_VOLUME_TOP; 
					end if;		 
					
					
				end if; 
				
				
			when PAD_VOLUME_LEFT => 	
			
				next_state 					<= PAD_VOLUME_LEFT;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(pad_8bit)-1 and volume_row_counter = unsigned(i_weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							inbuff_rd_en <= '1'; 
							next_state <= PAD_VOLUME_LEFT; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= FETCH_VOLUME; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							inbuff_rd_en <= '1'; 
							next_state <= PAD_VOLUME_LEFT; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							inbuff_rd_en <= '0'; 
							next_state <= FETCH_VOLUME; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= PAD_VOLUME_LEFT; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= PAD_VOLUME_LEFT; 
					end if;		 
					
					
				end if; 
			
			
			
			when FETCH_VOLUME => 
			
				next_state 					<= FETCH_VOLUME;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(i_input_volume_size)-1 and volume_row_counter = unsigned(i_weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_VOLUME; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= PAD_VOLUME_RIGHT; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							inbuff_rd_en <= '1'; 
							next_state <= FETCH_VOLUME; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							inbuff_rd_en <= '0'; 
							next_state <= PAD_VOLUME_RIGHT; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= FETCH_VOLUME; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= FETCH_VOLUME; 
					end if;		 
					
					
				end if; 
			
	
--				volume_new_data_en(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) <= '1';  
--				volume_prev_data_en(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) <= '0';   
--				volume_recycled_data_en(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) <= '0';	
--				stop_stack_en(to_integer(volume_channel_counter*unsigned(i_weight_filter_size) + unsigned(i_weight_filter_size))) <= '1'; 
--			
--				if(volume_rows_processed = padded_volume_column_size-unsigned(i_pad) and element_counter = padded_volume_row_size) then 
--					next_state <= PAD_VOLUME_BOTTOM; 
--				elsif(and_reduce(i_volume_fifo_prog_full) = '1') then 
--					next_state <= CONVOLUTION; 
--				else 
--					next_state <= FETCH_VOLUME; 
--					if(i_volume_fifo_prog_full(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) = '0') then
--						if(pad_counter < unsigned(i_pad) and element_counter < padded_volume_row_size) then 
--							volume_fifo_wr_en(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) <= '1'; 	
--						elsif(pad_counter = unsigned(i_pad) and element_counter < padded_volume_row_size-unsigned(i_pad)) then 
--							inbuff_rd_en <= '1'; 
--							volume_fifo_wr_en(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) <= '1'; 
--						else
--							volume_fifo_wr_en(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) <= '0'; 	 
--							inbuff_rd_en <= '0'; 
--						end if; 	
--					end if; 
--				end if; 
				
			when PAD_VOLUME_RIGHT => 

				next_state 					<= PAD_VOLUME_RIGHT;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(pad_8bit)-1 and volume_row_counter = unsigned(i_weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							inbuff_rd_en <= '1'; 
							next_state <= PAD_VOLUME_RIGHT; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= WAIT_ONE_PAD; 
							--resume_state <= CONVOLUTION; 
							weights_new_data_en 		<= (others => '0'); 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							inbuff_rd_en <= '1'; 
							next_state <= PAD_VOLUME_RIGHT; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							inbuff_rd_en <= '0'; 
							next_state <= WAIT_ONE_PAD; 
							--resume_state <= CONVOLUTION; 	
							weights_new_data_en 		<= (others => '0'); 
						else
							inbuff_rd_en <= '0';	 
							next_state <= PAD_VOLUME_RIGHT; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= PAD_VOLUME_RIGHT; 
					end if;		 
					
					
				end if;  
				
			when WAIT_ONE_PAD => 	
				next_state 					<= CONVOLUTION;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '1'); 
				volume_prev_data_en 		<= (others => '0');  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '1');  
				
			when CONVOLUTION =>   
			
				convolution_en <= '1'; 
				volume_new_data_en 			<= (others => '0');	
				volume_prev_data_en 		<= (others => '0');	
				volume_recycled_data_en 	<= (others => '1');	
				stop_stack_en 				<= (others => '1');	
				weights_new_data_en 		<= (others => '0');
				weights_recycled_data_en 	<= (others => '1'); 
			
			
				if(or_reduce(i_loaded_rows_processed) = '1') then 
					next_state <= PVL_SINGLE; 
--					convolution_en <= '0'; 	   
--					volume_new_data_en 			<= (others => '0');	
--					volume_prev_data_en 		<= (others => '0');	
--					volume_recycled_data_en 	<= (others => '0');	
--					stop_stack_en 				<= (others => '1');	
--					weights_new_data_en 		<= (others => '0');
--					weights_recycled_data_en 	<= (others => '0'); 
					
				else 
					next_state <= CONVOLUTION;
				end if;  
				
			when WAIT_ONE_CONV =>  
				
				convolution_en <= '1'; 
				volume_new_data_en 			<= (others => '0');	
				volume_prev_data_en 		<= (others => '0');	
				volume_recycled_data_en 	<= (others => '1');	
				stop_stack_en 				<= (others => '1');	
				weights_new_data_en 		<= (others => '0');
				weights_recycled_data_en 	<= (others => '1'); 
				
			when PVL_SINGLE =>
				next_state 					<= PVL_SINGLE;  
				inbuff_rd_en 				<= '0'; 
				convolution_en <= '0'; 
				
				volume_new_data_en<= (others => '1'); 
				--volume_new_data_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)))<= '1'; 
				volume_prev_data_en 		<= (others => '0'); 
				--volume_prev_data_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)))<='0';
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				 
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
					 
					
					if(volume_column_counter >= unsigned(pad_8bit)-1 and volume_row_counter >= unsigned(i_weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							--inbuff_rd_en <= '1'; 
							next_state <= PVL_SINGLE; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							--inbuff_rd_en <= '0'; 
							next_state <= FV_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							--inbuff_rd_en <= '1'; 
							next_state <= PVL_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							--inbuff_rd_en <= '0'; 
							next_state <= FV_SINGLE; 
						else
							--inbuff_rd_en <= '0';	 
							next_state <= PVL_SINGLE; 
						end if;

						
					else 
						--inbuff_rd_en <= '1';   
						next_state <= PVL_SINGLE; 
					end if;		 
					
					
				end if; 
			
			
			when FV_SINGLE =>  
			
				next_state 					<= FV_SINGLE;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en<= (others => '1'); 
				--volume_new_data_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)))<= '1'; 
				volume_prev_data_en 		<= (others => '0'); 
				--volume_prev_data_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)))<='0';
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(i_input_volume_size)-1 and volume_row_counter = unsigned(i_weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							inbuff_rd_en <= '1'; 
							next_state <= FV_SINGLE; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							inbuff_rd_en <= '0'; 
							next_state <= PVR_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							inbuff_rd_en <= '1'; 
							next_state <= FV_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							inbuff_rd_en <= '0'; 
							next_state <= PVR_SINGLE; 
						else
							inbuff_rd_en <= '0';	 
							next_state <= FV_SINGLE; 
						end if;

						
					else 
						inbuff_rd_en <= '1';   
						next_state <= FV_SINGLE; 
					end if;		 
					
					
				end if; 

			
			when PVR_SINGLE =>
				volume_new_data_en<= (others => '1'); 
				--volume_new_data_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)))<= '1'; 
				volume_prev_data_en 		<= (others => '0'); 
				--volume_prev_data_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)))<='0';
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en 				<= (others => '1'); 	 
				weights_new_data_en 		<= (others => '0');  
				
				if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
					 
					
					if(volume_column_counter = unsigned(pad_8bit)-1 and volume_row_counter = unsigned(i_weight_filter_size)-1) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							--inbuff_rd_en <= '1'; 
							next_state <= PVR_SINGLE; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							--inbuff_rd_en <= '0'; 
							next_state <= SNAKE_FILL; 
							weights_new_data_en 		<= (others => '0'); 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							--inbuff_rd_en <= '1'; 
							next_state <= PVR_SINGLE; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							--inbuff_rd_en <= '0'; 
							next_state <= SNAKE_FILL; 	
							weights_new_data_en 		<= (others => '0'); 
						else
							--inbuff_rd_en <= '0';	 
							next_state <= PVR_SINGLE; 
						end if;

						
					else 
						--inbuff_rd_en <= '1';   
						next_state <= PVR_SINGLE; 
					end if;		 
					
					
				end if;  
				
				
			when SNAKE_FILL => 
				
				next_state 					<= SNAKE_FILL;  
				inbuff_rd_en 				<= '0'; 
				
			
				volume_new_data_en 			<= (others => '0'); 
				volume_prev_data_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) 		<= '1';  
				volume_recycled_data_en 	<= (others => '0'); 
				stop_stack_en				<= (others => '1'); 
				stop_stack_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)+1)) <='0'; 	 
				weights_new_data_en 		<= (others => '0');  
				 
				
				if(i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0' and i_data_return_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)+1))='1') then  	 
					 
					
					if(volume_column_counter = unsigned(padded_volume_column_size)-1 and volume_row_counter = 0) then --unsigned(i_weight_filter_size)-2) then 				
						
						if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
							--inbuff_rd_en <= '1'; 
							next_state <= SNAKE_FILL; 
						elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
							--inbuff_rd_en <= '0'; 
							next_state <= CONVOLUTION; 
						elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
							--inbuff_rd_en <= '1'; 
							next_state <= SNAKE_FILL; 
						elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
							--inbuff_rd_en <= '0'; 
							next_state <= CONVOLUTION; 
						else
							--inbuff_rd_en <= '0';	 
							next_state <= SNAKE_FILL; 
						end if;

						
					else 
						--inbuff_rd_en <= '1';   
						next_state <= SNAKE_FILL; 
					end if;		 
					
					
				end if; 
				
				
			when DWELL => 
				next_state <= DWELL; 
				
			when others => 
				next_state <= IDLE; 
			
			
		end case; 

	end process; 
	
	sequential_logic: process(i_clk,i_reset_n) is 
	begin  
		if(i_reset_n = '0') then
			more_dsps_needed 			<= '0'; 
			weight_data					<= (others => (others => '0'));  
			volume_data 				<= (others => (others => '0'));  
			dsp_counter 				<= (others => '0'); 
			volume_channel_counter 		<= (others => '0');
			weight_channel_counter		<= (others => '0'); 
			filter_row_counter 			<= (others => '0'); 
			filter_column_counter 		<= (others => '0'); 
			padded_volume_row_size 		<= (others => '0'); 
			padded_volume_column_size 	<= (others => '0');    
			--new_data_en				<= (others => '0');		
			--base_volume_fifo 			<= (others => '0');    
			input_volume_row_counter	<= (others => '0'); 
			filter_counter				<= (others => '0'); 
			volume_rows_processed		<= (others => '0');    
			element_counter				<= (others => '0'); 
			pad_counter					<= (others => '0');  
			channels_processed			<= (others => '0');    
			volume_fifo_prog_full_thresh <= (others => '0'); 
			
			weight_fifo_wr_en 			<= (others => '0'); 
			volume_fifo_wr_en 			<= (others => '0'); 
			
			prev_data_wr_en 			<= (others => '0'); 
			prev_data 					<= (others => (others => '0')); 
			
			recycled_data_wr_en 		<= (others => '0'); 
			recycled_data 				<= (others => (others => '0'));   
			
			volume_row_counter			<= (others => '0'); 
			volume_column_counter		<= (others => '0'); 	
			volume_row					<= (others => '0');   
			resume_state				<= IDLE; 
				
			
		elsif(rising_edge(i_clk)) then 
			more_dsps_needed 			<= more_dsps_needed; 
			weight_data 				<= weight_data;  
			volume_data 				<= volume_data; 
			dsp_counter 				<= dsp_counter; 
			volume_channel_counter 			<= volume_channel_counter; 
			weight_channel_counter		<= weight_channel_counter; 
			filter_row_counter 			<= filter_row_counter; 
			filter_column_counter 		<= filter_column_counter; 
			padded_volume_row_size 		<= padded_volume_row_size; 
			padded_volume_column_size 	<= padded_volume_column_size; 
			--new_data_en				<= new_data_en;   
			--base_volume_fifo			<= base_volume_fifo; 
			input_volume_row_counter	<= input_volume_row_counter; 
			filter_counter				<= filter_counter; 
			element_counter				<= element_counter;   
			pad_counter					<= pad_counter; 	
			channels_processed			<= channels_processed; 	 
			weight_data 				<= weight_data; 	 
			weight_fifo_wr_en 			<= weight_fifo_wr_en; 
			volume_fifo_wr_en 			<= volume_fifo_wr_en; 
			
			prev_data_wr_en 			<= prev_data_wr_en; 
			prev_data 					<= prev_data; 
			
			recycled_data_wr_en 		<= recycled_data_wr_en; 
			recycled_data 				<= recycled_data; 	
			
			volume_row_counter			<= volume_row_counter; 
			volume_column_counter		<= volume_column_counter; 	 
			volume_row					<= volume_row;	 
			resume_state				<= resume_state; 
				
				
			
			case current_state is

				
				when IDLE =>   	
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
				
				when IS_NET_READY => 
				
				when CALC_PARAMETERS =>
					if(channels_allowed > unsigned(i_input_volume_channels)) then 
						more_dsps_needed <= '0'; 
					else  
						more_dsps_needed <= '1'; 
					end if;  
					
					padded_volume_row_size 		<= unsigned(i_input_volume_size) + unsigned(pad_8bit) + unsigned(pad_8bit);--to_unsigned(to_integer(unsigned(i_input_volume_size)) + to_integer(unsigned("0000" & i_pad)) + to_integer(unsigned("0000" & i_pad)),8); 
					padded_volume_column_size 	<= unsigned(i_input_volume_size) + unsigned(pad_8bit) + unsigned(pad_8bit); 
					
					volume_fifo_prog_full_thresh <= std_logic_vector(unsigned(input_volume_size_10bit) + unsigned(pad_10bit) + unsigned(pad_10bit)); 
					
				
				when FETCH_AND_LOAD_WEIGHTS => 	 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0') then  	 
						
						if(filter_column_counter < unsigned(i_weight_filter_size)-1) then 
							filter_column_counter <= filter_column_counter + 1; 
							weight_data(to_integer(weight_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(filter_row_counter))) <= i_inbuff_dout; 	
							weight_fifo_wr_en(to_integer(weight_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(filter_row_counter))) <= '1'; 
						else 
							filter_column_counter <= (others => '0'); 
							weight_data(to_integer(weight_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(filter_row_counter))) <= i_inbuff_dout;
							weight_fifo_wr_en(to_integer(weight_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(filter_row_counter))) <= '1'; 
							
							if(filter_row_counter < unsigned(i_weight_filter_size)-1) then
								filter_row_counter <= filter_row_counter + 1; 
							else 
								filter_row_counter <= (others => '0'); 
								  
								
								if(more_dsps_needed = '0' and weight_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									weight_channel_counter <= weight_channel_counter + 1; 
								elsif(more_dsps_needed = '0' and weight_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									weight_channel_counter <= (others => '0'); --weight_channel_counter; 
									filter_counter <= filter_counter + 1;
								elsif(more_dsps_needed = '1' and weight_channel_counter < channels_allowed) then 
									weight_channel_counter <= weight_channel_counter + 1; 
								elsif(more_dsps_needed = '1' and weight_channel_counter >= channels_allowed) then 
									weight_channel_counter <= (others => '0'); --weight_channel_counter; 
									filter_counter <= filter_counter + 1; 
								else
									weight_channel_counter <= (others => '0'); --weight_channel_counter; 
								end if; 

								
							end if;   
						end if; 

					end if; 
					
				when PAD_VOLUME_TOP =>	 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						
						if(volume_column_counter < unsigned(padded_volume_column_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0'); 	
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0');
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
							
							if(volume_row_counter < unsigned(pad_8bit)-1) then
								volume_row_counter <= volume_row_counter + 1; 
							else 						
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
									volume_row_counter <= (others => '0'); 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others =>'0');--volume_channel_counter;	
									volume_row_counter <= volume_row_counter + 1; --(others => '0'); 	
									volume_row <= volume_row_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
									volume_channel_counter <= volume_channel_counter + 1;  
									volume_row_counter <= (others => '0');
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
									volume_channel_counter <= (others => '0'); --volume_channel_counter;  
									volume_row_counter <= volume_row_counter + 1; --(others => '0'); 	
									volume_row <= volume_row_counter + 1; 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
								
								
								
							end if;   
						end if; 

					end if; 
				
				when PAD_VOLUME_LEFT => 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						
						if(volume_column_counter < unsigned(pad_8bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0'); 	
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0');
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
							
							if(volume_row_counter < unsigned(i_weight_filter_size)-1) then
								volume_row_counter <= volume_row_counter + 1; 
							else 
								volume_row_counter <= volume_row; 		
								--volume_row <= volume_row_counter; 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); --volume_channel_counter;
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
									volume_channel_counter <= (others => '0'); --volume_channel_counter; 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
								
								
								
							end if;   
						end if; 

					end if; 
				
			
				when FETCH_VOLUME =>   
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						
						if(volume_column_counter < unsigned(i_input_volume_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_inbuff_dout; 	
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_inbuff_dout;
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
							
							if(volume_row_counter < unsigned(i_weight_filter_size)-1) then
								volume_row_counter <= volume_row_counter + 1; 
							else 
								volume_row_counter <= volume_row;		
								--volume_row <= volume_row_counter; 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); --volume_channel_counter;
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
									volume_channel_counter <= (others => '0'); --volume_channel_counter; 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
								
								
								
							end if;   
						end if; 

					end if; 
				
					
				when PAD_VOLUME_RIGHT => 	  
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						
						if(volume_column_counter < unsigned(pad_8bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0'); 	
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0');
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
							
							if(volume_row_counter < unsigned(i_weight_filter_size)-1) then
								volume_row_counter <= volume_row_counter + 1; 
							else 
								volume_row_counter <= volume_row;	
								
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); --volume_channel_counter;
									resume_state <= CONVOLUTION;
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
									volume_channel_counter <= (others => '0'); --volume_channel_counter;  
									resume_state <= CONVOLUTION;
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
								
								
								
							end if;   
						end if; 

					end if; 







					
				when PAD_VOLUME_BOTTOM =>	
				
					if(volume_channel_counter < unsigned(i_input_volume_channels)) then 
						--new_data_en(to_integer(channel_counter*unsigned(i_weight_filter_size))) <= '1'; 
					
						if(i_volume_fifo_prog_full(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) = '0' and element_counter <= padded_volume_row_size-1 and pad_counter < unsigned(i_pad)) then 
							volume_data(to_integer(volume_channel_counter*unsigned(i_weight_filter_size))) <= (others => '0'); 
							--volume_fifo_wr_en <= '1'; 
							element_counter <= element_counter + 1; 
							if(element_counter = padded_volume_row_size-1) then 
								pad_counter <= pad_counter + 1; 
								volume_rows_processed <= volume_rows_processed + 1;
								element_counter <= (others => '0'); 
							else 
								pad_counter <= pad_counter;
								element_counter <= element_counter; 
							end if; 
						else 
							channels_processed <= channels_allowed + channels_processed; 
							
						end if;
						
						volume_channel_counter <= volume_channel_counter + 1;    
					else 
						volume_channel_counter <= (others => '0'); 
						element_counter <= (others => '0'); 
						pad_counter <= (others => '0'); 
					end if;  
					
				when WAIT_ONE_PAD => 		 
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0');  	
						
				when CONVOLUTION =>
					volume_fifo_wr_en <= (others => '0'); 	
					weight_fifo_wr_en <= (others => '0'); 
					recycled_data <= i_data_return; 
					recycled_data_wr_en <= i_data_return_wr_en;   
					prev_data_wr_en <= (others => '0'); 
					
					
					volume_row_counter <= "0000" & unsigned(i_weight_filter_size)-1;	
				
				when WAIT_ONE_CONV => 
					null; 

				
				when PVL_SINGLE =>
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						
						if(volume_column_counter < unsigned(pad_8bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0'); 	
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0');
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
							
							if(volume_row_counter < unsigned(i_weight_filter_size)-1) then
								--volume_row_counter <= volume_row_counter + 1; 
							else 
								--volume_row_counter <= volume_row; 		
								--volume_row <= volume_row_counter; 
								
							if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
								volume_channel_counter <= volume_channel_counter + 1; 
								--volume_column_counter <= (others => '0'); 
							elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
								volume_channel_counter <= (others=>'0'); --volume_channel_counter; 
								--volume_column_counter <= volume_column_counter; 
							elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
								volume_channel_counter <= volume_channel_counter + 1; 
							elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
								volume_channel_counter <= (others => '0'); --volume_channel_counter; 
							else
								volume_channel_counter <= volume_channel_counter; 
							end if; 
								
								
								
							end if;   
						end if; 

					end if; 
				
				when FV_SINGLE =>  
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						
						if(volume_column_counter < unsigned(i_input_volume_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_inbuff_dout; 	
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_inbuff_dout;
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
							
							if(volume_row_counter < unsigned(i_weight_filter_size)-1) then
								--volume_row_counter <= volume_row_counter + 1; 
							else 
								--volume_row_counter <= volume_row;		
								--volume_row <= volume_row_counter; 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); --volume_channel_counter;
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
									volume_channel_counter <= (others => '0'); --volume_channel_counter; 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
								
								
								
							end if;   
						end if; 

					end if; 
				
				when PVR_SINGLE =>
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 
				
					if(i_inbuff_valid = '1' and i_inbuff_almost_empty = '0'and i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0') then  	 
						
						if(volume_column_counter < unsigned(pad_8bit)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0'); 	
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
						else 
							volume_column_counter <= (others => '0'); 
							volume_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= (others => '0');
							volume_fifo_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= '1'; 
							
							if(volume_row_counter < unsigned(i_weight_filter_size)-1) then
								--volume_row_counter <= volume_row_counter + 1; 
							else 
								--volume_row_counter <= volume_row;	
								
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									volume_channel_counter 	<= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									volume_channel_counter 	<= (others => '0'); --volume_channel_counter;  
									volume_row_counter 		<= "0000" & unsigned(i_weight_filter_size)-2;--(others => '0');
									volume_row				<= "0000" & unsigned(i_weight_filter_size)-2;--(others =>'0'); 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
									volume_channel_counter 	<= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
									volume_channel_counter 	<= (others => '0'); --volume_channel_counter; 
								else
									volume_channel_counter 	<= volume_channel_counter; 
								end if; 
								
--								volume_row_counter <= (others => '0');
--								volume_row	<= (others =>'0'); 
--								
								
								
							end if;   
						end if; 

					end if; 
					
				when SNAKE_FILL =>
				
					weight_fifo_wr_en <= (others => '0'); 
					volume_fifo_wr_en <= (others => '0'); 	  
					prev_data_wr_en <= (others => '0'); 
				
					if(i_volume_fifo_almost_full(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) = '0' and i_data_return_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)+1)) = '1') then  	 
						
						if(volume_column_counter < unsigned(padded_volume_column_size)-1) then 
							volume_column_counter <= volume_column_counter + 1; 
							prev_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_data_return(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)+1)); 	
							prev_data_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_data_return_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)+1)); 	
						else 
							volume_column_counter <= (others => '0'); 
							prev_data(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_data_return(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)+1));
							prev_data_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter))) <= i_data_return_wr_en(to_integer(volume_channel_counter)*to_integer(unsigned(i_weight_filter_size)) + to_integer(unsigned(volume_row_counter)+1)); 	
							
							if(volume_row_counter > 0) then
								volume_row_counter <= volume_row_counter - 1; 
							else 
								volume_row_counter <= volume_row;		
								--volume_row <= volume_row_counter; 
								
								if(more_dsps_needed = '0' and volume_channel_counter < unsigned(i_weight_filter_channels)-1) then  
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '0' and volume_channel_counter >= unsigned(i_weight_filter_channels)-1) then 	 
									volume_channel_counter <= (others => '0'); --volume_channel_counter;		
									volume_row_counter 		<= (others => '0');
									volume_row				<= (others =>'0'); 
								elsif(more_dsps_needed = '1' and volume_channel_counter < channels_allowed) then 
									volume_channel_counter <= volume_channel_counter + 1; 
								elsif(more_dsps_needed = '1' and volume_channel_counter >= channels_allowed) then 
									volume_channel_counter <= (others => '0'); --volume_channel_counter; 
								else
									volume_channel_counter <= volume_channel_counter; 
								end if; 
								
								
								
							end if;   
						end if; 

					end if; 
				
	  
					

				when DWELL => 
				
			end case; 
		end if; 
	end process; 
end arch;
