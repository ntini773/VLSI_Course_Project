* SPICE3 file created from without_ff.ext - technology: scmos

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



M1000 a_3687_265# clk_org vdd w_3684_210# CMOSP w=25 l=2
+  ad=125 pd=60 as=4580 ps=2312
M1001 a_4233_991# prop_4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=2240 ps=1336
M1002 a_3687_310# clk_org a_3737_261# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1003 a_3542_320# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1004 gen_4 a_3542_429# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1005 a_3874_1438# carry_0 vdd w_3861_1452# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1006 a_3878_1161# c1 vdd w_3872_1148# CMOSP w=24 l=2
+  ad=432 pd=180 as=0 ps=0
M1007 a_4047_1113# a_4050_1149# s3 w_4041_1100# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1008 a_4226_916# c3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1009 s1 a_3874_1438# a_3913_1442# w_3900_1436# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1010 a_3874_1122# c1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1011 s4 a_4226_916# a_4230_955# w_4224_942# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1012 a_3548_1047# a_3509_988# prop_1 w_3535_1041# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1013 gen_1 a_3547_93# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1014 a_3543_201# q_a2 a_3543_152# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1015 gen_3 a_3542_320# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1016 vdd q_b4 a_3559_646# w_3546_640# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1017 a_4233_991# prop_4 vdd w_4275_903# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1018 pdr4 prop_4 pdr3 Gnd CMOSN w=100 l=2
+  ad=1000 pd=420 as=1500 ps=630
M1019 a_3559_593# q_a4 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1020 a_3874_1383# prop_1 vdd w_3861_1397# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1021 a_3580_718# a_3513_767# prop_3 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1022 a_3543_201# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1023 a_3520_587# q_b4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1024 a_3690_193# cin gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1025 a_3577_862# a_3510_911# prop_2 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1026 a_4295_955# c3 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1027 vdd prop_3 a_4047_1113# w_4041_1100# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1028 vdd clock_in pdr4 vdd CMOSP w=50 l=2
+  ad=2000 pd=890 as=250 ps=110
M1029 prop_3 a_3513_767# a_3552_771# w_3539_765# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1030 a_3943_1189# a_3874_1122# s2 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1031 a_3737_217# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1032 s2 prop_2 a_3943_1161# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1033 a_3549_915# a_3510_856# prop_2 w_3536_909# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1034 a_3509_988# q_b1 vdd w_3496_1002# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1035 a_3548_994# q_a1 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1036 gen_1 a_3547_93# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1037 a_3542_429# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1038 prop_2 q_b2 a_3549_862# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1039 a_3509_988# q_b1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1040 a_3520_587# q_b4 vdd w_3507_601# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1041 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1042 vdd q_a1 a_3547_93# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=180 ps=58
M1043 a_3510_911# q_a2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1044 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1045 prop_1 a_3509_1043# a_3548_1047# w_3535_1041# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1046 pdr1 prop_1 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=1000 ps=420
M1047 vdd clock_in pdr3 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1048 a_3547_93# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1049 s3 a_4043_1074# a_4047_1113# w_4041_1100# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1050 a_3881_1197# prop_2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1051 a_3510_911# q_a2 vdd w_3497_925# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1052 vdd q_b1 a_3548_1047# w_3535_1041# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1053 a_3559_646# q_a4 vdd w_3546_640# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1054 a_3878_1161# a_3881_1197# s2 w_3872_1148# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1055 pdr1 gen_1 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=3000 ps=1260
M1056 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1057 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1058 gnd a_3520_587# a_3587_593# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1059 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1060 pdr2 gen_2 clock_car0 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=0 ps=0
M1061 vdd q_b3 a_3552_771# w_3539_765# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1062 a_4047_1113# c2 vdd w_4041_1100# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1063 prop_3 q_b3 a_3552_718# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1064 a_3513_767# q_a3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1065 vdd q_b3 a_3542_320# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1066 vdd clock_in pdr1 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1067 a_3687_265# a_3690_193# a_3737_217# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1068 pdr3 prop_3 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1069 a_3943_1161# c1 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1070 a_3542_380# q_b4 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1071 prop_2 a_3510_911# a_3549_915# w_3536_909# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1072 vdd q_b2 a_3549_915# w_3536_909# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1073 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1074 gnd a_3509_988# a_3576_994# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1075 a_3559_646# a_3520_587# prop_4 w_3546_640# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1076 a_3513_767# q_a3 vdd w_3500_781# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1077 gnd a_4233_991# a_4295_983# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1078 a_3542_271# q_a3 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1079 a_3549_862# q_a2 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1080 gnd a_4050_1149# a_4112_1141# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1081 a_4043_1074# c2 vdd w_4037_1061# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1082 a_3513_712# q_b3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1083 pdr2 prop_2 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1084 a_3510_856# q_b2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1085 a_3881_1197# prop_2 vdd w_3923_1109# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1086 a_3687_310# a_3687_265# vdd w_3684_254# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1087 vdd q_a2 a_3543_201# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1088 a_4043_1074# c2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1089 pdr3 gen_3 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1090 s1 prop_1 a_3913_1389# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1091 a_3690_185# cin vdd w_3684_172# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1092 vdd prop_4 a_4230_955# w_4224_942# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1093 carry_0 a_3687_310# vdd w_3684_299# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1094 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1095 a_4226_916# c3 vdd w_4220_903# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1096 a_3548_1047# q_a1 vdd w_3535_1041# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1097 a_3513_712# q_b3 vdd w_3500_726# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1098 vdd prop_1 a_3913_1442# w_3900_1436# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1099 s3 prop_3 a_4112_1113# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1100 a_3510_856# q_b2 vdd w_3497_870# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1101 a_3543_152# q_b2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1102 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1103 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1104 gen_4 a_3542_429# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1105 vdd q_a4 a_3542_429# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1106 s2 a_3874_1122# a_3878_1161# w_3872_1148# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1107 carry_0 a_3687_310# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1108 gnd a_3874_1383# a_3941_1389# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1109 gen_3 a_3542_320# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1110 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1111 a_3737_261# a_3687_265# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1112 a_3587_593# a_3520_642# prop_4 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1113 vdd prop_2 a_3878_1161# w_3872_1148# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1114 a_3552_771# q_a3 vdd w_3539_765# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1115 a_4230_955# a_4233_991# s4 w_4224_942# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1116 gen_2 a_3543_201# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1117 a_3552_718# q_a3 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1118 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1119 a_3549_915# q_a2 vdd w_3536_909# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1120 prop_4 q_b4 a_3559_593# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1121 a_3913_1442# a_3874_1383# s1 w_3900_1436# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 gnd a_3513_712# a_3580_718# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1123 a_3509_1043# q_a1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1124 a_3576_994# a_3509_1043# prop_1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1125 a_3547_93# q_a1 a_3547_44# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1126 a_3913_1389# carry_0 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1127 a_4050_1149# prop_3 vdd w_4092_1061# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1128 pdr4 gen_4 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1129 vdd clock_in pdr2 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1130 prop_4 a_3520_642# a_3559_646# w_3546_640# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1131 a_4295_983# a_4226_916# s4 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1132 s4 prop_4 a_4295_955# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1133 a_4112_1141# a_4043_1074# s3 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1134 gnd a_3510_856# a_3577_862# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1135 a_3913_1442# carry_0 vdd w_3900_1436# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1136 a_3520_642# q_a4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1137 a_3552_771# a_3513_712# prop_3 w_3539_765# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1138 gnd a_3881_1197# a_3943_1189# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1139 a_3509_1043# q_a1 vdd w_3496_1057# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1140 a_3690_193# clk_org a_3690_185# w_3684_172# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1141 a_4230_955# c3 vdd w_4224_942# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1142 a_3547_44# q_b1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1143 prop_1 q_b1 a_3548_994# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1144 gen_2 a_3543_201# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1145 a_4112_1113# c2 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1146 a_3874_1122# c1 vdd w_3868_1109# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1147 a_3520_642# q_a4 vdd w_3507_656# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1148 a_3542_429# q_a4 a_3542_380# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1149 a_3941_1389# a_3874_1438# s1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1150 a_4050_1149# prop_3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1151 a_3874_1438# carry_0 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1152 a_3542_320# q_b3 a_3542_271# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1153 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1154 a_3874_1383# prop_1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
C0 clock_in pdr4 0.08fF
C1 carry_0 vdd 0.40fF
C2 prop_2 w_3872_1148# 0.06fF
C3 a_3509_1043# vdd 0.15fF
C4 cin clk_org 0.21fF
C5 a_3520_642# prop_4 0.06fF
C6 a_3690_193# w_3684_210# 0.13fF
C7 prop1_car0 gen_4 0.10fF
C8 pdr1 c1 0.07fF
C9 a_3513_767# gnd 0.17fF
C10 a_3874_1438# w_3900_1436# 0.06fF
C11 q_a2 w_3536_909# 0.06fF
C12 gnd c1 0.21fF
C13 w_3861_1452# a_3874_1438# 0.03fF
C14 a_3510_911# vdd 0.15fF
C15 prop_2 gnd 0.27fF
C16 s4 gnd 0.16fF
C17 pdr3 prop_4 0.26fF
C18 a_3881_1197# prop_2 0.22fF
C19 gnd q_b3 0.11fF
C20 vdd prop_4 0.10fF
C21 q_a4 a_3542_429# 0.20fF
C22 pdr1 vdd 0.68fF
C23 a_3874_1438# s1 0.06fF
C24 pdr3 prop_3 0.02fF
C25 w_3684_210# clk_org 0.06fF
C26 w_3684_172# a_3690_185# 0.01fF
C27 prop_3 a_3513_712# 0.52fF
C28 prop_3 vdd 0.10fF
C29 a_3520_587# prop_4 0.52fF
C30 w_3539_765# a_3513_712# 0.06fF
C31 a_3520_642# q_b4 0.20fF
C32 vdd w_3539_765# 0.12fF
C33 q_a1 a_3509_988# 0.06fF
C34 w_3500_726# q_b3 0.23fF
C35 q_b2 q_a2 1.12fF
C36 pdr3 gnd 0.05fF
C37 a_3913_1442# w_3900_1436# 0.16fF
C38 a_3542_429# gen_4 0.05fF
C39 prop1_car0 clock_car0 1.03fF
C40 a_4233_991# prop_4 0.22fF
C41 c4 gnd 0.21fF
C42 a_3878_1161# s2 0.45fF
C43 pdr2 gen_3 0.10fF
C44 a_3549_915# vdd 0.93fF
C45 a_4043_1074# prop_3 0.20fF
C46 a_3509_988# gnd 0.20fF
C47 a_3543_201# q_a2 0.20fF
C48 w_3539_765# q_a3 0.06fF
C49 w_3497_870# vdd 0.06fF
C50 a_3542_320# q_b3 0.20fF
C51 a_4226_916# gnd 0.17fF
C52 vdd q_b4 0.17fF
C53 a_3690_193# a_3690_185# 0.26fF
C54 a_3913_1442# s1 0.45fF
C55 prop_2 w_3923_1109# 0.23fF
C56 a_3874_1122# w_3872_1148# 0.06fF
C57 vdd c1 0.48fF
C58 a_3737_261# a_3687_310# 0.10fF
C59 a_3687_265# vdd 0.37fF
C60 a_3520_587# q_b4 0.22fF
C61 c1 vdd 0.11fF
C62 prop_3 c2 0.09fF
C63 a_3520_642# vdd 0.15fF
C64 w_4275_903# prop_4 0.23fF
C65 s1 gnd 0.14fF
C66 a_3520_642# a_3520_587# 0.08fF
C67 gnd c2 0.21fF
C68 a_3687_265# w_3684_254# 0.06fF
C69 a_3690_193# gnd 0.24fF
C70 clock_in prop_2 0.09fF
C71 w_4220_903# a_4226_916# 0.03fF
C72 pdr3 vdd 0.68fF
C73 prop_1 a_3874_1438# 0.20fF
C74 gen_4 gen_3 1.07fF
C75 vdd a_3513_712# 0.15fF
C76 c4 vdd 0.48fF
C77 pdr2 prop_4 0.10fF
C78 a_3874_1122# gnd 0.17fF
C79 a_3510_911# w_3536_909# 0.06fF
C80 carry_0 gen_4 0.09fF
C81 a_3520_587# vdd 0.15fF
C82 a_3881_1197# a_3874_1122# 0.08fF
C83 a_3878_1161# prop_2 0.12fF
C84 pdr1 pdr2 1.07fF
C85 pdr2 prop_3 0.24fF
C86 a_4230_955# s4 0.45fF
C87 q_a1 w_3535_1041# 0.06fF
C88 w_3684_254# vdd 0.07fF
C89 a_3874_1438# a_3874_1383# 0.08fF
C90 gnd pdr2 0.05fF
C91 a_4043_1074# vdd 0.15fF
C92 prop_2 a_3510_856# 0.52fF
C93 gnd clk_org 0.29fF
C94 a_3542_429# gnd 0.05fF
C95 a_4233_991# vdd 0.15fF
C96 gen_1 gnd 0.14fF
C97 q_a1 w_3496_1057# 0.06fF
C98 a_3552_771# q_b3 0.12fF
C99 a_3513_712# q_a3 0.06fF
C100 vdd q_a3 0.18fF
C101 q_a2 gnd 0.22fF
C102 a_3513_767# w_3500_781# 0.03fF
C103 prop_1 a_3913_1442# 0.12fF
C104 q_b1 q_a1 1.17fF
C105 q_b2 a_3510_911# 0.20fF
C106 w_3684_299# a_3687_310# 0.06fF
C107 prop1_car0 gen_2 0.11fF
C108 a_3549_915# w_3536_909# 0.16fF
C109 vdd c2 0.48fF
C110 gnd a_3737_217# 0.14fF
C111 carry_0 a_3874_1438# 0.27fF
C112 a_4226_916# c3 0.27fF
C113 vdd c2 0.11fF
C114 prop_1 gnd 0.27fF
C115 q_b1 gnd 0.16fF
C116 a_3559_646# w_3546_640# 0.16fF
C117 w_4275_903# vdd 0.06fF
C118 a_3547_93# vdd 0.44fF
C119 a_4043_1074# c2 0.27fF
C120 pdr1 gen_4 0.10fF
C121 a_3874_1383# gnd 0.20fF
C122 prop_3 a_4050_1149# 0.22fF
C123 q_b2 a_3549_915# 0.12fF
C124 w_4224_942# c3 0.06fF
C125 a_4233_991# w_4275_903# 0.03fF
C126 vdd pdr2 0.68fF
C127 q_b2 w_3497_870# 0.23fF
C128 gnd gen_3 0.14fF
C129 q_a4 q_b4 1.10fF
C130 w_4224_942# a_4230_955# 0.16fF
C131 a_3513_767# q_b3 0.20fF
C132 pdr3 pdr2 1.07fF
C133 gen_1 gen_2 0.36fF
C134 carry_0 gnd 0.35fF
C135 q_a1 a_3509_1043# 0.27fF
C136 clock_in clk_org 0.08fF
C137 a_3520_642# q_a4 0.27fF
C138 a_3520_642# w_3507_656# 0.03fF
C139 w_3684_210# a_3687_265# 0.09fF
C140 w_4041_1100# prop_3 0.06fF
C141 w_3536_909# vdd 0.12fF
C142 a_3509_1043# gnd 0.17fF
C143 pdr1 clock_car0 1.03fF
C144 a_3542_320# gen_3 0.05fF
C145 a_3874_1122# s2 0.06fF
C146 gnd clock_car0 1.03fF
C147 a_3687_310# clk_org 0.36fF
C148 q_a4 vdd 0.18fF
C149 vdd w_3507_656# 0.09fF
C150 pdr2 c2 0.07fF
C151 a_3510_911# gnd 0.17fF
C152 q_a2 a_3510_856# 0.06fF
C153 q_b2 vdd 0.17fF
C154 q_a4 a_3520_587# 0.06fF
C155 w_3684_210# vdd 0.07fF
C156 pdr3 gen_4 0.10fF
C157 gen_4 vdd 0.28fF
C158 vdd a_4050_1149# 0.15fF
C159 s4 a_4226_916# 0.06fF
C160 gnd prop_4 0.27fF
C161 gen_3 gen_2 0.95fF
C162 a_3874_1122# w_3868_1109# 0.03fF
C163 a_3543_201# vdd 0.44fF
C164 prop_3 gnd 0.27fF
C165 c1 w_3872_1148# 0.06fF
C166 carry_0 gen_2 0.10fF
C167 clock_in gen_3 0.09fF
C168 prop_2 prop1_car0 0.10fF
C169 a_4043_1074# a_4050_1149# 0.08fF
C170 prop_3 a_4047_1113# 0.12fF
C171 prop_1 w_3861_1397# 0.23fF
C172 w_4224_942# s4 0.02fF
C173 w_4041_1100# vdd 0.12fF
C174 a_3874_1438# vdd 0.15fF
C175 gnd q_b4 0.16fF
C176 w_3872_1148# vdd 0.12fF
C177 pdr3 clock_car0 1.03fF
C178 a_4050_1149# c2 0.06fF
C179 a_3874_1122# prop_2 0.20fF
C180 a_3687_265# gnd 0.18fF
C181 w_4041_1100# a_4043_1074# 0.06fF
C182 s1 w_3900_1436# 0.02fF
C183 a_3874_1383# w_3861_1397# 0.03fF
C184 c1 gnd 0.22fF
C185 a_3520_642# gnd 0.17fF
C186 carry_0 a_3687_310# 0.07fF
C187 a_3881_1197# c1 0.06fF
C188 w_4092_1061# prop_3 0.23fF
C189 a_3690_193# w_3684_172# 0.25fF
C190 pdr4 prop_4 0.02fF
C191 vdd a_3690_185# 0.29fF
C192 w_3496_1002# a_3509_988# 0.03fF
C193 a_3913_1442# vdd 0.93fF
C194 q_a1 vdd 0.18fF
C195 pdr1 gen_2 0.11fF
C196 w_4224_942# a_4226_916# 0.06fF
C197 w_4041_1100# c2 0.06fF
C198 clock_in prop_4 0.19fF
C199 gnd pdr4 0.05fF
C200 clock_in pdr1 0.14fF
C201 clock_in prop_3 0.17fF
C202 pdr2 gen_4 0.10fF
C203 gnd a_3513_712# 0.20fF
C204 vdd gnd 2.00fF
C205 prop_4 c3 0.09fF
C206 prop_1 prop_2 0.42fF
C207 q_b2 w_3536_909# 0.06fF
C208 a_3881_1197# vdd 0.15fF
C209 clock_in gnd 0.21fF
C210 a_3520_587# gnd 0.20fF
C211 vdd a_4047_1113# 0.93fF
C212 w_3684_172# clk_org 0.06fF
C213 a_3510_911# a_3510_856# 0.08fF
C214 w_3500_726# a_3513_712# 0.03fF
C215 vdd w_3500_726# 0.06fF
C216 a_3509_988# w_3535_1041# 0.06fF
C217 a_4230_955# prop_4 0.12fF
C218 gnd c3 0.21fF
C219 a_4043_1074# gnd 0.17fF
C220 a_4233_991# gnd 0.20fF
C221 gnd q_a3 0.27fF
C222 q_a4 w_3507_656# 0.06fF
C223 prop_3 a_3552_771# 0.45fF
C224 a_3559_646# prop_4 0.45fF
C225 w_3539_765# a_3552_771# 0.16fF
C226 prop_1 a_3509_988# 0.52fF
C227 q_b1 a_3509_988# 0.22fF
C228 w_4220_903# vdd 0.09fF
C229 s3 a_4043_1074# 0.06fF
C230 prop_1 w_3900_1436# 0.06fF
C231 a_3542_320# vdd 0.44fF
C232 prop1_car0 gen_1 0.10fF
C233 a_3547_93# q_a1 0.20fF
C234 gnd c2 0.22fF
C235 a_3690_193# clk_org 0.41fF
C236 pdr2 clock_car0 1.03fF
C237 w_4092_1061# vdd 0.06fF
C238 prop_2 carry_0 0.09fF
C239 vdd w_3923_1109# 0.06fF
C240 w_3497_870# a_3510_856# 0.03fF
C241 a_3547_93# gnd 0.05fF
C242 vdd pdr4 0.68fF
C243 a_3874_1383# w_3900_1436# 0.06fF
C244 pdr3 pdr4 1.05fF
C245 vdd gen_2 0.28fF
C246 prop_1 prop1_car0 0.26fF
C247 carry_0 w_3684_299# 0.05fF
C248 c4 pdr4 0.07fF
C249 clock_in vdd 0.74fF
C250 a_3559_646# q_b4 0.12fF
C251 clock_in pdr3 0.14fF
C252 vdd c3 0.48fF
C253 carry_0 w_3900_1436# 0.06fF
C254 pdr3 c3 0.07fF
C255 a_3548_1047# w_3535_1041# 0.16fF
C256 q_a2 w_3497_925# 0.06fF
C257 vdd c3 0.11fF
C258 a_3874_1383# s1 0.52fF
C259 q_b1 w_3496_1002# 0.23fF
C260 a_3510_911# prop_2 0.06fF
C261 w_4041_1100# a_4050_1149# 0.06fF
C262 a_3513_767# prop_3 0.06fF
C263 a_3513_767# w_3539_765# 0.06fF
C264 w_3861_1452# carry_0 0.06fF
C265 a_3509_1043# a_3509_988# 0.08fF
C266 a_3878_1161# vdd 0.93fF
C267 a_4230_955# vdd 0.93fF
C268 prop1_car0 gen_3 0.10fF
C269 a_4233_991# c3 0.06fF
C270 prop_1 a_3548_1047# 0.45fF
C271 q_b1 a_3548_1047# 0.12fF
C272 vdd a_3552_771# 0.93fF
C273 a_3510_856# vdd 0.15fF
C274 a_3687_310# vdd 0.37fF
C275 pdr1 prop_2 0.26fF
C276 prop_2 prop_3 0.62fF
C277 c1 w_3868_1109# 0.06fF
C278 carry_0 prop1_car0 0.02fF
C279 a_3559_646# vdd 0.93fF
C280 w_3539_765# q_b3 0.06fF
C281 prop_1 w_3535_1041# 0.02fF
C282 q_b1 w_3535_1041# 0.06fF
C283 w_3684_254# a_3687_310# 0.09fF
C284 prop_2 a_3549_915# 0.45fF
C285 q_a4 gnd 0.22fF
C286 vdd w_3861_1397# 0.06fF
C287 prop_4 w_3546_640# 0.02fF
C288 q_b2 gnd 0.16fF
C289 w_3500_781# vdd 0.09fF
C290 gen_4 gnd 0.14fF
C291 w_4037_1061# vdd 0.09fF
C292 w_3507_601# q_b4 0.23fF
C293 vdd w_3868_1109# 0.09fF
C294 a_4050_1149# gnd 0.20fF
C295 a_4226_916# prop_4 0.20fF
C296 a_3543_201# gnd 0.05fF
C297 pdr2 gen_2 0.02fF
C298 prop_2 c1 0.09fF
C299 w_4037_1061# a_4043_1074# 0.03fF
C300 prop_1 a_3874_1383# 0.22fF
C301 carry_0 gen_1 0.09fF
C302 clock_in pdr2 0.20fF
C303 w_3500_781# q_a3 0.06fF
C304 s3 a_4050_1149# 0.52fF
C305 prop1_car0 prop_4 0.10fF
C306 a_3513_767# a_3513_712# 0.08fF
C307 a_3513_767# vdd 0.15fF
C308 w_3546_640# q_b4 0.06fF
C309 pdr1 prop1_car0 1.06fF
C310 prop1_car0 prop_3 0.09fF
C311 a_3874_1438# gnd 0.17fF
C312 w_4224_942# prop_4 0.06fF
C313 a_3509_1043# w_3535_1041# 0.06fF
C314 a_3520_642# w_3546_640# 0.06fF
C315 prop_1 carry_0 0.17fF
C316 w_4041_1100# a_4047_1113# 0.16fF
C317 w_4037_1061# c2 0.06fF
C318 w_3507_601# vdd 0.06fF
C319 prop_2 vdd 0.10fF
C320 a_3509_1043# w_3496_1057# 0.03fF
C321 a_3881_1197# w_3872_1148# 0.06fF
C322 a_3513_767# q_a3 0.27fF
C323 w_4092_1061# a_4050_1149# 0.03fF
C324 a_3513_712# q_b3 0.22fF
C325 w_3507_601# a_3520_587# 0.03fF
C326 vdd q_b3 0.17fF
C327 a_3510_911# w_3497_925# 0.03fF
C328 s3 w_4041_1100# 0.02fF
C329 prop_1 a_3509_1043# 0.06fF
C330 q_b1 a_3509_1043# 0.20fF
C331 q_a2 a_3510_911# 0.27fF
C332 pdr4 gen_4 0.02fF
C333 w_3684_299# vdd 0.07fF
C334 carry_0 a_3874_1383# 0.06fF
C335 a_3510_856# w_3536_909# 0.06fF
C336 a_4233_991# s4 0.52fF
C337 a_3543_201# gen_2 0.05fF
C338 vdd w_3546_640# 0.12fF
C339 q_a1 gnd 0.22fF
C340 q_a3 q_b3 1.10fF
C341 clock_in gen_4 0.09fF
C342 vdd a_3509_988# 0.15fF
C343 a_3690_193# a_3687_265# 0.51fF
C344 carry_0 gen_3 0.09fF
C345 pdr1 gen_1 0.02fF
C346 w_3684_172# vdd 0.08fF
C347 vdd w_3900_1436# 0.12fF
C348 a_3520_587# w_3546_640# 0.06fF
C349 gnd clk_org 0.05fF
C350 w_3861_1452# vdd 0.09fF
C351 a_3881_1197# gnd 0.20fF
C352 a_4226_916# vdd 0.15fF
C353 q_b2 a_3510_856# 0.22fF
C354 prop_1 pdr1 0.02fF
C355 a_3874_1122# c1 0.27fF
C356 s3 gnd 0.16fF
C357 pdr4 clock_car0 1.03fF
C358 a_4233_991# a_4226_916# 0.08fF
C359 a_3687_265# clk_org 0.05fF
C360 a_3690_193# vdd 0.20fF
C361 s3 a_4047_1113# 0.45fF
C362 w_4224_942# vdd 0.12fF
C363 clock_in clock_car0 0.08fF
C364 a_3542_320# gnd 0.05fF
C365 w_3496_1002# vdd 0.06fF
C366 pdr2 prop_2 0.02fF
C367 a_3687_265# a_3737_217# 0.10fF
C368 pdr1 gen_3 0.10fF
C369 a_3874_1122# vdd 0.15fF
C370 w_4224_942# a_4233_991# 0.06fF
C371 carry_0 prop_4 0.09fF
C372 a_3878_1161# w_3872_1148# 0.16fF
C373 a_3881_1197# w_3923_1109# 0.03fF
C374 prop_2 w_3536_909# 0.02fF
C375 vdd clk_org 0.06fF
C376 a_3548_1047# vdd 0.93fF
C377 w_3497_925# vdd 0.09fF
C378 carry_0 prop_3 0.07fF
C379 gnd gen_2 0.14fF
C380 a_3542_429# vdd 0.44fF
C381 vdd gen_1 0.28fF
C382 q_a2 vdd 0.18fF
C383 s2 w_3872_1148# 0.02fF
C384 vdd w_3535_1041# 0.12fF
C385 w_3684_172# cin 0.06fF
C386 vdd w_3496_1057# 0.09fF
C387 gnd c3 0.22fF
C388 prop_1 vdd 0.10fF
C389 q_b1 vdd 0.17fF
C390 a_3510_856# gnd 0.20fF
C391 a_3687_310# gnd 0.12fF
C392 q_a4 w_3546_640# 0.06fF
C393 a_3874_1383# vdd 0.15fF
C394 pdr1 prop_4 0.10fF
C395 s2 gnd 0.16fF
C396 prop_3 prop_4 0.92fF
C397 a_3881_1197# s2 0.52fF
C398 w_4220_903# c3 0.06fF
C399 pdr1 prop_3 0.09fF
C400 prop_3 w_3539_765# 0.02fF
C401 a_3547_93# gen_1 0.05fF
C402 pdr3 gen_3 0.02fF
C403 vdd gen_3 0.28fF
C404 pdr1 gnd 0.05fF
C405 a_3737_261# gnd 0.14fF
C406 gnd Gnd 3.77fF
C407 q_a1 Gnd 0.95fF
C408 q_b1 Gnd 1.11fF
C409 cin Gnd 0.22fF
C410 a_3690_185# Gnd 0.00fF
C411 a_3737_217# Gnd 0.01fF
C412 a_3690_193# Gnd 1.19fF
C413 q_a2 Gnd 1.58fF
C414 q_b2 Gnd 1.45fF
C415 a_3737_261# Gnd 0.01fF
C416 a_3687_265# Gnd 0.48fF
C417 clk_org Gnd 3.06fF
C418 vdd Gnd 12.04fF
C419 a_3687_310# Gnd 0.44fF
C420 gnd Gnd 0.64fF
C421 a_3542_320# Gnd 0.29fF
C422 q_b3 Gnd 0.65fF
C423 q_a3 Gnd 0.65fF
C424 gen_1 Gnd 0.06fF
C425 a_3542_429# Gnd 0.29fF
C426 q_a4 Gnd 1.40fF
C427 q_b4 Gnd 0.68fF
C428 gen_2 Gnd 0.06fF
C429 gen_3 Gnd 0.04fF
C430 clock_car0 Gnd 3.27fF
C431 gen_4 Gnd 0.05fF
C432 prop1_car0 Gnd 0.73fF
C433 a_3520_587# Gnd 0.05fF
C434 a_3559_646# Gnd 0.01fF
C435 a_3520_642# Gnd 0.13fF
C436 clock_in Gnd 0.05fF
C437 c4 Gnd 0.05fF
C438 pdr4 Gnd 1.31fF
C439 a_3513_712# Gnd 0.06fF
C440 a_3552_771# Gnd 0.06fF
C441 a_3513_767# Gnd 0.05fF
C442 pdr3 Gnd 2.39fF
C443 pdr2 Gnd 2.36fF
C444 pdr1 Gnd 2.51fF
C445 a_3510_856# Gnd 0.23fF
C446 a_3549_915# Gnd 0.02fF
C447 a_3510_911# Gnd 0.24fF
C448 c3 Gnd 0.65fF
C449 prop_4 Gnd 14.22fF
C450 a_4226_916# Gnd 0.05fF
C451 s4 Gnd 0.41fF
C452 a_4233_991# Gnd 0.49fF
C453 a_4230_955# Gnd 0.06fF
C454 a_3509_988# Gnd 0.23fF
C455 a_3548_1047# Gnd 0.06fF
C456 a_3509_1043# Gnd 0.05fF
C457 c2 Gnd 0.08fF
C458 prop_3 Gnd 0.01fF
C459 a_4043_1074# Gnd 0.01fF
C460 s3 Gnd 0.43fF
C461 a_4050_1149# Gnd 0.49fF
C462 a_4047_1113# Gnd 0.06fF
C463 c1 Gnd 1.81fF
C464 prop_2 Gnd 0.05fF
C465 a_3874_1122# Gnd 0.49fF
C466 s2 Gnd 0.71fF
C467 a_3881_1197# Gnd 0.49fF
C468 a_3878_1161# Gnd 0.06fF
C469 s1 Gnd 0.31fF
C470 a_3874_1383# Gnd 0.49fF
C471 a_3913_1442# Gnd 0.06fF
C472 prop_1 Gnd 0.05fF
C473 a_3874_1438# Gnd 0.49fF
C474 carry_0 Gnd 5.83fF
C475 w_3684_172# Gnd 0.67fF
C476 w_3684_210# Gnd 0.97fF
C477 w_3684_254# Gnd 0.97fF
C478 w_3684_299# Gnd 0.97fF
C479 vdd Gnd 12.61fF
C480 w_3507_601# Gnd 0.53fF
C481 w_3546_640# Gnd 0.90fF
C482 w_3507_656# Gnd 0.58fF
C483 w_3500_726# Gnd 0.58fF
C484 w_3539_765# Gnd 2.28fF
C485 w_3500_781# Gnd 0.41fF
C486 w_4275_903# Gnd 0.53fF
C487 w_4220_903# Gnd 0.41fF
C488 w_3497_870# Gnd 0.58fF
C489 w_3536_909# Gnd 0.41fF
C490 w_3497_925# Gnd 0.58fF
C491 w_4224_942# Gnd 2.28fF
C492 w_3496_1002# Gnd 0.58fF
C493 w_4092_1061# Gnd 0.58fF
C494 w_4037_1061# Gnd 0.36fF
C495 w_3535_1041# Gnd 2.28fF
C496 w_3496_1057# Gnd 0.41fF
C497 w_3923_1109# Gnd 0.53fF
C498 w_3868_1109# Gnd 0.58fF
C499 w_4041_1100# Gnd 2.28fF
C500 w_3872_1148# Gnd 2.28fF
C501 w_3861_1397# Gnd 0.58fF
C502 w_3900_1436# Gnd 2.28fF
C503 w_3861_1452# Gnd 0.29fF



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