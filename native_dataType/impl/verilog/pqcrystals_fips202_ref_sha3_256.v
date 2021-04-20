// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="pqcrystals_fips202_ref_sha3_256,hls_ip_2018_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7vx980tffg1930-2l,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.996000,HLS_SYN_LAT=2343,HLS_SYN_TPT=none,HLS_SYN_MEM=3,HLS_SYN_DSP=0,HLS_SYN_FF=7529,HLS_SYN_LUT=21234,HLS_VERSION=2018_3}" *)

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
        in_r_address0,
        in_r_ce0,
        in_r_q0,
        inlen
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

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
output  [1:0] in_r_address0;
output   in_r_ce0;
input  [7:0] in_r_q0;
input  [63:0] inlen;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg h_ce0;
reg h_we0;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] s_0_reg_209;
wire    ap_CS_fsm_state2;
wire    grp_keccak_absorb_fu_101_ap_ready;
wire    grp_keccak_absorb_fu_101_ap_done;
reg   [63:0] s_1_reg_214;
reg   [63:0] s_2_reg_219;
reg   [63:0] s_3_reg_224;
reg   [63:0] s_4_reg_229;
reg   [63:0] s_5_reg_234;
reg   [63:0] s_6_reg_239;
reg   [63:0] s_7_reg_244;
reg   [63:0] s_8_reg_249;
reg   [63:0] s_9_reg_254;
reg   [63:0] s_10_reg_259;
reg   [63:0] s_11_reg_264;
reg   [63:0] s_12_reg_269;
reg   [63:0] s_13_reg_274;
reg   [63:0] s_14_reg_279;
reg   [63:0] s_15_reg_284;
reg   [63:0] s_16_reg_289;
wire   [5:0] i_1_fu_198_p2;
reg   [5:0] i_1_reg_297;
wire    ap_CS_fsm_state4;
wire   [63:0] tmp_fu_204_p1;
reg   [63:0] tmp_reg_302;
wire   [0:0] exitcond_fu_192_p2;
reg   [7:0] t_address0;
reg    t_ce0;
reg    t_we0;
wire   [7:0] t_q0;
wire    grp_keccak_squeezeblocks_fu_77_ap_start;
wire    grp_keccak_squeezeblocks_fu_77_ap_done;
wire    grp_keccak_squeezeblocks_fu_77_ap_idle;
wire    grp_keccak_squeezeblocks_fu_77_ap_ready;
wire   [7:0] grp_keccak_squeezeblocks_fu_77_out_r_address0;
wire    grp_keccak_squeezeblocks_fu_77_out_r_ce0;
wire    grp_keccak_squeezeblocks_fu_77_out_r_we0;
wire   [7:0] grp_keccak_squeezeblocks_fu_77_out_r_d0;
wire    grp_keccak_absorb_fu_101_ap_start;
wire    grp_keccak_absorb_fu_101_ap_idle;
wire   [1:0] grp_keccak_absorb_fu_101_m_address0;
wire    grp_keccak_absorb_fu_101_m_ce0;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_0;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_1;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_2;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_3;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_4;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_5;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_6;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_7;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_8;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_9;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_10;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_11;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_12;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_13;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_14;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_15;
wire   [63:0] grp_keccak_absorb_fu_101_ap_return_16;
reg   [5:0] i_reg_66;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state5;
reg    grp_keccak_squeezeblocks_fu_77_ap_start_reg;
reg    grp_keccak_absorb_fu_101_ap_start_reg;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_keccak_squeezeblocks_fu_77_ap_start_reg = 1'b0;
#0 grp_keccak_absorb_fu_101_ap_start_reg = 1'b0;
end

pqcrystals_fips202_ref_sha3_256_t #(
    .DataWidth( 8 ),
    .AddressRange( 136 ),
    .AddressWidth( 8 ))
t_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(t_address0),
    .ce0(t_ce0),
    .we0(t_we0),
    .d0(grp_keccak_squeezeblocks_fu_77_out_r_d0),
    .q0(t_q0)
);

keccak_squeezeblocks grp_keccak_squeezeblocks_fu_77(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_keccak_squeezeblocks_fu_77_ap_start),
    .ap_done(grp_keccak_squeezeblocks_fu_77_ap_done),
    .ap_idle(grp_keccak_squeezeblocks_fu_77_ap_idle),
    .ap_ready(grp_keccak_squeezeblocks_fu_77_ap_ready),
    .out_r_address0(grp_keccak_squeezeblocks_fu_77_out_r_address0),
    .out_r_ce0(grp_keccak_squeezeblocks_fu_77_out_r_ce0),
    .out_r_we0(grp_keccak_squeezeblocks_fu_77_out_r_we0),
    .out_r_d0(grp_keccak_squeezeblocks_fu_77_out_r_d0),
    .s_0_read(s_0_reg_209),
    .s_1_read(s_1_reg_214),
    .s_2_read(s_2_reg_219),
    .s_3_read(s_3_reg_224),
    .s_4_read(s_4_reg_229),
    .s_5_read(s_5_reg_234),
    .s_6_read(s_6_reg_239),
    .s_7_read(s_7_reg_244),
    .s_8_read(s_8_reg_249),
    .s_9_read(s_9_reg_254),
    .s_10_read(s_10_reg_259),
    .s_11_read(s_11_reg_264),
    .s_12_read(s_12_reg_269),
    .s_13_read(s_13_reg_274),
    .s_14_read(s_14_reg_279),
    .s_15_read(s_15_reg_284),
    .s_16_read(s_16_reg_289)
);

