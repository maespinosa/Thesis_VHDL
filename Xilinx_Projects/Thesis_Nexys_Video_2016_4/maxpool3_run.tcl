
source mp3_clear.tcl
source maxpool3_config.tcl
mwr -bin -file relu5_truth.bin 0x81155400 186624

mwr 0x44a1001C 0x00000001

puts "Running Max Pool Layer"