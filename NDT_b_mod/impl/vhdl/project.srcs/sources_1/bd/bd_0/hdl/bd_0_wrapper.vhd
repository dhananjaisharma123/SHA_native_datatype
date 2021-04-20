--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Mon Apr 19 03:14:35 2021
--Host        : hansolo.poly.edu running 64-bit Red Hat Enterprise Linux Server release 7.8 (Maipo)
--Command     : generate_target bd_0_wrapper.bd
--Design      : bd_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_wrapper is
  port (
    IN_r_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IN_r_address1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IN_r_ce0 : out STD_LOGIC;
    IN_r_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IN_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IN_r_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC;
    ap_ctrl_start : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    h_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    h_address1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    h_ce0 : out STD_LOGIC;
    h_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    h_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    h_d1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    h_we0 : out STD_LOGIC;
    h_we1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    inlen : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    IN_r_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IN_r_address1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IN_r_ce0 : out STD_LOGIC;
    IN_r_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IN_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IN_r_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    h_address0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    h_address1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    h_ce0 : out STD_LOGIC;
    h_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    h_d0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    h_d1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    h_we0 : out STD_LOGIC;
    h_we1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    inlen : in STD_LOGIC_VECTOR ( 63 downto 0 );
    ap_ctrl_start : in STD_LOGIC;
    ap_ctrl_done : out STD_LOGIC;
    ap_ctrl_idle : out STD_LOGIC;
    ap_ctrl_ready : out STD_LOGIC
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      IN_r_address0(11 downto 0) => IN_r_address0(11 downto 0),
      IN_r_address1(11 downto 0) => IN_r_address1(11 downto 0),
      IN_r_ce0 => IN_r_ce0,
      IN_r_ce1(0) => IN_r_ce1(0),
      IN_r_q0(7 downto 0) => IN_r_q0(7 downto 0),
      IN_r_q1(7 downto 0) => IN_r_q1(7 downto 0),
      ap_clk => ap_clk,
      ap_ctrl_done => ap_ctrl_done,
      ap_ctrl_idle => ap_ctrl_idle,
      ap_ctrl_ready => ap_ctrl_ready,
      ap_ctrl_start => ap_ctrl_start,
      ap_rst => ap_rst,
      h_address0(4 downto 0) => h_address0(4 downto 0),
      h_address1(4 downto 0) => h_address1(4 downto 0),
      h_ce0 => h_ce0,
      h_ce1(0) => h_ce1(0),
      h_d0(7 downto 0) => h_d0(7 downto 0),
      h_d1(7 downto 0) => h_d1(7 downto 0),
      h_we0 => h_we0,
      h_we1(0) => h_we1(0),
      inlen(63 downto 0) => inlen(63 downto 0)
    );
end STRUCTURE;
