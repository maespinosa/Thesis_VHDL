
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--library Softmax_Layer; 
--use Softmax_Layer.cnn_types.all;


entity softmax_controller is
  generic(
       -- name : type := value
       g_data_width : integer := 16
  );
  port(
      i_clk                 : in STD_LOGIC;
      i_reset_n             : in STD_LOGIC;
	  i_start				: in std_logic; 
      i_inbuff_dout         : in std_logic_vector(g_data_width-1 downto 0); 
      i_inbuff_valid        : in std_logic; 
      i_inbuff_empty        : in std_logic; 
      i_inbuff_almost_empty : in std_logic; 
      i_outbuff_full        : in std_logic; 
      i_outbuff_almost_full : in std_logic; 
      i_exp_ready           : in std_logic; 
      i_exp_done            : in std_logic;
	  i_data_loaded         : in std_logic; 
      o_inbuff_rd_en        : out std_logic; 
      o_exp_input           : out std_logic_vector(g_data_width-1 downto 0); 
      o_exp_input_valid     : out std_logic; 
      o_controller_ready    : out std_logic; 
	    o_exp_fifo_select 	  : out std_logic; 
	    o_exp_complete		    : out std_logic; 
      o_clear_all           : out std_logic; 
	    i_summing_complete	  : in std_logic; 
	    i_divsion_complete  	: in std_logic; 
	    i_quotient_result		  : in std_logic_vector(g_data_width-1 downto 0); 
      i_quotient_result_valid : in std_logic;
      i_num_elements        : in std_logic_vector(15 downto 0); 
      o_outbuff_din         : out std_logic_vector(g_data_width-1 downto 0); 
      o_outbuff_wr_en       : out std_logic; 
      o_softmax_complete    : out std_logic
  );
end softmax_controller;


architecture arch of softmax_controller is 


type controller_state is (IDLE, CALC_EXP, SUM_EXP, DIVIDE, SAVE,EXP_HOLD, CLEAR_HOLD); 
signal current_state 		: controller_state; 
signal next_state			: controller_state;   


signal exp_input : std_logic_vector(g_data_width-1 downto 0); 
signal exp_input_valid : std_logic; 
signal controller_ready : std_logic; 
signal exp_fifo_select : std_logic; 
signal exp_complete	: std_logic; 
signal element_counter : unsigned(15 downto 0); 
signal softmax_complete : std_logic; 
signal outbuff_din : std_logic_vector(g_data_width-1 downto 0); 
signal outbuff_wr_en : std_logic; 
signal inbuff_rd_en : std_logic; 
signal clear_all : std_logic;



begin 

o_exp_input        <= exp_input; 
o_exp_input_valid  <= exp_input_valid; 
o_controller_ready <= controller_ready; 
o_exp_fifo_select  <= exp_fifo_select; 
o_exp_complete	   <= exp_complete; 
o_softmax_complete <= softmax_complete; 
o_inbuff_rd_en     <= inbuff_rd_en; 
o_outbuff_din      <= outbuff_din; 
o_outbuff_wr_en    <= outbuff_wr_en; 
o_clear_all        <= clear_all; 

state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE; 
	elsif(rising_edge(i_clk)) then 
		current_state <= next_state; 
	end if; 
end process; 


