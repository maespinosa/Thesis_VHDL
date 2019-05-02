connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys Video 210276A5A652B" && level==0} -index 0
fpga -file C:/Thesis_Nexys_Video_2016_4/Thesis_Nexys_Video_2016_4.sdk/final_accelerator_wrapper_hw_platform_0/final_accelerator_wrapper.bit
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys Video 210276A5A652B"} -index 0
loadhw C:/Thesis_Nexys_Video_2016_4/Thesis_Nexys_Video_2016_4.sdk/final_accelerator_wrapper_hw_platform_0/system.hdf
bpadd -addr &main