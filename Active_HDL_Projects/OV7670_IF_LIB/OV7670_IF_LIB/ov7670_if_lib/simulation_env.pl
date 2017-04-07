use Cwd; 
my $pwd = cwd(); 

system('TASKKILL /F /IM vish* /T 1>nul 2>&1');
system('"C:\Modeltech_pe_edu_10.4a\win32pe_edu\modelsim.exe"'); 
open(WRDATA, ">modelsim.do") or die "Could not open 'modelsim.do'!";
open(RDATA, "<compilation.order") or die "Could not open 'compilation.order'!";

$directory = $dsn; 

print WRDATA "transcript on\n";
print WRDATA "vmap -modelsim_quiet xilinxcorelib C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/xilinxcorelib\n";
print WRDATA "vmap -modelsim_quiet unisim C:/Xilinx/14.6/ISE_DS/ISE/vhdl/mti_pe/10.4a/nt64/unisim\n";
print WRDATA "view -undock wave\n";
print WRDATA "cd $pwd\n";

print WRDATA "vlib modelsim\n"; 

$src_string = "vcom -2008 -work modelsim ./src/" ;   
$compile_string = "vcom -2008 -work modelsim ./compile/" ;   
$sim_string = "vsim modelsim."; 

@files = <RDATA>; 
$i = 0;  

while(scalar @files != $i)
{  			
   $x = $files[$i]; 
   
   $string_length = length $files[$i]; 
   $x = substr($x,6,$string_length); 

   #if(substr($x,0,-3) == bde) 	
   if($files[$i] =~ /bde/)
   {
   		$x =~ s/bde/vhd/g; 
		$x = lc $x; 
		print WRDATA "$compile_string$x";
   }	   
   else 
   {
   		$x = $x;  
		print WRDATA "$src_string$x";
   }
   
   if ($i + 1 == scalar @files)
   {
   	   $x = substr($x,0,-5);
	   print WRDATA "$sim_string$x";
   }
   $i = $i+1; 
}	


close(WRDATA); 

