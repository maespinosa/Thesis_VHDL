
puts "Loading Convolution Input for Layer 5" 
mwr -bin -file relu4_truth.bin 0x80DB5A00 64896
mwr -bin -file W5_single.bin 0x80DF5300 884736
mwr -bin -file b5_single.bin 0x9C001030 256
puts "Convolution Inputs for Layer 5 Loaded" 