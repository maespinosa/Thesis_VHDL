
puts "Loading Convolution Input for Layer 3" 
mwr -bin -file mp2_32bit.bin 0x804DBF00 43264
mwr -bin -file W3_single.bin 0x80506400 884736
mwr -bin -file b3_single.bin 0x9C000410 384
puts "Convolution Inputs for Layer 3 Loaded" 