* SPICE3 file created from ver3.ext - technology: scmosTrying
.option scale=0.09u
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={5*20*LAMBDA}
.param width_P={2.5*20*LAMBDA}
.global gnd vdd

vdd vdd gnd 1.8 
* .param Ton = 5n


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

    
    * V1 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton}) 

    * V2 q_a1 0 1.8 

    * Input pulses for q_a nodes

*     .param Ton=5n
* .param Tperiod=10n
* V_a1 a1 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
* V_a2 a2 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
* V_a3 a3 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
* V_a4 a4 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})

* V_b1 b1 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_b2 b2 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_b3 b3 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_b4 b4 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})

* V9 cin 0 1.8
* V_clk_org clk_org 0 pulse(0 1.8 3n 0 0 {Ton} {Tperiod})


*   .param Ton=5n
* .param Tperiod=10n
* V_a1 a1 0 pulse(1.8 1.8 0 0 0 {Ton} {Tperiod})
* V_a2 a2 0 pulse(1.8 1.8 0 0 0 {Ton} {Tperiod})
* V_a3 a3 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_a4 a4 0 pulse(1.8 1.8 0 0 0 {Ton} {Tperiod})

* V_b1 b1 0 pulse(1.8 1.8 0 0 0 {Ton} {Tperiod})
* V_b2 b2 0 pulse(1.8 1.8 0 0 0 {Ton} {Tperiod})
* V_b3 b3 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_b4 b4 0 pulse(1.8 1.8 0 0 0 {Ton} {Tperiod})

*   .param Ton=5n
* .param Tperiod={2*Ton}
* V_a1 a1 0 DC 1.8
* V_a2 a2 0 DC 1.8
* V_a3 a3 0 DC 1.8
* V_a4 a4 0 DC 1.8

* V_b1 b1 0 DC 1.8
* V_b2 b2 0 DC 1.8
* V_b3 b3 0 DC 1.8
* V_b4 b4 0 DC 1.8


* .param Ton=4n
* .param Tperiod=n
 .param Ton=0.6n
.param Tperiod={2*Ton}
V_clk_org clk_org 0 pulse(0 1.8 {0.3*Ton} 10p 10p {Ton} {Tperiod})

V_a1 a1 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
V_a2 a2 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
V_a3 a3 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
V_a4 a4 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)

V_b1 b1 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
V_b2 b2 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
V_b3 b3 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
V_b4 b4 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)

* V_a1 a1 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 0 {2*Tperiod} 0)
* V_a2 a2 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 0 {2*Tperiod} 0)
* V_a3 a3 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_a4 a4 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_b1 b1 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_b2 b2 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_b3 b3 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 0 {2*Tperiod} 0)
* V_b4 b4 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 0 {2*Tperiod} 0)

    * V1 a1 0 pulse(0 1.8 0 10p 10p {2*Ton} {4*Ton})
    * v2 a2 0 pulse(0 1.8 0 10p 10p {3*Ton} {6*Ton})
    * v3 a3 0 pulse(0 1.8 0 10p 10p {4*Ton} {8*Ton})
    * v4 a4 0 pulse(0 1.8 0 10p 10p {5*Ton} {10*Ton})
    * V5 b1 0  pulse(0 1.8 0 10p 10p {6*Ton} {12*Ton})
    * v6 b2 0  pulse(0 1.8 0 10p 10p {7*Ton} {14*Ton})
    * v7 b3 0  pulse(0 1.8 0 10p 10p {8*Ton} {16*Ton})
    * v8 b4 0  pulse(0 1.8 0 10p 10p {9*Ton} {18*Ton})
    V9 cin 0 0

    * V9 carry_0 0 0
    * V10 clk_org gnd pulse(0 1.8 0 10p 10p {Ton} {2*Ton})

* V_a1 with base Ton = Tperiod
* V_a1 a1 0 PULSE(0 1.8 0 {Tperiod} {0.1n} {Tperiod} {2*Tperiod})

* * V_a2 with Ton doubled (2 * Tperiod)
* V_a2 a2 0 PULSE(0 1.8 0 {2*Tperiod} {0.1n} {2*Tperiod} {4*Tperiod})

* * V_a3 with Ton doubled again (4 * Tperiod)
* V_a3 a3 0 PULSE(0 1.8 0 {4*Tperiod} {0.1n} {4*Tperiod} {8*Tperiod})

* * V_a4 with Ton doubled again (8 * Tperiod)
* V_a4 a4 0 PULSE(0 1.8 0 {8*Tperiod} {0.1n} {8*Tperiod} {16*Tperiod})

* * V_b1 with base Ton = Tperiod
* V_b1 b1 0 PULSE(0 1.8 0 {Tperiod} {0.1n} {Tperiod} {2*Tperiod})

* * V_b2 with Ton doubled (2 * Tperiod)
* V_b2 b2 0 PULSE(0 1.8 0 {2*Tperiod} {0.1n} {2*Tperiod} {4*Tperiod})

* * V_b3 with Ton doubled again (4 * Tperiod)
* V_b3 b3 0 PULSE(0 1.8 0 {4*Tperiod} {0.1n} {4*Tperiod} {8*Tperiod})

* * V_b4 with Ton doubled again (8 * Tperiod)
* V_b4 b4 0 PULSE(0 1.8 0 {8*Tperiod} {0.1n} {8*Tperiod} {16*Tperiod})



* V_q_a1 q_a1 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
* V_q_a2 q_a2 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
* V_q_a3 q_a3 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
* V_q_a4 q_a4 0 pulse(0 1.8 {Ton} 0 0 {Ton} {Tperiod})
* V_q_b1 q_b1 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_q_b2 q_b2 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_q_b3 q_b3 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})
* V_q_b4 q_b4 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})

* V_clk clk_org 0 pulse(0 1.8 0 0 0 {Ton} {Tperiod})



