############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_array_partition -type complete -dim 1 "pqcrystals_fips202_ref_sha3_256" s
set_directive_array_partition -type block -factor 4 -dim 1 "keccak_absorb" t
set_directive_pipeline -II 1 "pqcrystals_fips202_ref_sha3_256"
