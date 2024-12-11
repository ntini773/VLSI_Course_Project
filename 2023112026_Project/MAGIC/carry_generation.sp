* SPICE3 file created from carry_generation.ext - technology: scmos

.option scale=0.09u
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={5*20*LAMBDA}
.param width_P={2.5*20*LAMBDA}
.global gnd vdd

vdd vdd gnd 1.8 
.param Ton = 5n

* V1 prop_1 0 0
* * V1 prop_1 0 1.8

* v2 prop_2 0 0
* * v2 prop_2 0 1.8

* v3 prop_3 0 0
* * v3 prop_3 0 1.8

* * v4 prop_4 0 0
* v4 prop_4 0 1.8

* * V5 gen_1 0 1.8
* V5 gen_1 0 0

* * v6 gen_2 0 1.8
* v6 gen_2 0 0

* * v7 gen_3 0 0
* v7 gen_3 0 1.8

* v8 gen_4 0 0
* * v8 gen_4 0 1.8

* V9 carry_0 0 1.8
* V10 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton})  

    V1 prop_1 0 pulse(0 1.8 0 10p 10p {2*Ton} {4*Ton})
    v2 prop_2 0 pulse(0 1.8 0 10p 10p {3*Ton} {6*Ton})
    v3 prop_3 0 pulse(0 1.8 0 10p 10p {4*Ton} {8*Ton})
    v4 prop_4 0 pulse(0 1.8 0 10p 10p {5*Ton} {10*Ton})

    V5 gen_1 0 pulse(0 1.8 0 10p 10p {6*Ton} {12*Ton})
    v6 gen_2 0 pulse(0 1.8 0 10p 10p {7*Ton} {14*Ton})
    v7 gen_3 0 pulse(0 1.8 0 10p 10p {8*Ton} {16*Ton})
    v8 gen_4 0 pulse(0 1.8 0 10p 10p {9*Ton} {18*Ton})

    V9 carry_0 0 1.8
    V10 clk_org gnd pulse(0 1.8 0 10p 10p {Ton} {2*Ton})  