M1000 gnd a_12500_2152# a_12567_2158# Gnd CMOSN w=12 l=2
+  ad=4840 pd=2896 as=96 ps=40
M1001 a_8047_1739# a2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1002 a_8137_1609# clk_org a_8131_1577# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1003 q_a3 a_8142_1359# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1004 a_12437_431# c3 vdd w_12424_445# CMOSP w=12 l=2
+  ad=60 pd=34 as=11080 ps=5432
M1005 a_8577_2021# q_a1 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1006 gen_4 a_9023_868# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1007 a_8568_1662# q_a2 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1008 a_12540_1397# c1 vdd w_12527_1411# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1009 iq_s3 q_s3 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=2500 ps=1140
M1010 a_12995_687# clk_org a_12989_655# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1011 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1012 gen_3 a_9035_1234# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1013 a_12945_655# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1014 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1015 a_8090_1167# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1016 a_12480_967# c2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1017 vdd q_b2 a_8568_1715# w_8555_1709# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1018 a_12540_1342# prop_2 vdd w_12527_1356# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1019 a_12947_1500# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1020 a_8623_1303# a_8556_1352# prop_3 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1021 q_s1 a_13012_1973# vdd w_13044_1967# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1022 a_8047_1739# clk_org a_8051_1771# w_8038_1765# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1023 a_8595_1356# q_a3 vdd w_8582_1350# CMOSP w=24 l=2
+  ad=432 pd=180 as=0 ps=0
M1024 a_12519_971# c2 vdd w_12506_965# CMOSP w=24 l=2
+  ad=432 pd=180 as=0 ps=0
M1025 a_8085_2087# clk_org a_8079_2055# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1026 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1027 a_8060_1359# a3 vdd w_8047_1353# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1028 a_8616_960# a_8549_1009# prop_4 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1029 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=1500 ps=630
M1030 q_b2 a_8137_1609# vdd w_8169_1603# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1031 a_8168_964# clk_org a_8162_932# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1032 q_a1 a_8085_2267# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1033 a_12519_918# c2 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1034 a_8118_932# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1035 a_12930_1973# s1 vdd w_12917_1967# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1036 a_12480_967# c2 vdd w_12467_981# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1037 a_8082_932# clk_org a_8086_964# w_8073_958# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1038 prop_3 a_8556_1352# a_8595_1356# w_8582_1350# CMOSP w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1039 a_12896_947# s3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1040 a_12539_2211# a_12500_2152# s1 w_12526_2205# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1041 a_8177_839# a_8133_839# vdd w_8164_833# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1042 a_12480_912# prop_3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1043 a_8056_1327# a3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1044 a_8549_1009# q_a4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1045 q_a4 a_8168_964# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1046 a_8162_932# a_8124_964# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1047 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1250 ps=610
M1048 a_8096_1199# clk_org vdd w_8083_1193# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1049 s1 prop_1 a_12539_2158# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1050 a_12953_1532# clk_org vdd w_12940_1526# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1051 q_a3 a_8142_1359# vdd w_8174_1353# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1052 a_13017_313# a_12973_313# vdd w_13004_307# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1053 q_s4 a_12995_687# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1054 a_8047_2436# a_8005_2404# a_8041_2404# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1055 a_12926_1941# s1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1056 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1057 vdd q_b3 a_8595_1356# w_8582_1350# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1058 vdd prop_1 a_12539_2211# w_12526_2205# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1059 vdd prop_4 a_12476_435# w_12463_429# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1060 a_9023_868# q_a4 a_9023_819# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1061 a_9023_868# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1062 a_9035_1234# q_b3 a_9035_1185# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1063 a_12931_281# clk_org a_12935_313# w_12922_307# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1064 a_12480_912# prop_3 vdd w_12467_926# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1065 a_8549_1009# q_a4 vdd w_8536_1023# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1066 a_12896_947# clk_org a_12900_979# w_12887_973# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1067 a_12476_382# c3 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1068 iq_s4 q_s4 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1069 carry_0 a_8091_2436# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1070 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1071 gen_3 a_9035_1234# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1072 a_12909_655# s4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1073 a_8605_2021# a_8538_2070# prop_1 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1074 gen_1 a_9025_1876# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1075 a_9035_1234# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1076 a_12437_376# prop_4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1077 q_a1 a_8085_2267# vdd w_8117_2261# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1078 a_8041_2087# clk_org vdd w_8028_2081# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1079 a_8577_2074# q_a1 vdd w_8564_2068# CMOSP w=24 l=2
+  ad=432 pd=180 as=0 ps=0
M1080 s2 prop_2 a_12579_1348# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1081 a_12900_979# s3 vdd w_12887_973# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1082 a_8083_1739# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1083 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1084 a_13011_281# a_12973_313# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1085 a_8091_807# clk_org a_8095_839# w_8082_833# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1086 a_8041_2087# a_7999_2055# a_8035_2055# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1087 prop_2 a_8529_1711# a_8568_1715# w_8555_1709# CMOSP w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1088 a_12997_1532# clk_org a_12991_1500# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1089 a_12951_687# a_12909_655# a_12945_655# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1090 a_12567_2158# a_12500_2207# s1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1091 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=1000 pd=420 as=0 ps=0
M1092 vdd prop_2 a_12579_1401# w_12566_1395# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1093 a_8171_807# a_8133_839# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1094 a_8133_1771# a_8089_1771# vdd w_8120_1765# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1095 a_8051_1577# b2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1096 gnd a_12437_376# a_12504_382# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1097 a_8009_2436# cin vdd w_7996_2430# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1098 a_8079_2235# a_8041_2267# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1099 gen_2 a_9027_1526# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1100 q_a4 a_8168_964# vdd w_8200_958# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1101 a_8577_2074# a_8538_2015# prop_1 w_8564_2068# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1102 a_8095_839# b4 vdd w_8082_833# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1103 a_8556_1352# q_a3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1104 a_12973_313# clk_org vdd w_12960_307# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1105 a_12437_376# prop_4 vdd w_12424_390# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1106 a_8568_1715# q_a2 vdd w_8555_1709# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1107 q_s4 a_12995_687# vdd w_13027_681# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1108 a_12938_979# clk_org vdd w_12925_973# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1109 a_8140_1199# a_8096_1199# vdd w_8127_1193# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1110 a_8124_964# a_8082_932# a_8118_932# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1111 a_8140_1199# clk_org a_8134_1167# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1112 a_8005_2404# cin gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1113 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1114 a_12982_979# a_12938_979# vdd w_12969_973# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1115 a_8089_1771# clk_org vdd w_8076_1765# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1116 a_8568_1715# a_8529_1656# prop_2 w_8555_1709# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1117 a_8133_839# clk_org vdd w_8120_833# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1118 carry_0 a_8091_2436# vdd w_8123_2430# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1119 q_s2 a_12997_1532# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1120 a_8556_1352# q_a3 vdd w_8543_1366# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1121 a_8003_2087# b1 vdd w_7990_2081# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1122 a_8092_1327# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1123 a_8085_2267# a_8041_2267# vdd w_8072_2261# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1124 s1 a_12500_2207# a_12539_2211# w_12526_2205# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1125 a_8051_1577# clk_org a_8055_1609# w_8042_1603# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1126 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1127 a_12967_281# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1128 a_8085_2404# a_8047_2436# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1129 a_12539_2158# carry_0 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1130 a_12962_1941# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1131 gen_1 a_9025_1876# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1132 gen_2 a_9027_1526# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1133 a_8096_1199# a_8054_1167# a_8090_1167# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1134 a_9025_1876# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1135 a_8127_1739# a_8089_1771# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1136 gnd a_12480_912# a_12547_918# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1137 a_12539_2211# carry_0 vdd w_12526_2205# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1138 iq_s2 q_s2 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1139 a_12953_1532# a_12911_1500# a_12947_1500# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1140 a_9025_1876# q_a1 a_9025_1827# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1141 a_9027_1526# q_a2 a_9027_1477# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1142 prop_4 q_b4 a_8588_960# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1143 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=0 ps=0
M1144 a_8056_1327# clk_org a_8060_1359# w_8047_1353# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1145 vdd q_b4 a_8588_1013# w_8575_1007# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1146 iq_s3 q_s3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1147 a_8035_2235# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1148 a_7999_2055# b1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1149 a_13006_1941# a_12968_1973# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1150 gnd a_12540_1342# a_12607_1348# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1151 q_b3 a_8140_1199# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1152 a_13017_313# clk_org a_13011_281# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1153 a_8538_2070# q_a1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1154 a_12926_1941# clk_org a_12930_1973# w_12917_1967# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1155 a_9027_1526# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1156 a_12519_971# a_12480_912# s3 w_12506_965# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1157 a_12476_435# c3 vdd w_12463_429# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1158 a_12579_1348# c1 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1159 a_8177_839# clk_org a_8171_807# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1160 a_12976_947# a_12938_979# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1161 a_8127_807# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1162 a_8087_1577# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1163 q_s2 a_12997_1532# vdd w_13029_1526# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1164 a_12579_1401# a_12540_1342# s2 w_12566_1395# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1165 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1166 a_12579_1401# c1 vdd w_12566_1395# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1167 a_7999_2235# clk_org a_8003_2267# w_7990_2261# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1168 a_8529_1711# q_a2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1169 a_8058_1199# b3 vdd w_8045_1193# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1170 q_b4 a_8177_839# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1171 a_8538_2070# q_a1 vdd w_8525_2084# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1172 prop_1 a_8538_2070# a_8577_2074# w_8564_2068# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1173 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1174 a_12915_1532# s2 vdd w_12902_1526# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1175 a_8136_1327# a_8098_1359# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1176 a_12500_2207# carry_0 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1177 a_13012_1973# a_12968_1973# vdd w_12999_1967# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1178 a_12909_655# clk_org a_12913_687# w_12900_681# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1179 q_b1 a_8085_2087# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1180 a_12931_281# c4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1181 iq_s4 q_s4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1182 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1183 a_8556_1297# q_b3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1184 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1185 a_12504_382# a_12437_431# s4 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1186 a_12500_2152# prop_1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1187 a_8054_1167# b3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1188 a_8529_1711# q_a2 vdd w_8516_1725# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1189 a_12973_313# a_12931_281# a_12967_281# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1190 iq_c4 q_c4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1191 a_12913_687# s4 vdd w_12900_681# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1192 q_b3 a_8140_1199# vdd w_8172_1193# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1193 a_12500_2207# carry_0 vdd w_12487_2221# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1194 a_12476_435# a_12437_376# s4 w_12463_429# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1195 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1196 gen_4 a_9023_868# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1197 a_8005_2404# clk_org a_8009_2436# w_7996_2430# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1198 a_8085_2267# clk_org a_8079_2235# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1199 a_12500_2152# prop_1 vdd w_12487_2166# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1200 a_8142_1359# a_8098_1359# vdd w_8129_1353# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1201 vdd q_a4 a_9023_868# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 a_8093_1609# clk_org vdd w_8080_1603# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1203 iq_s1 q_s1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1204 a_12951_687# clk_org vdd w_12938_681# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1205 a_12938_979# a_12896_947# a_12932_947# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1206 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1207 q_b4 a_8177_839# vdd w_8209_833# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1208 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1209 a_8131_1577# a_8093_1609# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1210 a_8556_1297# q_b3 vdd w_8543_1311# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1211 a_8588_1013# q_a4 vdd w_8575_1007# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1212 vdd q_b3 a_9035_1234# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1213 a_12995_687# a_12951_687# vdd w_12982_681# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1214 q_b1 a_8085_2087# vdd w_8117_2081# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1215 a_12607_1348# a_12540_1397# s2 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1216 a_12982_979# clk_org a_12976_947# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1217 a_8133_839# a_8091_807# a_8127_807# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1218 a_12932_947# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1219 a_8098_1359# clk_org vdd w_8085_1353# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1220 a_12547_918# a_12480_967# s3 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1221 a_8051_1771# a2 vdd w_8038_1765# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1222 a_8588_1013# a_8549_954# prop_4 w_8575_1007# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1223 a_8588_960# q_a4 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1224 a_8091_2436# a_8047_2436# vdd w_8078_2430# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1225 a_8079_2055# a_8041_2087# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1226 a_12968_1973# clk_org vdd w_12955_1967# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1227 a_9035_1185# q_a3 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1228 a_9023_819# q_b4 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1229 a_8091_2436# clk_org a_8085_2404# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1230 s2 a_12540_1397# a_12579_1401# w_12566_1395# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1231 a_8549_954# q_b4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1232 a_8168_964# a_8124_964# vdd w_8155_958# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1233 q_c4 a_13017_313# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1234 a_8133_1771# clk_org a_8127_1739# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1235 s3 a_12480_967# a_12519_971# w_12506_965# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1236 vdd prop_3 a_12519_971# w_12506_965# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1237 a_8538_2015# q_b1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1238 a_8041_2267# clk_org vdd w_8028_2261# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1239 prop_1 q_b1 a_8577_2021# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1240 a_8082_932# a4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1241 gnd a_8549_954# a_8616_960# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1242 prop_2 q_b2 a_8568_1662# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=0 ps=0
M1243 a_8529_1656# q_b2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1244 a_8041_2267# a_7999_2235# a_8035_2235# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1245 a_13012_1973# clk_org a_13006_1941# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1246 q_a2 a_8133_1771# vdd w_8165_1765# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1247 s3 prop_3 a_12519_918# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1248 a_8041_2404# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1249 a_8137_1609# a_8093_1609# vdd w_8124_1603# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1250 a_8549_954# q_b4 vdd w_8536_968# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1251 q_s3 a_12982_979# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1252 a_8085_2087# a_8041_2087# vdd w_8072_2081# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1253 gnd a_8556_1297# a_8623_1303# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 a_12989_655# a_12951_687# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1255 a_8538_2015# q_b1 vdd w_8525_2029# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1256 a_12911_1500# s2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1257 a_8089_1771# a_8047_1739# a_8083_1739# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1258 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1259 a_8529_1656# q_b2 vdd w_8516_1670# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1260 a_8093_1609# a_8051_1577# a_8087_1577# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1261 a_8595_1303# q_a3 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1262 vdd q_a1 a_9025_1876# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1263 a_8054_1167# clk_org a_8058_1199# w_8045_1193# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1264 a_8595_1356# a_8556_1297# prop_3 w_8582_1350# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1265 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1266 a_12911_1500# clk_org a_12915_1532# w_12902_1526# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1267 a_8142_1359# clk_org a_8136_1327# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1268 a_8035_2055# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1269 a_12991_1500# a_12953_1532# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1270 a_8047_2436# clk_org vdd w_8034_2430# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1271 q_a2 a_8133_1771# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1272 a_8596_1662# a_8529_1711# prop_2 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1273 q_b2 a_8137_1609# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1274 a_8086_964# a4 vdd w_8073_958# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1275 a_8003_2267# a1 vdd w_7990_2261# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1276 s4 prop_4 a_12476_382# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1277 a_8091_807# b4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1278 vdd q_a2 a_9027_1526# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1279 a_12540_1397# c1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1280 s4 a_12437_431# a_12476_435# w_12463_429# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1281 q_s1 a_13012_1973# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1282 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1283 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1284 q_c4 a_13017_313# vdd w_13049_307# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1285 prop_3 q_b3 a_8595_1303# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1286 q_s3 a_12982_979# vdd w_13014_973# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1287 a_9025_1827# q_b1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1288 a_9027_1477# q_b2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1289 prop_4 a_8549_1009# a_8588_1013# w_8575_1007# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1290 a_12437_431# c3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1291 a_8124_964# clk_org vdd w_8111_958# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1292 a_7999_2055# clk_org a_8003_2087# w_7990_2081# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1293 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1294 a_8098_1359# a_8056_1327# a_8092_1327# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1295 a_8134_1167# a_8096_1199# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1296 a_12935_313# c4 vdd w_12922_307# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1297 gnd a_8538_2015# a_8605_2021# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1298 a_12997_1532# a_12953_1532# vdd w_12984_1526# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1299 a_7999_2235# a1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1300 vdd q_b1 a_8577_2074# w_8564_2068# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1301 a_12968_1973# a_12926_1941# a_12962_1941# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1302 iq_s2 q_s2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1303 a_12540_1342# prop_2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1304 gnd a_8529_1656# a_8596_1662# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1305 iq_s1 q_s1 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1306 a_8055_1609# b2 vdd w_8042_1603# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1307 iq_c4 q_c4 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
C0 w_12917_1967# s1 0.06fF
C1 a_12540_1397# gnd 0.17fF
C2 w_8085_1353# a_8056_1327# 0.13fF
C3 w_8174_1353# a_8142_1359# 0.06fF
C4 w_12922_307# clk_org 0.06fF
C5 a_12911_1500# clk_org 0.41fF
C6 a_9027_1526# vdd 0.44fF
C7 w_12902_1526# a_12911_1500# 0.25fF
C8 c3 gnd 0.22fF
C9 w_8080_1603# vdd 0.07fF
C10 q_a3 q_b3 0.33fF
C11 a_8177_839# vdd 0.37fF
C12 c1 a_12540_1342# 0.06fF
C13 q_c4 gnd 0.05fF
C14 w_12527_1356# a_12540_1342# 0.03fF
C15 a_12437_431# prop_4 0.20fF
C16 a_8092_1327# gnd 0.14fF
C17 q_b3 vdd 0.45fF
C18 w_8034_2430# a_8005_2404# 0.13fF
C19 w_8123_2430# a_8091_2436# 0.06fF
C20 c4 clk_org 0.21fF
C21 a_8529_1656# q_b2 0.22fF
C22 a_8047_1739# vdd 0.20fF
C23 a_8595_1356# q_b3 0.12fF
C24 w_8038_1765# vdd 0.08fF
C25 a_8041_2267# clk_org 0.05fF
C26 vdd pdr2 0.68fF
C27 a_8055_1609# a_8051_1577# 0.26fF
C28 w_12566_1395# a_12579_1401# 0.16fF
C29 pdr1 c1 0.07fF
C30 c2 gnd 0.21fF
C31 a_8079_2235# gnd 0.14fF
C32 gnd a_13011_281# 0.14fF
C33 a_8003_2087# a_7999_2055# 0.26fF
C34 w_8072_2261# vdd 0.07fF
C35 a_13012_1973# gnd 0.12fF
C36 w_8117_2081# vdd 0.07fF
C37 a_8538_2015# q_b1 0.22fF
C38 q_a2 gnd 0.35fF
C39 a_8133_839# gnd 0.18fF
C40 w_12917_1967# a_12926_1941# 0.25fF
C41 w_12999_1967# a_13012_1973# 0.09fF
C42 s2 gnd 0.16fF
C43 pdr4 gnd 0.05fF
C44 a_8127_807# gnd 0.14fF
C45 a_8133_1771# q_a2 0.07fF
C46 w_12969_973# a_12982_979# 0.09fF
C47 w_13004_307# a_13017_313# 0.09fF
C48 w_12960_307# vdd 0.07fF
C49 q_s2 vdd 0.29fF
C50 w_12526_2205# a_12500_2152# 0.06fF
C51 a_12973_313# vdd 0.37fF
C52 pdr4 prop_4 0.02fF
C53 a_8041_2087# clk_org 0.05fF
C54 a_8056_1327# vdd 0.20fF
C55 vdd q_s1 0.06fF
C56 a_12909_655# vdd 0.20fF
C57 vdd c4 0.48fF
C58 w_8172_1193# a_8140_1199# 0.06fF
C59 w_8083_1193# a_8054_1167# 0.13fF
C60 w_12900_681# vdd 0.08fF
C61 a_8085_2267# q_a1 0.07fF
C62 a_8137_1609# gnd 0.12fF
C63 a_12938_979# clk_org 0.05fF
C64 a_8085_2267# vdd 0.37fF
C65 w_8047_1353# a3 0.06fF
C66 pdr1 pdr2 1.03fF
C67 pdr3 prop_3 0.02fF
C68 a_9027_1526# gen_2 0.05fF
C69 prop_3 a_12519_971# 0.12fF
C70 a_12480_967# a_12480_912# 0.08fF
C71 a_12938_979# a_12896_947# 0.51fF
C72 a_12962_1941# gnd 0.14fF
C73 w_8575_1007# a_8549_954# 0.06fF
C74 a_8134_1167# gnd 0.14fF
C75 q_s2 gnd 0.05fF
C76 w_8073_958# vdd 0.08fF
C77 clk_org gnd 4.09fF
C78 a_8041_2267# a_8035_2235# 0.10fF
C79 s1 clk_org 0.21fF
C80 vdd iq_s2 0.25fF
C81 a_12997_1532# clk_org 0.36fF
C82 w_7996_2430# cin 0.06fF
C83 w_8169_1603# q_b2 0.05fF
C84 w_12940_1526# a_12953_1532# 0.09fF
C85 a_8133_1771# clk_org 0.36fF
C86 a_12896_947# gnd 0.24fF
C87 c1 vdd 0.11fF
C88 vdd a_12931_281# 0.20fF
C89 a_13017_313# q_c4 0.07fF
C90 w_12527_1356# vdd 0.06fF
C91 a_8085_2087# vdd 0.37fF
C92 w_8073_958# a_8082_932# 0.25fF
C93 w_8155_958# a_8168_964# 0.09fF
C94 w_8582_1350# a_8556_1297# 0.06fF
C95 w_12506_965# vdd 0.12fF
C96 w_7990_2261# clk_org 0.06fF
C97 w_8028_2081# clk_org 0.06fF
C98 w_8076_1765# a_8047_1739# 0.13fF
C99 w_8165_1765# a_8133_1771# 0.06fF
C100 a_12519_971# s3 0.45fF
C101 a_8087_1577# gnd 0.14fF
C102 w_12527_1411# vdd 0.09fF
C103 a_12982_979# vdd 0.37fF
C104 w_8129_1353# a_8142_1359# 0.09fF
C105 w_8047_1353# a_8056_1327# 0.25fF
C106 b2 clk_org 0.21fF
C107 iq_s1 gnd 0.10fF
C108 w_12902_1526# a_12915_1532# 0.01fF
C109 w_8209_833# q_b4 0.05fF
C110 a_12989_655# gnd 0.14fF
C111 w_8042_1603# vdd 0.08fF
C112 w_12467_926# a_12480_912# 0.03fF
C113 a_12976_947# gnd 0.14fF
C114 w_8516_1670# a_8529_1656# 0.03fF
C115 a_8549_954# gnd 0.20fF
C116 a_12540_1397# prop_2 0.20fF
C117 a_8142_1359# clk_org 0.36fF
C118 w_12526_2205# s1 0.02fF
C119 c1 gnd 0.21fF
C120 a_8529_1656# gnd 0.20fF
C121 a_12995_687# clk_org 0.36fF
C122 a_12926_1941# clk_org 0.41fF
C123 a_8054_1167# vdd 0.20fF
C124 w_8045_1193# b3 0.06fF
C125 a_8556_1297# gnd 0.20fF
C126 w_8078_2430# a_8091_2436# 0.09fF
C127 w_7996_2430# a_8005_2404# 0.25fF
C128 q_b2 vdd 0.45fF
C129 a_12437_376# vdd 0.15fF
C130 a_8051_1771# vdd 0.29fF
C131 a_8568_1715# q_b2 0.12fF
C132 a_8556_1352# q_b3 0.20fF
C133 w_13044_1967# vdd 0.07fF
C134 a_8005_2404# vdd 0.20fF
C135 s3 clk_org 0.21fF
C136 a_8035_2235# gnd 0.14fF
C137 a_8549_954# q_a4 0.06fF
C138 gnd a_12967_281# 0.14fF
C139 w_8555_1709# q_a2 0.06fF
C140 w_8028_2261# vdd 0.07fF
C141 a_12968_1973# gnd 0.18fF
C142 w_8072_2081# vdd 0.07fF
C143 a_8549_954# q_b4 0.22fF
C144 a_8577_2074# q_b1 0.12fF
C145 w_12999_1967# a_12968_1973# 0.06fF
C146 w_12917_1967# a_12930_1973# 0.01fF
C147 a_12540_1342# gnd 0.20fF
C148 w_12463_429# c3 0.06fF
C149 w_8082_833# clk_org 0.06fF
C150 a_8051_1577# clk_org 0.41fF
C151 a_8556_1297# prop_3 0.52fF
C152 w_12969_973# a_12938_979# 0.06fF
C153 a_9025_1876# gen_1 0.05fF
C154 w_12922_307# vdd 0.08fF
C155 w_8028_2261# a_7999_2235# 0.13fF
C156 w_8117_2261# a_8085_2267# 0.06fF
C157 w_13004_307# a_12973_313# 0.06fF
C158 a_12911_1500# vdd 0.20fF
C159 w_12526_2205# a_12539_2211# 0.16fF
C160 a_9023_868# gnd 0.05fF
C161 a_12995_687# a_12989_655# 0.10fF
C162 a_12500_2152# vdd 0.15fF
C163 a_8060_1359# vdd 0.29fF
C164 pdr2 gnd 0.05fF
C165 prop_4 a_12437_376# 0.22fF
C166 a_12913_687# vdd 0.29fF
C167 gen_4 gnd 0.14fF
C168 a_12437_431# s4 0.06fF
C169 q_s1 vdd 0.29fF
C170 a_8538_2070# gnd 0.17fF
C171 w_12526_2205# carry_0 0.06fF
C172 w_8038_1765# a2 0.06fF
C173 a_8098_1359# a_8092_1327# 0.10fF
C174 w_8127_1193# a_8140_1199# 0.09fF
C175 w_8045_1193# a_8054_1167# 0.25fF
C176 w_8543_1311# q_b3 0.23fF
C177 a_8093_1609# gnd 0.18fF
C178 a_8041_2267# vdd 0.37fF
C179 w_12938_681# a_12909_655# 0.13fF
C180 iq_s3 q_s3 0.07fF
C181 w_13027_681# a_12995_687# 0.06fF
C182 w_12487_2221# carry_0 0.06fF
C183 q_a4 a_9023_868# 0.20fF
C184 w_8164_833# vdd 0.07fF
C185 a_8090_1167# gnd 0.14fF
C186 w_8575_1007# a_8588_1013# 0.16fF
C187 a_12968_1973# a_12926_1941# 0.51fF
C188 w_8575_1007# vdd 0.12fF
C189 a_8140_1199# a_8134_1167# 0.10fF
C190 gen_1 gnd 0.14fF
C191 a_8041_2267# a_7999_2235# 0.51fF
C192 prop1_car0 pdr1 1.03fF
C193 a_8177_839# a_8171_807# 0.10fF
C194 w_8525_2029# q_b1 0.23fF
C195 q_a1 a_9025_1876# 0.20fF
C196 w_8582_1350# q_a3 0.06fF
C197 a_8140_1199# clk_org 0.36fF
C198 a_9035_1234# vdd 0.44fF
C199 a_12953_1532# clk_org 0.05fF
C200 pdr3 clock_car0 1.03fF
C201 a_8089_1771# clk_org 0.05fF
C202 w_12955_1967# clk_org 0.06fF
C203 q_s1 gnd 0.05fF
C204 a_9025_1876# vdd 0.44fF
C205 a_8091_2436# clk_org 0.36fF
C206 pdr3 gen_3 0.02fF
C207 pdr2 gen_2 0.02fF
C208 vdd a_12935_313# 0.29fF
C209 c4 gnd 0.21fF
C210 w_8582_1350# vdd 0.12fF
C211 a_8041_2087# vdd 0.37fF
C212 w_8582_1350# a_8595_1356# 0.16fF
C213 vdd iq_s4 0.25fF
C214 w_12467_981# vdd 0.09fF
C215 w_7990_2081# clk_org 0.06fF
C216 w_8038_1765# a_8047_1739# 0.25fF
C217 w_8120_1765# a_8133_1771# 0.09fF
C218 a_12938_979# a_12932_947# 0.10fF
C219 w_13029_1526# vdd 0.07fF
C220 w_8111_958# a_8124_964# 0.09fF
C221 a_12938_979# vdd 0.37fF
C222 w_8129_1353# a_8098_1359# 0.06fF
C223 w_8047_1353# a_8060_1359# 0.01fF
C224 q_a3 gnd 0.41fF
C225 w_7990_2261# a1 0.06fF
C226 w_8575_1007# prop_4 0.02fF
C227 iq_s2 gnd 0.10fF
C228 a_12945_655# gnd 0.14fF
C229 w_8516_1670# vdd 0.06fF
C230 a_12932_947# gnd 0.14fF
C231 q_a1 gnd 0.35fF
C232 w_8555_1709# a_8529_1656# 0.06fF
C233 a_13012_1973# a_13006_1941# 0.10fF
C234 a_8098_1359# clk_org 0.05fF
C235 vdd gnd 2.00fF
C236 a_12951_687# clk_org 0.05fF
C237 a_8058_1199# vdd 0.29fF
C238 a_12997_1532# vdd 0.37fF
C239 w_7996_2430# a_8009_2436# 0.01fF
C240 w_8078_2430# a_8047_2436# 0.06fF
C241 a_8529_1711# q_b2 0.20fF
C242 a_12476_435# vdd 0.93fF
C243 a_8133_1771# vdd 0.37fF
C244 w_12999_1967# vdd 0.07fF
C245 a_8009_2436# vdd 0.29fF
C246 vdd iq_c4 0.25fF
C247 a_12500_2152# prop_1 0.22fF
C248 a_8093_1609# a_8051_1577# 0.51fF
C249 a_8529_1656# prop_2 0.52fF
C250 a_7999_2235# gnd 0.24fF
C251 a_8082_932# gnd 0.24fF
C252 w_12900_681# s4 0.06fF
C253 a_8041_2087# a_7999_2055# 0.51fF
C254 w_8516_1725# q_a2 0.06fF
C255 w_7990_2261# vdd 0.08fF
C256 w_8028_2081# vdd 0.07fF
C257 q_a4 vdd 0.46fF
C258 a_8588_1013# q_b4 0.12fF
C259 a_8538_2070# q_b1 0.20fF
C260 w_12566_1395# c1 0.06fF
C261 q_b4 vdd 0.45fF
C262 prop_3 vdd 0.10fF
C263 w_12955_1967# a_12968_1973# 0.09fF
C264 w_12424_445# c3 0.06fF
C265 w_8536_968# q_b4 0.23fF
C266 a_8595_1356# prop_3 0.45fF
C267 w_12506_965# c2 0.06fF
C268 w_12925_973# a_12938_979# 0.09fF
C269 a_8142_1359# q_a3 0.07fF
C270 w_8072_2261# a_8085_2267# 0.09fF
C271 w_7990_2261# a_7999_2235# 0.25fF
C272 w_12960_307# a_12973_313# 0.09fF
C273 w_12424_390# vdd 0.06fF
C274 w_12526_2205# a_12500_2207# 0.06fF
C275 a_12915_1532# vdd 0.29fF
C276 prop_4 gnd 0.27fF
C277 w_13014_973# q_s3 0.05fF
C278 a_12539_2211# vdd 0.93fF
C279 prop_2 a_12540_1342# 0.22fF
C280 a_12540_1397# s2 0.06fF
C281 a_8142_1359# vdd 0.37fF
C282 a_12437_431# a_12437_376# 0.08fF
C283 prop_4 a_12476_435# 0.12fF
C284 a_12995_687# vdd 0.37fF
C285 a_12926_1941# vdd 0.20fF
C286 a_7999_2055# gnd 0.24fF
C287 w_8045_1193# a_8058_1199# 0.01fF
C288 w_8127_1193# a_8096_1199# 0.06fF
C289 w_12487_2221# a_12500_2207# 0.03fF
C290 w_12940_1526# clk_org 0.06fF
C291 pdr3 c3 0.07fF
C292 carry_0 vdd 0.40fF
C293 w_8525_2029# a_8538_2015# 0.03fF
C294 a_8137_1609# a_8131_1577# 0.10fF
C295 w_12982_681# a_12995_687# 0.09fF
C296 w_12900_681# a_12909_655# 0.25fF
C297 a_8091_807# gnd 0.24fF
C298 w_8575_1007# a_8549_1009# 0.06fF
C299 w_8117_2081# a_8085_2087# 0.06fF
C300 w_8028_2081# a_7999_2055# 0.13fF
C301 w_8536_1023# vdd 0.09fF
C302 w_8111_958# clk_org 0.06fF
C303 gen_2 gnd 0.14fF
C304 a_8096_1199# clk_org 0.05fF
C305 w_8564_2068# q_b1 0.06fF
C306 pdr2 c2 0.07fF
C307 w_8543_1366# q_a3 0.06fF
C308 w_8082_833# vdd 0.08fF
C309 w_12424_390# prop_4 0.23fF
C310 a_8051_1577# vdd 0.20fF
C311 w_12917_1967# clk_org 0.06fF
C312 a_8124_964# clk_org 0.05fF
C313 a_8047_2436# clk_org 0.05fF
C314 w_12960_307# a_12931_281# 0.13fF
C315 a_12973_313# a_12931_281# 0.51fF
C316 w_8543_1366# vdd 0.09fF
C317 prop_1 gnd 0.27fF
C318 a_8133_839# a_8127_807# 0.10fF
C319 q_b1 q_a1 0.33fF
C320 a_8085_2404# gnd 0.14fF
C321 w_8582_1350# a_8556_1352# 0.06fF
C322 a_12437_376# s4 0.52fF
C323 pdr1 clock_car0 1.03fF
C324 q_b1 vdd 0.45fF
C325 vdd iq_s3 0.25fF
C326 a_8051_1771# a_8047_1739# 0.26fF
C327 w_8120_1765# a_8089_1771# 0.06fF
C328 w_8038_1765# a_8051_1771# 0.01fF
C329 w_12984_1526# vdd 0.07fF
C330 w_8200_958# vdd 0.07fF
C331 w_8085_1353# a_8098_1359# 0.09fF
C332 vdd q_s3 0.06fF
C333 w_8555_1709# vdd 0.12fF
C334 a_8549_1009# gnd 0.17fF
C335 w_8073_958# a4 0.06fF
C336 a_8086_964# vdd 0.29fF
C337 w_8555_1709# a_8568_1715# 0.16fF
C338 a_13017_313# gnd 0.12fF
C339 a_8529_1711# gnd 0.17fF
C340 a_13012_1973# clk_org 0.36fF
C341 a_8556_1352# gnd 0.17fF
C342 a_8140_1199# vdd 0.37fF
C343 a_12953_1532# vdd 0.37fF
C344 a_8538_2070# a_8538_2015# 0.08fF
C345 w_8034_2430# a_8047_2436# 0.09fF
C346 q_s4 gnd 0.14fF
C347 iq_s4 gnd 0.10fF
C348 a_8133_839# clk_org 0.05fF
C349 a_8089_1771# vdd 0.37fF
C350 w_12955_1967# vdd 0.07fF
C351 a_8118_932# gnd 0.14fF
C352 a_8091_2436# vdd 0.37fF
C353 a_12539_2211# prop_1 0.12fF
C354 prop_2 vdd 0.10fF
C355 s2 clk_org 0.21fF
C356 a_8086_964# a_8082_932# 0.26fF
C357 w_12902_1526# s2 0.06fF
C358 a_8568_1715# prop_2 0.45fF
C359 pdr4 c4 0.07fF
C360 vdd c3 0.48fF
C361 a_8549_1009# q_a4 0.27fF
C362 w_8082_833# a_8091_807# 0.25fF
C363 w_8164_833# a_8177_839# 0.09fF
C364 w_8165_1765# q_a2 0.05fF
C365 w_8123_2430# vdd 0.07fF
C366 w_7990_2081# vdd 0.08fF
C367 prop_1 carry_0 0.09fF
C368 a_8549_1009# q_b4 0.20fF
C369 w_7990_2081# b1 0.06fF
C370 w_12527_1411# c1 0.06fF
C371 a_8168_964# gnd 0.12fF
C372 a_12480_967# vdd 0.15fF
C373 a_8137_1609# clk_org 0.36fF
C374 a_8556_1352# prop_3 0.06fF
C375 w_12467_981# c2 0.06fF
C376 w_8072_2261# a_8041_2267# 0.06fF
C377 w_12463_429# vdd 0.12fF
C378 w_7990_2261# a_8003_2267# 0.01fF
C379 a_12437_431# gnd 0.17fF
C380 a_8095_839# vdd 0.29fF
C381 a_9035_1234# q_b3 0.20fF
C382 a_12951_687# a_12945_655# 0.10fF
C383 a_12500_2207# vdd 0.15fF
C384 prop_2 a_12579_1401# 0.12fF
C385 a_12540_1397# a_12540_1342# 0.08fF
C386 a_8098_1359# vdd 0.37fF
C387 iq_c4 gnd 0.10fF
C388 q_c4 gnd 0.14fF
C389 a_12951_687# vdd 0.37fF
C390 a_12930_1973# vdd 0.29fF
C391 a_8060_1359# a_8056_1327# 0.26fF
C392 w_8083_1193# a_8096_1199# 0.09fF
C393 w_8582_1350# q_b3 0.06fF
C394 gen_3 vdd 0.28fF
C395 a_8168_964# q_a4 0.07fF
C396 a_8529_1656# q_a2 0.06fF
C397 w_12902_1526# clk_org 0.06fF
C398 a_12995_687# q_s4 0.07fF
C399 a_12913_687# a_12909_655# 0.26fF
C400 w_8564_2068# a_8538_2015# 0.06fF
C401 vdd pdr3 0.68fF
C402 w_12900_681# a_12913_687# 0.01fF
C403 w_12982_681# a_12951_687# 0.06fF
C404 a_12480_912# vdd 0.15fF
C405 a_12896_947# clk_org 0.41fF
C406 c2 gnd 0.22fF
C407 w_8536_1023# a_8549_1009# 0.03fF
C408 a_8538_2015# q_a1 0.06fF
C409 w_8072_2081# a_8085_2087# 0.09fF
C410 w_7990_2081# a_7999_2055# 0.25fF
C411 w_8172_1193# vdd 0.07fF
C412 a_9027_1526# gnd 0.05fF
C413 a_8177_839# gnd 0.12fF
C414 a_8096_1199# a_8090_1167# 0.10fF
C415 a_8538_2015# vdd 0.15fF
C416 w_8174_1353# q_a3 0.05fF
C417 iq_s2 q_s2 0.07fF
C418 w_12467_926# vdd 0.06fF
C419 w_12463_429# prop_4 0.06fF
C420 clock_car0 gnd 1.03fF
C421 a_8055_1609# vdd 0.29fF
C422 a_8171_807# gnd 0.14fF
C423 q_b3 gnd 0.25fF
C424 w_12922_307# a_12931_281# 0.25fF
C425 iq_s1 q_s1 0.07fF
C426 s4 gnd 0.16fF
C427 w_8174_1353# vdd 0.07fF
C428 a_8047_1739# gnd 0.24fF
C429 a_8041_2404# gnd 0.14fF
C430 a_12540_1342# s2 0.52fF
C431 w_8543_1366# a_8556_1352# 0.03fF
C432 c2 prop_3 0.09fF
C433 a_12476_435# s4 0.45fF
C434 w_8034_2430# clk_org 0.06fF
C435 w_8076_1765# a_8089_1771# 0.09fF
C436 vdd clk_org 0.06fF
C437 w_13029_1526# q_s2 0.05fF
C438 w_12940_1526# vdd 0.07fF
C439 a_8091_2436# a_8085_2404# 0.10fF
C440 q_s4 iq_s4 0.07fF
C441 a_8095_839# a_8091_807# 0.26fF
C442 a_8177_839# q_b4 0.07fF
C443 q_s3 vdd 0.29fF
C444 w_8516_1725# vdd 0.09fF
C445 clock_car0 clock_in 0.02fF
C446 w_12887_973# s3 0.06fF
C447 w_8555_1709# a_8529_1711# 0.06fF
C448 a_12968_1973# a_12962_1941# 0.10fF
C449 w_8111_958# vdd 0.07fF
C450 a_12973_313# gnd 0.18fF
C451 q_s2 gnd 0.14fF
C452 a_8127_1739# gnd 0.14fF
C453 a_12968_1973# clk_org 0.05fF
C454 a_8096_1199# vdd 0.37fF
C455 a_8056_1327# gnd 0.24fF
C456 a_8168_964# a_8162_932# 0.10fF
C457 a_8085_2087# a_8079_2055# 0.10fF
C458 a_12997_1532# q_s2 0.07fF
C459 a_12909_655# gnd 0.24fF
C460 w_12917_1967# vdd 0.08fF
C461 a_8133_1771# a_8127_1739# 0.10fF
C462 a_8124_964# vdd 0.37fF
C463 iq_s3 gnd 0.10fF
C464 a_8047_2436# vdd 0.37fF
C465 a_12540_1397# vdd 0.15fF
C466 a_12500_2207# prop_1 0.20fF
C467 a_8529_1711# prop_2 0.06fF
C468 a_12935_313# a_12931_281# 0.26fF
C469 w_8200_958# a_8168_964# 0.06fF
C470 w_8111_958# a_8082_932# 0.13fF
C471 a_8085_2267# gnd 0.12fF
C472 w_13044_1967# q_s1 0.05fF
C473 c3 vdd 0.11fF
C474 w_8078_2430# vdd 0.07fF
C475 q_s3 gnd 0.05fF
C476 w_12487_2166# vdd 0.06fF
C477 a_8124_964# a_8082_932# 0.51fF
C478 w_8083_1193# clk_org 0.06fF
C479 a_8093_1609# clk_org 0.05fF
C480 w_8080_1603# a_8051_1577# 0.13fF
C481 w_8169_1603# a_8137_1609# 0.06fF
C482 w_8120_833# a_8133_839# 0.09fF
C483 w_12424_445# vdd 0.09fF
C484 w_8028_2261# a_8041_2267# 0.09fF
C485 w_8085_1353# clk_org 0.06fF
C486 a_8538_2015# prop_1 0.52fF
C487 c1 gnd 0.22fF
C488 a_12931_281# gnd 0.24fF
C489 a_13012_1973# vdd 0.37fF
C490 a_8085_2087# gnd 0.12fF
C491 w_12922_307# c4 0.06fF
C492 q_a2 vdd 0.46fF
C493 c3 gnd 0.21fF
C494 a_8133_839# vdd 0.37fF
C495 w_8564_2068# a_8577_2074# 0.16fF
C496 q_c4 iq_c4 0.07fF
C497 w_12938_681# a_12951_687# 0.09fF
C498 a_8093_1609# a_8087_1577# 0.10fF
C499 c3 prop_4 0.09fF
C500 a_12982_979# gnd 0.12fF
C501 a_12519_971# vdd 0.93fF
C502 a1 clk_org 0.21fF
C503 a_12900_979# a_12896_947# 0.26fF
C504 w_8072_2081# a_8041_2087# 0.06fF
C505 vdd pdr1 0.68fF
C506 w_7990_2081# a_8003_2087# 0.01fF
C507 w_8127_1193# vdd 0.07fF
C508 w_12566_1395# prop_2 0.06fF
C509 a_8577_2074# vdd 0.93fF
C510 w_8117_2081# q_b1 0.05fF
C511 w_13014_973# vdd 0.07fF
C512 w_12463_429# a_12437_431# 0.06fF
C513 w_8120_833# clk_org 0.06fF
C514 a_8137_1609# vdd 0.37fF
C515 w_8516_1670# q_b2 0.23fF
C516 w_12506_965# prop_3 0.06fF
C517 a_8054_1167# gnd 0.24fF
C518 w_12922_307# a_12935_313# 0.01fF
C519 q_b2 gnd 0.30fF
C520 w_8129_1353# vdd 0.07fF
C521 a_12437_376# gnd 0.20fF
C522 a_8058_1199# a_8054_1167# 0.26fF
C523 a_8140_1199# q_b3 0.07fF
C524 a_12579_1401# s2 0.45fF
C525 a_8005_2404# gnd 0.24fF
C526 c2 a_12480_967# 0.27fF
C527 pdr3 gnd 0.05fF
C528 w_7996_2430# clk_org 0.06fF
C529 a_8089_1771# a_8047_1739# 0.51fF
C530 w_12902_1526# vdd 0.08fF
C531 a_8009_2436# a_8005_2404# 0.26fF
C532 b1 clk_org 0.21fF
C533 w_8042_1603# b2 0.06fF
C534 a_12896_947# vdd 0.20fF
C535 w_12487_2166# prop_1 0.23fF
C536 w_8209_833# vdd 0.07fF
C537 w_8165_1765# vdd 0.07fF
C538 w_12506_965# s3 0.02fF
C539 w_8516_1725# a_8529_1711# 0.03fF
C540 a_8133_839# a_8091_807# 0.51fF
C541 a_8082_932# clk_org 0.41fF
C542 a_9023_868# gen_4 0.05fF
C543 a_7999_2235# clk_org 0.41fF
C544 a_12911_1500# gnd 0.24fF
C545 a_8083_1739# gnd 0.14fF
C546 a_12500_2152# gnd 0.20fF
C547 c2 a_12480_912# 0.06fF
C548 a_12500_2152# s1 0.52fF
C549 w_12424_390# a_12437_376# 0.03fF
C550 w_12463_429# s4 0.02fF
C551 pdr4 clock_car0 1.03fF
C552 w_8525_2029# vdd 0.06fF
C553 q_s1 gnd 0.14fF
C554 clk_org gnd 0.05fF
C555 a_8041_2267# gnd 0.18fF
C556 a_8124_964# a_8118_932# 0.10fF
C557 w_8034_2430# vdd 0.07fF
C558 a_8556_1297# q_a3 0.06fF
C559 w_12526_2205# vdd 0.12fF
C560 a_8549_954# vdd 0.15fF
C561 a_8085_2087# q_b1 0.07fF
C562 w_8045_1193# clk_org 0.06fF
C563 a_8529_1656# vdd 0.15fF
C564 gen_1 pdr1 0.02fF
C565 w_8536_968# a_8549_954# 0.03fF
C566 w_8073_958# a_8086_964# 0.01fF
C567 a_7999_2055# clk_org 0.41fF
C568 w_8155_958# a_8124_964# 0.06fF
C569 a_8556_1297# vdd 0.15fF
C570 w_12925_973# clk_org 0.06fF
C571 w_8124_1603# a_8137_1609# 0.09fF
C572 w_8042_1603# a_8051_1577# 0.25fF
C573 a_8079_2055# gnd 0.14fF
C574 w_12487_2221# vdd 0.09fF
C575 a_9035_1234# gnd 0.05fF
C576 w_8172_1193# q_b3 0.05fF
C577 w_13027_681# vdd 0.07fF
C578 a_12915_1532# a_12911_1500# 0.26fF
C579 w_8047_1353# clk_org 0.06fF
C580 a_8091_807# clk_org 0.41fF
C581 a_9025_1876# gnd 0.05fF
C582 w_12925_973# a_12896_947# 0.13fF
C583 a_8577_2074# prop_1 0.45fF
C584 a_12991_1500# gnd 0.14fF
C585 a_13017_313# a_13011_281# 0.10fF
C586 clock_in clk_org 0.07fF
C587 w_8082_833# b4 0.06fF
C588 a_8041_2087# gnd 0.18fF
C589 a_12968_1973# vdd 0.37fF
C590 a_8098_1359# a_8056_1327# 0.51fF
C591 a_12997_1532# a_12991_1500# 0.10fF
C592 a_8529_1711# q_a2 0.27fF
C593 w_8575_1007# q_a4 0.06fF
C594 a_12951_687# a_12909_655# 0.51fF
C595 a_12540_1342# vdd 0.15fF
C596 a_12500_2152# carry_0 0.06fF
C597 c1 prop_2 0.09fF
C598 w_8564_2068# a_8538_2070# 0.06fF
C599 w_12527_1356# prop_2 0.23fF
C600 w_8575_1007# q_b4 0.06fF
C601 c3 a_12437_431# 0.27fF
C602 a_12938_979# gnd 0.18fF
C603 a_8549_954# prop_4 0.52fF
C604 w_13029_1526# a_12997_1532# 0.06fF
C605 w_8076_1765# clk_org 0.06fF
C606 a_9023_868# vdd 0.44fF
C607 a_8538_2070# q_a1 0.27fF
C608 w_8028_2081# a_8041_2087# 0.09fF
C609 w_8083_1193# vdd 0.07fF
C610 w_12566_1395# a_12540_1397# 0.06fF
C611 gen_4 vdd 0.28fF
C612 w_8582_1350# prop_3 0.02fF
C613 a_8538_2070# vdd 0.15fF
C614 w_12969_973# vdd 0.07fF
C615 w_12424_445# a_12437_431# 0.03fF
C616 a_8093_1609# vdd 0.37fF
C617 w_8555_1709# q_b2 0.06fF
C618 w_12506_965# a_12480_967# 0.06fF
C619 s1 gnd 0.16fF
C620 a_12997_1532# gnd 0.12fF
C621 w_8085_1353# vdd 0.07fF
C622 a_8133_1771# gnd 0.12fF
C623 vdd clock_in 0.74fF
C624 clk_org a_13017_313# 0.36fF
C625 gen_1 vdd 0.28fF
C626 w_8169_1603# vdd 0.07fF
C627 q_a4 gnd 0.35fF
C628 a_8047_2436# a_8041_2404# 0.10fF
C629 pdr2 prop_2 0.02fF
C630 pdr1 gnd 0.05fF
C631 q_b4 gnd 0.30fF
C632 prop_3 gnd 0.27fF
C633 a_12900_979# vdd 0.29fF
C634 w_12526_2205# prop_1 0.06fF
C635 w_12938_681# clk_org 0.06fF
C636 w_12506_965# a_12480_912# 0.06fF
C637 w_8120_1765# vdd 0.07fF
C638 w_12566_1395# s2 0.02fF
C639 w_8564_2068# q_a1 0.06fF
C640 w_8120_833# vdd 0.07fF
C641 w_12463_429# a_12437_376# 0.06fF
C642 a_8142_1359# gnd 0.12fF
C643 a_12539_2211# s1 0.45fF
C644 a_8041_2087# a_8035_2055# 0.10fF
C645 a_12953_1532# a_12911_1500# 0.51fF
C646 q_a2 a_9027_1526# 0.20fF
C647 a_12995_687# gnd 0.12fF
C648 a_12926_1941# gnd 0.24fF
C649 w_8564_2068# vdd 0.12fF
C650 a_8089_1771# a_8083_1739# 0.10fF
C651 q_a4 q_b4 0.33fF
C652 a_8168_964# clk_org 0.36fF
C653 carry_0 gnd 0.35fF
C654 q_a3 vdd 0.46fF
C655 pdr3 pdr4 1.03fF
C656 pdr2 clock_car0 1.03fF
C657 a_8549_1009# a_8549_954# 0.08fF
C658 w_7996_2430# vdd 0.08fF
C659 s3 gnd 0.16fF
C660 q_a1 vdd 0.46fF
C661 a2 clk_org 0.21fF
C662 a_8588_1013# vdd 0.93fF
C663 w_13049_307# vdd 0.07fF
C664 a_8568_1715# vdd 0.93fF
C665 a_8529_1711# a_8529_1656# 0.08fF
C666 vdd q_s4 0.06fF
C667 a_8595_1356# vdd 0.93fF
C668 w_12887_973# clk_org 0.06fF
C669 w_8536_968# vdd 0.06fF
C670 w_8042_1603# a_8055_1609# 0.01fF
C671 w_8124_1603# a_8093_1609# 0.06fF
C672 a_8035_2055# gnd 0.14fF
C673 a_8556_1352# a_8556_1297# 0.08fF
C674 w_12982_681# vdd 0.07fF
C675 a_8051_1577# gnd 0.24fF
C676 prop_1 pdr1 0.02fF
C677 w_12887_973# a_12896_947# 0.25fF
C678 carry_0 prop1_car0 0.02fF
C679 a_8082_932# vdd 0.20fF
C680 a_7999_2235# vdd 0.20fF
C681 a_8538_2070# prop_1 0.06fF
C682 w_13027_681# q_s4 0.05fF
C683 a_12947_1500# gnd 0.14fF
C684 a_12500_2207# a_12500_2152# 0.08fF
C685 a_12982_979# q_s3 0.07fF
C686 w_8536_1023# q_a4 0.06fF
C687 w_8080_1603# clk_org 0.06fF
C688 a_8177_839# clk_org 0.36fF
C689 q_b1 gnd 0.30fF
C690 a_8162_932# gnd 0.14fF
C691 c1 a_12540_1397# 0.27fF
C692 a3 clk_org 0.21fF
C693 w_8525_2084# a_8538_2070# 0.03fF
C694 a_12579_1401# vdd 0.93fF
C695 a_8085_2267# a_8079_2235# 0.10fF
C696 a_8588_1013# prop_4 0.45fF
C697 prop_4 vdd 0.10fF
C698 w_8209_833# a_8177_839# 0.06fF
C699 w_12984_1526# a_12997_1532# 0.09fF
C700 s4 clk_org 0.21fF
C701 w_8120_833# a_8091_807# 0.13fF
C702 a_8047_1739# clk_org 0.41fF
C703 w_8038_1765# clk_org 0.06fF
C704 vdd q_c4 0.06fF
C705 w_12527_1411# a_12540_1397# 0.03fF
C706 w_8045_1193# vdd 0.08fF
C707 a_7999_2055# vdd 0.20fF
C708 w_8543_1311# a_8556_1297# 0.03fF
C709 w_12925_973# vdd 0.07fF
C710 w_12467_981# a_12480_967# 0.03fF
C711 a_8140_1199# gnd 0.12fF
C712 a_12953_1532# gnd 0.18fF
C713 w_8047_1353# vdd 0.08fF
C714 vdd c2 0.48fF
C715 a_9035_1234# gen_3 0.05fF
C716 a_8096_1199# a_8054_1167# 0.51fF
C717 w_8200_958# q_a4 0.05fF
C718 a_8091_807# vdd 0.20fF
C719 a_8089_1771# gnd 0.18fF
C720 a_8091_2436# gnd 0.12fF
C721 prop_2 gnd 0.27fF
C722 w_8564_2068# prop_1 0.02fF
C723 w_12960_307# clk_org 0.06fF
C724 gen_2 vdd 0.28fF
C725 w_12940_1526# a_12911_1500# 0.13fF
C726 clk_org a_12973_313# 0.05fF
C727 w_8124_1603# vdd 0.07fF
C728 a_8047_2436# a_8005_2404# 0.51fF
C729 vdd pdr4 0.68fF
C730 a_8056_1327# clk_org 0.41fF
C731 c3 a_12437_376# 0.06fF
C732 a_12909_655# clk_org 0.41fF
C733 a_12480_967# gnd 0.17fF
C734 a_8136_1327# gnd 0.14fF
C735 w_12900_681# clk_org 0.06fF
C736 w_8076_1765# vdd 0.07fF
C737 w_12506_965# a_12519_971# 0.16fF
C738 prop_1 vdd 0.10fF
C739 a_8556_1297# q_b3 0.22fF
C740 a_8085_2267# clk_org 0.36fF
C741 w_12566_1395# a_12540_1342# 0.06fF
C742 a_12500_2207# gnd 0.17fF
C743 w_8117_2261# q_a1 0.05fF
C744 w_8525_2084# q_a1 0.06fF
C745 w_12463_429# a_12476_435# 0.16fF
C746 a_8098_1359# gnd 0.18fF
C747 a_12500_2207# s1 0.06fF
C748 a_12951_687# gnd 0.18fF
C749 clock_in gnd 0.21fF
C750 w_8117_2261# vdd 0.07fF
C751 w_8525_2084# vdd 0.09fF
C752 gen_3 gnd 0.14fF
C753 w_8073_958# clk_org 0.06fF
C754 w_13044_1967# a_13012_1973# 0.06fF
C755 w_12955_1967# a_12926_1941# 0.13fF
C756 b3 clk_org 0.21fF
C757 a_12480_967# prop_3 0.20fF
C758 q_b2 q_a2 0.33fF
C759 w_13014_973# a_12982_979# 0.06fF
C760 a_12480_912# gnd 0.20fF
C761 a_8556_1352# q_a3 0.27fF
C762 vdd q_s2 0.06fF
C763 a_8549_1009# vdd 0.15fF
C764 a4 clk_org 0.21fF
C765 w_13004_307# vdd 0.07fF
C766 w_13049_307# a_13017_313# 0.06fF
C767 cin clk_org 0.21fF
C768 a_8091_2436# carry_0 0.07fF
C769 clk_org a_12931_281# 0.41fF
C770 w_12487_2166# a_12500_2152# 0.03fF
C771 a_13017_313# vdd 0.37fF
C772 a_8529_1711# vdd 0.15fF
C773 a_8085_2087# clk_org 0.36fF
C774 a_8556_1352# vdd 0.15fF
C775 q_s4 vdd 0.29fF
C776 prop1_car0 clock_car0 1.03fF
C777 w_8080_1603# a_8093_1609# 0.09fF
C778 pdr2 pdr3 1.03fF
C779 a_8538_2015# gnd 0.20fF
C780 pdr4 gen_4 0.02fF
C781 w_8123_2430# carry_0 0.05fF
C782 a_8142_1359# a_8136_1327# 0.10fF
C783 w_12938_681# vdd 0.07fF
C784 w_12887_973# a_12900_979# 0.01fF
C785 a_12982_979# clk_org 0.36fF
C786 a_8003_2267# vdd 0.29fF
C787 a_12973_313# a_12967_281# 0.10fF
C788 w_8155_958# vdd 0.07fF
C789 a_8137_1609# q_b2 0.07fF
C790 a_12953_1532# a_12947_1500# 0.10fF
C791 prop_3 a_12480_912# 0.22fF
C792 a_12480_967# s3 0.06fF
C793 w_8042_1603# clk_org 0.06fF
C794 a_13006_1941# gnd 0.14fF
C795 a_8168_964# vdd 0.37fF
C796 a_13012_1973# q_s1 0.07fF
C797 a_12930_1973# a_12926_1941# 0.26fF
C798 a_12500_2207# carry_0 0.27fF
C799 a_8003_2267# a_7999_2235# 0.26fF
C800 vdd iq_s1 0.25fF
C801 a_8549_1009# prop_4 0.06fF
C802 a_8054_1167# clk_org 0.41fF
C803 a_12437_431# vdd 0.15fF
C804 w_12984_1526# a_12953_1532# 0.06fF
C805 q_s4 gnd 0.05fF
C806 w_12467_926# prop_3 0.23fF
C807 q_s3 gnd 0.14fF
C808 b4 clk_org 0.21fF
C809 vdd c1 0.48fF
C810 w_13049_307# q_c4 0.05fF
C811 a_8005_2404# clk_org 0.41fF
C812 vdd q_c4 0.29fF
C813 w_8543_1311# vdd 0.06fF
C814 a_8003_2087# vdd 0.29fF
C815 w_12887_973# vdd 0.08fF
C816 w_8164_833# a_8133_839# 0.06fF
C817 w_8082_833# a_8095_839# 0.01fF
C818 w_8028_2261# clk_org 0.06fF
C819 a_8096_1199# gnd 0.18fF
C820 a_12982_979# a_12976_947# 0.10fF
C821 a_12480_912# s3 0.52fF
C822 a_8131_1577# gnd 0.14fF
C823 w_8555_1709# prop_2 0.02fF
C824 w_12566_1395# vdd 0.12fF
C825 a_8124_964# gnd 0.18fF
C826 c2 vdd 0.11fF
C827 a_8047_2436# gnd 0.18fF
C828 a_13011_281# Gnd 0.01fF
C829 a_12967_281# Gnd 0.01fF
C830 gnd Gnd 4.77fF
C831 gnd Gnd 0.97fF
C832 iq_c4 Gnd 0.06fF
C833 q_c4 Gnd 0.42fF
C834 a_12931_281# Gnd 0.04fF
C835 vdd Gnd 14.28fF
C836 a_13017_313# Gnd 0.44fF
C837 a_12973_313# Gnd 0.48fF
C838 clk_org Gnd 30.24fF
C839 c4 Gnd 0.28fF
C840 s4 Gnd 0.58fF
C841 a_12437_376# Gnd 0.05fF
C842 a_12476_435# Gnd 0.06fF
C843 prop_4 Gnd 1.16fF
C844 a_12437_431# Gnd 0.02fF
C845 c3 Gnd 1.24fF
C846 a_12989_655# Gnd 0.01fF
C847 a_12945_655# Gnd 0.01fF
C848 iq_s4 Gnd 0.06fF
C849 q_s4 Gnd 0.44fF
C850 a_12909_655# Gnd 1.20fF
C851 a_12995_687# Gnd 0.44fF
C852 a_12951_687# Gnd 0.48fF
C853 a_8171_807# Gnd 0.01fF
C854 a_8127_807# Gnd 0.01fF
C855 gen_4 Gnd 0.30fF
C856 q_b4 Gnd 0.47fF
C857 a_8091_807# Gnd 0.02fF
C858 a_8177_839# Gnd 0.44fF
C859 a_8133_839# Gnd 0.48fF
C860 b4 Gnd 0.19fF
C861 a_9023_868# Gnd 0.29fF
C862 q_a4 Gnd 0.77fF
C863 a_12976_947# Gnd 0.01fF
C864 a_12932_947# Gnd 0.01fF
C865 a_8162_932# Gnd 0.01fF
C866 a_8118_932# Gnd 0.01fF
C867 q_s3 Gnd 0.36fF
C868 a_12896_947# Gnd 0.02fF
C869 s3 Gnd 0.27fF
C870 a_12480_912# Gnd 0.23fF
C871 a_12519_971# Gnd 0.06fF
C872 prop_3 Gnd 1.89fF
C873 a_12480_967# Gnd 0.49fF
C874 c2 Gnd 1.24fF
C875 a_12982_979# Gnd 0.44fF
C876 a_12938_979# Gnd 0.48fF
C877 a_8082_932# Gnd 0.15fF
C878 a_8168_964# Gnd 0.44fF
C879 a_8124_964# Gnd 0.48fF
C880 a4 Gnd 0.20fF
C881 a_8549_954# Gnd 0.04fF
C882 a_8588_1013# Gnd 0.06fF
C883 a_8549_1009# Gnd 0.05fF
C884 iq_s3 Gnd 0.05fF
C885 a_8134_1167# Gnd 0.01fF
C886 a_8090_1167# Gnd 0.01fF
C887 gen_3 Gnd 0.29fF
C888 q_b3 Gnd 0.86fF
C889 a_8054_1167# Gnd 1.20fF
C890 a_8140_1199# Gnd 0.44fF
C891 a_8096_1199# Gnd 0.48fF
C892 b3 Gnd 0.17fF
C893 a_9035_1234# Gnd 0.17fF
C894 q_a3 Gnd 0.81fF
C895 a_8136_1327# Gnd 0.01fF
C896 a_8092_1327# Gnd 0.01fF
C897 a_8556_1297# Gnd 0.05fF
C898 a_8595_1356# Gnd 0.06fF
C899 a_8556_1352# Gnd 0.04fF
C900 a_8056_1327# Gnd 0.02fF
C901 a_8142_1359# Gnd 0.44fF
C902 a_8098_1359# Gnd 0.48fF
C903 a3 Gnd 0.19fF
C904 s2 Gnd 0.63fF
C905 a_12540_1342# Gnd 0.04fF
C906 a_12579_1401# Gnd 0.06fF
C907 prop_2 Gnd 0.85fF
C908 a_12540_1397# Gnd 0.05fF
C909 c1 Gnd 0.54fF
C910 a_12991_1500# Gnd 0.01fF
C911 a_12947_1500# Gnd 0.01fF
C912 q_s2 Gnd 0.41fF
C913 a_12911_1500# Gnd 0.04fF
C914 gen_2 Gnd 0.30fF
C915 a_9027_1526# Gnd 0.18fF
C916 q_a2 Gnd 0.84fF
C917 q_b2 Gnd 0.51fF
C918 a_12997_1532# Gnd 0.44fF
C919 a_12953_1532# Gnd 0.48fF
C920 a_8131_1577# Gnd 0.01fF
C921 a_8087_1577# Gnd 0.01fF
C922 iq_s2 Gnd 0.06fF
C923 a_8051_1577# Gnd 0.04fF
C924 a_8137_1609# Gnd 0.44fF
C925 a_8093_1609# Gnd 0.48fF
C926 b2 Gnd 0.22fF
C927 clock_in Gnd 1.55fF
C928 clock_car0 Gnd 0.77fF
C929 pdr4 Gnd 0.57fF
C930 pdr3 Gnd 0.69fF
C931 pdr2 Gnd 0.68fF
C932 pdr1 Gnd 0.68fF
C933 prop1_car0 Gnd 0.26fF
C934 a_8529_1656# Gnd 0.04fF
C935 a_8568_1715# Gnd 0.06fF
C936 a_8529_1711# Gnd 0.05fF
C937 a_8127_1739# Gnd 0.01fF
C938 a_8083_1739# Gnd 0.01fF
C939 gen_1 Gnd 0.31fF
C940 carry_0 Gnd 0.84fF
C941 prop_1 Gnd 0.90fF
C942 a_8047_1739# Gnd 0.02fF
C943 a_8133_1771# Gnd 0.44fF
C944 a_8089_1771# Gnd 0.48fF
C945 a2 Gnd 0.19fF
C946 a_9025_1876# Gnd 0.29fF
C947 q_a1 Gnd 1.46fF
C948 q_b1 Gnd 0.77fF
C949 a_13006_1941# Gnd 0.01fF
C950 a_12962_1941# Gnd 0.01fF
C951 q_s1 Gnd 0.42fF
C952 a_12926_1941# Gnd 0.02fF
C953 a_13012_1973# Gnd 0.44fF
C954 a_12968_1973# Gnd 0.48fF
C955 s1 Gnd 0.20fF
C956 iq_s1 Gnd 0.07fF
C957 a_8079_2055# Gnd 0.01fF
C958 a_8035_2055# Gnd 0.01fF
C959 a_8538_2015# Gnd 0.05fF
C960 a_8577_2074# Gnd 0.06fF
C961 a_8538_2070# Gnd 0.49fF
C962 a_7999_2055# Gnd 1.20fF
C963 a_8085_2087# Gnd 0.44fF
C964 a_8041_2087# Gnd 0.48fF
C965 b1 Gnd 0.17fF
C966 a_12500_2152# Gnd 0.06fF
C967 a_12539_2211# Gnd 0.06fF
C968 a_12500_2207# Gnd 0.05fF
C969 a_8079_2235# Gnd 0.01fF
C970 a_8035_2235# Gnd 0.01fF
C971 a_7999_2235# Gnd 0.02fF
C972 a_8085_2267# Gnd 0.44fF
C973 a_8041_2267# Gnd 0.48fF
C974 a1 Gnd 0.19fF
C975 a_8085_2404# Gnd 0.01fF
C976 a_8041_2404# Gnd 0.01fF
C977 a_8005_2404# Gnd 0.02fF
C978 a_8091_2436# Gnd 0.44fF
C979 a_8047_2436# Gnd 0.48fF
C980 cin Gnd 0.19fF
C981 vdd Gnd 16.96fF
C982 w_13049_307# Gnd 0.97fF
C983 w_13004_307# Gnd 0.97fF
C984 w_12960_307# Gnd 0.97fF
C985 w_12922_307# Gnd 0.67fF
C986 w_12424_390# Gnd 0.53fF
C987 w_12463_429# Gnd 2.28fF
C988 w_12424_445# Gnd 0.58fF
C989 w_13027_681# Gnd 0.97fF
C990 w_12982_681# Gnd 0.97fF
C991 w_12938_681# Gnd 0.97fF
C992 w_12900_681# Gnd 0.67fF
C993 w_8209_833# Gnd 0.97fF
C994 w_8164_833# Gnd 0.97fF
C995 w_8120_833# Gnd 0.97fF
C996 w_8082_833# Gnd 1.19fF
C997 w_12467_926# Gnd 0.58fF
C998 w_13014_973# Gnd 0.97fF
C999 w_12969_973# Gnd 0.97fF
C1000 w_12925_973# Gnd 0.97fF
C1001 w_12887_973# Gnd 0.67fF
C1002 w_12506_965# Gnd 2.28fF
C1003 w_12467_981# Gnd 0.58fF
C1004 w_8536_968# Gnd 0.58fF
C1005 w_8200_958# Gnd 0.97fF
C1006 w_8155_958# Gnd 0.97fF
C1007 w_8111_958# Gnd 0.97fF
C1008 w_8073_958# Gnd 1.19fF
C1009 w_8575_1007# Gnd 2.28fF
C1010 w_8536_1023# Gnd 0.41fF
C1011 w_8172_1193# Gnd 0.97fF
C1012 w_8127_1193# Gnd 0.97fF
C1013 w_8083_1193# Gnd 0.97fF
C1014 w_8045_1193# Gnd 0.67fF
C1015 w_8543_1311# Gnd 0.53fF
C1016 w_12527_1356# Gnd 0.58fF
C1017 w_8582_1350# Gnd 2.28fF
C1018 w_8543_1366# Gnd 0.58fF
C1019 w_8174_1353# Gnd 0.97fF
C1020 w_8129_1353# Gnd 0.97fF
C1021 w_8085_1353# Gnd 0.97fF
C1022 w_8047_1353# Gnd 1.19fF
C1023 w_12566_1395# Gnd 2.28fF
C1024 w_12527_1411# Gnd 0.41fF
C1025 w_13029_1526# Gnd 0.97fF
C1026 w_12984_1526# Gnd 0.97fF
C1027 w_12940_1526# Gnd 0.97fF
C1028 w_12902_1526# Gnd 0.67fF
C1029 w_8169_1603# Gnd 0.97fF
C1030 w_8124_1603# Gnd 0.97fF
C1031 w_8080_1603# Gnd 0.97fF
C1032 w_8042_1603# Gnd 0.67fF
C1033 w_8516_1670# Gnd 0.58fF
C1034 w_8555_1709# Gnd 2.28fF
C1035 w_8516_1725# Gnd 0.41fF
C1036 w_8165_1765# Gnd 0.97fF
C1037 w_8120_1765# Gnd 0.97fF
C1038 w_8076_1765# Gnd 0.97fF
C1039 w_8038_1765# Gnd 1.19fF
C1040 w_13044_1967# Gnd 0.97fF
C1041 w_12999_1967# Gnd 0.97fF
C1042 w_12955_1967# Gnd 0.97fF
C1043 w_12917_1967# Gnd 1.19fF
C1044 w_8525_2029# Gnd 0.53fF
C1045 w_8564_2068# Gnd 2.28fF
C1046 w_8525_2084# Gnd 0.36fF
C1047 w_8117_2081# Gnd 0.97fF
C1048 w_8072_2081# Gnd 0.97fF
C1049 w_8028_2081# Gnd 0.97fF
C1050 w_7990_2081# Gnd 0.67fF
C1051 w_12487_2166# Gnd 0.58fF
C1052 w_12526_2205# Gnd 2.28fF
C1053 w_12487_2221# Gnd 0.41fF
C1054 w_8117_2261# Gnd 0.97fF
C1055 w_8072_2261# Gnd 0.97fF
C1056 w_8028_2261# Gnd 0.97fF
C1057 w_7990_2261# Gnd 1.19fF
C1058 w_8123_2430# Gnd 0.97fF
C1059 w_8078_2430# Gnd 0.97fF
C1060 w_8034_2430# Gnd 0.97fF
C1061 w_7996_2430# Gnd 1.19fF




