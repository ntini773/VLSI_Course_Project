* SPICE3 file created from just_carry.ext - technology: scmosTrying

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

M1000 a_2294_n1864# a_2286_n1817# gnd Gnd CMOSN w=20 l=2
+  ad=160 pd=56 as=3000 ps=1600
M1001 prop_3 a_146_n2237# a_142_n2261# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=160 ps=56
M1002 vdd q_a2 a_n269_n2100# vdd CMOSP w=20 l=2
+  ad=6000 pd=2840 as=180 ps=58
M1003 a_n269_n2100# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 a_103_n1912# q_a2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1005 a_2246_n1899# prop_2 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1006 vdd a_147_n2540# a_143_n2508# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=720 ps=276
M1007 a_95_n2599# q_a4 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1008 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=1000 ps=420
M1009 prop_3 a_95_n2204# a_142_n2205# vdd CMOSP w=40 l=2
+  ad=320 pd=96 as=720 ps=276
M1010 a_90_n1566# q_a1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1011 a_n271_n1750# q_a1 a_n271_n1799# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1012 s4 a_2264_n2509# a_2311_n2510# vdd CMOSP w=40 l=2
+  ad=320 pd=96 as=720 ps=276
M1013 a_2311_n2510# a_2303_n2519# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 gnd a_102_n2004# a_194_n1969# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1015 a_2297_n1490# a_2249_n1581# s1 vdd CMOSP w=40 l=2
+  ad=720 pd=276 as=320 ps=96
M1016 vdd a_2298_n1840# a_2294_n1808# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=720 ps=276
M1017 a_137_n1567# a_89_n1658# prop_1 vdd CMOSP w=40 l=2
+  ad=720 pd=276 as=320 ps=96
M1018 a_142_n2261# a_134_n2214# gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 gen_4 a_n273_n2758# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1020 a_n261_n2441# q_a3 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1021 gen_1 a_n271_n1750# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1022 a_n273_n2758# q_a4 a_n273_n2807# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1023 a_2247_n1807# c1 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1024 a_150_n1913# a_102_n2004# prop_2 vdd CMOSP w=40 l=2
+  ad=720 pd=276 as=320 ps=96
M1025 a_143_n2508# a_135_n2517# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1026 a_2296_n2233# a_2288_n2186# gnd Gnd CMOSN w=20 l=2
+  ad=160 pd=56 as=0 ps=0
M1027 a_96_n2507# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1028 a_n269_n2100# q_a2 a_n269_n2149# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1029 a_n269_n2149# q_b2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1030 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1031 s1 a_2301_n1522# a_2297_n1546# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=160 ps=56
M1032 a_2248_n2268# prop_3 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1033 s1 a_2250_n1489# a_2297_n1490# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1034 prop_1 a_141_n1599# a_137_n1623# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=160 ps=56
M1035 prop_2 a_154_n1945# a_150_n1969# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=160 ps=56
M1036 prop_1 a_90_n1566# a_137_n1567# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1037 vdd a_2300_n2209# a_2296_n2177# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=720 ps=276
M1038 gen_2 a_n269_n2100# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1039 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=2000 ps=890
M1040 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1041 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1042 vdd a_154_n1945# a_150_n1913# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1043 a_2263_n2601# prop_4 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1044 a_2249_n2176# c2 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1045 a_137_n1623# a_129_n1576# gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1046 a_150_n1969# a_142_n1922# gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1047 a_194_n1969# a_103_n1912# prop_2 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1048 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1049 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1050 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1051 a_2294_n1808# a_2286_n1817# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1052 vdd q_b3 a_n261_n2392# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=180 ps=58
M1053 vdd a_146_n2237# a_142_n2205# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 a_94_n2296# q_b3 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1055 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1056 a_150_n1913# a_142_n1922# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1057 prop_2 a_103_n1912# a_150_n1913# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1058 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1059 a_2264_n2509# c3 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1060 gen_1 a_n271_n1750# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1061 a_2297_n1546# a_2289_n1499# gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1062 a_2296_n2177# a_2288_n2186# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1063 gnd a_95_n2599# a_187_n2564# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1064 a_142_n2205# a_134_n2214# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1065 a_2249_n1581# prop_1 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1066 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1067 vdd a_2301_n1522# a_2297_n1490# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1068 gen_2 a_n269_n2100# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1069 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=1000 pd=420 as=1500 ps=630
M1070 vdd a_141_n1599# a_137_n1567# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1071 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1072 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1073 a_n261_n2392# q_b3 a_n261_n2441# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1074 a_102_n2004# q_b2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1075 gnd a_2246_n1899# a_2338_n1864# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1076 a_89_n1658# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1077 a_187_n2564# a_96_n2507# prop_4 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1078 a_2250_n1489# carry_0 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1079 a_2246_n1899# prop_2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1080 a_137_n1567# a_129_n1576# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1081 a_95_n2599# q_a4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1082 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1083 a_2263_n2601# prop_4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1084 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1085 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1086 a_2338_n1864# a_2247_n1807# s2 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1087 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1088 gen_4 a_n273_n2758# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1089 a_90_n1566# q_a1 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1090 gnd a_2248_n2268# a_2340_n2233# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1091 a_2297_n1490# a_2289_n1499# vdd vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1092 a_102_n2004# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1093 a_2249_n1581# prop_1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1094 a_n273_n2758# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1095 a_2248_n2268# prop_3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1096 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1097 a_n271_n1750# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1098 a_2247_n1807# c1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1099 a_95_n2204# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1100 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1101 s4 a_2315_n2542# a_2311_n2566# Gnd CMOSN w=20 l=2
+  ad=200 pd=100 as=160 ps=56
M1102 a_96_n2507# q_b4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1103 gnd a_94_n2296# a_186_n2261# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1104 gnd a_2263_n2601# a_2355_n2566# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1105 gen_3 a_n261_n2392# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1106 a_2340_n2233# a_2249_n2176# s3 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=200 ps=100
M1107 a_143_n2508# a_95_n2599# prop_4 vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=320 ps=96
M1108 a_n271_n1799# q_b1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1109 prop_4 a_147_n2540# a_143_n2564# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1110 a_103_n1912# q_a2 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1111 a_2249_n2176# c2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1112 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1113 a_2294_n1808# a_2246_n1899# s2 vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=320 ps=96
M1114 a_2355_n2566# a_2264_n2509# s4 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1115 a_2311_n2566# a_2303_n2519# gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 a_186_n2261# a_95_n2204# prop_3 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1117 a_n273_n2807# q_b4 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1118 prop_4 a_96_n2507# a_143_n2508# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1119 a_94_n2296# q_b3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1120 s2 a_2298_n1840# a_2294_n1864# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1122 a_143_n2564# a_135_n2517# gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1123 gnd a_2249_n1581# a_2341_n1546# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1124 gnd a_89_n1658# a_181_n1623# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=160 ps=56
M1125 s2 a_2247_n1807# a_2294_n1808# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1126 a_2296_n2177# a_2248_n2268# s3 vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=320 ps=96
M1127 a_2264_n2509# c3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1128 a_2341_n1546# a_2250_n1489# s1 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1129 s3 a_2300_n2209# a_2296_n2233# Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1130 a_181_n1623# a_90_n1566# prop_1 Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1131 s3 a_2249_n2176# a_2296_n2177# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1132 a_95_n2204# q_a3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1133 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1134 gen_3 a_n261_n2392# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1135 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1136 a_89_n1658# q_b1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1137 a_2311_n2510# a_2263_n2601# s4 vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1138 vdd a_2315_n2542# a_2311_n2510# vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1139 a_n261_n2392# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1140 a_142_n2205# a_94_n2296# prop_3 vdd CMOSP w=40 l=2
+  ad=0 pd=0 as=0 ps=0
M1141 a_2250_n1489# carry_0 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1142 vdd q_a1 a_n271_n1750# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1143 vdd q_a4 a_n273_n2758# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
C0 vdd a_2250_n1489# 0.35fF
C1 pdr2 gen_2 0.02fF
C2 vdd a_2286_n1817# 0.17fF
C3 a_96_n2507# a_147_n2540# 0.08fF
C4 a_2250_n1489# gnd 0.20fF
C5 a_141_n1599# a_89_n1658# 0.16fF
C6 a_2286_n1817# gnd 0.02fF
C7 a_n271_n1750# gen_1 0.05fF
C8 a_147_n2540# a_143_n2508# 0.08fF
C9 vdd pdr4 0.68fF
C10 a_154_n1945# q_b2 0.02fF
C11 a_2250_n1489# a_2249_n1581# 0.79fF
C12 a_2289_n1499# a_2301_n1522# 0.02fF
C13 a_2286_n1817# prop_2 0.01fF
C14 a_2298_n1840# a_2246_n1899# 0.16fF
C15 a_2286_n1817# a_2294_n1808# 0.05fF
C16 a_2247_n1807# s2 0.08fF
C17 a_147_n2540# q_a4 0.02fF
C18 a_2263_n2601# s4 0.46fF
C19 a_142_n1922# a_150_n1913# 0.05fF
C20 a_154_n1945# a_102_n2004# 0.16fF
C21 vdd a_n269_n2100# 0.44fF
C22 pdr2 pdr3 1.03fF
C23 prop1_car0 clock_car0 1.03fF
C24 a_2289_n1499# carry_0 0.02fF
C25 pdr3 gen_3 0.02fF
C26 a_n269_n2100# gnd 0.05fF
C27 a_95_n2204# a_146_n2237# 0.08fF
C28 a_94_n2296# q_b3 0.14fF
C29 a_n273_n2758# gen_4 0.05fF
C30 clock_car0 gnd 1.03fF
C31 vdd a_2247_n1807# 0.35fF
C32 a_96_n2507# a_135_n2517# 0.15fF
C33 vdd a_150_n1913# 1.37fF
C34 a_129_n1576# a_89_n1658# 0.08fF
C35 a_2247_n1807# gnd 0.20fF
C36 a_90_n1566# a_137_n1567# 0.32fF
C37 clk_org gnd 0.05fF
C38 vdd a_137_n1567# 1.37fF
C39 a_135_n2517# a_143_n2508# 0.05fF
C40 q_a2 a_n269_n2100# 0.20fF
C41 a_142_n1922# q_b2 0.01fF
C42 a_2300_n2209# a_2248_n2268# 0.16fF
C43 a_2250_n1489# a_2301_n1522# 0.08fF
C44 a_2247_n1807# a_2294_n1808# 0.32fF
C45 pdr4 gen_4 0.02fF
C46 a_2286_n1817# a_2246_n1899# 0.08fF
C47 a_142_n2205# prop_3 0.78fF
C48 vdd a_95_n2204# 0.35fF
C49 vdd pdr2 0.68fF
C50 a_150_n1913# prop_2 0.78fF
C51 a_135_n2517# q_a4 0.01fF
C52 a_95_n2204# gnd 0.20fF
C53 vdd s4 0.03fF
C54 s4 gnd 0.16fF
C55 a_142_n1922# a_102_n2004# 0.08fF
C56 a_103_n1912# a_150_n1913# 0.32fF
C57 a_2250_n1489# carry_0 0.23fF
C58 vdd gen_1 0.28fF
C59 gen_1 gnd 0.14fF
C60 a_95_n2204# a_134_n2214# 0.15fF
C61 vdd q_b2 0.26fF
C62 pdr1 pdr2 1.03fF
C63 a_146_n2237# q_b3 0.02fF
C64 q_b2 gnd 0.18fF
C65 a_2263_n2601# prop_4 0.14fF
C66 c2 a_2288_n2186# 0.02fF
C67 vdd c2 0.26fF
C68 vdd a_102_n2004# 0.35fF
C69 a_129_n1576# a_141_n1599# 0.02fF
C70 pdr3 gnd 0.05fF
C71 c2 gnd 0.14fF
C72 pdr4 prop_4 0.02fF
C73 a_2248_n2268# s3 0.46fF
C74 a_102_n2004# gnd 0.22fF
C75 a_146_n2237# a_94_n2296# 0.16fF
C76 vdd gen_4 0.28fF
C77 a_2297_n1490# s1 0.78fF
C78 gen_4 gnd 0.14fF
C79 a_2250_n1489# a_2289_n1499# 0.15fF
C80 a_2288_n2186# a_2248_n2268# 0.08fF
C81 pdr2 c2 0.07fF
C82 a_96_n2507# a_143_n2508# 0.32fF
C83 a_2247_n1807# a_2246_n1899# 0.79fF
C84 a_2286_n1817# a_2298_n1840# 0.02fF
C85 vdd a_2248_n2268# 0.35fF
C86 q_b2 q_a2 0.25fF
C87 a_102_n2004# prop_2 0.46fF
C88 vdd q_b3 0.26fF
C89 a_2248_n2268# gnd 0.22fF
C90 vdd a_2311_n2510# 1.37fF
C91 q_b3 gnd 0.13fF
C92 a_95_n2599# prop_4 0.46fF
C93 a_2315_n2542# a_2311_n2510# 0.08fF
C94 vdd c4 0.48fF
C95 vdd c1 0.26fF
C96 a_103_n1912# a_102_n2004# 0.79fF
C97 a_142_n1922# a_154_n1945# 0.02fF
C98 a_90_n1566# prop_1 0.08fF
C99 c1 gnd 0.14fF
C100 vdd c3 0.26fF
C101 vdd prop_1 0.23fF
C102 a_134_n2214# q_b3 0.01fF
C103 vdd a_94_n2296# 0.35fF
C104 c3 gnd 0.14fF
C105 a_129_n1576# q_a1 0.02fF
C106 prop_1 gnd 0.29fF
C107 vdd s1 0.03fF
C108 prop1_car0 pdr1 1.03fF
C109 a_94_n2296# gnd 0.22fF
C110 vdd prop_4 0.23fF
C111 pdr3 clock_car0 1.03fF
C112 a_2315_n2542# prop_4 0.02fF
C113 s1 gnd 0.16fF
C114 c2 a_2249_n2176# 0.23fF
C115 prop_4 gnd 0.29fF
C116 vdd a_n271_n1750# 0.44fF
C117 vdd a_154_n1945# 0.06fF
C118 a_n271_n1750# gnd 0.05fF
C119 a_154_n1945# gnd 0.02fF
C120 a_134_n2214# a_94_n2296# 0.08fF
C121 a_95_n2204# a_142_n2205# 0.32fF
C122 a_2249_n1581# prop_1 0.14fF
C123 vdd a_n273_n2758# 0.44fF
C124 pdr1 gnd 0.05fF
C125 a_2249_n1581# s1 0.46fF
C126 clock_in gnd 0.21fF
C127 a_n273_n2758# gnd 0.05fF
C128 a_2249_n2176# a_2248_n2268# 0.79fF
C129 a_2288_n2186# a_2300_n2209# 0.02fF
C130 a_2247_n1807# a_2298_n1840# 0.08fF
C131 pdr3 prop_3 0.02fF
C132 vdd a_2300_n2209# 0.06fF
C133 a_141_n1599# a_137_n1567# 0.08fF
C134 a_2300_n2209# gnd 0.02fF
C135 vdd a_2263_n2601# 0.35fF
C136 a_2303_n2519# a_2311_n2510# 0.05fF
C137 a_2264_n2509# s4 0.08fF
C138 a_2315_n2542# a_2263_n2601# 0.16fF
C139 a_2263_n2601# gnd 0.22fF
C140 a_103_n1912# a_154_n1945# 0.08fF
C141 a_n269_n2100# gen_2 0.05fF
C142 c3 a_2303_n2519# 0.02fF
C143 vdd a_146_n2237# 0.06fF
C144 gnd c2 0.21fF
C145 q_b3 a_n261_n2392# 0.20fF
C146 vdd a_2297_n1490# 1.37fF
C147 vdd clk_org 0.06fF
C148 vdd s2 0.03fF
C149 a_146_n2237# gnd 0.02fF
C150 a_95_n2204# q_a3 0.23fF
C151 a_2303_n2519# prop_4 0.01fF
C152 s2 gnd 0.16fF
C153 a_89_n1658# prop_1 0.46fF
C154 vdd a_142_n1922# 0.17fF
C155 pdr1 clock_car0 1.03fF
C156 clock_car0 clock_in 0.02fF
C157 vdd q_b1 0.26fF
C158 vdd a_95_n2599# 0.35fF
C159 a_142_n1922# gnd 0.02fF
C160 a_2300_n2209# a_2296_n2177# 0.08fF
C161 a_134_n2214# a_146_n2237# 0.02fF
C162 a_2301_n1522# prop_1 0.02fF
C163 vdd s3 0.03fF
C164 q_b1 gnd 0.18fF
C165 a_95_n2599# gnd 0.22fF
C166 clk_org clock_in 0.07fF
C167 s3 gnd 0.16fF
C168 a_2294_n1808# s2 0.78fF
C169 vdd q_b4 0.33fF
C170 vdd a_90_n1566# 0.35fF
C171 a_2249_n2176# a_2300_n2209# 0.08fF
C172 c1 gnd 0.21fF
C173 q_b4 gnd 0.20fF
C174 a_2247_n1807# a_2286_n1817# 0.15fF
C175 vdd a_2288_n2186# 0.17fF
C176 a_90_n1566# gnd 0.20fF
C177 a_129_n1576# a_137_n1567# 0.05fF
C178 a_2288_n2186# gnd 0.02fF
C179 vdd a_2315_n2542# 0.06fF
C180 gnd c3 0.21fF
C181 a_95_n2204# prop_3 0.08fF
C182 a_2303_n2519# a_2263_n2601# 0.08fF
C183 a_2264_n2509# a_2311_n2510# 0.32fF
C184 vdd gnd 0.38fF
C185 a_2315_n2542# gnd 0.02fF
C186 a_103_n1912# a_142_n1922# 0.15fF
C187 a_142_n1922# q_a2 0.02fF
C188 c3 a_2264_n2509# 0.23fF
C189 a_147_n2540# a_95_n2599# 0.16fF
C190 vdd a_134_n2214# 0.17fF
C191 vdd pdr3 0.68fF
C192 vdd gen_3 0.28fF
C193 vdd a_2249_n1581# 0.35fF
C194 vdd prop_2 0.23fF
C195 vdd a_2294_n1808# 1.37fF
C196 a_134_n2214# gnd 0.02fF
C197 a_2296_n2177# s3 0.78fF
C198 gen_3 gnd 0.14fF
C199 a_2249_n1581# gnd 0.22fF
C200 q_a3 q_b3 0.25fF
C201 prop_2 gnd 0.29fF
C202 vdd a_103_n1912# 0.35fF
C203 a_103_n1912# gnd 0.20fF
C204 vdd a_147_n2540# 0.06fF
C205 a_2288_n2186# a_2296_n2177# 0.05fF
C206 a_2249_n2176# s3 0.08fF
C207 vdd q_a2 0.33fF
C208 a_2289_n1499# prop_1 0.01fF
C209 vdd a_2296_n2177# 1.37fF
C210 pdr2 prop_2 0.02fF
C211 pdr4 c4 0.07fF
C212 a_147_n2540# gnd 0.02fF
C213 q_a2 gnd 0.14fF
C214 a_2301_n1522# a_2297_n1490# 0.08fF
C215 a_2246_n1899# s2 0.46fF
C216 a_89_n1658# q_b1 0.14fF
C217 a_2249_n2176# a_2288_n2186# 0.15fF
C218 vdd a_2249_n2176# 0.35fF
C219 a_103_n1912# prop_2 0.08fF
C220 pdr4 gnd 0.05fF
C221 a_2249_n2176# gnd 0.20fF
C222 vdd a_2303_n2519# 0.17fF
C223 a_2248_n2268# prop_3 0.14fF
C224 a_146_n2237# a_142_n2205# 0.08fF
C225 a_2264_n2509# a_2263_n2601# 0.79fF
C226 a_2303_n2519# a_2315_n2542# 0.02fF
C227 a_90_n1566# a_89_n1658# 0.79fF
C228 a_2303_n2519# gnd 0.02fF
C229 a_96_n2507# prop_4 0.08fF
C230 a_103_n1912# q_a2 0.23fF
C231 vdd a_89_n1658# 0.35fF
C232 a_135_n2517# a_95_n2599# 0.08fF
C233 a_89_n1658# gnd 0.22fF
C234 vdd a_n261_n2392# 0.44fF
C235 vdd a_2301_n1522# 0.06fF
C236 vdd a_2246_n1899# 0.35fF
C237 a_94_n2296# prop_3 0.46fF
C238 vdd pdr1 0.68fF
C239 a_n261_n2392# gnd 0.05fF
C240 a_143_n2508# prop_4 0.78fF
C241 a_135_n2517# q_b4 0.02fF
C242 a_2301_n1522# gnd 0.02fF
C243 a_2246_n1899# gnd 0.22fF
C244 vdd clock_in 0.74fF
C245 a_2286_n1817# c1 0.02fF
C246 q_a1 a_n271_n1750# 0.20fF
C247 vdd a_135_n2517# 0.17fF
C248 a_2249_n2176# a_2296_n2177# 0.32fF
C249 vdd carry_0 0.26fF
C250 vdd a_142_n2205# 1.37fF
C251 a_135_n2517# gnd 0.02fF
C252 a_n261_n2392# gen_3 0.05fF
C253 carry_0 gnd 0.14fF
C254 a_2289_n1499# a_2297_n1490# 0.05fF
C255 a_2250_n1489# s1 0.08fF
C256 a_2301_n1522# a_2249_n1581# 0.16fF
C257 a_2246_n1899# prop_2 0.14fF
C258 pdr4 clock_car0 1.03fF
C259 a_141_n1599# q_b1 0.02fF
C260 q_a4 a_n273_n2758# 0.20fF
C261 pdr3 c3 0.07fF
C262 gen_1 pdr1 0.02fF
C263 vdd a_2264_n2509# 0.35fF
C264 a_134_n2214# a_142_n2205# 0.05fF
C265 a_2300_n2209# prop_3 0.02fF
C266 vdd c2 0.48fF
C267 a_2264_n2509# a_2315_n2542# 0.08fF
C268 a_90_n1566# a_141_n1599# 0.08fF
C269 pdr2 gnd 0.05fF
C270 a_2264_n2509# gnd 0.20fF
C271 vdd a_141_n1599# 0.06fF
C272 a_135_n2517# a_147_n2540# 0.02fF
C273 a_141_n1599# gnd 0.02fF
C274 vdd a_2289_n1499# 0.17fF
C275 vdd a_2298_n1840# 0.06fF
C276 a_96_n2507# a_95_n2599# 0.79fF
C277 a_2289_n1499# gnd 0.02fF
C278 vdd q_a3 0.33fF
C279 a_2298_n1840# gnd 0.02fF
C280 a_2247_n1807# c1 0.23fF
C281 a_96_n2507# q_b4 0.23fF
C282 q_a3 gnd 0.20fF
C283 vdd c1 0.48fF
C284 q_b1 q_a1 0.25fF
C285 a_102_n2004# q_b2 0.14fF
C286 vdd a_96_n2507# 0.35fF
C287 vdd c3 0.48fF
C288 a_2289_n1499# a_2249_n1581# 0.08fF
C289 a_2250_n1489# a_2297_n1490# 0.32fF
C290 a_2298_n1840# prop_2 0.02fF
C291 a_2298_n1840# a_2294_n1808# 0.08fF
C292 a_134_n2214# q_a3 0.02fF
C293 a_96_n2507# gnd 0.20fF
C294 a_95_n2599# q_a4 0.14fF
C295 a_90_n1566# q_a1 0.23fF
C296 a_129_n1576# q_b1 0.01fF
C297 a_137_n1567# prop_1 0.78fF
C298 pdr1 c1 0.07fF
C299 pdr3 pdr4 1.03fF
C300 pdr2 clock_car0 1.03fF
C301 a_2311_n2510# s4 0.78fF
C302 q_b4 q_a4 0.25fF
C303 vdd q_a1 0.33fF
C304 a_154_n1945# a_150_n1913# 0.08fF
C305 vdd a_143_n2508# 1.37fF
C306 a_2288_n2186# prop_3 0.01fF
C307 vdd gen_2 0.28fF
C308 a_2264_n2509# a_2303_n2519# 0.15fF
C309 q_a1 gnd 0.14fF
C310 a_90_n1566# a_129_n1576# 0.15fF
C311 vdd prop_3 0.23fF
C312 prop_1 pdr1 0.02fF
C313 carry_0 prop1_car0 0.02fF
C314 gen_2 gnd 0.14fF
C315 a_95_n2204# a_94_n2296# 0.79fF
C316 prop_3 gnd 0.29fF
C317 vdd q_a4 0.26fF
C318 vdd a_129_n1576# 0.17fF
C319 c4 gnd 0.21fF
C320 q_a4 gnd 0.13fF
C321 a_129_n1576# gnd 0.02fF
C322 gnd Gnd 1.16fF
C323 gen_4 Gnd 0.31fF
C324 a_n273_n2758# Gnd 0.29fF
C325 q_a4 Gnd 1.78fF
C326 q_b4 Gnd 1.11fF
C327 prop_4 Gnd 1.39fF
C328 s4 Gnd 0.34fF
C329 a_2311_n2510# Gnd 0.12fF
C330 a_2263_n2601# Gnd 0.73fF
C331 a_2315_n2542# Gnd 0.31fF
C332 a_2303_n2519# Gnd 0.27fF
C333 a_2264_n2509# Gnd 0.63fF
C334 a_143_n2508# Gnd 0.12fF
C335 a_95_n2599# Gnd 0.73fF
C336 a_147_n2540# Gnd 0.31fF
C337 a_135_n2517# Gnd 0.27fF
C338 c3 Gnd 0.95fF
C339 a_96_n2507# Gnd 0.63fF
C340 gen_3 Gnd 0.34fF
C341 a_n261_n2392# Gnd 0.20fF
C342 q_b3 Gnd 1.78fF
C343 q_a3 Gnd 0.99fF
C344 prop_3 Gnd 2.12fF
C345 s3 Gnd 0.34fF
C346 a_2296_n2177# Gnd 0.01fF
C347 a_142_n2205# Gnd 0.12fF
C348 a_94_n2296# Gnd 0.73fF
C349 a_146_n2237# Gnd 0.31fF
C350 a_134_n2214# Gnd 0.27fF
C351 a_95_n2204# Gnd 0.63fF
C352 a_2248_n2268# Gnd 0.73fF
C353 a_2300_n2209# Gnd 0.31fF
C354 a_2288_n2186# Gnd 0.27fF
C355 a_2249_n2176# Gnd 0.16fF
C356 c2 Gnd 0.83fF
C357 gen_2 Gnd 0.30fF
C358 a_n269_n2100# Gnd 0.29fF
C359 q_a2 Gnd 1.08fF
C360 q_b2 Gnd 0.95fF
C361 gnd Gnd 0.81fF
C362 prop_2 Gnd 2.11fF
C363 clock_in Gnd 1.78fF
C364 c4 Gnd 0.06fF
C365 c1 Gnd 0.80fF
C366 clock_car0 Gnd 0.77fF
C367 pdr4 Gnd 0.52fF
C368 pdr3 Gnd 0.65fF
C369 pdr2 Gnd 0.65fF
C370 pdr1 Gnd 0.65fF
C371 prop1_car0 Gnd 0.26fF
C372 a_150_n1913# Gnd 0.12fF
C373 a_102_n2004# Gnd 0.73fF
C374 a_154_n1945# Gnd 0.31fF
C375 a_142_n1922# Gnd 0.27fF
C376 a_103_n1912# Gnd 0.63fF
C377 gen_1 Gnd 0.31fF
C378 carry_0 Gnd 1.02fF
C379 prop_1 Gnd 2.11fF
C380 clk_org Gnd 0.24fF
C381 s2 Gnd 0.34fF
C382 a_2294_n1808# Gnd 0.01fF
C383 a_2246_n1899# Gnd 0.73fF
C384 a_2298_n1840# Gnd 0.31fF
C385 a_2286_n1817# Gnd 0.27fF
C386 a_2247_n1807# Gnd 0.16fF
C387 a_n271_n1750# Gnd 0.29fF
C388 q_a1 Gnd 1.14fF
C389 q_b1 Gnd 1.75fF
C390 a_137_n1567# Gnd 0.12fF
C391 a_89_n1658# Gnd 0.73fF
C392 a_141_n1599# Gnd 0.31fF
C393 a_129_n1576# Gnd 0.27fF
C394 a_90_n1566# Gnd 0.63fF
C395 s1 Gnd 0.34fF
C396 a_2297_n1490# Gnd 0.01fF
C397 a_2249_n1581# Gnd 0.73fF
C398 a_2301_n1522# Gnd 0.31fF
C399 a_2289_n1499# Gnd 0.27fF
C400 a_2250_n1489# Gnd 0.16fF
C401 vdd Gnd 11.65fF
C402 vdd Gnd 12.57fF


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