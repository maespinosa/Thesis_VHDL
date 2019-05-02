@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xsim DDR3_sim_test_behav -key {Behavioral:sim_1:Functional:DDR3_sim_test} -tclbatch DDR3_sim_test.tcl -view C:/Thesis_Nexys_Video_2016_4/Simulation/DDR3_sim_test_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
