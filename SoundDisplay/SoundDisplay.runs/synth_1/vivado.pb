
x
Command: %s
53*	vivadotcl2G
3synth_design -top Top_Student -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 362.109 ; gain = 105.277
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
Top_Student2default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
182default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2(
clock_divider_module2default:default2
 2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/clock_divider_module.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
clock_divider_module2default:default2
 2default:default2
12default:default2
12default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/clock_divider_module.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
single_pulse_mod2default:default2
 2default:default2?
rC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/single_pulse_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
DFF_mod2default:default2
 2default:default2
iC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/DFF_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DFF_mod2default:default2
 2default:default2
22default:default2
12default:default2
iC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/DFF_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
single_pulse_mod2default:default2
 2default:default2
32default:default2
12default:default2?
rC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/single_pulse_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
Oled_Display2default:default2
 2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Oled_Display.v2default:default2
362default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter Width bound to: 96 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter Height bound to: 64 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter PixelCount bound to: 6144 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter PixelCountWidth bound to: 13 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter ClkFreq bound to: 6250000 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter FrameFreq bound to: 60 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter FrameDiv bound to: 104166 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter FrameDivWidth bound to: 17 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter PowerDelay bound to: 20 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter ResetDelay bound to: 3 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter VccEnDelay bound to: 20 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter StartupCompleteDelay bound to: 100 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter MaxDelay bound to: 100 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter MaxDelayCount bound to: 625000 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter StateCount bound to: 32 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter StateWidth bound to: 5 - type: integer 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter PowerUp bound to: 5'b00000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter Reset bound to: 5'b00001 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter ReleaseReset bound to: 5'b00011 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter EnableDriver bound to: 5'b00010 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter DisplayOff bound to: 5'b00110 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SetRemapDisplayFormat bound to: 5'b00111 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter SetStartLine bound to: 5'b00101 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter SetOffset bound to: 5'b00100 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter SetNormalDisplay bound to: 5'b01100 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SetMultiplexRatio bound to: 5'b01101 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter SetMasterConfiguration bound to: 5'b01111 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DisablePowerSave bound to: 5'b01110 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter SetPhaseAdjust bound to: 5'b01010 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter SetDisplayClock bound to: 5'b01011 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter SetSecondPrechargeA bound to: 5'b01001 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter SetSecondPrechargeB bound to: 5'b01000 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter SetSecondPrechargeC bound to: 5'b11000 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SetPrechargeLevel bound to: 5'b11001 
2default:defaulth p
x
? 
T
%s
*synth2<
(	Parameter SetVCOMH bound to: 5'b11011 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter SetMasterCurrent bound to: 5'b11010 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter SetContrastA bound to: 5'b11110 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter SetContrastB bound to: 5'b11111 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter SetContrastC bound to: 5'b11101 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DisableScrolling bound to: 5'b11100 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter ClearScreen bound to: 5'b10100 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter VccEn bound to: 5'b10101 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter DisplayOn bound to: 5'b10111 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter PrepareNextFrame bound to: 5'b10110 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter SetColAddress bound to: 5'b10010 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter SetRowAddress bound to: 5'b10011 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter WaitNextFrame bound to: 5'b10001 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter SendPixel bound to: 5'b10000 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter SpiCommandMaxWidth bound to: 40 - type: integer 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter SpiCommandBitCountWidth bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
default block is never used226*oasys2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Oled_Display.v2default:default2
1242default:default8@Z8-226h px? 
?
default block is never used226*oasys2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Oled_Display.v2default:default2
2012default:default8@Z8-226h px? 
?
,zero replication count - replication ignored693*oasys2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Oled_Display.v2default:default2
3492default:default8@Z8-693h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
Oled_Display2default:default2
 2default:default2
42default:default2
12default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Oled_Display.v2default:default2
362default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
Audio_Capture2default:default2
 2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Audio_Capture.v2default:default2
252default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
Audio_Capture2default:default2
 2default:default2
52default:default2
12default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Audio_Capture.v2default:default2
252default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
menu_mode_selector2default:default2
 2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
32default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnU_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2372default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2382default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2392default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
done_1_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2412default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
done_2_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2422default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
done_3_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2432default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
done_4_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2442default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
done_5_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2452default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
done_6_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2462default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
done_7_flag2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
2472default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
menu_mode_selector2default:default2
 2default:default2
62default:default2
12default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
menu_mode_12default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_1.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_1.v2default:default2
1202default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_1.v2default:default2
1212default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_1.v2default:default2
1222default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
menu_mode_12default:default2
 2default:default2
72default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_1.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
menu_mode_22default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_2.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_2.v2default:default2
1112default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_2.v2default:default2
1122default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_2.v2default:default2
1132default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
menu_mode_22default:default2
 2default:default2
82default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_2.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
menu_mode_32default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_3.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_3.v2default:default2
1122default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_3.v2default:default2
1132default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_3.v2default:default2
1142default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
menu_mode_32default:default2
 2default:default2
92default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_3.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
menu_mode_42default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_4.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_4.v2default:default2
1112default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_4.v2default:default2
1122default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_4.v2default:default2
1132default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
menu_mode_42default:default2
 2default:default2
102default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_4.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
menu_mode_52default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_5.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_5.v2default:default2
1092default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_5.v2default:default2
1102default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_5.v2default:default2
1112default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
menu_mode_52default:default2
 2default:default2
112default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_5.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
menu_mode_62default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_6.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_6.v2default:default2
1092default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_6.v2default:default2
1102default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_6.v2default:default2
1112default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
menu_mode_62default:default2
 2default:default2
122default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_6.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
menu_mode_72default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
1922default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
1932default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
1942default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
g1_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
1972default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
g2_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
1982default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
g3_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
1992default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
g4_flag2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
2002default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
menu_mode_72default:default2
 2default:default2
132default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_02default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_0.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_0.v2default:default2
1472default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_0.v2default:default2
1432default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_choice2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_0.v2default:default2
1432default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_0.v2default:default2
1432default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_02default:default2
 2default:default2
142default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_0.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_12default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_1.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_1.v2default:default2
662default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_1.v2default:default2
622default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_option2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_1.v2default:default2
622default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_1.v2default:default2
622default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_12default:default2
 2default:default2
152default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_1.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_22default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_2.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_2.v2default:default2
692default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_2.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_option2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_2.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_2.v2default:default2
652default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_22default:default2
 2default:default2
162default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_2.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_32default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_3.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_3.v2default:default2
712default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_3.v2default:default2
672default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_option2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_3.v2default:default2
672default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_3.v2default:default2
672default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_32default:default2
 2default:default2
172default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_3.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_42default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_4.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_4.v2default:default2
732default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_4.v2default:default2
692default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_option2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_4.v2default:default2
692default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_4.v2default:default2
692default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_42default:default2
 2default:default2
182default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_4.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_52default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_5.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_5.v2default:default2
782default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_5.v2default:default2
742default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_option2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_5.v2default:default2
742default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_5.v2default:default2
742default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_52default:default2
 2default:default2
192default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_5.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_62default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_6.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_6.v2default:default2
802default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_6.v2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_option2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_6.v2default:default2
762default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_6.v2default:default2
762default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_62default:default2
 2default:default2
202default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_6.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_menu_72default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_7.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_7.v2default:default2
662default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_7.v2default:default2
622default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_option2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_7.v2default:default2
622default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_letter2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_7.v2default:default2
622default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_menu_72default:default2
 2default:default2
212default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_menu_7.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
oled_menu_mux2default:default2
 2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/oled_menu_mux.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
oled_menu_mux2default:default2
 2default:default2
222default:default2
12default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/oled_menu_mux.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
peak_amp_mod2default:default2
 2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_amp_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
peak_amp_mod2default:default2
 2default:default2
232default:default2
12default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/peak_amp_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
mic_range_mod2default:default2
 2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/mic_range_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
mic_range_mod2default:default2
 2default:default2
242default:default2
12default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/mic_range_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
segment_disp_12default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_disp_1.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
segment_disp_12default:default2
 2default:default2
252default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_disp_1.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
segment_disp_22default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_disp_2.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
segment_disp_22default:default2
 2default:default2
262default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_disp_2.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
number_decoder2default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/number_decoder.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
number_decoder2default:default2
 2default:default2
272default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/number_decoder.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2$
segment_selector2default:default2
 2default:default2?
rC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_selector.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
segment_selector2default:default2
 2default:default2
282default:default2
12default:default2?
rC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_selector.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
segment_peakdisp_02default:default2
 2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_0.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
segment_peakdisp_02default:default2
 2default:default2
292default:default2
12default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_0.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
segment_peakdisp_12default:default2
 2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_1.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
segment_peakdisp_12default:default2
 2default:default2
302default:default2
12default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_1.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
segment_peakdisp_22default:default2
 2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_2.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
segment_peakdisp_22default:default2
 2default:default2
312default:default2
12default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_2.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
segment_peakdisp_32default:default2
 2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_3.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
segment_peakdisp_32default:default2
 2default:default2
322default:default2
12default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peakdisp_3.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
segment_peak2default:default2
 2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peak.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
segment_peak2default:default2
 2default:default2
332default:default2
12default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peak.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
coordinate_converter2default:default2
 2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/coordinate_converter.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
coordinate_converter2default:default2
 2default:default2
342default:default2
12default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/coordinate_converter.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
basic_game_over_mod2default:default2
 2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/basic_game_over_mod.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
basic_game_over_mod2default:default2
 2default:default2
352default:default2
12default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/basic_game_over_mod.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
basic_render2default:default2
 2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/basic_render.v2default:default2
42default:default8@Z8-6157h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2!
other_comp_on2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/basic_render.v2default:default2
592default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
basic_render2default:default2
 2default:default2
362default:default2
12default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/basic_render.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
advanced_mode_mod2default:default2
 2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v2default:default2
662default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v2default:default2
722default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnU_flag2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v2default:default2
872default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v2default:default2
1002default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnU_flag2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v2default:default2
1012default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
advanced_mode_mod2default:default2
 2default:default2
372default:default2
12default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_mode_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
player_tracker2default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/player_tracker.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

player_pos2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/player_tracker.v2default:default2
542default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/player_tracker.v2default:default2
552default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

player_pos2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/player_tracker.v2default:default2
612default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/player_tracker.v2default:default2
622default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
player_tracker2default:default2
 2default:default2
382default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/player_tracker.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

randomiser2default:default2
 2default:default2?
lC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/randomiser.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

randomiser2default:default2
 2default:default2
392default:default2
12default:default2?
lC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/randomiser.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
laser_pos_mod2default:default2
 2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/laser_pos_mod.v2default:default2
52default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
laser_pos_mod2default:default2
 2default:default2
402default:default2
12default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/laser_pos_mod.v2default:default2
52default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
y_tracker_mod2default:default2
 2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	dsc_laser2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
1982default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_ex2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
2122default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_ex2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
2292default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_ex2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
2462default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_ex2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
2632default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_EA12default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
2912default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_EA22default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
3052default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_EA32default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
3192default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
dsc_EB2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
3342default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2 
despawn_flag2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
3362default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

spawn_flag2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
4192default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
laser_count2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
4312default:default8@Z8-6090h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
laser_hit_reg2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
1302default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
y_tracker_mod2default:default2
 2default:default2
412default:default2
12default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/y_tracker_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
score_tracker_mod2default:default2
 2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/score_tracker_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
score2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/score_tracker_mod.v2default:default2
822default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
score_tracker_mod2default:default2
 2default:default2
422default:default2
12default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/score_tracker_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2
mode2default:default2
22default:default2%
score_tracker_mod2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
3452default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2'
segment_scoredisp_02default:default2
 2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_0.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
segment_scoredisp_02default:default2
 2default:default2
432default:default2
12default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_0.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
segment_scoredisp_12default:default2
 2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_1.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
segment_scoredisp_12default:default2
 2default:default2
442default:default2
12default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_1.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
segment_scoredisp_22default:default2
 2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_2.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
segment_scoredisp_22default:default2
 2default:default2
452default:default2
12default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_2.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
segment_scoredisp_32default:default2
 2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_3.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
segment_scoredisp_32default:default2
 2default:default2
462default:default2
12default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_scoredisp_3.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
advanced_display_mod2default:default2
 2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
32default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
6292default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
6352default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
6432default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
6532default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
6262default:default8@Z8-155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
mode2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
pos_EA12default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	y_var_EA12default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	x_var_EA12default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
pos_EA22default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	y_var_EA22default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	x_var_EA22default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
pos_EA32default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	y_var_EA32default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	x_var_EA32default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
pos_EB2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
y_var_EB2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
x_var_EB2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
explosion_y2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2#
y_var_explosion2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2#
x_var_explosion2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
x_var_player2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
laser_exist2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
laser_y2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
x_var_laser2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
y_var_laser2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2

stars_mode2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_stars2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1892default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
advanced_display_mod2default:default2
 2default:default2
472default:default2
12default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
32default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
32default:default2
rand2default:default2
12default:default2(
advanced_display_mod2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
3752default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2'
game2_mode_selector2default:default2
 2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
count22default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
3102default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
count22default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
3182default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
count22default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
3312default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
count22default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
3492default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
count22default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
3612default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
3792default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnU_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
4042default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnU_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
4272default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
4282default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
4292default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
4302default:default8@Z8-6090h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

count4_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
392default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
mic_max_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
422default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
mic_min_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
432default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
current_max_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
532default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
current_min_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
542default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
current_diff_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
552default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
sound_now_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1572default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
tick_store_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1712default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
tick_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1742default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
btnL_store_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1782default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
btnL_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1812default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
btnR_store_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1842default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
btnR_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1872default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
high_last_period_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2202default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
high_quiet_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2222default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
med_quiet_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2332default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2(
low_noise_period_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2382default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2'
low_last_period_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2422default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
low_quiet_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2442default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
quiet_period_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2492default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	quiet_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2502default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2)
quiet_last_period_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2542default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
quiet_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2562default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2#
since_quiet_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2632default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	count_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2752default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

count3_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2762default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

count5_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2772default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

count6_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
2792default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2%
previous_mode_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
4172default:default8@Z8-6014h px? 
?
merging register '%s' into '%s'3619*oasys2"
tick2_flag_reg2default:default2"
tick3_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1672default:default8@Z8-4471h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
tick2_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
1672default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
game2_mode_selector2default:default2
 2default:default2
482default:default2
12default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/game2_mode_selector.v2default:default2
42default:default8@Z8-6155h px? 
?
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42default:default2 
overall_mode2default:default2
62default:default2'
game2_mode_selector2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
4312default:default8@Z8-689h px? 
?
synthesizing module '%s'%s4497*oasys2
G2M1_render2default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
152default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1092default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1152default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1232default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1322default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1422default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1562default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1722default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
1902default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
2092default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
2292default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
2492default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
2692default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
2882default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
3072default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
3262default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
3432default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
3642default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
3842default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
4062default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
4302default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
4542default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
4802default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
5062default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
5332default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
5602default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
5872default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
6142default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
6392default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
6642default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
6862default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7062default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7132default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7202default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7272default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7342default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7502default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7602default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7692default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7772default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
7922default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8002default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8072default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8152default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8222default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8362default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8462default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8562default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8812default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
8912default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9002default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9082default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9232default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9312default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9382default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9462default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9532default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9672default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9772default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
9872default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10032default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10092default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10162default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10312default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10372default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10452default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10542default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10642default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10782default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
10942default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
11122default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
11312default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
11512default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
11712default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
11912default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
12102default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
12292default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
12482default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
12652default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
12852default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
13052default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
13272default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
13512default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
13752default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
14012default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
14272default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
14542default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
14812default:default8@Z8-155h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-1552default:default2
1002default:defaultZ17-14h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	tick_flip2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
642default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2

tick2_flip2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
642default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
pic2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
642default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
anim2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
642default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
exclaim2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
642default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
frame2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
642default:default8@Z8-567h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
tick_flip_reg2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
462default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	cloud_reg2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
502default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
tick2_flip_reg2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
552default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
G2M1_render2default:default2
 2default:default2
492default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M1_render.v2default:default2
152default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
G2_mode_4_processor2default:default2
 2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
alien_x2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
1472default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
alien_x2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
1522default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
cow_x2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
1582default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
cow_x2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
1642default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	abduction2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2432default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	abduction2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2532default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2

time_taken2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2572default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2792default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnU_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2832default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2842default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2852default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2862default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnC_flag2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
2872default:default8@Z8-6090h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
cow_v_x1_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
1812default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
cow_v_x2_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
1822default:default8@Z8-6014h px? 
?
merging register '%s' into '%s'3619*oasys2"
tick2_flag_reg2default:default2!
tick_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
922default:default8@Z8-4471h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2"
tick2_flag_reg2default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
922default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
G2_mode_4_processor2default:default2
 2default:default2
502default:default2
12default:default2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2_mode_4_processor.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
G2M4_render2default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
32default:default8@Z8-6157h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
	tick_flip2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
hit2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
end_game2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2!
cow_direction2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
cow_x2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
clouds2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
alien_x2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_ship_c2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_ship_a2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2 
color_ship_b2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
win2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
922default:default8@Z8-567h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
tick_flip_reg2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
422default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
G2M4_render2default:default2
 2default:default2
512default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/G2M4_render.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
display_mod_G22default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_mod_G2.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
display_mod_G22default:default2
 2default:default2
522default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_mod_G2.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
paint_processor2default:default2
 2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
42default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
cursor_x2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
1382default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
cursor_y2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
1392default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnU_flag2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
4492default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnL_flag2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
4502default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnD_flag2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
4512default:default8@Z8-6090h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	btnR_flag2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
4522default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
paint_processor2default:default2
 2default:default2
532default:default2
12default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_processor.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
paint_renderer2default:default2
 2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
32default:default8@Z8-6157h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_bg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_02default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_22default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_32default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_42default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_52default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
color_62default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2!
color_outline2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
cursor_x2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
cursor_y2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
brush2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
932default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
paint_renderer2default:default2
 2default:default2
542default:default2
12default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
display_mod2default:default2
 2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
display_mod2default:default2
 2default:default2
552default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
display_seven_seg2default:default2
 2default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_seven_seg.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
display_seven_seg2default:default2
 2default:default2
562default:default2
12default:default2?
sC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/display_seven_seg.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2#
led_display_mod2default:default2
 2default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/led_display_mod.v2default:default2
42default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
led_display_mod2default:default2
 2default:default2
572default:default2
12default:default2?
qC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/led_display_mod.v2default:default2
42default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2

mode_5_end2default:default2
Top_Student2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
3942default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Top_Student2default:default2
 2default:default2
582default:default2
12default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/Top_Student.v2default:default2
182default:default8@Z8-6155h px? 
?
!design %s has unconnected port %s3331*oasys2%
display_seven_seg2default:default2
end_cow2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
paint_processor2default:default2
	clk0p1sec2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2#
paint_processor2default:default2
clk1sec2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2 
time_out[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2 
time_out[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M1_render2default:default2
clk1sec2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
clk0p025sec2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2

mic_in[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2

mic_in[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
bL2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
bR2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2

mode_5_end2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2(
advanced_display_mod2default:default2
clk0p025sec2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2(
advanced_display_mod2default:default2
rand2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
menu_mode_72default:default2
bU2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
JC[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[12]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[10]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[9]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[8]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[7]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[6]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[5]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[4]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[3]2default:defaultZ8-3331h px? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
SW[2]2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 779.203 ; gain = 522.371
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 779.203 ; gain = 522.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 779.203 ; gain = 522.371
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/constrs_1/new/test1_constraints.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/constrs_1/new/test1_constraints.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
uC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/constrs_1/new/test1_constraints.xdc2default:default21
.Xil/Top_Student_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1169.8752default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4031*oasys2
22default:defaultZ8-5580h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:39 ; elapsed = 00:00:40 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2 
Oled_Display2default:defaultZ8-802h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
fsm_next_state02default:default2
12default:default2
52default:defaultZ8-5544h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2?
tC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_selector.v2default:default2
1752default:default8@Z8-5818h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
flag_count_reg2default:default2
menu_mode_12default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_12default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_12default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
option_12default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
flag_count_reg2default:default2
menu_mode_22default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
option_22default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
flag_count_reg2default:default2
menu_mode_32default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_32default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_32default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
option_32default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
flag_count_reg2default:default2
menu_mode_42default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_42default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_42default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
option_42default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
flag_count_reg2default:default2
menu_mode_52default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_52default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_52default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
option_52default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
flag_count_reg2default:default2
menu_mode_62default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_62default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_62default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
option_62default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2?
mC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/menu_mode_7.v2default:default2
1542default:default8@Z8-5818h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
flag_count_reg2default:default2
menu_mode_72default:defaultZ8-802h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
done_72default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_choice2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
current_max2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
seg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
an2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
seg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
an2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
an2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
laser_exist2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EA12default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EA22default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EA32default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EB2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
laser_exist2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EA12default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EA22default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EA32default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
sc_EB2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
EB_y2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
EA1_y2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
EA2_y2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
EA3_y2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_laser2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

color_ship2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_EA2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_EB2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2#
color_explosion2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_stars2default:default2
22default:default2
52default:defaultZ8-5544h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
count22default:defaultZ8-5546h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
flag_1_to_32default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
count22default:defaultZ8-5546h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
flag_1_to_32default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
count22default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
count22default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
	oled_data2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
|
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2 
color_ship_a2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_8_in2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_6_in2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_4_in2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_8_in2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_6_in2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_4_in2default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
brush2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
scheme2default:default2
12default:default2
52default:defaultZ8-5544h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_02default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_12default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_32default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_42default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_52default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_62default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
current_color2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_02default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_12default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_32default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_42default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_52default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_62default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2!
current_color2default:default2
42default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2

data_color2default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
led2default:defaultZ8-5587h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 PowerUp | 00000000100000000000000000000000 |                            00000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   Reset | 00000000000100000000000000000000 |                            00001
2default:defaulth p
x
? 
?
%s
*synth2s
_            ReleaseReset | 00000000000000000000100000000000 |                            00011
2default:defaulth p
x
? 
?
%s
*synth2s
_            EnableDriver | 00000000000000000001000000000000 |                            00010
2default:defaulth p
x
? 
?
%s
*synth2s
_              DisplayOff | 00000000000000000100000000000000 |                            00110
2default:defaulth p
x
? 
?
%s
*synth2s
_   SetRemapDisplayFormat | 00000100000000000000000000000000 |                            00111
2default:defaulth p
x
? 
?
%s
*synth2s
_            SetStartLine | 00001000000000000000000000000000 |                            00101
2default:defaulth p
x
? 
?
%s
*synth2s
_               SetOffset | 10000000000000000000000000000000 |                            00100
2default:defaulth p
x
? 
?
%s
*synth2s
_        SetNormalDisplay | 00000000000000000000000010000000 |                            01100
2default:defaulth p
x
? 
?
%s
*synth2s
_       SetMultiplexRatio | 00000000000000000000000000100000 |                            01101
2default:defaulth p
x
? 
?
%s
*synth2s
_  SetMasterConfiguration | 00000000000000000000000001000000 |                            01111
2default:defaulth p
x
? 
?
%s
*synth2s
_        DisablePowerSave | 00000000000000000000000000000100 |                            01110
2default:defaulth p
x
? 
?
%s
*synth2s
_          SetPhaseAdjust | 00000000000000000000000000001000 |                            01010
2default:defaulth p
x
? 
?
%s
*synth2s
_         SetDisplayClock | 00000000001000000000000000000000 |                            01011
2default:defaulth p
x
? 
?
%s
*synth2s
_     SetSecondPrechargeA | 00000000010000000000000000000000 |                            01001
2default:defaulth p
x
? 
?
%s
*synth2s
_     SetSecondPrechargeB | 01000000000000000000000000000000 |                            01000
2default:defaulth p
x
? 
?
%s
*synth2s
_     SetSecondPrechargeC | 00000010000000000000000000000000 |                            11000
2default:defaulth p
x
? 
?
%s
*synth2s
_       SetPrechargeLevel | 00000001000000000000000000000000 |                            11001
2default:defaulth p
x
? 
?
%s
*synth2s
_                SetVCOMH | 00000000000000010000000000000000 |                            11011
2default:defaulth p
x
? 
?
%s
*synth2s
_        SetMasterCurrent | 00000000000000100000000000000000 |                            11010
2default:defaulth p
x
? 
?
%s
*synth2s
_            SetContrastA | 00000000000001000000000000000000 |                            11110
2default:defaulth p
x
? 
?
%s
*synth2s
_            SetContrastB | 00100000000000000000000000000000 |                            11111
2default:defaulth p
x
? 
?
%s
*synth2s
_            SetContrastC | 00000000000000000000000000000001 |                            11101
2default:defaulth p
x
? 
?
%s
*synth2s
_        DisableScrolling | 00000000000000000000000000000010 |                            11100
2default:defaulth p
x
? 
?
%s
*synth2s
_             ClearScreen | 00000000000000000000000000010000 |                            10100
2default:defaulth p
x
? 
?
%s
*synth2s
_                   VccEn | 00010000000000000000000000000000 |                            10101
2default:defaulth p
x
? 
?
%s
*synth2s
_               DisplayOn | 00000000000010000000000000000000 |                            10111
2default:defaulth p
x
? 
?
%s
*synth2s
_        PrepareNextFrame | 00000000000000001000000000000000 |                            10110
2default:defaulth p
x
? 
?
%s
*synth2s
_           SetColAddress | 00000000000000000000010000000000 |                            10010
2default:defaulth p
x
? 
?
%s
*synth2s
_           SetRowAddress | 00000000000000000000000100000000 |                            10011
2default:defaulth p
x
? 
?
%s
*synth2s
_           WaitNextFrame | 00000000000000000000001000000000 |                            10001
2default:defaulth p
x
? 
?
%s
*synth2s
_               SendPixel | 00000000000000000010000000000000 |                            10000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2 
Oled_Display2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                              000
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
flag_count_reg2default:default2
one-hot2default:default2
menu_mode_12default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                              000
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
flag_count_reg2default:default2
one-hot2default:default2
menu_mode_22default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                              000
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
flag_count_reg2default:default2
one-hot2default:default2
menu_mode_32default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                              000
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
flag_count_reg2default:default2
one-hot2default:default2
menu_mode_42default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                              000
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
flag_count_reg2default:default2
one-hot2default:default2
menu_mode_52default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                              000
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
flag_count_reg2default:default2
one-hot2default:default2
menu_mode_62default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              001 |                             0000
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              100 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
flag_count_reg2default:default2
one-hot2default:default2
menu_mode_72default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2
mic_out_reg2default:default2?
oC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/mic_range_mod.v2default:default2
122default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2#
color_stars_reg2default:default2?
vC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/advanced_display_mod.v2default:default2
1072default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2%
current_color_reg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
992default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2"
data_color_reg2default:default2?
pC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/paint_renderer.v2default:default2
1102default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:43 ; elapsed = 00:01:46 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|      |RTL Partition        |Replication |Instances |
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|1     |paint_processor__GB0 |           1|     42262|
2default:defaulth p
x
? 
c
%s
*synth2K
7|2     |paint_processor__GB1 |           1|     16540|
2default:defaulth p
x
? 
c
%s
*synth2K
7|3     |paint_processor__GB2 |           1|     20843|
2default:defaulth p
x
? 
c
%s
*synth2K
7|4     |Top_Student__GCB0    |           1|     36390|
2default:defaulth p
x
? 
c
%s
*synth2K
7|5     |Top_Student__GCB1    |           1|     30059|
2default:defaulth p
x
? 
c
%s
*synth2K
7|6     |Top_Student__GCB2    |           1|     34821|
2default:defaulth p
x
? 
c
%s
*synth2K
7|7     |Top_Student__GCB3    |           1|     50656|
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     21 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     13 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 42    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 11    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               21 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 20    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 35    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 345   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 257   
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     40 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     21 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input     20 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1483  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 191   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 65    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 39    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 105   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     16 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 19    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input     16 Bit        Muxes := 30    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     15 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     15 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     14 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     14 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     13 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 24    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 21    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 82    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 100   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  20 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 6956  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 578   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 297   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 62    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  20 Input      2 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input      2 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  22 Input      2 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  23 Input      2 Bit        Muxes := 24    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  21 Input      2 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 565   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
@
%s
*synth2(
Module Top_Student 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     13 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
D
%s
*synth2,
Module paint_processor 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 340   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 16    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 24    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      9 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 6931  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 569   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 296   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
E
%s
*synth2-
Module segment_selector 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module oled_menu_mux 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_7 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 53    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_6 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 84    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_5 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 84    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_4 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 71    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_3 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 54    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 57    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 48    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
@
%s
*synth2(
Module menu_mode_6 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
@
%s
*synth2(
Module menu_mode_5 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
@
%s
*synth2(
Module menu_mode_4 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
@
%s
*synth2(
Module menu_mode_3 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
@
%s
*synth2(
Module menu_mode_2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
@
%s
*synth2(
Module menu_mode_1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
G
%s
*synth2/
Module menu_mode_selector 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 30    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module Audio_Capture 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module Oled_Display 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     40 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input     20 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  32 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__3 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__5 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__4 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__7 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__6 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__9 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__8 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module DFF_mod__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module DFF_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module menu_mode_7 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 23    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__3 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__4 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__5 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__6 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__7 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__8 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module peak_amp_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
E
%s
*synth2-
Module mic_range_mod__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module mic_range_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  17 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
L
%s
*synth24
 Module clock_divider_module__9 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
M
%s
*synth25
!Module clock_divider_module__10 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
M
%s
*synth25
!Module clock_divider_module__11 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
M
%s
*synth25
!Module clock_divider_module__12 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
I
%s
*synth21
Module clock_divider_module 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__3 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__4 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__5 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__6 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
D
%s
*synth2,
Module segment_peak__1 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
H
%s
*synth20
Module basic_game_over_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
A
%s
*synth2)
Module basic_render 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 15    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
F
%s
*synth2.
Module advanced_mode_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     21 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               21 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     21 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
C
%s
*synth2+
Module player_tracker 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 6     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
?
%s
*synth2'
Module randomiser 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
? 
B
%s
*synth2*
Module laser_pos_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module score_tracker_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     13 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               13 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 10    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__7 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__8 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module number_decoder__9 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module number_decoder__10 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
D
%s
*synth2,
Module segment_peak__2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
H
%s
*synth20
Module game2_mode_selector 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 79    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
H
%s
*synth20
Module G2_mode_4_processor 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 25    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 22    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
@
%s
*synth2(
Module G2M4_render 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     12 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 79    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input     16 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     15 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     15 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  20 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_mod_G2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module number_decoder__11 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module number_decoder__12 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
G
%s
*synth2/
Module number_decoder__13 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module number_decoder 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module segment_peak 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
@
%s
*synth2(
Module display_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
F
%s
*synth2.
Module display_seven_seg 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
I
%s
*synth21
Module advanced_display_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      9 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 123   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     15 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module y_tracker_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 9     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 28    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 72    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      4 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 47    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 414   
2default:defaulth p
x
? 
C
%s
*synth2+
Module display_menu_0 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 7     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 27    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 303   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 14    
2default:defaulth p
x
? 
D
%s
*synth2,
Module led_display_mod 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
C
%s
*synth2+
Module paint_renderer 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 7     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 82    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  11 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
@
%s
*synth2(
Module G2M1_render 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 426   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  12 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  14 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  15 Input     16 Bit        Muxes := 30    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  16 Input     16 Bit        Muxes := 18    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  13 Input     16 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     16 Bit        Muxes := 93    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     16 Bit        Muxes := 25    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     16 Bit        Muxes := 50    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     16 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     16 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     16 Bit        Muxes := 14    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     14 Bit        Muxes := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input     14 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  20 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      3 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input      2 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  20 Input      2 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  22 Input      2 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  23 Input      2 Bit        Muxes := 24    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  21 Input      2 Bit        Muxes := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 53    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 

!design %s has unconnected port %s3331*oasys2
Top_Student2default:default2
JC[2]2default:defaultZ8-3331h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_6_in2default:defaultZ8-5546h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\color_reg[3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2"
\brush_reg[2] 2default:defaultZ8-3333h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_8_in2default:defaultZ8-5546h px? 
v
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
p_4_in2default:defaultZ8-5546h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2#
\scheme_reg[2] 2default:defaultZ8-3333h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_letter2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2 
color_option2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
color_bg2default:default2
22default:default2
52default:defaultZ8-5544h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55442default:default2
1002default:defaultZ17-14h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2,
segment_select/pause_reg2default:default2?
rC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_selector.v2default:default2
162default:default8@Z8-6014h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_6/option_6_reg[3]2default:default2
FDRE2default:default2*
mode_6/option_6_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_6/option_6_reg[2]2default:default2
FDRE2default:default2*
mode_6/option_6_reg[1]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2,
\mode_6/option_6_reg[1] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_5/option_5_reg[3]2default:default2
FDRE2default:default2*
mode_5/option_5_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_5/option_5_reg[2]2default:default2
FDRE2default:default2*
mode_5/option_5_reg[1]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2,
\mode_5/option_5_reg[1] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_4/option_4_reg[3]2default:default2
FDRE2default:default2*
mode_4/option_4_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_4/option_4_reg[2]2default:default2
FDRE2default:default2*
mode_4/option_4_reg[1]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2,
\mode_4/option_4_reg[1] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_3/option_3_reg[3]2default:default2
FDRE2default:default2*
mode_3/option_3_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_3/option_3_reg[2]2default:default2
FDRE2default:default2*
mode_3/option_3_reg[1]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2,
\mode_3/option_3_reg[1] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_2/option_2_reg[3]2default:default2
FDRE2default:default2*
mode_2/option_2_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_2/option_2_reg[2]2default:default2
FDRE2default:default2*
mode_2/option_2_reg[1]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2,
\mode_2/option_2_reg[1] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_1/option_1_reg[3]2default:default2
FDRE2default:default2*
mode_1/option_1_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2*
mode_1/option_1_reg[2]2default:default2
FDRE2default:default2*
mode_1/option_1_reg[1]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2,
\mode_1/option_1_reg[1] 2default:defaultZ8-3333h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2&
p05sec_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
p5sec_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
p1sec_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
stars_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys21
explosion_despawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2-
laser_despawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2+
laser_spawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2'
despawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
spawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2'
clk_segment/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
clk_voice/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
clk_oled/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
clk_slow/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
fsm_next_state02default:defaultZ8-5546h px? 
{
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
current_max2default:defaultZ8-5546h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	pause_reg2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peak.v2default:default2
192default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	pause_reg2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peak.v2default:default2
192default:default8@Z8-6014h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	oled_data2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	oled_data2default:defaultZ8-5546h px? 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	oled_data2default:defaultZ8-5546h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	pause_reg2default:default2?
nC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.srcs/sources_1/new/segment_peak.v2default:default2
192default:default8@Z8-6014h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2&
p05sec_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
p5sec_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
p1sec_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
stars_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys21
explosion_despawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2-
laser_despawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2+
laser_spawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2'
despawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
spawn_clk/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2'
clk_segment/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2%
clk_voice/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
clk_oled/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2$
clk_slow/my_clk02default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
Top_Student__GCB12default:default2

laser_x[3]2default:default2
02default:defaultZ8-3917h px? 
?
!design %s has unconnected port %s3331*oasys2%
display_seven_seg2default:default2
end_cow2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2 
time_out[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2 
time_out[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M4_render2default:default2
time_out[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
clk0p025sec2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2

mic_in[11]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2

mic_in[10]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[9]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[8]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[7]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[6]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[5]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[4]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[3]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[2]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[1]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
	mic_in[0]2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
bL2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2
bR2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2'
game2_mode_selector2default:default2

mode_5_end2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
menu_mode_72default:default2
bU2default:defaultZ8-3331h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[4]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[4]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[7]2default:default2
FDE2default:default26
"G2M4_renderer/color_ship_b_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[7]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_c_reg[7]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_c_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_b_reg[12]2default:default2
FDE2default:default26
"G2M4_renderer/color_ship_b_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_a_reg[12]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_c_reg[12]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_c_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_b_reg[13]2default:default2
FDE2default:default26
"G2M4_renderer/color_ship_b_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_a_reg[13]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[0]2default:default2
FDE2default:default26
"G2M4_renderer/color_ship_b_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[0]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_c_reg[0]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_c_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[1]2default:default2
FDE2default:default26
"G2M4_renderer/color_ship_b_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[1]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[2]2default:default2
FDE2default:default26
"G2M4_renderer/color_ship_b_reg[11]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[2]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[3]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[3]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_b_reg[15]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_a_reg[15]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_c_reg[15]2default:default2
FDE2default:default26
"G2M4_renderer/color_ship_c_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_b_reg[14]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_a_reg[14]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_b_reg[10]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_a_reg[10]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_c_reg[10]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_c_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_b_reg[11]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_b_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys26
"G2M4_renderer/color_ship_a_reg[11]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[5]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_b_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[5]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[6]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_b_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_a_reg[6]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys25
!G2M4_renderer/color_ship_b_reg[9]2default:default2
FDE2default:default25
!G2M4_renderer/color_ship_a_reg[9]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default27
#G2M4_renderer/\color_ship_a_reg[9] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
G2_M4_processor/tick_flag_reg2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(G2_mode_selector/previous_overall_reg[4]2default:default2
FD2default:default2<
(G2_mode_selector/med_last_period_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(G2_mode_selector/previous_overall_reg[5]2default:default2
FD2default:default2<
(G2_mode_selector/med_last_period_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[8]2default:default2
FD2default:default2<
(G2_mode_selector/med_last_period_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2<
(G2_mode_selector/med_last_period_reg[10]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[9]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[7]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[5]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[6]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[4]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[3]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[2]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[0]2default:default2
FD2default:default2;
'G2_mode_selector/med_last_period_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2;
'G2_mode_selector/med_last_period_reg[1]2default:default2
FD2default:default23
G2_mode_selector/tick3_flag_reg2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default23
G2_mode_selector/tick3_flag_reg2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2(
mode_7/btnU_flag_reg2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
advanced_mode/mode_reg[2]2default:default2
FDRE2default:default2-
advanced_mode/mode_reg[3]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
advanced_mode/\mode_reg[3] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
mic_range/\mic_out_reg[5] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
peak_range/\mic_out_reg[5] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys21
G2_M4_processor/tick_flag_reg2default:default2
FD2default:default28
$G2_M4_processor/previous_mode_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$G2_M4_processor/previous_mode_reg[3]2default:default2
FD2default:default28
$G2_M4_processor/previous_mode_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$G2_M4_processor/previous_mode_reg[5]2default:default2
FD2default:default28
$G2_M4_processor/previous_mode_reg[4]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&G2_M4_processor/\previous_mode_reg[4] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2'
\led_freeze_reg[5] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2!
btnU_flag_reg2default:default2
menu_mode_72default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
mic_out_reg[5]2default:default2$
mic_range_mod__12default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
mic_out_reg[5]2default:default2!
mic_range_mod2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mode_reg[3]2default:default2%
advanced_mode_mod2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2"
tick3_flag_reg2default:default2'
game2_mode_selector2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mode_reg[5]2default:default2'
game2_mode_selector2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mode_reg[4]2default:default2'
game2_mode_selector2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
mode_reg[3]2default:default2'
game2_mode_selector2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
time_out_reg[11]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
time_out_reg[10]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[9]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[8]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[7]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[6]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[5]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[4]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[3]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[2]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[1]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2#
time_out_reg[0]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2(
previous_mode_reg[4]2default:default2'
G2_mode_4_processor2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
color_ship_a_reg[9]2default:default2
G2M4_render2default:defaultZ8-3332h px? 
?
!design %s has unconnected port %s3331*oasys2(
advanced_display_mod2default:default2
clk0p025sec2default:defaultZ8-3331h px? 
?
!design %s has unconnected port %s3331*oasys2(
advanced_display_mod2default:default2
rand2default:defaultZ8-3331h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[0]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[1]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[2]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[3]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[4]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[5]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[6]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[7]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[8]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$adv_mode_2_render/color_stars_reg[9]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%adv_mode_2_render/color_stars_reg[10]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%adv_mode_2_render/color_stars_reg[11]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%adv_mode_2_render/color_stars_reg[12]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%adv_mode_2_render/color_stars_reg[13]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%adv_mode_2_render/color_stars_reg[14]2default:default2
LD2default:default29
%adv_mode_2_render/color_stars_reg[15]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2;
'adv_mode_2_render/\color_stars_reg[15] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2'
color_stars_reg[15]2default:default2(
advanced_display_mod2default:defaultZ8-3332h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
^ROM "%s" won't be mapped to RAM because address size (%s) is larger than maximum supported(%s)3997*oasys2
	oled_data2default:default2
322default:default2
252default:defaultZ8-5545h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-55452default:default2
1002default:defaultZ17-14h px? 
?
!design %s has unconnected port %s3331*oasys2
G2M1_render2default:default2
clk1sec2default:defaultZ8-3331h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2 
frame_reg[1]2default:default2
G2M1_render2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:04:08 ; elapsed = 00:04:27 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|      |RTL Partition        |Replication |Instances |
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|1     |paint_processor__GB0 |           1|     14704|
2default:defaulth p
x
? 
c
%s
*synth2K
7|2     |paint_processor__GB1 |           1|      5669|
2default:defaulth p
x
? 
c
%s
*synth2K
7|3     |paint_processor__GB2 |           1|      7381|
2default:defaulth p
x
? 
c
%s
*synth2K
7|4     |Top_Student__GCB0    |           1|      5053|
2default:defaulth p
x
? 
c
%s
*synth2K
7|5     |Top_Student__GCB1    |           1|     12261|
2default:defaulth p
x
? 
c
%s
*synth2K
7|6     |Top_Student__GCB2    |           1|      6154|
2default:defaulth p
x
? 
c
%s
*synth2K
7|7     |Top_Student__GCB3    |           1|      3346|
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:04:16 ; elapsed = 00:04:35 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[0]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[1]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[2]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[3]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[5]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[6]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[7]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[8]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[8]2default:default2
FD2default:default2@
,i_33_0/nolabel_line208/oled_data_menu_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2@
,i_33_0/nolabel_line208/oled_data_menu_reg[9]2default:default2
FD2default:default2A
-i_33_0/nolabel_line208/oled_data_menu_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-i_33_0/nolabel_line208/oled_data_menu_reg[11]2default:default2
FD2default:default2A
-i_33_0/nolabel_line208/oled_data_menu_reg[12]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-i_33_0/nolabel_line208/oled_data_menu_reg[12]2default:default2
FD2default:default2A
-i_33_0/nolabel_line208/oled_data_menu_reg[13]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-i_33_0/nolabel_line208/oled_data_menu_reg[13]2default:default2
FD2default:default2A
-i_33_0/nolabel_line208/oled_data_menu_reg[14]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-i_33_0/nolabel_line208/oled_data_menu_reg[14]2default:default2
FD2default:default2A
-i_33_0/nolabel_line208/oled_data_menu_reg[15]2default:defaultZ8-3886h px? 
}
%s
*synth2e
Qinfo: optimization accepted worst group hill climbing move (-3354.0/oG. 576.0ps)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:04:57 ; elapsed = 00:05:17 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|      |RTL Partition        |Replication |Instances |
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|1     |paint_processor__GB1 |           1|      5577|
2default:defaulth p
x
? 
c
%s
*synth2K
7|2     |Top_Student__GCB0    |           1|      4723|
2default:defaulth p
x
? 
c
%s
*synth2K
7|3     |Top_Student__GCB2    |           1|      6016|
2default:defaulth p
x
? 
c
%s
*synth2K
7|4     |Top_Student__GCB3    |           1|      3213|
2default:defaulth p
x
? 
c
%s
*synth2K
7|5     |Top_Student_GT0      |           1|     33016|
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys20
i_33_0/n2/display_seg_reg[0]2default:default2
FD2default:default20
i_33_0/n2/display_seg_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#i_1/basic_over/previous_mode_reg[0]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#i_1/basic_over/previous_mode_reg[1]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#i_1/basic_over/previous_mode_reg[3]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys27
#i_1/basic_over/previous_mode_reg[2]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2:
&i_1/advanced_mode/previous_mode_reg[1]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2:
&i_1/advanced_mode/previous_mode_reg[0]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2:
&i_1/advanced_mode/previous_mode_reg[3]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2:
&i_1/advanced_mode/previous_mode_reg[2]2default:default2
FD2default:default2@
,i_1/G2_mode_selector/previous_overall_reg[2]2default:defaultZ8-3886h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:05:02 ; elapsed = 00:05:40 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|      |RTL Partition        |Replication |Instances |
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
c
%s
*synth2K
7|1     |paint_processor__GB1 |           1|      1910|
2default:defaulth p
x
? 
c
%s
*synth2K
7|2     |Top_Student__GCB0    |           1|      1983|
2default:defaulth p
x
? 
c
%s
*synth2K
7|3     |Top_Student__GCB2    |           1|      2775|
2default:defaulth p
x
? 
c
%s
*synth2K
7|4     |Top_Student__GCB3    |           1|      1181|
2default:defaulth p
x
? 
c
%s
*synth2K
7|5     |Top_Student_GT0      |           1|     12147|
2default:defaulth p
x
? 
c
%s
*synth2K
7+------+---------------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:05:06 ; elapsed = 00:05:44 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:05:06 ; elapsed = 00:05:44 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:05:07 ; elapsed = 00:05:46 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:05:08 ; elapsed = 00:05:46 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:05:09 ; elapsed = 00:05:47 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:05:09 ; elapsed = 00:05:47 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     5|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |   607|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |   347|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |  1503|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |  2258|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |  1740|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |  2756|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |  8113|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   320|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |    22|
2default:defaulth px? 
D
%s*synth2,
|11    |FDRE   |  2446|
2default:defaulth px? 
D
%s*synth2,
|12    |FDRE_1 |    31|
2default:defaulth px? 
D
%s*synth2,
|13    |FDSE   |    19|
2default:defaulth px? 
D
%s*synth2,
|14    |FDSE_1 |     1|
2default:defaulth px? 
D
%s*synth2,
|15    |LD     |    42|
2default:defaulth px? 
D
%s*synth2,
|16    |IBUF   |    12|
2default:defaulth px? 
D
%s*synth2,
|17    |OBUF   |    37|
2default:defaulth px? 
D
%s*synth2,
|18    |OBUFT  |     1|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
n
%s
*synth2V
B+------+------------------------+------------------------+------+
2default:defaulth p
x
? 
n
%s
*synth2V
B|      |Instance                |Module                  |Cells |
2default:defaulth p
x
? 
n
%s
*synth2V
B+------+------------------------+------------------------+------+
2default:defaulth p
x
? 
n
%s
*synth2V
B|1     |top                     |                        | 20260|
2default:defaulth p
x
? 
n
%s
*synth2V
B|2     |  adv_mode_2_render     |advanced_display_mod    |    11|
2default:defaulth p
x
? 
n
%s
*synth2V
B|3     |  G2M4_renderer         |G2M4_render             |    77|
2default:defaulth p
x
? 
n
%s
*synth2V
B|4     |  G2_M4_processor       |G2_mode_4_processor     |   903|
2default:defaulth p
x
? 
n
%s
*synth2V
B|5     |  G2_decoder0           |number_decoder          |    11|
2default:defaulth p
x
? 
n
%s
*synth2V
B|6     |  G2_decoder1           |number_decoder_0        |     7|
2default:defaulth p
x
? 
n
%s
*synth2V
B|7     |  G2_decoder2           |number_decoder_1        |    18|
2default:defaulth p
x
? 
n
%s
*synth2V
B|8     |  G2_decoder3           |number_decoder_2        |    10|
2default:defaulth p
x
? 
n
%s
*synth2V
B|9     |  G2_display0           |segment_scoredisp_0     |    15|
2default:defaulth p
x
? 
n
%s
*synth2V
B|10    |  G2_display3           |segment_scoredisp_3     |    15|
2default:defaulth p
x
? 
n
%s
*synth2V
B|11    |  G2_display_mux        |display_mod_G2          |   116|
2default:defaulth p
x
? 
n
%s
*synth2V
B|12    |  G2_mode_selector      |game2_mode_selector     |   319|
2default:defaulth p
x
? 
n
%s
*synth2V
B|13    |  G2_normal_render      |G2M1_render             |    44|
2default:defaulth p
x
? 
n
%s
*synth2V
B|14    |  advanced_mode         |advanced_mode_mod       |   149|
2default:defaulth p
x
? 
n
%s
*synth2V
B|15    |  audioC                |Audio_Capture           |   117|
2default:defaulth p
x
? 
n
%s
*synth2V
B|16    |  basic_over            |basic_game_over_mod     |     6|
2default:defaulth p
x
? 
n
%s
*synth2V
B|17    |  button_D              |single_pulse_mod        |     3|
2default:defaulth p
x
? 
n
%s
*synth2V
B|18    |    DFF_1               |DFF_mod_40              |     2|
2default:defaulth p
x
? 
n
%s
*synth2V
B|19    |    DFF_2               |DFF_mod_41              |     1|
2default:defaulth p
x
? 
n
%s
*synth2V
B|20    |  button_L              |single_pulse_mod_3      |     3|
2default:defaulth p
x
? 
n
%s
*synth2V
B|21    |    DFF_1               |DFF_mod_38              |     2|
2default:defaulth p
x
? 
n
%s
*synth2V
B|22    |    DFF_2               |DFF_mod_39              |     1|
2default:defaulth p
x
? 
n
%s
*synth2V
B|23    |  button_R              |single_pulse_mod_4      |     3|
2default:defaulth p
x
? 
n
%s
*synth2V
B|24    |    DFF_1               |DFF_mod_36              |     2|
2default:defaulth p
x
? 
n
%s
*synth2V
B|25    |    DFF_2               |DFF_mod_37              |     1|
2default:defaulth p
x
? 
n
%s
*synth2V
B|26    |  button_U              |single_pulse_mod_5      |     3|
2default:defaulth p
x
? 
n
%s
*synth2V
B|27    |    DFF_1               |DFF_mod_34              |     2|
2default:defaulth p
x
? 
n
%s
*synth2V
B|28    |    DFF_2               |DFF_mod_35              |     1|
2default:defaulth p
x
? 
n
%s
*synth2V
B|29    |  clk_oled              |clock_divider_module    |    51|
2default:defaulth p
x
? 
n
%s
*synth2V
B|30    |  clk_segment           |clock_divider_module_6  |    53|
2default:defaulth p
x
? 
n
%s
*synth2V
B|31    |  clk_slow              |clock_divider_module_7  |    54|
2default:defaulth p
x
? 
n
%s
*synth2V
B|32    |  clk_voice             |clock_divider_module_8  |    52|
2default:defaulth p
x
? 
n
%s
*synth2V
B|33    |  despawn_clk           |clock_divider_module_9  |    55|
2default:defaulth p
x
? 
n
%s
*synth2V
B|34    |  explosion_despawn_clk |clock_divider_module_10 |    55|
2default:defaulth p
x
? 
n
%s
*synth2V
B|35    |  game_processor        |y_tracker_mod           |   683|
2default:defaulth p
x
? 
n
%s
*synth2V
B|36    |  laser_despawn_clk     |clock_divider_module_11 |    55|
2default:defaulth p
x
? 
n
%s
*synth2V
B|37    |  laser_power           |laser_pos_mod           |    21|
2default:defaulth p
x
? 
n
%s
*synth2V
B|38    |  laser_spawn_clk       |clock_divider_module_12 |    55|
2default:defaulth p
x
? 
n
%s
*synth2V
B|39    |  menu_mode_select      |menu_mode_selector      |    99|
2default:defaulth p
x
? 
n
%s
*synth2V
B|40    |  mic_range             |mic_range_mod           |    38|
2default:defaulth p
x
? 
n
%s
*synth2V
B|41    |  mode_1                |menu_mode_1             |    27|
2default:defaulth p
x
? 
n
%s
*synth2V
B|42    |  mode_2                |menu_mode_2             |    27|
2default:defaulth p
x
? 
n
%s
*synth2V
B|43    |  mode_3                |menu_mode_3             |    27|
2default:defaulth p
x
? 
n
%s
*synth2V
B|44    |  mode_4                |menu_mode_4             |    29|
2default:defaulth p
x
? 
n
%s
*synth2V
B|45    |  mode_5                |menu_mode_5             |    28|
2default:defaulth p
x
? 
n
%s
*synth2V
B|46    |  mode_6                |menu_mode_6             |    26|
2default:defaulth p
x
? 
n
%s
*synth2V
B|47    |  mode_7                |menu_mode_7             |   145|
2default:defaulth p
x
? 
n
%s
*synth2V
B|48    |  ms_paint              |paint_processor         |  9494|
2default:defaulth p
x
? 
n
%s
*synth2V
B|49    |  n1                    |number_decoder_13       |     7|
2default:defaulth p
x
? 
n
%s
*synth2V
B|50    |  n2                    |number_decoder_14       |     6|
2default:defaulth p
x
? 
n
%s
*synth2V
B|51    |  nolabel_line208       |oled_menu_mux           |    37|
2default:defaulth p
x
? 
n
%s
*synth2V
B|52    |  oled_display_mux      |display_mod             |   104|
2default:defaulth p
x
? 
n
%s
*synth2V
B|53    |  p1sec_clk             |clock_divider_module_15 |    55|
2default:defaulth p
x
? 
n
%s
*synth2V
B|54    |  p5sec_clk             |clock_divider_module_16 |    55|
2default:defaulth p
x
? 
n
%s
*synth2V
B|55    |  p_tracker             |player_tracker          |    60|
2default:defaulth p
x
? 
n
%s
*synth2V
B|56    |  paint_render          |paint_renderer          |    46|
2default:defaulth p
x
? 
n
%s
*synth2V
B|57    |  peak_amp              |peak_amp_mod            |   234|
2default:defaulth p
x
? 
n
%s
*synth2V
B|58    |  peak_range            |mic_range_mod_17        |     7|
2default:defaulth p
x
? 
n
%s
*synth2V
B|59    |  peakdisplay0          |segment_peakdisp_0      |    13|
2default:defaulth p
x
? 
n
%s
*synth2V
B|60    |  peakdisplay3          |segment_peakdisp_3      |    19|
2default:defaulth p
x
? 
n
%s
*synth2V
B|61    |  peakn0                |number_decoder_18       |     7|
2default:defaulth p
x
? 
n
%s
*synth2V
B|62    |  peakn1                |number_decoder_19       |     7|
2default:defaulth p
x
? 
n
%s
*synth2V
B|63    |  peakn2                |number_decoder_20       |    11|
2default:defaulth p
x
? 
n
%s
*synth2V
B|64    |  peakn3                |number_decoder_21       |    10|
2default:defaulth p
x
? 
n
%s
*synth2V
B|65    |  random                |randomiser              |    57|
2default:defaulth p
x
? 
n
%s
*synth2V
B|66    |  reset_pulse           |single_pulse_mod_22     |     5|
2default:defaulth p
x
? 
n
%s
*synth2V
B|67    |    DFF_1               |DFF_mod                 |     3|
2default:defaulth p
x
? 
n
%s
*synth2V
B|68    |    DFF_2               |DFF_mod_33              |     2|
2default:defaulth p
x
? 
n
%s
*synth2V
B|69    |  score_decoder0        |number_decoder_23       |    11|
2default:defaulth p
x
? 
n
%s
*synth2V
B|70    |  score_decoder1        |number_decoder_24       |     7|
2default:defaulth p
x
? 
n
%s
*synth2V
B|71    |  score_decoder2        |number_decoder_25       |    27|
2default:defaulth p
x
? 
n
%s
*synth2V
B|72    |  score_decoder3        |number_decoder_26       |    11|
2default:defaulth p
x
? 
n
%s
*synth2V
B|73    |  score_display0        |segment_scoredisp_0_27  |     4|
2default:defaulth p
x
? 
n
%s
*synth2V
B|74    |  score_display3        |segment_scoredisp_3_28  |    17|
2default:defaulth p
x
? 
n
%s
*synth2V
B|75    |  score_track           |score_tracker_mod       |   226|
2default:defaulth p
x
? 
n
%s
*synth2V
B|76    |  segment_G2_mod        |segment_peak            |    26|
2default:defaulth p
x
? 
n
%s
*synth2V
B|77    |  segment_peak_mod      |segment_peak_29         |    26|
2default:defaulth p
x
? 
n
%s
*synth2V
B|78    |  segment_score_mod     |segment_peak_30         |    26|
2default:defaulth p
x
? 
n
%s
*synth2V
B|79    |  segment_select        |segment_selector        |    28|
2default:defaulth p
x
? 
n
%s
*synth2V
B|80    |  sev_seg_disp          |display_seven_seg       |    11|
2default:defaulth p
x
? 
n
%s
*synth2V
B|81    |  spawn_clk             |clock_divider_module_31 |    55|
2default:defaulth p
x
? 
n
%s
*synth2V
B|82    |  stars_clk             |clock_divider_module_32 |    54|
2default:defaulth p
x
? 
n
%s
*synth2V
B|83    |  unit_oled             |Oled_Display            |  5653|
2default:defaulth p
x
? 
n
%s
*synth2V
B+------+------------------------+------------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:05:09 ; elapsed = 00:05:47 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 67 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:04:34 ; elapsed = 00:05:32 . Memory (MB): peak = 1171.184 ; gain = 522.371
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:05:09 ; elapsed = 00:05:48 . Memory (MB): peak = 1171.184 ; gain = 914.352
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
10352default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 74 instances were transformed.
  FDRE_1 => FDRE (inverted pins: C): 31 instances
  FDSE_1 => FDSE (inverted pins: C): 1 instances
  LD => LDCE: 42 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
5982default:default2
3222default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:05:142default:default2
00:05:532default:default2
1171.1842default:default2
927.3632default:defaultZ17-268h px? 
K
"No constraint will be written out.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2}
iC:/Users/EE2026/Documents/EE2026_vivado/final_proj/SoundDisplay/SoundDisplay.runs/synth_1/Top_Student.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
lExecuting : report_utilization -file Top_Student_utilization_synth.rpt -pb Top_Student_utilization_synth.pb
2default:defaulth px? 
?
treport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.093 . Memory (MB): peak = 1171.184 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Apr  4 23:43:10 20202default:defaultZ17-206h px? 


End Record