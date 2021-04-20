# ==============================================================
# File generated on Mon Apr 12 09:19:57 EDT 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../sha.c -cflags { -Wno-unknown-pragmas}
add_files fips202.h
add_files fips202.c
set_part xc7vx980tffg1930-2l
create_clock -name default -period 10
set_clock_uncertainty 12.5% default
config_export -format=ip_catalog
config_export -rtl=vhdl
set_directive_array_partition pqcrystals_fips202_ref_sha3_256 
set_directive_pipeline pqcrystals_fips202_ref_sha3_256 
set_directive_array_partition keccak_absorb 
set_directive_pipeline keccak_absorb -II 1
set_directive_pipeline keccak_squeezeblocks -II 1
set_directive_pipeline KeccakF1600_StatePermute -II 1