* .tran 1n  {30*Ton} {15*Ton} 
.tran 0.05n  {15*Ton+3n} 
.measure tran clk_c4_f trig V(clk_org) val=0.9 rise=2 targ v(q_c4) val=0.9 fall=1
.measure tran clk_s1_f trig V(clk_org) val=0.9 rise=2 targ v(q_s1) val=0.9 fall=1
.measure tran clk_s2_f trig V(clk_org) val=0.9 rise=2 targ v(q_s2) val=0.9 fall=1
.measure tran clk_s3_f trig V(clk_org) val=0.9 rise=2 targ v(q_s3) val=0.9 fall=1
.measure tran clk_s4_f trig V(clk_org) val=0.9 rise=2 targ v(q_s4) val=0.9 fall=1

.measure tran clk_s4_r trig V(clk_org) val=0.9 rise=3 targ v(q_s4) val=0.9 rise=1
.measure tran clk_s3_r trig V(clk_org) val=0.9 rise=3 targ v(q_s3) val=0.9 rise=1
.measure tran clk_s2_r trig V(clk_org) val=0.9 rise=3 targ v(q_s2) val=0.9 rise=1
.measure tran clk_s1_r trig V(clk_org) val=0.9 rise=3 targ v(q_s1) val=0.9 rise=1

