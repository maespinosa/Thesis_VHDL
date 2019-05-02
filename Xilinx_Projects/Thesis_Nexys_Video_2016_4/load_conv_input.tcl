
puts "Loading Convolution Input for Layer 1" 
mwr -bin -file input_image_32bit.bin 0x84000000 154587
mwr -bin -file W1_single.bin 0x8004B800 34848
mwr -bin -file b1_single.bin 0x9C000000 96
puts "Convolution Inputs for Layer 1 Loaded" 
