// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="pqcrystals_fips202_ref_sha3_256,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx980tffg1930-2l,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=5.078000,HLS_SYN_LAT=441,HLS_SYN_TPT=none,HLS_SYN_MEM=8,HLS_SYN_DSP=0,HLS_SYN_FF=3354,HLS_SYN_LUT=18434,HLS_VERSION=2018_3}" *)

module pqcrystals_fips202_ref_sha3_256 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        h_address0,
        h_ce0,
        h_we0,
        h_d0,
        h_address1,
        h_ce1,
        h_we1,
        h_d1,
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        inlen
);

parameter    ap_ST_fsm_state1 = 25'd1;
parameter    ap_ST_fsm_state2 = 25'd2;
parameter    ap_ST_fsm_state3 = 25'd4;
parameter    ap_ST_fsm_state4 = 25'd8;
parameter    ap_ST_fsm_state5 = 25'd16;
parameter    ap_ST_fsm_state6 = 25'd32;
parameter    ap_ST_fsm_state7 = 25'd64;
parameter    ap_ST_fsm_state8 = 25'd128;
parameter    ap_ST_fsm_state9 = 25'd256;
parameter    ap_ST_fsm_state10 = 25'd512;
parameter    ap_ST_fsm_state11 = 25'd1024;
parameter    ap_ST_fsm_state12 = 25'd2048;
parameter    ap_ST_fsm_state13 = 25'd4096;
parameter    ap_ST_fsm_state14 = 25'd8192;
parameter    ap_ST_fsm_state15 = 25'd16384;
parameter    ap_ST_fsm_state16 = 25'd32768;
parameter    ap_ST_fsm_state17 = 25'd65536;
parameter    ap_ST_fsm_state18 = 25'd131072;
parameter    ap_ST_fsm_state19 = 25'd262144;
parameter    ap_ST_fsm_state20 = 25'd524288;
parameter    ap_ST_fsm_state21 = 25'd1048576;
parameter    ap_ST_fsm_state22 = 25'd2097152;
parameter    ap_ST_fsm_state23 = 25'd4194304;
parameter    ap_ST_fsm_state24 = 25'd8388608;
parameter    ap_ST_fsm_state25 = 25'd16777216;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] h_address0;
output   h_ce0;
output   h_we0;
output  [7:0] h_d0;
output  [4:0] h_address1;
output   h_ce1;
output   h_we1;
output  [7:0] h_d1;
output  [1:0] in_r_address0;
output   in_r_ce0;
input  [7:0] in_r_q0;
input  [63:0] inlen;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] h_address0;
reg h_ce0;
reg h_we0;
reg[4:0] h_address1;
reg h_ce1;
reg h_we1;

