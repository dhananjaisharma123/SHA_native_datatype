# ==============================================================
# File generated on Mon Apr 12 23:55:54 EDT 2021
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../sha.c -cflags { -Wno-unknown-pragmas}
add_files fips202.c
add_files fips202.h
set_part xc7a75tlftg256-2l
create_clock -name default -period 15
set_clock_uncertainty 12.5% default
config_compile -no_signed_zeros=0
config_compile -unsafe_math_optimizations=0
config_schedule -effort=medium
config_schedule -enable_dsp_full_reg=0
config_schedule -relax_ii_for_timing=0
config_schedule -verbose=0
config_bind -effort=medium
config_sdx -optimization_level=none
config_sdx -target=none
set_directive_unroll pqcrystals_fips202_ref_sha3_256/pqcrystals_fips202_ref_sha3_256_label2 
set_directive_loop_merge keccak_squeezeblocks/keccak_squeezeblocks_label3 
set_directive_unroll keccak_absorb/keccak_absorb_label4 
set_directive_unroll keccak_absorb/keccak_absorb_label5 -factor 2
set_directive_unroll keccak_absorb/keccak_absorb_label6 
set_directive_unroll keccak_absorb/keccak_absorb_label7 -factor 2
set_directive_unroll keccak_squeezeblocks/keccak_squeezeblocks_label3 
set_directive_unroll load64/load64_label0 
set_directive_unroll store64/store64_label1 
set_directive_pipeline KeccakF1600_StatePermute/KeccakF1600_StatePermute_label1 -II 1
