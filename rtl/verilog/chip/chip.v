module chip


or1200_top u_or1200_top (
	// System
	clk_i,
    rst_i,
    pic_ints_i,
    clmode_i,

	// Instruction WISHBONE INTERFACE
	iwb_clk_i,
    iwb_rst_i,
    iwb_ack_i,
    iwb_err_i,
    iwb_rty_i,
    iwb_dat_i,
	iwb_cyc_o,
    iwb_adr_o,
    iwb_stb_o,
    iwb_we_o,
    iwb_sel_o,
    iwb_dat_o,
`ifdef OR1200_WB_CAB
	iwb_cab_o,
`endif
`ifdef OR1200_WB_B3
	iwb_cti_o,
    iwb_bte_o,
`endif
	// Data WISHBONE INTERFACE
	dwb_clk_i,
    dwb_rst_i,
    dwb_ack_i,
    dwb_err_i,
    dwb_rty_i,
    dwb_dat_i,
	dwb_cyc_o,
    dwb_adr_o,
    dwb_stb_o,
    dwb_we_o,
    dwb_sel_o,
    dwb_dat_o,
`ifdef OR1200_WB_CAB
	dwb_cab_o,
`endif
`ifdef OR1200_WB_B3
	dwb_cti_o,
    dwb_bte_o,
`endif

	// External Debug Interface
	dbg_stall_i,
    dbg_ewt_i,
    dbg_lss_o,
    dbg_is_o,
    dbg_wp_o,
    dbg_bp_o,
	dbg_stb_i,
    dbg_we_i,
    dbg_adr_i,
    dbg_dat_i,
    dbg_dat_o,
    dbg_ack_o,
	
`ifdef OR1200_BIST
	// RAM BIST
	mbist_si_i,
    mbist_so_o,
    mbist_ctrl_i,
`endif
	// Power Management
	pm_cpustall_i,
	pm_clksd_o,
    pm_dc_gate_o,
    pm_ic_gate_o,
    pm_dmmu_gate_o, 
	pm_immu_gate_o,
    pm_tt_gate_o,
    pm_cpu_gate_o,
    pm_wakeup_o,
    pm_lvolt_o,
    sig_tick		  
);
