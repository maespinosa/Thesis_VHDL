----------------------------------------------------------------------------------
-- Company: Cal Poly Pomona Student Masters Thesis 
-- Engineer: Mark A. Espinosa (Bronco I.D. 006818981)
-- 
-- Create Date: 06/17/2016 05:52:56 PM
-- Design Name: 
-- Module Name: image_capture_control - Behavioral
-- Project Name: Deep Learning FPGA Implementation
-- Target Devices: Zynq and Zynq Ultrascale
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments: This module directly interfaces with the Omnivision OV5642 SoC Image Sensor. 
--                      Pixel Data from the image sensor is passed out of this module along with pixel count and pixel relative position
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity image_capture_control is		
    generic
    (
        data_width    	: integer -- The data width of the pixel
    );
    Port ( i_clk                : in STD_LOGIC;
           i_reset_n            : in STD_LOGIC;
           i_SDATA              : in STD_LOGIC_VECTOR (data_width-1 downto 0);
           i_VSYNC              : in STD_LOGIC;
           i_HREF               : in STD_LOGIC;
           i_PCLK               : in STD_LOGIC;
           i_EN                 : in STD_LOGIC; 
		   i_not_almost_full	: in std_logic; 
           --o_XCLK               : out STD_LOGIC;
           o_RST                : out STD_LOGIC;
           o_PWDN               : out STD_LOGIC; 
           o_IMAGE_DATA         : out STD_LOGIC_VECTOR(data_width-1 downto 0); 
           o_PIXEL_VALID        : out STD_LOGIC; 
           o_X_POS              : out INTEGER;
           o_Y_POS              : out INTEGER; 
		   o_PIXEL_NUMBER	    : out INTEGER; 
		   o_FRAME_DONE			: out std_logic; 
		   o_debug_state		: out std_logic_vector(2 downto 0)
           
           
           ); 
end image_capture_control;

architecture Behavioral of image_capture_control is

constant PIX_TOTAL_5MP      : integer := 2592*1944; 
constant COLUMNS_5MP        : integer := 2592;
constant ROWS_5MP           : integer := 1944; 

constant PIX_TOTAL_1080p    : integer := 1920*1080; 
constant COLUMNS_1080p      : integer := 1920;
constant ROWS_1080p         : integer := 1080; 

constant PIX_TOTAL_UXGA     : integer := 1600*1200; 
constant COLUMNS_UXGA       : integer := 1600;
constant ROWS_UXGA          : integer := 1200; 

constant PIX_TOTAL_720p     : integer := 1280*720; 
constant COLUMNS_720p       : integer := 1280;
constant ROWS_720p          : integer := 720; 

constant PIX_TOTAL_XGA      : integer := 1024*768; 
constant COLUMNS_XGA        : integer := 1024;
constant ROWS_XGA           : integer := 768; 

constant PIX_TOTAL_VGA      : integer := 640*480; 
constant COLUMNS_VGA        : integer := 640;
constant ROWS_VGA           : integer := 480; 

constant PIX_TOTAL_QVGA     : integer := 320*240; 
constant PIX_TOTAL_SQCIF    : integer := 128*96; 

signal IMAGE_DATA_INT       : STD_LOGIC_VECTOR(data_width-1 downto 0); 
signal PIXEL_VALID_INT      : STD_LOGIC; 
signal PIXEL_NUMBER_INT        : integer; 
signal X_POS_INT            : integer; 
signal Y_POS_INT            : integer; 
signal execute_flag 		: std_logic; 
signal RST_INT				: std_logic; 
signal PWDN_INT				: std_logic;   
signal frame_done			: std_logic; 

type state_type is (IDLE, SOL, HREF_HI, HREF_LO, EOF); 

signal current_state : state_type; 	 	 
signal next_state : state_type;	


signal debug_state : std_logic_vector(2 downto 0); 



--signal next_state : state_type; 

begin		

o_RST                <= RST_INT; 
o_PWDN               <= PWDN_INT; 
o_IMAGE_DATA         <= IMAGE_DATA_INT; 
o_PIXEL_VALID        <= PIXEL_VALID_INT; 
o_X_POS              <= X_POS_INT; 
o_Y_POS              <= Y_POS_INT; 
o_PIXEL_NUMBER	     <= PIXEL_NUMBER_INT; 
o_FRAME_DONE		 <= frame_done;  
o_debug_state		 <= debug_state; 
	
state_transition: process(i_clk, i_reset_n) is 
begin 
	if(i_reset_n = '0') then 	 
		current_state <= IDLE; 
    elsif(rising_edge(i_clk)) then 
		current_state <= next_state; 
	end if;
end process; 


