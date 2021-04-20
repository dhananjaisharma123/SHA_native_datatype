set moduleName pqcrystals_fips202_ref_sha3_256
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {pqcrystals_fips202_ref_sha3_256}
set C_modelType { void 0 }
set C_modelArgList {
	{ h int 8 regular {array 32 { 0 0 } 0 1 }  }
	{ in_r int 8 regular {array 3 { 1 1 } 1 1 }  }
	{ inlen int 64 unused  }
}
set C_modelArgMapList {[ 
	{ "Name" : "h", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "h","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "in_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "inlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "inlen","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ h_address0 sc_out sc_lv 5 signal 0 } 
	{ h_ce0 sc_out sc_logic 1 signal 0 } 
	{ h_we0 sc_out sc_logic 1 signal 0 } 
	{ h_d0 sc_out sc_lv 8 signal 0 } 
	{ h_address1 sc_out sc_lv 5 signal 0 } 
	{ h_ce1 sc_out sc_logic 1 signal 0 } 
	{ h_we1 sc_out sc_logic 1 signal 0 } 
	{ h_d1 sc_out sc_lv 8 signal 0 } 
	{ in_r_address0 sc_out sc_lv 2 signal 1 } 
	{ in_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_r_q0 sc_in sc_lv 8 signal 1 } 
	{ in_r_address1 sc_out sc_lv 2 signal 1 } 
	{ in_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ in_r_q1 sc_in sc_lv 8 signal 1 } 
	{ inlen sc_in sc_lv 64 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "h_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h", "role": "address0" }} , 
 	{ "name": "h_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "ce0" }} , 
 	{ "name": "h_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "we0" }} , 
 	{ "name": "h_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "d0" }} , 
 	{ "name": "h_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "h", "role": "address1" }} , 
 	{ "name": "h_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "ce1" }} , 
 	{ "name": "h_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h", "role": "we1" }} , 
 	{ "name": "h_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h", "role": "d1" }} , 
 	{ "name": "in_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "address0" }} , 
 	{ "name": "in_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce0" }} , 
 	{ "name": "in_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q0" }} , 
 	{ "name": "in_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "in_r", "role": "address1" }} , 
 	{ "name": "in_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_r", "role": "ce1" }} , 
 	{ "name": "in_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_r", "role": "q1" }} , 
 	{ "name": "inlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inlen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5"],
		"CDFG" : "pqcrystals_fips202_ref_sha3_256",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "392", "EstimateLatencyMax" : "392",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_absorb_fu_686"}],
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_keccak_absorb_fu_686", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_keccak_absorb_fu_686", "Port" : "t_1"}]},
			{"Name" : "t_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_keccak_absorb_fu_686", "Port" : "t_2"}]},
			{"Name" : "t_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_keccak_absorb_fu_686", "Port" : "t_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.t_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_664", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "keccak_squeezeblocks",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "68",
		"VariableLatency" : "0", "ExactLatency" : "74", "EstimateLatencyMin" : "74", "EstimateLatencyMax" : "74",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_store64_fu_224", "Port" : "x"}]},
			{"Name" : "s_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_16_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_664.grp_KeccakF1600_StatePer_fu_186", "Parent" : "2",
		"CDFG" : "KeccakF1600_StatePer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "6", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_16_read", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_squeezeblocks_fu_664.grp_store64_fu_224", "Parent" : "2",
		"CDFG" : "store64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "u", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686", "Parent" : "0", "Child" : ["6", "7", "8", "9", "10"],
		"CDFG" : "keccak_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "299", "EstimateLatencyMax" : "299",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "t_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_load64_fu_612", "Port" : "x_1"}]},
			{"Name" : "t_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_load64_fu_612", "Port" : "x_2"}]},
			{"Name" : "t_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_load64_fu_612", "Port" : "x_3"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.t_1_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.t_2_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.t_3_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.t_0_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612", "Parent" : "5", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "load64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "4",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U1", "Parent" : "10"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U2", "Parent" : "10"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U3", "Parent" : "10"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U4", "Parent" : "10"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U5", "Parent" : "10"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U6", "Parent" : "10"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U7", "Parent" : "10"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_urem_8ns_7ns_8_12_1_U8", "Parent" : "10"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U9", "Parent" : "10"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U10", "Parent" : "10"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U11", "Parent" : "10"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U12", "Parent" : "10"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U13", "Parent" : "10"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U14", "Parent" : "10"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U15", "Parent" : "10"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_686.grp_load64_fu_612.pqcrystals_fips202_ref_sha3_256_mux_464_8_1_1_U16", "Parent" : "10"}]}


