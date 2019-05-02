
puts "Loading Convolution Input for Layer 2" 
mwr -bin -file mp1_32bit.bin 0x80189300 69984
mwr -bin -file W2_single.bin 0x801CD900 614400
mwr -bin -file b2_single.bin 0x9C000200 256
puts "Convolution Inputs for Layer 2 Loaded" 