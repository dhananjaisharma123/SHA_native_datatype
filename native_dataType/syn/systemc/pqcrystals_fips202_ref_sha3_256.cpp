// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "pqcrystals_fips202_ref_sha3_256.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic pqcrystals_fips202_ref_sha3_256::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic pqcrystals_fips202_ref_sha3_256::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> pqcrystals_fips202_ref_sha3_256::ap_ST_fsm_state1 = "1";
const sc_lv<5> pqcrystals_fips202_ref_sha3_256::ap_ST_fsm_state2 = "10";
const sc_lv<5> pqcrystals_fips202_ref_sha3_256::ap_ST_fsm_state3 = "100";
const sc_lv<5> pqcrystals_fips202_ref_sha3_256::ap_ST_fsm_state4 = "1000";
const sc_lv<5> pqcrystals_fips202_ref_sha3_256::ap_ST_fsm_state5 = "10000";
const sc_lv<32> pqcrystals_fips202_ref_sha3_256::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> pqcrystals_fips202_ref_sha3_256::ap_const_lv32_1 = "1";
const sc_lv<32> pqcrystals_fips202_ref_sha3_256::ap_const_lv32_3 = "11";
const sc_lv<1> pqcrystals_fips202_ref_sha3_256::ap_const_lv1_0 = "0";
const sc_lv<6> pqcrystals_fips202_ref_sha3_256::ap_const_lv6_0 = "000000";
const sc_lv<32> pqcrystals_fips202_ref_sha3_256::ap_const_lv32_2 = "10";
const sc_lv<32> pqcrystals_fips202_ref_sha3_256::ap_const_lv32_4 = "100";
const sc_lv<6> pqcrystals_fips202_ref_sha3_256::ap_const_lv6_20 = "100000";
const sc_lv<6> pqcrystals_fips202_ref_sha3_256::ap_const_lv6_1 = "1";
const sc_lv<1> pqcrystals_fips202_ref_sha3_256::ap_const_lv1_1 = "1";
const bool pqcrystals_fips202_ref_sha3_256::ap_const_boolean_1 = true;