next_state_comb: process(all) is 
begin 
	
	o_RST <= i_reset_n; 
	o_PWDN <= '0'; 	   
	frame_done <= '0'; 	
	debug_state <= "000"; 
	
	
	case current_state is
		
		when IDLE =>  
			debug_state <= "001"; 
			if (i_VSYNC = '1' and i_not_almost_full = '1' and i_EN = '1') then 
				next_state <= SOL;  
			else 
				next_state <= IDLE; 
			end if;  
			
		when SOL =>  
			debug_state <= "010"; 
		    if (i_HREF = '1') then 
				next_state <= HREF_HI; 
			else 
				next_state <= SOL; 
			end if;    
			
	    when HREF_HI => 
			debug_state <= "011"; 
			if (i_HREF = '0') then 
				next_state <= HREF_LO; 
			else 
				next_state <= HREF_HI; 
			end if;   
			
		when HREF_LO => 
			debug_state <= "100"; 
		    if (i_HREF = '0' and i_VSYNC = '0') then 
				next_state <= HREF_LO; 	  
				if(X_POS_INT = COLUMNS_VGA and Y_POS_INT = ROWS_VGA-1) then
					frame_done <= '1'; 
				end if; 
				
		    elsif(i_HREF = '1' and i_VSYNC = '0') then 
				next_state <= HREF_HI; 
		    elsif(i_HREF = '0' and i_VSYNC = '1') then 
				next_state <= SOL; 
			elsif(i_HREF = '1' and i_VSYNC = '1') then 
				next_state <= SOL; 
			else 
				next_state <= HREF_LO; 
			end if;  
			
	    when others => 	  
			debug_state <= "111"; 
			next_state <= IDLE;    
		
		
	end case; 
end process; 

	
sequential_logic : process(i_clk, i_reset_n) is 
begin 
	if(i_reset_n <= '0') then 
	    IMAGE_DATA_INT <= (others => '0'); 
	    PIXEL_VALID_INT <= '0'; 
	    PIXEL_NUMBER_INT   <= 0; 
		execute_flag 	<= '0';
        X_POS_INT          <= 0; 
        Y_POS_INT          <= 0; 
	    PWDN_INT 		   <= '1'; 
		
	elsif(rising_edge(i_clk)) then 	
		
        IMAGE_DATA_INT <= IMAGE_DATA_INT; 
        PIXEL_VALID_INT <= PIXEL_VALID_INT; 
        PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT;  
		X_POS_INT <= X_POS_INT; 
		Y_POS_INT <= Y_POS_INT;	
		PWDN_INT  <= '0'; 
		
		case current_state is
			
			when IDLE => 
			    IMAGE_DATA_INT <= (others => '0'); 
		        PIXEL_VALID_INT <= '0'; 
		        PIXEL_NUMBER_INT <= 0; 
				X_POS_INT <= 0; 
				Y_POS_INT <= 0;  
				
		  	when SOL =>	  
		        IMAGE_DATA_INT <= (others => '0'); 
		        PIXEL_VALID_INT <= '0'; 
		        PIXEL_NUMBER_INT <= 0; 
				X_POS_INT <= 0; 
				Y_POS_INT <= 0;  
					
			when HREF_HI =>	 
				IMAGE_DATA_INT <= i_SDATA; 
	            
				
			    
				if(X_POS_INT = COLUMNS_VGA) then 
					PIXEL_VALID_INT <= '0';	
					X_POS_INT <= X_POS_INT; 
					Y_POS_INT <= Y_POS_INT; 
					execute_flag <= '0'; 
				elsif(i_PCLK = '1' and execute_flag = '0') then 
	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT + 1; 
					PIXEL_VALID_INT <= '1';	
	                X_POS_INT <= X_POS_INT + 1;
					Y_POS_INT <= Y_POS_INT;
					execute_flag <= '1'; 
				elsif(i_PCLK = '1' and execute_flag = '1') then 
	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
					PIXEL_VALID_INT <= '0';	
					X_POS_INT <= X_POS_INT; 
					Y_POS_INT <= Y_POS_INT;  
				elsif(i_PCLK = '0' and execute_flag = '1') then 
	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
					PIXEL_VALID_INT <= '0';	
					X_POS_INT <= X_POS_INT; 
					Y_POS_INT <= Y_POS_INT; 
					execute_flag <= '0'; 
				end if; 
			
			when HREF_LO =>	 
				execute_flag <= '0';
				PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
				PIXEL_VALID_INT <= '0';	
				X_POS_INT <= X_POS_INT; 
				Y_POS_INT <= Y_POS_INT; 
	            IMAGE_DATA_INT <= IMAGE_DATA_INT; 
	            PIXEL_VALID_INT <= '0';		 
				
				if (X_POS_INT = COLUMNS_VGA) then 
					X_POS_INT <= 0; 
					
					
					if (Y_POS_INT = ROWS_VGA) then 
						Y_POS_INT <= 0;  
						PIXEL_NUMBER_INT <= 0; 
					else 
						Y_POS_INT <= Y_POS_INT + 1; 
					end if; 
				else 
					X_POS_INT <= X_POS_INT; 
					Y_POS_INT <= Y_POS_INT; 
				end if;  
				
				
			when others => 	 
		        IMAGE_DATA_INT <= (others => '1'); 
		        PIXEL_VALID_INT <= '0'; 
		        PIXEL_NUMBER_INT <= 777;  
				X_POS_INT <= 777; 
				Y_POS_INT <= 777;	
				PWDN_INT  <= '0'; 
			
			end case; 
							   
	
	end if;   
