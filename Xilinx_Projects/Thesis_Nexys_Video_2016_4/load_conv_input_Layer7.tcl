
puts "Loading Convolution Input for Layer 7" 
mwr -bin -file affine1_truth.bin 0x8D000100 4096
mwr -bin -file W7_single.bin 0x90000000 16777216
mwr -bin -file b7_single.bin 0x9C002150 4096
puts "Convolution Inputs for Layer 7 Loaded" 