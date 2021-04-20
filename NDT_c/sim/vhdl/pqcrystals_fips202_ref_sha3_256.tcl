
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set h_group [add_wave_group h(memory) -into $coutputgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_d1 -into $h_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_we1 -into $h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_ce1 -into $h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_address1 -into $h_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_d0 -into $h_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_we0 -into $h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_ce0 -into $h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/h_address0 -into $h_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set inlen_group [add_wave_group inlen(wire) -into $cinputgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/inlen -into $inlen_group -radix hex
set in_group [add_wave_group in(memory) -into $cinputgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/in_r_q0 -into $in_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/in_r_ce0 -into $in_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/in_r_address0 -into $in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/ap_start -into $blocksiggroup
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/ap_done -into $blocksiggroup
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/ap_idle -into $blocksiggroup
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AESL_inst_pqcrystals_fips202_ref_sha3_256/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/LENGTH_h -into $tb_portdepth_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/LENGTH_in_r -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_h_group [add_wave_group h(memory) -into $tbcoutputgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_d1 -into $tb_h_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_we1 -into $tb_h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_ce1 -into $tb_h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_address1 -into $tb_h_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_d0 -into $tb_h_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_we0 -into $tb_h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_ce0 -into $tb_h_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/h_address0 -into $tb_h_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_inlen_group [add_wave_group inlen(wire) -into $tbcinputgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/inlen -into $tb_inlen_group -radix hex
set tb_in_group [add_wave_group in(memory) -into $tbcinputgroup]
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/in_r_q0 -into $tb_in_group -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/in_r_ce0 -into $tb_in_group -color #ffff00 -radix hex
add_wave /apatb_pqcrystals_fips202_ref_sha3_256_top/in_r_address0 -into $tb_in_group -radix hex
save_wave_config pqcrystals_fips202_ref_sha3_256.wcfg
run all
quit

