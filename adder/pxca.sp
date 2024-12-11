* SPICE3 file created from pxca.ext - technology: scmosTrying

.option scale=0.09u
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={15*20*LAMBDA}
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

    * V1 prop_1 0 pulse(0 1.8 0 0 0 {2*Ton} {4*Ton})
    * v2 prop_2 0 pulse(0 1.8 0 0 0 {3*Ton} {6*Ton})
    * v3 prop_3 0 pulse(0 1.8 0 0 0 {4*Ton} {8*Ton})
    * v4 prop_4 0 pulse(0 1.8 0 0 0 {5*Ton} {10*Ton})

    * V5 gen_1 0 pulse(0 1.8 0 0 0 {6*Ton} {12*Ton})
    * v6 gen_2 0 pulse(0 1.8 0 0 0 {7*Ton} {14*Ton})
    * v7 gen_3 0 pulse(0 1.8 0 0 0 {8*Ton} {16*Ton})
    * v8 gen_4 0 pulse(0 1.8 0 0 0 {9*Ton} {18*Ton})

    V9 carry_0 0 1.8
    * V1 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton}) 

    * V2 q_a1 0 1.8 

    * Input pulses for q_a nodes

.param Ton=5n
.param Tperiod=10n
V_q_a1 q_a1 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
V_q_a2 q_a2 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
V_q_a3 q_a3 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
V_q_a4 q_a4 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})

V_q_b1 q_b1 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
V_q_b2 q_b2 0 pulse(0 0 {Ton} 0 0 {Ton} {Tperiod})
V_q_b3 q_b3 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
V_q_b4 q_b4 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})

V_clk clk_org 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})




