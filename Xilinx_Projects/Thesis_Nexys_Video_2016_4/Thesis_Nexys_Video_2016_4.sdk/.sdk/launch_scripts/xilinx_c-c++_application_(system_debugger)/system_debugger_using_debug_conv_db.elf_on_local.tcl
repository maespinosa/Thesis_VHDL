connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys Video 210276A5A652B"} -index 0
loadhw C:/Thesis_Nexys_Video_2016_4/Thesis_Nexys_Video_2016_4.sdk/neural_net_accel_conv_db_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys Video 210276A5A652B"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys Video 210276A5A652B"} -index 0
dow C:/Thesis_Nexys_Video_2016_4/Thesis_Nexys_Video_2016_4.sdk/conv_db/Debug/conv_db.elf
bpadd -addr &main
