// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pqcrystals_fips202_ref_sha3_256_HH_
#define _pqcrystals_fips202_ref_sha3_256_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakF1600_StatePer.h"
#include "keccak_absorb.h"
#include "pqcrystals_fips202_ref_sha3_256_s.h"
#include "pqcrystals_fips202_ref_sha3_256_out_assign.h"

namespace ap_rtl {

struct pqcrystals_fips202_ref_sha3_256 : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > h_address0;
    sc_out< sc_logic > h_ce0;
    sc_out< sc_logic > h_we0;
    sc_out< sc_lv<8> > h_d0;
    sc_out< sc_lv<2> > in_r_address0;
    sc_out< sc_logic > in_r_ce0;
    sc_in< sc_lv<8> > in_r_q0;
    sc_in< sc_lv<64> > inlen;


    // Module declarations
    pqcrystals_fips202_ref_sha3_256(sc_module_name name);
    SC_HAS_PROCESS(pqcrystals_fips202_ref_sha3_256);

    ~pqcrystals_fips202_ref_sha3_256();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    pqcrystals_fips202_ref_sha3_256_s* s_U;
    pqcrystals_fips202_ref_sha3_256_out_assign* out_assign_U;
    KeccakF1600_StatePer* grp_KeccakF1600_StatePer_fu_141;
    keccak_absorb* grp_keccak_absorb_fu_148;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > i_4_i_fu_162_p2;
    sc_signal< sc_lv<5> > i_4_i_reg_253;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > tmp_i_fu_156_p2;
    sc_signal< sc_lv<8> > tmp_4_i_fu_173_p3;
    sc_signal< sc_lv<8> > tmp_4_i_reg_263;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > s_q0;
    sc_signal< sc_lv<64> > s_load_reg_268;
    sc_signal< sc_lv<4> > i_2_fu_187_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<6> > i_1_fu_239_p2;
    sc_signal< sc_lv<6> > i_1_reg_284;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > tmp_7_fu_245_p1;
    sc_signal< sc_lv<64> > tmp_7_reg_289;
    sc_signal< sc_lv<1> > tmp_fu_233_p2;
    sc_signal< sc_lv<5> > s_address0;
    sc_signal< sc_logic > s_ce0;
    sc_signal< sc_logic > s_we0;
    sc_signal< sc_lv<64> > s_d0;
    sc_signal< sc_logic > s_ce1;
    sc_signal< sc_logic > s_we1;
    sc_signal< sc_lv<64> > s_q1;
    sc_signal< sc_lv<8> > out_assign_address0;
    sc_signal< sc_logic > out_assign_ce0;
    sc_signal< sc_logic > out_assign_we0;
    sc_signal< sc_lv<8> > out_assign_d0;
    sc_signal< sc_lv<8> > out_assign_q0;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_ap_start;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_ap_done;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_ap_idle;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_ap_ready;
    sc_signal< sc_lv<5> > grp_KeccakF1600_StatePer_fu_141_state_address0;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_state_ce0;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_state_we0;
    sc_signal< sc_lv<64> > grp_KeccakF1600_StatePer_fu_141_state_d0;
    sc_signal< sc_lv<5> > grp_KeccakF1600_StatePer_fu_141_state_address1;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_state_ce1;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_state_we1;
    sc_signal< sc_lv<64> > grp_KeccakF1600_StatePer_fu_141_state_d1;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_ap_start;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_ap_done;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_ap_idle;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_ap_ready;
    sc_signal< sc_lv<5> > grp_keccak_absorb_fu_148_s_address0;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_s_ce0;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_s_we0;
    sc_signal< sc_lv<64> > grp_keccak_absorb_fu_148_s_d0;
    sc_signal< sc_lv<2> > grp_keccak_absorb_fu_148_m_address0;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_m_ce0;
    sc_signal< sc_lv<5> > i_i_reg_107;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > tmp_i_i_fu_181_p2;
    sc_signal< sc_lv<4> > i_i_i_reg_119;
    sc_signal< sc_lv<6> > i_reg_130;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > grp_KeccakF1600_StatePer_fu_141_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > grp_keccak_absorb_fu_148_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_6_i_fu_168_p1;
    sc_signal< sc_lv<64> > sum_i_i_cast_fu_228_p1;
    sc_signal< sc_lv<3> > tmp_1_fu_193_p1;
    sc_signal< sc_lv<6> > tmp_1_i_i_fu_197_p3;
    sc_signal< sc_lv<64> > tmp_2_i_i_fu_205_p1;
    sc_signal< sc_lv<64> > tmp_3_i_i_fu_209_p2;
    sc_signal< sc_lv<8> > tmp_5_i_i_cast_fu_219_p1;
    sc_signal< sc_lv<8> > sum_i_i_fu_223_p2;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_state4;
    static const sc_lv<9> ap_ST_fsm_state5;
    static const sc_lv<9> ap_ST_fsm_state6;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_KeccakF1600_StatePer_fu_141_ap_start();
    void thread_grp_keccak_absorb_fu_148_ap_start();
    void thread_h_address0();
    void thread_h_ce0();
    void thread_h_d0();
    void thread_h_we0();
    void thread_i_1_fu_239_p2();
    void thread_i_2_fu_187_p2();
    void thread_i_4_i_fu_162_p2();
    void thread_in_r_address0();
    void thread_in_r_ce0();
    void thread_out_assign_address0();
    void thread_out_assign_ce0();
    void thread_out_assign_d0();
    void thread_out_assign_we0();
    void thread_s_address0();
    void thread_s_ce0();
    void thread_s_ce1();
    void thread_s_d0();
    void thread_s_we0();
    void thread_s_we1();
    void thread_sum_i_i_cast_fu_228_p1();
    void thread_sum_i_i_fu_223_p2();
    void thread_tmp_1_fu_193_p1();
    void thread_tmp_1_i_i_fu_197_p3();
    void thread_tmp_2_i_i_fu_205_p1();
    void thread_tmp_3_i_i_fu_209_p2();
    void thread_tmp_4_i_fu_173_p3();
    void thread_tmp_5_i_i_cast_fu_219_p1();
    void thread_tmp_6_i_fu_168_p1();
    void thread_tmp_7_fu_245_p1();
    void thread_tmp_fu_233_p2();
    void thread_tmp_i_fu_156_p2();
    void thread_tmp_i_i_fu_181_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
