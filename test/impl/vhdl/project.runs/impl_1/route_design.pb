
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7vx980t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7vx980t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
?
?Clock port "%s" does not have an associated HD.CLK_SRC. Without this constraint, timing analysis may not be accurate and upstream checks cannot be done to ensure correct clock placement.
88*route2
ap_clk2default:defaultZ35-197h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2
ap_rst2default:default2
ap_rst2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2!
ap_ctrl_start2default:default2!
ap_ctrl_start2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[2]2default:default2

in_r_q0[2]2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[1]2default:default2

in_r_q0[1]2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[3]2default:default2

in_r_q0[3]2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[0]2default:default2

in_r_q0[0]2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[6]2default:default2

in_r_q0[6]2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[5]2default:default2

in_r_q0[5]2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[7]2default:default2

in_r_q0[7]2default:defaultZ35-198h px? 
?
?Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

in_r_q0[4]2default:default2

in_r_q0[4]2default:defaultZ35-198h px? 
B
-Phase 1 Build RT Design | Checksum: e41aacf2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:28 ; elapsed = 00:03:03 . Memory (MB): peak = 3632.145 ; gain = 413.031 ; free physical = 84301 ; free virtual = 5839212default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: e41aacf2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:28 ; elapsed = 00:03:04 . Memory (MB): peak = 3632.145 ; gain = 413.031 ; free physical = 84299 ; free virtual = 5839202default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: e41aacf2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:28 ; elapsed = 00:03:04 . Memory (MB): peak = 3683.145 ; gain = 464.031 ; free physical = 84225 ; free virtual = 5838482default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: e41aacf2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:28 ; elapsed = 00:03:04 . Memory (MB): peak = 3683.145 ; gain = 464.031 ; free physical = 84225 ; free virtual = 5838482default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 1ed47c52d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:42 ; elapsed = 00:03:12 . Memory (MB): peak = 3741.027 ; gain = 521.914 ; free physical = 84209 ; free virtual = 5838342default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=3.841  | TNS=0.000  | WHS=-0.016 | THS=-0.034 |
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 25be8c959
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:04:49 ; elapsed = 00:03:15 . Memory (MB): peak = 3741.027 ; gain = 521.914 ; free physical = 84205 ; free virtual = 5838302default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 15b742ed1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:06:47 ; elapsed = 00:04:15 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84174 ; free virtual = 5838002default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.013  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1b10c45ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:41 ; elapsed = 00:05:16 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84170 ; free virtual = 5837952default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1b10c45ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:41 ; elapsed = 00:05:16 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84171 ; free virtual = 5837962default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1b10c45ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:41 ; elapsed = 00:05:16 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84171 ; free virtual = 5837962default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1b10c45ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:42 ; elapsed = 00:05:16 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84171 ; free virtual = 5837962default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1b10c45ff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:42 ; elapsed = 00:05:17 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84171 ; free virtual = 5837962default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 1e504f684
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:44 ; elapsed = 00:05:17 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84172 ; free virtual = 5837972default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=2.013  | TNS=0.000  | WHS=0.080  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1e504f684
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:44 ; elapsed = 00:05:18 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84172 ; free virtual = 5837972default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 1e504f684
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:08:44 ; elapsed = 00:05:18 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84172 ; free virtual = 5837972default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 213c0bbc2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:37 ; elapsed = 00:05:45 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84167 ; free virtual = 5837922default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 213c0bbc2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:37 ; elapsed = 00:05:45 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84167 ; free virtual = 5837922default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 1a338d010
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:39 ; elapsed = 00:05:47 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84167 ; free virtual = 5837922default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=2.013  | TNS=0.000  | WHS=0.080  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 10 Post Router Timing | Checksum: 1a338d010
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:39 ; elapsed = 00:05:48 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84170 ; free virtual = 5837962default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:09:39 ; elapsed = 00:05:48 . Memory (MB): peak = 3756.988 ; gain = 537.875 ; free physical = 84277 ; free virtual = 5839032default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
862default:default2
132default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:09:462default:default2
00:05:532default:default2
3756.9882default:default2
537.8752default:default2
842772default:default2
5839032default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3756.9882default:default2
0.0002default:default2
842772default:default2
5839022default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.032default:default2
00:00:002default:default2
3756.9882default:default2
0.0002default:default2
842702default:default2
5838992default:defaultZ17-722h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:042default:default2
00:00:022default:default2
3756.9882default:default2
0.0002default:default2
842552default:default2
5839002default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
K/home/ds6365/SHA/test/impl/vhdl/project.runs/impl_1/bd_0_wrapper_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
yExecuting : report_drc -file bd_0_wrapper_drc_routed.rpt -pb bd_0_wrapper_drc_routed.pb -rpx bd_0_wrapper_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
lreport_drc -file bd_0_wrapper_drc_routed.rpt -pb bd_0_wrapper_drc_routed.pb -rpx bd_0_wrapper_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
O/home/ds6365/SHA/test/impl/vhdl/project.runs/impl_1/bd_0_wrapper_drc_routed.rptO/home/ds6365/SHA/test/impl/vhdl/project.runs/impl_1/bd_0_wrapper_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
report_drc: 2default:default2
00:00:122default:default2
00:00:082default:default2
3845.0352default:default2
88.0432default:default2
842372default:default2
5838672default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file bd_0_wrapper_methodology_drc_routed.rpt -pb bd_0_wrapper_methodology_drc_routed.pb -rpx bd_0_wrapper_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file bd_0_wrapper_methodology_drc_routed.rpt -pb bd_0_wrapper_methodology_drc_routed.pb -rpx bd_0_wrapper_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
?The property HD.CLK_SRC of clock port %s is not set. In out-of-context mode, this prevents timing estimation for clock delay/skew167*timing2$
ap_clkap_clk2default:default8Z38-242h px? 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
[/home/ds6365/SHA/test/impl/vhdl/project.runs/impl_1/bd_0_wrapper_methodology_drc_routed.rpt[/home/ds6365/SHA/test/impl/vhdl/project.runs/impl_1/bd_0_wrapper_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2(
report_methodology: 2default:default2
00:00:162default:default2
00:00:082default:default2
3845.0352default:default2
0.0002default:default2
842072default:default2
5838382default:defaultZ17-722h px? 
?
%s4*runtcl2?
?Executing : report_power -file bd_0_wrapper_power_routed.rpt -pb bd_0_wrapper_power_summary_routed.pb -rpx bd_0_wrapper_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
|report_power -file bd_0_wrapper_power_routed.rpt -pb bd_0_wrapper_power_summary_routed.pb -rpx bd_0_wrapper_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
982default:default2
142default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
report_power: 2default:default2
00:00:182default:default2
00:00:112default:default2
3845.0352default:default2
0.0002default:default2
842052default:default2
5838402default:defaultZ17-722h px? 
?
%s4*runtcl2y
eExecuting : report_route_status -file bd_0_wrapper_route_status.rpt -pb bd_0_wrapper_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file bd_0_wrapper_timing_summary_routed.rpt -pb bd_0_wrapper_timing_summary_routed.pb -rpx bd_0_wrapper_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
s
UpdateTimingParams:%s.
91*timing2:
& Speed grade: -2L, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 
?
%s4*runtcl2i
UExecuting : report_incremental_reuse -file bd_0_wrapper_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2i
UExecuting : report_clock_utilization -file bd_0_wrapper_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file bd_0_wrapper_bus_skew_routed.rpt -pb bd_0_wrapper_bus_skew_routed.pb -rpx bd_0_wrapper_bus_skew_routed.rpx
2default:defaulth px? 
s
UpdateTimingParams:%s.
91*timing2:
& Speed grade: -2L, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px? 


End Record