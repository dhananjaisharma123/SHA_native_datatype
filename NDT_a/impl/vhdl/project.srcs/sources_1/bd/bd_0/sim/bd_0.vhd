--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
--Date        : Mon Apr 19 00:03:13 2021
--Host        : hansolo.poly.edu running 64-bit Red Hat Enterprise Linux Server release 7.8 (Maipo)
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
  port (
    h_ce0 : out STD_LOGIC;
    h_we0 : out STD_LOGIC;
    IN_r_ce0 : out STD_LOGIC;
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
    IN_r_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IN_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IN_r_address1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    IN_r_ce1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    IN_r_q1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    inlen : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  end component bd_0_hls_inst_0;
  signal IN_r_q0_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal IN_r_q1_0_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ap_clk_0_1 : STD_LOGIC;
  signal ap_ctrl_0_1_done : STD_LOGIC;
  signal ap_ctrl_0_1_idle : STD_LOGIC;
  signal ap_ctrl_0_1_ready : STD_LOGIC;
  signal ap_ctrl_0_1_start : STD_LOGIC;
  signal ap_rst_0_1 : STD_LOGIC;
  signal hls_inst_IN_r_address0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hls_inst_IN_r_address1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal hls_inst_IN_r_ce0 : STD_LOGIC;
  signal hls_inst_IN_r_ce1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_h_address0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal hls_inst_h_address1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal hls_inst_h_ce0 : STD_LOGIC;
  signal hls_inst_h_ce1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_h_d0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hls_inst_h_d1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hls_inst_h_we0 : STD_LOGIC;
  signal hls_inst_h_we1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal inlen_0_1 : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_ctrl_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_ctrl_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of IN_r_address0 : signal is "xilinx.com:signal:data:1.0 DATA.IN_R_ADDRESS0 DATA";
  attribute X_INTERFACE_PARAMETER of IN_r_address0 : signal is "XIL_INTERFACENAME DATA.IN_R_ADDRESS0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of IN_r_address1 : signal is "xilinx.com:signal:data:1.0 DATA.IN_R_ADDRESS1 DATA";
  attribute X_INTERFACE_PARAMETER of IN_r_address1 : signal is "XIL_INTERFACENAME DATA.IN_R_ADDRESS1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 12} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of IN_r_ce1 : signal is "xilinx.com:signal:data:1.0 DATA.IN_R_CE1 DATA";
  attribute X_INTERFACE_PARAMETER of IN_r_ce1 : signal is "XIL_INTERFACENAME DATA.IN_R_CE1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of IN_r_q0 : signal is "xilinx.com:signal:data:1.0 DATA.IN_R_Q0 DATA";
  attribute X_INTERFACE_PARAMETER of IN_r_q0 : signal is "XIL_INTERFACENAME DATA.IN_R_Q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute X_INTERFACE_INFO of IN_r_q1 : signal is "xilinx.com:signal:data:1.0 DATA.IN_R_Q1 DATA";
  attribute X_INTERFACE_PARAMETER of IN_r_q1 : signal is "XIL_INTERFACENAME DATA.IN_R_Q1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of h_address0 : signal is "xilinx.com:signal:data:1.0 DATA.H_ADDRESS0 DATA";
  attribute X_INTERFACE_PARAMETER of h_address0 : signal is "XIL_INTERFACENAME DATA.H_ADDRESS0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of h_address1 : signal is "xilinx.com:signal:data:1.0 DATA.H_ADDRESS1 DATA";
  attribute X_INTERFACE_PARAMETER of h_address1 : signal is "XIL_INTERFACENAME DATA.H_ADDRESS1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 5} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of h_ce1 : signal is "xilinx.com:signal:data:1.0 DATA.H_CE1 DATA";
  attribute X_INTERFACE_PARAMETER of h_ce1 : signal is "XIL_INTERFACENAME DATA.H_CE1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of h_d0 : signal is "xilinx.com:signal:data:1.0 DATA.H_D0 DATA";
  attribute X_INTERFACE_PARAMETER of h_d0 : signal is "XIL_INTERFACENAME DATA.H_D0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute X_INTERFACE_INFO of h_d1 : signal is "xilinx.com:signal:data:1.0 DATA.H_D1 DATA";
  attribute X_INTERFACE_PARAMETER of h_d1 : signal is "XIL_INTERFACENAME DATA.H_D1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of h_we1 : signal is "xilinx.com:signal:data:1.0 DATA.H_WE1 DATA";
  attribute X_INTERFACE_PARAMETER of h_we1 : signal is "XIL_INTERFACENAME DATA.H_WE1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of inlen : signal is "xilinx.com:signal:data:1.0 DATA.INLEN DATA";
  attribute X_INTERFACE_PARAMETER of inlen : signal is "XIL_INTERFACENAME DATA.INLEN, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}";
begin
  IN_r_address0(11 downto 0) <= hls_inst_IN_r_address0(11 downto 0);
  IN_r_address1(11 downto 0) <= hls_inst_IN_r_address1(11 downto 0);
  IN_r_ce0 <= hls_inst_IN_r_ce0;
  IN_r_ce1(0) <= hls_inst_IN_r_ce1(0);
  IN_r_q0_0_1(7 downto 0) <= IN_r_q0(7 downto 0);
  IN_r_q1_0_1(7 downto 0) <= IN_r_q1(7 downto 0);
  ap_clk_0_1 <= ap_clk;
  ap_ctrl_0_1_start <= ap_ctrl_start;
  ap_ctrl_done <= ap_ctrl_0_1_done;
  ap_ctrl_idle <= ap_ctrl_0_1_idle;
  ap_ctrl_ready <= ap_ctrl_0_1_ready;
  ap_rst_0_1 <= ap_rst;
  h_address0(4 downto 0) <= hls_inst_h_address0(4 downto 0);
  h_address1(4 downto 0) <= hls_inst_h_address1(4 downto 0);
  h_ce0 <= hls_inst_h_ce0;
  h_ce1(0) <= hls_inst_h_ce1(0);
  h_d0(7 downto 0) <= hls_inst_h_d0(7 downto 0);
  h_d1(7 downto 0) <= hls_inst_h_d1(7 downto 0);
  h_we0 <= hls_inst_h_we0;
  h_we1(0) <= hls_inst_h_we1(0);
  inlen_0_1(63 downto 0) <= inlen(63 downto 0);
hls_inst: component bd_0_hls_inst_0
     port map (
      IN_r_address0(11 downto 0) => hls_inst_IN_r_address0(11 downto 0),
      IN_r_address1(11 downto 0) => hls_inst_IN_r_address1(11 downto 0),
      IN_r_ce0 => hls_inst_IN_r_ce0,
      IN_r_ce1(0) => hls_inst_IN_r_ce1(0),
      IN_r_q0(7 downto 0) => IN_r_q0_0_1(7 downto 0),
      IN_r_q1(7 downto 0) => IN_r_q1_0_1(7 downto 0),
      ap_clk => ap_clk_0_1,
      ap_done => ap_ctrl_0_1_done,
      ap_idle => ap_ctrl_0_1_idle,
      ap_ready => ap_ctrl_0_1_ready,
      ap_rst => ap_rst_0_1,
      ap_start => ap_ctrl_0_1_start,
      h_address0(4 downto 0) => hls_inst_h_address0(4 downto 0),
      h_address1(4 downto 0) => hls_inst_h_address1(4 downto 0),
      h_ce0 => hls_inst_h_ce0,
      h_ce1(0) => hls_inst_h_ce1(0),
      h_d0(7 downto 0) => hls_inst_h_d0(7 downto 0),
      h_d1(7 downto 0) => hls_inst_h_d1(7 downto 0),
      h_we0 => hls_inst_h_we0,
      h_we1(0) => hls_inst_h_we1(0),
      inlen(63 downto 0) => inlen_0_1(63 downto 0)
    );
end STRUCTURE;
