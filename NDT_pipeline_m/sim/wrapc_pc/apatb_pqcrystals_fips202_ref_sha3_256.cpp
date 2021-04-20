// ==============================================================
// File generated on Mon Apr 12 13:23:07 EDT 2021
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
// wrapc file define: "in_r"
#define AUTOTB_TVIN_in_r  "../tv/cdatafile/c.pqcrystals_fips202_ref_sha3_256.autotvin_in_r.dat"

#define INTER_TCL  "../tv/cdatafile/ref.tcl"

// tvout file define: "h"
#define AUTOTB_TVOUT_PC_h  "../tv/rtldatafile/rtl.pqcrystals_fips202_ref_sha3_256.autotvout_h.dat"

class INTER_TCL_FILE {
	public:
		INTER_TCL_FILE(const char* name) {
			mName = name;
			h_depth = 0;
			in_r_depth = 0;
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
			total_list << "{in_r " << in_r_depth << "}\n";
			return total_list.str();
		}

		void set_num (int num , int* class_num) {
			(*class_num) = (*class_num) > num ? (*class_num) : num;
		}
	public:
		int h_depth;
		int in_r_depth;
		int trans_num;

	private:
		ofstream mFile;
		const char* mName;
};

extern "C" void pqcrystals_fips202_ref_sha3_256 (
uint8 h[32],
uint8 in[3],
long long inlen);

extern "C" void AESL_WRAP_pqcrystals_fips202_ref_sha3_256 (
uint8 h[32],
uint8 in[3],
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

		// "in_r"
		char* tvin_in_r = new char[50];
		aesl_fh.touch(AUTOTB_TVIN_in_r);

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
		sprintf(tvin_in_r, "[[transaction]] %d\n", AESL_transaction);
		aesl_fh.write(AUTOTB_TVIN_in_r, tvin_in_r);

		sc_bv<8>* in_r_tvin_wrapc_buffer = new sc_bv<8>[3];

		// RTL Name: in_r
		{
			// bitslice(7, 0)
			{
				int hls_map_index = 0;
				// celement: in(7, 0)
				{
					// carray: (0) => (2) @ (1)
					for (int i_0 = 0; i_0 <= 2; i_0 += 1)
					{
						// sub                   : i_0
						// ori_name              : in[i_0]
						// sub_1st_elem          : 0
						// ori_name_1st_elem     : in[0]
						// regulate_c_name       : in
						// input_type_conversion : in[i_0]
						if (&(in[0]) != NULL) // check the null address if the c port is array or others
						{
							sc_lv<8> in_tmp_mem;
							in_tmp_mem = in[i_0];
							in_r_tvin_wrapc_buffer[hls_map_index].range(7, 0) = in_tmp_mem.range(7, 0);
                                 	       hls_map_index++;
						}
					}
				}
			}
		}

		// dump tv to file
		for (int i = 0; i < 3; i++)
		{
			sprintf(tvin_in_r, "%s\n", (in_r_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());
			aesl_fh.write(AUTOTB_TVIN_in_r, tvin_in_r);
		}

		tcl_file.set_num(3, &tcl_file.in_r_depth);
		sprintf(tvin_in_r, "[[/transaction]] \n");
		aesl_fh.write(AUTOTB_TVIN_in_r, tvin_in_r);

		// release memory allocation
		delete [] in_r_tvin_wrapc_buffer;

// [call_c_dut] ---------->

		CodeState = CALL_C_DUT;
		pqcrystals_fips202_ref_sha3_256(h, in, inlen);

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
		// release memory allocation: "in_r"
		delete [] tvin_in_r;

		AESL_transaction++;

		tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
	}
}


// apint = uint8
#undef uint8
