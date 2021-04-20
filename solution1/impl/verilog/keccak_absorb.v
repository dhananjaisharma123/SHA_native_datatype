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
        m_address0,
        m_ce0,
        m_q0
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;

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
output  [1:0] m_address0;
output   m_ce0;
input  [7:0] m_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] s_address0;
reg s_ce0;
reg s_we0;
reg[63:0] s_d0;
reg m_ce0;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] indvarinc_fu_218_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] i_4_fu_246_p2;
wire    ap_CS_fsm_state3;
wire   [63:0] i_2_cast5_fu_252_p1;
reg   [63:0] i_2_cast5_reg_381;
wire    ap_CS_fsm_state4;
wire   [1:0] tmp_3_fu_263_p2;
reg   [1:0] tmp_3_reg_389;
wire   [0:0] tmp_1_fu_257_p2;
wire   [63:0] i_3_cast4_fu_276_p1;
reg   [63:0] i_3_cast4_reg_405;
wire    ap_CS_fsm_state7;
wire   [4:0] i_5_fu_286_p2;
reg   [4:0] i_5_reg_413;
wire   [7:0] tmp_5_fu_292_p3;
reg   [7:0] tmp_5_reg_418;
wire   [0:0] tmp_4_fu_280_p2;
wire   [3:0] i_6_fu_306_p2;
reg   [3:0] i_6_reg_426;
wire    ap_CS_fsm_state8;
wire   [0:0] tmp_i_fu_300_p2;
reg   [4:0] s_addr_1_reg_436;
wire   [63:0] r_fu_352_p2;
wire    ap_CS_fsm_state9;
reg   [7:0] t_address0;
reg    t_ce0;
reg    t_we0;
reg   [7:0] t_d0;
wire   [7:0] t_q0;
reg   [7:0] t_address1;
reg    t_ce1;
reg    t_we1;
wire   [7:0] t_d1;
wire   [7:0] t_q1;
reg   [7:0] invdar_reg_150;
wire   [0:0] tmp_s_fu_229_p2;
reg   [4:0] i_reg_161;
wire   [0:0] tmp_7_fu_240_p2;
reg   [1:0] i_2_reg_172;
wire    ap_CS_fsm_state5;
reg   [4:0] i_3_reg_183;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state10;
reg   [3:0] i_i_reg_194;
reg   [63:0] r_i_reg_206;
wire   [63:0] tmp_fu_224_p1;
wire   [63:0] i_cast6_fu_235_p1;
wire   [63:0] sum_i_cast_fu_321_p1;
wire   [63:0] tmp_8_fu_358_p2;
wire   [7:0] tmp_9_i_cast_fu_312_p1;
wire   [7:0] sum_i_fu_316_p2;
wire   [2:0] tmp_6_fu_330_p1;
wire   [5:0] tmp_1_i_fu_334_p3;
wire   [63:0] tmp_i_11_fu_326_p1;
wire   [63:0] tmp_2_i_fu_342_p1;
wire   [63:0] tmp_3_i_fu_346_p2;
reg   [9:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
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
    .we1(t_we1),
    .d1(t_d1),
    .q1(t_q1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_7_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_2_reg_172 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_2_reg_172 <= tmp_3_reg_389;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_3_reg_183 <= i_5_reg_413;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_3_reg_183 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_i_reg_194 <= i_6_reg_426;
    end else if (((tmp_4_fu_280_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        i_i_reg_194 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_s_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_161 <= 5'd0;
    end else if (((tmp_7_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_reg_161 <= i_4_fu_246_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_s_fu_229_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        invdar_reg_150 <= indvarinc_fu_218_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        invdar_reg_150 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        r_i_reg_206 <= r_fu_352_p2;
    end else if (((tmp_4_fu_280_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        r_i_reg_206 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_2_cast5_reg_381[1 : 0] <= i_2_cast5_fu_252_p1[1 : 0];
        tmp_3_reg_389 <= tmp_3_fu_263_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_3_cast4_reg_405[4 : 0] <= i_3_cast4_fu_276_p1[4 : 0];
        i_5_reg_413 <= i_5_fu_286_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_6_reg_426 <= i_6_fu_306_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_i_fu_300_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        s_addr_1_reg_436 <= i_3_cast4_reg_405;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_4_fu_280_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        tmp_5_reg_418[7 : 3] <= tmp_5_fu_292_p3[7 : 3];
    end
end

always @ (*) begin
    if ((((tmp_4_fu_280_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((tmp_4_fu_280_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        m_ce0 = 1'b1;
    end else begin
        m_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        s_address0 = s_addr_1_reg_436;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        s_address0 = i_3_cast4_reg_405;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_address0 = i_cast6_fu_235_p1;
    end else begin
        s_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state10))) begin
        s_ce0 = 1'b1;
    end else begin
        s_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        s_d0 = tmp_8_fu_358_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        s_d0 = 64'd0;
    end else begin
        s_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | ((tmp_7_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
        s_we0 = 1'b1;
    end else begin
        s_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_address0 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        t_address0 = i_2_cast5_reg_381;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        t_address0 = 64'd135;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_address0 = tmp_fu_224_p1;
    end else begin
        t_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        t_address1 = sum_i_cast_fu_321_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        t_address1 = 64'd135;
    end else begin
        t_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        t_ce0 = 1'b1;
    end else begin
        t_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        t_ce1 = 1'b1;
    end else begin
        t_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_d0 = 8'd6;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        t_d0 = m_q0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        t_d0 = 8'd0;
    end else begin
        t_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        t_we0 = 1'b1;
    end else begin
        t_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        t_we1 = 1'b1;
    end else begin
        t_we1 = 1'b0;
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
            if (((tmp_s_fu_229_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_7_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((tmp_1_fu_257_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((tmp_4_fu_280_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            if (((tmp_i_fu_300_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign i_2_cast5_fu_252_p1 = i_2_reg_172;

assign i_3_cast4_fu_276_p1 = i_3_reg_183;

assign i_4_fu_246_p2 = (i_reg_161 + 5'd1);

assign i_5_fu_286_p2 = (i_3_reg_183 + 5'd1);

assign i_6_fu_306_p2 = (i_i_reg_194 + 4'd1);

assign i_cast6_fu_235_p1 = i_reg_161;

assign indvarinc_fu_218_p2 = (invdar_reg_150 + 8'd1);

assign m_address0 = i_2_cast5_fu_252_p1;

assign r_fu_352_p2 = (tmp_3_i_fu_346_p2 | r_i_reg_206);

assign sum_i_cast_fu_321_p1 = sum_i_fu_316_p2;

assign sum_i_fu_316_p2 = (tmp_9_i_cast_fu_312_p1 + tmp_5_reg_418);

assign t_d1 = (t_q0 | 8'd128);

assign tmp_1_fu_257_p2 = ((i_2_reg_172 == 2'd3) ? 1'b1 : 1'b0);

assign tmp_1_i_fu_334_p3 = {{tmp_6_fu_330_p1}, {3'd0}};

assign tmp_2_i_fu_342_p1 = tmp_1_i_fu_334_p3;

assign tmp_3_fu_263_p2 = (i_2_reg_172 + 2'd1);

assign tmp_3_i_fu_346_p2 = tmp_i_11_fu_326_p1 << tmp_2_i_fu_342_p1;

assign tmp_4_fu_280_p2 = ((i_3_reg_183 == 5'd17) ? 1'b1 : 1'b0);

assign tmp_5_fu_292_p3 = {{i_3_reg_183}, {3'd0}};

assign tmp_6_fu_330_p1 = i_i_reg_194[2:0];

assign tmp_7_fu_240_p2 = ((i_reg_161 == 5'd25) ? 1'b1 : 1'b0);

assign tmp_8_fu_358_p2 = (s_q0 ^ r_i_reg_206);

assign tmp_9_i_cast_fu_312_p1 = i_i_reg_194;

assign tmp_fu_224_p1 = invdar_reg_150;

assign tmp_i_11_fu_326_p1 = t_q1;

assign tmp_i_fu_300_p2 = ((i_i_reg_194 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_s_fu_229_p2 = ((invdar_reg_150 == 8'd199) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    i_2_cast5_reg_381[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
    i_3_cast4_reg_405[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    tmp_5_reg_418[2:0] <= 3'b000;
end

endmodule //keccak_absorb
