# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 25
set hasByteEnable 0
set MemName KeccakF1600_StatePer_KeccakF_RoundConstan
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 64
set AddrRange 24
set AddrWd 5
set TrueReset 0
set IsROM 1
set ROMData { "0000000000000000000000000000000000000000000000000000000000000001" "0000000000000000000000000000000000000000000000001000000010000010" "1000000000000000000000000000000000000000000000001000000010001010" "1000000000000000000000000000000010000000000000001000000000000000" "0000000000000000000000000000000000000000000000001000000010001011" "0000000000000000000000000000000010000000000000000000000000000001" "1000000000000000000000000000000010000000000000001000000010000001" "1000000000000000000000000000000000000000000000001000000000001001" "0000000000000000000000000000000000000000000000000000000010001010" "0000000000000000000000000000000000000000000000000000000010001000" "0000000000000000000000000000000010000000000000001000000000001001" "0000000000000000000000000000000010000000000000000000000000001010" "0000000000000000000000000000000010000000000000001000000010001011" "1000000000000000000000000000000000000000000000000000000010001011" "1000000000000000000000000000000000000000000000001000000010001001" "1000000000000000000000000000000000000000000000001000000000000011" "1000000000000000000000000000000000000000000000001000000000000010" "1000000000000000000000000000000000000000000000000000000010000000" "0000000000000000000000000000000000000000000000001000000000001010" "1000000000000000000000000000000010000000000000000000000000001010" "1000000000000000000000000000000010000000000000001000000010000001" "1000000000000000000000000000000000000000000000001000000010000000" "0000000000000000000000000000000010000000000000000000000000000001" "1000000000000000000000000000000010000000000000001000000000001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.266
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name state_0_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_0_read \
    op interface \
    ports { state_0_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name state_1_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_1_read \
    op interface \
    ports { state_1_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name state_2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_2_read \
    op interface \
    ports { state_2_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name state_3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_3_read \
    op interface \
    ports { state_3_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name state_4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_4_read \
    op interface \
    ports { state_4_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name state_5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_5_read \
    op interface \
    ports { state_5_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name state_6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_6_read \
    op interface \
    ports { state_6_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name state_7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_7_read \
    op interface \
    ports { state_7_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name state_8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_8_read \
    op interface \
    ports { state_8_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name state_9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_9_read \
    op interface \
    ports { state_9_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name state_10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_10_read \
    op interface \
    ports { state_10_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name state_11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_11_read \
    op interface \
    ports { state_11_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name state_12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_12_read \
    op interface \
    ports { state_12_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name state_13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_13_read \
    op interface \
    ports { state_13_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name state_14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_14_read \
    op interface \
    ports { state_14_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name state_15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_15_read \
    op interface \
    ports { state_15_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name state_16_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_state_16_read \
    op interface \
    ports { state_16_read { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


