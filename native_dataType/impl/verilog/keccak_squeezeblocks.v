// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module keccak_squeezeblocks (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        s_0_read,
        s_1_read,
        s_2_read,
        s_3_read,
        s_4_read,
        s_5_read,
        s_6_read,
        s_7_read,
        s_8_read,
        s_9_read,
        s_10_read,
        s_11_read,
        s_12_read,
        s_13_read,
        s_14_read,
        s_15_read,
        s_16_read
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [7:0] out_r_d0;
input  [63:0] s_0_read;
input  [63:0] s_1_read;
input  [63:0] s_2_read;
input  [63:0] s_3_read;
input  [63:0] s_4_read;
input  [63:0] s_5_read;
input  [63:0] s_6_read;
input  [63:0] s_7_read;
input  [63:0] s_8_read;
input  [63:0] s_9_read;
input  [63:0] s_10_read;
input  [63:0] s_11_read;
input  [63:0] s_12_read;
input  [63:0] s_13_read;
input  [63:0] s_14_read;
input  [63:0] s_15_read;
input  [63:0] s_16_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_r_ce0;
reg out_r_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] newret_reg_543;
wire    ap_CS_fsm_state2;
wire    grp_KeccakF1600_StatePer_fu_277_ap_ready;
wire    grp_KeccakF1600_StatePer_fu_277_ap_done;
reg   [63:0] newret1_reg_548;
reg   [63:0] newret3_reg_553;
reg   [63:0] newret5_reg_558;
reg   [63:0] newret7_reg_563;
reg   [63:0] newret9_reg_568;
reg   [63:0] newret2_reg_573;
reg   [63:0] newret4_reg_578;
reg   [63:0] newret6_reg_583;
reg   [63:0] newret8_reg_588;
reg   [63:0] newret10_reg_593;
reg   [63:0] newret11_reg_598;
reg   [63:0] newret12_reg_603;
reg   [63:0] newret13_reg_608;
reg   [63:0] newret14_reg_613;
reg   [63:0] newret15_reg_618;
reg   [63:0] newret16_reg_623;
wire   [4:0] i_4_fu_391_p2;
reg   [4:0] i_4_reg_631;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_4_fu_397_p3;
reg   [7:0] tmp_4_reg_636;
wire   [0:0] tmp_s_fu_385_p2;
wire   [3:0] i_2_fu_411_p2;
wire    ap_CS_fsm_state4;
wire    grp_KeccakF1600_StatePer_fu_277_ap_start;
wire    grp_KeccakF1600_StatePer_fu_277_ap_idle;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_0;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_1;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_2;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_3;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_4;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_5;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_6;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_7;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_8;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_9;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_10;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_11;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_12;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_13;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_14;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_15;
wire   [63:0] grp_KeccakF1600_StatePer_fu_277_ap_return_16;
wire   [4:0] ap_phi_mux_i_phi_fu_219_p4;
reg   [4:0] i_reg_215;
wire   [0:0] exitcond_i_fu_405_p2;
reg   [63:0] u_assign_reg_226;
reg   [3:0] i_i_reg_266;
reg    grp_KeccakF1600_StatePer_fu_277_ap_start_reg;
wire   [63:0] sum_i_cast_fu_453_p1;
wire   [2:0] tmp_fu_417_p1;
wire   [5:0] tmp_1_i_fu_421_p3;
wire   [63:0] tmp_2_i_fu_429_p1;
wire   [63:0] tmp_3_i_fu_433_p2;
wire   [7:0] tmp_5_i_cast_fu_444_p1;
wire   [7:0] sum_i_fu_448_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_condition_697;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_KeccakF1600_StatePer_fu_277_ap_start_reg = 1'b0;
end

