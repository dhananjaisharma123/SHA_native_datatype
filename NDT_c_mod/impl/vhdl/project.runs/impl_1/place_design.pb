
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a75tl2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a75tl2default:defaultZ17-349h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
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
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
82default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.012default:default2
2716.3912default:default2
0.0002default:default2
120712default:default2
5881602default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 72a84826
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2716.391 ; gain = 0.000 ; free physical = 12071 ; free virtual = 5881602default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.022default:default2
2716.3912default:default2
0.0002default:default2
120712default:default2
5881612default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 22c34099
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:04 ; elapsed = 00:00:03 . Memory (MB): peak = 2716.391 ; gain = 0.000 ; free physical = 12066 ; free virtual = 5881612default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: 2ffcfcd2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:19 ; elapsed = 00:00:11 . Memory (MB): peak = 2740.398 ; gain = 24.008 ; free physical = 12011 ; free virtual = 5881222default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: 2ffcfcd2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:19 ; elapsed = 00:00:12 . Memory (MB): peak = 2740.398 ; gain = 24.008 ; free physical = 12011 ; free virtual = 5881212default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: 2ffcfcd2
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:19 ; elapsed = 00:00:12 . Memory (MB): peak = 2740.398 ; gain = 24.008 ; free physical = 12012 ; free virtual = 5881222default:defaulth px? 
q

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
2.1 2default:default2!
Floorplanning2default:defaultZ18-101h px? 
C
.Phase 2.1 Floorplanning | Checksum: 106a14eba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:22 ; elapsed = 00:00:39 . Memory (MB): peak = 2740.398 ; gain = 24.008 ; free physical = 11876 ; free virtual = 5880402default:defaulth px? 


