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

* V_a1 a1 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
* V_a2 a2 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
* V_a3 a3 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
* V_a4 a4 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)

* V_b1 b1 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
* V_b2 b2 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
* V_b3 b3 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)
* V_b4 b4 0 PWL(0ns 0 10ns 0 10.1ns 1.8 20ns 1.8)

V_a1 a1 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 0 {2*Tperiod} 0)
V_a2 a2 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 0 {2*Tperiod} 0)
V_a3 a3 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
V_a4 a4 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
V_b1 b1 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
V_b2 b2 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
V_b3 b3 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 0 {2*Tperiod} 0)
V_b4 b4 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 0 {2*Tperiod} 0)

    * V1 a1 0 pulse(0 1.8 0 10p 10p {2*Ton} {4*Ton})
    * v2 a2 0 pulse(0 1.8 0 10p 10p {3*Ton} {6*Ton})
    * v3 a3 0 pulse(0 1.8 0 10p 10p {4*Ton} {8*Ton})
    * v4 a4 0 pulse(0 1.8 0 10p 10p {5*Ton} {10*Ton})
    * V5 b1 0  pulse(0 1.8 0 10p 10p {6*Ton} {12*Ton})
    * v6 b2 0  pulse(0 1.8 0 10p 10p {7*Ton} {14*Ton})
    * v7 b3 0  pulse(0 1.8 0 10p 10p {8*Ton} {16*Ton})
    * v8 b4 0  pulse(0 1.8 0 10p 10p {9*Ton} {18*Ton})
    V9 cin 0 1.8

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




