
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY Network_Controller IS
  port(
      i_clk, i_reset_n, i_enable    : IN std_logic; 
      i_read_en                 : IN std_logic; 
      
      fifo0_almost_full              : IN std_logic;      
      fifo1_almost_full              : IN std_logic; 
      fifo2_almost_full              : IN std_logic; 
      
      fifo1_en                : OUT std_logic; 
      fifo2_en                : OUT std_logic; 
      fifo3_en                : OUT std_logic; 
	  
      o_network_primed            : OUT std_logic; 
      o_wready                : OUT std_logic  
    ); 
END ENTITY Network_Controller;

--
ARCHITECTURE arch OF Network_Controller IS
  
  signal row_done_counter : integer; 
  signal pixel_valid_counter : integer; 
  signal i  : integer; 
  signal enable_reg : std_logic_vector(14 downto 0);
  signal network_primed_int : std_logic;  

  type state_type is (IDLE_FIFO0_FILL, FIFO1_FILL, FIFO2_FILL, PRIMED ); 
  signal state : state_type;   
BEGIN
      
                                            
  pixel_count : process(i_clk, i_reset_n) 
  begin 
    if(i_reset_n = '0') then 
      o_network_primed <= '0'; 
      o_wready <= '1'; 
      network_primed_int <= '0'; 
    elsif (rising_edge(i_clk)) then 
      if(i_enable = '1') then 
        o_network_primed <= network_primed_int; 
        
        case state is 
          when IDLE_FIFO0_FILL => 
            if (fifo0_almost_full = '1') then 
              o_wready <= '1';
              state <= FIFO1_FILL; 
            else 
              state <= IDLE_FIFO0_FILL; 
            end if; 
          when FIFO1_FILL =>
            fifo1_en <= '1';
            o_wready <= '1';
            if (fifo1_almost_full = '1') then 
              state <= FIFO2_FILL; 
            else 
              state <= FIFO1_FILL; 
            end if;            
          when FIFO2_FILL => 
            fifo1_en <= '1';
            fifo2_en <= '1';
            o_wready <= '1';
            if (fifo2_almost_full = '1') then 
              state <= PRIMED; 
            else 
              state <= FIFO2_FILL; 
            end if; 

          when PRIMED =>
            
            if (i_read_en = '1') then 
              fifo1_en <= '1';
              fifo2_en <= '1'; 
              fifo3_en <= '1';

              o_wready <= '1'; 
            
            else
              fifo1_en <= '0';
              fifo2_en <= '0'; 
              fifo3_en <= '0';

              
              o_wready <= '0';  
             end if;                         
            network_primed_int <= '1';
            state <= PRIMED; 
            
          end case;        
      end if; 
    end if;  
  end process; 

  
END ARCHITECTURE arch;

