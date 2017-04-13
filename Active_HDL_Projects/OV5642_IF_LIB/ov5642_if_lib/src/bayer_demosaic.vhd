-------------------------------------------------------------------------------
--
-- Title       : bayer_demosaic
-- Design      : masters_thesis_lib
-- Author      : Marks-M3800
-- Company     : Cal Poly Pomona
--
-------------------------------------------------------------------------------
--
-- File        : c:\Sourcetree_Local\Masters_Thesis\VHDL\masters_thesis_lib\src\bayer_demosaic.vhd
-- Generated   : Sat Jun 25 12:07:44 2016
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
--{entity {bayer_demosaic} architecture {behavioral}}

library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use ieee.numeric_std.all;

entity bayer_demosaic is 
    generic
    (
        data_width    	: integer -- The data width of the pixel
    );
	port(
	i_clk : in std_logic; 
	i_reset_n : in std_logic;
	i_network_primed : in std_logic; 
	i_DIN0 : in std_logic_vector(data_width-1 downto 0); 
	i_DIN1 : in std_logic_vector(data_width-1 downto 0); 
	i_DIN2 : in std_logic_vector(data_width-1 downto 0); 
	
	o_DOUT_R : out std_logic_vector(data_width-1 downto 0); 
	o_DOUT_G : out std_logic_vector(data_width-1 downto 0); 
	o_DOUT_B : out std_logic_vector(data_width-1 downto 0); 
	
	o_read_en : out std_logic
	); 
	
end bayer_demosaic;

--}} End of automatically maintained section

architecture behavioral of bayer_demosaic is  

type state_type is (IDLE, FIRST_SHIFT_IN, SHIFT_IN, INTERPOLATE_TOP_LEFT, INTERPOLATE_TOP_NOEDGE, INTERPOLATE_TOP_RIGHT,INTERPOLATE_BODY_LEFT, INTERPOLATE_BODY_NOEDGE, INTERPOLATE_BODY_RIGHT, INTERPOLATE_BOTTOM_LEFT, INTERPOLATE_BOTTOM_NOEDGE, INTERPOLATE_BOTTOM_RIGHT, FRAME_COMPLETE); 
signal state : state_type;   

type array_type_3x10bit is array (2 downto 0) of std_logic_vector(data_width-1 downto 0); 

signal DIN_buffer0 : array_type_3x10bit;  
signal DIN_buffer1 : array_type_3x10bit; 
signal DIN_buffer2 : array_type_3x10bit;  

signal row_counter 		: integer; 
signal column_counter 	: integer; 
signal toggle_flag 		: std_logic;    
signal i 				: integer; 
signal frame_done 		: std_logic; 