M1000 a_n261_n1715# a_n300_n1774# prop_2 w_n274_n1721# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1001 a_4067_n2483# s3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=4840 ps=2896
M1002 vdd q_a1 a_196_n1554# vdd CMOSP w=20 l=2
+  ad=11080 pd=5432 as=180 ps=58
M1003 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1004 a_198_n1904# q_a2 a_198_n1953# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1005 gen_3 a_206_n2196# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1006 prop_4 q_b4 a_n241_n2470# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1007 a_n280_n2476# q_b4 vdd w_n293_n2462# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1008 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1009 gen_2 a_198_n1904# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1010 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=2000 ps=890
M1011 a_n736_n1821# clk_org vdd w_n749_n1827# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1012 a_4166_n2743# a_4122_n2743# vdd w_4153_n2749# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1013 a_n747_n2498# a4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1014 a_n788_n1343# clk_org vdd w_n801_n1349# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1015 a_n750_n1375# a_n788_n1343# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1016 a_n300_n1774# q_b2 vdd w_n313_n1760# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1017 q_b4 a_n652_n2591# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1018 a_n826_n1343# b1 vdd w_n839_n1349# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1019 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=1500 ps=630
M1020 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1021 a_3647_n2995# a_3608_n3054# s4 w_3634_n3001# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1022 a_n241_n2417# q_a4 vdd w_n254_n2423# CMOSP w=24 l=2
+  ad=432 pd=180 as=0 ps=0
M1023 q_s1 a_4183_n1457# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1024 a_n300_n1719# q_a2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1025 a_n261_n1768# q_a2 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1026 s2 a_3711_n2033# a_3750_n2029# w_3737_n2035# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1027 a_4102_n3149# clk_org a_4106_n3117# w_4093_n3123# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1028 a_3675_n3048# a_3608_n2999# s4 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1029 a_n820_n994# cin vdd w_n833_n1000# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1030 a_n280_n2421# q_a4 vdd w_n293_n2407# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1031 a_4144_n3117# a_4102_n3149# a_4138_n3149# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1032 a_n744_n1163# clk_org a_n750_n1195# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1033 gnd a_3671_n1278# a_3738_n1272# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1034 a_n740_n1659# clk_org vdd w_n753_n1665# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1035 s3 prop_3 a_3690_n2512# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1036 a_n738_n994# clk_org a_n744_n1026# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1037 gen_1 a_196_n1554# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1038 q_c4 a_4188_n3117# vdd w_4220_n3123# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1039 a_n705_n2466# clk_org vdd w_n718_n2472# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1040 a_n782_n994# a_n824_n1026# a_n788_n1026# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1041 a_n830_n1195# clk_org a_n826_n1163# w_n839_n1169# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1042 a_n733_n2231# a_n775_n2263# a_n739_n2263# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1043 a_194_n2562# q_a4 a_194_n2611# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1044 a_n782_n994# clk_org vdd w_n795_n1000# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1045 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=1000 pd=420 as=1500 ps=630
M1046 q_s4 a_4166_n2743# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1047 a_3711_n2088# prop_2 vdd w_3698_n2074# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1048 a_196_n1554# q_a1 a_196_n1603# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1049 s4 a_3608_n2999# a_3647_n2995# w_3634_n3001# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1050 prop_2 q_b2 a_n261_n1768# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=0 ps=0
M1051 a_n773_n2103# a3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1052 vdd q_b4 a_n241_n2417# w_n254_n2423# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1053 a_n794_n1195# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1054 a_n774_n1821# b2 vdd w_n787_n1827# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1055 a_n788_n1026# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1056 a_n731_n2071# clk_org vdd w_n744_n2077# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1057 a_4147_n2483# a_4109_n2451# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1058 a_n746_n1691# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1059 a_3738_n1272# a_3671_n1223# s1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1060 q_a1 a_n744_n1163# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1061 a_3690_n2512# c2 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1062 a_n830_n1375# b1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1063 a_3711_n2033# c1 vdd w_3698_n2019# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1064 gnd a_3651_n2518# a_3718_n2512# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1065 a_4133_n1489# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1066 a_n696_n1659# a_n740_n1659# vdd w_n709_n1665# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1067 a_n261_n1715# q_a2 vdd w_n274_n1721# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1068 a_3608_n3054# prop_4 vdd w_3595_n3040# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1069 q_b4 a_n652_n2591# vdd w_n620_n2597# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1070 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1071 a_n689_n2231# clk_org a_n695_n2263# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1072 a_n696_n1659# clk_org a_n702_n1691# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1073 a_n743_n2466# a4 vdd w_n756_n2472# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1074 a_n702_n2623# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1075 a_4097_n1489# clk_org a_4101_n1457# w_4088_n1463# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1076 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1077 a_n738_n2623# clk_org a_n734_n2591# w_n747_n2597# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1078 a_4071_n2451# s3 vdd w_4058_n2457# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1079 vdd prop_1 a_3710_n1219# w_3697_n1225# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1080 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1081 a_4168_n1898# a_4124_n1898# vdd w_4155_n1904# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1082 a_4109_n2451# clk_org vdd w_4096_n2457# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1083 a_4139_n1457# a_4097_n1489# a_4133_n1489# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1084 a_4183_n1457# clk_org a_4177_n1489# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1085 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1086 a_4116_n2775# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1087 a_4153_n2451# a_4109_n2451# vdd w_4140_n2457# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1088 q_s1 a_4183_n1457# vdd w_4215_n1463# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1089 a_n687_n2071# a_n731_n2071# vdd w_n700_n2077# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1090 a_n769_n2071# a3 vdd w_n782_n2077# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1091 a_n652_n2591# clk_org a_n658_n2623# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1092 a_3718_n2512# a_3651_n2463# s3 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1093 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1094 vdd q_b2 a_n261_n1715# w_n274_n1721# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1095 a_n736_n1821# a_n778_n1853# a_n742_n1853# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1096 a_n689_n2231# a_n733_n2231# vdd w_n702_n2237# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1097 a_n788_n1343# a_n830_n1375# a_n794_n1375# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1098 carry_0 a_n738_n994# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1099 a_n300_n1719# q_a2 vdd w_n313_n1705# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1100 q_b3 a_n689_n2231# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1101 gen_4 a_194_n2562# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1102 q_a2 a_n696_n1659# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1103 a_n206_n2127# a_n273_n2078# prop_3 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1104 a_4166_n2743# clk_org a_4160_n2775# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1105 a_n273_n2133# q_b3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1106 vdd prop_4 a_3647_n2995# w_3634_n3001# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1107 q_s4 a_4166_n2743# vdd w_4198_n2749# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1108 a_n224_n1409# a_n291_n1360# prop_1 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1109 a_n658_n2623# a_n696_n2591# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1110 a_3710_n1219# carry_0 vdd w_3697_n1225# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1111 a_3671_n1278# prop_1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1112 prop_1 a_n291_n1360# a_n252_n1356# w_n265_n1362# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1113 a_n291_n1415# q_b1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1114 a_4084_n2743# s4 vdd w_4071_n2749# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1115 a_198_n1904# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1116 a_4122_n2743# clk_org vdd w_4109_n2749# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1117 a_n705_n2466# a_n747_n2498# a_n711_n2498# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1118 a_n744_n1343# a_n788_n1343# vdd w_n757_n1349# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1119 a_4082_n1930# s2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1120 a_3710_n1219# a_3671_n1278# s1 w_3697_n1225# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1121 vdd q_b3 a_206_n2196# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=180 ps=58
M1122 q_a1 a_n744_n1163# vdd w_n712_n1169# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1123 a_4102_n3149# c4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1124 a_194_n2562# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1125 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1126 a_3647_n2995# c3 vdd w_3634_n3001# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1127 vdd prop_3 a_3690_n2459# w_3677_n2465# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1128 a_3671_n1223# carry_0 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1129 gnd a_n291_n1415# a_n224_n1409# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1130 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1131 a_3690_n2459# a_3651_n2518# s3 w_3677_n2465# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1132 a_n252_n1356# a_n291_n1415# prop_1 w_n265_n1362# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1133 a_196_n1554# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1134 a_198_n1953# q_b2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1135 s2 prop_2 a_3750_n2082# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1136 a_4188_n3117# a_4144_n3117# vdd w_4175_n3123# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1137 a_3651_n2518# prop_3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1138 q_s3 a_4153_n2451# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1139 s1 a_3671_n1223# a_3710_n1219# w_3697_n1225# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1140 a_n692_n1821# a_n736_n1821# vdd w_n705_n1827# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1141 a_n731_n2071# a_n773_n2103# a_n737_n2103# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1142 a_n788_n1163# clk_org vdd w_n801_n1169# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1143 a_n750_n1195# a_n788_n1163# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1144 gen_2 a_198_n1904# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1145 a_3651_n2463# c2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1146 a_n744_n1026# a_n782_n994# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1147 a_n826_n1163# a1 vdd w_n839_n1169# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1148 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1149 q_b2 a_n692_n1821# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1150 a_n738_n2623# b4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1151 a_4103_n2483# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1152 a_n702_n1691# a_n740_n1659# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1153 a_n739_n2263# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1154 a_3690_n2459# c2 vdd w_3677_n2465# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1155 a_206_n2196# q_b3 a_206_n2245# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1156 gnd a_n273_n2133# a_n206_n2127# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1157 q_b3 a_n689_n2231# vdd w_n657_n2237# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1158 gen_3 a_206_n2196# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1159 a_n738_n994# a_n782_n994# vdd w_n751_n1000# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1160 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1161 a_4118_n1930# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1162 a_n737_n2103# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1163 a_n234_n2127# q_a3 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1164 s3 a_3651_n2463# a_3690_n2459# w_3677_n2465# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1165 a_4162_n1930# a_4124_n1898# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1166 a_3750_n2082# c1 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1167 gen_4 a_194_n2562# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1168 a_n661_n2466# a_n705_n2466# vdd w_n674_n2472# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1169 a_194_n2611# q_b4 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1170 a_4153_n2451# clk_org a_4147_n2483# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1171 a_4109_n2451# a_4067_n2483# a_4103_n2483# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1172 a_n252_n1409# q_a1 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1173 a_n775_n2263# clk_org a_n771_n2231# w_n784_n2237# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1174 q_a4 a_n661_n2466# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1175 gen_1 a_196_n1554# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1176 a_4086_n1898# s2 vdd w_4073_n1904# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1177 prop_3 a_n273_n2078# a_n234_n2074# w_n247_n2080# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1178 a_196_n1603# q_b1 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1179 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1180 a_4124_n1898# clk_org vdd w_4111_n1904# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1181 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1182 a_n687_n2071# clk_org a_n693_n2103# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1183 a_n291_n1415# q_b1 vdd w_n304_n1401# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1184 a_4168_n1898# clk_org a_4162_n1930# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1185 a_n273_n2078# q_a3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1186 a_n695_n2263# a_n733_n2231# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1187 a_n291_n1360# q_a1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1188 a_n234_n2074# q_a3 vdd w_n247_n2080# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1189 a_n273_n2133# q_b3 vdd w_n286_n2119# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1190 prop_3 q_b3 a_n234_n2127# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1191 a_n696_n2591# clk_org vdd w_n709_n2597# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1192 a_n744_n1343# clk_org a_n750_n1375# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1193 a_3608_n2999# c3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1194 a_n734_n2591# b4 vdd w_n747_n2597# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1195 a_n830_n1195# a1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1196 prop_1 q_b1 a_n252_n1409# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1197 a_4067_n2483# clk_org a_4071_n2451# w_4058_n2457# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1198 a_n824_n1026# cin gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1199 a_3671_n1278# prop_1 vdd w_3658_n1264# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1200 a_n830_n1375# clk_org a_n826_n1343# w_n839_n1349# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1201 a_n252_n1356# q_a1 vdd w_n265_n1362# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1202 carry_0 a_n738_n994# vdd w_n706_n1000# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1203 gnd a_3711_n2088# a_3778_n2082# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1204 a_4106_n3117# c4 vdd w_4093_n3123# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1205 a_4122_n2743# a_4080_n2775# a_4116_n2775# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1206 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1207 q_a3 a_n687_n2071# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1208 a_4138_n3149# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1209 q_s3 a_4153_n2451# vdd w_4185_n2457# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1210 a_n742_n1853# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1211 a_4182_n3149# a_4144_n3117# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1212 a_n794_n1375# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1213 a_n213_n2470# a_n280_n2421# prop_4 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1214 a_4097_n1489# s1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1215 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1216 a_3651_n2518# prop_3 vdd w_3638_n2504# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1217 a_n280_n2476# q_b4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1218 q_b2 a_n692_n1821# vdd w_n660_n1827# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1219 vdd q_b3 a_n234_n2074# w_n247_n2080# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1220 a_206_n2196# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1221 a_n824_n1026# clk_org a_n820_n994# w_n833_n1000# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1222 a_3671_n1223# carry_0 vdd w_3658_n1209# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1223 q_b1 a_n744_n1343# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1224 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1225 q_s2 a_4168_n1898# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1226 vdd q_b1 a_n252_n1356# w_n265_n1362# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1227 a_n300_n1774# q_b2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1228 a_n692_n1821# clk_org a_n698_n1853# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1229 a_4188_n3117# clk_org a_4182_n3149# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1230 a_4080_n2775# clk_org a_4084_n2743# w_4071_n2749# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1231 a_n788_n1163# a_n830_n1195# a_n794_n1195# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1232 a_n778_n1853# clk_org a_n774_n1821# w_n787_n1827# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1233 a_3778_n2082# a_3711_n2033# s2 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1234 a_n711_n2498# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1235 prop_4 a_n280_n2421# a_n241_n2417# w_n254_n2423# CMOSP w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1236 a_n775_n2263# b3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1237 a_4080_n2775# s4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1238 q_a2 a_n696_n1659# vdd w_n664_n1665# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1239 a_n782_n1691# a2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1240 a_n740_n1659# a_n782_n1691# a_n746_n1691# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1241 a_n234_n2074# a_n273_n2133# prop_3 w_n247_n2080# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1242 s4 prop_4 a_3647_n3048# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1243 a_4144_n3117# clk_org vdd w_4131_n3123# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1244 gnd a_n280_n2476# a_n213_n2470# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1245 a_3651_n2463# c2 vdd w_3638_n2449# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1246 q_a4 a_n661_n2466# vdd w_n629_n2472# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1247 a_n280_n2421# q_a4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1248 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1249 a_n698_n1853# a_n736_n1821# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1250 a_n782_n1691# clk_org a_n778_n1659# w_n791_n1665# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1251 a_n661_n2466# clk_org a_n667_n2498# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1252 a_n744_n1163# a_n788_n1163# vdd w_n757_n1169# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1253 a_3711_n2088# prop_2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1254 a_n747_n2498# clk_org a_n743_n2466# w_n756_n2472# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1255 vdd prop_2 a_3750_n2029# w_3737_n2035# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1256 a_n733_n2231# clk_org vdd w_n746_n2237# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1257 a_n233_n1768# a_n300_n1719# prop_2 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1258 a_n241_n2417# a_n280_n2476# prop_4 w_n254_n2423# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1259 q_a3 a_n687_n2071# vdd w_n655_n2077# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1260 a_206_n2245# q_a3 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1261 a_4177_n1489# a_4139_n1457# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1262 a_3647_n3048# c3 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1263 s1 prop_1 a_3710_n1272# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1264 a_n778_n1659# a2 vdd w_n791_n1665# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1265 a_n667_n2498# a_n705_n2466# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1266 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1267 q_c4 a_4188_n3117# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1268 q_s2 a_4168_n1898# vdd w_4200_n1904# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1269 a_n773_n2103# clk_org a_n769_n2071# w_n782_n2077# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1270 a_n273_n2078# q_a3 vdd w_n286_n2064# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1271 prop_2 a_n300_n1719# a_n261_n1715# w_n274_n1721# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1272 a_3711_n2033# c1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1273 a_3608_n3054# prop_4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1274 a_n241_n2470# q_a4 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1275 a_n291_n1360# q_a1 vdd w_n304_n1346# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1276 vdd q_a2 a_198_n1904# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1277 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1278 a_3750_n2029# c1 vdd w_3737_n2035# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1279 a_4160_n2775# a_4122_n2743# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1280 gnd a_n300_n1774# a_n233_n1768# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1281 a_4124_n1898# a_4082_n1930# a_4118_n1930# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1282 a_3608_n2999# c3 vdd w_3595_n2985# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1283 q_b1 a_n744_n1343# vdd w_n712_n1349# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1284 a_n696_n2591# a_n738_n2623# a_n702_n2623# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1285 a_4101_n1457# s1 vdd w_4088_n1463# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1286 a_n778_n1853# b2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1287 a_3710_n1272# carry_0 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1288 a_4139_n1457# clk_org vdd w_4126_n1463# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1289 a_4183_n1457# a_4139_n1457# vdd w_4170_n1463# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1290 a_3750_n2029# a_3711_n2088# s2 w_3737_n2035# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1291 a_n771_n2231# b3 vdd w_n784_n2237# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1292 a_n652_n2591# a_n696_n2591# vdd w_n665_n2597# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1293 a_4082_n1930# clk_org a_4086_n1898# w_4073_n1904# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1294 vdd q_a4 a_194_n2562# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1295 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1296 a_n693_n2103# a_n731_n2071# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1297 gnd a_3608_n3054# a_3675_n3048# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
C0 a_n773_n2103# clk_org 0.41fF
C1 a_194_n2562# gnd 0.05fF
C2 a_n830_n1375# gnd 0.24fF
C3 w_n718_n2472# a_n705_n2466# 0.09fF
C4 w_3697_n1225# s1 0.02fF
C5 w_3698_n2074# prop_2 0.23fF
C6 w_n265_n1362# a_n291_n1360# 0.06fF
C7 w_4058_n2457# clk_org 0.06fF
C8 w_n839_n1169# vdd 0.08fF
C9 w_4058_n2457# a_4067_n2483# 0.25fF
C10 prop_1 vdd 0.10fF
C11 w_4200_n1904# a_4168_n1898# 0.06fF
C12 a_n291_n1415# vdd 0.15fF
C13 w_n801_n1349# a_n788_n1343# 0.09fF
C14 w_3737_n2035# a_3711_n2033# 0.06fF
C15 a_n774_n1821# vdd 0.29fF
C16 a_4153_n2451# vdd 0.37fF
C17 a_n696_n2591# a_n702_n2623# 0.10fF
C18 w_n801_n1169# a_n788_n1163# 0.09fF
C19 w_4131_n3123# vdd 0.07fF
C20 w_4175_n3123# a_4188_n3117# 0.09fF
C21 a_n252_n1356# q_b1 0.12fF
C22 a_4109_n2451# a_4103_n2483# 0.10fF
C23 vdd a_4106_n3117# 0.29fF
C24 clk_org gnd 4.09fF
C25 w_n274_n1721# q_a2 0.06fF
C26 a_4067_n2483# gnd 0.24fF
C27 b3 clk_org 0.21fF
C28 a_n687_n2071# gnd 0.12fF
C29 gnd c1 0.21fF
C30 a_4097_n1489# gnd 0.24fF
C31 w_3677_n2465# a_3651_n2463# 0.06fF
C32 w_4088_n1463# a_4101_n1457# 0.01fF
C33 w_4170_n1463# a_4139_n1457# 0.06fF
C34 w_4071_n2749# vdd 0.08fF
C35 a_n771_n2231# a_n775_n2263# 0.26fF
C36 carry_0 gnd 0.35fF
C37 a_n689_n2231# q_b3 0.07fF
C38 a_n300_n1719# vdd 0.15fF
C39 a_n782_n994# a_n788_n1026# 0.10fF
C40 a_3750_n2029# s2 0.45fF
C41 a_n744_n1026# gnd 0.14fF
C42 a_n273_n2078# vdd 0.15fF
C43 vdd pdr1 0.68fF
C44 a_n740_n1659# a_n782_n1691# 0.51fF
C45 a4 clk_org 0.21fF
C46 w_4096_n2457# vdd 0.07fF
C47 w_n629_n2472# q_a4 0.05fF
C48 w_3697_n1225# carry_0 0.06fF
C49 w_n791_n1665# a2 0.06fF
C50 w_n313_n1705# vdd 0.09fF
C51 a_n788_n1343# a_n794_n1375# 0.10fF
C52 w_n756_n2472# vdd 0.08fF
C53 w_3737_n2035# s2 0.02fF
C54 a_3647_n2995# vdd 0.93fF
C55 a_4160_n2775# gnd 0.14fF
C56 a_n782_n994# vdd 0.37fF
C57 a_n241_n2417# q_b4 0.12fF
C58 a_4118_n1930# gnd 0.14fF
C59 a_4103_n2483# gnd 0.14fF
C60 w_4088_n1463# vdd 0.08fF
C61 w_n254_n2423# a_n241_n2417# 0.16fF
C62 a_n775_n2263# clk_org 0.41fF
C63 w_3698_n2074# vdd 0.06fF
C64 a_n743_n2466# a_n747_n2498# 0.26fF
C65 pdr4 clock_car0 1.03fF
C66 pdr2 gnd 0.05fF
C67 w_3677_n2465# a_3690_n2459# 0.16fF
C68 q_b1 gnd 0.30fF
C69 w_n304_n1401# q_b1 0.23fF
C70 b4 clk_org 0.21fF
C71 w_3658_n1264# vdd 0.06fF
C72 w_3698_n2019# vdd 0.09fF
C73 a_n736_n1821# clk_org 0.05fF
C74 a_n273_n2133# q_a3 0.06fF
C75 a_n747_n2498# clk_org 0.41fF
C76 a_4166_n2743# q_s4 0.07fF
C77 gen_1 pdr1 0.02fF
C78 a_4084_n2743# a_4080_n2775# 0.26fF
C79 w_n709_n1665# a_n696_n1659# 0.09fF
C80 w_n791_n1665# a_n782_n1691# 0.25fF
C81 vdd c2 0.48fF
C82 gnd a_4182_n3149# 0.14fF
C83 a_3671_n1223# a_3671_n1278# 0.08fF
C84 a_4080_n2775# clk_org 0.41fF
C85 w_n787_n1827# vdd 0.08fF
C86 prop_4 a_3647_n2995# 0.12fF
C87 a_3608_n2999# a_3608_n3054# 0.08fF
C88 a_n689_n2231# gnd 0.12fF
C89 a_4086_n1898# a_4082_n1930# 0.26fF
C90 a_4124_n1898# gnd 0.18fF
C91 a_4082_n1930# clk_org 0.41fF
C92 a_198_n1904# vdd 0.44fF
C93 a_n740_n1659# gnd 0.18fF
C94 prop_2 gnd 0.27fF
C95 a_n744_n1163# a_n750_n1195# 0.10fF
C96 w_n274_n1721# a_n300_n1774# 0.06fF
C97 q_b3 vdd 0.45fF
C98 a_n731_n2071# a_n773_n2103# 0.51fF
C99 w_n304_n1346# a_n291_n1360# 0.03fF
C100 a_4168_n1898# a_4162_n1930# 0.10fF
C101 w_n706_n1000# vdd 0.07fF
C102 a_n300_n1719# q_a2 0.27fF
C103 w_4058_n2457# a_4071_n2451# 0.01fF
C104 a_n782_n1691# vdd 0.20fF
C105 a_n661_n2466# gnd 0.12fF
C106 a1 clk_org 0.21fF
C107 c1 prop_2 0.09fF
C108 a_3671_n1278# prop_1 0.22fF
C109 w_n620_n2597# a_n652_n2591# 0.06fF
C110 w_n709_n2597# a_n738_n2623# 0.13fF
C111 w_4155_n1904# a_4168_n1898# 0.09fF
C112 a_n738_n2623# clk_org 0.41fF
C113 a_n252_n1356# vdd 0.93fF
C114 a_n693_n2103# gnd 0.14fF
C115 w_3698_n2019# a_3711_n2033# 0.03fF
C116 w_3634_n3001# c3 0.06fF
C117 a_n692_n1821# vdd 0.37fF
C118 a_4166_n2743# gnd 0.12fF
C119 pdr4 gen_4 0.02fF
C120 a_4109_n2451# vdd 0.37fF
C121 a_n291_n1360# q_b1 0.20fF
C122 w_4175_n3123# a_4144_n3117# 0.06fF
C123 w_4093_n3123# vdd 0.08fF
C124 w_n286_n2119# a_n273_n2133# 0.03fF
C125 a_4144_n3117# a_4102_n3149# 0.51fF
C126 w_n313_n1705# q_a2 0.06fF
C127 w_n293_n2462# q_b4 0.23fF
C128 gnd c3 0.21fF
C129 a_n731_n2071# gnd 0.18fF
C130 a_3608_n3054# s4 0.52fF
C131 q_s4 vdd 0.29fF
C132 w_3638_n2449# a_3651_n2463# 0.03fF
C133 a_n652_n2591# q_b4 0.07fF
C134 a_n734_n2591# a_n738_n2623# 0.26fF
C135 gen_3 gnd 0.14fF
C136 w_4126_n1463# a_4139_n1457# 0.09fF
C137 w_n620_n2597# vdd 0.07fF
C138 q_s2 vdd 0.29fF
C139 pdr4 prop_4 0.02fF
C140 a_n782_n994# a_n824_n1026# 0.51fF
C141 b1 clk_org 0.21fF
C142 a_n788_n1026# gnd 0.14fF
C143 a_n773_n2103# vdd 0.20fF
C144 w_4111_n1904# a_4082_n1930# 0.13fF
C145 a_n652_n2591# gnd 0.12fF
C146 w_4058_n2457# vdd 0.08fF
C147 a_n830_n1195# clk_org 0.41fF
C148 w_3658_n1209# carry_0 0.06fF
C149 a_n692_n1821# a_n698_n1853# 0.10fF
C150 pdr2 prop_2 0.02fF
C151 w_n664_n1665# vdd 0.07fF
C152 q_b4 vdd 0.45fF
C153 w_3737_n2035# a_3711_n2088# 0.06fF
C154 w_n254_n2423# vdd 0.12fF
C155 a_4116_n2775# gnd 0.14fF
C156 vdd clock_in 0.74fF
C157 prop_3 vdd 0.10fF
C158 a_n280_n2421# q_b4 0.20fF
C159 vdd gnd 2.00fF
C160 vdd c4 0.48fF
C161 a_n667_n2498# gnd 0.14fF
C162 s1 clk_org 0.21fF
C163 w_n304_n1401# vdd 0.06fF
C164 w_n254_n2423# a_n280_n2421# 0.06fF
C165 a_4124_n1898# a_4082_n1930# 0.51fF
C166 q_a2 a_198_n1904# 0.20fF
C167 w_n795_n1000# clk_org 0.06fF
C168 w_n247_n2080# vdd 0.12fF
C169 a_4168_n1898# clk_org 0.36fF
C170 a_4177_n1489# gnd 0.14fF
C171 a_n696_n1659# clk_org 0.36fF
C172 a_n740_n1659# a_n746_n1691# 0.10fF
C173 a_n280_n2421# gnd 0.17fF
C174 w_n265_n1362# q_b1 0.06fF
C175 c1 vdd 0.11fF
C176 w_n747_n2597# b4 0.06fF
C177 w_3697_n1225# vdd 0.12fF
C178 a_n830_n1375# clk_org 0.41fF
C179 a_n744_n1163# gnd 0.12fF
C180 w_4198_n2749# q_s4 0.05fF
C181 w_3658_n1264# a_3671_n1278# 0.03fF
C182 pdr3 pdr4 1.03fF
C183 gen_4 gnd 0.14fF
C184 pdr2 clock_car0 1.03fF
C185 w_4200_n1904# vdd 0.07fF
C186 w_4185_n2457# a_4153_n2451# 0.06fF
C187 a_n300_n1719# a_n300_n1774# 0.08fF
C188 w_n709_n1665# a_n740_n1659# 0.06fF
C189 w_n791_n1665# a_n778_n1659# 0.01fF
C190 gnd a_4138_n3149# 0.14fF
C191 w_n254_n2423# prop_4 0.02fF
C192 gnd clk_org 0.05fF
C193 w_n313_n1760# vdd 0.06fF
C194 a_n273_n2078# a_n273_n2133# 0.08fF
C195 a_n733_n2231# gnd 0.18fF
C196 w_n709_n2597# clk_org 0.06fF
C197 a_n698_n1853# gnd 0.14fF
C198 prop_4 gnd 0.27fF
C199 prop_1 pdr1 0.02fF
C200 carry_0 prop1_car0 0.02fF
C201 a_4067_n2483# clk_org 0.41fF
C202 a_3651_n2518# vdd 0.15fF
C203 a_3711_n2033# gnd 0.17fF
C204 a_n687_n2071# clk_org 0.36fF
C205 a_n826_n1163# a_n830_n1195# 0.26fF
C206 w_n274_n1721# a_n261_n1715# 0.16fF
C207 a_4097_n1489# clk_org 0.41fF
C208 a_n744_n1343# gnd 0.12fF
C209 a_n775_n2263# vdd 0.20fF
C210 w_4071_n2749# s4 0.06fF
C211 w_n751_n1000# vdd 0.07fF
C212 q_b2 vdd 0.45fF
C213 a_n778_n1659# vdd 0.29fF
C214 a_n705_n2466# gnd 0.18fF
C215 a_3710_n1219# prop_1 0.12fF
C216 c1 a_3711_n2033# 0.27fF
C217 w_n747_n2597# a_n738_n2623# 0.25fF
C218 w_4155_n1904# a_4124_n1898# 0.06fF
C219 w_n665_n2597# a_n652_n2591# 0.09fF
C220 w_n753_n1665# clk_org 0.06fF
C221 a_n291_n1360# vdd 0.15fF
C222 a_n737_n2103# gnd 0.14fF
C223 w_3595_n2985# c3 0.06fF
C224 a_n736_n1821# vdd 0.37fF
C225 a_4122_n2743# gnd 0.18fF
C226 w_3638_n2504# prop_3 0.23fF
C227 a_n747_n2498# vdd 0.20fF
C228 w_4131_n3123# a_4144_n3117# 0.09fF
C229 w_3595_n3040# vdd 0.06fF
C230 w_n660_n1827# a_n692_n1821# 0.06fF
C231 w_n749_n1827# a_n778_n1853# 0.13fF
C232 w_n664_n1665# q_a2 0.05fF
C233 a_4080_n2775# vdd 0.20fF
C234 a_3647_n2995# s4 0.45fF
C235 a_4183_n1457# gnd 0.12fF
C236 a_4082_n1930# vdd 0.20fF
C237 w_n665_n2597# vdd 0.07fF
C238 w_n744_n2077# a_n773_n2103# 0.13fF
C239 q_a2 gnd 0.35fF
C240 w_n655_n2077# a_n687_n2071# 0.06fF
C241 a_n733_n2231# a_n775_n2263# 0.51fF
C242 a_206_n2196# gen_3 0.05fF
C243 q_s3 vdd 0.29fF
C244 a_n824_n1026# gnd 0.24fF
C245 pdr3 prop_3 0.02fF
C246 a_n769_n2071# vdd 0.29fF
C247 s2 gnd 0.16fF
C248 w_4073_n1904# a_4082_n1930# 0.25fF
C249 w_4111_n1904# clk_org 0.06fF
C250 a_n696_n2591# gnd 0.18fF
C251 q_s1 vdd 0.29fF
C252 w_3698_n2074# a_3711_n2088# 0.03fF
C253 w_3677_n2465# vdd 0.12fF
C254 a_n774_n1821# a_n778_n1853# 0.26fF
C255 a_n738_n2623# vdd 0.20fF
C256 w_n709_n1665# vdd 0.07fF
C257 w_n293_n2462# a_n280_n2476# 0.03fF
C258 w_3737_n2035# a_3750_n2029# 0.16fF
C259 w_3595_n3040# prop_4 0.23fF
C260 a_n826_n1343# a_n830_n1375# 0.26fF
C261 w_n293_n2407# vdd 0.09fF
C262 w_3638_n2504# a_3651_n2518# 0.03fF
C263 a_n273_n2133# q_b3 0.22fF
C264 a_3651_n2463# vdd 0.15fF
C265 w_4131_n3123# a_4102_n3149# 0.13fF
C266 a_n291_n1415# q_a1 0.06fF
C267 a_4188_n3117# gnd 0.12fF
C268 a_4106_n3117# a_4102_n3149# 0.26fF
C269 w_n265_n1362# vdd 0.12fF
C270 a_n711_n2498# gnd 0.14fF
C271 a_3671_n1278# gnd 0.20fF
C272 w_n293_n2407# a_n280_n2421# 0.03fF
C273 a_n689_n2231# clk_org 0.36fF
C274 a_206_n2196# vdd 0.44fF
C275 a_n705_n2466# a_n747_n2498# 0.51fF
C276 a_4124_n1898# clk_org 0.05fF
C277 w_n833_n1000# clk_org 0.06fF
C278 c3 vdd 0.11fF
C279 w_n286_n2064# vdd 0.09fF
C280 a_n740_n1659# clk_org 0.05fF
C281 a_4133_n1489# gnd 0.14fF
C282 a_196_n1554# vdd 0.44fF
C283 vdd pdr4 0.68fF
C284 a_n695_n2263# gnd 0.14fF
C285 w_3658_n1209# vdd 0.09fF
C286 a_n788_n1163# gnd 0.18fF
C287 w_3697_n1225# a_3671_n1278# 0.06fF
C288 q_b2 q_a2 0.33fF
C289 w_4155_n1904# vdd 0.07fF
C290 w_4140_n2457# a_4153_n2451# 0.09fF
C291 a_n273_n2078# q_a3 0.27fF
C292 a_n661_n2466# clk_org 0.36fF
C293 a_n280_n2476# vdd 0.15fF
C294 w_n787_n1827# b2 0.06fF
C295 a_4122_n2743# a_4080_n2775# 0.51fF
C296 w_n657_n2237# a_n689_n2231# 0.06fF
C297 w_n753_n1665# a_n740_n1659# 0.09fF
C298 w_n746_n2237# a_n775_n2263# 0.13fF
C299 a_n830_n1195# vdd 0.20fF
C300 a_n280_n2421# a_n280_n2476# 0.08fF
C301 pdr2 pdr3 1.03fF
C302 prop1_car0 clock_car0 1.03fF
C303 a_4166_n2743# clk_org 0.36fF
C304 a_n750_n1375# gnd 0.14fF
C305 a_n687_n2071# a_n693_n2103# 0.10fF
C306 w_n747_n2597# clk_org 0.06fF
C307 a_n742_n1853# gnd 0.14fF
C308 w_n782_n2077# a3 0.06fF
C309 a_3608_n2999# gnd 0.17fF
C310 clock_car0 gnd 1.03fF
C311 a_3690_n2459# vdd 0.93fF
C312 a_4071_n2451# a_4067_n2483# 0.26fF
C313 a_n731_n2071# clk_org 0.05fF
C314 q_c4 gnd 0.14fF
C315 a_n788_n1163# a_n794_n1195# 0.10fF
C316 c3 prop_4 0.09fF
C317 w_n274_n1721# a_n300_n1719# 0.06fF
C318 a_n788_n1343# gnd 0.18fF
C319 a_n771_n2231# vdd 0.29fF
C320 a_4124_n1898# a_4118_n1930# 0.10fF
C321 w_n795_n1000# vdd 0.07fF
C322 a_4168_n1898# vdd 0.37fF
C323 a_n696_n1659# vdd 0.37fF
C324 a_4101_n1457# a_4097_n1489# 0.26fF
C325 a_3671_n1223# prop_1 0.20fF
C326 a_4183_n1457# q_s1 0.07fF
C327 a_n300_n1774# gnd 0.20fF
C328 w_4111_n1904# a_4124_n1898# 0.09fF
C329 w_n665_n2597# a_n696_n2591# 0.06fF
C330 a_n273_n2133# prop_3 0.52fF
C331 w_n747_n2597# a_n734_n2591# 0.01fF
C332 w_n660_n1827# q_b2 0.05fF
C333 a_n652_n2591# clk_org 0.36fF
C334 w_n791_n1665# clk_org 0.06fF
C335 a_194_n2562# vdd 0.44fF
C336 a_n830_n1375# vdd 0.20fF
C337 a_n273_n2133# gnd 0.20fF
C338 a_n280_n2476# prop_4 0.52fF
C339 a_n658_n2623# gnd 0.14fF
C340 a_n743_n2466# vdd 0.29fF
C341 w_4215_n1463# q_s1 0.05fF
C342 w_n247_n2080# a_n273_n2133# 0.06fF
C343 w_3634_n3001# vdd 0.12fF
C344 w_n787_n1827# a_n778_n1853# 0.25fF
C345 w_n705_n1827# a_n692_n1821# 0.09fF
C346 a_4166_n2743# a_4160_n2775# 0.10fF
C347 a_4084_n2743# vdd 0.29fF
C348 a_4139_n1457# gnd 0.18fF
C349 a_194_n2562# gen_4 0.05fF
C350 a_n696_n2591# a_n738_n2623# 0.51fF
C351 a_4086_n1898# vdd 0.29fF
C352 w_n709_n2597# vdd 0.07fF
C353 w_n782_n2077# a_n773_n2103# 0.25fF
C354 w_n700_n2077# a_n687_n2071# 0.09fF
C355 s4 gnd 0.16fF
C356 a_4067_n2483# vdd 0.20fF
C357 a_n291_n1415# prop_1 0.52fF
C358 a_3711_n2088# gnd 0.20fF
C359 a_n687_n2071# vdd 0.37fF
C360 w_4073_n1904# clk_org 0.06fF
C361 vdd c1 0.48fF
C362 w_4073_n1904# a_4086_n1898# 0.01fF
C363 w_n313_n1760# a_n300_n1774# 0.03fF
C364 a_4097_n1489# vdd 0.20fF
C365 w_3638_n2449# vdd 0.09fF
C366 q_a3 q_b3 0.33fF
C367 pdr3 c3 0.07fF
C368 carry_0 vdd 0.40fF
C369 a_n744_n1163# clk_org 0.36fF
C370 c1 a_3711_n2088# 0.06fF
C371 w_n784_n2237# b3 0.06fF
C372 a_n736_n1821# a_n742_n1853# 0.10fF
C373 w_n753_n1665# vdd 0.07fF
C374 a_n734_n2591# vdd 0.29fF
C375 w_3634_n3001# prop_4 0.06fF
C376 w_n657_n2237# vdd 0.07fF
C377 a_n300_n1774# q_b2 0.22fF
C378 a_n234_n2074# q_b3 0.12fF
C379 w_4093_n3123# a_4102_n3149# 0.25fF
C380 a_4144_n3117# gnd 0.18fF
C381 pdr1 c1 0.07fF
C382 w_n304_n1346# vdd 0.09fF
C383 a_n733_n2231# clk_org 0.05fF
C384 w_n655_n2077# vdd 0.07fF
C385 a_n739_n2263# gnd 0.14fF
C386 cin clk_org 0.21fF
C387 w_n712_n1349# q_b1 0.05fF
C388 gen_1 gnd 0.14fF
C389 a_n744_n1343# clk_org 0.36fF
C390 w_3697_n1225# a_3710_n1219# 0.16fF
C391 w_4111_n1904# vdd 0.07fF
C392 a_n696_n1659# q_a2 0.07fF
C393 vdd pdr2 0.68fF
C394 w_4140_n2457# a_4109_n2451# 0.06fF
C395 q_b1 vdd 0.45fF
C396 w_n706_n1000# a_n738_n994# 0.06fF
C397 a_n241_n2417# vdd 0.93fF
C398 w_n795_n1000# a_n824_n1026# 0.13fF
C399 a_n705_n2466# clk_org 0.05fF
C400 w_n784_n2237# a_n775_n2263# 0.25fF
C401 a_n826_n1163# vdd 0.29fF
C402 w_n286_n2119# q_b3 0.23fF
C403 w_n702_n2237# a_n689_n2231# 0.09fF
C404 a_4122_n2743# clk_org 0.05fF
C405 a_n794_n1375# gnd 0.14fF
C406 c2 prop_3 0.09fF
C407 a_n778_n1853# gnd 0.24fF
C408 w_4185_n2457# q_s3 0.05fF
C409 c2 gnd 0.22fF
C410 w_3658_n1264# prop_1 0.23fF
C411 a_4102_n3149# gnd 0.24fF
C412 pdr1 pdr2 1.03fF
C413 a_n788_n1163# a_n830_n1195# 0.51fF
C414 c3 a_3608_n2999# 0.27fF
C415 w_n313_n1705# a_n300_n1719# 0.03fF
C416 a_4183_n1457# clk_org 0.36fF
C417 a_n689_n2231# vdd 0.37fF
C418 q_a3 gnd 0.41fF
C419 a_4124_n1898# vdd 0.37fF
C420 a_3671_n1278# s1 0.52fF
C421 a_198_n1904# gen_2 0.05fF
C422 w_n833_n1000# vdd 0.08fF
C423 a_n740_n1659# vdd 0.37fF
C424 q_a1 gnd 0.35fF
C425 pdr3 gnd 0.05fF
C426 a_n824_n1026# clk_org 0.41fF
C427 w_n247_n2080# q_a3 0.06fF
C428 s2 clk_org 0.21fF
C429 prop_2 vdd 0.10fF
C430 w_n709_n2597# a_n696_n2591# 0.09fF
C431 a_n234_n2074# prop_3 0.45fF
C432 pdr4 c4 0.07fF
C433 a_n696_n2591# clk_org 0.05fF
C434 a_n826_n1343# vdd 0.29fF
C435 a_n241_n2417# prop_4 0.45fF
C436 w_n746_n2237# clk_org 0.06fF
C437 a_n702_n2623# gnd 0.14fF
C438 a_n661_n2466# vdd 0.37fF
C439 w_3595_n2985# vdd 0.09fF
C440 a_n661_n2466# a_n667_n2498# 0.10fF
C441 a_n744_n1343# q_b1 0.07fF
C442 w_n247_n2080# a_n234_n2074# 0.16fF
C443 w_n705_n1827# a_n736_n1821# 0.06fF
C444 w_n787_n1827# a_n774_n1821# 0.01fF
C445 w_n744_n2077# clk_org 0.06fF
C446 a_4166_n2743# vdd 0.37fF
C447 w_n747_n2597# vdd 0.08fF
C448 w_4093_n3123# c4 0.06fF
C449 w_n782_n2077# a_n769_n2071# 0.01fF
C450 w_n700_n2077# a_n731_n2071# 0.06fF
C451 c2 a_3651_n2518# 0.06fF
C452 a_3608_n3054# gnd 0.20fF
C453 clk_org a_4188_n3117# 0.36fF
C454 vdd c3 0.48fF
C455 a_4071_n2451# vdd 0.29fF
C456 a_n252_n1356# prop_1 0.45fF
C457 a_n738_n994# gnd 0.12fF
C458 a_n731_n2071# vdd 0.37fF
C459 a_4101_n1457# vdd 0.29fF
C460 gen_3 vdd 0.28fF
C461 q_a4 q_b4 0.33fF
C462 w_n833_n1000# cin 0.06fF
C463 w_n293_n2462# vdd 0.06fF
C464 w_n254_n2423# q_a4 0.06fF
C465 pdr2 c2 0.07fF
C466 a_3711_n2033# prop_2 0.20fF
C467 a_3671_n1278# carry_0 0.06fF
C468 a_n788_n1163# clk_org 0.05fF
C469 a_n736_n1821# a_n778_n1853# 0.51fF
C470 a_n652_n2591# vdd 0.37fF
C471 w_n791_n1665# vdd 0.08fF
C472 q_a4 gnd 0.35fF
C473 w_3634_n3001# a_3608_n2999# 0.06fF
C474 w_n702_n2237# vdd 0.07fF
C475 a_n788_n1343# a_n830_n1375# 0.51fF
C476 a_n261_n1715# q_b2 0.12fF
C477 a_n273_n2078# q_b3 0.20fF
C478 w_4093_n3123# a_4106_n3117# 0.01fF
C479 a_n291_n1360# q_a1 0.27fF
C480 w_n712_n1349# vdd 0.07fF
C481 a_3671_n1223# gnd 0.17fF
C482 w_n700_n2077# vdd 0.07fF
C483 w_3737_n2035# c1 0.06fF
C484 gen_2 gnd 0.14fF
C485 w_n274_n1721# q_b2 0.06fF
C486 a_n788_n1343# clk_org 0.05fF
C487 w_3697_n1225# a_3671_n1223# 0.06fF
C488 w_4198_n2749# a_4166_n2743# 0.06fF
C489 w_4109_n2749# a_4080_n2775# 0.13fF
C490 w_4073_n1904# vdd 0.08fF
C491 w_3677_n2465# c2 0.06fF
C492 w_4096_n2457# a_4109_n2451# 0.09fF
C493 a_196_n1554# gen_1 0.05fF
C494 a_n280_n2421# vdd 0.15fF
C495 w_n833_n1000# a_n824_n1026# 0.25fF
C496 w_n751_n1000# a_n738_n994# 0.09fF
C497 prop_1 gnd 0.27fF
C498 w_n702_n2237# a_n733_n2231# 0.06fF
C499 a_n744_n1163# vdd 0.37fF
C500 w_n784_n2237# a_n771_n2231# 0.01fF
C501 gen_4 vdd 0.28fF
C502 w_n718_n2472# a_n747_n2498# 0.13fF
C503 a_n291_n1415# gnd 0.20fF
C504 w_n629_n2472# a_n661_n2466# 0.06fF
C505 a_n731_n2071# a_n737_n2103# 0.10fF
C506 w_n304_n1401# a_n291_n1415# 0.03fF
C507 c2 a_3651_n2463# 0.27fF
C508 w_3634_n3001# s4 0.02fF
C509 w_3595_n3040# a_3608_n3054# 0.03fF
C510 w_n712_n1169# vdd 0.07fF
C511 a_4153_n2451# gnd 0.12fF
C512 w_3697_n1225# prop_1 0.06fF
C513 a_4188_n3117# a_4182_n3149# 0.10fF
C514 vdd clk_org 0.06fF
C515 a_4139_n1457# clk_org 0.05fF
C516 a_n733_n2231# vdd 0.37fF
C517 w_n712_n1349# a_n744_n1343# 0.06fF
C518 w_n801_n1349# a_n830_n1375# 0.13fF
C519 a_3710_n1219# s1 0.45fF
C520 prop_4 vdd 0.10fF
C521 s4 clk_org 0.21fF
C522 w_n801_n1169# a_n830_n1195# 0.13fF
C523 w_n712_n1169# a_n744_n1163# 0.06fF
C524 w_n265_n1362# q_a1 0.06fF
C525 w_n286_n2064# q_a3 0.06fF
C526 a_4139_n1457# a_4097_n1489# 0.51fF
C527 a_3711_n2033# vdd 0.15fF
C528 a_n689_n2231# a_n695_n2263# 0.10fF
C529 a_n300_n1719# gnd 0.17fF
C530 a_n273_n2078# prop_3 0.06fF
C531 prop1_car0 pdr1 1.03fF
C532 a_n744_n1343# vdd 0.37fF
C533 q_a1 a_196_n1554# 0.20fF
C534 a_n280_n2421# prop_4 0.06fF
C535 a_n273_n2078# gnd 0.17fF
C536 w_n784_n2237# clk_org 0.06fF
C537 pdr1 gnd 0.05fF
C538 pdr3 clock_car0 1.03fF
C539 a_n705_n2466# vdd 0.37fF
C540 w_4198_n2749# vdd 0.07fF
C541 pdr3 gen_3 0.02fF
C542 w_n247_n2080# a_n273_n2078# 0.06fF
C543 pdr2 gen_2 0.02fF
C544 w_n749_n1827# a_n736_n1821# 0.09fF
C545 a_4122_n2743# a_4116_n2775# 0.10fF
C546 w_n801_n1349# clk_org 0.06fF
C547 b2 clk_org 0.21fF
C548 w_n782_n2077# clk_org 0.06fF
C549 a_4122_n2743# vdd 0.37fF
C550 w_3638_n2504# vdd 0.06fF
C551 w_n744_n2077# a_n731_n2071# 0.09fF
C552 clk_org a_4144_n3117# 0.05fF
C553 a_n291_n1360# prop_1 0.06fF
C554 a_n782_n994# gnd 0.18fF
C555 c3 a_3608_n3054# 0.06fF
C556 a_4183_n1457# vdd 0.37fF
C557 w_n629_n2472# vdd 0.07fF
C558 a_n291_n1360# a_n291_n1415# 0.08fF
C559 q_a2 vdd 0.46fF
C560 w_n293_n2407# q_a4 0.06fF
C561 a_n824_n1026# vdd 0.20fF
C562 a_4183_n1457# a_4177_n1489# 0.10fF
C563 a_n696_n2591# vdd 0.37fF
C564 w_4215_n1463# vdd 0.07fF
C565 w_n756_n2472# a4 0.06fF
C566 w_3595_n2985# a_3608_n2999# 0.03fF
C567 w_n801_n1169# clk_org 0.06fF
C568 w_n746_n2237# vdd 0.07fF
C569 w_4073_n1904# s2 0.06fF
C570 a_n300_n1719# q_b2 0.20fF
C571 w_4058_n2457# s3 0.06fF
C572 a_n300_n1774# prop_2 0.52fF
C573 w_n757_n1349# vdd 0.07fF
C574 a_n750_n1195# gnd 0.14fF
C575 gnd c2 0.21fF
C576 w_n839_n1349# b1 0.06fF
C577 w_3698_n2019# c1 0.06fF
C578 w_n744_n2077# vdd 0.07fF
C579 a_n778_n1853# clk_org 0.41fF
C580 w_n839_n1169# a1 0.06fF
C581 a_n280_n2476# q_a4 0.06fF
C582 a_4153_n2451# q_s3 0.07fF
C583 a_198_n1904# gnd 0.05fF
C584 a_4188_n3117# vdd 0.37fF
C585 clk_org a_4102_n3149# 0.41fF
C586 s3 gnd 0.16fF
C587 a_3671_n1278# vdd 0.15fF
C588 w_4071_n2749# a_4080_n2775# 0.25fF
C589 w_3658_n1209# a_3671_n1223# 0.03fF
C590 w_4153_n2749# a_4166_n2743# 0.09fF
C591 w_n660_n1827# vdd 0.07fF
C592 w_3638_n2449# c2 0.06fF
C593 a_n687_n2071# q_a3 0.07fF
C594 q_b3 gnd 0.25fF
C595 w_n751_n1000# a_n782_n994# 0.06fF
C596 w_n833_n1000# a_n820_n994# 0.01fF
C597 w_4109_n2749# clk_org 0.06fF
C598 a_n782_n1691# gnd 0.24fF
C599 w_n265_n1362# prop_1 0.02fF
C600 a_n788_n1163# vdd 0.37fF
C601 w_n247_n2080# q_b3 0.06fF
C602 prop_2 a_3711_n2088# 0.22fF
C603 a_3711_n2033# s2 0.06fF
C604 w_n746_n2237# a_n733_n2231# 0.09fF
C605 w_n674_n2472# a_n661_n2466# 0.09fF
C606 w_n756_n2472# a_n747_n2498# 0.25fF
C607 w_3634_n3001# a_3608_n3054# 0.06fF
C608 w_n265_n1362# a_n291_n1415# 0.06fF
C609 a_n692_n1821# gnd 0.12fF
C610 w_n757_n1169# vdd 0.07fF
C611 a_4109_n2451# gnd 0.18fF
C612 w_n620_n2597# q_b4 0.05fF
C613 q_a4 a_194_n2562# 0.20fF
C614 w_n839_n1349# a_n830_n1375# 0.25fF
C615 w_n757_n1349# a_n744_n1343# 0.09fF
C616 w_n718_n2472# clk_org 0.06fF
C617 a_3671_n1223# s1 0.06fF
C618 q_s4 gnd 0.14fF
C619 a_3608_n2999# vdd 0.15fF
C620 a_n652_n2591# a_n658_n2623# 0.10fF
C621 w_n757_n1169# a_n744_n1163# 0.09fF
C622 w_n839_n1169# a_n830_n1195# 0.25fF
C623 w_4220_n3123# vdd 0.07fF
C624 w_n655_n2077# q_a3 0.05fF
C625 w_n304_n1346# q_a1 0.06fF
C626 a_n738_n994# clk_org 0.36fF
C627 a_4153_n2451# a_4147_n2483# 0.10fF
C628 q_s2 gnd 0.14fF
C629 a_3651_n2518# s3 0.52fF
C630 vdd q_c4 0.29fF
C631 a_n702_n1691# gnd 0.14fF
C632 w_4126_n1463# clk_org 0.06fF
C633 a_n788_n1343# vdd 0.37fF
C634 a_n773_n2103# gnd 0.24fF
C635 w_4215_n1463# a_4183_n1457# 0.06fF
C636 w_4126_n1463# a_4097_n1489# 0.13fF
C637 w_4153_n2749# vdd 0.07fF
C638 w_n286_n2064# a_n273_n2078# 0.03fF
C639 a_n705_n2466# a_n711_n2498# 0.10fF
C640 a_n738_n994# carry_0 0.07fF
C641 w_n254_n2423# q_b4 0.06fF
C642 a_n300_n1774# vdd 0.15fF
C643 a_n738_n994# a_n744_n1026# 0.10fF
C644 w_n839_n1349# clk_org 0.06fF
C645 q_b1 q_a1 0.33fF
C646 a_n273_n2133# vdd 0.15fF
C647 w_4200_n1904# q_s2 0.05fF
C648 q_b4 gnd 0.30fF
C649 pdr1 clock_car0 1.03fF
C650 a_n778_n1659# a_n782_n1691# 0.26fF
C651 w_4185_n2457# vdd 0.07fF
C652 clock_in gnd 0.21fF
C653 prop_3 gnd 0.27fF
C654 a_n692_n1821# q_b2 0.07fF
C655 clock_in clk_org 0.07fF
C656 gnd c4 0.21fF
C657 w_n749_n1827# clk_org 0.06fF
C658 a_3608_n2999# prop_4 0.20fF
C659 a_4139_n1457# vdd 0.37fF
C660 w_n247_n2080# prop_3 0.02fF
C661 a_n744_n1343# a_n750_n1375# 0.10fF
C662 w_n674_n2472# vdd 0.07fF
C663 c4 clk_org 0.21fF
C664 a_n820_n994# vdd 0.29fF
C665 a_3671_n1223# carry_0 0.27fF
C666 c1 gnd 0.22fF
C667 a_3711_n2088# vdd 0.15fF
C668 w_4170_n1463# vdd 0.07fF
C669 w_n784_n2237# vdd 0.08fF
C670 w_n839_n1169# clk_org 0.06fF
C671 w_3677_n2465# s3 0.02fF
C672 a_n261_n1715# prop_2 0.45fF
C673 w_n801_n1349# vdd 0.07fF
C674 a_n794_n1195# gnd 0.14fF
C675 w_n782_n2077# vdd 0.08fF
C676 a_4153_n2451# clk_org 0.36fF
C677 prop_1 carry_0 0.09fF
C678 w_4131_n3123# clk_org 0.06fF
C679 prop_3 a_3651_n2518# 0.22fF
C680 a_3651_n2463# s3 0.06fF
C681 a_4144_n3117# vdd 0.37fF
C682 a_3651_n2518# gnd 0.20fF
C683 a_3710_n1219# vdd 0.93fF
C684 w_4153_n2749# a_4122_n2743# 0.06fF
C685 w_4071_n2749# a_4084_n2743# 0.01fF
C686 w_n274_n1721# prop_2 0.02fF
C687 w_n705_n1827# vdd 0.07fF
C688 a_n775_n2263# gnd 0.24fF
C689 w_4088_n1463# s1 0.06fF
C690 w_n795_n1000# a_n782_n994# 0.09fF
C691 w_4071_n2749# clk_org 0.06fF
C692 q_b2 gnd 0.30fF
C693 gen_1 vdd 0.28fF
C694 a_206_n2196# q_b3 0.20fF
C695 prop_2 a_3750_n2029# 0.12fF
C696 a_3711_n2033# a_3711_n2088# 0.08fF
C697 a_n291_n1360# gnd 0.17fF
C698 w_n756_n2472# a_n743_n2466# 0.01fF
C699 a_n769_n2071# a_n773_n2103# 0.26fF
C700 w_n674_n2472# a_n705_n2466# 0.06fF
C701 w_n265_n1362# a_n252_n1356# 0.16fF
C702 w_3634_n3001# a_3647_n2995# 0.16fF
C703 w_n801_n1169# vdd 0.07fF
C704 w_4096_n2457# clk_org 0.06fF
C705 a_n300_n1774# q_a2 0.06fF
C706 a_n736_n1821# gnd 0.18fF
C707 w_4096_n2457# a_4067_n2483# 0.13fF
C708 a_n747_n2498# gnd 0.24fF
C709 a_4144_n3117# a_4138_n3149# 0.10fF
C710 w_n757_n1349# a_n788_n1343# 0.06fF
C711 w_n839_n1349# a_n826_n1343# 0.01fF
C712 w_3737_n2035# prop_2 0.06fF
C713 w_n756_n2472# clk_org 0.06fF
C714 a_n778_n1853# vdd 0.20fF
C715 a_4080_n2775# gnd 0.24fF
C716 c2 vdd 0.11fF
C717 w_n839_n1169# a_n826_n1163# 0.01fF
C718 w_n757_n1169# a_n788_n1163# 0.06fF
C719 a_n782_n994# clk_org 0.05fF
C720 w_4220_n3123# a_4188_n3117# 0.06fF
C721 w_4175_n3123# vdd 0.07fF
C722 a_n291_n1415# q_b1 0.22fF
C723 a_n661_n2466# q_a4 0.07fF
C724 a_4082_n1930# gnd 0.24fF
C725 a_3690_n2459# s3 0.45fF
C726 a_4188_n3117# q_c4 0.07fF
C727 vdd a_4102_n3149# 0.20fF
C728 a_n746_n1691# gnd 0.14fF
C729 w_n313_n1760# q_b2 0.23fF
C730 a_n733_n2231# a_n739_n2263# 0.10fF
C731 q_s3 gnd 0.14fF
C732 w_4088_n1463# clk_org 0.06fF
C733 q_a3 vdd 0.46fF
C734 vdd pdr3 0.68fF
C735 w_3677_n2465# prop_3 0.06fF
C736 a2 clk_org 0.21fF
C737 q_s1 gnd 0.14fF
C738 q_a1 vdd 0.46fF
C739 w_4170_n1463# a_4183_n1457# 0.09fF
C740 w_4088_n1463# a_4097_n1489# 0.25fF
C741 w_4109_n2749# vdd 0.07fF
C742 a_n261_n1715# vdd 0.93fF
C743 a_n820_n994# a_n824_n1026# 0.26fF
C744 a_3711_n2088# s2 0.52fF
C745 a_n234_n2074# vdd 0.93fF
C746 a_n738_n2623# gnd 0.24fF
C747 a_3651_n2463# prop_3 0.20fF
C748 w_4140_n2457# vdd 0.07fF
C749 a_n744_n1163# q_a1 0.07fF
C750 a_3651_n2463# gnd 0.17fF
C751 w_n274_n1721# vdd 0.12fF
C752 w_n712_n1169# q_a1 0.05fF
C753 w_n787_n1827# clk_org 0.06fF
C754 a_206_n2196# gnd 0.05fF
C755 w_n718_n2472# vdd 0.07fF
C756 c3 gnd 0.22fF
C757 a_3608_n3054# vdd 0.15fF
C758 a_196_n1554# gnd 0.05fF
C759 pdr4 gnd 0.05fF
C760 clock_car0 clock_in 0.02fF
C761 s3 clk_org 0.21fF
C762 a_n738_n994# vdd 0.37fF
C763 w_4220_n3123# q_c4 0.05fF
C764 a_4139_n1457# a_4133_n1489# 0.10fF
C765 a_n280_n2476# q_b4 0.22fF
C766 a_4162_n1930# gnd 0.14fF
C767 a3 clk_org 0.21fF
C768 a_3750_n2029# vdd 0.93fF
C769 w_4126_n1463# vdd 0.07fF
C770 a_4147_n2483# gnd 0.14fF
C771 w_n254_n2423# a_n280_n2476# 0.06fF
C772 a_4168_n1898# q_s2 0.07fF
C773 w_n286_n2119# vdd 0.06fF
C774 a_n782_n1691# clk_org 0.41fF
C775 w_3677_n2465# a_3651_n2518# 0.06fF
C776 a_n696_n1659# a_n702_n1691# 0.10fF
C777 a_n280_n2476# gnd 0.20fF
C778 a_n300_n1719# prop_2 0.06fF
C779 q_a4 vdd 0.46fF
C780 w_n839_n1349# vdd 0.08fF
C781 a_n830_n1195# gnd 0.24fF
C782 w_3737_n2035# vdd 0.12fF
C783 a_n692_n1821# clk_org 0.36fF
C784 w_n706_n1000# carry_0 0.05fF
C785 a_4109_n2451# clk_org 0.05fF
C786 w_4093_n3123# clk_org 0.06fF
C787 prop_3 a_3690_n2459# 0.12fF
C788 a_3651_n2463# a_3651_n2518# 0.08fF
C789 a_4109_n2451# a_4067_n2483# 0.51fF
C790 a_n280_n2421# q_a4 0.27fF
C791 w_n753_n1665# a_n782_n1691# 0.13fF
C792 w_n664_n1665# a_n696_n1659# 0.06fF
C793 a_3671_n1223# vdd 0.15fF
C794 w_n657_n2237# q_b3 0.05fF
C795 w_4109_n2749# a_4122_n2743# 0.09fF
C796 w_n749_n1827# vdd 0.07fF
C797 prop_4 a_3608_n3054# 0.22fF
C798 a_3608_n2999# s4 0.06fF
C799 s1 gnd 0.16fF
C800 a_4168_n1898# gnd 0.12fF
C801 gen_2 vdd 0.28fF
C802 a_n696_n1659# gnd 0.12fF
C803 a_4182_n3149# Gnd 0.01fF
C804 a_4138_n3149# Gnd 0.01fF
C805 gnd Gnd 4.77fF
C806 q_c4 Gnd 0.10fF
C807 a_4102_n3149# Gnd 0.04fF
C808 vdd Gnd 14.28fF
C809 a_4188_n3117# Gnd 0.44fF
C810 a_4144_n3117# Gnd 0.48fF
C811 clk_org Gnd 30.24fF
C812 c4 Gnd 0.28fF
C813 s4 Gnd 0.58fF
C814 a_3608_n3054# Gnd 0.05fF
C815 a_3647_n2995# Gnd 0.06fF
C816 prop_4 Gnd 1.16fF
C817 a_3608_n2999# Gnd 0.02fF
C818 c3 Gnd 1.24fF
C819 a_4160_n2775# Gnd 0.01fF
C820 a_4116_n2775# Gnd 0.01fF
C821 q_s4 Gnd 0.10fF
C822 a_4080_n2775# Gnd 1.20fF
C823 a_4166_n2743# Gnd 0.44fF
C824 a_4122_n2743# Gnd 0.48fF
C825 a_n658_n2623# Gnd 0.01fF
C826 a_n702_n2623# Gnd 0.01fF
C827 gen_4 Gnd 0.30fF
C828 q_b4 Gnd 0.47fF
C829 a_n738_n2623# Gnd 0.02fF
C830 a_n652_n2591# Gnd 0.44fF
C831 a_n696_n2591# Gnd 0.48fF
C832 b4 Gnd 0.19fF
C833 a_194_n2562# Gnd 0.29fF
C834 q_a4 Gnd 0.77fF
C835 a_4147_n2483# Gnd 0.01fF
C836 a_4103_n2483# Gnd 0.01fF
C837 a_n667_n2498# Gnd 0.01fF
C838 a_n711_n2498# Gnd 0.01fF
C839 q_s3 Gnd 0.10fF
C840 a_4067_n2483# Gnd 0.02fF
C841 s3 Gnd 0.27fF
C842 a_3651_n2518# Gnd 0.23fF
C843 a_3690_n2459# Gnd 0.06fF
C844 prop_3 Gnd 1.89fF
C845 a_3651_n2463# Gnd 0.49fF
C846 c2 Gnd 1.24fF
C847 a_4153_n2451# Gnd 0.44fF
C848 a_4109_n2451# Gnd 0.48fF
C849 a_n747_n2498# Gnd 0.15fF
C850 a_n661_n2466# Gnd 0.44fF
C851 a_n705_n2466# Gnd 0.48fF
C852 a4 Gnd 0.20fF
C853 a_n280_n2476# Gnd 0.04fF
C854 a_n241_n2417# Gnd 0.06fF
C855 a_n280_n2421# Gnd 0.05fF
C856 a_n695_n2263# Gnd 0.01fF
C857 a_n739_n2263# Gnd 0.01fF
C858 gen_3 Gnd 0.29fF
C859 q_b3 Gnd 0.86fF
C860 a_n775_n2263# Gnd 1.20fF
C861 a_n689_n2231# Gnd 0.44fF
C862 a_n733_n2231# Gnd 0.48fF
C863 b3 Gnd 0.17fF
C864 a_206_n2196# Gnd 0.17fF
C865 q_a3 Gnd 0.81fF
C866 a_n693_n2103# Gnd 0.01fF
C867 a_n737_n2103# Gnd 0.01fF
C868 a_n273_n2133# Gnd 0.05fF
C869 a_n234_n2074# Gnd 0.06fF
C870 a_n273_n2078# Gnd 0.04fF
C871 a_n773_n2103# Gnd 0.02fF
C872 a_n687_n2071# Gnd 0.44fF
C873 a_n731_n2071# Gnd 0.48fF
C874 a3 Gnd 0.19fF
C875 s2 Gnd 0.63fF
C876 a_3711_n2088# Gnd 0.04fF
C877 a_3750_n2029# Gnd 0.06fF
C878 prop_2 Gnd 0.85fF
C879 a_3711_n2033# Gnd 0.05fF
C880 c1 Gnd 0.54fF
C881 a_4162_n1930# Gnd 0.01fF
C882 a_4118_n1930# Gnd 0.01fF
C883 q_s2 Gnd 0.10fF
C884 a_4082_n1930# Gnd 0.04fF
C885 gen_2 Gnd 0.30fF
C886 a_198_n1904# Gnd 0.18fF
C887 q_a2 Gnd 0.84fF
C888 q_b2 Gnd 0.51fF
C889 a_4168_n1898# Gnd 0.44fF
C890 a_4124_n1898# Gnd 0.48fF
C891 a_n698_n1853# Gnd 0.01fF
C892 a_n742_n1853# Gnd 0.01fF
C893 a_n778_n1853# Gnd 0.04fF
C894 a_n692_n1821# Gnd 0.44fF
C895 a_n736_n1821# Gnd 0.48fF
C896 b2 Gnd 0.22fF
C897 gnd Gnd 0.75fF
C898 clock_in Gnd 1.55fF
C899 clock_car0 Gnd 0.77fF
C900 pdr4 Gnd 0.57fF
C901 pdr3 Gnd 0.69fF
C902 pdr2 Gnd 0.68fF
C903 pdr1 Gnd 0.68fF
C904 prop1_car0 Gnd 0.26fF
C905 a_n300_n1774# Gnd 0.04fF
C906 a_n261_n1715# Gnd 0.06fF
C907 a_n300_n1719# Gnd 0.05fF
C908 a_n702_n1691# Gnd 0.01fF
C909 a_n746_n1691# Gnd 0.01fF
C910 gen_1 Gnd 0.31fF
C911 carry_0 Gnd 0.84fF
C912 prop_1 Gnd 0.90fF
C913 a_n782_n1691# Gnd 0.02fF
C914 a_n696_n1659# Gnd 0.44fF
C915 a_n740_n1659# Gnd 0.48fF
C916 a2 Gnd 0.19fF
C917 a_196_n1554# Gnd 0.29fF
C918 q_a1 Gnd 1.46fF
C919 q_b1 Gnd 0.77fF
C920 a_4177_n1489# Gnd 0.01fF
C921 a_4133_n1489# Gnd 0.01fF
C922 q_s1 Gnd 0.10fF
C923 a_4097_n1489# Gnd 0.02fF
C924 a_4183_n1457# Gnd 0.44fF
C925 a_4139_n1457# Gnd 0.48fF
C926 s1 Gnd 0.20fF
C927 a_n750_n1375# Gnd 0.01fF
C928 a_n794_n1375# Gnd 0.01fF
C929 a_n291_n1415# Gnd 0.05fF
C930 a_n252_n1356# Gnd 0.06fF
C931 a_n291_n1360# Gnd 0.49fF
C932 a_n830_n1375# Gnd 1.20fF
C933 a_n744_n1343# Gnd 0.44fF
C934 a_n788_n1343# Gnd 0.48fF
C935 b1 Gnd 0.17fF
C936 a_3671_n1278# Gnd 0.06fF
C937 a_3710_n1219# Gnd 0.06fF
C938 a_3671_n1223# Gnd 0.05fF
C939 a_n750_n1195# Gnd 0.01fF
C940 a_n794_n1195# Gnd 0.01fF
C941 a_n830_n1195# Gnd 0.02fF
C942 a_n744_n1163# Gnd 0.44fF
C943 a_n788_n1163# Gnd 0.48fF
C944 a1 Gnd 0.19fF
C945 a_n744_n1026# Gnd 0.01fF
C946 a_n788_n1026# Gnd 0.01fF
C947 a_n824_n1026# Gnd 0.02fF
C948 a_n738_n994# Gnd 0.44fF
C949 a_n782_n994# Gnd 0.48fF
C950 cin Gnd 0.19fF
C951 w_4220_n3123# Gnd 0.97fF
C952 w_4175_n3123# Gnd 0.97fF
C953 w_4131_n3123# Gnd 0.97fF
C954 w_4093_n3123# Gnd 0.67fF
C955 w_3595_n3040# Gnd 0.53fF
C956 w_3634_n3001# Gnd 2.28fF
C957 w_3595_n2985# Gnd 0.58fF
C958 w_4198_n2749# Gnd 0.97fF
C959 w_4153_n2749# Gnd 0.97fF
C960 w_4109_n2749# Gnd 0.97fF
C961 w_4071_n2749# Gnd 0.67fF
C962 w_n620_n2597# Gnd 0.97fF
C963 w_n665_n2597# Gnd 0.97fF
C964 w_n709_n2597# Gnd 0.97fF
C965 w_n747_n2597# Gnd 1.19fF
C966 w_3638_n2504# Gnd 0.58fF
C967 w_4185_n2457# Gnd 0.97fF
C968 w_4140_n2457# Gnd 0.97fF
C969 w_4096_n2457# Gnd 0.97fF
C970 w_4058_n2457# Gnd 0.67fF
C971 w_3677_n2465# Gnd 2.28fF
C972 w_3638_n2449# Gnd 0.58fF
C973 w_n293_n2462# Gnd 0.58fF
C974 w_n629_n2472# Gnd 0.97fF
C975 w_n674_n2472# Gnd 0.97fF
C976 w_n718_n2472# Gnd 0.97fF
C977 w_n756_n2472# Gnd 1.19fF
C978 w_n254_n2423# Gnd 2.28fF
C979 w_n293_n2407# Gnd 0.41fF
C980 w_n657_n2237# Gnd 0.97fF
C981 w_n702_n2237# Gnd 0.97fF
C982 w_n746_n2237# Gnd 0.97fF
C983 w_n784_n2237# Gnd 0.67fF
C984 w_n286_n2119# Gnd 0.53fF
C985 w_3698_n2074# Gnd 0.58fF
C986 w_n247_n2080# Gnd 2.28fF
C987 w_n286_n2064# Gnd 0.58fF
C988 w_n655_n2077# Gnd 0.97fF
C989 w_n700_n2077# Gnd 0.97fF
C990 w_n744_n2077# Gnd 0.97fF
C991 w_n782_n2077# Gnd 1.19fF
C992 w_3737_n2035# Gnd 2.28fF
C993 w_3698_n2019# Gnd 0.41fF
C994 w_4200_n1904# Gnd 0.97fF
C995 w_4155_n1904# Gnd 0.97fF
C996 w_4111_n1904# Gnd 0.97fF
C997 w_4073_n1904# Gnd 0.67fF
C998 w_n660_n1827# Gnd 0.97fF
C999 w_n705_n1827# Gnd 0.97fF
C1000 w_n749_n1827# Gnd 0.97fF
C1001 w_n787_n1827# Gnd 0.67fF
C1002 w_n313_n1760# Gnd 0.58fF
C1003 vdd Gnd 13.23fF
C1004 w_n274_n1721# Gnd 2.28fF
C1005 w_n313_n1705# Gnd 0.41fF
C1006 w_n664_n1665# Gnd 0.97fF
C1007 w_n709_n1665# Gnd 0.97fF
C1008 w_n753_n1665# Gnd 0.97fF
C1009 w_n791_n1665# Gnd 1.19fF
C1010 w_4215_n1463# Gnd 0.97fF
C1011 w_4170_n1463# Gnd 0.97fF
C1012 w_4126_n1463# Gnd 0.97fF
C1013 w_4088_n1463# Gnd 1.19fF
C1014 w_n304_n1401# Gnd 0.53fF
C1015 w_n265_n1362# Gnd 2.28fF
C1016 w_n304_n1346# Gnd 0.36fF
C1017 w_n712_n1349# Gnd 0.97fF
C1018 w_n757_n1349# Gnd 0.97fF
C1019 w_n801_n1349# Gnd 0.97fF
C1020 w_n839_n1349# Gnd 0.67fF
C1021 w_3658_n1264# Gnd 0.58fF
C1022 w_3697_n1225# Gnd 2.28fF
C1023 w_3658_n1209# Gnd 0.41fF
C1024 w_n712_n1169# Gnd 0.97fF
C1025 w_n757_n1169# Gnd 0.97fF
C1026 w_n801_n1169# Gnd 0.97fF
C1027 w_n839_n1169# Gnd 1.19fF
C1028 w_n706_n1000# Gnd 0.97fF
C1029 w_n751_n1000# Gnd 0.97fF
C1030 w_n795_n1000# Gnd 0.97fF
C1031 w_n833_n1000# Gnd 1.19fF



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

.ic v(q_a1)=0
.ic v(q_a2)=0
.ic v(q_a3)=0
.ic v(q_a4)=0
.ic v(q_b1)=0
.ic v(q_b2)=0
.ic v(q_b3)=0
.ic v(q_b4)=0
.ic v(carry_0)=0
.ic v(c4)=0

.ic v(s1)=0
.ic v(s2)=0
.ic v(s3)=0
.ic v(s4)=0
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