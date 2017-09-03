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
		g_slave_id   		: std_logic_vector(7 downto 0) := x"78"
	); 
    Port ( 
		i_clk   			: in STD_LOGIC; 
		i_reset_n 			: in std_logic;
		i_i2c_addr 			: in std_logic_vector(15 downto 0); 
		i_i2c_data			: in std_logic_vector(7 downto 0); 
		i_i2c_rw			: in std_logic; 
		i_i2c_ena			: in std_logic; 
		
		o_config_done	 	: out std_logic; 
		o_busy 				: out std_logic; 
		o_sioc 				: out std_logic;
		o_i2c_sent			: out std_logic; 
	    io_siod  			: inout std_logic; 
		
		o_siod_state_debug	: out std_logic_vector(4 downto 0); 
		o_sioc_state_debug 	: out std_logic_vector(2 downto 0)
		);
end OV5462_SCCB_CNTRL;

architecture Behavioral of OV5462_SCCB_CNTRL is

type siod_state_type is (IDLE, START_OF_TRANSMISSION, PHASE_1, PHASE_2_HI, PHASE_2_LO, PHASE_3, END_SDA, 
						WAIT_STATE, ACK_DONT_CARE_1, ACK_DONT_CARE_2, ACK_DONT_CARE_3, ACK_DONT_CARE_4, 
						ACK_WAIT_1, ACK_WAIT_2, ACK_WAIT_3, ACK_WAIT_4); 
signal siod_current_state 	: siod_state_type; 	 	 
signal siod_next_state 		: siod_state_type;		

type sioc_state_type is (IDLE, START_OF_TRANSMISSION, OPERATIONAL_HI, OPERATIONAL_LO, END_SCL); 
signal sioc_current_state 	: sioc_state_type; 	 	 
signal sioc_next_state 		: sioc_state_type;		

signal busy 		: std_logic; 
signal sioc 		: std_logic; 
signal config_done 	: std_logic;  
signal siod			: std_logic; 
signal i2c_sent		: std_logic; 
signal ID 			: std_logic_vector(8 downto 0); 
signal sub_address	: std_logic_vector(8 downto 0); 
signal data			: std_logic_vector(8 downto 0); 	 
signal siod_counter : integer; 
signal sioc_counter : integer; 
signal bit_counter 	: integer; 	  
signal tri_buff_en	: std_logic; 	
signal wait_counter : integer; 	 
signal repeat 		: std_logic; 
signal cut_clock 		: std_logic; 
signal siod_delayed	: std_logic_vector(63 downto 0); 
signal executed 	: std_logic;  
signal siod_state_debug : std_logic_vector(4 downto 0); 
signal sioc_state_debug : std_logic_vector(2 downto 0); 



begin
	
o_busy 			<= busy; 
o_sioc 			<= sioc; 
io_siod 		<= siod_delayed(63) when tri_buff_en = '0' else 
					'Z'; 	
--io_siod 		<= '1' when siod_delayed(63) = '1' else  
--					'0'; 
o_i2c_sent		<= i2c_sent;  
o_sioc_state_debug <= sioc_state_debug; 
o_siod_state_debug <= siod_state_debug; 


sioc_state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		sioc_current_state <= IDLE;  
	elsif(rising_edge(i_clk)) then 
		sioc_current_state <= sioc_next_state; 
	end if; 
end process; 