(* fsm_encoding = "none" *) reg   [24:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] i_4_i_fu_821_p2;
reg   [4:0] i_4_i_reg_995;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_i_5_fu_815_p2;
wire   [7:0] tmp_4_i_fu_832_p3;
reg   [7:0] tmp_4_i_reg_1015;
wire    ap_CS_fsm_state6;
reg   [7:0] tmp_4_2_i_i_reg_1025;
reg   [7:0] tmp_4_3_i_i_reg_1030;
reg   [7:0] tmp_4_4_i_i_reg_1035;
reg   [7:0] tmp_4_5_i_i_reg_1040;
reg   [7:0] tmp_4_6_i_i_reg_1045;
reg   [7:0] tmp_4_7_i_i_reg_1050;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state20;
wire    ap_CS_fsm_state21;
wire    ap_CS_fsm_state22;
wire    ap_CS_fsm_state23;
wire    ap_CS_fsm_state24;
reg   [4:0] s_address0;
reg    s_ce0;
reg    s_we0;
reg   [63:0] s_d0;
wire   [63:0] s_q0;
reg   [4:0] s_address1;
reg    s_ce1;
reg    s_we1;
reg   [63:0] s_d1;
wire   [63:0] s_q1;
reg   [7:0] out_assign_address0;
reg    out_assign_ce0;
reg    out_assign_we0;
reg   [7:0] out_assign_d0;
wire   [7:0] out_assign_q0;
reg   [7:0] out_assign_address1;
reg    out_assign_ce1;
reg    out_assign_we1;
reg   [7:0] out_assign_d1;
wire   [7:0] out_assign_q1;
wire    grp_KeccakF1600_StatePer_fu_800_ap_start;
wire    grp_KeccakF1600_StatePer_fu_800_ap_done;
wire    grp_KeccakF1600_StatePer_fu_800_ap_idle;
wire    grp_KeccakF1600_StatePer_fu_800_ap_ready;
wire   [4:0] grp_KeccakF1600_StatePer_fu_800_state_address0;
wire    grp_KeccakF1600_StatePer_fu_800_state_ce0;
wire    grp_KeccakF1600_StatePer_fu_800_state_we0;
wire   [63:0] grp_KeccakF1600_StatePer_fu_800_state_d0;
wire   [4:0] grp_KeccakF1600_StatePer_fu_800_state_address1;
wire    grp_KeccakF1600_StatePer_fu_800_state_ce1;
wire    grp_KeccakF1600_StatePer_fu_800_state_we1;
wire   [63:0] grp_KeccakF1600_StatePer_fu_800_state_d1;
wire    grp_keccak_absorb_fu_807_ap_start;
wire    grp_keccak_absorb_fu_807_ap_done;
wire    grp_keccak_absorb_fu_807_ap_idle;
wire    grp_keccak_absorb_fu_807_ap_ready;
wire   [4:0] grp_keccak_absorb_fu_807_s_address0;
wire    grp_keccak_absorb_fu_807_s_ce0;
wire    grp_keccak_absorb_fu_807_s_we0;
wire   [63:0] grp_keccak_absorb_fu_807_s_d0;
wire   [4:0] grp_keccak_absorb_fu_807_s_address1;
wire    grp_keccak_absorb_fu_807_s_ce1;
wire    grp_keccak_absorb_fu_807_s_we1;
wire   [63:0] grp_keccak_absorb_fu_807_s_d1;
wire   [1:0] grp_keccak_absorb_fu_807_m_address0;
wire    grp_keccak_absorb_fu_807_m_ce0;
reg   [4:0] i_i_reg_788;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state9;
reg    grp_KeccakF1600_StatePer_fu_800_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_keccak_absorb_fu_807_ap_start_reg;
wire    ap_CS_fsm_state2;
wire   [63:0] tmp_6_i_fu_827_p1;
wire   [63:0] tmp_5_i_fu_840_p1;
wire   [63:0] sum_1_i_i5_cast_fu_867_p1;
wire   [63:0] sum_2_i_i6_cast_fu_937_p1;
wire    ap_CS_fsm_state7;
wire   [63:0] sum_3_i_i7_cast_fu_947_p1;
wire   [63:0] sum_4_i_i8_cast_fu_957_p1;
wire    ap_CS_fsm_state8;
wire   [63:0] sum_5_i_i9_cast_fu_967_p1;
wire   [63:0] sum_6_i_i_cast_fu_977_p1;
wire   [63:0] sum_7_i_i_cast_fu_987_p1;
wire    ap_CS_fsm_state25;
wire   [7:0] tmp_fu_845_p1;
wire   [7:0] sum_1_i_i5_fu_861_p2;
wire   [7:0] sum_2_i_i6_fu_932_p2;
wire   [7:0] sum_3_i_i7_fu_942_p2;
wire   [7:0] sum_4_i_i8_fu_952_p2;
wire   [7:0] sum_5_i_i9_fu_962_p2;
wire   [7:0] sum_6_i_i_fu_972_p2;
wire   [7:0] sum_7_i_i_fu_982_p2;
reg   [24:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 25'd1;
#0 grp_KeccakF1600_StatePer_fu_800_ap_start_reg = 1'b0;
#0 grp_keccak_absorb_fu_807_ap_start_reg = 1'b0;
end

pqcrystals_fips202_ref_sha3_256_s #(
    .DataWidth( 64 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(s_address0),
    .ce0(s_ce0),
    .we0(s_we0),
    .d0(s_d0),
    .q0(s_q0),
    .address1(s_address1),
    .ce1(s_ce1),
    .we1(s_we1),
    .d1(s_d1),
    .q1(s_q1)
);

pqcrystals_fips202_ref_sha3_256_out_assign #(
    .DataWidth( 8 ),
    .AddressRange( 136 ),
    .AddressWidth( 8 ))
