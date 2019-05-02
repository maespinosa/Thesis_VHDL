
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--library Softmax_Layer; 
--use Softmax_Layer.cnn_types.all;

entity softmax_divider_wrapper is
  generic(
       -- name : type := value
       g_data_width : integer := 32;
	   g_divider_delay : integer := 28
  );
  port(
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
	
	i_exp_fifo_dout : in std_logic_vector(g_data_width-1 downto 0); 
	i_exp_fifo_valid : in std_logic; 
	i_exp_fifo_empty : in std_logic; 
	i_exp_fifo_almost_empty : in std_logic; 
	i_summing_complete : in std_logic; 
	i_divisor : in std_logic_vector(g_data_width-1 downto 0); 
	i_clear_all : in std_logic;
	i_num_elements : in std_logic_vector(15 downto 0); 
	
	o_exp_rd_en : out std_logic; 
	o_division_complete : out std_logic; 
	o_quotient_result : out std_logic_vector(g_data_width-1 downto 0); 
	o_quotient_result_valid : out std_logic; 
	--CHIPSCOPE SIGNALS
	ila_smax_dw_fsm_state : out std_logic_vector(3 downto 0); 
	ila_smax_dw_divisor : out std_logic_vector(g_data_width-1 downto 0); 
	ila_smax_dw_dividend : out std_logic_vector(g_data_width-1 downto 0); 
	ila_smax_dw_quotient : out std_logic_vector(g_data_width-1 downto 0); 
	ila_smax_dw_rd_en : out std_logic; 
	ila_smax_dw_division_complete : out std_logic; 
	ila_smax_dw_hold_counter : out unsigned(7 downto 0); 
	ila_smax_dw_quotient_counter : out unsigned(15 downto 0); 
	ila_smax_dw_division_reg : out std_logic_vector(g_data_width-1 downto 0); 
	ila_smax_dw_quotient_result_valid : out std_logic
  );
end softmax_divider_wrapper;

architecture arch of softmax_divider_wrapper is


component softmax_divider_32bit IS
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;


signal divisor : std_logic_vector(g_data_width-1 downto 0); 
signal dividend : std_logic_vector(g_data_width-1 downto 0); 
signal quotient : std_logic_vector(g_data_width-1 downto 0); 
signal rd_en : std_logic; 
signal division_complete : std_logic; 


type quotientmer_state is (IDLE, SET_OPERANDS, DIVIDER_HOLD, CLEAR_HOLD); 
signal current_state 		: quotientmer_state; 
signal next_state			: quotientmer_state;   

signal hold_counter : unsigned(7 downto 0); 
signal quotient_counter : unsigned(15 downto 0); 

signal division_reg : std_logic_vector(g_data_width-1 downto 0); 
signal quotient_result_valid : std_logic; 

signal fsm_state : std_logic_vector(3 downto 0); 

begin 


o_exp_rd_en <= rd_en; 
o_division_complete <= division_complete; 
o_quotient_result <= division_reg; 
o_quotient_result_valid <= quotient_result_valid; 
--o_quotient_result_valid <= quotient_result_valid; 	


ila_smax_dw_fsm_state 				<= fsm_state;
ila_smax_dw_divisor 				<= divisor;
ila_smax_dw_dividend 				<= dividend;
ila_smax_dw_quotient 				<= quotient;
ila_smax_dw_rd_en 					<= rd_en;
ila_smax_dw_division_complete 		<= division_complete;
ila_smax_dw_hold_counter 			<= hold_counter;
ila_smax_dw_quotient_counter 		<= quotient_counter;
ila_smax_dw_division_reg 			<= division_reg;
ila_smax_dw_quotient_result_valid 	<= quotient_result_valid;

	

divider: softmax_divider_32bit
  PORT MAP(
    a		=> dividend, 
    b		=> divisor, 
    clk		=> i_clk, 
    result	=> quotient
  );



 
state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE; 
	elsif(rising_edge(i_clk)) then 
		current_state <= next_state; 
	end if; 
end process; 