sioc_next_state_comb: process(sioc_current_state,siod_current_state,siod_counter,sioc_counter,cut_clock) 
begin 
	
	sioc <= '1'; 
	--busy <= '0'; 
	i2c_sent <= '0'; 	
	sioc_state_debug <= (others => '0'); 

	
	case sioc_current_state is
		when IDLE =>  
			sioc <= '1'; 
			--busy <= '0'; 	
			sioc_state_debug <= "001"; 
			if(siod_counter > 0) then 
				sioc_next_state <= START_OF_TRANSMISSION; 
			else 
				sioc_next_state <= IDLE; 
			end if; 
		
		when START_OF_TRANSMISSION =>  
			--busy <= '1'; 	 
			sioc <= '1';  
			sioc_state_debug <= "010"; 
			if(siod_counter < 1000) then 
				sioc_next_state <= START_OF_TRANSMISSION; 
			else 
				sioc_next_state <= OPERATIONAL_HI; 	
			end if; 
		
		when OPERATIONAL_HI => 	  
			--busy <= '1'; 
			sioc_state_debug <= "011"; 
			if(sioc_counter < 500) then 
			   sioc_next_state <= OPERATIONAL_HI; 
			else 
			   sioc_next_state <= OPERATIONAL_LO; 	
			end if; 
			
			if(siod_current_state = ACK_WAIT_1 or siod_current_state = ACK_WAIT_2 or 
				siod_current_state = ACK_WAIT_3 or siod_current_state = ACK_WAIT_4) then 
				sioc <= '0';   
			else 
				sioc <= '1'; 
			end if;  
		
		when OPERATIONAL_LO => 
			sioc <= '0'; 
			sioc_state_debug <= "100"; 
				
			if(sioc_counter < 500) then 
			   sioc_next_state <= OPERATIONAL_LO; 
			else 
				if(cut_clock = '1') then 
					sioc_next_state <= END_SCL; 
				else 
					
			   		sioc_next_state <= OPERATIONAL_HI;
				end if; 
				
			end if;  
			

			
		when END_SCL => 
			sioc_state_debug <= "101"; 	 
			sioc <= '1'; 
			if(sioc_counter < 2000) then 
				sioc_next_state <= END_SCL; 
				i2c_sent <= '0'; 
				--busy <= '1'; 
			else 
				sioc_next_state <= IDLE;  
				i2c_sent <= '1'; 
				--busy <= '0'; 
			end if; 
			

		
		
		when others => 	
			sioc_state_debug <= "110"; 
			sioc_next_state <= IDLE; 
		
		
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
				if(sioc_counter < 500) then 
				   sioc_counter <= sioc_counter + 1; 	
				else 
				   sioc_counter <= 0; 	
				end if; 
				

				
			when OPERATIONAL_LO => 	
				if(sioc_counter < 500) then 
				   sioc_counter <= sioc_counter + 1; 	 
				else 
				   sioc_counter <= 0; 	
				end if;   
				
			if(siod_counter > 0) then 
				sioc_counter <= 0; 	
			end if; 
			
			when END_SCL => 
				sioc_counter <= sioc_counter + 1;  
			when others => 	 
				sioc_counter <= 0; 
			
		end case; 
		
	end if; 
end process; 
	
		
	
siod_state_transition: process(i_clk, i_reset_n) 
begin 
	if(i_reset_n = '0') then 
		siod_current_state <= IDLE; 
	elsif(rising_edge(i_clk)) then 
		siod_current_state <= siod_next_state; 
	end if; 
