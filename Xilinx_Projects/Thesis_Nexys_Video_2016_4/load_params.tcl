puts "============Loading Input Image============" 
mwr -bin -file input_image_single.bin 0x95000000 154587
puts "============Input Image Loaded============" 

puts "============Loading Parameters============" 
puts "Loading Layer 1 Weights and Biases" 
mwr -bin -file W1_single.bin 0x8004B800 34848
mwr -bin -file b1_single.bin 0x9C000000 96
puts "Layer 1 Weights and Biases Loaded" 

puts "Loading Layer 2 Weights and Biases" 
mwr -bin -file W2_single.bin 0x801CD900 614400
mwr -bin -file b2_single.bin 0x9C000200 256
puts "Layer 2 Weights and Biases Loaded" 

puts "Loading Layer 3 Weights and Biases" 
mwr -bin -file W3_single.bin 0x80506400 884736
mwr -bin -file b3_single.bin 0x9C000410 384
puts "Layer 3 Weights and Biases Loaded" 

puts "Loading Layer 4 Weights and Biases" 
mwr -bin -file W4_single.bin 0x808A5B00 1327104
mwr -bin -file b4_single.bin 0x9C000A20 384
puts "Layer 4 Weights and Biases Loaded" 

puts "Loading Layer 5 Weights and Biases" 
mwr -bin -file W5_single.bin 0x80DF5300 884736
mwr -bin -file b5_single.bin 0x9C001030 256
puts "Layer 5 Weights and Biases Loaded" 

puts "Loading Layer 6 Weights and Biases" 
mwr -bin -file W6_single.bin 0x84000000 37748736
mwr -bin -file b6_single.bin 0x9C001140 4096
puts "Layer 6 Weights and Biases Loaded" 

puts "Loading Layer 7 Weights and Biases" 
mwr -bin -file W7_single.bin 0x90000000 16777216
mwr -bin -file b7_single.bin 0x9C002150 4096
puts "Layer 7 Weights and Biases Loaded" 

puts "Loading Layer 8 Weights and Biases" 
mwr -bin -file W8_single.bin 0x98000000 4096000
mwr -bin -file b8_single.bin 0x9C003160 10
puts "Layer 8 Weights and Biases Loaded" 

puts "============INPUT IMAGE AND ALL PARAMETES LOADED============" 

puts "============CLEARING ALL OUTPUT REGIONS=============="

source clear_layer1.tcl
source clear_layer2.tcl
source clear_layer3.tcl
source clear_layer4.tcl
source clear_layer5.tcl
source clear_layer6.tcl
source clear_layer7.tcl
source clear_layer8.tcl