keccak_absorb grp_keccak_absorb_fu_101(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_keccak_absorb_fu_101_ap_start),
    .ap_done(grp_keccak_absorb_fu_101_ap_done),
    .ap_idle(grp_keccak_absorb_fu_101_ap_idle),
    .ap_ready(grp_keccak_absorb_fu_101_ap_ready),
    .m_address0(grp_keccak_absorb_fu_101_m_address0),
    .m_ce0(grp_keccak_absorb_fu_101_m_ce0),
    .m_q0(in_r_q0),
    .ap_return_0(grp_keccak_absorb_fu_101_ap_return_0),
    .ap_return_1(grp_keccak_absorb_fu_101_ap_return_1),
    .ap_return_2(grp_keccak_absorb_fu_101_ap_return_2),
    .ap_return_3(grp_keccak_absorb_fu_101_ap_return_3),
    .ap_return_4(grp_keccak_absorb_fu_101_ap_return_4),
    .ap_return_5(grp_keccak_absorb_fu_101_ap_return_5),
    .ap_return_6(grp_keccak_absorb_fu_101_ap_return_6),
    .ap_return_7(grp_keccak_absorb_fu_101_ap_return_7),
    .ap_return_8(grp_keccak_absorb_fu_101_ap_return_8),
    .ap_return_9(grp_keccak_absorb_fu_101_ap_return_9),
    .ap_return_10(grp_keccak_absorb_fu_101_ap_return_10),
    .ap_return_11(grp_keccak_absorb_fu_101_ap_return_11),
    .ap_return_12(grp_keccak_absorb_fu_101_ap_return_12),
    .ap_return_13(grp_keccak_absorb_fu_101_ap_return_13),
    .ap_return_14(grp_keccak_absorb_fu_101_ap_return_14),
    .ap_return_15(grp_keccak_absorb_fu_101_ap_return_15),
    .ap_return_16(grp_keccak_absorb_fu_101_ap_return_16)
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
        grp_keccak_absorb_fu_101_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_keccak_absorb_fu_101_ap_start_reg <= 1'b1;
        end else if ((grp_keccak_absorb_fu_101_ap_ready == 1'b1)) begin
            grp_keccak_absorb_fu_101_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_keccak_squeezeblocks_fu_77_ap_start_reg <= 1'b0;
    end else begin
        if (((grp_keccak_absorb_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_keccak_squeezeblocks_fu_77_ap_start_reg <= 1'b1;
        end else if ((grp_keccak_squeezeblocks_fu_77_ap_ready == 1'b1)) begin
            grp_keccak_squeezeblocks_fu_77_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_reg_66 <= i_1_reg_297;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_keccak_squeezeblocks_fu_77_ap_done == 1'b1))) begin
        i_reg_66 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_1_reg_297 <= i_1_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_keccak_absorb_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        s_0_reg_209 <= grp_keccak_absorb_fu_101_ap_return_0;
        s_10_reg_259 <= grp_keccak_absorb_fu_101_ap_return_10;
        s_11_reg_264 <= grp_keccak_absorb_fu_101_ap_return_11;
        s_12_reg_269 <= grp_keccak_absorb_fu_101_ap_return_12;
        s_13_reg_274 <= grp_keccak_absorb_fu_101_ap_return_13;
        s_14_reg_279 <= grp_keccak_absorb_fu_101_ap_return_14;
        s_15_reg_284 <= grp_keccak_absorb_fu_101_ap_return_15;
        s_16_reg_289 <= grp_keccak_absorb_fu_101_ap_return_16;
        s_1_reg_214 <= grp_keccak_absorb_fu_101_ap_return_1;
        s_2_reg_219 <= grp_keccak_absorb_fu_101_ap_return_2;
        s_3_reg_224 <= grp_keccak_absorb_fu_101_ap_return_3;
        s_4_reg_229 <= grp_keccak_absorb_fu_101_ap_return_4;
        s_5_reg_234 <= grp_keccak_absorb_fu_101_ap_return_5;
        s_6_reg_239 <= grp_keccak_absorb_fu_101_ap_return_6;
        s_7_reg_244 <= grp_keccak_absorb_fu_101_ap_return_7;
        s_8_reg_249 <= grp_keccak_absorb_fu_101_ap_return_8;
        s_9_reg_254 <= grp_keccak_absorb_fu_101_ap_return_9;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_192_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        tmp_reg_302[5 : 0] <= tmp_fu_204_p1[5 : 0];
    end
end

always @ (*) begin
    if (((exitcond_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((exitcond_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        h_ce0 = 1'b1;
    end else begin
        h_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        h_we0 = 1'b1;
    end else begin
        h_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        t_address0 = tmp_fu_204_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        t_address0 = grp_keccak_squeezeblocks_fu_77_out_r_address0;
    end else begin
        t_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        t_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        t_ce0 = grp_keccak_squeezeblocks_fu_77_out_r_ce0;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        t_we0 = grp_keccak_squeezeblocks_fu_77_out_r_we0;
    end else begin
        t_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_keccak_absorb_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_keccak_squeezeblocks_fu_77_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((exitcond_fu_192_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign exitcond_fu_192_p2 = ((i_reg_66 == 6'd32) ? 1'b1 : 1'b0);

assign grp_keccak_absorb_fu_101_ap_start = grp_keccak_absorb_fu_101_ap_start_reg;

assign grp_keccak_squeezeblocks_fu_77_ap_start = grp_keccak_squeezeblocks_fu_77_ap_start_reg;

assign h_address0 = tmp_reg_302;

assign h_d0 = t_q0;

assign i_1_fu_198_p2 = (i_reg_66 + 6'd1);

assign in_r_address0 = grp_keccak_absorb_fu_101_m_address0;

assign in_r_ce0 = grp_keccak_absorb_fu_101_m_ce0;

assign tmp_fu_204_p1 = i_reg_66;

always @ (posedge ap_clk) begin
    tmp_reg_302[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end

endmodule //pqcrystals_fips202_ref_sha3_256
