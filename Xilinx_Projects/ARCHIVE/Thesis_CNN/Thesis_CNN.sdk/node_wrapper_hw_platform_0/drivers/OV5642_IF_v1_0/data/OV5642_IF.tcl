

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "OV5642_IF" "NUM_INSTANCES" "DEVICE_ID"  "C_S00_AXI_BASEADDR" "C_S00_AXI_HIGHADDR"
}
