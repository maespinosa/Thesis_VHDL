----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
-- 
-- Description: Controller for the OV760 camera - transferes registers to the 
--              camera over an I2C like bus
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OV5462_SCCB_CNTRL is	 
	generic(
		g_slave_id   		: std_logic_vector(7 downto 0) := 0x"78"
	); 
    Port ( 
		i_clk   			: in STD_LOGIC; 
		i_reset_n 			: in std_logic;
		i_i2c_addr 			: in std_logic(15 downto 0); 
		i_i2c_data			: in std_logic(7 downto 0); 
		i_i2c_rw			: in std_logic; 
		i_i2c_en			: in std_logic; 
		
		o_config_done	 	: out std_logic; 
		o_busy 				: out std_logic; 
		o_sioc 				: out std_logic	 
	    io_siod  			: inout std_logic_vector(7 downto 0)
		);
end OV5462_SCCB_CNTRL;

architecture Behavioral of OV5462_SCCB_CNTRL is

type siod_state_type is (IDLE, START_OF_TRANSMISSION, PHASE_1, PHASE_2_HI, PHASE_2_LO, PHASE_3, END_OF_TRANSMISSION); 
signal siod_current_state 	: siod_state_type; 	 	 
signal siod_next_state 		: siod_state_type;		

type sioc_state_type is (IDLE, START_OF_TRANSMISSION, OPERATIONAL_HI, OPERATIONAL_LO, END_OF_TRANSMISSION); 
signal sioc_current_state 	: sioc_state_type; 	 	 
signal sioc_next_state 		: sioc_state_type;		

signal busy 		: std_logic; 
signal sioc 		: std_logic; 
signal config_done 	: std_logic;  
signal siod			: std_logic_vector(7 downto 0); 

begin
	
o_busy 			<= busy; 
o_sioc 			<= sioc; 
o_config_done 	<= config_done; 
io_siod 		<= siod when 

sioc_state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		sioc_current_state <= IDLE: 
	elsif(rising_edge(i_clk)) then 
		sioc_current_state <= sioc_next_state; 
	end if; 
end process; 

sioc_next_state_comb: process(all) 
begin 
	
	sioc <= '1'; 
	busy <= '0'; 
	
	case sioc_current_state is
		when IDLE =>  
			sioc <= '1'; 
			busy <= '0'; 
			if(siod_counter > 0) then 
				sioc_next_state <= START_OF_TRANSMISSION; 
			else 
				sioc_next_state <= IDLE; 
			end if; 
		
		when START_OF_TRANSMISSION =>  
			busy <= '1'
			if(siod_counter = 200) then 
				sioc_next_state <= OPERATIONAL_HI; 
				sioc <= '0'; 
			else 
				sioc_next_state <= START_OF_TRANSMISSION; 	
				sioc <= '1'; 
			end if; 
		
		when OPERATIONAL_HI => 	  
			sioc <= '1'; 
			busy <= '1'; 
			if(sioc_counter < 1000) then 
			   sioc_next_state <= OPERATIONAL_HI; 
			else 
			   sioc_next_state <= OPERATIONAL_LO; 	
			end if; 
		
		when OPERATIONAL_LO => 
			sioc <= '0'; 
			busy <= '1'; 
			if(sioc_counter < 1000) then 
			   sioc_next_state <= OPERATIONAL_LO; 
			else 
			   sioc_next_state <= OPERATIONAL_HI; 	
			end if; 
		
		when END_OF_TRANSMISSION => 
		
		
		
		when others => 
	end case; 
end process; 

	
generate_scl: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 	
		sioc_counter <= 0; 
	elsif(rising_edge(i_clk)) then 
		sioc_counter <= sioc_counter; 
		
		case sioc_current_state is
			when IDLE =>
				sioc_counter <= 0; 
			
			when START_OF_TRANSMISSION => 	
				sioc_counter <= 0; 	
			
			when OPERATIONAL_HI => 		
				if(sioc_counter < 1000) then 
				   sioc_counter <= sioc_counter + 1; 	
				else 
				   sioc_counter <= 0; 	
				end if; 
				
			when OPERATIONAL_LO => 	
				if(sioc_counter < 1000) then 
				   sioc_counter <= sioc_counter + 1; 	 
				else 
				   sioc_counter <= 0; 	
				end if; 
			
			when END_OF_TRANSMISSION => 
			when others => 
		end case; 
		
	end if; 