end process; 	


	
siod_next_state_comb: process(siod_current_state,i_i2c_ena,siod_counter,sioc_current_state,sioc_next_state,bit_counter,siod_counter,executed,siod,wait_counter) is 
begin 
    tri_buff_en <= '1'; 
	--repeat <= '0';
	busy <= '0'; 
	siod_state_debug <= (others => '0'); 
		 	
	case siod_current_state is 
		when IDLE =>   
			siod_state_debug <=	"00001"; 
			busy <= '0'; 
			tri_buff_en <= '1';
			if(i_i2c_ena = '1') then 
				siod_next_state <= START_OF_TRANSMISSION; 
			else 
				siod_next_state <= IDLE; 
			end if; 
			
		
		when START_OF_TRANSMISSION => 
			siod_state_debug <=	"00010"; 
			tri_buff_en <= '0';   
			busy <= '1'; 
			if(siod_counter < 1000) then 
				siod_next_state <= START_OF_TRANSMISSION;  
			else 
				siod_next_state <= PHASE_1;
			end if; 

		
		when PHASE_1 => --ID ADDRESS TRANSMISSION 	
			siod_state_debug <=	"00011"; 
			tri_buff_en <= '0'; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO) then 
 
				if(bit_counter < 8) then 

					siod_next_state <= PHASE_1; 
			    else 
					siod_next_state <= ACK_DONT_CARE_1;  
				end if; 
			else 
				siod_next_state <= PHASE_1; 
			end if;   
		
		when ACK_DONT_CARE_1 =>   
			siod_state_debug <=	"00100"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '0'; 
			else 
				tri_buff_en <= '1';
			end if; 
			
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
			  	siod_next_state <= ACK_WAIT_1; 	 
			else 
				siod_next_state <= ACK_DONT_CARE_1; 	
			end if; 
			
		when ACK_WAIT_1 => 
		    siod_state_debug <=	"00101"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '1'; 
			else 
				tri_buff_en <= '0';
			end if; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
				if(siod = '0') then 
			    	siod_next_state <= PHASE_2_HI; 	   
				else
					siod_next_state <= ACK_WAIT_1; 
					--repeat <= '1'; 
				end if; 
 
			else 
				siod_next_state <= ACK_WAIT_1; 	
			end if; 
			
		when PHASE_2_HI => 
			siod_state_debug <=	"00110"; 
			tri_buff_en <= '0'; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
 
				if(bit_counter < 8) then 

					siod_next_state <= PHASE_2_HI; 
			    else 
					siod_next_state <= ACK_DONT_CARE_2;  
				end if; 
			else 
				siod_next_state <= PHASE_2_HI; 
			end if;    
		
		when ACK_DONT_CARE_2 => 
			siod_state_debug <=	"00111"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '0'; 
			else 
				tri_buff_en <= '1';
			end if; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
			  	siod_next_state <= ACK_WAIT_2; 	 
			else 
				siod_next_state <= ACK_DONT_CARE_2; 	
			end if; 
			
		when ACK_WAIT_2 => 
			siod_state_debug <=	"01000"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '1'; 
			else 
				tri_buff_en <= '0';
			end if; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
				if(siod = '0') then 
			    	siod_next_state <= PHASE_2_LO; 	   
				else
					siod_next_state <= ACK_WAIT_2;
					--repeat <= '1';
				end if; 
			else 
				siod_next_state <= ACK_WAIT_2; 	
			end if; 
			
			
		when PHASE_2_LO => 
			siod_state_debug <=	"01001"; 
			tri_buff_en <= '0'; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
 
				if(bit_counter < 8) then 

					siod_next_state <= PHASE_2_LO; 
			    else 
					siod_next_state <= ACK_DONT_CARE_3;  
				end if; 
			else 
				siod_next_state <= PHASE_2_LO; 
			end if;    
			
		when ACK_DONT_CARE_3 => 
			siod_state_debug <=	"01010"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '0'; 
			else 
				tri_buff_en <= '1';
			end if; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
			  	siod_next_state <= ACK_WAIT_3; 	 
			else 
				siod_next_state <= ACK_DONT_CARE_3; 	
			end if;    
			
		when ACK_WAIT_3 =>
			siod_state_debug <=	"01011"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '1'; 
			else 
				tri_buff_en <= '0';
			end if; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
				if(siod = '0') then 
			    	siod_next_state <= PHASE_3; 	   
				else
					siod_next_state <= ACK_WAIT_3;
					--repeat <= '1';
				end if;  
			else 
				siod_next_state <= ACK_WAIT_3; 	
			end if; 
		
		when PHASE_3 =>	
			siod_state_debug <=	"01100"; 
			tri_buff_en <= '0'; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
 
				if(bit_counter < 8) then 

					siod_next_state <= PHASE_3; 
			    else 
					siod_next_state <= ACK_DONT_CARE_4;  
				end if; 
			else 
				siod_next_state <= PHASE_3; 
			end if;  
			
		when ACK_DONT_CARE_4 => 
			siod_state_debug <=	"01101"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '0'; 
			else 
				tri_buff_en <= '1';
			end if; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
			  	siod_next_state <= ACK_WAIT_4; 	 
			else 
				siod_next_state <= ACK_DONT_CARE_4; 	
			end if; 
			
		when ACK_WAIT_4 => 
			siod_state_debug <=	"01110"; 
			if(siod_counter < 64 and executed = '0') then 	
				tri_buff_en <= '1'; 
			else 
				tri_buff_en <= '0';
			end if; 
			busy <= '1'; 
			if(sioc_current_state /= sioc_next_state and sioc_next_state = END_SCL)then 
				if(siod = '0') then 
			    	siod_next_state <= END_SDA; 	   
				else
					siod_next_state <= ACK_WAIT_4;
					--repeat <= '1';
				end if;   
			else 
				siod_next_state <= ACK_WAIT_4; 	
			end if; 
	
		when END_SDA => 
			siod_state_debug <=	"01111"; 
			busy <= '1'; 
			if(siod_counter < 2000) then 
				siod_next_state <= END_SDA;   
				tri_buff_en <= '0'; 
			else 
				siod_next_state <= WAIT_STATE; 
				tri_buff_en <= '1'; 
			end if;
			
		when WAIT_STATE => 	
			siod_state_debug <=	"10000"; 
			tri_buff_en <= '1'; 
			busy <= '1'; 
			if(wait_counter < 10000) then 
				siod_next_state <= WAIT_STATE;  
			else 
				siod_next_state <= IDLE;  
			end if; 
			

		
		when others => 	
			siod_state_debug <=	"10001"; 
			siod_next_state <= IDLE; 
		
	end case; 
	
	