out_assign_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(out_assign_address0),
    .ce0(out_assign_ce0),
    .we0(out_assign_we0),
    .d0(out_assign_d0),
    .q0(out_assign_q0),
    .address1(out_assign_address1),
    .ce1(out_assign_ce1),
    .we1(out_assign_we1),
    .d1(out_assign_d1),
    .q1(out_assign_q1)
);

KeccakF1600_StatePer grp_KeccakF1600_StatePer_fu_800(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakF1600_StatePer_fu_800_ap_start),
    .ap_done(grp_KeccakF1600_StatePer_fu_800_ap_done),
    .ap_idle(grp_KeccakF1600_StatePer_fu_800_ap_idle),
    .ap_ready(grp_KeccakF1600_StatePer_fu_800_ap_ready),
    .state_address0(grp_KeccakF1600_StatePer_fu_800_state_address0),
    .state_ce0(grp_KeccakF1600_StatePer_fu_800_state_ce0),
    .state_we0(grp_KeccakF1600_StatePer_fu_800_state_we0),
    .state_d0(grp_KeccakF1600_StatePer_fu_800_state_d0),
    .state_q0(s_q0),
    .state_address1(grp_KeccakF1600_StatePer_fu_800_state_address1),
    .state_ce1(grp_KeccakF1600_StatePer_fu_800_state_ce1),
    .state_we1(grp_KeccakF1600_StatePer_fu_800_state_we1),
    .state_d1(grp_KeccakF1600_StatePer_fu_800_state_d1),
    .state_q1(s_q1)
);

