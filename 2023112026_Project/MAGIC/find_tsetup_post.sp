Trying

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={5*20*LAMBDA}
.param width_P={2.5*20*LAMBDA}
.global gnd vdd

vdd vdd gnd 1.8 
* .param Ton=4n
* .param Tperiod=n
.param Ton=0.6n
.param Tperiod={2*Ton}
.param shift=1.312n
* .param shift=1.312n
V_clk_org clk_org 0 pulse(0 1.8 {Ton} 10p 10p {Ton} {Tperiod})

* V1 a1 0 pulse(0 1.8 {0.5*Ton} 10p 10p {0.7*Ton} {Tperiod})
V1 a1 0 PWL(0 0 {shift} 0 {shift+10p} 1.8 {shift+10p+0.7*Ton} 1.8 {shift+10p+0.7*Ton+10p} 0)


.option scale=0.09u

M1000 a_n273_n137# a1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=200 ps=120
M1001 a_n273_n137# clk_org a_n269_n105# w_n282_n111# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1002 q_a1 a_n187_n105# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1003 a_n231_n105# a_n273_n137# a_n237_n137# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1004 a_n187_n105# clk_org a_n193_n137# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1005 q_a1 a_n187_n105# vdd w_n155_n111# CMOSP w=25 l=2
+  ad=125 pd=60 as=500 ps=240
M1006 a_n269_n105# a1 vdd w_n282_n111# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 a_n193_n137# a_n231_n105# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1008 a_n237_n137# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1009 a_n231_n105# clk_org vdd w_n244_n111# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1010 a_n187_n105# a_n231_n105# vdd w_n200_n111# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
C0 vdd w_n244_n111# 0.07fF
C1 q_a1 gnd 0.14fF
C2 clk_org gnd 0.29fF
C3 a_n193_n137# gnd 0.14fF
C4 a1 w_n282_n111# 0.06fF
C5 a_n273_n137# w_n282_n111# 0.25fF
C6 a_n187_n105# vdd 0.37fF
C7 a_n187_n105# gnd 0.12fF
C8 a_n273_n137# vdd 0.20fF
C9 a_n269_n105# w_n282_n111# 0.01fF
C10 a_n273_n137# gnd 0.24fF
C11 a_n231_n105# w_n244_n111# 0.09fF
C12 vdd w_n155_n111# 0.07fF
C13 a_n231_n105# clk_org 0.05fF
C14 a_n269_n105# vdd 0.29fF
C15 gnd a_n237_n137# 0.14fF
C16 vdd w_n200_n111# 0.07fF
C17 a_n273_n137# a_n231_n105# 0.51fF
C18 clk_org w_n244_n111# 0.06fF
C19 vdd w_n282_n111# 0.08fF
C20 a_n231_n105# a_n237_n137# 0.10fF
C21 a_n231_n105# w_n200_n111# 0.06fF
C22 q_a1 a_n187_n105# 0.07fF
C23 a_n187_n105# clk_org 0.36fF
C24 a_n273_n137# w_n244_n111# 0.13fF
C25 a_n193_n137# a_n187_n105# 0.10fF
C26 a1 clk_org 0.21fF
C27 a_n273_n137# clk_org 0.41fF
C28 q_a1 w_n155_n111# 0.05fF
C29 vdd a_n231_n105# 0.37fF
C30 a_n231_n105# gnd 0.18fF
C31 a_n187_n105# w_n155_n111# 0.06fF
C32 a_n187_n105# w_n200_n111# 0.09fF
C33 a_n273_n137# a_n269_n105# 0.26fF
C34 q_a1 vdd 0.29fF
C35 clk_org w_n282_n111# 0.06fF
C36 a_n193_n137# Gnd 0.01fF
C37 a_n237_n137# Gnd 0.01fF
C38 gnd Gnd 0.08fF
C39 q_a1 Gnd 0.10fF
C40 a_n273_n137# Gnd 0.04fF
C41 vdd Gnd 0.04fF
C42 a_n187_n105# Gnd 0.44fF
C43 a_n231_n105# Gnd 0.48fF
C44 clk_org Gnd 0.45fF
C45 a1 Gnd 0.22fF
C46 w_n155_n111# Gnd 0.97fF
C47 w_n200_n111# Gnd 0.97fF
C48 w_n244_n111# Gnd 0.97fF
C49 w_n282_n111# Gnd 0.67fF



.tran 0.001n  {3*Ton+3n} 
.measure tran tsetup_post TRIG v(a1) VAL=0.9 FALL=1 TARG v(clk_org) VAL=0.9 RISE=2
* .measure tran tpcq_post TRIG v(clk_org) VAL=0.9 RISE=1 TARG v(q_a1) VAL=0.9 RISE=1

.control
* set hcopypscolor = 1 *White background for saving plots
* set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
set curplottitle="Nitin-2023112026-q6"
plot v(clk_org)+4 v(a1)+2 v(q_a1) 


.endc