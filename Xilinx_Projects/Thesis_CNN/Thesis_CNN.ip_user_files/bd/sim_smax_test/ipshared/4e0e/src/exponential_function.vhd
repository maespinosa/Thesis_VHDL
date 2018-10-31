
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--library Softmax_Layer; 
--use Softmax_Layer.cnn_types.all;


entity exponential_function is 
generic ( 
	g_mult_delay : integer := 8;
	g_adder_delay : integer := 10; 
	g_data_width : integer := 32
	); 
port (
	i_clk : in std_logic; 
	i_reset_n : in std_logic; 
	i_data : in std_logic_vector(g_data_width-1 downto 0); 
	i_valid : in std_logic; 
	i_ready : in std_logic; 
	o_data : out std_logic_vector(g_data_width-1 downto 0); 
	o_valid : out std_logic; 
	o_ready : out std_logic; 
	o_exp_done : out std_logic;
	i_fifo_full : in std_logic; 
	i_fifo_almost_full : in std_logic

); 
end exponential_function; 

architecture arch of exponential_function is 

component softmax_multiply_32bit IS
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;

component softmax_adder_32bit IS
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    clk : IN STD_LOGIC;
    result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;

type factorial_set is array(23 downto 0) of std_logic_vector(g_data_width-1 downto 0); 
signal factorials : factorial_set; 

type exponential_state is (IDLE, MULT_INPUT, MULT_INPUT_HOLD, MULT_FACT, MULT_FACT_HOLD, SUM_ALL, SUM_HOLD, WRITE_RESULT); 
signal current_state : exponential_state; 
signal next_state : exponential_state; 

signal valid_result : std_logic; 
signal function_ready : std_logic; 
signal step_counter : unsigned(7 downto 0); 
signal multiplication_counter : unsigned(7 downto 0);  
signal hold_counter : unsigned(7 downto 0); 
signal sum_counter : unsigned(7 downto 0); 


signal multiplicand_a : std_logic_vector(g_data_width-1 downto 0); 
signal multiplicand_b : std_logic_vector(g_data_width-1 downto 0); 
signal product : std_logic_vector(g_data_width-1 downto 0); 
signal augend : std_logic_vector(g_data_width-1 downto 0); 
signal addend : std_logic_vector(g_data_width-1 downto 0); 
signal sum : std_logic_vector(g_data_width-1 downto 0); 

signal data_reg : std_logic_vector(g_data_width-1 downto 0); 
type array_type_varx32bit is array(integer range <>) of std_logic_vector(g_data_width-1 downto 0); 
signal sum_array : array_type_varx32bit(23 downto 0); 

signal mult_reg : std_logic_vector(g_data_width-1 downto 0); 

signal fifo_data : std_logic_vector(g_data_width-1 downto 0); 
signal fifo_wr_en : std_logic; 

signal exp_done : std_logic;



begin 

o_data <= fifo_data; --sum; 
o_valid <= fifo_wr_en; -- valid_result; 
o_ready <= function_ready; 
o_exp_done <= exp_done;

factorials(0) 	<= x"3F800000"; -- 0! = 1  1/0! = 1
factorials(1) 	<= x"3F800000"; -- 1! = 1  1/
factorials(2) 	<= x"3F000000"; -- 2! = 2
factorials(3) 	<= x"3E2A0000"; -- 3! = 6
factorials(4) 	<= x"3D2A0000"; -- 4! = 24
factorials(5) 	<= x"3C080000"; -- 5! = 120
factorials(6) 	<= x"3AB60000"; -- 6! = 720
factorials(7) 	<= x"39500000"; -- 7! = 5040
factorials(8) 	<= x"37D00000";
factorials(9) 	<= x"36380000";
factorials(10) 	<= x"34930000";
factorials(11) 	<= x"32D70000";
factorials(12) 	<= x"310F0000";
factorials(13) 	<= x"2F300000";
factorials(14) 	<= x"2D490000";
factorials(15) 	<= x"2B570000";
factorials(16) 	<= x"29570000";
factorials(17) 	<= x"274A0000";
factorials(18) 	<= x"25340000";
factorials(19) 	<= x"23170000";
factorials(20) 	<= x"20F20000";
factorials(21) 	<= x"1EB80000";
factorials(22) 	<= x"1C860000";
factorials(23) 	<= x"1A3B0000";



multiplier : softmax_multiply_32bit
port map(
    a => multiplicand_a, 
    b => multiplicand_b, 
    clk => i_clk, 
    result => product
); 


