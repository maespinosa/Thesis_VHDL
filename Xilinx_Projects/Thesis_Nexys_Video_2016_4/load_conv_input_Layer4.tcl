
puts "Loading Convolution Input for Layer 4" 
mwr -bin -file relu3_truth.bin 0x80866500 64896
mwr -bin -file W4_single.bin 0x808A5B00 1327104
mwr -bin -file b4_single.bin 0x9C000A20 384
puts "Convolution Inputs for Layer 4 Loaded" 