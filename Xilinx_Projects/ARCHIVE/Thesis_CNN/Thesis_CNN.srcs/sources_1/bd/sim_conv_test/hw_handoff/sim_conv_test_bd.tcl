
################################################################
# This is a generated script based on design: sim_conv_test
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source sim_conv_test_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
}


# CHANGE DESIGN NAME HERE
set design_name sim_conv_test

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set clock_rtl [ create_bd_port -dir I -type clk clock_rtl ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
CONFIG.PHASE {0.000} \
 ] $clock_rtl
  set reset_rtl [ create_bd_port -dir I -type rst reset_rtl ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset_rtl

  # Create instance: Convolution_Layer_32bit_0, and set properties
  set Convolution_Layer_32bit_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Convolution_Layer_32bit:1.0 Convolution_Layer_32bit_0 ]

  # Create instance: Convolution_Tester_0, and set properties
  set Convolution_Tester_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Convolution_Tester:1.0 Convolution_Tester_0 ]

  # Create instance: Convolution_Tester_0_axi_periph, and set properties
  set Convolution_Tester_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 Convolution_Tester_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $Convolution_Tester_0_axi_periph

  # Create instance: Virtual_Memory_0, and set properties
  set Virtual_Memory_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Virtual_Memory:1.0 Virtual_Memory_0 ]

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
CONFIG.NUM_MI {1} \
 ] $axi_mem_intercon

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.3 clk_wiz ]
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER {130.958} \
CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
CONFIG.MMCM_CLKIN1_PERIOD {10.0} \
CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
CONFIG.MMCM_COMPENSATION {ZHOLD} \
CONFIG.RESET_PORT {resetn} \
CONFIG.RESET_TYPE {ACTIVE_LOW} \
 ] $clk_wiz

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.CLKOUT1_JITTER.VALUE_SRC {DEFAULT} \
CONFIG.CLKOUT1_PHASE_ERROR.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKFBOUT_MULT_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN1_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKIN2_PERIOD.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_CLKOUT0_DIVIDE_F.VALUE_SRC {DEFAULT} \
CONFIG.MMCM_COMPENSATION.VALUE_SRC {DEFAULT} \
 ] $clk_wiz

  # Create instance: rst_clk_wiz_100M, and set properties
  set rst_clk_wiz_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_100M ]

  # Create interface connections
  connect_bd_intf_net -intf_net Convolution_Layer_32bit_0_M00_AXI [get_bd_intf_pins Convolution_Layer_32bit_0/M00_AXI] [get_bd_intf_pins axi_mem_intercon/S00_AXI]
  connect_bd_intf_net -intf_net Convolution_Tester_0_M00_AXI [get_bd_intf_pins Convolution_Tester_0/M00_AXI] [get_bd_intf_pins Convolution_Tester_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net Convolution_Tester_0_axi_periph_M00_AXI [get_bd_intf_pins Convolution_Layer_32bit_0/S00_AXI] [get_bd_intf_pins Convolution_Tester_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins Virtual_Memory_0/S00_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]

  # Create port connections
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins Convolution_Layer_32bit_0/m00_axi_aclk] [get_bd_pins Convolution_Layer_32bit_0/s00_axi_aclk] [get_bd_pins Convolution_Tester_0/m00_axi_aclk] [get_bd_pins Convolution_Tester_0_axi_periph/ACLK] [get_bd_pins Convolution_Tester_0_axi_periph/M00_ACLK] [get_bd_pins Convolution_Tester_0_axi_periph/S00_ACLK] [get_bd_pins Virtual_Memory_0/s00_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins clk_wiz/clk_out1] [get_bd_pins rst_clk_wiz_100M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_locked [get_bd_pins Convolution_Tester_0/m00_axi_init_axi_txn] [get_bd_pins clk_wiz/locked] [get_bd_pins rst_clk_wiz_100M/dcm_locked]
  connect_bd_net -net clock_rtl_1 [get_bd_ports clock_rtl] [get_bd_pins clk_wiz/clk_in1]
  connect_bd_net -net reset_rtl_1 [get_bd_ports reset_rtl] [get_bd_pins Convolution_Layer_32bit_0/i_ext_reset_n] [get_bd_pins clk_wiz/resetn] [get_bd_pins rst_clk_wiz_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_100M_interconnect_aresetn [get_bd_pins Convolution_Tester_0_axi_periph/ARESETN] [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins rst_clk_wiz_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_100M_peripheral_aresetn [get_bd_pins Convolution_Layer_32bit_0/m00_axi_aresetn] [get_bd_pins Convolution_Layer_32bit_0/s00_axi_aresetn] [get_bd_pins Convolution_Tester_0/m00_axi_aresetn] [get_bd_pins Convolution_Tester_0_axi_periph/M00_ARESETN] [get_bd_pins Convolution_Tester_0_axi_periph/S00_ARESETN] [get_bd_pins Virtual_Memory_0/s00_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins rst_clk_wiz_100M/peripheral_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x76000000 [get_bd_addr_spaces Convolution_Layer_32bit_0/M00_AXI] [get_bd_addr_segs Virtual_Memory_0/S00_AXI/S00_AXI_mem] SEG_Virtual_Memory_0_S00_AXI_mem
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces Convolution_Tester_0/M00_AXI] [get_bd_addr_segs Convolution_Layer_32bit_0/S00_AXI/S00_AXI_reg] SEG_Convolution_Layer_32bit_0_S00_AXI_reg

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.6.5b  2016-09-06 bk=1.3687 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port reset_rtl -pg 1 -y 130 -defaultsOSRD
preplace port clock_rtl -pg 1 -y 200 -defaultsOSRD
preplace inst Convolution_Tester_0 -pg 1 -lvl 3 -y 90 -defaultsOSRD
preplace inst clk_wiz -pg 1 -lvl 1 -y 190 -defaultsOSRD
preplace inst Convolution_Layer_32bit_0 -pg 1 -lvl 5 -y 180 -defaultsOSRD
preplace inst Virtual_Memory_0 -pg 1 -lvl 7 -y 220 -defaultsOSRD
preplace inst rst_clk_wiz_100M -pg 1 -lvl 2 -y 150 -defaultsOSRD
preplace inst axi_mem_intercon -pg 1 -lvl 6 -y 200 -defaultsOSRD
preplace inst Convolution_Tester_0_axi_periph -pg 1 -lvl 4 -y 130 -defaultsOSRD
preplace netloc clk_wiz_locked 1 1 2 180 60 530
preplace netloc Convolution_Tester_0_axi_periph_M00_AXI 1 4 1 N
preplace netloc axi_mem_intercon_M00_AXI 1 6 1 N
preplace netloc Convolution_Tester_0_M00_AXI 1 3 1 N
preplace netloc rst_clk_wiz_100M_interconnect_aresetn 1 2 4 NJ 170 840 280 NJ 280 1430J
preplace netloc clock_rtl_1 1 0 1 NJ
preplace netloc Convolution_Layer_32bit_0_M00_AXI 1 5 1 N
preplace netloc reset_rtl_1 1 0 5 20 10 190J 10 NJ 10 NJ 10 1120
preplace netloc rst_clk_wiz_100M_peripheral_aresetn 1 2 5 540 330 860 330 1130 330 1440 330 1710J
preplace netloc clk_wiz_clk_out1 1 1 6 200 320 520 320 850 320 1120 320 1420 320 1700J
levelinfo -pg 1 0 100 360 690 990 1280 1570 1800 1900 -top 0 -bot 340
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