M1000 vdd clock_in pdr1 vdd CMOSP w=50 l=2
+  ad=2000 pd=890 as=250 ps=110
M1001 a_1879_351# clk_org a_1929_302# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1002 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1003 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1004 vdd clock_in pdr2 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1005 a_1929_258# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=200 ps=120
M1006 vdd clock_in pdr4 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1007 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1008 vdd clock_in pdr3 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1009 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1010 pdr4 prop_4 pdr3 Gnd CMOSN w=100 l=2
+  ad=1000 pd=420 as=1500 ps=630
M1011 pdr1 prop_1 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=1000 ps=420
M1012 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1013 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1014 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1015 pdr1 gen_1 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=3000 ps=1260
M1016 pdr3 prop_3 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1017 a_1879_306# a_1882_234# a_1929_258# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1018 a_1929_302# a_1879_306# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 carry_0 a_1879_351# vdd w_1876_340# CMOSP w=25 l=2
+  ad=125 pd=60 as=500 ps=240
M1020 a_1879_351# a_1879_306# vdd w_1876_295# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1021 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1022 pdr4 gen_4 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1023 pdr3 gen_3 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1024 a_1882_226# cin vdd w_1876_213# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1025 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1026 carry_0 a_1879_351# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1027 pdr2 gen_2 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1028 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1029 pdr2 prop_2 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1030 a_1882_234# clk_org a_1882_226# w_1876_213# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1031 a_1882_234# cin gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1032 a_1879_306# clk_org vdd w_1876_251# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1033 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1034 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
C0 pdr4 gen_4 0.02fF
C1 pdr4 clock_in 0.08fF
C2 vdd pdr1 0.68fF
C3 gen_4 prop1_car0 0.10fF
C4 vdd c2 0.48fF
C5 a_1929_258# a_1879_306# 0.10fF
C6 gen_3 pdr2 0.10fF
C7 clock_car0 pdr2 1.03fF
C8 prop_2 prop_3 0.62fF
C9 a_1882_234# vdd 0.20fF
C10 carry_0 prop1_car0 0.02fF
C11 clock_in prop_4 0.19fF
C12 pdr4 pdr3 1.05fF
C13 gen_3 pdr1 0.10fF
C14 clock_car0 pdr1 1.03fF
C15 carry_0 prop_4 0.09fF
C16 gen_2 gen_3 0.64fF
C17 gnd a_1879_306# 0.18fF
C18 vdd w_1876_213# 0.08fF
C19 pdr3 prop_4 0.26fF
C20 a_1879_351# vdd 0.37fF
C21 a_1882_234# w_1876_213# 0.25fF
C22 carry_0 w_1876_340# 0.05fF
C23 w_1876_251# clk_org 0.06fF
C24 pdr1 pdr2 1.07fF
C25 c2 pdr2 0.07fF
C26 gen_2 pdr2 0.02fF
C27 prop_2 clock_in 0.09fF
C28 cin w_1876_213# 0.06fF
C29 prop_2 carry_0 0.09fF
C30 clock_in gnd 0.21fF
C31 pdr4 prop_4 0.02fF
C32 prop1_car0 prop_4 0.10fF
C33 clk_org a_1879_306# 0.05fF
C34 gen_2 pdr1 0.11fF
C35 prop_1 carry_0 0.09fF
C36 clk_org gnd 0.05fF
C37 c3 gnd 0.21fF
C38 pdr3 gnd 0.05fF
C39 gen_1 carry_0 0.09fF
C40 pdr4 c4 0.07fF
C41 clock_in vdd 0.74fF
C42 prop_3 pdr2 0.24fF
C43 prop_2 prop1_car0 0.10fF
C44 vdd clk_org 0.06fF
C45 pdr4 gnd 0.05fF
C46 a_1882_234# gnd 0.24fF
C47 prop_1 prop1_car0 0.26fF
C48 c1 gnd 0.21fF
C49 c3 vdd 0.48fF
C50 pdr3 vdd 0.68fF
C51 gen_4 gen_3 1.03fF
C52 prop_3 pdr1 0.09fF
C53 clock_in gen_3 0.09fF
C54 clock_car0 clock_in 0.08fF
C55 gen_1 prop1_car0 0.10fF
C56 gen_3 carry_0 0.09fF
C57 w_1876_251# a_1879_306# 0.09fF
C58 gen_4 pdr2 0.10fF
C59 clock_in pdr2 0.20fF
C60 vdd carry_0 0.29fF
C61 a_1879_351# gnd 0.12fF
C62 pdr3 gen_3 0.02fF
C63 pdr4 vdd 0.68fF
C64 clock_car0 pdr3 1.03fF
C65 vdd c1 0.48fF
C66 a_1882_234# clk_org 0.41fF
C67 c4 gnd 0.21fF
C68 prop_1 prop_2 0.42fF
C69 cin clk_org 0.21fF
C70 pdr3 pdr2 1.07fF
C71 gen_4 pdr1 0.10fF
C72 clock_in pdr1 0.14fF
C73 clock_car0 pdr4 1.03fF
C74 w_1876_295# a_1879_306# 0.06fF
C75 gen_3 prop1_car0 0.10fF
C76 w_1876_213# clk_org 0.06fF
C77 clock_car0 prop1_car0 1.03fF
C78 gen_2 carry_0 0.10fF
C79 a_1879_351# carry_0 0.07fF
C80 a_1929_258# gnd 0.14fF
C81 a_1879_351# clk_org 0.36fF
C82 a_1882_226# vdd 0.29fF
C83 c4 vdd 0.48fF
C84 a_1882_234# a_1882_226# 0.26fF
C85 pdr2 prop_4 0.10fF
C86 vdd w_1876_340# 0.07fF
C87 w_1876_251# vdd 0.07fF
C88 c1 pdr1 0.07fF
C89 pdr1 prop1_car0 1.06fF
C90 prop_3 clock_in 0.17fF
C91 a_1882_226# w_1876_213# 0.01fF
C92 gen_2 prop1_car0 0.11fF
C93 a_1882_234# w_1876_251# 0.13fF
C94 prop_3 carry_0 0.07fF
C95 pdr1 prop_4 0.10fF
C96 vdd a_1879_306# 0.37fF
C97 a_1879_351# a_1929_302# 0.10fF
C98 clock_car0 gnd 1.03fF
C99 prop_3 pdr3 0.02fF
C100 prop_2 pdr2 0.02fF
C101 gnd carry_0 0.14fF
C102 a_1882_234# a_1879_306# 0.51fF
C103 gnd clk_org 0.29fF
C104 vdd w_1876_295# 0.07fF
C105 a_1879_351# w_1876_340# 0.06fF
C106 pdr2 gnd 0.05fF
C107 gen_4 clock_in 0.09fF
C108 prop_2 pdr1 0.26fF
C109 gen_4 carry_0 0.09fF
C110 prop_3 prop1_car0 0.09fF
C111 clock_in clk_org 0.08fF
C112 prop_1 pdr1 0.02fF
C113 pdr1 gnd 0.05fF
C114 c2 gnd 0.21fF
C115 gen_4 pdr3 0.10fF
C116 clock_in pdr3 0.14fF
C117 prop_3 prop_4 0.85fF
C118 a_1879_351# w_1876_295# 0.09fF
C119 gen_1 pdr1 0.02fF
C120 gen_1 gen_2 0.36fF
C121 vdd pdr2 0.68fF
C122 c3 pdr3 0.07fF
C123 gnd a_1929_302# 0.14fF
C124 cin Gnd 0.22fF
C125 a_1882_226# Gnd 0.00fF
C126 a_1929_258# Gnd 0.01fF
C127 a_1882_234# Gnd 1.19fF
C128 a_1929_302# Gnd 0.01fF
C129 a_1879_306# Gnd 0.48fF
C130 clk_org Gnd 3.01fF
C131 gnd Gnd 0.58fF
C132 vdd Gnd 0.40fF
C133 a_1879_351# Gnd 0.44fF
C134 gnd Gnd 0.68fF
C135 gen_1 Gnd 0.16fF
C136 carry_0 Gnd 2.94fF
C137 gen_2 Gnd 0.25fF
C138 gen_3 Gnd 0.93fF
C139 clock_car0 Gnd 3.27fF
C140 gen_4 Gnd 1.06fF
C141 prop1_car0 Gnd 0.73fF
C142 prop_1 Gnd 0.76fF
C143 prop_2 Gnd 0.93fF
C144 prop_3 Gnd 1.18fF
C145 prop_4 Gnd 0.25fF
C146 clock_in Gnd 3.32fF
C147 c4 Gnd 0.10fF
C148 pdr4 Gnd 1.31fF
C149 pdr3 Gnd 2.39fF
C150 c3 Gnd 0.14fF
C151 pdr2 Gnd 2.36fF
C152 c2 Gnd 0.12fF
C153 pdr1 Gnd 2.51fF
C154 c1 Gnd 0.37fF
C155 w_1876_213# Gnd 1.19fF
C156 w_1876_251# Gnd 0.97fF
C157 w_1876_295# Gnd 0.97fF
C158 w_1876_340# Gnd 0.97fF
C159 vdd Gnd 13.20fF




.tran 1n  {30*Ton} {15*Ton} 
* .tran 1n  {15*Ton}

.control
* set hcopypscolor = 1 *White background for saving plots
* set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run

* plot v(pdr1)  4+v(c1)
plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4)  8+v(clock_in) 
* plot v(gen_1) 2+v(gen_2) 4+v(gen_3) 6+v(gen_4) 8+v(clock_in)
* plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4) 8+v(clock_in)
* * plot v(c1) 2+v(c2)   4+v(c3)   6+v(c4) 8+v(clock_in) 
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