* .ic v(q_a1)=0
* .ic v(q_a2)=0
* .ic v(q_a3)=0
* .ic v(q_a4)=0
* .ic v(q_b1)=0
* .ic v(q_b2)=0
* .ic v(q_b3)=0
* .ic v(q_b4)=0
* .ic v(carry_0)=0
* .ic v(c4)=0

* .ic v(s1)=0
* .ic v(s2)=0
* .ic v(s3)=0
* .ic v(s4)=0
* .ic v(s1)=0
* .ic v(s1)=0

.control
* set hcopypscolor = 1 *White background for saving plots
* set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
* plot v(a1) 2+v(a2) 4+v(carry_0) 6+v(s1) 8+v(c1) 10+v(clock_in)
plot v(q_s1) 2+v(q_s2) 4+v(q_s3) 6+v(q_s4) 8+v(q_c4) 10+v(clk_org)
plot v(a1) 2+v(a2) 4+v(a3) 6+v(a4) 8+v(clk_org)
plot v(b1) 2+v(b2) 4+v(b3) 6+v(b4) 8+v(clk_org)
* plot v(s1) 2+v(s2) 4+v(s3) 6+v(s4) 8+v(c4) 10+v(clk_org)
* plot v(a1) v(b1) 2+v(a2) 2+v(b2) 4+v(a3) 4+v(b3) 6+v(a4) 6+v(b4) 8+v(clk_org)
* plot v(a1) v(q_a1)  2+v(b1) 2+v(q_b1) 4+v(carry_0) 6+v(q_s1) 8+v(c1) 10+v(clk_org)
* plot v(q_a2) 2+v(q_b2) 4+v(c1) 6+v(q_s2) 8+v(c2) 10+v(clk_org)
* plot v(q_a3) 2+v(q_b3) 4+v(c2) 6+v(q_s3) 8+v(c3) 10+v(clk_org)
* plot v(q_a4) 2+v(q_b4) 4+v(c3) 6+v(q_s4) 8+v(q_c4) 10+v(clk_org)
* plot v(clk_org) 4+v(c4)
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