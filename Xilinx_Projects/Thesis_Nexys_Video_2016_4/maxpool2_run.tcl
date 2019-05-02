
source mp2_clear.tcl
source maxpool2_config.tcl
mwr -bin -file relu2_truth.bin 0x80425A00 186624

mwr 0x44a1001C 0x00000001

puts "Running Max Pool Layer"