end process; 

siod_sequential_logic : process(i_clk, i_reset_n) is 
begin 
	if (i_reset_n <= '0') then 	  
		siod_counter 	<= 0; 	 
		siod 			<= 'Z';  
		bit_counter 	<= 0;  
		ID 				<= (others => '0'); 
		sub_address 	<= (others => '0'); 
		data 			<= (others => '0');   
		wait_counter 	<= 0; 
		repeat 			<= '0';   
		cut_clock		<= '0';	
		siod_delayed	<= (others => '1');
		executed 		<= '0'; 

	elsif(rising_edge(i_clk)) then
		siod_counter 	<= siod_counter; 	
		siod 			<= siod; 	   
		bit_counter 	<= bit_counter;   
		ID 				<= ID; 
		sub_address 	<= sub_address; 
		data 			<= data; 		
		wait_counter 	<= wait_counter;  
		repeat 			<= repeat;
		cut_clock 		<= cut_clock;	   
		siod_delayed 	<= siod_delayed;  
		executed 		<= executed; 
		
		
		case siod_current_state is 
			when IDLE => 
				siod_counter 	<= 0;
				siod 			<= 'Z'; 
				bit_counter 	<= 0;
				ID 				<= (others => '0'); 
				sub_address 	<= (others => '0'); 
				data 			<= (others => '0');  
				repeat			<= '0';    
				cut_clock 		<= '0';		 
				siod_delayed 	<= (others => '1');  
				executed 		<= '0'; 
			
			when START_OF_TRANSMISSION => 
				if(siod_counter < 1000) then 
					siod_counter <= siod_counter + 1; 
					siod <= '1'; 
					siod_delayed <= siod_delayed(62 downto 0) & '1'; 
				else 
					siod_counter <= 0; 
					siod <= '0';
					siod_delayed <= siod_delayed(62 downto 0) & '0'; 
				end if; 
			
				--ID <= g_slave_id(7 downto 1) & (g_slave_id(0) or i_i2c_rw) & '0'; 	 
				ID <= g_slave_id(7 downto 1) & i_i2c_rw & '0'; 
			
			when PHASE_1 => --ID ADDRESS TRANSMISSION 
 				
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					siod <= ID(8); 	
					siod_delayed <= siod_delayed(62 downto 0) & ID(8); 
					
					ID <= ID(7 downto 0) & '0';	  
					if(bit_counter < 8) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0; 
					end if; 
					
				else 
					siod <= siod; 
					siod_delayed <= siod_delayed(62 downto 0) & siod; 
					ID <= ID; 
				end if; 
				
				sub_address <= i_i2c_addr(15 downto 8) & '0'; 	  
				
			when ACK_DONT_CARE_1 => 
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = ACK_WAIT_1) then 
					executed <= '0'; 
				end if; 
				
				
				siod <= '1';  
				siod_delayed <= siod_delayed(62 downto 0) & '1'; 

			
			when ACK_WAIT_1 => 	
				
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = PHASE_2_HI) then 
					executed <= '0'; 
				end if; 
				
				siod <= siod; 
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO) then 
					siod <= '0';
					siod_delayed <= siod_delayed(62 downto 0) & '0'; 	 

				end if;
				
				if(siod_next_state = PHASE_2_HI) then 
					siod <= sub_address(8); 
					siod_delayed <= siod_delayed(62 downto 0) & sub_address(8); 
                    sub_address <= sub_address(7 downto 0) & '0';	
					bit_counter <= bit_counter + 1; 
				end if;
				

				  
			when PHASE_2_HI => 	

				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					
					siod <= sub_address(8); 
					siod_delayed <= siod_delayed(62 downto 0) & sub_address(8);
                    sub_address <= sub_address(7 downto 0) & '0';	  
					if(bit_counter < 8) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0;  
						sub_address <= i_i2c_addr(7 downto 0) & '0'; 
					end if; 
				else 
					siod <= siod; 
					siod_delayed <= siod_delayed(62 downto 0) & siod;
					sub_address <= sub_address; 
				end if;    
			 	
			when ACK_DONT_CARE_2 => 
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = ACK_WAIT_2) then 
					executed <= '0'; 
				end if;  
				siod <= '1';
				siod_delayed <= siod_delayed(62 downto 0) & siod;

				
				
			when ACK_WAIT_2 => 
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = PHASE_2_LO) then 
					executed <= '0'; 
				end if;  
				siod <= siod;
				siod_delayed <= siod_delayed(62 downto 0) & siod;
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO) then 
					siod <= '0';
					siod_delayed <= siod_delayed(62 downto 0) & '0';  
				end if; 
				
				if(siod_next_state = PHASE_2_LO) then 
					siod <= sub_address(8);
					siod_delayed <= siod_delayed(62 downto 0) & sub_address(8);
                    sub_address <= sub_address(7 downto 0) & '0';	
					bit_counter <= bit_counter + 1; 
				end if;
				
			when PHASE_2_LO => 
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					
					siod <= sub_address(8);   
					siod_delayed <= siod_delayed(62 downto 0) & sub_address(8);
                    sub_address <= sub_address(7 downto 0) & '0';	  
					if(bit_counter < 8) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0; 
					end if; 
				else 
					siod <= siod;
					siod_delayed <= siod_delayed(62 downto 0) & siod;
					sub_address <= sub_address; 
				end if;    
				
				data <= i_i2c_data & '0'; 		
				
			when ACK_DONT_CARE_3 => 
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = ACK_WAIT_3) then 
					executed <= '0'; 
				end if;  
				siod <= '1';
				siod_delayed <= siod_delayed(62 downto 0) & '1';

			when ACK_WAIT_3 => 	
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = PHASE_3) then 
					executed <= '0'; 
				end if;  
				siod <= siod; 
				siod_delayed <= siod_delayed(62 downto 0) & siod;
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO) then 
					siod <= '0';  
					siod_delayed <= siod_delayed(62 downto 0) & '0';		
				end if;   
				
				if(siod_next_state = PHASE_3) then 
					siod <= data(8);   
					siod_delayed <= siod_delayed(62 downto 0) & data(8);
                    data <= data(7 downto 0) & '0';	
					bit_counter <= bit_counter + 1; 
				end if;
				
			when PHASE_3 =>  
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO)then 
					
					siod <= data(8); 
					siod_delayed <= siod_delayed(62 downto 0) & data(8);
                    data <= data(7 downto 0) & '0';	  
					if(bit_counter < 8) then 
						bit_counter <= bit_counter + 1; 
				    else 
						bit_counter <= 0; 
					end if; 
				else 
					siod <= siod;
					siod_delayed <= siod_delayed(62 downto 0) & siod;
					data <= data; 
				end if;    
				
			when ACK_DONT_CARE_4 =>  
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = ACK_WAIT_4) then 
					executed <= '0'; 
				end if;  
				
				siod <= '1';
				siod_delayed <= siod_delayed(62 downto 0) & '1';   
				
		    when ACK_WAIT_4 => 
				if (siod_counter < 64 and executed = '0') then 
					siod_counter <= siod_counter + 1; 
				else 
					siod_counter <= 0; 	 
					executed <= '1';
				end if;    
				
				if(siod_next_state = END_SDA) then 
					executed <= '0'; 
				end if;
				
				siod <= siod; 
				siod_delayed <= siod_delayed(62 downto 0) & siod;
				 
				if(sioc_current_state /= sioc_next_state and sioc_next_state = OPERATIONAL_LO) then 
					siod <= '0';  
					siod_delayed <= siod_delayed(62 downto 0) & '0';
					cut_clock <= '1';  
				end if; 
			
			when END_SDA =>   
				if(sioc = '1') then  
					if(siod_counter < 1000) then 
						siod_counter <= siod_counter + 1; 
						siod <= '0'; 
						siod_delayed <= siod_delayed(62 downto 0) & '0';
					elsif(siod_counter < 2000) then 
						siod_counter <= siod_counter + 1; 
						siod <= '1';   
						siod_delayed <= siod_delayed(62 downto 0) & '1';
					else 
						siod_counter <= 0; 
						siod <= '1';
						siod_delayed <= siod_delayed(62 downto 0) & '1';
					end if; 
				else 
					siod <= siod; 	
					siod_delayed <= siod_delayed(62 downto 0) & siod;
				end if;  
				
				
			when WAIT_STATE => 
				if(wait_counter < 10000) then 
					wait_counter <= wait_counter + 1; 
				else 
					wait_counter <= 0; 
				end if; 
				
				
			when others => 	 
				siod_counter 	<= 0;
				siod 			<= 'Z'; 
				bit_counter 	<= 0;
				ID 				<= (others => '0'); 
				sub_address 	<= (others => '0'); 
				data 			<= (others => '0');
			
		end case; 
			
			
		
		
	end if; 
end process; 
	
end Behavioral;