begin
 
	
	demosaic: process(i_clk, i_reset_n) 
	begin 
		if(i_reset_n = '0') then 
			o_DOUT_R <= (others => '0');  
			o_DOUT_G <= (others => '0');  
			o_DOUT_B <= (others => '0'); 
			
			DIN_buffer0 <= (others => (others => '0')); 
			DIN_buffer1 <= (others => (others => '0')); 
			DIN_buffer2 <= (others => (others => '0')); 
			row_counter <= 0;  
			column_counter <= 0; 
			toggle_flag <= '0';
			i <= 0; 	
			frame_done <= '0'; 
			state <= IDLE; 
		elsif (rising_edge(i_clk)) then 

			frame_done <= '1'; 
			case state is 
				when IDLE => 
					o_DOUT_R <= (others => '0');  
					o_DOUT_G <= (others => '0');  
					o_DOUT_B <= (others => '0'); 
					
					DIN_buffer0 <= (others => (others => '0')); 
					DIN_buffer1 <= (others => (others => '0')); 
					DIN_buffer2 <= (others => (others => '0'));   
					
		
					if(i_network_primed = '1') then 
						o_read_en <= '1'; 
						state <= FIRST_SHIFT_IN; 
					else 
						o_read_en <= '0'; 
						state <= IDLE; 
					end if; 
					
				when FIRST_SHIFT_IN =>
				
					if(i <= 2) then 
						DIN_buffer0 <= DIN_buffer0(1 downto 0) & i_DIN0; 
						DIN_buffer1 <= DIN_buffer1(1 downto 0) & i_DIN1; 
						DIN_buffer2 <= DIN_buffer2(1 downto 0) & i_DIN2; 
						
						o_read_en <= '1';
						state <= FIRST_SHIFT_IN;
					    i <= i+1; 
						row_counter <= row_counter + 1; 
						column_counter <= column_counter + 1; 
					else 
						i <= 0; 
						o_read_en <= '0';
						state <= INTERPOLATE_TOP_LEFT; 
					end if; 
					
				when SHIFT_IN => 
					DIN_buffer0 <= DIN_buffer0(1 downto 0) & i_DIN0; 
					DIN_buffer1 <= DIN_buffer1(1 downto 0) & i_DIN1; 
					DIN_buffer2 <= DIN_buffer2(1 downto 0) & i_DIN2; 
					
					if (row_counter = 0 and column_counter < 1079 and column_counter > 0) then
						state <= INTERPOLATE_TOP_NOEDGE; 
					elsif (row_counter = 0 and column_counter = 1079) then 
						state <= INTERPOLATE_TOP_RIGHT; 
					elsif (row_counter > 0 and row_counter < 719 and column_counter = 0) then 
						state <= INTERPOLATE_BODY_LEFT; 
					elsif (row_counter > 0 	and row_counter < 719 and column_counter > 0 and column_counter < 1079) then 
						state <= INTERPOLATE_BODY_NOEDGE; 
					elsif (row_counter > 0 and row_counter < 719 and column_counter = 1079) then 
						state <= INTERPOLATE_BODY_RIGHT; 
					elsif (row_counter = 719 and column_counter = 0) then 
						state <= INTERPOLATE_BOTTOM_LEFT; 
					elsif (row_counter = 719 and column_counter > 0 and column_counter < 1079) then 
						state <= INTERPOLATE_BOTTOM_NOEDGE; 
					elsif (row_counter = 719 and column_counter  = 1079) then 
						state <= INTERPOLATE_BOTTOM_RIGHT; 
					else 
						state <= IDLE;
					end if; 
					
					o_read_en <= '0'; 
						
				when INTERPOLATE_TOP_LEFT =>  

					o_DOUT_R <= DIN_buffer2(1);
					o_DOUT_G <= std_logic_vector((unsigned(DIN_buffer1(1))+unsigned(DIN_buffer2(2)))/2); 
					o_DOUT_B <= DIN_buffer1(2);  

					state <= INTERPOLATE_TOP_NOEDGE; 
					row_counter <= row_counter;     		 
					column_counter <= column_counter + 1; 
					toggle_flag <= '1'; 
					
				when INTERPOLATE_TOP_NOEDGE => 	  
					if(toggle_flag <= '0') then 

					    o_DOUT_R <= std_logic_vector((unsigned(DIN_buffer2(2))+unsigned(DIN_buffer2(0)))/2); 
						o_DOUT_G <= std_logic_vector((unsigned(DIN_buffer1(2))+unsigned(DIN_buffer2(1))+unsigned(DIN_buffer1(0)))/3);   
						o_DOUT_B <= DIN_buffer1(1);  	 
						
						toggle_flag <= '1'; 
					else 
					    o_DOUT_R <= DIN_buffer2(1);
						o_DOUT_G <= DIN_buffer1(1); 
						o_DOUT_B <= std_logic_vector((unsigned(DIN_buffer1(2))+unsigned(DIN_buffer1(0)))/2);  

						toggle_flag <= '0'; 
					end if; 

					row_counter <= row_counter; 
					column_counter <= column_counter + 1; 
					state <= SHIFT_IN;  
					o_read_en <= '1';	
					toggle_flag <= '1';

				when INTERPOLATE_TOP_RIGHT => 
					
				    o_DOUT_R <= DIN_buffer2(0);
					o_DOUT_G <= DIN_buffer1(0); 
					o_DOUT_B <= DIN_buffer1(1);  
					
					row_counter <= row_counter + 1; 
					column_counter <= 0; 
					state <= SHIFT_IN;  
					o_read_en <= '1';
					
				when INTERPOLATE_BODY_LEFT => 
					
				    o_DOUT_R <= DIN_buffer1(1);
					o_DOUT_G <= DIN_buffer1(2); 
					o_DOUT_B <= std_logic_vector((unsigned(DIN_buffer0(2))+unsigned(DIN_buffer2(2)))/2);   
					
					row_counter <= row_counter; 
					column_counter <= column_counter + 1; 
					state <= SHIFT_IN;  
					o_read_en <= '1';		
					
				when INTERPOLATE_BODY_NOEDGE =>	  
					if(toggle_flag <= '0') then 

					    o_DOUT_R <= std_logic_vector((unsigned(DIN_buffer1(2))+unsigned(DIN_buffer1(0)))/2); 
						o_DOUT_G <= DIN_buffer1(1);
						o_DOUT_B <= std_logic_vector((unsigned(DIN_buffer0(1))+unsigned(DIN_buffer2(1)))/2);    	 
						
						toggle_flag <= '1'; 
					else 
					    o_DOUT_R <= DIN_buffer1(1);
						o_DOUT_G <= std_logic_vector((unsigned(DIN_buffer1(2))+unsigned(DIN_buffer2(1))+unsigned(DIN_buffer1(0))+unsigned(DIN_buffer0(1)))/4); 
						o_DOUT_B <= std_logic_vector((unsigned(DIN_buffer0(2))+unsigned(DIN_buffer2(2))+unsigned(DIN_buffer0(0))+unsigned(DIN_buffer2(0)))/4);  

						toggle_flag <= '0'; 
					end if; 

					row_counter <= row_counter; 
					column_counter <= column_counter + 1; 
					state <= SHIFT_IN;  
					o_read_en <= '1';	
					toggle_flag <= '1';

				when INTERPOLATE_BODY_RIGHT => 
					
				    o_DOUT_R <= DIN_buffer1(0);
					o_DOUT_G <= std_logic_vector((unsigned(DIN_buffer0(0))+unsigned(DIN_buffer2(0))+unsigned(DIN_buffer1(1)))/3); 
					o_DOUT_B <= std_logic_vector((unsigned(DIN_buffer0(1))+unsigned(DIN_buffer2(1)))/2);    
					
					row_counter <= row_counter + 1; 
					column_counter <= 0; 
					state <= SHIFT_IN;  
					o_read_en <= '1';

				when INTERPOLATE_BOTTOM_LEFT => 
					
				    o_DOUT_R <= DIN_buffer1(1);
					o_DOUT_G <= DIN_buffer1(2); 
					o_DOUT_B <= DIN_buffer0(2);   
					
					row_counter <= row_counter; 
					column_counter <= column_counter + 1; 
					state <= SHIFT_IN;  
					o_read_en <= '1';		
					
				when INTERPOLATE_BOTTOM_NOEDGE => 	  
					if(toggle_flag <= '0') then 

					    o_DOUT_R <= std_logic_vector((unsigned(DIN_buffer1(2))+unsigned(DIN_buffer1(0)))/2); 
						o_DOUT_G <= DIN_buffer1(1);
						o_DOUT_B <= DIN_buffer0(1);    	 
						
						toggle_flag <= '1'; 
					else 
					    o_DOUT_R <= DIN_buffer1(1);
						o_DOUT_G <= std_logic_vector((unsigned(DIN_buffer1(2))+unsigned(DIN_buffer1(0))+unsigned(DIN_buffer0(1)))/3); 
						o_DOUT_B <= std_logic_vector((unsigned(DIN_buffer0(2))+unsigned(DIN_buffer0(0)))/2); 

						toggle_flag <= '0'; 
					end if; 

					row_counter <= row_counter; 
					column_counter <= column_counter + 1; 
					state <= SHIFT_IN;  
					o_read_en <= '1';	
					toggle_flag <= '1';

				when INTERPOLATE_BOTTOM_RIGHT => 
					
				    o_DOUT_R <= DIN_buffer1(0);
					o_DOUT_G <= std_logic_vector((unsigned(DIN_buffer0(0))+unsigned(DIN_buffer1(1)))/2); 
					o_DOUT_B <= DIN_buffer0(1);    
					
					row_counter <= 0; 
					column_counter <= 0; 
					state <= FRAME_COMPLETE;  
					o_read_en <= '0';
					
			    when FRAME_COMPLETE => 	
					frame_done <= '1'; 
					state <= IDLE; 
				when others => 
					state <= IDLE; 
				
			end case;
		end if; 
	end process; 
				
				
				
end behavioral;