pqcrystals_fips202_ref_sha3_256::pqcrystals_fips202_ref_sha3_256(sc_module_name name) : sc_module(name), mVcdFile(0) {
    t_U = new pqcrystals_fips202_ref_sha3_256_t("t_U");
    t_U->clk(ap_clk);
    t_U->reset(ap_rst);
    t_U->address0(t_address0);
    t_U->ce0(t_ce0);
    t_U->we0(t_we0);
    t_U->d0(grp_keccak_squeezeblocks_fu_77_out_r_d0);
    t_U->q0(t_q0);
    grp_keccak_squeezeblocks_fu_77 = new keccak_squeezeblocks("grp_keccak_squeezeblocks_fu_77");
    grp_keccak_squeezeblocks_fu_77->ap_clk(ap_clk);
    grp_keccak_squeezeblocks_fu_77->ap_rst(ap_rst);
    grp_keccak_squeezeblocks_fu_77->ap_start(grp_keccak_squeezeblocks_fu_77_ap_start);
    grp_keccak_squeezeblocks_fu_77->ap_done(grp_keccak_squeezeblocks_fu_77_ap_done);
    grp_keccak_squeezeblocks_fu_77->ap_idle(grp_keccak_squeezeblocks_fu_77_ap_idle);
    grp_keccak_squeezeblocks_fu_77->ap_ready(grp_keccak_squeezeblocks_fu_77_ap_ready);
    grp_keccak_squeezeblocks_fu_77->out_r_address0(grp_keccak_squeezeblocks_fu_77_out_r_address0);
    grp_keccak_squeezeblocks_fu_77->out_r_ce0(grp_keccak_squeezeblocks_fu_77_out_r_ce0);
    grp_keccak_squeezeblocks_fu_77->out_r_we0(grp_keccak_squeezeblocks_fu_77_out_r_we0);
    grp_keccak_squeezeblocks_fu_77->out_r_d0(grp_keccak_squeezeblocks_fu_77_out_r_d0);
    grp_keccak_squeezeblocks_fu_77->s_0_read(s_0_reg_209);
    grp_keccak_squeezeblocks_fu_77->s_1_read(s_1_reg_214);
    grp_keccak_squeezeblocks_fu_77->s_2_read(s_2_reg_219);
    grp_keccak_squeezeblocks_fu_77->s_3_read(s_3_reg_224);
    grp_keccak_squeezeblocks_fu_77->s_4_read(s_4_reg_229);
    grp_keccak_squeezeblocks_fu_77->s_5_read(s_5_reg_234);
    grp_keccak_squeezeblocks_fu_77->s_6_read(s_6_reg_239);
    grp_keccak_squeezeblocks_fu_77->s_7_read(s_7_reg_244);
    grp_keccak_squeezeblocks_fu_77->s_8_read(s_8_reg_249);
    grp_keccak_squeezeblocks_fu_77->s_9_read(s_9_reg_254);
    grp_keccak_squeezeblocks_fu_77->s_10_read(s_10_reg_259);
    grp_keccak_squeezeblocks_fu_77->s_11_read(s_11_reg_264);
    grp_keccak_squeezeblocks_fu_77->s_12_read(s_12_reg_269);
    grp_keccak_squeezeblocks_fu_77->s_13_read(s_13_reg_274);
    grp_keccak_squeezeblocks_fu_77->s_14_read(s_14_reg_279);
    grp_keccak_squeezeblocks_fu_77->s_15_read(s_15_reg_284);
    grp_keccak_squeezeblocks_fu_77->s_16_read(s_16_reg_289);
    grp_keccak_absorb_fu_101 = new keccak_absorb("grp_keccak_absorb_fu_101");
    grp_keccak_absorb_fu_101->ap_clk(ap_clk);
    grp_keccak_absorb_fu_101->ap_rst(ap_rst);
    grp_keccak_absorb_fu_101->ap_start(grp_keccak_absorb_fu_101_ap_start);
    grp_keccak_absorb_fu_101->ap_done(grp_keccak_absorb_fu_101_ap_done);
    grp_keccak_absorb_fu_101->ap_idle(grp_keccak_absorb_fu_101_ap_idle);
    grp_keccak_absorb_fu_101->ap_ready(grp_keccak_absorb_fu_101_ap_ready);
    grp_keccak_absorb_fu_101->m_address0(grp_keccak_absorb_fu_101_m_address0);
    grp_keccak_absorb_fu_101->m_ce0(grp_keccak_absorb_fu_101_m_ce0);
    grp_keccak_absorb_fu_101->m_q0(in_r_q0);
    grp_keccak_absorb_fu_101->ap_return_0(grp_keccak_absorb_fu_101_ap_return_0);
    grp_keccak_absorb_fu_101->ap_return_1(grp_keccak_absorb_fu_101_ap_return_1);
    grp_keccak_absorb_fu_101->ap_return_2(grp_keccak_absorb_fu_101_ap_return_2);
    grp_keccak_absorb_fu_101->ap_return_3(grp_keccak_absorb_fu_101_ap_return_3);
    grp_keccak_absorb_fu_101->ap_return_4(grp_keccak_absorb_fu_101_ap_return_4);
    grp_keccak_absorb_fu_101->ap_return_5(grp_keccak_absorb_fu_101_ap_return_5);
    grp_keccak_absorb_fu_101->ap_return_6(grp_keccak_absorb_fu_101_ap_return_6);
    grp_keccak_absorb_fu_101->ap_return_7(grp_keccak_absorb_fu_101_ap_return_7);
    grp_keccak_absorb_fu_101->ap_return_8(grp_keccak_absorb_fu_101_ap_return_8);
    grp_keccak_absorb_fu_101->ap_return_9(grp_keccak_absorb_fu_101_ap_return_9);
    grp_keccak_absorb_fu_101->ap_return_10(grp_keccak_absorb_fu_101_ap_return_10);
    grp_keccak_absorb_fu_101->ap_return_11(grp_keccak_absorb_fu_101_ap_return_11);
    grp_keccak_absorb_fu_101->ap_return_12(grp_keccak_absorb_fu_101_ap_return_12);
    grp_keccak_absorb_fu_101->ap_return_13(grp_keccak_absorb_fu_101_ap_return_13);
    grp_keccak_absorb_fu_101->ap_return_14(grp_keccak_absorb_fu_101_ap_return_14);
    grp_keccak_absorb_fu_101->ap_return_15(grp_keccak_absorb_fu_101_ap_return_15);
    grp_keccak_absorb_fu_101->ap_return_16(grp_keccak_absorb_fu_101_ap_return_16);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_192_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_192_p2 );

    SC_METHOD(thread_exitcond_fu_192_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i_reg_66 );

    SC_METHOD(thread_grp_keccak_absorb_fu_101_ap_start);
    sensitive << ( grp_keccak_absorb_fu_101_ap_start_reg );

    SC_METHOD(thread_grp_keccak_squeezeblocks_fu_77_ap_start);
    sensitive << ( grp_keccak_squeezeblocks_fu_77_ap_start_reg );

    SC_METHOD(thread_h_address0);
    sensitive << ( tmp_reg_302 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_h_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_h_d0);
    sensitive << ( t_q0 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_h_we0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_i_1_fu_198_p2);
    sensitive << ( i_reg_66 );

    SC_METHOD(thread_in_r_address0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( grp_keccak_absorb_fu_101_m_address0 );

    SC_METHOD(thread_in_r_ce0);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( grp_keccak_absorb_fu_101_m_ce0 );

    SC_METHOD(thread_t_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( tmp_fu_204_p1 );
    sensitive << ( grp_keccak_squeezeblocks_fu_77_out_r_address0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_t_ce0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( grp_keccak_squeezeblocks_fu_77_out_r_ce0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_t_we0);
    sensitive << ( grp_keccak_squeezeblocks_fu_77_out_r_we0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_fu_204_p1);
    sensitive << ( i_reg_66 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( grp_keccak_absorb_fu_101_ap_done );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( exitcond_fu_192_p2 );
    sensitive << ( grp_keccak_squeezeblocks_fu_77_ap_done );
    sensitive << ( ap_CS_fsm_state3 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "00001";
    grp_keccak_squeezeblocks_fu_77_ap_start_reg = SC_LOGIC_0;
    grp_keccak_absorb_fu_101_ap_start_reg = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "pqcrystals_fips202_ref_sha3_256_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, h_address0, "(port)h_address0");
    sc_trace(mVcdFile, h_ce0, "(port)h_ce0");
    sc_trace(mVcdFile, h_we0, "(port)h_we0");
    sc_trace(mVcdFile, h_d0, "(port)h_d0");
    sc_trace(mVcdFile, in_r_address0, "(port)in_r_address0");
    sc_trace(mVcdFile, in_r_ce0, "(port)in_r_ce0");
    sc_trace(mVcdFile, in_r_q0, "(port)in_r_q0");
    sc_trace(mVcdFile, inlen, "(port)inlen");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, s_0_reg_209, "s_0_reg_209");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_ready, "grp_keccak_absorb_fu_101_ap_ready");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_done, "grp_keccak_absorb_fu_101_ap_done");
    sc_trace(mVcdFile, s_1_reg_214, "s_1_reg_214");
    sc_trace(mVcdFile, s_2_reg_219, "s_2_reg_219");
    sc_trace(mVcdFile, s_3_reg_224, "s_3_reg_224");
    sc_trace(mVcdFile, s_4_reg_229, "s_4_reg_229");
    sc_trace(mVcdFile, s_5_reg_234, "s_5_reg_234");
    sc_trace(mVcdFile, s_6_reg_239, "s_6_reg_239");
    sc_trace(mVcdFile, s_7_reg_244, "s_7_reg_244");
    sc_trace(mVcdFile, s_8_reg_249, "s_8_reg_249");
    sc_trace(mVcdFile, s_9_reg_254, "s_9_reg_254");
    sc_trace(mVcdFile, s_10_reg_259, "s_10_reg_259");
    sc_trace(mVcdFile, s_11_reg_264, "s_11_reg_264");
    sc_trace(mVcdFile, s_12_reg_269, "s_12_reg_269");
    sc_trace(mVcdFile, s_13_reg_274, "s_13_reg_274");
    sc_trace(mVcdFile, s_14_reg_279, "s_14_reg_279");
    sc_trace(mVcdFile, s_15_reg_284, "s_15_reg_284");
    sc_trace(mVcdFile, s_16_reg_289, "s_16_reg_289");
    sc_trace(mVcdFile, i_1_fu_198_p2, "i_1_fu_198_p2");
    sc_trace(mVcdFile, i_1_reg_297, "i_1_reg_297");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_fu_204_p1, "tmp_fu_204_p1");
    sc_trace(mVcdFile, tmp_reg_302, "tmp_reg_302");
    sc_trace(mVcdFile, exitcond_fu_192_p2, "exitcond_fu_192_p2");
    sc_trace(mVcdFile, t_address0, "t_address0");
    sc_trace(mVcdFile, t_ce0, "t_ce0");
    sc_trace(mVcdFile, t_we0, "t_we0");
    sc_trace(mVcdFile, t_q0, "t_q0");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_ap_start, "grp_keccak_squeezeblocks_fu_77_ap_start");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_ap_done, "grp_keccak_squeezeblocks_fu_77_ap_done");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_ap_idle, "grp_keccak_squeezeblocks_fu_77_ap_idle");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_ap_ready, "grp_keccak_squeezeblocks_fu_77_ap_ready");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_out_r_address0, "grp_keccak_squeezeblocks_fu_77_out_r_address0");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_out_r_ce0, "grp_keccak_squeezeblocks_fu_77_out_r_ce0");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_out_r_we0, "grp_keccak_squeezeblocks_fu_77_out_r_we0");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_out_r_d0, "grp_keccak_squeezeblocks_fu_77_out_r_d0");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_start, "grp_keccak_absorb_fu_101_ap_start");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_idle, "grp_keccak_absorb_fu_101_ap_idle");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_m_address0, "grp_keccak_absorb_fu_101_m_address0");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_m_ce0, "grp_keccak_absorb_fu_101_m_ce0");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_0, "grp_keccak_absorb_fu_101_ap_return_0");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_1, "grp_keccak_absorb_fu_101_ap_return_1");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_2, "grp_keccak_absorb_fu_101_ap_return_2");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_3, "grp_keccak_absorb_fu_101_ap_return_3");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_4, "grp_keccak_absorb_fu_101_ap_return_4");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_5, "grp_keccak_absorb_fu_101_ap_return_5");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_6, "grp_keccak_absorb_fu_101_ap_return_6");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_7, "grp_keccak_absorb_fu_101_ap_return_7");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_8, "grp_keccak_absorb_fu_101_ap_return_8");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_9, "grp_keccak_absorb_fu_101_ap_return_9");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_10, "grp_keccak_absorb_fu_101_ap_return_10");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_11, "grp_keccak_absorb_fu_101_ap_return_11");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_12, "grp_keccak_absorb_fu_101_ap_return_12");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_13, "grp_keccak_absorb_fu_101_ap_return_13");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_14, "grp_keccak_absorb_fu_101_ap_return_14");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_15, "grp_keccak_absorb_fu_101_ap_return_15");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_return_16, "grp_keccak_absorb_fu_101_ap_return_16");
    sc_trace(mVcdFile, i_reg_66, "i_reg_66");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, grp_keccak_squeezeblocks_fu_77_ap_start_reg, "grp_keccak_squeezeblocks_fu_77_ap_start_reg");
    sc_trace(mVcdFile, grp_keccak_absorb_fu_101_ap_start_reg, "grp_keccak_absorb_fu_101_ap_start_reg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("pqcrystals_fips202_ref_sha3_256.hdltvin.dat");
    mHdltvoutHandle.open("pqcrystals_fips202_ref_sha3_256.hdltvout.dat");
}

