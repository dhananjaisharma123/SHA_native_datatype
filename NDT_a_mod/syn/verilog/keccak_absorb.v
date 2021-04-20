// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module keccak_absorb (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        s_address0,
        s_ce0,
        s_we0,
        s_d0,
        s_q0,
        s_address1,
        s_ce1,
        s_we1,
        s_d1,
        s_q1,
        m_address0,
        m_ce0,
        m_q0,
        m_address1,
        m_ce1,
        m_q1,
        mlen
);

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] s_address0;
output   s_ce0;
output   s_we0;
output  [63:0] s_d0;
input  [63:0] s_q0;
output  [4:0] s_address1;
output   s_ce1;
output   s_we1;
output  [63:0] s_d1;
input  [63:0] s_q1;
output  [11:0] m_address0;
output   m_ce0;
input  [7:0] m_q0;
output  [11:0] m_address1;
output   m_ce1;
input  [7:0] m_q1;
input  [63:0] mlen;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] s_address0;
reg s_ce0;
reg s_we0;
reg[63:0] s_d0;
reg s_ce1;
reg s_we1;
reg[11:0] m_address0;
reg m_ce0;
reg[11:0] m_address1;
reg m_ce1;

(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] indvarinc_fu_412_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] i_4_fu_440_p2;
wire    ap_CS_fsm_state3;
wire   [7:0] ff_fu_446_p1;
wire   [0:0] tmp_7_fu_434_p2;
wire   [13:0] tmp_13_fu_449_p1;
reg   [13:0] tmp_13_reg_794;
wire    ap_CS_fsm_state4;
wire   [4:0] i_6_fu_470_p2;
reg   [4:0] i_6_reg_806;
wire    ap_CS_fsm_state5;
wire   [13:0] sum7_fu_488_p2;
reg   [13:0] sum7_reg_811;
wire   [0:0] tmp_9_fu_464_p2;
reg   [4:0] s_addr_1_reg_831;
wire   [63:0] mlen_assign_fu_509_p2;
reg   [63:0] mlen_assign_reg_836;
wire   [63:0] p_rec_fu_515_p2;
reg   [63:0] p_rec_reg_841;
wire   [7:0] ff_1_fu_521_p2;
reg   [7:0] ff_1_reg_846;
reg   [7:0] m_load_1_reg_851;
wire    ap_CS_fsm_state6;
reg   [7:0] m_load_2_reg_856;
reg   [7:0] m_load_3_reg_871;
wire    ap_CS_fsm_state7;
reg   [7:0] m_load_4_reg_876;
reg   [7:0] m_load_5_reg_891;
wire    ap_CS_fsm_state8;
reg   [7:0] m_load_6_reg_896;
wire   [63:0] i_2_cast_fu_612_p1;
reg   [63:0] i_2_cast_reg_911;
wire    ap_CS_fsm_state11;
wire   [7:0] tmp_3_fu_622_p2;
reg   [7:0] tmp_3_reg_919;
wire   [0:0] exitcond_fu_616_p2;
wire   [7:0] t_addr_2_reg_929;
wire    ap_CS_fsm_state13;
wire   [4:0] i_7_fu_656_p2;
reg   [4:0] i_7_reg_937;
wire    ap_CS_fsm_state15;
wire   [7:0] tmp_10_fu_662_p3;
reg   [7:0] tmp_10_reg_942;
wire   [0:0] tmp_5_fu_650_p2;
reg   [4:0] s_addr_2_reg_962;
wire   [7:0] t_q0;
reg   [7:0] t_load_1_reg_967;
wire    ap_CS_fsm_state16;
wire   [7:0] t_q1;
reg   [7:0] t_load_2_reg_972;
reg   [7:0] t_load_3_reg_987;
wire    ap_CS_fsm_state17;
reg   [7:0] t_load_4_reg_992;
reg   [7:0] t_load_5_reg_1007;
wire    ap_CS_fsm_state18;
reg   [7:0] t_load_6_reg_1012;
reg   [7:0] t_address0;
reg    t_ce0;
reg    t_we0;
reg   [7:0] t_d0;
reg   [7:0] t_address1;
reg    t_ce1;
wire    grp_KeccakF1600_StatePer_fu_404_ap_start;
wire    grp_KeccakF1600_StatePer_fu_404_ap_done;
wire    grp_KeccakF1600_StatePer_fu_404_ap_idle;
wire    grp_KeccakF1600_StatePer_fu_404_ap_ready;
wire   [4:0] grp_KeccakF1600_StatePer_fu_404_state_address0;
wire    grp_KeccakF1600_StatePer_fu_404_state_ce0;
wire    grp_KeccakF1600_StatePer_fu_404_state_we0;
wire   [63:0] grp_KeccakF1600_StatePer_fu_404_state_d0;
wire   [4:0] grp_KeccakF1600_StatePer_fu_404_state_address1;
wire    grp_KeccakF1600_StatePer_fu_404_state_ce1;
wire    grp_KeccakF1600_StatePer_fu_404_state_we1;
wire   [63:0] grp_KeccakF1600_StatePer_fu_404_state_d1;
reg   [7:0] invdar_reg_316;
wire   [0:0] tmp_s_fu_423_p2;
reg   [4:0] i_reg_327;
reg   [63:0] i_5_reg_338;
wire    ap_CS_fsm_state10;
reg   [63:0] p_0_rec_reg_349;
reg   [7:0] ff1_reg_361;
reg   [4:0] i_1_reg_371;
wire   [0:0] tmp_8_fu_453_p2;
wire    ap_CS_fsm_state9;
reg   [7:0] i_2_reg_382;
wire    ap_CS_fsm_state12;
reg   [4:0] i_3_reg_393;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state19;
reg    grp_KeccakF1600_StatePer_fu_404_ap_start_reg;
wire   [63:0] tmp_fu_418_p1;
wire   [63:0] i_cast6_fu_429_p1;
wire   [63:0] sum7_cast_fu_493_p1;
wire   [63:0] sum_1_i_cast_fu_504_p1;
wire   [63:0] i_1_cast5_fu_459_p1;
wire   [63:0] sum_2_i_cast_fu_532_p1;
wire   [63:0] sum_3_i_cast_fu_542_p1;
wire   [63:0] sum_4_i_cast_fu_552_p1;
wire   [63:0] sum_5_i_cast_fu_562_p1;
wire   [63:0] sum_6_i_cast_fu_572_p1;
wire   [63:0] sum_7_i_cast_fu_582_p1;
wire   [63:0] sum9_cast_fu_633_p1;
wire   [63:0] tmp_10_cast_fu_670_p1;
wire   [63:0] sum_1_i1_cast_fu_681_p1;
wire   [63:0] i_3_cast2_fu_645_p1;
wire   [63:0] sum_2_i1_cast_fu_691_p1;
wire   [63:0] sum_3_i1_cast_fu_701_p1;
wire   [63:0] sum_4_i1_cast_fu_711_p1;
wire   [63:0] sum_5_i1_cast_fu_721_p1;
wire   [63:0] sum_6_i1_cast_fu_731_p1;
wire   [63:0] sum_7_i1_cast_fu_741_p1;
wire   [7:0] tmp_1_fu_638_p2;
wire   [63:0] tmp_6_fu_601_p2;
wire   [63:0] tmp_11_fu_760_p2;
wire   [7:0] tmp_4_fu_476_p3;
wire   [13:0] tmp_4_cast_fu_484_p1;
wire   [13:0] sum_1_i_fu_498_p2;
wire   [13:0] sum_2_i_fu_527_p2;
wire   [13:0] sum_3_i_fu_537_p2;
wire   [13:0] sum_4_i_fu_547_p2;
wire   [13:0] sum_5_i_fu_557_p2;
wire   [13:0] sum_6_i_fu_567_p2;
wire   [13:0] sum_7_i_fu_577_p2;
wire   [63:0] r_1_7_i_fu_587_p9;
wire   [13:0] i_2_cast3_fu_608_p1;
wire   [13:0] sum9_fu_628_p2;
wire   [7:0] sum_1_i1_fu_675_p2;
wire   [7:0] sum_2_i1_fu_686_p2;
wire   [7:0] sum_3_i1_fu_696_p2;
wire   [7:0] sum_4_i1_fu_706_p2;
wire   [7:0] sum_5_i1_fu_716_p2;
wire   [7:0] sum_6_i1_fu_726_p2;
wire   [7:0] sum_7_i1_fu_736_p2;
wire   [63:0] r_1_7_i1_fu_746_p9;
reg   [18:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
#0 grp_KeccakF1600_StatePer_fu_404_ap_start_reg = 1'b0;
end

keccak_absorb_t #(
    .DataWidth( 8 ),
    .AddressRange( 200 ),
    .AddressWidth( 8 ))
