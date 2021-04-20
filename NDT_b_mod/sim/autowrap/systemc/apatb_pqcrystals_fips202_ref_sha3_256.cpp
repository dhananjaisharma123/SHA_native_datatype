// ==============================================================
// File generated on Mon Apr 19 03:11:34 EDT 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// apint = uint8
#define uint8 char

// [dump_struct_tree [build_nameSpaceTree] dumpedStructList] ---------->


// [dump_enumeration [get_enumeration_list]] ---------->


// wrapc file define: "h"
#define AUTOTB_TVOUT_h  "../tv/cdatafile/c.pqcrystals_fips202_ref_sha3_256.autotvout_h.dat"
#define AUTOTB_TVIN_h  "../tv/cdatafile/c.pqcrystals_fips202_ref_sha3_256.autotvin_h.dat"
// wrapc file define: "IN_r"
#define AUTOTB_TVIN_IN_r  "../tv/cdatafile/c.pqcrystals_fips202_ref_sha3_256.autotvin_IN_r.dat"
// wrapc file define: "inlen"
#define AUTOTB_TVIN_inlen  "../tv/cdatafile/c.pqcrystals_fips202_ref_sha3_256.autotvin_inlen.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "h"
#define AUTOTB_TVOUT_PC_h  "../tv/rtldatafile/rtl.pqcrystals_fips202_ref_sha3_256.autotvout_h.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			h_depth = 0;
			IN_r_depth = 0;
			inlen_depth = 0;
			trans_num =0;
		}

		~INTER_TCL_FILE() {
			mFile.open(mName);
			if (!mFile.good()) {
				cout << "Failed to open file ref.tcl" << endl;
				exit (1);
			}
			string total_list = get_depth_list();
			mFile << "set depth_list {\n";
			mFile << total_list;
			mFile << "}\n";
			mFile << "set trans_num "<<trans_num<<endl;
			mFile.close();
		}

		string get_depth_list () {
			stringstream total_list;
			total_list << "{h " << h_depth << "}\n";
			total_list << "{IN_r " << IN_r_depth << "}\n";
			total_list << "{inlen " << inlen_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int h_depth;
		int IN_r_depth;
		int inlen_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void pqcrystals_fips202_ref_sha3_256 (
uint8 h[32],
uint8 IN[4096],
long long inlen);

extern "C" void AESL_WRAP_pqcrystals_fips202_ref_sha3_256 (
uint8 h[32],
uint8 IN[4096],
long long inlen)
{
	refine_signal_handler();
	fstream wrapc_switch_file_token;
	wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
	int AESL_i;
	if (wrapc_switch_file_token.good())
	{
		CodeState = ENTER_WRAPC_PC;
		static unsigned AESL_transaction_pc = 0;
		string AESL_token;
		string AESL_num;
		static AESL_FILE_HANDLER aesl_fh;


		// output port post check: "h"
		aesl_fh.read(AUTOTB_TVOUT_PC_h, AESL_token); // [[transaction]]
		if (AESL_token != "[[transaction]]")
		{
			exit(1);
		}
		aesl_fh.read(AUTOTB_TVOUT_PC_h, AESL_num); // transaction number

		if (atoi(AESL_num.c_str()) == AESL_transaction_pc)
		{
			aesl_fh.read(AUTOTB_TVOUT_PC_h, AESL_token); // data

			sc_bv<8> *h_pc_buffer = new sc_bv<8>[32];
			int i = 0;

			while (AESL_token != "[[/transaction]]")
			{
				bool no_x = false;
				bool err = false;

				// search and replace 'X' with "0" from the 1st char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('X');
					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'h', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				no_x = false;

				// search and replace 'x' with "0" from the 3rd char of token
				while (!no_x)
				{
					size_t x_found = AESL_token.find('x', 2);

					if (x_found != string::npos)
					{
						if (!err)
						{
							cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port 'h', possible cause: There are uninitialized variables in the C design." << endl;
							err = true;
						}
						AESL_token.replace(x_found, 1, "0");
					}
					else
					{
						no_x = true;
					}
				}

				// push token into output port buffer
				if (AESL_token != "")
				{
					h_pc_buffer[i] = AESL_token.c_str();
					i++;
				}

				aesl_fh.read(AUTOTB_TVOUT_PC_h, AESL_token); // data or [[/transaction]]

				if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_h))
				{
					exit(1);
				}
			}

			// ***********************************
			if (i > 0)
			{
				// RTL Name: h
				{
					// bitslice(7, 0)
					// {
						// celement: h(7, 0)
						// {
							sc_lv<8>* h_lv0_0_31_1 = new sc_lv<8>[32];
						// }
					// }

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: h(7, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								if (&(h[0]) != NULL) // check the null address if the c port is array or others
								{
									h_lv0_0_31_1[hls_map_index].range(7, 0) = sc_bv<8>(h_pc_buffer[hls_map_index].range(7, 0));
									hls_map_index++;
								}
							}
						}
					}

					// bitslice(7, 0)
					{
						int hls_map_index = 0;
						// celement: h(7, 0)
						{
							// carray: (0) => (31) @ (1)
							for (int i_0 = 0; i_0 <= 31; i_0 += 1)
							{
								// sub                    : i_0
								// ori_name               : h[i_0]
								// sub_1st_elem           : 0
								// ori_name_1st_elem      : h[0]
								// output_left_conversion : h[i_0]
								// output_type_conversion : (h_lv0_0_31_1[hls_map_index]).to_uint64()
								if (&(h[0]) != NULL) // check the null address if the c port is array or others
								{
									h[i_0] = (h_lv0_0_31_1[hls_map_index]).to_uint64();
									hls_map_index++;
								}
							}
						}
					}
				}
			}

			// release memory allocation
			delete [] h_pc_buffer;
		}

		AESL_transaction_pc++;
	}
	else
	{
		CodeState = ENTER_WRAPC;
		static unsigned AESL_transaction;

		static AESL_FILE_HANDLER aesl_fh;

		// "h"
		char* tvin_h = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_h);
		char* tvout_h = new char[50];
		aesl_fh.touch(AUTOTB_TVOUT_h);

		// "IN_r"
		char* tvin_IN_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_IN_r);

		// "inlen"
		char* tvin_inlen = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_inlen);

		CodeState = DUMP_INPUTS;
		static INTER_TCL_FILE tcl_file(INTER_TCL);
		int leading_zero;

		// [[transaction]]
		sprintf(tvin_h, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_h, tvin_h);

		sc_bv<8>* h_tvin_wrapc_buffer = new sc_bv<8>[32];

		// RTL Name: h
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: h(7, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : h[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : h[0]
						// regulate_c_name       : h
						// input_type_conversion : h[i_0]
						if (&(h[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> h_tmp_mem;
							h_tmp_mem = h[i_0];
							h_tvin_wrapc_buffer[hls_map_index].range(7, 0) = h_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvin_h, "%s\n", (h_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_h, tvin_h);
		}

		tcl_file.set_num(32, &tcl_file.h_depth);
		sprintf(tvin_h, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_h, tvin_h);

		// release memory allocation
		delete [] h_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_IN_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_IN_r, tvin_IN_r);

		sc_bv<8>* IN_r_tvin_wrapc_buffer = new sc_bv<8>[4096];

		// RTL Name: IN_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: IN(7, 0)
				{
					// carray: (0) => (4095) @ (1)
					for (int i_0 = 0; i_0 <= 4095; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : IN[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : IN[0]
						// regulate_c_name       : IN
						// input_type_conversion : IN[i_0]
						if (&(IN[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> IN_tmp_mem;
							IN_tmp_mem = IN[i_0];
							IN_r_tvin_wrapc_buffer[hls_map_index].range(7, 0) = IN_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 4096; i++)
		{
			sprintf(tvin_IN_r, "%s\n", (IN_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_IN_r, tvin_IN_r);
		}

		tcl_file.set_num(4096, &tcl_file.IN_r_depth);
		sprintf(tvin_IN_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_IN_r, tvin_IN_r);

		// release memory allocation
		delete [] IN_r_tvin_wrapc_buffer;

		// [[transaction]]
		sprintf(tvin_inlen, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_inlen, tvin_inlen);

		sc_bv<64> inlen_tvin_wrapc_buffer;

		// RTL Name: inlen
		{
			// bitslice(63, 0)
			{
				// celement: inlen(63, 0)
				{
					// carray: (0) => (0) @ (0)
					{
						// sub                   : 
						// ori_name              : inlen
						// sub_1st_elem          : 
						// ori_name_1st_elem     : inlen
						// regulate_c_name       : inlen
						// input_type_conversion : inlen
						if (&(inlen) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<64> inlen_tmp_mem;
							inlen_tmp_mem = inlen;
							inlen_tvin_wrapc_buffer.range(63, 0) = inlen_tmp_mem.range(63, 0);
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 1; i++)
		{
			sprintf(tvin_inlen, "%s\n", (inlen_tvin_wrapc_buffer).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_inlen, tvin_inlen);
		}

		tcl_file.set_num(1, &tcl_file.inlen_depth);
		sprintf(tvin_inlen, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_inlen, tvin_inlen);

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		pqcrystals_fips202_ref_sha3_256(h, IN, inlen);

		CodeState = DUMP_OUTPUTS;

		// [[transaction]]
		sprintf(tvout_h, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVOUT_h, tvout_h);

		sc_bv<8>* h_tvout_wrapc_buffer = new sc_bv<8>[32];

		// RTL Name: h
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: h(7, 0)
				{
					// carray: (0) => (31) @ (1)
					for (int i_0 = 0; i_0 <= 31; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : h[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : h[0]
						// regulate_c_name       : h
						// input_type_conversion : h[i_0]
						if (&(h[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> h_tmp_mem;
							h_tmp_mem = h[i_0];
							h_tvout_wrapc_buffer[hls_map_index].range(7, 0) = h_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 32; i++)
		{
			sprintf(tvout_h, "%s\n", (h_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVOUT_h, tvout_h);
		}

		tcl_file.set_num(32, &tcl_file.h_depth);
		sprintf(tvout_h, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVOUT_h, tvout_h);

		// release memory allocation
		delete [] h_tvout_wrapc_buffer;

		CodeState = DELETE_CHAR_BUFFERS;
		// release memory allocation: "h"
		delete [] tvout_h;
		delete [] tvin_h;
		// release memory allocation: "IN_r"
		delete [] tvin_IN_r;
		// release memory allocation: "inlen"
		delete [] tvin_inlen;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint8
#undef uint8
