# ==============================================================
# File generated on Tue Mar 30 01:30:41 EDT 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../sha.c -cflags { -Wno-unknown-pragmas}
add_files fips202.h
add_files fips202.c
set_part xc7a75tlftg256-2l
create_clock -name default -period 10
set_clock_uncertainty 12.5% default
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_export -format=ip_catalog
config_export -rtl=vhdl
config_export -vivado_phys_opt=place
config_export -vivado_report_level=0
config_schedule -effort=medium
config_schedule -enable_dsp_full_reg=0
config_schedule -relax_ii_for_timing=0
config_schedule -verbose=0
config_bind -effort=medium
config_sdx -optimization_level=none
config_sdx -target=none
set_directive_interface pqcrystals_fips202_ref_sha3_512 
