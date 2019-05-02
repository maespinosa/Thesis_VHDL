vlib work
vlib msim

vlib msim/xil_defaultlib

vmap xil_defaultlib msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_clk_ibuf.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_infrastructure.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_iodelay_ctrl.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/clocking/mig_7series_v2_4_tempmon.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_mux.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_row_col.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_arb_select.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_cntrl.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_common.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_compare.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_mach.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_queue.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_bank_state.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_col_mach.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_mc.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_cntrl.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_common.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_rank_mach.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/controller/mig_7series_v2_4_round_robin_arb.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_buf.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_dec_fix.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_gen.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_ecc_merge_enc.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ecc/mig_7series_v2_4_fi_xor.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ip_top/mig_7series_v2_4_memc_ui_top_std.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ip_top/mig_7series_v2_4_mem_intfc.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_group_io.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_byte_lane.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_calib_top.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_if_post_fifo.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_mc_phy_wrapper.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_of_pre_fifo.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_4lanes.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_dqs_found_cal_hr.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_init.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_cntlr.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_data.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_edge.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_lim.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_mux.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_po_cntlr.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_ocd_samp.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_oclkdelay_cal.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_prbs_rdlvl.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_rdlvl.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_tempmon.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrcal.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_wrlvl_off_delay.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_prbs_gen.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_cc.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_edge_store.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_meta.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_pd.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_tap_base.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_poc_top.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_cmd.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_rd_data.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_top.v" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/ui/mig_7series_v2_4_ui_wr_data.v" \

vcom -work xil_defaultlib -64 \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/phy/mig_7series_v2_4_ddr_phy_top.vhd" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/mig_7series_0_mig_sim.vhd" \
"../../../../sensor_to_monitor_node.srcs/sources_1/ip/mig_7series_0_1/mig_7series_0/user_design/rtl/mig_7series_0.vhd" \

vlog -work xil_defaultlib "glbl.v"