pqcrystals_fips202_ref_sha3_256::~pqcrystals_fips202_ref_sha3_256() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete t_U;
    delete grp_keccak_squeezeblocks_fu_77;
    delete grp_keccak_absorb_fu_101;
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_keccak_absorb_fu_101_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
             esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            grp_keccak_absorb_fu_101_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_keccak_absorb_fu_101_ap_ready.read())) {
            grp_keccak_absorb_fu_101_ap_start_reg = ap_const_logic_0;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        grp_keccak_squeezeblocks_fu_77_ap_start_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
             esl_seteq<1,1,1>(grp_keccak_absorb_fu_101_ap_done.read(), ap_const_logic_1))) {
            grp_keccak_squeezeblocks_fu_77_ap_start_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_keccak_squeezeblocks_fu_77_ap_ready.read())) {
            grp_keccak_squeezeblocks_fu_77_ap_start_reg = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        i_reg_66 = i_1_reg_297.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
                esl_seteq<1,1,1>(grp_keccak_squeezeblocks_fu_77_ap_done.read(), ap_const_logic_1))) {
        i_reg_66 = ap_const_lv6_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_1_reg_297 = i_1_fu_198_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_keccak_absorb_fu_101_ap_done.read(), ap_const_logic_1))) {
        s_0_reg_209 = grp_keccak_absorb_fu_101_ap_return_0.read();
        s_10_reg_259 = grp_keccak_absorb_fu_101_ap_return_10.read();
        s_11_reg_264 = grp_keccak_absorb_fu_101_ap_return_11.read();
        s_12_reg_269 = grp_keccak_absorb_fu_101_ap_return_12.read();
        s_13_reg_274 = grp_keccak_absorb_fu_101_ap_return_13.read();
        s_14_reg_279 = grp_keccak_absorb_fu_101_ap_return_14.read();
        s_15_reg_284 = grp_keccak_absorb_fu_101_ap_return_15.read();
        s_16_reg_289 = grp_keccak_absorb_fu_101_ap_return_16.read();
        s_1_reg_214 = grp_keccak_absorb_fu_101_ap_return_1.read();
        s_2_reg_219 = grp_keccak_absorb_fu_101_ap_return_2.read();
        s_3_reg_224 = grp_keccak_absorb_fu_101_ap_return_3.read();
        s_4_reg_229 = grp_keccak_absorb_fu_101_ap_return_4.read();
        s_5_reg_234 = grp_keccak_absorb_fu_101_ap_return_5.read();
        s_6_reg_239 = grp_keccak_absorb_fu_101_ap_return_6.read();
        s_7_reg_244 = grp_keccak_absorb_fu_101_ap_return_7.read();
        s_8_reg_249 = grp_keccak_absorb_fu_101_ap_return_8.read();
        s_9_reg_254 = grp_keccak_absorb_fu_101_ap_return_9.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_192_p2.read(), ap_const_lv1_0))) {
        tmp_reg_302 = tmp_fu_204_p1.read();
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_192_p2.read(), ap_const_lv1_1))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_192_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_exitcond_fu_192_p2() {
    exitcond_fu_192_p2 = (!i_reg_66.read().is_01() || !ap_const_lv6_20.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_66.read() == ap_const_lv6_20);
}