t_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(t_address0),
    .ce0(t_ce0),
    .we0(t_we0),
    .d0(t_d0),
    .q0(t_q0),
    .address1(t_address1),
    .ce1(t_ce1),
    .q1(t_q1)
);

KeccakF1600_StatePer grp_KeccakF1600_StatePer_fu_404(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakF1600_StatePer_fu_404_ap_start),
    .ap_done(grp_KeccakF1600_StatePer_fu_404_ap_done),
    .ap_idle(grp_KeccakF1600_StatePer_fu_404_ap_idle),
    .ap_ready(grp_KeccakF1600_StatePer_fu_404_ap_ready),
    .state_address0(grp_KeccakF1600_StatePer_fu_404_state_address0),
    .state_ce0(grp_KeccakF1600_StatePer_fu_404_state_ce0),
    .state_we0(grp_KeccakF1600_StatePer_fu_404_state_we0),
    .state_d0(grp_KeccakF1600_StatePer_fu_404_state_d0),
    .state_q0(s_q0),
    .state_address1(grp_KeccakF1600_StatePer_fu_404_state_address1),
    .state_ce1(grp_KeccakF1600_StatePer_fu_404_state_ce1),
    .state_we1(grp_KeccakF1600_StatePer_fu_404_state_we1),
    .state_d1(grp_KeccakF1600_StatePer_fu_404_state_d1),
    .state_q1(s_q1)
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
        grp_KeccakF1600_StatePer_fu_404_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_9_fu_464_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_KeccakF1600_StatePer_fu_404_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakF1600_StatePer_fu_404_ap_ready == 1'b1)) begin
            grp_KeccakF1600_StatePer_fu_404_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_434_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ff1_reg_361 <= ff_fu_446_p1;
    end else if (((grp_KeccakF1600_StatePer_fu_404_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        ff1_reg_361 <= ff_1_reg_846;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_1_reg_371 <= i_6_reg_806;
    end else if (((tmp_8_fu_453_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i_1_reg_371 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_8_fu_453_p2 == 1'd0))) begin
        i_2_reg_382 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        i_2_reg_382 <= tmp_3_reg_919;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        i_3_reg_393 <= i_7_reg_937;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        i_3_reg_393 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_434_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_5_reg_338 <= mlen;
    end else if (((grp_KeccakF1600_StatePer_fu_404_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        i_5_reg_338 <= mlen_assign_reg_836;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_s_fu_423_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_327 <= 5'd0;
    end else if (((tmp_7_fu_434_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_327 <= i_4_fu_440_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_s_fu_423_p2 == 1'd0))) begin
        invdar_reg_316 <= indvarinc_fu_412_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        invdar_reg_316 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_434_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        p_0_rec_reg_349 <= 64'd0;
    end else if (((grp_KeccakF1600_StatePer_fu_404_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        p_0_rec_reg_349 <= p_rec_reg_841;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_9_fu_464_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        ff_1_reg_846 <= ff_1_fu_521_p2;
        mlen_assign_reg_836 <= mlen_assign_fu_509_p2;
        p_rec_reg_841 <= p_rec_fu_515_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        i_2_cast_reg_911[7 : 0] <= i_2_cast_fu_612_p1[7 : 0];
        tmp_3_reg_919 <= tmp_3_fu_622_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_6_reg_806 <= i_6_fu_470_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i_7_reg_937 <= i_7_fu_656_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        m_load_1_reg_851 <= m_q0;
        m_load_2_reg_856 <= m_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        m_load_3_reg_871 <= m_q0;
        m_load_4_reg_876 <= m_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m_load_5_reg_891 <= m_q0;
        m_load_6_reg_896 <= m_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (tmp_9_fu_464_p2 == 1'd0))) begin
        s_addr_1_reg_831 <= i_1_cast5_fu_459_p1;
        sum7_reg_811 <= sum7_fu_488_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (tmp_5_fu_650_p2 == 1'd0))) begin
        s_addr_2_reg_962 <= i_3_cast2_fu_645_p1;
        tmp_10_reg_942[7 : 3] <= tmp_10_fu_662_p3[7 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        t_load_1_reg_967 <= t_q0;
        t_load_2_reg_972 <= t_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        t_load_3_reg_987 <= t_q1;
        t_load_4_reg_992 <= t_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        t_load_5_reg_1007 <= t_q1;
        t_load_6_reg_1012 <= t_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_13_reg_794 <= tmp_13_fu_449_p1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((tmp_5_fu_650_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state15)))) begin
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
    if (((tmp_5_fu_650_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        m_address0 = sum9_cast_fu_633_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        m_address0 = sum_6_i_cast_fu_572_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m_address0 = sum_4_i_cast_fu_552_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m_address0 = sum_2_i_cast_fu_532_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m_address0 = sum7_cast_fu_493_p1;
    end else begin
        m_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        m_address1 = sum_7_i_cast_fu_582_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        m_address1 = sum_5_i_cast_fu_562_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m_address1 = sum_3_i_cast_fu_542_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        m_address1 = sum_1_i_cast_fu_504_p1;
    end else begin
        m_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        m_ce0 = 1'b1;
    end else begin
        m_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        m_ce1 = 1'b1;
    end else begin
        m_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        s_address0 = s_addr_2_reg_962;
    end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8))) begin
        s_address0 = s_addr_1_reg_831;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_address0 = i_cast6_fu_429_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        s_address0 = grp_KeccakF1600_StatePer_fu_404_state_address0;
    end else begin
        s_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state8))) begin
        s_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        s_ce0 = grp_KeccakF1600_StatePer_fu_404_state_ce0;
    end else begin
        s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        s_ce1 = grp_KeccakF1600_StatePer_fu_404_state_ce1;
    end else begin
        s_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        s_d0 = tmp_11_fu_760_p2;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        s_d0 = tmp_6_fu_601_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_d0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        s_d0 = grp_KeccakF1600_StatePer_fu_404_state_d0;
    end else begin
        s_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state9) | ((tmp_7_fu_434_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        s_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        s_we0 = grp_KeccakF1600_StatePer_fu_404_state_we0;
    end else begin
        s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        s_we1 = grp_KeccakF1600_StatePer_fu_404_state_we1;
    end else begin
        s_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        t_address0 = sum_7_i1_cast_fu_741_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        t_address0 = sum_5_i1_cast_fu_721_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        t_address0 = sum_3_i1_cast_fu_701_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        t_address0 = tmp_10_cast_fu_670_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        t_address0 = t_addr_2_reg_929;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        t_address0 = 64'd135;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        t_address0 = i_2_cast_reg_911;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        t_address0 = i_5_reg_338;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_address0 = tmp_fu_418_p1;
    end else begin
        t_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        t_address1 = sum_6_i1_cast_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        t_address1 = sum_4_i1_cast_fu_711_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        t_address1 = sum_2_i1_cast_fu_691_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        t_address1 = sum_1_i1_cast_fu_681_p1;
    end else begin
        t_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11))) begin
        t_ce0 = 1'b1;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15))) begin
        t_ce1 = 1'b1;
    end else begin
        t_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        t_d0 = tmp_1_fu_638_p2;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        t_d0 = m_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        t_d0 = 8'd6;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_d0 = 8'd0;
    end else begin
        t_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((exitcond_fu_616_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11)))) begin
        t_we0 = 1'b1;
    end else begin
        t_we0 = 1'b0;
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
            if (((tmp_s_fu_423_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_7_fu_434_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (tmp_8_fu_453_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((tmp_9_fu_464_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
            if (((grp_KeccakF1600_StatePer_fu_404_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((exitcond_fu_616_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            if (((tmp_5_fu_650_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state15))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
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
            ap_NS_fsm = ap_ST_fsm_state15;
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

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign exitcond_fu_616_p2 = ((i_2_cast_fu_612_p1 == i_5_reg_338) ? 1'b1 : 1'b0);

assign ff_1_fu_521_p2 = (ff1_reg_361 + 8'd120);

assign ff_fu_446_p1 = mlen[7:0];

assign grp_KeccakF1600_StatePer_fu_404_ap_start = grp_KeccakF1600_StatePer_fu_404_ap_start_reg;

assign i_1_cast5_fu_459_p1 = i_1_reg_371;

assign i_2_cast3_fu_608_p1 = i_2_reg_382;

assign i_2_cast_fu_612_p1 = i_2_reg_382;

assign i_3_cast2_fu_645_p1 = i_3_reg_393;

assign i_4_fu_440_p2 = (i_reg_327 + 5'd1);

assign i_6_fu_470_p2 = (i_1_reg_371 + 5'd1);

assign i_7_fu_656_p2 = (i_3_reg_393 + 5'd1);

assign i_cast6_fu_429_p1 = i_reg_327;

assign indvarinc_fu_412_p2 = (invdar_reg_316 + 8'd1);

assign mlen_assign_fu_509_p2 = ($signed(i_5_reg_338) + $signed(64'd18446744073709551480));

assign p_rec_fu_515_p2 = (p_0_rec_reg_349 + 64'd136);

assign r_1_7_i1_fu_746_p9 = {{{{{{{{t_q0}, {t_q1}}, {t_load_6_reg_1012}}, {t_load_5_reg_1007}}, {t_load_4_reg_992}}, {t_load_3_reg_987}}, {t_load_2_reg_972}}, {t_load_1_reg_967}};

assign r_1_7_i_fu_587_p9 = {{{{{{{{m_q1}, {m_q0}}, {m_load_6_reg_896}}, {m_load_5_reg_891}}, {m_load_4_reg_876}}, {m_load_3_reg_871}}, {m_load_2_reg_856}}, {m_load_1_reg_851}};

assign s_address1 = grp_KeccakF1600_StatePer_fu_404_state_address1;

assign s_d1 = grp_KeccakF1600_StatePer_fu_404_state_d1;

assign sum7_cast_fu_493_p1 = sum7_fu_488_p2;

assign sum7_fu_488_p2 = (tmp_13_reg_794 + tmp_4_cast_fu_484_p1);

assign sum9_cast_fu_633_p1 = sum9_fu_628_p2;

assign sum9_fu_628_p2 = (i_2_cast3_fu_608_p1 + tmp_13_reg_794);

assign sum_1_i1_cast_fu_681_p1 = sum_1_i1_fu_675_p2;

assign sum_1_i1_fu_675_p2 = (tmp_10_fu_662_p3 | 8'd1);

assign sum_1_i_cast_fu_504_p1 = sum_1_i_fu_498_p2;

assign sum_1_i_fu_498_p2 = (sum7_fu_488_p2 | 14'd1);

assign sum_2_i1_cast_fu_691_p1 = sum_2_i1_fu_686_p2;

assign sum_2_i1_fu_686_p2 = (tmp_10_reg_942 | 8'd2);

assign sum_2_i_cast_fu_532_p1 = sum_2_i_fu_527_p2;

assign sum_2_i_fu_527_p2 = (sum7_reg_811 | 14'd2);

assign sum_3_i1_cast_fu_701_p1 = sum_3_i1_fu_696_p2;

assign sum_3_i1_fu_696_p2 = (tmp_10_reg_942 | 8'd3);

assign sum_3_i_cast_fu_542_p1 = sum_3_i_fu_537_p2;

assign sum_3_i_fu_537_p2 = (sum7_reg_811 | 14'd3);

assign sum_4_i1_cast_fu_711_p1 = sum_4_i1_fu_706_p2;

assign sum_4_i1_fu_706_p2 = (tmp_10_reg_942 | 8'd4);

assign sum_4_i_cast_fu_552_p1 = sum_4_i_fu_547_p2;

assign sum_4_i_fu_547_p2 = (sum7_reg_811 | 14'd4);

assign sum_5_i1_cast_fu_721_p1 = sum_5_i1_fu_716_p2;

assign sum_5_i1_fu_716_p2 = (tmp_10_reg_942 | 8'd5);

assign sum_5_i_cast_fu_562_p1 = sum_5_i_fu_557_p2;

assign sum_5_i_fu_557_p2 = (sum7_reg_811 | 14'd5);

assign sum_6_i1_cast_fu_731_p1 = sum_6_i1_fu_726_p2;

assign sum_6_i1_fu_726_p2 = (tmp_10_reg_942 | 8'd6);

assign sum_6_i_cast_fu_572_p1 = sum_6_i_fu_567_p2;

assign sum_6_i_fu_567_p2 = (sum7_reg_811 | 14'd6);

assign sum_7_i1_cast_fu_741_p1 = sum_7_i1_fu_736_p2;

assign sum_7_i1_fu_736_p2 = (tmp_10_reg_942 | 8'd7);

assign sum_7_i_cast_fu_582_p1 = sum_7_i_fu_577_p2;

assign sum_7_i_fu_577_p2 = (sum7_reg_811 | 14'd7);

assign t_addr_2_reg_929 = 64'd135;

assign tmp_10_cast_fu_670_p1 = tmp_10_fu_662_p3;

assign tmp_10_fu_662_p3 = {{i_3_reg_393}, {3'd0}};

assign tmp_11_fu_760_p2 = (s_q0 ^ r_1_7_i1_fu_746_p9);

assign tmp_13_fu_449_p1 = p_0_rec_reg_349[13:0];

assign tmp_1_fu_638_p2 = (t_q0 | 8'd128);

assign tmp_3_fu_622_p2 = (i_2_reg_382 + 8'd1);

assign tmp_4_cast_fu_484_p1 = tmp_4_fu_476_p3;

assign tmp_4_fu_476_p3 = {{i_1_reg_371}, {3'd0}};

assign tmp_5_fu_650_p2 = ((i_3_reg_393 == 5'd17) ? 1'b1 : 1'b0);

assign tmp_6_fu_601_p2 = (s_q0 ^ r_1_7_i_fu_587_p9);

assign tmp_7_fu_434_p2 = ((i_reg_327 == 5'd25) ? 1'b1 : 1'b0);

assign tmp_8_fu_453_p2 = ((ff1_reg_361 > 8'd135) ? 1'b1 : 1'b0);

assign tmp_9_fu_464_p2 = ((i_1_reg_371 == 5'd17) ? 1'b1 : 1'b0);

assign tmp_fu_418_p1 = invdar_reg_316;

assign tmp_s_fu_423_p2 = ((invdar_reg_316 == 8'd199) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    i_2_cast_reg_911[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    tmp_10_reg_942[2:0] <= 3'b000;
end

endmodule //keccak_absorb
