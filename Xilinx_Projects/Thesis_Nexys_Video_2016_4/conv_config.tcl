cd C:/Thesis_Nexys_Video_2016_4



puts "Configuring Convolution Unit Layer 1" 


mwr 0x44a00008 0x95000000
mwr 0x44a0000C 0x8006D900
mwr 0x44a00010 0x8004B800
mwr 0x44a00014 0xE3E30003
mwr 0x44a00018 0x37370060
mwr 0x44a0001C 0xBB000003
mwr 0x44a00020 0x00600340
mwr 0x44a00024 0x03030200
mwr 0x44a00028 0x03030200
mwr 0x44a0002C 0x03030200
mwr 0x44a00030 0x9C000000
mwr 0x44a00034 0x0000005F
mwr 0x44a00038 0x0000016B
mwr 0x44a0003C 0x0000016B
mwr 0x44a00040 0x0000C949
mwr 0x44a00044 0x000009C1
mwr 0x44a00048 0x00000BD1
mwr 0x44a0004C 0x00005520
puts "Convolution Unit Layer 1 Configured" 	