next_state_comb: process(current_state,i_data_loaded,i_start, i_exp_ready,i_inbuff_valid,i_inbuff_empty,element_counter,i_num_elements,i_exp_done,i_summing_complete,i_divsion_complete) 
begin 
	exp_fifo_select <= '0'; 
	controller_ready <= '0'; 
	exp_complete <= '0'; 
	softmax_complete <= '0'; 
	inbuff_rd_en <= '0'; 
	clear_all <= '0'; 

	case current_state is 
	
		when IDLE => 
			controller_ready <= '1'; 
			exp_fifo_select <= '0'; 
			if(i_exp_ready = '1' and i_inbuff_empty = '0' and i_start = '1') then 
				next_state <= CALC_EXP; 
			else 
				next_state <= IDLE; 
			end if; 
	
		when CALC_EXP =>
			controller_ready <= '1';
			exp_fifo_select <= '0'; 
			if((i_inbuff_empty = '0' and i_exp_ready = '1' and i_data_loaded = '0') or (i_data_loaded = '1' and i_exp_ready = '1')) then 
				controller_ready <= '1';
				if (element_counter < unsigned(i_num_elements)) then 
					next_state <= EXP_HOLD; 
					inbuff_rd_en <= '1'; 
				else 
					next_state <= SUM_EXP; 
					--exp_complete <= '1'; 
					inbuff_rd_en <= '1';
				end if; 
			else 
				controller_ready <= '0';
				inbuff_rd_en <= '0'; 
				next_state <= CALC_EXP; 
			end if; 

		when EXP_HOLD => 
			controller_ready <= '1';
			if(i_exp_done = '0') then 
				next_state <= EXP_HOLD; 
			else 
				if(element_counter < unsigned(i_num_elements)) then 
				next_state <= CALC_EXP;
				else 
				next_state <= SUM_EXP;
				end if; 
			end if;

		when SUM_EXP =>
			exp_complete <= '1';
			exp_fifo_select <= '1'; 
			controller_ready <= '0'; 
			if(i_summing_complete = '1') then 
				next_state <= DIVIDE; 
			else 
				next_state <= SUM_EXP; 
			end if; 
	
		when DIVIDE => 
			exp_fifo_select <= '0'; 
			controller_ready <= '0'; 
			if(i_divsion_complete = '0') then 
				next_state <= DIVIDE;
			else 
				next_state <= CLEAR_HOLD;
				
			end if; 

	
		when CLEAR_HOLD =>--when SAVE => 
			clear_all <= '1'; 
			next_state <= IDLE;
			softmax_complete <= '1';  


	
	
		when others => 
			next_state <= IDLE; 
		
	end case; 

end process; 




sequential_logic: process(i_clk, i_reset_n)
begin 
	if(i_reset_n = '0') then
		element_counter <= (others => '0');  
		exp_input       <= (others => '0'); 
		exp_input_valid <= '0'; 
		outbuff_wr_en <= '0'; 
		outbuff_din <= (others => '0'); 
	
	
	elsif(rising_edge(i_clk)) then 
		element_counter <= element_counter; 
		exp_input       <= exp_input; 
		exp_input_valid <= exp_input_valid; 
		outbuff_din <= outbuff_din; 
		outbuff_wr_en <= outbuff_wr_en; 
		
		case current_state is 
			
			when IDLE => 
				element_counter <= (others => '0');  
				exp_input       <= (others => '0'); 
				exp_input_valid <= '0'; 

			when CALC_EXP => 
				if((i_inbuff_empty = '0' and i_exp_ready = '1' and i_data_loaded = '0') or (i_data_loaded = '1' and i_exp_ready = '1')) then 
					if (element_counter < unsigned(i_num_elements)) then 
					  element_counter <= element_counter + 1; 
					  exp_input <= i_inbuff_dout; 
					  exp_input_valid <= not(i_inbuff_empty); 
					else 
					  element_counter <= (others => '0'); 
					  exp_input <= i_inbuff_dout; 
					  exp_input_valid <= not(i_inbuff_empty); 
					end if; 
				else 
					exp_input <= (others => '0'); 
					exp_input_valid <= '0'; 
					element_counter <= element_counter;  
				end if; 

			when EXP_HOLD => 
				exp_input_valid <= '0'; 


			when SUM_EXP => 
				null;
			
			when DIVIDE => 
				if(i_outbuff_full = '0' and i_quotient_result_valid = '1' and i_divsion_complete = '0') then 
					outbuff_wr_en <= '1'; 
					outbuff_din <= i_quotient_result; 
				else 
					outbuff_wr_en <= '0'; 
					outbuff_din <= (others => '0');  
				end if;  
			
			
			--when SAVE =>
			when CLEAR_HOLD => 
				null;  

			
			when others => 
				element_counter <= (others => '0');  
				exp_input       <= (others => '0'); 
				exp_input_valid <= '0'; 
				
			end case; 
	
	end if; 
	
end process; 


end arch; 