M1000 invo c3 gnd Gnd CMOSN w=10 l=2
+  ad=800 pd=480 as=1000 ps=560
M1001 invo carry_0 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1002 a_117_n1769# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=2000 ps=1000
M1003 invo c1 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=1500 ps=630
M1005 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=2000 ps=890
M1006 s3 prop_3 invo Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1007 a_113_n2427# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1008 a_115_n1419# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1009 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=1000 pd=460 as=3000 ps=1260
M1010 a_117_n1818# q_b2 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1011 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1012 prop_3 q_a3 q_b3 w_490_n1925# CMOSP w=20 l=2
+  ad=300 pd=150 as=100 ps=50
M1013 invo c2 vdd w_3219_n2324# CMOSP w=20 l=2
+  ad=800 pd=400 as=0 ps=0
M1014 a_113_n2476# q_b4 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1015 a_115_n1468# q_b1 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1016 prop_3 invo q_a3 Gnd CMOSN w=10 l=2
+  ad=150 pd=90 as=50 ps=30
M1017 invo q_b1 vdd w_372_n1246# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1018 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1020 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1021 gen_2 a_117_n1769# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1022 s4 invo prop_4 Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=150 ps=90
M1023 s1 prop_1 invo Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1024 invo q_b3 vdd w_438_n1931# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1025 a_125_n2061# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1026 gen_3 a_125_n2061# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1027 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1028 s3 prop_3 c2 w_3271_n2318# CMOSP w=20 l=2
+  ad=200 pd=100 as=400 ps=190
M1029 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1030 a_125_n2061# q_b3 a_125_n2110# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1031 prop_4 invo q_b4 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1032 prop_4 q_b4 invo Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1033 gen_4 a_113_n2427# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1034 s4 prop_4 invo Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1035 prop_1 invo q_a1 Gnd CMOSN w=10 l=2
+  ad=200 pd=120 as=50 ps=30
M1036 gen_1 a_115_n1419# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1037 invo c2 vdd w_434_n2286# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1038 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1039 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1040 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1041 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1042 prop_3 q_b3 q_a3 w_490_n1925# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1043 prop_1 q_a1 invo Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1044 invo q_b2 vdd w_413_n1622# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1045 prop_2 q_a2 invo Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1046 s3 invo prop_3 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1047 s1 prop_1 carry_0 w_3202_n1515# CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1048 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=300 pd=140 as=0 ps=0
M1049 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1050 prop_2 invo q_a2 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1051 s2 prop_1 invo Gnd CMOSN w=10 l=2
+  ad=100 pd=60 as=0 ps=0
M1052 prop_4 q_b4 c2 w_486_n2280# CMOSP w=20 l=2
+  ad=300 pd=150 as=0 ps=0
M1053 invo c3 vdd w_3094_n1100# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1055 s1 invo prop_1 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1056 gen_3 a_125_n2061# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1057 prop_4 c2 q_b4 w_486_n2280# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1058 invo c1 vdd w_3170_n1938# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1059 invo c2 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1060 prop_1 q_b1 q_a1 w_424_n1240# CMOSP w=20 l=2
+  ad=400 pd=200 as=100 ps=50
M1061 invo q_b1 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1062 invo carry_0 vdd w_3150_n1521# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1063 a_125_n2110# q_a3 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1064 s4 c3 prop_4 w_3146_n1094# CMOSP w=20 l=2
+  ad=200 pd=100 as=0 ps=0
M1065 prop_2 q_a2 q_b2 w_465_n1616# CMOSP w=20 l=2
+  ad=200 pd=100 as=100 ps=50
M1066 vdd q_a2 a_117_n1769# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1067 invo q_b3 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1068 s3 c2 prop_3 w_3271_n2318# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1069 prop_1 q_a1 q_b1 w_424_n1240# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1070 prop_2 q_b2 q_a2 w_465_n1616# CMOSP w=20 l=2
+  ad=0 pd=0 as=100 ps=50
M1071 s2 prop_1 c1 w_3222_n1932# CMOSP w=20 l=2
+  ad=200 pd=100 as=300 ps=140
M1072 s1 carry_0 prop_1 w_3202_n1515# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1073 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1074 s2 invo prop_1 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1075 s4 prop_4 c3 w_3146_n1094# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1076 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1077 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1078 gen_2 a_117_n1769# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1079 vdd c2 a_113_n2427# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1080 vdd q_a1 a_115_n1419# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1081 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1082 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1083 a_117_n1769# q_a2 a_117_n1818# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1084 invo c2 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1085 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1086 invo q_b2 gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1087 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1088 gen_4 a_113_n2427# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1089 a_113_n2427# c2 a_113_n2476# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1090 gen_1 a_115_n1419# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1091 a_115_n1419# q_a1 a_115_n1468# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1092 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1093 s2 c1 prop_1 w_3222_n1932# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 prop_3 q_a3 invo Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1095 vdd q_b3 a_125_n2061# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
C0 q_a3 prop_3 0.90fF
C1 prop_1 invo 0.99fF
C2 vdd pdr3 0.68fF
C3 carry_0 prop1_car0 0.02fF
C4 clk_org clock_in 0.07fF
C5 pdr2 gnd 0.05fF
C6 pdr4 c4 0.07fF
C7 c3 gnd 0.05fF
C8 vdd c1 0.48fF
C9 vdd c2 0.48fF
C10 w_490_n1925# q_b3 0.29fF
C11 s4 invo 0.42fF
C12 pdr1 c1 0.07fF
C13 q_b1 vdd 1.02fF
C14 q_a3 gnd 0.05fF
C15 w_438_n1931# invo 0.06fF
C16 w_3222_n1932# c1 0.29fF
C17 q_a1 a_115_n1419# 0.20fF
C18 w_3150_n1521# invo 0.06fF
C19 w_490_n1925# prop_3 0.14fF
C20 w_424_n1240# q_b1 0.29fF
C21 s1 invo 0.42fF
C22 q_b2 vdd 1.02fF
C23 s3 c2 0.26fF
C24 a_113_n2427# gen_4 0.05fF
C25 a_125_n2061# gen_3 0.05fF
C26 w_434_n2286# vdd 0.10fF
C27 c1 vdd 0.95fF
C28 vdd pdr1 0.68fF
C29 invo q_b4 0.28fF
C30 vdd c2 1.97fF
C31 w_486_n2280# prop_4 0.14fF
C32 vdd clock_in 0.74fF
C33 gen_3 vdd 0.28fF
C34 carry_0 gnd 0.05fF
C35 pdr4 clock_car0 1.03fF
C36 pdr3 c3 0.07fF
C37 w_3094_n1100# invo 0.06fF
C38 prop_2 q_b2 0.26fF
C39 c4 gnd 0.21fF
C40 q_a2 a_117_n1769# 0.20fF
C41 w_438_n1931# q_b3 0.13fF
C42 pdr2 gen_2 0.02fF
C43 w_413_n1622# q_b2 0.13fF
C44 w_3170_n1938# c1 0.13fF
C45 w_372_n1246# q_b1 0.13fF
C46 q_b1 q_a1 0.25fF
C47 prop_1 s2 0.90fF
C48 prop_4 c2 0.26fF
C49 q_b3 invo 0.05fF
C50 a_125_n2061# vdd 0.44fF
C51 vdd c3 0.48fF
C52 gen_4 gnd 0.14fF
C53 q_b1 prop_1 0.26fF
C54 pdr3 pdr4 1.03fF
C55 pdr2 clock_car0 1.03fF
C56 w_3219_n2324# invo 0.06fF
C57 clock_car0 gnd 1.03fF
C58 q_b2 q_a2 0.25fF
C59 prop_3 invo 0.71fF
C60 w_3271_n2318# prop_3 0.19fF
C61 q_b4 gnd 0.05fF
C62 c3 vdd 0.95fF
C63 w_3170_n1938# vdd 0.10fF
C64 invo gnd 1.55fF
C65 w_486_n2280# q_b4 0.19fF
C66 w_413_n1622# vdd 0.10fF
C67 a_113_n2427# gnd 0.05fF
C68 s2 invo 0.42fF
C69 q_a3 vdd 0.06fF
C70 q_b3 prop_3 0.26fF
C71 vdd pdr4 0.68fF
C72 pdr2 pdr3 1.03fF
C73 prop1_car0 clock_car0 1.03fF
C74 clk_org gnd 0.05fF
C75 pdr3 gnd 0.05fF
C76 gen_2 gnd 0.14fF
C77 a_117_n1769# gen_2 0.05fF
C78 w_372_n1246# vdd 0.10fF
C79 q_a1 vdd 0.06fF
C80 q_b1 invo 0.05fF
C81 pdr1 prop_1 0.02fF
C82 gnd c1 0.21fF
C83 pdr2 c2 0.07fF
C84 q_b3 gnd 0.05fF
C85 gnd c2 0.21fF
C86 w_3222_n1932# prop_1 0.19fF
C87 w_424_n1240# q_a1 0.19fF
C88 carry_0 vdd 0.95fF
C89 q_b2 invo 0.05fF
C90 q_a2 vdd 0.06fF
C91 q_b4 c2 0.25fF
C92 a_115_n1419# gen_1 0.05fF
C93 w_465_n1616# q_b2 0.29fF
C94 a_115_n1419# gnd 0.05fF
C95 w_434_n2286# invo 0.06fF
C96 c1 invo 0.05fF
C97 vdd pdr2 0.68fF
C98 invo c2 0.11fF
C99 w_3271_n2318# c2 0.29fF
C100 pdr1 pdr2 1.03fF
C101 gen_1 gnd 0.14fF
C102 pdr1 gnd 0.05fF
C103 prop_2 q_a2 0.90fF
C104 w_424_n1240# prop_1 0.14fF
C105 clock_in gnd 0.21fF
C106 a_117_n1769# gnd 0.05fF
C107 c2 a_113_n2427# 0.20fF
C108 w_490_n1925# q_a3 0.19fF
C109 w_438_n1931# vdd 0.10fF
C110 w_3150_n1521# vdd 0.10fF
C111 vdd gen_4 0.28fF
C112 pdr4 prop_4 0.02fF
C113 pdr3 prop_3 0.02fF
C114 w_3146_n1094# c3 0.29fF
C115 s4 c3 0.26fF
C116 q_b1 gnd 0.11fF
C117 w_3219_n2324# c2 0.13fF
C118 vdd q_b4 0.06fF
C119 invo s3 0.42fF
C120 w_3271_n2318# s3 0.14fF
C121 vdd c4 0.48fF
C122 prop1_car0 pdr1 1.03fF
C123 w_3202_n1515# carry_0 0.29fF
C124 prop_2 pdr2 0.02fF
C125 w_3094_n1100# vdd 0.10fF
C126 pdr3 clock_car0 1.03fF
C127 q_a1 prop_1 0.90fF
C128 c3 gnd 0.21fF
C129 q_b2 gnd 0.11fF
C130 w_3146_n1094# prop_4 0.19fF
C131 vdd invo 1.65fF
C132 s4 prop_4 0.90fF
C133 w_3202_n1515# prop_1 0.19fF
C134 c1 gnd 0.05fF
C135 c2 gnd 0.11fF
C136 vdd a_113_n2427# 0.44fF
C137 w_3094_n1100# c3 0.13fF
C138 gen_3 gnd 0.14fF
C139 prop_2 invo 0.42fF
C140 c1 s2 0.26fF
C141 c3 invo 0.05fF
C142 w_3170_n1938# invo 0.06fF
C143 q_b3 a_125_n2061# 0.20fF
C144 w_465_n1616# prop_2 0.14fF
C145 w_413_n1622# invo 0.06fF
C146 w_486_n2280# c2 0.29fF
C147 gen_2 vdd 0.28fF
C148 w_3150_n1521# carry_0 0.13fF
C149 prop_4 q_b4 0.90fF
C150 prop_3 s3 0.90fF
C151 q_b3 vdd 1.02fF
C152 q_a3 invo 0.28fF
C153 s1 carry_0 0.26fF
C154 pdr4 gen_4 0.02fF
C155 gen_1 pdr1 0.02fF
C156 w_3202_n1515# s1 0.14fF
C157 pdr1 clock_car0 1.03fF
C158 clock_car0 clock_in 0.02fF
C159 w_3219_n2324# vdd 0.10fF
C160 pdr4 gnd 0.05fF
C161 prop_4 invo 0.71fF
C162 w_372_n1246# invo 0.06fF
C163 s1 prop_1 0.90fF
C164 w_3146_n1094# s4 0.14fF
C165 q_a1 invo 0.28fF
C166 a_115_n1419# vdd 0.44fF
C167 a_125_n2061# gnd 0.05fF
C168 pdr3 gen_3 0.02fF
C169 w_3222_n1932# s2 0.14fF
C170 carry_0 invo 0.05fF
C171 gen_1 vdd 0.28fF
C172 w_434_n2286# c2 0.13fF
C173 q_a2 invo 0.28fF
C174 q_a3 q_b3 0.25fF
C175 a_117_n1769# vdd 0.44fF
C176 w_465_n1616# q_a2 0.19fF
C177 vdd clk_org 0.06fF
C178 gnd Gnd 2.02fF
C179 gen_4 Gnd 0.31fF
C180 a_113_n2427# Gnd 0.29fF
C181 c2 Gnd 0.56fF
C182 q_b4 Gnd 1.25fF
C183 s3 Gnd 0.38fF
C184 invo Gnd 2.14fF
C185 vdd Gnd 12.57fF
C186 prop_3 Gnd 0.77fF
C187 prop_4 Gnd 0.95fF
C188 gen_3 Gnd 0.34fF
C189 a_125_n2061# Gnd 0.20fF
C190 q_b3 Gnd 0.41fF
C191 q_a3 Gnd 0.30fF
C192 s2 Gnd 0.31fF
C193 prop_1 Gnd 2.38fF
C194 c1 Gnd 0.21fF
C195 gen_2 Gnd 0.30fF
C196 a_117_n1769# Gnd 0.29fF
C197 q_a2 Gnd 0.79fF
C198 q_b2 Gnd 0.32fF
C199 gnd Gnd 0.81fF
C200 clock_in Gnd 1.78fF
C201 c4 Gnd 0.06fF
C202 c3 Gnd 0.97fF
C203 clock_car0 Gnd 0.77fF
C204 pdr4 Gnd 0.52fF
C205 pdr3 Gnd 0.65fF
C206 pdr2 Gnd 0.65fF
C207 pdr1 Gnd 0.65fF
C208 prop1_car0 Gnd 0.26fF
C209 prop_2 Gnd 0.39fF
C210 gen_1 Gnd 0.31fF
C211 carry_0 Gnd 0.37fF
C212 clk_org Gnd 0.24fF
C213 s1 Gnd 0.36fF
C214 a_115_n1419# Gnd 0.29fF
C215 q_a1 Gnd 1.28fF
C216 q_b1 Gnd 0.38fF
C217 s4 Gnd 0.12fF
C218 w_3271_n2318# Gnd 2.78fF
C219 w_3219_n2324# Gnd 1.56fF
C220 w_486_n2280# Gnd 0.42fF
C221 w_434_n2286# Gnd 1.56fF
C222 w_3222_n1932# Gnd 2.78fF
C223 w_3170_n1938# Gnd 1.56fF
C224 w_490_n1925# Gnd 2.78fF
C225 w_438_n1931# Gnd 1.56fF
C226 w_465_n1616# Gnd 2.78fF
C227 w_413_n1622# Gnd 1.56fF
C228 w_3202_n1515# Gnd 2.78fF
C229 w_3150_n1521# Gnd 1.56fF
C230 vdd Gnd 12.57fF
C231 w_424_n1240# Gnd 2.78fF
C232 w_372_n1246# Gnd 1.56fF
C233 w_3146_n1094# Gnd 2.78fF
C234 w_3094_n1100# Gnd 1.56fF


