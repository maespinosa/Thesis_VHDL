
source mp_clear_layer1.tcl
source maxpool_config.tcl
mwr -bin -file relu1_truth.bin 0x8006D900 1161600

mwr 0x44a1001C 0x00000001

puts "Running Max Pool Layer"