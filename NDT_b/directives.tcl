############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_unroll "load64/load64_label0"
set_directive_unroll "store64/store64_label1"
set_directive_unroll "pqcrystals_fips202_ref_sha3_256/pqcrystals_fips202_ref_sha3_256_label2"
set_directive_loop_merge "keccak_squeezeblocks/keccak_squeezeblocks_label3"
set_directive_unroll "keccak_absorb/keccak_absorb_label4"
set_directive_unroll -factor 2 "keccak_absorb/keccak_absorb_label5"
set_directive_unroll "keccak_absorb/keccak_absorb_label6"
set_directive_unroll -factor 2 "keccak_absorb/keccak_absorb_label7"
set_directive_unroll "keccak_squeezeblocks/keccak_squeezeblocks_label3"
