
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--library Softmax_Layer; 
--use Softmax_Layer.cnn_types.all;

entity softmax_adder_wrapper is
  generic(
       -- name : type := value
       g_data_width : integer := 32; 
	   g_adder_delay : integer := 8
  );
  port(
    i_clk : in STD_LOGIC;
    i_reset_n : in STD_LOGIC;
	
	i_exp_fifo_dout : in std_logic_vector(g_data_width-1 downto 0); 
	i_exp_fifo_valid : in std_logic; 
	i_exp_fifo_empty : in std_logic; 
	i_exp_fifo_almost_empty : in std_logic; 
	i_exp_complete : in std_logic; 
	i_division_complete : in std_logic; 
	i_num_elements : in std_logic_vector(15 downto 0); 
	i_clear_all : in std_logic; 
	o_exp_rd_en : out std_logic; 
	o_summing_complete : out std_logic; 
	o_sum_result : out std_logic_vector(g_data_width-1 downto 0)
	--o_sum_result_valid : out std_logic
	   
  );
end softmax_adder_wrapper;

architecture arch of softmax_adder_wrapper is


component softmax_adder_32bit IS
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;


signal addend : std_logic_vector(g_data_width-1 downto 0); 
signal augend : std_logic_vector(g_data_width-1 downto 0); 
signal sum : std_logic_vector(g_data_width-1 downto 0); 
signal rd_en : std_logic; 
signal summing_complete : std_logic; 


type summer_state is (IDLE, SET_OPERANDS, ADDER_HOLD, DIVIDER_HOLD); 
signal current_state 		: summer_state; 
signal next_state			: summer_state;   

signal hold_counter : unsigned(7 downto 0); 
signal sum_counter : unsigned(15 downto 0); 

signal sum_reg : std_logic_vector(g_data_width-1 downto 0); 
signal sum_result_valid : std_logic; 

begin 


o_exp_rd_en <= rd_en; 
o_summing_complete <= summing_complete; 
o_sum_result <= sum_reg; 
--o_sum_result_valid <= sum_result_valid; 

adder: softmax_adder_32bit
  PORT MAP(
    a		=> addend, 
    b		=> augend, 
    clk		=> i_clk, 
    result	=> sum
  );



 
state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE; 
	elsif(rising_edge(i_clk)) then 
		current_state <= next_state; 
	end if; 
end process; 


next_state_comb: process(current_state,i_exp_complete,i_exp_fifo_valid,i_exp_fifo_empty,sum_counter,i_num_elements,hold_counter,i_division_complete,i_clear_all) 
begin 
	rd_en <= '0'; 
	

	case current_state is 
	
	when IDLE => 
		rd_en <= '0'; 
		if(i_exp_complete = '1' and i_exp_fifo_empty = '0') then 
			next_state <= SET_OPERANDS; 
		else 
			next_state <= IDLE; 
		end if; 
		
	
	when SET_OPERANDS => 
		next_state <= ADDER_HOLD; 
		--if(sum_counter < unsigned(i_num_elements)-1) then 
			rd_en <= '1'; 
		--else 
			--rd_en <= '0'; 
		--end if; 

	
	when ADDER_HOLD => 
		rd_en <= '0'; 
		if(hold_counter < g_adder_delay) then 
			next_state <= ADDER_HOLD; 
		else
			next_state <= SET_OPERANDS;
			if(sum_counter < unsigned(i_num_elements)) then 
				next_state <= SET_OPERANDS; 
			else 
				next_state <= DIVIDER_HOLD; 
			end if; 
			
		end if;

	when DIVIDER_HOLD =>
		if(i_division_complete = '1' and i_clear_all = '1') then
			next_state <= IDLE; 
		else 
			next_state <= DIVIDER_HOLD; 
		end if; 

	
	when others => 
		next_state <= IDLE; 
		
	end case; 

end process; 




sequential_logic: process(i_clk, i_reset_n)
begin 
	if(i_reset_n = '0') then 
		hold_counter <= (others => '0'); 
		sum_counter <= (others => '0'); 
		summing_complete <= '0'; 
		addend <= (others => '0'); 
		augend <= (others => '0'); 
		sum_reg <= (others => '0'); 
		
	elsif(rising_edge(i_clk)) then 
		hold_counter <= hold_counter; 
		sum_counter <= sum_counter; 
		summing_complete <= summing_complete; 
		addend <= addend; 
		augend <= augend; 
		sum_reg <= sum_reg; 
	
		case current_state is 
		
		when IDLE => 
			hold_counter <= (others => '0'); 
			sum_counter <= (others => '0'); 
			summing_complete <= '0'; 
			addend <= (others => '0'); 
			augend <= (others => '0'); 
			sum_reg <= (others => '0'); 
			
		when SET_OPERANDS => 
			--if(sum_counter < unsigned(i_num_elements)) then 
				sum_counter <= sum_counter + 1; 
				addend <= i_exp_fifo_dout; 
				augend <= sum_reg;
			--else 
				--sum_counter <= (others => '0'); 
			--end if; 
				
		
		when ADDER_HOLD => 
			if(hold_counter < g_adder_delay) then 
				hold_counter <= hold_counter + 1; 
			else
				hold_counter <= (others => '0'); 
				sum_reg <= sum; 
				
				if(sum_counter < unsigned(i_num_elements)) then 
					summing_complete <= '0'; 
				else 
					summing_complete <= '1'; 
					
				end if; 
				
			end if; 
			
		when DIVIDER_HOLD => 
			null; 	
		
		when others => 
			hold_counter <= (others => '0'); 
			sum_counter <= (others => '0'); 
			summing_complete <= '0'; 
			addend <= (others => '0'); 
			augend <= (others => '0'); 
			sum_reg <= (others => '0'); 
			
		end case; 
	
	end if; 
	
end process; 





end arch; 