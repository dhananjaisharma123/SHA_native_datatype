############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SHA
set_top pqcrystals_fips202_ref_sha3_256
add_files fips202.c
add_files fips202.h
add_files -tb sha.c -cflags "-Wno-unknown-pragmas"
open_solution "NDT_b_mod"
set_part {xc7a75tlftg256-2l}
create_clock -period 10 -name default
set_clock_uncertainty 12.5%
source "./SHA/NDT_b_mod/directives.tcl"
csim_design -clean
csynth_design
cosim_design -trace_level all -rtl vhdl
export_design -flow impl -rtl vhdl -format ip_catalog