adder : softmax_adder_32bit
port map(
    a => augend, 
    b => addend, 
    clk => i_clk, 
    result => sum
); 


state_transition : process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		current_state <= IDLE; 
	elsif(rising_edge(i_clk)) then 
		current_state <= next_state; 
	end if; 
end process; 
		

next_state_comb : process(current_state,i_ready,i_valid,step_counter,hold_counter,sum_counter,i_fifo_full,i_fifo_almost_full) 
begin
	function_ready <= '0';
	exp_done <= '0'; 

	case current_state is 
	
	when IDLE => 
		function_ready <= '1'; 
		if(i_ready = '1' and i_valid = '1') then 
			next_state <= MULT_INPUT; 
		else 
			next_state <= IDLE; 
		end if; 

	
	
	when MULT_INPUT => 
		next_state <= MULT_INPUT; 
		function_ready <= '1';

		if(i_valid = '1') then 
			function_ready <= '0';
			if(step_counter = 0) then 
				next_state <= MULT_INPUT; 
			elsif(step_counter = 1) then 
				next_state <= MULT_INPUT; 
			elsif(step_counter = 2) then 
				next_state <= MULT_INPUT_HOLD; 
			elsif(step_counter > 2) then -- and step_counter < 23 and multiplication_counter < step_counter) then 
				next_state <= MULT_INPUT_HOLD; 
			--elsif(step_counter > 2 and step_counter < 23 and multiplication_counter = step_counter) then 
			--	next_state <= MULT_INPUT_HOLD; 
			else 
				next_state <= MULT_INPUT_HOLD; 
			end if;
		end if; 

	when MULT_INPUT_HOLD => 
		next_state <= MULT_INPUT_HOLD; 
		if(hold_counter < g_mult_delay-1) then 
			next_state <= MULT_INPUT_HOLD; 
		else 
			next_state <= MULT_FACT; 
		end if; 
			
	
	when MULT_FACT => 
		next_state <= MULT_FACT_HOLD; 
	

	when MULT_FACT_HOLD => 
		next_state <= MULT_FACT_HOLD; 
		if(hold_counter < g_mult_delay-1) then 
			next_state <= MULT_FACT_HOLD; 
		else 
			if(step_counter < 23) then 
				next_state <= MULT_INPUT; 
			else 
				next_state <= SUM_ALL; 
			end if; 
		end if; 

	when SUM_ALL => 
		next_state <= SUM_HOLD; 
		--if(sum_counter = 0) then 
		--	next_state <= SUM_ALL; 
		--elsif(sum_counter < 23 and sum_counter > 0) then 
		--	next_state <= SUM_HOLD; 
		--else 
		--	next_state <= SUM_HOLD; 
		--end if; 


	when SUM_HOLD => 
		next_state <= SUM_HOLD; 
		if(hold_counter < g_adder_delay-1) then 
			next_state <= SUM_HOLD; 
		else 
			if(sum_counter < 23) then 
				next_state <= SUM_ALL; 
			else 
				next_state <= WRITE_RESULT; 
			end if; 

		end if; 

	when WRITE_RESULT => 
		if(i_fifo_full = '0' and i_fifo_almost_full = '0') then 
			next_state <= IDLE; 
			exp_done <= '1';
		else 
			next_state <= WRITE_RESULT; 
		end if; 


	
	when others => 
		next_state <= IDLE; 
	
	
	end case; 
	

end process;


