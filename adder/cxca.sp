* SPICE3 file created from cxca.ext - technology: scmosTrying

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


.option scale=0.09u

M1000 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=2000 ps=890
M1001 a_3912_n1453# carry_0 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=2040 ps=1216
M1002 a_n71_n2314# q_b3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1003 gen_4 a_396_n2743# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=4080 ps=2072
M1004 prop_1 a_n89_n1541# a_n50_n1537# w_n63_n1543# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1005 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=1000 ps=420
M1006 a_n78_n2657# q_b4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1007 a_n89_n1541# q_a1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1008 gnd a_n89_n1596# a_n22_n1590# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1009 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1010 gen_2 a_400_n2085# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1011 vdd q_b3 a_408_n2377# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=180 ps=58
M1012 a_3912_n1400# a_3873_n1459# s1 w_3899_n1406# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1013 vdd q_a2 a_400_n2085# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=180 ps=58
M1014 a_n50_n1537# a_n89_n1596# prop_1 w_n63_n1543# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 a_396_n2743# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1016 a_n78_n2602# q_a4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1017 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1018 a_n11_n2651# a_n78_n2602# prop_4 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1019 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1020 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1021 a_3892_n2640# a_3853_n2699# s3 w_3879_n2646# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1022 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1023 a_398_n1735# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1024 a_3913_n2269# prop_2 vdd w_3900_n2255# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1025 a_3810_n3180# c3 vdd w_3797_n3166# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1026 a_3892_n2693# c2 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1027 s1 a_3873_n1404# a_3912_n1400# w_3899_n1406# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1028 a_n50_n1590# q_a1 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1029 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1030 gen_3 a_408_n2377# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1031 a_3913_n2214# c1 vdd w_3900_n2200# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1032 a_n98_n1955# q_b2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1033 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1034 a_396_n2792# q_b4 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1035 a_n32_n2308# q_a3 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1036 a_408_n2377# q_b3 a_408_n2426# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1037 s3 a_3853_n2644# a_3892_n2640# w_3879_n2646# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1038 a_398_n1784# q_b1 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1039 a_400_n2085# q_a2 a_400_n2134# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1040 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1041 vdd prop_1 a_3912_n1400# w_3899_n1406# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1042 gen_4 a_396_n2743# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1043 a_n71_n2314# q_b3 vdd w_n84_n2300# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1044 a_n89_n1596# q_b1 vdd w_n102_n1582# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1045 prop_1 q_b1 a_n50_n1590# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=0 ps=0
M1046 a_n71_n2259# q_a3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1047 gen_1 a_398_n1735# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1048 a_n4_n2308# a_n71_n2259# prop_3 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1049 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1050 prop_3 a_n71_n2259# a_n32_n2255# w_n45_n2261# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1051 prop_3 q_b3 a_n32_n2308# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1052 a_n32_n2255# q_a3 vdd w_n45_n2261# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1053 a_n50_n1537# q_a1 vdd w_n63_n1543# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 a_3912_n1400# carry_0 vdd w_3899_n1406# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1055 a_n39_n2651# q_a4 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1056 a_n78_n2657# q_b4 vdd w_n91_n2643# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1057 a_n89_n1541# q_a1 vdd w_n102_n1527# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1058 vdd prop_3 a_3892_n2640# w_3879_n2646# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1059 a_n78_n2602# q_a4 vdd w_n91_n2588# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1060 gnd a_3913_n2269# a_3980_n2263# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1061 vdd q_b3 a_n32_n2255# w_n45_n2261# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1062 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1063 a_3873_n1459# prop_1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1064 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1065 vdd q_b1 a_n50_n1537# w_n63_n1543# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1066 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1067 a_408_n2377# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1068 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1069 prop_4 q_b4 a_n39_n2651# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1070 prop_4 a_n78_n2602# a_n39_n2598# w_n52_n2604# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1071 a_3853_n2699# prop_3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1072 a_n98_n1900# q_a2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1073 a_3980_n2263# a_3913_n2214# s2 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1074 a_3873_n1404# carry_0 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1075 s4 prop_4 a_3849_n3229# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1076 a_n98_n1955# q_b2 vdd w_n111_n1941# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1077 s2 prop_2 a_3952_n2263# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1078 gnd a_n78_n2657# a_n11_n2651# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1079 a_n31_n1949# a_n98_n1900# prop_2 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1080 a_3853_n2644# c2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1081 gen_2 a_400_n2085# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1082 a_3892_n2640# c2 vdd w_3879_n2646# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1083 a_408_n2426# q_a3 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1084 a_400_n2085# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1085 a_3849_n3229# c3 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1086 vdd prop_4 a_3849_n3176# w_3836_n3182# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1087 a_n71_n2259# q_a3 vdd w_n84_n2245# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1088 prop_2 a_n98_n1900# a_n59_n1896# w_n72_n1902# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1089 a_3952_n2263# c1 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1090 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1091 gnd a_n98_n1955# a_n31_n1949# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1092 a_3810_n3235# prop_4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1093 gnd a_n71_n2314# a_n4_n2308# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1094 a_n32_n2255# a_n71_n2314# prop_3 w_n45_n2261# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1095 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1096 a_3849_n3176# c3 vdd w_3836_n3182# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1097 a_n59_n1896# a_n98_n1955# prop_2 w_n72_n1902# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1098 a_3952_n2210# a_3913_n2269# s2 w_3939_n2216# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1099 vdd q_a4 a_396_n2743# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1100 a_n39_n2598# q_a4 vdd w_n52_n2604# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1101 gnd a_3810_n3235# a_3877_n3229# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1102 a_400_n2134# q_b2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1103 a_3873_n1459# prop_1 vdd w_3860_n1445# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1104 vdd q_a1 a_398_n1735# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1105 a_3849_n3176# a_3810_n3235# s4 w_3836_n3182# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1106 gen_3 a_408_n2377# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1107 a_3873_n1404# carry_0 vdd w_3860_n1390# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1108 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1109 a_n59_n1949# q_a2 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1110 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1111 a_3853_n2699# prop_3 vdd w_3840_n2685# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1112 a_n98_n1900# q_a2 vdd w_n111_n1886# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1113 a_396_n2743# q_a4 a_396_n2792# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1114 s2 a_3913_n2214# a_3952_n2210# w_3939_n2216# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1115 vdd q_b4 a_n39_n2598# w_n52_n2604# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 a_3877_n3229# a_3810_n3180# s4 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1117 gnd a_3873_n1459# a_3940_n1453# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1118 a_398_n1735# q_a1 a_398_n1784# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1119 s4 a_3810_n3180# a_3849_n3176# w_3836_n3182# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1120 gen_1 a_398_n1735# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1121 a_n39_n2598# a_n78_n2657# prop_4 w_n52_n2604# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1123 prop_2 q_b2 a_n59_n1949# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1124 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1125 a_n59_n1896# q_a2 vdd w_n72_n1902# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1126 a_3853_n2644# c2 vdd w_3840_n2630# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1127 gnd a_3853_n2699# a_3920_n2693# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1128 a_3913_n2269# prop_2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1129 a_3810_n3180# c3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1130 vdd prop_2 a_3952_n2210# w_3939_n2216# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1131 a_3940_n1453# a_3873_n1404# s1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1132 a_3810_n3235# prop_4 vdd w_3797_n3221# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1133 s1 prop_1 a_3912_n1453# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1134 vdd q_b2 a_n59_n1896# w_n72_n1902# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1135 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 a_3920_n2693# a_3853_n2644# s3 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1137 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1138 a_3913_n2214# c1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1139 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1140 a_n22_n1590# a_n89_n1541# prop_1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1141 s3 prop_3 a_3892_n2693# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1142 a_3952_n2210# c1 vdd w_3939_n2216# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1143 a_n89_n1596# q_b1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
C0 q_a1 vdd 0.18fF
C1 w_3900_n2255# prop_2 0.23fF
C2 w_3899_n1406# prop_1 0.06fF
C3 vdd clock_in 0.74fF
C4 gnd a_3810_n3235# 0.20fF
C5 w_n63_n1543# q_a1 0.06fF
C6 w_n111_n1886# vdd 0.09fF
C7 a_n78_n2602# a_n78_n2657# 0.08fF
C8 carry_0 vdd 0.11fF
C9 prop_1 pdr1 0.02fF
C10 carry_0 prop1_car0 0.02fF
C11 w_3879_n2646# vdd 0.12fF
C12 a_n78_n2657# q_b4 0.22fF
C13 a_3912_n1400# s1 0.45fF
C14 w_n84_n2245# vdd 0.09fF
C15 w_n91_n2588# a_n78_n2602# 0.03fF
C16 a_n71_n2259# vdd 0.15fF
C17 a_n78_n2602# prop_4 0.06fF
C18 a_n50_n1537# vdd 0.93fF
C19 w_3939_n2216# c1 0.06fF
C20 w_3836_n3182# a_3810_n3180# 0.06fF
C21 a_3913_n2214# a_3913_n2269# 0.08fF
C22 prop_2 a_3952_n2210# 0.12fF
C23 a_n98_n1900# prop_2 0.06fF
C24 a_3853_n2699# s3 0.52fF
C25 w_n63_n1543# a_n50_n1537# 0.16fF
C26 w_n72_n1902# prop_2 0.02fF
C27 pdr3 c3 0.07fF
C28 c2 gnd 0.22fF
C29 q_b2 vdd 0.17fF
C30 pdr4 clock_car0 1.03fF
C31 c3 prop_4 0.09fF
C32 pdr1 gnd 0.05fF
C33 a_3873_n1404# gnd 0.17fF
C34 vdd c2 0.48fF
C35 a_3913_n2269# s2 0.52fF
C36 a_3873_n1459# vdd 0.15fF
C37 w_n102_n1527# q_a1 0.06fF
C38 w_n102_n1582# vdd 0.06fF
C39 c1 vdd 0.11fF
C40 a_398_n1735# gnd 0.05fF
C41 q_b3 vdd 0.17fF
C42 w_3840_n2630# vdd 0.09fF
C43 q_a1 a_398_n1735# 0.20fF
C44 w_3879_n2646# c2 0.06fF
C45 a_n39_n2598# q_b4 0.12fF
C46 a_3853_n2644# s3 0.06fF
C47 prop_3 a_3853_n2699# 0.22fF
C48 a_3873_n1404# s1 0.06fF
C49 w_3939_n2216# vdd 0.12fF
C50 clk_org clock_in 0.07fF
C51 a_3873_n1404# carry_0 0.27fF
C52 a_n98_n1900# q_a2 0.27fF
C53 prop_2 gnd 0.27fF
C54 gen_1 gnd 0.14fF
C55 a_3810_n3235# s4 0.52fF
C56 gen_3 gnd 0.14fF
C57 w_n72_n1902# q_a2 0.06fF
C58 a_n89_n1541# vdd 0.15fF
C59 w_3900_n2200# c1 0.06fF
C60 w_3797_n3166# a_3810_n3180# 0.03fF
C61 q_a4 vdd 0.18fF
C62 a_3892_n2640# s3 0.45fF
C63 w_3836_n3182# c3 0.06fF
C64 w_n63_n1543# a_n89_n1541# 0.06fF
C65 w_n84_n2300# a_n71_n2314# 0.03fF
C66 pdr4 gen_4 0.02fF
C67 a_n78_n2657# gnd 0.20fF
C68 a_n71_n2314# prop_3 0.52fF
C69 pdr2 c2 0.07fF
C70 gen_4 gnd 0.14fF
C71 c3 a_3810_n3180# 0.27fF
C72 a_3853_n2644# prop_3 0.20fF
C73 a_n89_n1596# q_b1 0.22fF
C74 gnd c3 0.21fF
C75 pdr2 clock_car0 1.03fF
C76 pdr3 pdr4 1.03fF
C77 a_3952_n2210# s2 0.45fF
C78 c4 gnd 0.21fF
C79 a_n98_n1900# a_n98_n1955# 0.08fF
C80 pdr4 prop_4 0.02fF
C81 a_3912_n1400# vdd 0.93fF
C82 q_a2 a_400_n2085# 0.20fF
C83 w_n63_n1543# vdd 0.12fF
C84 q_a2 gnd 0.22fF
C85 w_n72_n1902# a_n98_n1955# 0.06fF
C86 vdd a_3810_n3235# 0.15fF
C87 prop_4 gnd 0.27fF
C88 a_n71_n2314# q_a3 0.06fF
C89 w_n91_n2643# vdd 0.06fF
C90 a_n89_n1596# prop_1 0.52fF
C91 vdd pdr3 0.68fF
C92 q_b1 gnd 0.16fF
C93 w_3840_n2630# c2 0.06fF
C94 a_n78_n2602# q_b4 0.20fF
C95 a_3853_n2644# a_3853_n2699# 0.08fF
C96 prop_3 a_3892_n2640# 0.12fF
C97 w_n111_n1941# q_b2 0.23fF
C98 a_3873_n1404# a_3873_n1459# 0.08fF
C99 w_3900_n2200# vdd 0.09fF
C100 w_3900_n2255# a_3913_n2269# 0.03fF
C101 q_b1 q_a1 0.33fF
C102 a_3913_n2214# gnd 0.17fF
C103 pdr2 prop_2 0.02fF
C104 a_3849_n3176# s4 0.45fF
C105 a_408_n2377# gnd 0.05fF
C106 w_n111_n1886# q_a2 0.06fF
C107 prop_1 gnd 0.27fF
C108 s3 gnd 0.16fF
C109 w_3840_n2685# prop_3 0.23fF
C110 w_3797_n3166# c3 0.06fF
C111 w_n102_n1527# a_n89_n1541# 0.03fF
C112 c1 prop_2 0.09fF
C113 w_n45_n2261# prop_3 0.02fF
C114 s2 gnd 0.16fF
C115 a_n98_n1955# gnd 0.20fF
C116 a_n32_n2255# prop_3 0.45fF
C117 a_396_n2743# gnd 0.05fF
C118 prop_1 carry_0 0.09fF
C119 w_n52_n2604# q_a4 0.06fF
C120 c2 vdd 0.11fF
C121 w_3939_n2216# prop_2 0.06fF
C122 a_n50_n1537# q_b1 0.12fF
C123 w_3840_n2685# a_3853_n2699# 0.03fF
C124 w_3879_n2646# s3 0.02fF
C125 a_3873_n1404# vdd 0.15fF
C126 pdr2 pdr3 1.03fF
C127 prop1_car0 clock_car0 1.03fF
C128 w_n45_n2261# q_a3 0.06fF
C129 w_n102_n1527# vdd 0.09fF
C130 w_n72_n1902# a_n59_n1896# 0.16fF
C131 clock_car0 clock_in 0.02fF
C132 pdr4 gnd 0.05fF
C133 a_3810_n3180# gnd 0.17fF
C134 vdd a_3849_n3176# 0.93fF
C135 q_b2 q_a2 0.33fF
C136 w_n52_n2604# vdd 0.12fF
C137 prop_3 gnd 0.27fF
C138 a_n50_n1537# prop_1 0.45fF
C139 a_398_n1735# vdd 0.44fF
C140 w_n111_n1941# vdd 0.06fF
C141 w_3860_n1445# a_3873_n1459# 0.03fF
C142 w_3899_n1406# s1 0.02fF
C143 vdd pdr1 0.68fF
C144 w_3899_n1406# carry_0 0.06fF
C145 prop_2 vdd 0.10fF
C146 gen_1 vdd 0.28fF
C147 q_a3 gnd 0.27fF
C148 gen_3 vdd 0.28fF
C149 w_n102_n1582# q_b1 0.23fF
C150 a_3853_n2699# gnd 0.20fF
C151 w_3879_n2646# prop_3 0.06fF
C152 a_n78_n2657# q_a4 0.06fF
C153 w_n45_n2261# a_n71_n2314# 0.06fF
C154 c1 a_3913_n2214# 0.27fF
C155 a_3913_n2269# gnd 0.20fF
C156 a_n78_n2602# gnd 0.17fF
C157 a_3873_n1459# prop_1 0.22fF
C158 q_b3 a_408_n2377# 0.20fF
C159 a_n71_n2259# prop_3 0.06fF
C160 a_n98_n1955# q_b2 0.22fF
C161 w_n91_n2588# q_a4 0.06fF
C162 a_n78_n2657# vdd 0.15fF
C163 a_n89_n1541# q_b1 0.20fF
C164 w_3939_n2216# a_3913_n2214# 0.06fF
C165 gen_4 vdd 0.28fF
C166 q_b4 gnd 0.16fF
C167 w_3879_n2646# a_3853_n2699# 0.06fF
C168 w_3797_n3221# vdd 0.06fF
C169 w_n84_n2245# q_a3 0.06fF
C170 w_3860_n1445# vdd 0.06fF
C171 w_n72_n1902# a_n98_n1900# 0.06fF
C172 a_n71_n2314# gnd 0.20fF
C173 a_n71_n2259# q_a3 0.27fF
C174 w_n91_n2588# vdd 0.09fF
C175 pdr1 pdr2 1.03fF
C176 a_3853_n2644# gnd 0.17fF
C177 a_n89_n1541# prop_1 0.06fF
C178 q_a2 vdd 0.18fF
C179 pdr4 c4 0.07fF
C180 pdr2 gnd 0.05fF
C181 vdd prop_4 0.10fF
C182 c3 gnd 0.22fF
C183 w_n91_n2643# a_n78_n2657# 0.03fF
C184 w_3899_n1406# a_3873_n1459# 0.06fF
C185 w_3939_n2216# s2 0.02fF
C186 w_3797_n3221# a_3810_n3235# 0.03fF
C187 w_3836_n3182# s4 0.02fF
C188 q_b1 vdd 0.17fF
C189 w_3860_n1390# carry_0 0.06fF
C190 vdd c3 0.48fF
C191 a_400_n2085# gen_2 0.05fF
C192 w_n84_n2300# q_b3 0.23fF
C193 vdd c4 0.48fF
C194 gen_2 gnd 0.14fF
C195 a_3913_n2214# vdd 0.15fF
C196 pdr1 c1 0.07fF
C197 a_3810_n3180# s4 0.06fF
C198 prop_4 a_3810_n3235# 0.22fF
C199 a_408_n2377# vdd 0.44fF
C200 gnd c1 0.21fF
C201 w_n63_n1543# q_b1 0.06fF
C202 prop_1 vdd 0.10fF
C203 w_3879_n2646# a_3853_n2644# 0.06fF
C204 clk_org gnd 0.05fF
C205 w_n45_n2261# a_n32_n2255# 0.16fF
C206 q_a4 a_396_n2743# 0.20fF
C207 a_n98_n1900# gnd 0.17fF
C208 a_n71_n2259# a_n71_n2314# 0.08fF
C209 a_3912_n1400# prop_1 0.12fF
C210 w_n63_n1543# prop_1 0.02fF
C211 a_n59_n1896# q_b2 0.12fF
C212 a_398_n1735# gen_1 0.05fF
C213 a_n98_n1955# vdd 0.15fF
C214 w_3900_n2200# a_3913_n2214# 0.03fF
C215 a_n39_n2598# vdd 0.93fF
C216 q_a3 q_b3 0.33fF
C217 a_396_n2743# vdd 0.44fF
C218 w_3879_n2646# a_3892_n2640# 0.16fF
C219 w_3836_n3182# vdd 0.12fF
C220 w_3899_n1406# vdd 0.12fF
C221 c1 a_3913_n2269# 0.06fF
C222 w_n111_n1886# a_n98_n1900# 0.03fF
C223 w_n84_n2300# vdd 0.06fF
C224 a_n89_n1596# gnd 0.20fF
C225 vdd a_3810_n3180# 0.15fF
C226 w_n52_n2604# a_n78_n2657# 0.06fF
C227 w_3899_n1406# a_3912_n1400# 0.16fF
C228 prop1_car0 pdr1 1.03fF
C229 prop_3 vdd 0.10fF
C230 w_3939_n2216# a_3913_n2269# 0.06fF
C231 a_n89_n1596# q_a1 0.06fF
C232 w_3836_n3182# a_3810_n3235# 0.06fF
C233 pdr3 clock_car0 1.03fF
C234 clock_in gnd 0.21fF
C235 a_400_n2085# gnd 0.05fF
C236 pdr2 gen_2 0.02fF
C237 a_3810_n3180# a_3810_n3235# 0.08fF
C238 prop_4 a_3849_n3176# 0.12fF
C239 a_n71_n2314# q_b3 0.22fF
C240 w_n52_n2604# prop_4 0.02fF
C241 vdd pdr4 0.68fF
C242 q_a1 gnd 0.22fF
C243 w_3840_n2630# a_3853_n2644# 0.03fF
C244 a_n78_n2602# q_a4 0.27fF
C245 q_a3 vdd 0.18fF
C246 w_n45_n2261# a_n71_n2259# 0.06fF
C247 a_3853_n2699# vdd 0.15fF
C248 q_b4 q_a4 0.33fF
C249 a_3873_n1404# prop_1 0.20fF
C250 s1 gnd 0.16fF
C251 pdr3 gen_3 0.02fF
C252 a_n98_n1900# q_b2 0.20fF
C253 a_3913_n2269# vdd 0.15fF
C254 a_n59_n1896# vdd 0.93fF
C255 carry_0 gnd 0.22fF
C256 a_n78_n2602# vdd 0.15fF
C257 w_n72_n1902# q_b2 0.06fF
C258 w_3797_n3166# vdd 0.09fF
C259 q_b4 vdd 0.17fF
C260 w_3860_n1390# vdd 0.09fF
C261 a_3913_n2214# prop_2 0.20fF
C262 a_n71_n2259# gnd 0.17fF
C263 w_3900_n2255# vdd 0.06fF
C264 a_408_n2377# gen_3 0.05fF
C265 w_n52_n2604# a_n39_n2598# 0.16fF
C266 a_n71_n2314# vdd 0.15fF
C267 w_3899_n1406# a_3873_n1404# 0.06fF
C268 w_3939_n2216# a_3952_n2210# 0.16fF
C269 a_3853_n2644# vdd 0.15fF
C270 a_n78_n2657# prop_4 0.52fF
C271 w_n111_n1941# a_n98_n1955# 0.03fF
C272 w_3836_n3182# a_3849_n3176# 0.16fF
C273 c3 vdd 0.11fF
C274 c2 prop_3 0.09fF
C275 gnd c2 0.21fF
C276 w_n91_n2643# q_b4 0.23fF
C277 w_3797_n3221# prop_4 0.23fF
C278 pdr1 clock_car0 1.03fF
C279 w_n45_n2261# q_b3 0.06fF
C280 clock_car0 gnd 1.03fF
C281 a_n98_n1955# prop_2 0.52fF
C282 a_n32_n2255# q_b3 0.12fF
C283 w_n102_n1582# a_n89_n1596# 0.03fF
C284 q_b2 gnd 0.16fF
C285 gen_2 vdd 0.28fF
C286 c3 a_3810_n3235# 0.06fF
C287 a_3892_n2640# vdd 0.93fF
C288 w_n84_n2245# a_n71_n2259# 0.03fF
C289 vdd pdr2 0.68fF
C290 c2 a_3853_n2699# 0.06fF
C291 a_3873_n1459# gnd 0.20fF
C292 w_3860_n1445# prop_1 0.23fF
C293 a_3952_n2210# vdd 0.93fF
C294 c1 gnd 0.22fF
C295 a_n98_n1900# vdd 0.15fF
C296 gnd s4 0.16fF
C297 gen_1 pdr1 0.02fF
C298 q_b3 gnd 0.11fF
C299 a_n89_n1541# a_n89_n1596# 0.08fF
C300 w_n72_n1902# vdd 0.12fF
C301 vdd c1 0.48fF
C302 w_3840_n2685# vdd 0.06fF
C303 a_396_n2743# gen_4 0.05fF
C304 a_3873_n1459# s1 0.52fF
C305 vdd clk_org 0.06fF
C306 w_n45_n2261# vdd 0.12fF
C307 a_3873_n1459# carry_0 0.06fF
C308 a_n89_n1541# gnd 0.17fF
C309 a_n98_n1955# q_a2 0.06fF
C310 w_n52_n2604# a_n78_n2602# 0.06fF
C311 a_n32_n2255# vdd 0.93fF
C312 w_3860_n1390# a_3873_n1404# 0.03fF
C313 a_n39_n2598# prop_4 0.45fF
C314 a_n89_n1541# q_a1 0.27fF
C315 a_n89_n1596# vdd 0.15fF
C316 q_a4 gnd 0.22fF
C317 c2 a_3853_n2644# 0.27fF
C318 w_n52_n2604# q_b4 0.06fF
C319 w_3836_n3182# prop_4 0.06fF
C320 a_3913_n2214# s2 0.06fF
C321 prop_2 a_3913_n2269# 0.22fF
C322 a_n59_n1896# prop_2 0.45fF
C323 a_n71_n2259# q_b3 0.20fF
C324 w_n63_n1543# a_n89_n1596# 0.06fF
C325 a_400_n2085# vdd 0.44fF
C326 pdr3 prop_3 0.02fF
C327 pdr3 gnd 0.05fF
C328 vdd gnd 2.00fF
C329 a_3810_n3180# prop_4 0.20fF
C330 s4 Gnd 0.05fF
C331 a_3810_n3235# Gnd 0.23fF
C332 a_3849_n3176# Gnd 0.02fF
C333 gnd Gnd 3.87fF
C334 prop_4 Gnd 1.86fF
C335 a_3810_n3180# Gnd 0.02fF
C336 vdd Gnd 11.55fF
C337 c3 Gnd 1.24fF
C338 gen_4 Gnd 0.27fF
C339 a_396_n2743# Gnd 0.29fF
C340 q_a4 Gnd 0.68fF
C341 q_b4 Gnd 1.41fF
C342 s3 Gnd 0.41fF
C343 a_3853_n2699# Gnd 0.05fF
C344 a_3892_n2640# Gnd 0.06fF
C345 prop_3 Gnd 1.15fF
C346 a_3853_n2644# Gnd 0.49fF
C347 c2 Gnd 1.24fF
C348 a_n78_n2657# Gnd 0.49fF
C349 a_n39_n2598# Gnd 0.06fF
C350 a_n78_n2602# Gnd 0.05fF
C351 gen_3 Gnd 0.28fF
C352 a_408_n2377# Gnd 0.29fF
C353 q_b3 Gnd 0.76fF
C354 q_a3 Gnd 0.71fF
C355 a_n71_n2314# Gnd 0.05fF
C356 a_n32_n2255# Gnd 0.06fF
C357 a_n71_n2259# Gnd 0.04fF
C358 s2 Gnd 0.01fF
C359 a_3913_n2269# Gnd 0.05fF
C360 a_3952_n2210# Gnd 0.06fF
C361 prop_2 Gnd 0.83fF
C362 a_3913_n2214# Gnd 0.05fF
C363 c1 Gnd 0.55fF
C364 gen_2 Gnd 0.28fF
C365 a_400_n2085# Gnd 0.29fF
C366 q_a2 Gnd 0.74fF
C367 q_b2 Gnd 1.46fF
C368 gnd Gnd 0.77fF
C369 clock_in Gnd 1.75fF
C370 c4 Gnd 0.06fF
C371 clock_car0 Gnd 0.77fF
C372 pdr4 Gnd 0.57fF
C373 pdr3 Gnd 0.68fF
C374 pdr2 Gnd 0.68fF
C375 pdr1 Gnd 0.70fF
C376 prop1_car0 Gnd 0.26fF
C377 a_n98_n1955# Gnd 0.49fF
C378 a_n59_n1896# Gnd 0.06fF
C379 a_n98_n1900# Gnd 0.05fF
C380 gen_1 Gnd 0.27fF
C381 carry_0 Gnd 0.72fF
C382 prop_1 Gnd 0.49fF
C383 clk_org Gnd 0.25fF
C384 a_398_n1735# Gnd 0.29fF
C385 q_a1 Gnd 0.67fF
C386 q_b1 Gnd 1.37fF
C387 a_n89_n1596# Gnd 0.23fF
C388 a_n50_n1537# Gnd 0.06fF
C389 a_n89_n1541# Gnd 0.05fF
C390 s1 Gnd 0.41fF
C391 a_3873_n1459# Gnd 0.03fF
C392 a_3912_n1400# Gnd 0.06fF
C393 a_3873_n1404# Gnd 0.05fF
C394 w_3797_n3221# Gnd 0.58fF
C395 w_3836_n3182# Gnd 0.38fF
C396 w_3797_n3166# Gnd 0.58fF
C397 w_3840_n2685# Gnd 0.53fF
C398 w_3879_n2646# Gnd 2.28fF
C399 w_3840_n2630# Gnd 0.36fF
C400 w_n91_n2643# Gnd 0.41fF
C401 w_n52_n2604# Gnd 2.28fF
C402 w_n91_n2588# Gnd 0.41fF
C403 w_n84_n2300# Gnd 0.53fF
C404 w_3900_n2255# Gnd 0.58fF
C405 w_n45_n2261# Gnd 2.28fF
C406 w_n84_n2245# Gnd 0.58fF
C407 w_3939_n2216# Gnd 2.28fF
C408 w_3900_n2200# Gnd 0.41fF
C409 w_n111_n1941# Gnd 0.41fF
C410 vdd Gnd 13.23fF
C411 w_n72_n1902# Gnd 2.28fF
C412 w_n111_n1886# Gnd 0.41fF
C413 w_n102_n1582# Gnd 0.58fF
C414 w_n63_n1543# Gnd 2.28fF
C415 w_n102_n1527# Gnd 0.41fF
C416 w_3860_n1445# Gnd 0.58fF
C417 w_3899_n1406# Gnd 2.28fF
C418 w_3860_n1390# Gnd 0.41fF




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