Phase %s%s
101*constraints2
2.2 2default:default20
Physical Synthesis In Placer2default:defaultZ18-101h px? 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px? 
?
$Optimized %s %s. Created %s new %s.
216*physynth2
02default:default2
net2default:default2
02default:default2
instance2default:defaultZ32-232h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
0No setup violation found.  %s was not performed.344*physynth2-
DSP Register Optimization2default:defaultZ32-670h px? 
?
0No setup violation found.  %s was not performed.344*physynth2/
Shift Register Optimization2default:defaultZ32-670h px? 
?
0No setup violation found.  %s was not performed.344*physynth2.
BRAM Register Optimization2default:defaultZ32-670h px? 
R
.No candidate nets found for HD net replication521*physynthZ32-949h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2748.4022default:default2
0.0002default:default2
117572default:default2
5880292default:defaultZ17-722h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization                  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                  |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  Shift Register                |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  BRAM Register                 |            0  |              0  |                     0  |           0  |           0  |  00:00:00  |
|  HD Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                         |            0  |              0  |                     0  |           0  |           2  |  00:00:00  |
----------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
Q
<Phase 2.2 Physical Synthesis In Placer | Checksum: dea5d533
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:38 ; elapsed = 00:01:36 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11757 ; free virtual = 5880292default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 10f1e5a21
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:38 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11764 ; free virtual = 5880392default:defaulth px? 
q

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101h px? 
}

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101h px? 
P
;Phase 3.1 Commit Multi Column Macros | Checksum: 10f1e5a21
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:43 ; elapsed = 00:01:38 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11762 ; free virtual = 5880382default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
Q
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: ebed0aa9
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:59 ; elapsed = 00:01:44 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11742 ; free virtual = 5880302default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 10c15d886
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:00 ; elapsed = 00:01:44 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11740 ; free virtual = 5880302default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
S
>Phase 3.4 Pipeline Register Optimization | Checksum: d10475e1
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:00 ; elapsed = 00:01:44 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11740 ; free virtual = 5880302default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.5 Small Shape Detail Placement | Checksum: 1a64827ba
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:25 ; elapsed = 00:02:08 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11616 ; free virtual = 5879842default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 127abafd3
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:28 ; elapsed = 00:02:10 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11608 ; free virtual = 5879842default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 16e824cea
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:28 ; elapsed = 00:02:10 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11607 ; free virtual = 5879842default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 16e824cea
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:28 ; elapsed = 00:02:11 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11607 ; free virtual = 5879842default:defaulth px? 
?

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101h px? 
{

Phase %s%s
101*constraints2
4.1 2default:default2,
Post Commit Optimization2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?

Phase %s%s
101*constraints2
4.1.1 2default:default2/
Post Placement Optimization2default:defaultZ18-101h px? 
V
APost Placement Optimization Initialization | Checksum: 189ce3f65
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2l
Xbd_0_i/hls_inst/U0/grp_keccak_absorb_fu_810/grp_KeccakF1600_StatePer_fu_693/Asu1_reg_7602default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2S
?bd_0_i/hls_inst/U0/grp_KeccakF1600_StatePer_fu_822/Asu1_reg_7602default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets, %s success, %s bufg driver replicated, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason40*	placeflow2
22default:default2
02default:default2
02default:default2
22default:default2
02default:default2
02default:defaultZ46-46h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 189ce3f65
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:48 ; elapsed = 00:02:17 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11593 ; free virtual = 5879922default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
1.9432default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 170fb7141
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:49 ; elapsed = 00:02:18 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11593 ; free virtual = 5879932default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 170fb7141
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:49 ; elapsed = 00:02:18 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11594 ; free virtual = 5879932default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 170fb7141
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:50 ; elapsed = 00:02:18 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11594 ; free virtual = 5879942default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 170fb7141
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:50 ; elapsed = 00:02:19 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11594 ; free virtual = 5879942default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.062default:default2
00:00:00.072default:default2
2748.4022default:default2
0.0002default:default2
115932default:default2
5879932default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 16e5788c6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:50 ; elapsed = 00:02:19 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11591 ; free virtual = 5879942default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 16e5788c6
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:50 ; elapsed = 00:02:19 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11591 ; free virtual = 5879942default:defaulth px? 
>
)Ending Placer Task | Checksum: 1398c9d1f
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:51 ; elapsed = 00:02:19 . Memory (MB): peak = 2748.402 ; gain = 32.012 ; free physical = 11620 ; free virtual = 5880242default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
642default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
place_design: 2default:default2
00:03:562default:default2
00:02:242default:default2
2748.4022default:default2
32.0122default:default2
116202default:default2
5880242default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2748.4022default:default2
0.0002default:default2
116202default:default2
5880242default:defaultZ17-722h px? 
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
00:00:00.012default:default2
2748.4022default:default2
0.0002default:default2
116132default:default2
5880232default:defaultZ17-722h px? 
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
00:00:072default:default2
00:00:042default:default2
2748.4022default:default2
0.0002default:default2
115842default:default2
5880242default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2d
P/home/ds6365/SHA/NDT_c_mod/impl/vhdl/project.runs/impl_1/bd_0_wrapper_placed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:122default:default2
00:00:092default:default2
2748.4022default:default2
0.0002default:default2
115972default:default2
5880392default:defaultZ17-722h px? 
g
%s4*runtcl2K
7Executing : report_io -file bd_0_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.12 ; elapsed = 00:00:00.33 . Memory (MB): peak = 2748.402 ; gain = 0.000 ; free physical = 11587 ; free virtual = 588029
*commonh px? 
?
%s4*runtcl2?
pExecuting : report_utilization -file bd_0_wrapper_utilization_placed.rpt -pb bd_0_wrapper_utilization_placed.pb
2default:defaulth px? 
?
%s4*runtcl2h
TExecuting : report_control_sets -verbose -file bd_0_wrapper_control_sets_placed.rpt
2default:defaulth px? 
?
?report_control_sets: Time (s): cpu = 00:00:00.15 ; elapsed = 00:00:00.34 . Memory (MB): peak = 2748.402 ; gain = 0.000 ; free physical = 11589 ; free virtual = 588036
*commonh px? 


End Record