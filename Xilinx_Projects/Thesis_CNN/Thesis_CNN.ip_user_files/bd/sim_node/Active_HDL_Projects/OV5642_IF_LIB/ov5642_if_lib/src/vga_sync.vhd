-- Listing 12.1
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity vga_sync is
   port(
   		i_clk			: in std_logic; 
   		i_reset_n		: in std_logic;	 
		i_vga_data		: in std_logic_vector(11 downto 0); 
		i_empty 		: in std_logic; 
		i_almost_empty 	: in std_logic; 
		i_prog_empty 	: in std_logic; 
		i_valid 		: in std_logic;
		i_start_display	: in std_logic; 
      	o_hsync     	: out std_logic; 
		o_vsync			: out std_logic;
        o_video_on    	: out std_logic; 
		--o_read_en 		: out std_logic; 
		--p_tick		: out std_logic;
      	o_pixel_x  		: out std_logic_vector(9 downto 0); 
		o_pixel_y		: out std_logic_vector(9 downto 0); 
		o_vga_data		: out std_logic_vector(11 downto 0) 
    );
end vga_sync;

architecture arch of vga_sync is
   -- VGA 640-by-480 sync parameters
   constant HD: integer:=640; --horizontal display area
   constant HF: integer:=16 ; --h. front porch
   constant HB: integer:=48 ; --h. back porch
   constant HR: integer:=96 ; --h. retrace
   constant VD: integer:=480; --vertical display area
   constant VF: integer:=10;  --v. front porch
   constant VB: integer:=33;  --v. back porch
   constant VR: integer:=2;   --v. retrace
   -- mod-2 counter
   signal mod2_reg, mod2_next: std_logic;
   
   -- sync counters
   signal v_count			: unsigned(9 downto 0);
   signal h_count			: unsigned(9 downto 0);
   
   -- output buffer
   signal v_sync, h_sync	: std_logic;
   -- status signal
   signal h_end, v_end		: std_logic;	
   
   signal video_on			: std_logic; 	
   
   signal vga_data			: std_logic_vector(11 downto 0); 
   signal wait_counter 		: integer; 	  
   signal read_en			: std_logic; 
   
   

	type state_type is (IDLE, H_WAIT, V_WAIT, OPERATIONAL); 
	
	signal current_state : state_type; 	 	 
	signal next_state : state_type;		
begin	
	
	
 
	  
   -- output signal
   o_hsync <= h_sync;
   o_vsync <= v_sync;
   o_pixel_x <= std_logic_vector(h_count);
   o_pixel_y <= std_logic_vector(v_count);
   o_video_on <= video_on; 
   --o_vga_data <= vga_data; 	 
   --o_read_en <= read_en; 
   
   state_transition: process(i_clk, i_reset_n) 
   begin 
	   if(i_reset_n = '0') then 
		   current_state <= IDLE; 
	   elsif(rising_edge(i_clk))then 
		   current_state <= next_state;
	   end if; 
   end process; 
	   
   
   next_state_comb: process(current_state, i_prog_empty, wait_counter, i_start_display, h_count, v_count, video_on, i_valid) 	
   begin   
	   h_end <= '0'; 
	   v_end <= '0'; 
	   --video_on <= '0'; 
	   o_vga_data <= (others => '0');   
	   --read_en <= '0'; 
	   
	   case current_state is 
		   when IDLE =>	
		       --read_en <= '0'; 
		   
			   --if (i_not_almost_empty = '1' and wait_counter > 100) then   
			   --if (i_prog_empty = '0' and wait_counter > 100 and i_start_display = '1') then  
			   --if (i_almost_full = '0' and wait_counter > 100) then 	 
			   if(i_prog_empty = '0' and i_start_display = '1') then 
				   next_state <= OPERATIONAL; 
			   else 
				   next_state <= IDLE; 
			   end if; 	
			   
		   
		   when OPERATIONAL => 	 
			   read_en <= video_on; 

		   	   if(i_start_display = '1') then 
				  next_state <= OPERATIONAL; 
			   else 
				  next_state <= IDLE; 
			   end if; 
				  
		   
			   if (h_count=(HD+HF+HB+HR-1))then -- or i_not_almost_empty = '0' then 
				   h_end <= '1'; 
				   --next_state <= H_WAIT;
			   end if; 
			   
			   if (v_count=(VD+VF+VB+VR-1)) then -- or i_not_almost_empty = '0' then 
				   v_end <= '1'; 
				   --next_state <= V_WAIT;
			   end if; 
			   
--			   if( (h_count<HD) and (v_count<VD)) then -- and i_not_almost_empty = '1') then 
--				   video_on <= '1'; 
--			   end if; 	 
			   
			   if (i_valid = '1') then 
				   o_vga_data <= i_vga_data; 
			   end if; 
				   
		   when others => 
		  	 next_state <= IDLE; 
		   
	   	end case; 

   end process; 
   
   

	  
   -- mod-800 horizontal sync counter
   row_column_counter: process (i_clk,i_reset_n)
   begin
      if (i_reset_n = '0') then 	
		  h_count <= (others => '0');  
		  h_sync <= '0'; 
		  v_count <= (others => '0'); 	 
		  v_sync <= '0'; 
		  --wait_counter <= 0;  
		  video_on 	<= '0'; 
	  elsif (rising_edge(i_clk)) then  -- 25 MHz tick	
		  h_count <= h_count; 
		  h_sync <= h_sync; 
		  v_count <= v_count; 
		  v_sync <= v_sync;  
		  --wait_counter <= wait_counter;  
		  video_on <= '0'; 
		  
		  
		  case current_state is 
			  
			  when IDLE => 
				  h_count <= (others => '0');  
				  h_sync <= '0'; 
				  v_count <= (others => '0'); 	 
				  v_sync <= '0';	 
				  video_on <= '0'; 
				  
				  --wait_counter <= wait_counter + 1;  
				  
				  
			  when H_WAIT => 
				  h_count <= (others => '0');  
				  h_sync <= '0'; 
			  when V_WAIT => 
				  v_count <= (others => '0'); 	 
				  v_sync <= '0';	
			  
			  when OPERATIONAL =>  
			  		--wait_counter <= 0;  
			  
				   if( (h_count<HD) and (v_count<VD)) then -- and i_not_almost_empty = '1') then 
					   video_on <= '1'; 
				   end if; 	
			  
				  if(h_count >= (HD+HF) 				 --656
					  and h_count <= (HD+HF+HR-1)) then  --751
					  
					  h_sync <= '1'; 
				  else 
					  h_sync <= '0'; 
				  end if; 
				  
			  
		          if h_end='1' then
		             h_count <= (others=>'0');
		          else
		             h_count <= h_count + 1;
		          end if; 
				 
				 
		
				   
				  if(v_count >= (VD+VF) 				--490
					 and v_count <= (VD+VF+VR-1)) then --491 	 
					   
					  v_sync <= '1'; 
				  else
					  v_sync <= '0'; 
				  end if; 
						   
			      if h_end='1' then
			         if (v_end='1') then
			            v_count <= (others=>'0');
			         else
			            v_count <= v_count + 1;
			         end if;
			      else
			         v_count <= v_count;
			      end if; 	
				  
			  when others => 
				  h_count <= (others => '1');  
				  h_sync <= '1'; 
				  v_count <= (others => '1'); 	 
				  v_sync <= '1';   
				  
		end case; 

      end if; 
	  
   end process;	
   

end arch;