void pqcrystals_fips202_ref_sha3_256::thread_grp_keccak_absorb_fu_101_ap_start() {
    grp_keccak_absorb_fu_101_ap_start = grp_keccak_absorb_fu_101_ap_start_reg.read();
}

void pqcrystals_fips202_ref_sha3_256::thread_grp_keccak_squeezeblocks_fu_77_ap_start() {
    grp_keccak_squeezeblocks_fu_77_ap_start = grp_keccak_squeezeblocks_fu_77_ap_start_reg.read();
}

void pqcrystals_fips202_ref_sha3_256::thread_h_address0() {
    h_address0 =  (sc_lv<5>) (tmp_reg_302.read());
}

void pqcrystals_fips202_ref_sha3_256::thread_h_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        h_ce0 = ap_const_logic_1;
    } else {
        h_ce0 = ap_const_logic_0;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_h_d0() {
    h_d0 = t_q0.read();
}

void pqcrystals_fips202_ref_sha3_256::thread_h_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        h_we0 = ap_const_logic_1;
    } else {
        h_we0 = ap_const_logic_0;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_i_1_fu_198_p2() {
    i_1_fu_198_p2 = (!i_reg_66.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_reg_66.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void pqcrystals_fips202_ref_sha3_256::thread_in_r_address0() {
    in_r_address0 = grp_keccak_absorb_fu_101_m_address0.read();
}

void pqcrystals_fips202_ref_sha3_256::thread_in_r_ce0() {
    in_r_ce0 = grp_keccak_absorb_fu_101_m_ce0.read();
}

void pqcrystals_fips202_ref_sha3_256::thread_t_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        t_address0 =  (sc_lv<8>) (tmp_fu_204_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        t_address0 = grp_keccak_squeezeblocks_fu_77_out_r_address0.read();
    } else {
        t_address0 = "XXXXXXXX";
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_t_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        t_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        t_ce0 = grp_keccak_squeezeblocks_fu_77_out_r_ce0.read();
    } else {
        t_ce0 = ap_const_logic_0;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_t_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        t_we0 = grp_keccak_squeezeblocks_fu_77_out_r_we0.read();
    } else {
        t_we0 = ap_const_logic_0;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_tmp_fu_204_p1() {
    tmp_fu_204_p1 = esl_zext<64,6>(i_reg_66.read());
}

void pqcrystals_fips202_ref_sha3_256::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(grp_keccak_absorb_fu_101_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(grp_keccak_squeezeblocks_fu_77_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(exitcond_fu_192_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<5>) ("XXXXX");
            break;
    }
}

void pqcrystals_fips202_ref_sha3_256::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"h_address0\" :  \"" << h_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"h_ce0\" :  \"" << h_ce0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"h_we0\" :  \"" << h_we0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"h_d0\" :  \"" << h_d0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_address0\" :  \"" << in_r_address0.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"in_r_ce0\" :  \"" << in_r_ce0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"in_r_q0\" :  \"" << in_r_q0.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"inlen\" :  \"" << inlen.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

