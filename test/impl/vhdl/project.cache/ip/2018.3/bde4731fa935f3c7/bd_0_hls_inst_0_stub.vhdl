-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Tue Apr 13 16:05:05 2021
-- Host        : hansolo.poly.edu running 64-bit Red Hat Enterprise Linux Server release 7.8 (Maipo)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx980tffg1930-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    h_ce0 : out STD_LOGIC;
    h_we0 : out STD_LOGIC;
    in_r_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    h_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    h_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    h_address1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    h_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    h_we1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    h_d1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    in_r_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    in_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inlen : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "h_ce0,h_we0,in_r_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,h_address0[4:0],h_d0[7:0],h_address1[4:0],h_ce1[0:0],h_we1[0:0],h_d1[7:0],in_r_address0[1:0],in_r_q0[7:0],inlen[63:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "pqcrystals_fips202_ref_sha3_256,Vivado 2018.3";
begin
end;