keccak_absorb grp_keccak_absorb_fu_807(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_keccak_absorb_fu_807_ap_start),
    .ap_done(grp_keccak_absorb_fu_807_ap_done),
    .ap_idle(grp_keccak_absorb_fu_807_ap_idle),
    .ap_ready(grp_keccak_absorb_fu_807_ap_ready),
    .s_address0(grp_keccak_absorb_fu_807_s_address0),
    .s_ce0(grp_keccak_absorb_fu_807_s_ce0),
    .s_we0(grp_keccak_absorb_fu_807_s_we0),
    .s_d0(grp_keccak_absorb_fu_807_s_d0),
    .s_address1(grp_keccak_absorb_fu_807_s_address1),
    .s_ce1(grp_keccak_absorb_fu_807_s_ce1),
    .s_we1(grp_keccak_absorb_fu_807_s_we1),
    .s_d1(grp_keccak_absorb_fu_807_s_d1),
    .s_q1(s_q1),
    .m_address0(grp_keccak_absorb_fu_807_m_address0),
    .m_ce0(grp_keccak_absorb_fu_807_m_ce0),
    .m_q0(in_r_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_KeccakF1600_StatePer_fu_800_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_KeccakF1600_StatePer_fu_800_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakF1600_StatePer_fu_800_ap_ready == 1'b1)) begin
            grp_KeccakF1600_StatePer_fu_800_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_keccak_absorb_fu_807_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_keccak_absorb_fu_807_ap_start_reg <= 1'b1;
        end else if ((grp_keccak_absorb_fu_807_ap_ready == 1'b1)) begin
            grp_keccak_absorb_fu_807_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_i_reg_788 <= i_4_i_reg_995;
    end else if (((grp_KeccakF1600_StatePer_fu_800_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_i_reg_788 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_4_i_reg_995 <= i_4_i_fu_821_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_4_2_i_i_reg_1025 <= {{s_q0[23:16]}};
        tmp_4_3_i_i_reg_1030 <= {{s_q0[31:24]}};
        tmp_4_4_i_i_reg_1035 <= {{s_q0[39:32]}};
        tmp_4_5_i_i_reg_1040 <= {{s_q0[47:40]}};
        tmp_4_6_i_i_reg_1045 <= {{s_q0[55:48]}};
        tmp_4_7_i_i_reg_1050 <= {{s_q0[63:56]}};
        tmp_4_i_reg_1015[7 : 3] <= tmp_4_i_fu_832_p3[7 : 3];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        h_address0 = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        h_address0 = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        h_address0 = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        h_address0 = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        h_address0 = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        h_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        h_address0 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        h_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        h_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        h_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        h_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        h_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        h_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        h_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        h_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        h_address0 = 64'd0;
    end else begin
        h_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        h_address1 = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        h_address1 = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        h_address1 = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        h_address1 = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        h_address1 = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        h_address1 = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        h_address1 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        h_address1 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        h_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        h_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        h_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        h_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        h_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        h_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        h_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        h_address1 = 64'd1;
    end else begin
        h_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        h_ce0 = 1'b1;
    end else begin
        h_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        h_ce1 = 1'b1;
    end else begin
        h_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        h_we0 = 1'b1;
    end else begin
        h_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        h_we1 = 1'b1;
    end else begin
        h_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        out_assign_address0 = 64'd30;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        out_assign_address0 = 64'd28;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        out_assign_address0 = 64'd26;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        out_assign_address0 = 64'd24;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        out_assign_address0 = 64'd22;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        out_assign_address0 = 64'd20;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        out_assign_address0 = 64'd18;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        out_assign_address0 = 64'd16;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        out_assign_address0 = 64'd14;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        out_assign_address0 = 64'd12;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        out_assign_address0 = 64'd10;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        out_assign_address0 = 64'd8;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        out_assign_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        out_assign_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        out_assign_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_assign_address0 = sum_6_i_i_cast_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        out_assign_address0 = sum_4_i_i8_cast_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        out_assign_address0 = sum_2_i_i6_cast_fu_937_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        out_assign_address0 = tmp_5_i_fu_840_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        out_assign_address0 = 64'd0;
    end else begin
        out_assign_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        out_assign_address1 = 64'd31;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        out_assign_address1 = 64'd29;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        out_assign_address1 = 64'd27;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        out_assign_address1 = 64'd25;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        out_assign_address1 = 64'd23;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        out_assign_address1 = 64'd21;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        out_assign_address1 = 64'd19;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        out_assign_address1 = 64'd17;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        out_assign_address1 = 64'd15;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        out_assign_address1 = 64'd13;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        out_assign_address1 = 64'd11;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        out_assign_address1 = 64'd9;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        out_assign_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        out_assign_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        out_assign_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        out_assign_address1 = sum_7_i_i_cast_fu_987_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        out_assign_address1 = sum_5_i_i9_cast_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        out_assign_address1 = sum_3_i_i7_cast_fu_947_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        out_assign_address1 = sum_1_i_i5_cast_fu_867_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        out_assign_address1 = 64'd1;
    end else begin
        out_assign_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        out_assign_ce0 = 1'b1;
    end else begin
        out_assign_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        out_assign_ce1 = 1'b1;
    end else begin
        out_assign_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        out_assign_d0 = tmp_4_6_i_i_reg_1045;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        out_assign_d0 = tmp_4_4_i_i_reg_1035;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        out_assign_d0 = tmp_4_2_i_i_reg_1025;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        out_assign_d0 = tmp_fu_845_p1;
    end else begin
        out_assign_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        out_assign_d1 = tmp_4_7_i_i_reg_1050;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        out_assign_d1 = tmp_4_5_i_i_reg_1040;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        out_assign_d1 = tmp_4_3_i_i_reg_1030;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        out_assign_d1 = {{s_q0[15:8]}};
    end else begin
        out_assign_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9))) begin
        out_assign_we0 = 1'b1;
    end else begin
        out_assign_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state9))) begin
        out_assign_we1 = 1'b1;
    end else begin
        out_assign_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        s_address0 = tmp_6_i_fu_827_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        s_address0 = grp_keccak_absorb_fu_807_s_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_address0 = grp_KeccakF1600_StatePer_fu_800_state_address0;
    end else begin
        s_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_address1 = grp_keccak_absorb_fu_807_s_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_address1 = grp_KeccakF1600_StatePer_fu_800_state_address1;
    end else begin
        s_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        s_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        s_ce0 = grp_keccak_absorb_fu_807_s_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_ce0 = grp_KeccakF1600_StatePer_fu_800_state_ce0;
    end else begin
        s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_ce1 = grp_keccak_absorb_fu_807_s_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_ce1 = grp_KeccakF1600_StatePer_fu_800_state_ce1;
    end else begin
        s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_d0 = grp_keccak_absorb_fu_807_s_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_d0 = grp_KeccakF1600_StatePer_fu_800_state_d0;
    end else begin
        s_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_d1 = grp_keccak_absorb_fu_807_s_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_d1 = grp_KeccakF1600_StatePer_fu_800_state_d1;
    end else begin
        s_d1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_we0 = grp_keccak_absorb_fu_807_s_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_we0 = grp_KeccakF1600_StatePer_fu_800_state_we0;
    end else begin
        s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        s_we1 = grp_keccak_absorb_fu_807_s_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        s_we1 = grp_KeccakF1600_StatePer_fu_800_state_we1;
    end else begin
        s_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_keccak_absorb_fu_807_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_KeccakF1600_StatePer_fu_800_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_i_5_fu_815_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign grp_KeccakF1600_StatePer_fu_800_ap_start = grp_KeccakF1600_StatePer_fu_800_ap_start_reg;

