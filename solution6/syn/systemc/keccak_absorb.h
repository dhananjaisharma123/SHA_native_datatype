// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _keccak_absorb_HH_
#define _keccak_absorb_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "keccak_absorb_t.h"

namespace ap_rtl {

struct keccak_absorb : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > s_address0;
    sc_out< sc_logic > s_ce0;
    sc_out< sc_logic > s_we0;
    sc_out< sc_lv<64> > s_d0;
    sc_in< sc_lv<64> > s_q0;
    sc_out< sc_lv<2> > m_address0;
    sc_out< sc_logic > m_ce0;
    sc_in< sc_lv<8> > m_q0;


    // Module declarations
    keccak_absorb(sc_module_name name);
    SC_HAS_PROCESS(keccak_absorb);

    ~keccak_absorb();

    sc_trace_file* mVcdFile;

    keccak_absorb_t* t_U;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > indvarinc_fu_226_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<5> > i_4_fu_254_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<64> > i_2_cast3_fu_260_p1;
    sc_signal< sc_lv<64> > i_2_cast3_reg_389;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<2> > tmp_3_fu_271_p2;
    sc_signal< sc_lv<2> > tmp_3_reg_397;
    sc_signal< sc_lv<1> > tmp_1_fu_265_p2;
    sc_signal< sc_lv<64> > i_3_cast2_fu_284_p1;
    sc_signal< sc_lv<64> > i_3_cast2_reg_413;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > i_5_fu_294_p2;
    sc_signal< sc_lv<5> > i_5_reg_421;
    sc_signal< sc_lv<8> > tmp_5_fu_300_p3;
    sc_signal< sc_lv<8> > tmp_5_reg_426;
    sc_signal< sc_lv<1> > tmp_4_fu_288_p2;
    sc_signal< sc_lv<4> > i_6_fu_314_p2;
    sc_signal< sc_lv<4> > i_6_reg_434;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > exitcond_i_fu_308_p2;
    sc_signal< sc_lv<5> > s_addr_1_reg_444;
    sc_signal< sc_lv<64> > r_fu_360_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<8> > t_address0;
    sc_signal< sc_logic > t_ce0;
    sc_signal< sc_logic > t_we0;
    sc_signal< sc_lv<8> > t_d0;
    sc_signal< sc_lv<8> > t_q0;
    sc_signal< sc_lv<8> > t_address1;
    sc_signal< sc_logic > t_ce1;
    sc_signal< sc_logic > t_we1;
    sc_signal< sc_lv<8> > t_d1;
    sc_signal< sc_lv<8> > t_q1;
    sc_signal< sc_lv<8> > invdar_reg_158;
    sc_signal< sc_lv<1> > tmp_s_fu_237_p2;
    sc_signal< sc_lv<5> > i_reg_169;
    sc_signal< sc_lv<1> > tmp_7_fu_248_p2;
    sc_signal< sc_lv<2> > i_2_reg_180;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > i_3_reg_191;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<4> > i_i_reg_202;
    sc_signal< sc_lv<64> > r_i_reg_214;
    sc_signal< sc_lv<64> > tmp_fu_232_p1;
    sc_signal< sc_lv<64> > i_cast4_fu_243_p1;
    sc_signal< sc_lv<64> > sum_i_cast_fu_329_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_366_p2;
    sc_signal< sc_lv<8> > tmp_i_cast_fu_320_p1;
    sc_signal< sc_lv<8> > sum_i_fu_324_p2;
    sc_signal< sc_lv<3> > tmp_6_fu_338_p1;
    sc_signal< sc_lv<6> > tmp_i_fu_342_p3;
    sc_signal< sc_lv<64> > tmp_8_i_fu_334_p1;
    sc_signal< sc_lv<64> > tmp_1_i_fu_350_p1;
    sc_signal< sc_lv<64> > tmp_2_i_fu_354_p2;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_87;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<8> ap_const_lv8_6;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_C7;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
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
    void thread_exitcond_i_fu_308_p2();
    void thread_i_2_cast3_fu_260_p1();
    void thread_i_3_cast2_fu_284_p1();
    void thread_i_4_fu_254_p2();
    void thread_i_5_fu_294_p2();
    void thread_i_6_fu_314_p2();
    void thread_i_cast4_fu_243_p1();
    void thread_indvarinc_fu_226_p2();
    void thread_m_address0();
    void thread_m_ce0();
    void thread_r_fu_360_p2();
    void thread_s_address0();
    void thread_s_ce0();
    void thread_s_d0();
    void thread_s_we0();
    void thread_sum_i_cast_fu_329_p1();
    void thread_sum_i_fu_324_p2();
    void thread_t_address0();
    void thread_t_address1();
    void thread_t_ce0();
    void thread_t_ce1();
    void thread_t_d0();
    void thread_t_d1();
    void thread_t_we0();
    void thread_t_we1();
    void thread_tmp_1_fu_265_p2();
    void thread_tmp_1_i_fu_350_p1();
    void thread_tmp_2_i_fu_354_p2();
    void thread_tmp_3_fu_271_p2();
    void thread_tmp_4_fu_288_p2();
    void thread_tmp_5_fu_300_p3();
    void thread_tmp_6_fu_338_p1();
    void thread_tmp_7_fu_248_p2();
    void thread_tmp_8_fu_366_p2();
    void thread_tmp_8_i_fu_334_p1();
    void thread_tmp_fu_232_p1();
    void thread_tmp_i_cast_fu_320_p1();
    void thread_tmp_i_fu_342_p3();
    void thread_tmp_s_fu_237_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