end process; 
	
		
	
siod_state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		siod_current_state <= IDLE: 
	elsif(rising_edge(i_clk)) then 
		siod_current_state <= siod_next_state; 
	end if; 
end process; 	


	
siod_next_state_comb: process(all) is 
begin 	
		 	
	case siod_current_state is 
		when IDLE => 
			if(i_i2c_ena <= '1') then 
				siod_next_state <= START_OF_TRANSMISSION; 
			else 
				siod_next_state <= IDLE; 
			end if; 
			
		
		when START_OF_TRANSMISSION => 
			if(siod_counter < 200) then 
				siod_next_state <= START_OF_TRANSMISSION;  
			else 
				siod_next_state <= PHASE_1;
			end if; 

		
		when PHASE_1 => --ID ADDRESS TRANSMISSION 
			if(bit_counter < 8) then 
			 	siod_next_state <= PHASE_1; 
			else 
				siod_next_state <= PHASE_2; 
			end if; 
			
		when PHASE_2_HI =>   
			if(bit_counter < 8) then 
			 	siod_next_state <= PHASE_2_HI; 
			else 
				siod_next_state <= PHASE_2_LO; 
			end if; 
			
		when PHASE_2_LO =>   
			if(bit_counter < 8) then 
			 	siod_next_state <= PHASE_2_LO; 
			else 
				siod_next_state <= PHASE_3; 
			end if; 
		
		when PHASE_3 =>
			if(bit_counter < 8) then 
			 	siod_next_state <= PHASE_3; 
			else 
				siod_next_state <= END_OF_TRANSMISSION; 
			end if; 
		
		when END_OF_TRANSMISSION => 
		
		when others => 
			siod_next_state <= IDLE; 
		
	end case; 
	
	
end process; 

siod_sequential_logic : process(i_clk, i_reset_n) is 
begin 
	if (i_reset_n <= '0') then 	  
		siod_counter <= 0; 	 
		siod <= 'Z'; 

	elsif(rising_edge(i_clk)) then
		siod_counter <= siod_counter; 	
		siod <= siod; 
		
		
		case siod_current_state is 
			when IDLE => 
				siod_counter <= 0;
				siod <= 'Z'; 
			
			when START_OF_TRANSMISSION => 
				if(siod_counter < 200) then 
					siod_counter <= siod_counter + 1; 
					siod <= '1'; 
				else 
					siod_counter <= 0; 
					siod <= '0'; 
				end if; 
			
				ID <= g_slave_address(7 downto 1) & (g_slave_address(0) or i_i2c_rw); 
			
			when PHASE_1 => --ID ADDRESS TRANSMISSION 
 				
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					siod <= ID(7); 
					ID <= ID(6 downto 0) & '0';	  
					if(bit_counter < 7) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0; 
					end if; 
					
				else 
					siod <= siod; 
					ID <= ID; 
				end if; 
				
				sub_address <= i_i2c_addr(15 downto 8); 
				
			when PHASE_2_HI => 
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					
					siod <= sub_address(7); 
                    sub_address <= sub_address(6 downto 0) & '0';	  
					if(bit_counter < 7) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0; 
					end if; 
				else 
					siod <= siod; 
					sub_address <= sub_address; 
				end if;    
			 	
				sub_address <= i_i2c_addr(7 downto 0); 
				
			when PHASE_2_LO => 
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					
					siod <= sub_address(7); 
                    sub_address <= sub_address(6 downto 0) & '0';	  
					if(bit_counter < 7) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0; 
					end if; 
				else 
					siod <= siod; 
					sub_address <= sub_address; 
				end if;    
				
				data <= i_i2c_data; 
				
			when PHASE_3 =>  
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					
					siod <= data(7); 
                    data <= data(6 downto 0) & '0';	  
					if(bit_counter < 7) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0; 
					end if; 
				else 
					siod <= siod; 
					data <= data; 
				end if; 
			when END_OF_TRANSMISSION => 
			
			when others => 
			
		end case; 
			
			
		
		
	end if; 
end process; 
	
end Behavioral;