KeccakF1600_StatePer grp_KeccakF1600_StatePer_fu_277(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakF1600_StatePer_fu_277_ap_start),
    .ap_done(grp_KeccakF1600_StatePer_fu_277_ap_done),
    .ap_idle(grp_KeccakF1600_StatePer_fu_277_ap_idle),
    .ap_ready(grp_KeccakF1600_StatePer_fu_277_ap_ready),
    .state_0_read(s_0_read),
    .state_1_read(s_1_read),
    .state_2_read(s_2_read),
    .state_3_read(s_3_read),
    .state_4_read(s_4_read),
    .state_5_read(s_5_read),
    .state_6_read(s_6_read),
    .state_7_read(s_7_read),
    .state_8_read(s_8_read),
    .state_9_read(s_9_read),
    .state_10_read(s_10_read),
    .state_11_read(s_11_read),
    .state_12_read(s_12_read),
    .state_13_read(s_13_read),
    .state_14_read(s_14_read),
    .state_15_read(s_15_read),
    .state_16_read(s_16_read),
    .ap_return_0(grp_KeccakF1600_StatePer_fu_277_ap_return_0),
    .ap_return_1(grp_KeccakF1600_StatePer_fu_277_ap_return_1),
    .ap_return_2(grp_KeccakF1600_StatePer_fu_277_ap_return_2),
    .ap_return_3(grp_KeccakF1600_StatePer_fu_277_ap_return_3),
    .ap_return_4(grp_KeccakF1600_StatePer_fu_277_ap_return_4),
    .ap_return_5(grp_KeccakF1600_StatePer_fu_277_ap_return_5),
    .ap_return_6(grp_KeccakF1600_StatePer_fu_277_ap_return_6),
    .ap_return_7(grp_KeccakF1600_StatePer_fu_277_ap_return_7),
    .ap_return_8(grp_KeccakF1600_StatePer_fu_277_ap_return_8),
    .ap_return_9(grp_KeccakF1600_StatePer_fu_277_ap_return_9),
    .ap_return_10(grp_KeccakF1600_StatePer_fu_277_ap_return_10),
    .ap_return_11(grp_KeccakF1600_StatePer_fu_277_ap_return_11),
    .ap_return_12(grp_KeccakF1600_StatePer_fu_277_ap_return_12),
    .ap_return_13(grp_KeccakF1600_StatePer_fu_277_ap_return_13),
    .ap_return_14(grp_KeccakF1600_StatePer_fu_277_ap_return_14),
    .ap_return_15(grp_KeccakF1600_StatePer_fu_277_ap_return_15),
    .ap_return_16(grp_KeccakF1600_StatePer_fu_277_ap_return_16)
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
        grp_KeccakF1600_StatePer_fu_277_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_KeccakF1600_StatePer_fu_277_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakF1600_StatePer_fu_277_ap_ready == 1'b1)) begin
            grp_KeccakF1600_StatePer_fu_277_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i_fu_405_p2 == 1'd0))) begin
        i_i_reg_266 <= i_2_fu_411_p2;
    end else if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_385_p2 == 1'd0))) begin
        i_i_reg_266 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i_fu_405_p2 == 1'd1))) begin
        i_reg_215 <= i_4_reg_631;
    end else if (((grp_KeccakF1600_StatePer_fu_277_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_215 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_385_p2 == 1'd0))) begin
        if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd0)) begin
            u_assign_reg_226 <= newret_reg_543;
        end else if ((1'b1 == ap_condition_697)) begin
            u_assign_reg_226 <= newret16_reg_623;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd15)) begin
            u_assign_reg_226 <= newret15_reg_618;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd14)) begin
            u_assign_reg_226 <= newret14_reg_613;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd13)) begin
            u_assign_reg_226 <= newret13_reg_608;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd12)) begin
            u_assign_reg_226 <= newret12_reg_603;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd11)) begin
            u_assign_reg_226 <= newret11_reg_598;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd10)) begin
            u_assign_reg_226 <= newret10_reg_593;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd9)) begin
            u_assign_reg_226 <= newret8_reg_588;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd8)) begin
            u_assign_reg_226 <= newret6_reg_583;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd7)) begin
            u_assign_reg_226 <= newret4_reg_578;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd6)) begin
            u_assign_reg_226 <= newret2_reg_573;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd5)) begin
            u_assign_reg_226 <= newret9_reg_568;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd4)) begin
            u_assign_reg_226 <= newret7_reg_563;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd3)) begin
            u_assign_reg_226 <= newret5_reg_558;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd2)) begin
            u_assign_reg_226 <= newret3_reg_553;
        end else if ((ap_phi_mux_i_phi_fu_219_p4 == 5'd1)) begin
            u_assign_reg_226 <= newret1_reg_548;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_4_reg_631 <= i_4_fu_391_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_KeccakF1600_StatePer_fu_277_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        newret10_reg_593 <= grp_KeccakF1600_StatePer_fu_277_ap_return_10;
        newret11_reg_598 <= grp_KeccakF1600_StatePer_fu_277_ap_return_11;
        newret12_reg_603 <= grp_KeccakF1600_StatePer_fu_277_ap_return_12;
        newret13_reg_608 <= grp_KeccakF1600_StatePer_fu_277_ap_return_13;
        newret14_reg_613 <= grp_KeccakF1600_StatePer_fu_277_ap_return_14;
        newret15_reg_618 <= grp_KeccakF1600_StatePer_fu_277_ap_return_15;
        newret16_reg_623 <= grp_KeccakF1600_StatePer_fu_277_ap_return_16;
        newret1_reg_548 <= grp_KeccakF1600_StatePer_fu_277_ap_return_1;
        newret2_reg_573 <= grp_KeccakF1600_StatePer_fu_277_ap_return_6;
        newret3_reg_553 <= grp_KeccakF1600_StatePer_fu_277_ap_return_2;
        newret4_reg_578 <= grp_KeccakF1600_StatePer_fu_277_ap_return_7;
        newret5_reg_558 <= grp_KeccakF1600_StatePer_fu_277_ap_return_3;
        newret6_reg_583 <= grp_KeccakF1600_StatePer_fu_277_ap_return_8;
        newret7_reg_563 <= grp_KeccakF1600_StatePer_fu_277_ap_return_4;
        newret8_reg_588 <= grp_KeccakF1600_StatePer_fu_277_ap_return_9;
        newret9_reg_568 <= grp_KeccakF1600_StatePer_fu_277_ap_return_5;
        newret_reg_543 <= grp_KeccakF1600_StatePer_fu_277_ap_return_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_385_p2 == 1'd0))) begin
        tmp_4_reg_636[7 : 3] <= tmp_4_fu_397_p3[7 : 3];
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_385_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_385_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i_fu_405_p2 == 1'd0))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
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
            if (((grp_KeccakF1600_StatePer_fu_277_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (tmp_s_fu_385_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_i_fu_405_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
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

always @ (*) begin
    ap_condition_697 = (~(ap_phi_mux_i_phi_fu_219_p4 == 5'd0) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd15) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd14) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd13) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd12) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd11) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd10) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd9) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd8) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd7) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd6) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd5) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd4) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd3) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd2) & ~(ap_phi_mux_i_phi_fu_219_p4 == 5'd1));
end

assign ap_phi_mux_i_phi_fu_219_p4 = i_reg_215;

assign exitcond_i_fu_405_p2 = ((i_i_reg_266 == 4'd8) ? 1'b1 : 1'b0);

assign grp_KeccakF1600_StatePer_fu_277_ap_start = grp_KeccakF1600_StatePer_fu_277_ap_start_reg;

assign i_2_fu_411_p2 = (i_i_reg_266 + 4'd1);

assign i_4_fu_391_p2 = (i_reg_215 + 5'd1);

assign out_r_address0 = sum_i_cast_fu_453_p1;

assign out_r_d0 = tmp_3_i_fu_433_p2[7:0];

assign sum_i_cast_fu_453_p1 = sum_i_fu_448_p2;

assign sum_i_fu_448_p2 = (tmp_5_i_cast_fu_444_p1 + tmp_4_reg_636);

assign tmp_1_i_fu_421_p3 = {{tmp_fu_417_p1}, {3'd0}};

assign tmp_2_i_fu_429_p1 = tmp_1_i_fu_421_p3;

assign tmp_3_i_fu_433_p2 = u_assign_reg_226 >> tmp_2_i_fu_429_p1;

assign tmp_4_fu_397_p3 = {{i_reg_215}, {3'd0}};

assign tmp_5_i_cast_fu_444_p1 = i_i_reg_266;

assign tmp_fu_417_p1 = i_i_reg_266[2:0];

assign tmp_s_fu_385_p2 = ((i_reg_215 == 5'd17) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_4_reg_636[2:0] <= 3'b000;
end

endmodule //keccak_squeezeblocks
