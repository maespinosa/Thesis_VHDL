#!/bin/bash -f
# Vivado (TM) v2015.4 (64-bit)
#
# Filename    : mig_7series_0.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Mon May 01 01:33:29 -0700 2017
# IP Build 1412160 on Tue Nov 17 13:47:24 MST 2015 
#
# usage: mig_7series_0.sh [-help]
# usage: mig_7series_0.sh [-lib_map_path]
# usage: mig_7series_0.sh [-noclean_files]
# usage: mig_7series_0.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'mig_7series_0.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
# ********************************************************************************************************

# Script info
echo -e "mig_7series_0.sh - Script generated by export_simulation (Vivado v2015.4 (64-bit)-id)\n"

# Script usage
usage()
{
  msg="Usage: mig_7series_0.sh [-help]\n\
Usage: mig_7series_0.sh [-lib_map_path]\n\
Usage: mig_7series_0.sh [-reset_run]\n\
Usage: mig_7series_0.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

if [[ ($# == 1 ) && ($1 != "-lib_map_path" && $1 != "-noclean_files" && $1 != "-reset_run" && $1 != "-help" && $1 != "-h") ]]; then
  echo -e "ERROR: Unknown option specified '$1' (type \"./mig_7series_0.sh -help\" for more information)\n"
  exit 1
fi

if [[ ($1 == "-help" || $1 == "-h") ]]; then
  usage
fi

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./mig_7series_0.sh -help\" for more information)\n"
        exit 1
      fi
      # precompiled simulation library directory path
     create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
     create_lib_mappings $2
  esac

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Remove generated data from the previous run and re-create setup files/library mappings
reset_run()
{
  files_to_remove=(ucli.key mig_7series_0_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc mig_7series_0_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done
}

# Main steps
run()
{
  setup $1 $2
  compile
  elaborate
  simulate
}

# Create design library directory paths and define design library mappings in cds.lib
create_lib_mappings()
{
  libs=(xil_defaultlib)
  file="synopsys_sim.setup"
  dir="vcs"

  if [[ -e $file ]]; then
    rm -f $file
  fi

  if [[ -e $dir ]]; then
    rm -rf $dir
  fi

  touch $file
  lib_map_path="<SPECIFY_COMPILED_LIB_PATH>"
  if [[ ($1 != "" && -e $1) ]]; then
    lib_map_path="$1"
  else
    echo -e "ERROR: Compiled simulation library directory path not specified or does not exist (type "./top.sh -help" for more information)\n"
  fi
  incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
  echo $incl_ref >> $file

  for (( i=0; i<${#libs[*]}; i++ )); do
    lib="${libs[i]}"
    lib_dir="$dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
      mapping="$lib : $dir/$lib"
      echo $mapping >> $file
    fi
  done
}


# RUN_STEP: <compile>
compile()
{
  # Directory path for design sources and include directories (if any) wrt this path
  ref_dir="."
  # Command line options
  opts_ver="-full64 -timescale=1ps/1ps"
  opts_vhd="-full64"

  # Compile design files
  vlogan -work xil_defaultlib $opts_ver +v2k \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_clk_ibuf.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_infrastructure.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_iodelay_ctrl.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_tempmon.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_mux.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_row_col.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_select.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_cntrl.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_common.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_compare.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_mach.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_queue.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_state.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_col_mach.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_mc.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_cntrl.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_common.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_mach.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_round_robin_arb.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_buf.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_dec_fix.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_gen.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_merge_enc.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_fi_xor.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ip_top/mig_7series_v2_4_memc_ui_top_std.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ip_top/mig_7series_v2_4_mem_intfc.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_group_io.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_lane.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_calib_top.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_if_post_fifo.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy_wrapper.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_of_pre_fifo.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_4lanes.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ck_addr_cmd_delay.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal_hr.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_init.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_cntlr.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_data.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_edge.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_lim.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_mux.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_po_cntlr.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_samp.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_oclkdelay_cal.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_prbs_rdlvl.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_rdlvl.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_tempmon.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrcal.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl_off_delay.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_prbs_gen.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_cc.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_edge_store.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_meta.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_pd.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_tap_base.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_top.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_cmd.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_rd_data.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_top.v" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_wr_data.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $opts_vhd \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_top.vhd" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/mig_7series_0_mig_sim.vhd" \
    "$ref_dir/../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/mig_7series_0.vhd" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $opts_ver +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"

  vcs $opts xil_defaultlib.mig_7series_0 xil_defaultlib.glbl -o mig_7series_0_simv
}

# RUN_STEP: <simulate>
simulate()
{
  opts="-ucli -licqueue -l simulate.log"

  ./mig_7series_0_simv $opts -do simulate.do
}
# Script usage
usage()
{
  msg="Usage: mig_7series_0.sh [-help]\n\
Usage: mig_7series_0.sh [-lib_map_path]\n\
Usage: mig_7series_0.sh [-reset_run]\n\
Usage: mig_7series_0.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}


# Launch script
run $1 $2