
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
00:00:002default:default2
00:00:00.012default:default2
2772.7732default:default2
0.0002default:default2
12902default:default2
5879682default:defaultZ17-722h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: f979406b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.02 ; elapsed = 00:00:00.06 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1290 ; free virtual = 5879682default:defaulth px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2772.7732default:default2
0.0002default:default2
12902default:default2
5879682default:defaultZ17-722h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 68ae3b4e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:03 ; elapsed = 00:00:02 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1291 ; free virtual = 5879692default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
O
:Phase 1.3 Build Placer Netlist Model | Checksum: d451bfff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1259 ; free virtual = 5879372default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
L
7Phase 1.4 Constrain Clocks/Macros | Checksum: d451bfff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1259 ; free virtual = 5879372default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: d451bfff
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:17 ; elapsed = 00:00:10 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1259 ; free virtual = 5879372default:defaulth px? 
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
B
-Phase 2.1 Floorplanning | Checksum: 8cdf1eec
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:01:17 ; elapsed = 00:00:36 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1183 ; free virtual = 5878612default:defaulth px? 
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
00:00:00.022default:default2
2772.7732default:default2
0.0002default:default2
11872default:default2
5878652default:defaultZ17-722h px? 
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
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 1da6310a5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:39 ; elapsed = 00:01:37 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1188 ; free virtual = 5878652default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 1e73e6271
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:44 ; elapsed = 00:01:39 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878772default:defaulth px? 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 1e73e6271
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:02:45 ; elapsed = 00:01:39 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878782default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 147970856
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:01 ; elapsed = 00:01:45 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1198 ; free virtual = 5878752default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 18f61d119
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:03 ; elapsed = 00:01:46 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878782default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 12304fb15
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:03 ; elapsed = 00:01:46 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878782default:defaulth px? 


Phase %s%s
101*constraints2
3.5 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
Q
<Phase 3.5 Small Shape Detail Placement | Checksum: f332ba4b
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:28 ; elapsed = 00:02:09 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1191 ; free virtual = 5878682default:defaulth px? 
u

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.6 Re-assign LUT pins | Checksum: 168dd0b0e
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:31 ; elapsed = 00:02:13 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1193 ; free virtual = 5878702default:defaulth px? 
?

Phase %s%s
101*constraints2
3.7 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.7 Pipeline Register Optimization | Checksum: 1fc99e912
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:31 ; elapsed = 00:02:13 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1192 ; free virtual = 5878702default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 1fc99e912
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:32 ; elapsed = 00:02:14 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1192 ; free virtual = 5878692default:defaulth px? 
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
APost Placement Optimization Initialization | Checksum: 18efdfbcd
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2l
Xbd_0_i/hls_inst/U0/grp_keccak_absorb_fu_804/grp_KeccakF1600_StatePer_fu_736/Asu1_reg_7602default:defaultZ46-33h px? 
?
PProcessed net %s, BUFG insertion was skipped due to placement/routing conflicts.32*	placeflow2S
?bd_0_i/hls_inst/U0/grp_KeccakF1600_StatePer_fu_816/Asu1_reg_7602default:defaultZ46-33h px? 
?
?BUFG insertion identified %s candidate nets, %s success, %s bufg driver replicated, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason40*	placeflow2
22default:default2
02default:default2
02default:default2
22default:default2
02default:default2
02default:defaultZ46-46h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 18efdfbcd
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:50 ; elapsed = 00:02:21 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878772default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
1.9562default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 12090a146
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:51 ; elapsed = 00:02:22 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878772default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 12090a146
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:51 ; elapsed = 00:02:22 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878782default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 12090a146
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:52 ; elapsed = 00:02:22 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1200 ; free virtual = 5878772default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 12090a146
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:52 ; elapsed = 00:02:23 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1199 ; free virtual = 5878772default:defaulth px? 
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
2772.7732default:default2
0.0002default:default2
11992default:default2
5878772default:defaultZ17-722h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 16ffcb24d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:53 ; elapsed = 00:02:23 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1199 ; free virtual = 5878772default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 16ffcb24d
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:53 ; elapsed = 00:02:23 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1199 ; free virtual = 5878772default:defaulth px? 
>
)Ending Placer Task | Checksum: 10694fda8
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:03:53 ; elapsed = 00:02:23 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1227 ; free virtual = 5879042default:defaulth px? 
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
00:03:582default:default2
00:02:282default:default2
2772.7732default:default2
0.0002default:default2
12282default:default2
5879062default:defaultZ17-722h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2772.7732default:default2
0.0002default:default2
12282default:default2
5879062default:defaultZ17-722h px? 
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
00:00:00.022default:default2
2772.7732default:default2
0.0002default:default2
12212default:default2
5879032default:defaultZ17-722h px? 
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
00:00:082default:default2
00:00:042default:default2
2772.7732default:default2
0.0002default:default2
12002default:default2
5879042default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2d
P/home/ds6365/SHA/Not_d_mod/impl/vhdl/project.runs/impl_1/bd_0_wrapper_placed.dcp2default:defaultZ17-1381h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2&
write_checkpoint: 2default:default2
00:00:122default:default2
00:00:092default:default2
2772.7732default:default2
0.0002default:default2
12242default:default2
5879072default:defaultZ17-722h px? 
g
%s4*runtcl2K
7Executing : report_io -file bd_0_wrapper_io_placed.rpt
2default:defaulth px? 
?
?report_io: Time (s): cpu = 00:00:00.12 ; elapsed = 00:00:00.28 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1216 ; free virtual = 587898
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
?report_control_sets: Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.35 . Memory (MB): peak = 2772.773 ; gain = 0.000 ; free physical = 1215 ; free virtual = 587898
*commonh px? 


End Record