next_state_comb: process(current_state,i_summing_complete, i_exp_fifo_valid, i_exp_fifo_empty,quotient_counter,i_num_elements,hold_counter,i_clear_all) 
begin 
	rd_en <= '0'; 
	fsm_state <= "0000"; 
	

	case current_state is 
	
	when IDLE => 
		fsm_state <= "0000"; 
		rd_en <= '0'; 
		if(i_summing_complete = '1' and i_exp_fifo_valid = '1' and i_exp_fifo_empty = '0') then 
			next_state <= SET_OPERANDS; 
		else 
			next_state <= IDLE; 
		end if; 
		
	
	when SET_OPERANDS => 
		fsm_state <= "0001"; 
		next_state <= DIVIDER_HOLD; 
		if(quotient_counter < unsigned(i_num_elements)) then 
			rd_en <= '1'; 
		else 
			rd_en <= '0'; 
		end if; 

	
	when DIVIDER_HOLD => 
		fsm_state <= "0010"; 
		rd_en <= '0'; 
		if(hold_counter < g_divider_delay) then 
			next_state <= DIVIDER_HOLD; 
		else
			next_state <= SET_OPERANDS;
			if(quotient_counter < unsigned(i_num_elements)) then 
				next_state <= SET_OPERANDS; 
			else 
				next_state <= CLEAR_HOLD; 
			end if; 
			
		end if; 


    when CLEAR_HOLD =>
		fsm_state <= "0011"; 
    	if(i_clear_all = '1') then
    		next_state <= IDLE; 
    	else
    		next_state <= CLEAR_HOLD; 
    	end if; 
	
	when others =>
		fsm_state <= "0100"; 
		next_state <= IDLE; 
		
	end case; 

end process; 




sequential_logic: process(i_clk, i_reset_n)
begin 
	if(i_reset_n = '0') then 
		hold_counter 			<= (others => '0'); 
		quotient_counter 		<= (others => '0'); 
		division_complete 		<= '0'; 
		divisor 				<= (others => '0'); 
		dividend 				<= (others => '0'); 
		division_reg 			<= (others => '0'); 
		quotient_result_valid <= '0'; 
		
	elsif(rising_edge(i_clk)) then 
		hold_counter 			<= hold_counter; 
		quotient_counter 		<= quotient_counter; 
		division_complete 		<= division_complete; 
		divisor 				<= divisor; 
		dividend 				<= dividend; 
		division_reg 			<= division_reg; 
		quotient_result_valid   <= quotient_result_valid; 
	
		case current_state is 
		
		when IDLE => 
			hold_counter 		<= (others => '0'); 
			quotient_counter 	<= (others => '0'); 
			division_complete 	<= '0'; 
			divisor 			<= (others => '0'); 
			dividend 			<= (others => '0'); 
			division_reg 		<= (others => '0'); 
			quotient_result_valid <= '0'; 
			
		when SET_OPERANDS => 
			if(quotient_counter < unsigned(i_num_elements)) then 
				quotient_counter 	<= quotient_counter + 1; 
				divisor 			<= i_divisor;  
				dividend 			<= i_exp_fifo_dout; 
				quotient_result_valid <= '0'; 
			else 
				quotient_counter <= (others => '0'); 
				quotient_result_valid <= '0'; 
			end if; 
				
		
		when DIVIDER_HOLD => 
			if(hold_counter < g_divider_delay) then 
				hold_counter <= hold_counter + 1; 
			else
				hold_counter <= (others => '0'); 
			
				if(quotient_counter < unsigned(i_num_elements)) then 
					--division_complete <= '0'; 
					division_reg <= quotient;
					quotient_result_valid <= '1'; 
				else 
					--division_complete <= '1'; 
					division_reg <= quotient;
					quotient_result_valid <= '1'; 
					
				end if; 
				
			end if; 
			
		when CLEAR_HOLD => 
			division_complete <= '1'; 	
		
		when others => 
			hold_counter 		<= (others => '0'); 
			quotient_counter 	<= (others => '0'); 
			division_complete 	<= '0'; 
			divisor 			<= (others => '0'); 
			dividend 			<= (others => '0'); 
			division_reg 		<= (others => '0'); 
			quotient_result_valid <= '0'; 
		
		end case; 
	
	end if; 
	
end process; 

end arch; 
