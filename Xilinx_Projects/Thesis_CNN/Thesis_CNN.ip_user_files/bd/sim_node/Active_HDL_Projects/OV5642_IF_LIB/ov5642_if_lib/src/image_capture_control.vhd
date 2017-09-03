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
library UNISIM;
use UNISIM.VComponents.all;

entity image_capture_control is		
    generic
    (
        data_width    	: integer -- The data width of the pixel
    );
    Port ( --i_clk                : in STD_LOGIC;
           i_reset_n            : in STD_LOGIC;
           i_SDATA              : in STD_LOGIC_VECTOR (data_width-1 downto 0);
           i_VSYNC              : in STD_LOGIC;
           i_HREF               : in STD_LOGIC;
           i_PCLK               : in STD_LOGIC;
           i_EN                 : in STD_LOGIC; 
		   i_almost_full		: in std_logic;
		   i_full				: in std_logic;
		   i_prog_full			: in std_logic; 
           --o_XCLK               : out STD_LOGIC;
           o_RST                : out STD_LOGIC;
           o_PWDN               : out STD_LOGIC; 
           o_IMAGE_DATA         : out STD_LOGIC_VECTOR(11 downto 0); 
           o_PIXEL_VALID        : out STD_LOGIC; 
           o_X_POS              : out std_logic_vector(11 downto 0);
           o_Y_POS              : out std_logic_vector(11 downto 0); 
		   o_PIXEL_NUMBER	    : out std_logic_vector(31 downto 0); 
		   o_FRAME_DONE			: out std_logic; 
		   o_debug_state		: out std_logic_vector(2 downto 0); 
		   o_pclk_counter		: out std_logic_vector(7 downto 0); 
		   o_pclk				: out std_logic; 
		   o_busy				: out std_logic
           
           
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
constant ROWS_VGA           : integer := 480;   -----CHANGE FOR SIM HERE 

constant PIX_TOTAL_QVGA     : integer := 320*240; 
constant PIX_TOTAL_SQCIF    : integer := 128*96; 

signal IMAGE_DATA_INT       : STD_LOGIC_VECTOR(11 downto 0); 
signal PIXEL_VALID_INT      : STD_LOGIC; 
signal PIXEL_NUMBER_INT     : unsigned(31 downto 0); 
signal X_POS_INT            : unsigned(11 downto 0); 
signal Y_POS_INT            : unsigned(11 downto 0); 
signal execute_flag 		: std_logic; 
signal RST_INT				: std_logic; 
signal PWDN_INT				: std_logic;   
signal frame_done			: std_logic; 
signal pclk_counter			: unsigned(7 downto 0);  
signal RED_INT				: std_logic_vector(3 downto 0); 
signal RGB_toggle			: std_logic;   
signal print_value			: std_logic; 	   
signal x_pos_reg			: unsigned(11 downto 0);  
signal busy					: std_logic; 		
signal PCLK_BUF				: std_logic; 


type state_type is (IDLE, SOL, HREF_HI, HREF_LO, EOF); 

signal current_state : state_type; 	 	 
signal next_state : state_type;	


signal debug_state : std_logic_vector(2 downto 0); 

--component BUFMR is
    
--	port (
      
--	O   : out std_ulogic;
      
--	I	: in std_ulogic      
    
--	);
  
--end component;

--signal next_state : state_type; 

begin		

o_RST                <= RST_INT; 
o_PWDN               <= PWDN_INT; 
o_IMAGE_DATA         <= IMAGE_DATA_INT; 
o_PIXEL_VALID        <= PIXEL_VALID_INT; 
o_X_POS              <= std_logic_vector(X_POS_INT) when X_POS_INT >= x_pos_reg else
						std_logic_vector(x_pos_reg); 
o_Y_POS              <= std_logic_vector(Y_POS_INT); 
o_PIXEL_NUMBER	     <= std_logic_vector(PIXEL_NUMBER_INT); 
o_FRAME_DONE		 <= frame_done;  
o_debug_state		 <= debug_state; 
o_pclk_counter		 <= (others => '0'); --std_logic_vector(pclk_counter); 
o_pclk				 <= i_PCLK; --PCLK_BUF;    
o_busy				 <= busy; 	 

--PCLK_BUFMR : BUFMR
--	port map(
--		O => PCLK_BUF,
--		I => i_PCLK
--	); 
	
state_transition: process(i_PCLK, i_reset_n) is 
begin 
	if(i_reset_n = '0') then 	 
		current_state <= IDLE; 
    elsif(rising_edge(i_PCLK)) then 
		current_state <= next_state; 
	end if;
end process; 


next_state_comb: process(current_state,i_VSYNC,i_HREF,i_almost_full,i_EN,X_POS_INT,Y_POS_INT,i_PCLK) is 
begin 
	
	o_RST <= i_reset_n; 
	o_PWDN <= '0'; 	   
	frame_done <= '0'; 	
	debug_state <= "000";  
	busy <= '0'; 
	
--	if(i_HREF = '1') then 
--		PIXEL_VALID_INT <= i_pclk; 
--	else 
--		PIXEL_VALID_INT <= '0'; 
--	end if; 
	
	case current_state is
		
		when IDLE =>  
			debug_state <= "001"; 
			busy <= '0'; 
			if (i_VSYNC = '1' and i_almost_full = '0' and i_EN = '1') then 
				next_state <= SOL;  
			else 
				next_state <= IDLE; 
			end if;  
			
		when SOL => 
			busy <= '1'; 
			debug_state <= "010"; 
		    if (i_HREF = '1') then 
				next_state <= HREF_HI; 
			else 
				next_state <= SOL; 
			end if;    
			
	    when HREF_HI =>
			busy <= '1'; 
			debug_state <= "011"; 
			if (i_HREF = '0') then 
				next_state <= HREF_LO; 
			else 
				next_state <= HREF_HI; 
			end if;   
			
		when HREF_LO => 
			busy <= '1'; 
			debug_state <= "100"; 
		    if (i_HREF = '0' and i_VSYNC = '0') then 
				next_state <= HREF_LO; 	  
				if(X_POS_INT = COLUMNS_VGA-1 and Y_POS_INT = ROWS_VGA-1) then
					frame_done <= '1'; 
				end if; 
				
		    elsif(i_HREF = '1' and i_VSYNC = '0' and i_EN = '1') then 
				next_state <= HREF_HI; 
		    elsif(i_HREF = '0' and i_VSYNC = '1' and i_EN = '1') then 
				next_state <= SOL; 
			elsif(i_HREF = '1' and i_VSYNC = '1' and i_EN = '1') then 
				next_state <= SOL; 	
			elsif(i_EN = '0') then 
				next_state <= IDLE; 
			else 
				next_state <= HREF_LO; 
			end if;  
			
	    when others => 	  
			debug_state <= "111"; 
			next_state <= IDLE;    
		
		
	end case; 
end process; 

	
sequential_logic : process(i_PCLK, i_reset_n) is 
begin 
	if(i_reset_n <= '0') then 
	    IMAGE_DATA_INT <= (others => '0'); 
	    PIXEL_VALID_INT <= '0'; 
	    PIXEL_NUMBER_INT   <= (others => '0');
		execute_flag 	<= '0';
        X_POS_INT          <= (others => '0'); 
        Y_POS_INT          <= (others => '0'); 
	    PWDN_INT 		   <= '1'; 
		RED_INT				<= (others => '0'); 
		RGB_toggle			<= '0';   
		print_value 		<= '0';  
		x_pos_reg			<= (others => '0'); 
		
	elsif(rising_edge(i_PCLK)) then 	
		
        IMAGE_DATA_INT <= IMAGE_DATA_INT; 
        PIXEL_VALID_INT <= PIXEL_VALID_INT; 
        PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT;  
		X_POS_INT <= X_POS_INT; 
		Y_POS_INT <= Y_POS_INT;	
		PWDN_INT  <= '0'; 	
		RED_INT	<= RED_INT; 
		RGB_toggle <= RGB_toggle; 
		print_value <= print_value;  
		x_pos_reg <= x_pos_reg; 
		
	
		case current_state is
			
			when IDLE => 
			    IMAGE_DATA_INT <= (others => '0'); 
		        PIXEL_VALID_INT <= '0'; 
		        PIXEL_NUMBER_INT <= (others => '0'); 
				X_POS_INT <= (others => '0'); 
				Y_POS_INT <= (others => '0');  
				RED_INT	<= (others => '0'); 
				RGB_toggle <= '0'; 
				print_value <= '0'; 
				x_pos_reg <= (others => '0'); 
				
		  	when SOL =>	  
  
			    if (i_HREF = '1') then 
			        --IMAGE_DATA_INT <= i_SDATA; 
					RED_INT <= i_SDATA(3 downto 0); 
			        
					PIXEL_VALID_INT <= '0'; 
				else 
			        IMAGE_DATA_INT <= (others => '0'); 
			        PIXEL_VALID_INT <= '0'; 
				end if;  
				
		        PIXEL_NUMBER_INT <= (others => '0'); 
				X_POS_INT <= (others => '0');  
				Y_POS_INT <= (others => '0');   
					
			when HREF_HI =>	 
				--IMAGE_DATA_INT <= i_SDATA; 	 
			    if(RGB_toggle = '0') then 
					IMAGE_DATA_INT <= RED_INT & i_SDATA(7 downto 0); 
					RGB_toggle <= '1'; 
	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT + 1; 
					PIXEL_VALID_INT <= '1';	
	                X_POS_INT <= X_POS_INT + 1;
					Y_POS_INT <= Y_POS_INT;
					
				else 
					RED_INT <= i_SDATA(3 downto 0); 
					RGB_toggle <= '0'; 	   
					PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
					PIXEL_VALID_INT <= '0';	
					X_POS_INT <= X_POS_INT; 
					Y_POS_INT <= Y_POS_INT; 
					
				end if; 
				
					
	            
				if(X_POS_INT = COLUMNS_VGA and RGB_toggle = '0') then 
					PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
					PIXEL_VALID_INT <= '0';	
					X_POS_INT <= X_POS_INT; 
					Y_POS_INT <= Y_POS_INT; 
					execute_flag <= '0'; 
				--elsif(i_PCLK = '1' and execute_flag = '0') then 
--				else
--	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT + 1; 
--					PIXEL_VALID_INT <= '1';	
--	                X_POS_INT <= X_POS_INT + 1;
--					Y_POS_INT <= Y_POS_INT;
--					execute_flag <= '1'; 
--				elsif(i_PCLK = '1' and execute_flag = '1') then 
--	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
--					PIXEL_VALID_INT <= '0';	
--					X_POS_INT <= X_POS_INT; 
--					Y_POS_INT <= Y_POS_INT;  
--				elsif(i_PCLK = '0' and execute_flag = '1') then 
--	                PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
--					PIXEL_VALID_INT <= '0';	
--					X_POS_INT <= X_POS_INT; 
--					Y_POS_INT <= Y_POS_INT; 
--					execute_flag <= '0'; 
				end if; 
			
			when HREF_LO =>	   
				print_value <= '0'; 
				execute_flag <= '0';
				PIXEL_NUMBER_INT <= PIXEL_NUMBER_INT; 
				PIXEL_VALID_INT <= '0';	
				X_POS_INT <= X_POS_INT; 
				Y_POS_INT <= Y_POS_INT; 
	            IMAGE_DATA_INT <= (others => '0'); --IMAGE_DATA_INT; 
	 
				
				if (X_POS_INT = COLUMNS_VGA) then 
					X_POS_INT <= (others => '0');  
					x_pos_reg <= X_POS_INT; 
					
					
					if (Y_POS_INT = ROWS_VGA) then 
						Y_POS_INT <= (others => '0');   
						PIXEL_NUMBER_INT <= (others => '0'); 	
						print_value <= '1'; 
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
		        PIXEL_NUMBER_INT <= (others => '1');  
				X_POS_INT <= (others => '1');  
				Y_POS_INT <= (others => '1');	
				PWDN_INT  <= '0'; 
			
			end case; 
							   
	
	end if;   
end process; 
	
	
	
--freq_counter: process(i_clk, i_reset_n) 
--begin 
--	if(i_reset_n = '0') then 
--		pclk_counter <= (others => '0'); 
--		
--	elsif(rising_edge(i_clk))then 
--	
--		if(PCLK_BUF = '1') then
--			pclk_counter <= pclk_counter + 1; 
--		else 
--			pclk_counter <= (others => '0'); 
--		end if; 
--	end if; 
--end process; 
	
		
		

end Behavioral;