end process; 
	
	
	
	
	

--CLOCKING : process(i_clk, i_reset_n, i_EN) 
--begin 
--
--    o_XCLK <= i_clk; 
--    o_RST <= i_reset_n;
--    o_PWDN <= not(i_EN);  
--
--end process; 

--
--        
--DATA_CAPTURE : process(i_PCLK, i_reset_n) 
--begin 
--
--    if(i_reset_n = '0' or i_EN = '0') then 
--        IMAGE_DATA_INT <= (others => '0'); 
--        PIXEL_VALID_INT <= '0'; 
--        PIXEL_NUMBER_INT   <= 0; 
--		o_PIXEL_NUMBER_INT   <= 0;
--        X_POS           <= 0; 
--        Y_POS           <= 0; 
--		execute_flag 	<= '0';
--       o_IMAGE_DATA  	<= (others => '0'); 
--       o_PIXEL_VALID    <= '0'; 
--       o_X_POS          <= 0; 
--       o_Y_POS          <= 0; 
--                   
--    elsif (rising_edge(i_PCLK) and i_EN = '1') then 
--    
--        o_IMAGE_DATA <= IMAGE_DATA_INT; 
--        o_PIXEL_VALID <= PIXEL_VALID_INT; 
--        o_PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT;  
--		o_X_POS <= X_POS; 
--		o_Y_POS <= Y_POS;
-- 		--current_state <= next_state; 
--		 
--		case state is  
--		  
--			when IDLE => 
--		        o_IMAGE_DATA <= (others => '0'); 
--		        o_PIXEL_VALID <= '0'; 
--		        PIXEL_NUMBER_INT <= 0; 
--				X_POS <= 0; 
--				Y_POS <= 0; 
--				
--				if (i_VSYNC = '1') then 
--					state <= SOL;  
--				else 
--					state <= IDLE; 
--				end if; 
--				
--		  	when SOL =>	  
--		        o_IMAGE_DATA <= (others => '0'); 
--		        o_PIXEL_VALID <= '0'; 
--		        PIXEL_NUMBER_INT <= 0; 
--				X_POS <= 0; 
--				Y_POS <= 0;  
--			  
--			  	if (i_HREF = '1') then 
--					state <= HREF_HI; 
--				else 
--					state <= SOL; 
--				end if; 
--		  	
--			when HREF_HI =>	 
--				IMAGE_DATA_INT <= i_SDATA; 
--	            PIXEL_VALID_INT <= '1';	
--				
--				if(execute_flag = '0') then 
--	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT + 1; 
--	                X_POS <= X_POS + 1;
--					Y_POS <= Y_POS;
--					execute_flag <= '1'; 
--				else 
--	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
--					X_POS <= X_POS; 
--					Y_POS <= Y_POS; 
--				end if; 
--				
--				if (i_HREF = '0') then 
--					state <= HREF_LO; 
--				else 
--					state <= HREF_HI; 
--				end if; 
--
--			
--			when HREF_LO =>	 
--				execute_flag <= '0';
--				PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
--				X_POS <= X_POS; 
--				Y_POS <= Y_POS; 
--	            IMAGE_DATA_INT <= IMAGE_DATA_INT; 
--	            PIXEL_VALID_INT <= '0';		 
--				
--				if (i_HREF = '1') then 
--					state <= HREF_HI; 
--				else 
--					state <= HREF_LO; 
--				end if; 
--				
--				if (X_POS = 1280) then 
--					X_POS <= 0; 
--					
--					if (Y_POS = 720) then 
--						Y_POS <= 0; 
--						state <= EOF; 
--					else 
--						Y_POS <= Y_POS + 1; 
--					end if; 
--				else 
--					X_POS <= X_POS; 
--					Y_POS <= Y_POS; 
--				end if; 
--				
-- 
--			when EOF =>
--		        o_IMAGE_DATA <= (others => '0'); 
--		        o_PIXEL_VALID <= '0'; 
--		        PIXEL_NUMBER_INT <= 0; 
--				X_POS <= 0; 
--				Y_POS <= 0;  	
--				state <= EOF;  				
--			end case; 
--		end if;  
--	end process; 
--		
		
		

end Behavioral;