set ArgLastReadFirstWriteLatency {
	pqcrystals_fips202_ref_sha3_256 {
		h {Type O LastRead -1 FirstWrite 78}
		in_r {Type I LastRead 27 FirstWrite -1}
		inlen {Type I LastRead -1 FirstWrite -1}
		t_1 {Type I LastRead -1 FirstWrite -1}
		t_2 {Type I LastRead -1 FirstWrite -1}
		t_3 {Type I LastRead -1 FirstWrite -1}}
	keccak_squeezeblocks {
		out_r {Type O LastRead -1 FirstWrite 0}
		s_0_read {Type I LastRead 0 FirstWrite -1}
		s_1_read {Type I LastRead 0 FirstWrite -1}
		s_2_read {Type I LastRead 0 FirstWrite -1}
		s_3_read {Type I LastRead 0 FirstWrite -1}
		s_4_read {Type I LastRead 0 FirstWrite -1}
		s_5_read {Type I LastRead 0 FirstWrite -1}
		s_6_read {Type I LastRead 0 FirstWrite -1}
		s_7_read {Type I LastRead 0 FirstWrite -1}
		s_8_read {Type I LastRead 0 FirstWrite -1}
		s_9_read {Type I LastRead 0 FirstWrite -1}
		s_10_read {Type I LastRead 0 FirstWrite -1}
		s_11_read {Type I LastRead 0 FirstWrite -1}
		s_12_read {Type I LastRead 0 FirstWrite -1}
		s_13_read {Type I LastRead 0 FirstWrite -1}
		s_14_read {Type I LastRead 0 FirstWrite -1}
		s_15_read {Type I LastRead 0 FirstWrite -1}
		s_16_read {Type I LastRead 0 FirstWrite -1}}
	KeccakF1600_StatePer {
		state_0_read {Type I LastRead 0 FirstWrite -1}
		state_1_read {Type I LastRead 0 FirstWrite -1}
		state_2_read {Type I LastRead 0 FirstWrite -1}
		state_3_read {Type I LastRead 0 FirstWrite -1}
		state_4_read {Type I LastRead 0 FirstWrite -1}
		state_5_read {Type I LastRead 0 FirstWrite -1}
		state_6_read {Type I LastRead 0 FirstWrite -1}
		state_7_read {Type I LastRead 0 FirstWrite -1}
		state_8_read {Type I LastRead 0 FirstWrite -1}
		state_9_read {Type I LastRead 0 FirstWrite -1}
		state_10_read {Type I LastRead 0 FirstWrite -1}
		state_11_read {Type I LastRead 0 FirstWrite -1}
		state_12_read {Type I LastRead 0 FirstWrite -1}
		state_13_read {Type I LastRead 0 FirstWrite -1}
		state_14_read {Type I LastRead 0 FirstWrite -1}
		state_15_read {Type I LastRead 0 FirstWrite -1}
		state_16_read {Type I LastRead 0 FirstWrite -1}}
	store64 {
		x {Type O LastRead -1 FirstWrite 0}
		x_offset {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}}
	keccak_absorb {
		m {Type I LastRead 27 FirstWrite -1}
		t_1 {Type I LastRead -1 FirstWrite -1}
		t_2 {Type I LastRead -1 FirstWrite -1}
		t_3 {Type I LastRead -1 FirstWrite -1}}
	load64 {
		x_0 {Type I LastRead 15 FirstWrite -1}
		x_1 {Type I LastRead 15 FirstWrite -1}
		x_2 {Type I LastRead 15 FirstWrite -1}
		x_3 {Type I LastRead 15 FirstWrite -1}
		x_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "392", "Max" : "392"}
	, {"Name" : "Interval", "Min" : "393", "Max" : "393"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h { ap_memory {  { h_address0 mem_address 1 5 }  { h_ce0 mem_ce 1 1 }  { h_we0 mem_we 1 1 }  { h_d0 mem_din 1 8 }  { h_address1 MemPortADDR2 1 5 }  { h_ce1 MemPortCE2 1 1 }  { h_we1 MemPortWE2 1 1 }  { h_d1 MemPortDIN2 1 8 } } }
	in_r { ap_memory {  { in_r_address0 mem_address 1 2 }  { in_r_ce0 mem_ce 1 1 }  { in_r_q0 mem_dout 0 8 }  { in_r_address1 MemPortADDR2 1 2 }  { in_r_ce1 MemPortCE2 1 1 }  { in_r_q1 MemPortDOUT2 0 8 } } }
	inlen { ap_none {  { inlen in_data 0 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
