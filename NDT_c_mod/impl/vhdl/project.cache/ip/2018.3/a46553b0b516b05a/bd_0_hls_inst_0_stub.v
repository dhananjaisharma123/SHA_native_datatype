// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Mon Apr 19 02:45:36 2021
// Host        : hansolo.poly.edu running 64-bit Red Hat Enterprise Linux Server release 7.8 (Maipo)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tlftg256-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pqcrystals_fips202_ref_sha3_256,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(h_ce0, h_we0, IN_r_ce0, ap_clk, ap_rst, ap_start, 
  ap_done, ap_idle, ap_ready, h_address0, h_d0, h_address1, h_ce1, h_we1, h_d1, IN_r_address0, IN_r_q0, 
  IN_r_address1, IN_r_ce1, IN_r_q1, inlen)
/* synthesis syn_black_box black_box_pad_pin="h_ce0,h_we0,IN_r_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,h_address0[4:0],h_d0[7:0],h_address1[4:0],h_ce1[0:0],h_we1[0:0],h_d1[7:0],IN_r_address0[11:0],IN_r_q0[7:0],IN_r_address1[11:0],IN_r_ce1[0:0],IN_r_q1[7:0],inlen[63:0]" */;
  output h_ce0;
  output h_we0;
  output IN_r_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [4:0]h_address0;
  output [7:0]h_d0;
  output [4:0]h_address1;
  output [0:0]h_ce1;
  output [0:0]h_we1;
  output [7:0]h_d1;
  output [11:0]IN_r_address0;
  input [7:0]IN_r_q0;
  output [11:0]IN_r_address1;
  output [0:0]IN_r_ce1;
  input [7:0]IN_r_q1;
  input [63:0]inlen;
endmodule
