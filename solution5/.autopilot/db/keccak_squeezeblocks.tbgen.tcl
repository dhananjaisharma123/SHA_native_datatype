set moduleName keccak_squeezeblocks
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {keccak_squeezeblocks}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_r int 8 regular {array 136 { 0 0 } 0 1 }  }
	{ s_0_read int 64 regular  }
	{ s_1_read int 64 regular  }
	{ s_2_read int 64 regular  }
	{ s_3_read int 64 regular  }
	{ s_4_read int 64 regular  }
	{ s_5_read int 64 regular  }
	{ s_6_read int 64 regular  }
	{ s_7_read int 64 regular  }
	{ s_8_read int 64 regular  }
	{ s_9_read int 64 regular  }
	{ s_10_read int 64 regular  }
	{ s_11_read int 64 regular  }
	{ s_12_read int 64 regular  }
	{ s_13_read int 64 regular  }
	{ s_14_read int 64 regular  }
	{ s_15_read int 64 regular  }
	{ s_16_read int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_0_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_1_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_2_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_3_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_4_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_5_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_6_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_7_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_8_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_9_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_10_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_11_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_12_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_13_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_14_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_15_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "s_16_read", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_r_address0 sc_out sc_lv 8 signal 0 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ out_r_we0 sc_out sc_logic 1 signal 0 } 
	{ out_r_d0 sc_out sc_lv 8 signal 0 } 
	{ out_r_address1 sc_out sc_lv 8 signal 0 } 
	{ out_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ out_r_we1 sc_out sc_logic 1 signal 0 } 
	{ out_r_d1 sc_out sc_lv 8 signal 0 } 
	{ s_0_read sc_in sc_lv 64 signal 1 } 
	{ s_1_read sc_in sc_lv 64 signal 2 } 
	{ s_2_read sc_in sc_lv 64 signal 3 } 
	{ s_3_read sc_in sc_lv 64 signal 4 } 
	{ s_4_read sc_in sc_lv 64 signal 5 } 
	{ s_5_read sc_in sc_lv 64 signal 6 } 
	{ s_6_read sc_in sc_lv 64 signal 7 } 
	{ s_7_read sc_in sc_lv 64 signal 8 } 
	{ s_8_read sc_in sc_lv 64 signal 9 } 
	{ s_9_read sc_in sc_lv 64 signal 10 } 
	{ s_10_read sc_in sc_lv 64 signal 11 } 
	{ s_11_read sc_in sc_lv 64 signal 12 } 
	{ s_12_read sc_in sc_lv 64 signal 13 } 
	{ s_13_read sc_in sc_lv 64 signal 14 } 
	{ s_14_read sc_in sc_lv 64 signal 15 } 
	{ s_15_read sc_in sc_lv 64 signal 16 } 
	{ s_16_read sc_in sc_lv 64 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }} , 
 	{ "name": "out_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "address1" }} , 
 	{ "name": "out_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce1" }} , 
 	{ "name": "out_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we1" }} , 
 	{ "name": "out_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_r", "role": "d1" }} , 
 	{ "name": "s_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_0_read", "role": "default" }} , 
 	{ "name": "s_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_1_read", "role": "default" }} , 
 	{ "name": "s_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_2_read", "role": "default" }} , 
 	{ "name": "s_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_3_read", "role": "default" }} , 
 	{ "name": "s_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_4_read", "role": "default" }} , 
 	{ "name": "s_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_5_read", "role": "default" }} , 
 	{ "name": "s_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_6_read", "role": "default" }} , 
 	{ "name": "s_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_7_read", "role": "default" }} , 
 	{ "name": "s_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_8_read", "role": "default" }} , 
 	{ "name": "s_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_9_read", "role": "default" }} , 
 	{ "name": "s_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_10_read", "role": "default" }} , 
 	{ "name": "s_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_11_read", "role": "default" }} , 
 	{ "name": "s_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_12_read", "role": "default" }} , 
 	{ "name": "s_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_13_read", "role": "default" }} , 
 	{ "name": "s_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_14_read", "role": "default" }} , 
 	{ "name": "s_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_15_read", "role": "default" }} , 
 	{ "name": "s_16_read", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "s_16_read", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
					{"ID" : "2", "SubInstance" : "grp_store64_fu_224", "Port" : "x"}]},
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_KeccakF1600_StatePer_fu_186", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_store64_fu_224", "Parent" : "0",
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
			{"Name" : "u", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
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
		u {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "74", "Max" : "74"}
	, {"Name" : "Interval", "Min" : "68", "Max" : "68"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_r { ap_memory {  { out_r_address0 mem_address 1 8 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 8 }  { out_r_address1 MemPortADDR2 1 8 }  { out_r_ce1 MemPortCE2 1 1 }  { out_r_we1 MemPortWE2 1 1 }  { out_r_d1 MemPortDIN2 1 8 } } }
	s_0_read { ap_none {  { s_0_read in_data 0 64 } } }
	s_1_read { ap_none {  { s_1_read in_data 0 64 } } }
	s_2_read { ap_none {  { s_2_read in_data 0 64 } } }
	s_3_read { ap_none {  { s_3_read in_data 0 64 } } }
	s_4_read { ap_none {  { s_4_read in_data 0 64 } } }
	s_5_read { ap_none {  { s_5_read in_data 0 64 } } }
	s_6_read { ap_none {  { s_6_read in_data 0 64 } } }
	s_7_read { ap_none {  { s_7_read in_data 0 64 } } }
	s_8_read { ap_none {  { s_8_read in_data 0 64 } } }
	s_9_read { ap_none {  { s_9_read in_data 0 64 } } }
	s_10_read { ap_none {  { s_10_read in_data 0 64 } } }
	s_11_read { ap_none {  { s_11_read in_data 0 64 } } }
	s_12_read { ap_none {  { s_12_read in_data 0 64 } } }
	s_13_read { ap_none {  { s_13_read in_data 0 64 } } }
	s_14_read { ap_none {  { s_14_read in_data 0 64 } } }
	s_15_read { ap_none {  { s_15_read in_data 0 64 } } }
	s_16_read { ap_none {  { s_16_read in_data 0 64 } } }
}
