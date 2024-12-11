* SPICE3 file created from not_fail.ext - technology: scmos

.option scale=0.09u
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
* .param width_N={15*20*LAMBDA}
* .param width_P={2.5*20*LAMBDA}

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


M1000 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1001 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=1000 ps=420
M1002 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=2000 ps=890
M1003 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1004 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1005 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1006 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1008 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1009 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1010 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1011 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1012 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1013 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1014 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1015 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1016 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1017 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1018 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1019 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1020 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1021 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1022 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1023 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
C0 vdd pdr2 0.68fF
C1 prop_3 pdr3 0.02fF
C2 c3 gnd 0.21fF
C3 pdr2 pdr3 1.03fF
C4 pdr3 gnd 0.05fF
C5 gen_2 pdr2 0.02fF
C6 c4 gnd 0.21fF
C7 pdr1 prop_1 0.02fF
C8 clock_car0 pdr3 1.03fF
C9 pdr4 gen_4 0.02fF
C10 carry_0 prop1_car0 0.02fF
C11 pdr1 vdd 0.68fF
C12 gen_3 pdr3 0.02fF
C13 vdd clock_in 0.74fF
C14 c1 gnd 0.21fF
C15 c2 vdd 0.48fF
C16 pdr4 gnd 0.05fF
C17 vdd c3 0.48fF
C18 clock_car0 pdr4 1.03fF
C19 vdd pdr3 0.68fF
C20 vdd c4 0.48fF
C21 clk_org gnd 0.05fF
C22 pdr1 c1 0.07fF
C23 c3 pdr3 0.07fF
C24 clock_car0 prop1_car0 1.03fF
C25 pdr1 gen_1 0.02fF
C26 c1 vdd 0.48fF
C27 pdr2 gnd 0.05fF
C28 pdr1 prop1_car0 1.03fF
C29 clk_org clock_in 0.07fF
C30 pdr4 prop_4 0.02fF
C31 pdr4 vdd 0.68fF
C32 clock_car0 pdr2 1.03fF
C33 clock_car0 gnd 1.03fF
C34 pdr4 pdr3 1.03fF
C35 pdr4 c4 0.07fF
C36 vdd clk_org 0.06fF
C37 pdr1 pdr2 1.03fF
C38 pdr1 gnd 0.05fF
C39 c2 pdr2 0.07fF
C40 clock_in gnd 0.21fF
C41 pdr2 prop_2 0.02fF
C42 c2 gnd 0.21fF
C43 clock_car0 pdr1 1.03fF
C44 clock_car0 clock_in 0.02fF
C45 gnd Gnd 0.72fF
C46 clock_in Gnd 1.77fF
C47 c4 Gnd 0.06fF
C48 c3 Gnd 0.06fF
C49 c2 Gnd 0.05fF
C50 c1 Gnd 0.05fF
C51 clock_car0 Gnd 0.77fF
C52 pdr4 Gnd 0.57fF
C53 pdr3 Gnd 0.69fF
C54 pdr2 Gnd 0.68fF
C55 pdr1 Gnd 0.68fF
C56 prop1_car0 Gnd 0.26fF
C57 gen_4 Gnd 0.25fF
C58 gen_3 Gnd 0.25fF
C59 prop_4 Gnd 0.25fF
C60 gen_2 Gnd 0.28fF
C61 prop_3 Gnd 0.25fF
C62 gen_1 Gnd 0.25fF
C63 prop_2 Gnd 0.28fF
C64 carry_0 Gnd 0.25fF
C65 prop_1 Gnd 0.25fF
C66 clk_org Gnd 0.25fF
C67 vdd Gnd 13.23fF


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