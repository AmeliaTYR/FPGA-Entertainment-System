
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
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
22default:defaultZ23-27h px? 
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
22default:defaultZ30-611h px? 
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
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0152default:default2
1166.4062default:default2
0.0002default:defaultZ17-268h px? 
[
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 11a083ad7
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.021 . Memory (MB): peak = 1166.406 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0122default:default2
1166.4062default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place20
button_D/DFF_1/btnD_flip_i_22default:default2
52default:default2?
?	G2_M4_processor/btnD_flip_reg {FDRE}
	advanced_mode/btnD_flip_reg {FDRE}
	G2_mode_selector/btnD_flip_reg {FDRE}
	menu_mode_select/btnD_flip_reg {FDRE}
	ms_paint/btnD_flip_reg {FDRE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place20
button_L/DFF_1/btnL_flip_i_22default:default2
112default:default2?
?	G2_M4_processor/btnL_flip_reg {FDRE}
	mode_1/btnL_flip_reg {FDRE}
	mode_2/btnL_flip_reg {FDRE}
	mode_3/btnL_flip_reg {FDRE}
	mode_5/btnL_flip_reg {FDRE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place20
button_R/DFF_1/btnR_flip_i_22default:default2
122default:default2?
?	G2_M4_processor/btnR_flip_reg {FDRE}
	mode_1/btnR_flip_reg {FDRE}
	mode_2/btnR_flip_reg {FDRE}
	mode_3/btnR_flip_reg {FDRE}
	mode_4/btnR_flip_reg {FDRE}
2default:defaultZ30-568h px? 
?
?A LUT '%s' is driving clock pin of %s registers. This could lead to large hold time violations. First few involved registers are:
%s524*place20
button_U/DFF_1/btnU_flip_i_22default:default2
62default:default2?
?	G2_M4_processor/btnU_flip_reg {FDRE}
	advanced_mode/btnU_flip_reg {FDRE}
	basic_over/bU_flip_reg {FDRE}
	G2_mode_selector/btnU_flip_reg {FDRE}
	menu_mode_select/btnU_flip_reg {FDRE}
2default:defaultZ30-568h px? 
h
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1f5bfb005
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 1170.730 ; gain = 4.3242default:defaulth px? 
}

Phase %s%s
101*constraints2
1.3 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101h px? 
P
;Phase 1.3 Build Placer Netlist Model | Checksum: 2cebbd6f6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:07 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
z

Phase %s%s
101*constraints2
1.4 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101h px? 
M
8Phase 1.4 Constrain Clocks/Macros | Checksum: 2cebbd6f6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:07 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
I
4Phase 1 Placer Initialization | Checksum: 2cebbd6f6
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:10 ; elapsed = 00:00:07 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
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
.Phase 2.1 Floorplanning | Checksum: 2f3c5715e
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:12 ; elapsed = 00:00:08 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
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
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0162default:default2
1239.1412default:default2
0.0002default:defaultZ17-268h px? 
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
~-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization       |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Very High Fanout   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total              |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
R
=Phase 2.2 Physical Synthesis In Placer | Checksum: 2e8a82887
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:39 ; elapsed = 00:00:22 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
D
/Phase 2 Global Placement | Checksum: 2393ed2d2
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:40 ; elapsed = 00:00:22 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
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
;Phase 3.1 Commit Multi Column Macros | Checksum: 2393ed2d2
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:40 ; elapsed = 00:00:22 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 


Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101h px? 
R
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 1fcd550be
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:43 ; elapsed = 00:00:24 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
y

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101h px? 
L
7Phase 3.3 Area Swap Optimization | Checksum: 21d901e42
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:43 ; elapsed = 00:00:25 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
?

Phase %s%s
101*constraints2
3.4 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.4 Pipeline Register Optimization | Checksum: 21d901e42
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:43 ; elapsed = 00:00:25 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
x

Phase %s%s
101*constraints2
3.5 2default:default2)
Timing Path Optimizer2default:defaultZ18-101h px? 
K
6Phase 3.5 Timing Path Optimizer | Checksum: 21d901e42
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:43 ; elapsed = 00:00:25 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
t

Phase %s%s
101*constraints2
3.6 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
G
2Phase 3.6 Fast Optimization | Checksum: 21e37b102
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:47 ; elapsed = 00:00:29 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 


Phase %s%s
101*constraints2
3.7 2default:default20
Small Shape Detail Placement2default:defaultZ18-101h px? 
R
=Phase 3.7 Small Shape Detail Placement | Checksum: 256582276
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:54 ; elapsed = 00:00:35 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
u

Phase %s%s
101*constraints2
3.8 2default:default2&
Re-assign LUT pins2default:defaultZ18-101h px? 
H
3Phase 3.8 Re-assign LUT pins | Checksum: 250f9d8ac
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:37 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
?

Phase %s%s
101*constraints2
3.9 2default:default22
Pipeline Register Optimization2default:defaultZ18-101h px? 
T
?Phase 3.9 Pipeline Register Optimization | Checksum: 250f9d8ac
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:37 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
u

Phase %s%s
101*constraints2
3.10 2default:default2%
Fast Optimization2default:defaultZ18-101h px? 
H
3Phase 3.10 Fast Optimization | Checksum: 256bb0c74
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:08 ; elapsed = 00:00:48 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
D
/Phase 3 Detail Placement | Checksum: 256bb0c74
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:08 ; elapsed = 00:00:48 . Memory (MB): peak = 1239.141 ; gain = 72.7342default:defaulth px? 
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
APost Placement Optimization Initialization | Checksum: 156ede280
*commonh px? 
u

Phase %s%s
101*constraints2
4.1.1.1 2default:default2"
BUFG Insertion2default:defaultZ18-101h px? 
?
?BUFG insertion identified %s candidate nets, %s success, %s skipped for placement/routing, %s skipped for timing, %s skipped for netlist change reason.30*	placeflow2
02default:default2
02default:default2
02default:default2
02default:default2
02default:defaultZ46-31h px? 
H
3Phase 4.1.1.1 BUFG Insertion | Checksum: 156ede280
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:12 ; elapsed = 00:00:51 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
?
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-3.6902default:defaultZ30-746h px? 
S
>Phase 4.1.1 Post Placement Optimization | Checksum: 1fe9cd72f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:32 ; elapsed = 00:01:12 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
N
9Phase 4.1 Post Commit Optimization | Checksum: 1fe9cd72f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:33 ; elapsed = 00:01:12 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
y

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101h px? 
L
7Phase 4.2 Post Placement Cleanup | Checksum: 1fe9cd72f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:33 ; elapsed = 00:01:13 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
s

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101h px? 
F
1Phase 4.3 Placer Reporting | Checksum: 1fe9cd72f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:33 ; elapsed = 00:01:13 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
z

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101h px? 
M
8Phase 4.4 Final Placement Cleanup | Checksum: 1948d5104
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:33 ; elapsed = 00:01:13 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
\
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1948d5104
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:33 ; elapsed = 00:01:13 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
=
(Ending Placer Task | Checksum: 9baebb0d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:33 ; elapsed = 00:01:13 . Memory (MB): peak = 1284.602 ; gain = 118.1952default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
472default:default2
42default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:01:342default:default2
00:01:142default:default2
1284.6022default:default2
118.1952default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
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
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:032default:default2
00:00:012default:default2
1287.2932default:default2
2.6912default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.runs/impl_1/Top_Student_placed.dcp2default:defaultZ17-1381h px? 
f
%s4*runtcl2J
6Executing : report_io -file Top_Student_io_placed.rpt
2default:defaulth px? 
?
kreport_io: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.042 . Memory (MB): peak = 1287.293 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2?
nExecuting : report_utilization -file Top_Student_utilization_placed.rpt -pb Top_Student_utilization_placed.pb
2default:defaulth px? 
?
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.105 . Memory (MB): peak = 1287.293 ; gain = 0.000
*commonh px? 
?
%s4*runtcl2g
SExecuting : report_control_sets -verbose -file Top_Student_control_sets_placed.rpt
2default:defaulth px? 
?
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.031 . Memory (MB): peak = 1287.293 ; gain = 0.000
*commonh px? 


End Record