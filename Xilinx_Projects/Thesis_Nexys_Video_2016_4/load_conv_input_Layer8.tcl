
puts "Loading Convolution Input for Layer 8" 
mwr -bin -file affine2_truth.bin 0x94000100 4096
mwr -bin -file W8_single.bin 0x98000000 4096000
mwr -bin -file b8_single.bin 0x9C003160 10
puts "Convolution Inputs for Layer 8 Loaded" 