
puts "Loading Convolution Input for Layer 6" 
mwr -bin -file mp3_32bit.bin 0x8117F900 9216
mwr -bin -file W6_single.bin 0x84000000 37748736
mwr -bin -file b6_single.bin 0x9C001140 4096
puts "Convolution Inputs for Layer 6 Loaded" 