* .tran 1n  {30*Ton} {15*Ton} 
.tran 0.05n  {3*Ton}

.control
* set hcopypscolor = 1 *White background for saving plots
* set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run

* plot v(s1) 2+v(s2) 4+v(s3) 6+v(s4) 8+v(c4) 10+v(clock_in)
* plot v(q_a1) 2+v(q_b1) 4+v(carry_0) 6+v(s1) 8+v(c1) 10+v(clock_in)
* plot v(q_a2) 2+v(q_b2) 4+v(c1) 6+v(s2) 8+v(c2) 10+v(clock_in)
* plot v(q_a3) 2+v(q_b3) 4+v(c2) 6+v(s3) 8+v(c3) 10+v(clock_in)
* plot v(q_a4) 2+v(q_b4) 4+v(c3) 6+v(s4) 8+v(c4) 10+v(clock_in)


plot v(q_a1) 2+v(q_b1) 4+v(prop_1) 6+v(carry_0) 8+v(s1) 10+v(clock_in) 12+v(gen_1)
plot v(q_a2) 2+v(q_b2) 4+v(prop_2) 6+v(c1) 8+v(s2) 10+v(clock_in) 12+v(gen_2)
plot v(q_a3) 2+v(q_b3) 4+v(prop_3) 6+v(c2) 8+v(s3) 10+v(clock_in) 12+v(gen_3)
plot v(q_a4) 2+v(q_b4) 4+v(prop_4) 6+v(c3) 8+v(s4) 10+v(clock_in) 12+v(gen_4)

* plot v(pdr1)  4+v(c1)
* plot v(pdr1) v(c1) 2+v(pdr2) 2+v(c2) 4+v(pdr3) 4+v(c3) 6+v(pdr4) 6+v(c4) 8+v(clock_in) 8+v(clk_org)
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