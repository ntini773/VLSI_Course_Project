* SPICE3 file created from cla_try3.ext - technology: scmos
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
* .param width_N={15*20*LAMBDA}
* .param width_P={2.5*20*LAMBDA}
.option scale=0.09u
.global gnd vdd

vdd vdd gnd 1.8 
.param Ton = 5n


    V1 prop_1 0 pulse(0 1.8 0 0 0 {2*Ton} {4*Ton})
    v2 prop_2 0 pulse(0 1.8 0 0 0 {3*Ton} {6*Ton})
    v3 prop_3 0 pulse(0 1.8 0 0 0 {4*Ton} {8*Ton})
    v4 prop_4 0 pulse(0 1.8 0 0 0 {5*Ton} {10*Ton})

    V5 gen_1 0 pulse(0 1.8 0 0 0 {6*Ton} {12*Ton})
    v6 gen_2 0 pulse(0 1.8 0 0 0 {7*Ton} {14*Ton})
    v7 gen_3 0 pulse(0 1.8 0 0 0 {8*Ton} {16*Ton})
    v8 gen_4 0 pulse(0 1.8 0 0 0 {9*Ton} {18*Ton})

    V9 carry_0 0 1.8
    V10 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton})  


M1000 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=1750 ps=780
M1001 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1002 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1003 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=1000 ps=420
M1004 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=0 ps=0
* M1005 c3 pdr3 vdd vdd CMOSP w=40 l=2
* +  ad=200 pd=90 as=0 ps=0
M1005 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=2000 ps=890
M1006 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1008 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1009 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1010 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1011 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1012 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1013 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1017 pdr4 clock_in w_134_9# w_134_9# CMOSP w=50 l=2
+  ad=250 pd=110 as=250 ps=110
M1018 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1019 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1020 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1021 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1022 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1023 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
C0 pdr4 gnd 0.05fF
C1 c3 pdr3 0.07fF
C2 vdd clock_in 0.67fF
C3 clock_car0 pdr2 1.03fF
C4 pdr1 c1 0.07fF
C5 pdr4 prop_4 0.02fF
C6 c2 gnd 0.21fF
C7 clk_org gnd 0.05fF
C8 pdr1 gen_1 0.02fF
C9 c3 gnd 0.21fF
C10 vdd pdr2 0.65fF
C11 clock_in clk_org 0.07fF
C12 c1 gnd 0.21fF
C13 pdr4 clock_car0 1.03fF
C14 c4 vdd 0.48fF
C15 c2 pdr2 0.07fF
C16 pdr4 gen_4 0.02fF
C17 c4 pdr4 0.07fF
C18 pdr3 gnd 0.05fF
C19 pdr1 gnd 0.05fF
C20 pdr1 prop1_car0 1.03fF
C21 pdr4 vdd 0.06fF
C22 w_134_9# clock_in 0.06fF
C23 c2 vdd 0.48fF
C24 vdd clk_org 0.06fF
C25 pdr2 gen_2 0.02fF
C26 pdr3 pdr2 1.03fF
C27 clock_in gnd 0.21fF
C28 c3 vdd 0.48fF
C29 pdr1 pdr2 1.03fF
C30 c1 vdd 0.48fF
C31 carry_0 prop1_car0 0.02fF
C32 clock_car0 pdr3 1.03fF
C33 pdr1 clock_car0 1.03fF
C34 pdr1 prop_1 0.02fF
C35 gnd pdr2 0.05fF
C36 prop_3 pdr3 0.02fF
C37 pdr3 vdd 0.65fF
C38 clock_car0 gnd 1.03fF
C39 pdr1 vdd 0.65fF
C40 prop_2 pdr2 0.02fF
C41 pdr4 pdr3 1.03fF
C42 clock_car0 prop1_car0 1.03fF
C43 c4 gnd 0.21fF
C44 clock_car0 clock_in 0.02fF
C45 pdr4 w_134_9# 0.59fF
C46 pdr3 gen_3 0.02fF
C47 clock_car0 Gnd 0.77fF
C48 pdr4 Gnd 0.54fF
C49 pdr3 Gnd 0.67fF
C50 pdr2 Gnd 0.62fF
C51 pdr1 Gnd 0.62fF
C52 gnd Gnd 0.85fF
C53 prop1_car0 Gnd 0.26fF
C54 gen_4 Gnd 0.25fF
C55 gen_3 Gnd 0.25fF
C56 prop_4 Gnd 0.25fF
C57 gen_2 Gnd 0.28fF
C58 prop_3 Gnd 0.25fF
C59 gen_1 Gnd 0.25fF
C60 prop_2 Gnd 0.28fF
C61 clock_in Gnd 1.20fF
C62 carry_0 Gnd 0.25fF
C63 prop_1 Gnd 0.25fF
C64 c4 Gnd 0.05fF
C65 c3 Gnd 0.05fF
C66 c2 Gnd 0.05fF
C67 c1 Gnd 0.06fF
C68 clk_org Gnd 0.25fF
C69 vdd Gnd 11.54fF
C70 w_134_9# Gnd 1.53fF


.tran 1n  {30*Ton} {15*Ton} 
* .tran 1n  {15*Ton}

.control
* set hcopypscolor = 1 *White background for saving plots
* set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run

* plot v(pdr1)  4+v(c1)
* plot v(pdr1) v(c1) 2+v(pdr2) 2+v(c2) 4+v(pdr3) 4+v(c3) 6+v(pdr4) 6+v(c4) 8+v(clock_in) 
plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4)  8+v(clock_in) 
* plot v(gen_1) 2+v(gen_2) 4+v(gen_3) 6+v(gen_4) 8+v(clock_in)
* plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4) 8+v(clock_in)
plot v(c1) 2+v(c2)   4+v(c3)   6+v(c4) 8+v(clock_in) 
* plot v(clk_org) 3+v(clock_in)
* plot    v(gen_1) 3+v(prop_1) 7+v(carry_0) 10+v(pdr1) 13+v(clock_in)
* plot v(pdr4)  v(c4) 4+v(clk_org)
* plot    v(gen_2) 3+v(prop_2) 7+v(pdr1) 10+v(pdr2) 13+v(clock_in) 
* plot 2+v(prop_1)
* plot v(gen_1)
* plot v(prop_2)
* plot v(gen_2)
* plot v(prop_3)
* plot v(gen_3)
* plot v(prop_4)
* plot v(gen_4)


.endc