sequential_logic: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		step_counter 			<= (others => '0'); 
		multiplication_counter 	<= (others => '0'); 
		hold_counter 			<= (others => '0'); 
		sum_counter				<= (others => '0'); 
		data_reg				<= (others => '0'); 
		multiplicand_a			<= (others => '0'); 
		multiplicand_b			<= (others => '0'); 
		addend					<= (others => '0'); 
		augend					<= (others => '0'); 
		valid_result			<= '0'; 
		sum_array 				<= (others => (others => '0')); 
		mult_reg				<= (others => '0'); 
		fifo_data				<= (others => '0'); 
		fifo_wr_en				<= '0'; 

	elsif(rising_edge(i_clk)) then 
		step_counter 			<= step_counter; 
		multiplication_counter 	<= multiplication_counter; 
		hold_counter 			<= hold_counter; 
		sum_counter				<= sum_counter; 
		data_reg 				<= data_reg; 
		multiplicand_a			<= multiplicand_a; 
		multiplicand_b			<= multiplicand_b; 
		addend					<= addend; 
		augend					<= augend; 
		valid_result			<= valid_result; 
		sum_array				<= sum_array; 
		mult_reg				<= mult_reg; 
		fifo_data				<= fifo_data; 
		fifo_wr_en				<= fifo_wr_en; 

		case current_state is 

		when IDLE => 
			step_counter 			<= (others => '0'); 
			multiplication_counter 	<= (others => '0'); 
			hold_counter 			<= (others => '0'); 
			sum_counter				<= (others => '0'); 
			multiplicand_a			<= (others => '0'); 
			multiplicand_b			<= (others => '0'); 
			addend					<= (others => '0'); 
			augend					<= (others => '0'); 
			valid_result			<= '0'; 
			mult_reg				<= (others => '0'); 
			fifo_data				<= (others => '0'); 
			fifo_wr_en				<= '0'; 
			
			if(i_ready = '1' and i_valid = '1') then 
				data_reg <= i_data; 
			else 
				data_reg <= (others => '0'); 
			end if;  

		when MULT_INPUT => 
			if(i_valid = '1') then 
				if(step_counter = 0) then 
					sum_array(0) <= x"3f800000"; 
					step_counter <= step_counter + 1; 
					mult_reg <= x"3f800000"; 
				elsif(step_counter = 1) then 
					sum_array(1) <= data_reg; 
					step_counter <= step_counter + 1; 
					mult_reg <= data_reg; 
				elsif(step_counter = 2) then 
					multiplicand_a <= data_reg; 
					multiplicand_b <= data_reg; 
				elsif(step_counter > 2) then --and step_counter < 23 and multiplication_counter < step_counter) then 
					multiplicand_a <= data_reg; 
					multiplicand_b <= mult_reg; 
					--multiplication_counter <= multiplication_counter + 1; 
				--elsif(step_counter > 2 and step_counter < 23 and multiplication_counter = step_counter) then 
				--	multiplicand_a <= data_reg; 
				--	multiplicand_b <= mult_reg; 
					--multiplication_counter <= (others => '0'); 
				else 
					--multiplication_counter <= (others => '0'); 
					multiplicand_a <= data_reg; 
					multiplicand_b <= mult_reg; 
				end if;
			end if; 

		when MULT_INPUT_HOLD => 
			if(hold_counter < g_mult_delay-1) then 
				hold_counter <= hold_counter + 1; 
			else 
				hold_counter <= (others => '0'); 
				mult_reg <= product; 
			end if; 


		when MULT_FACT => 
			multiplicand_a <= factorials(to_integer(step_counter)); 
			multiplicand_b <= product; 


		when MULT_FACT_HOLD => 
			if(hold_counter < g_mult_delay-1) then 
				hold_counter <= hold_counter + 1; 
			else 
				hold_counter <= (others => '0'); 
				step_counter <= step_counter + 1;
				sum_array(to_integer(step_counter)) <= product;  
			end if; 

		when SUM_ALL => 
			if(sum_counter = 0) then 
				augend <= sum_array(0); 
				addend <= sum_array(1); 
				sum_counter <= sum_counter + 2; 
			elsif(sum_counter < 23 and sum_counter >= 2) then 
				augend <= sum_array(to_integer(sum_counter)); 
				addend <= sum; 
				sum_counter <= sum_counter + 1; 
			else 
				sum_counter <= (others => '0'); 
			end if; 

		when SUM_HOLD => 
			if(hold_counter < g_adder_delay-1) then 
				hold_counter <= hold_counter + 1; 
			else 
				hold_counter <= (others => '0'); 
				if(sum_counter < 23) then 
					valid_result <= '0'; 
				else 
					valid_result <= '1'; 
				end if; 
			end if; 

		when WRITE_RESULT => 
			if(i_fifo_full = '0' and i_fifo_almost_full = '0') then 
				fifo_data <= sum; 
				fifo_wr_en <= '1'; 
				data_reg <= i_data;
			else 
				fifo_data <= (others => '0'); 
				fifo_wr_en <= '0'; 
			end if; 


		when others => 
			step_counter 			<= (others => '0'); 
			multiplication_counter 	<= (others => '0'); 
			hold_counter 			<= (others => '0'); 
			sum_counter				<= (others => '0'); 
			multiplicand_a			<= (others => '0'); 
			multiplicand_b			<= (others => '0'); 
			addend					<= (others => '0'); 
			augend					<= (others => '0'); 
			valid_result			<= '0'; 


		end case; 
	
	end if; 
	
end process; 












end arch; 
