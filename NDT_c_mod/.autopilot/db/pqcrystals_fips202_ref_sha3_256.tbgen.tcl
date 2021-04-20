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
	{ IN_r int 8 regular {array 4096 { 1 1 } 1 1 }  }
	{ inlen int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "h", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "h","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 31,"step" : 1}]}]}]} , 
 	{ "Name" : "IN_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "IN","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 4095,"step" : 1}]}]}]} , 
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
	{ IN_r_address0 sc_out sc_lv 12 signal 1 } 
	{ IN_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ IN_r_q0 sc_in sc_lv 8 signal 1 } 
	{ IN_r_address1 sc_out sc_lv 12 signal 1 } 
	{ IN_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ IN_r_q1 sc_in sc_lv 8 signal 1 } 
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
 	{ "name": "IN_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "IN_r", "role": "address0" }} , 
 	{ "name": "IN_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ce0" }} , 
 	{ "name": "IN_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN_r", "role": "q0" }} , 
 	{ "name": "IN_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "IN_r", "role": "address1" }} , 
 	{ "name": "IN_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "IN_r", "role": "ce1" }} , 
 	{ "name": "IN_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "IN_r", "role": "q1" }} , 
 	{ "name": "inlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "inlen", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "7"],
		"CDFG" : "pqcrystals_fips202_ref_sha3_256",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_keccak_absorb_fu_810"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_822"}],
		"Port" : [
			{"Name" : "h", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "IN_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_fu_810", "Port" : "m"}]},
			{"Name" : "inlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_keccak_absorb_fu_810", "Port" : "KeccakF_RoundConstan"},
					{"ID" : "7", "SubInstance" : "grp_KeccakF1600_StatePer_fu_822", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_assign_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_810", "Parent" : "0", "Child" : ["4", "5"],
		"CDFG" : "keccak_absorb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakF1600_StatePer_fu_693"}],
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakF1600_StatePer_fu_693", "Port" : "state"}]},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_KeccakF1600_StatePer_fu_693", "Port" : "KeccakF_RoundConstan"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_810.t_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_810.grp_KeccakF1600_StatePer_fu_693", "Parent" : "3", "Child" : ["6"],
		"CDFG" : "KeccakF1600_StatePer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_keccak_absorb_fu_810.grp_KeccakF1600_StatePer_fu_693.KeccakF_RoundConstan_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_822", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "KeccakF1600_StatePer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "KeccakF_RoundConstan", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_822.KeccakF_RoundConstan_U", "Parent" : "7"}]}


set ArgLastReadFirstWriteLatency {
	pqcrystals_fips202_ref_sha3_256 {
		h {Type O LastRead -1 FirstWrite 5}
		IN_r {Type I LastRead 18 FirstWrite -1}
		inlen {Type I LastRead 0 FirstWrite -1}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	keccak_absorb {
		s {Type IO LastRead 26 FirstWrite 1}
		m {Type I LastRead 18 FirstWrite -1}
		mlen {Type I LastRead 0 FirstWrite -1}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 15}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}
	KeccakF1600_StatePer {
		state {Type IO LastRead 13 FirstWrite 15}
		KeccakF_RoundConstan {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	h { ap_memory {  { h_address0 mem_address 1 5 }  { h_ce0 mem_ce 1 1 }  { h_we0 mem_we 1 1 }  { h_d0 mem_din 1 8 }  { h_address1 MemPortADDR2 1 5 }  { h_ce1 MemPortCE2 1 1 }  { h_we1 MemPortWE2 1 1 }  { h_d1 MemPortDIN2 1 8 } } }
	IN_r { ap_memory {  { IN_r_address0 mem_address 1 12 }  { IN_r_ce0 mem_ce 1 1 }  { IN_r_q0 mem_dout 0 8 }  { IN_r_address1 MemPortADDR2 1 12 }  { IN_r_ce1 MemPortCE2 1 1 }  { IN_r_q1 MemPortDOUT2 0 8 } } }
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