assign grp_keccak_absorb_fu_807_ap_start = grp_keccak_absorb_fu_807_ap_start_reg;

assign h_d0 = out_assign_q0;

assign h_d1 = out_assign_q1;

assign i_4_i_fu_821_p2 = (i_i_reg_788 + 5'd1);

assign in_r_address0 = grp_keccak_absorb_fu_807_m_address0;

assign in_r_ce0 = grp_keccak_absorb_fu_807_m_ce0;

assign sum_1_i_i5_cast_fu_867_p1 = sum_1_i_i5_fu_861_p2;

assign sum_1_i_i5_fu_861_p2 = (tmp_4_i_fu_832_p3 | 8'd1);

assign sum_2_i_i6_cast_fu_937_p1 = sum_2_i_i6_fu_932_p2;

assign sum_2_i_i6_fu_932_p2 = (tmp_4_i_reg_1015 | 8'd2);

assign sum_3_i_i7_cast_fu_947_p1 = sum_3_i_i7_fu_942_p2;

assign sum_3_i_i7_fu_942_p2 = (tmp_4_i_reg_1015 | 8'd3);

assign sum_4_i_i8_cast_fu_957_p1 = sum_4_i_i8_fu_952_p2;

assign sum_4_i_i8_fu_952_p2 = (tmp_4_i_reg_1015 | 8'd4);

assign sum_5_i_i9_cast_fu_967_p1 = sum_5_i_i9_fu_962_p2;

assign sum_5_i_i9_fu_962_p2 = (tmp_4_i_reg_1015 | 8'd5);

assign sum_6_i_i_cast_fu_977_p1 = sum_6_i_i_fu_972_p2;

assign sum_6_i_i_fu_972_p2 = (tmp_4_i_reg_1015 | 8'd6);

assign sum_7_i_i_cast_fu_987_p1 = sum_7_i_i_fu_982_p2;

assign sum_7_i_i_fu_982_p2 = (tmp_4_i_reg_1015 | 8'd7);

assign tmp_4_i_fu_832_p3 = {{i_i_reg_788}, {3'd0}};

assign tmp_5_i_fu_840_p1 = tmp_4_i_fu_832_p3;

assign tmp_6_i_fu_827_p1 = i_i_reg_788;

assign tmp_fu_845_p1 = s_q0[7:0];

assign tmp_i_5_fu_815_p2 = ((i_i_reg_788 == 5'd17) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_4_i_reg_1015[2:0] <= 3'b000;
end

endmodule //pqcrystals_fips202_ref_sha3_256
