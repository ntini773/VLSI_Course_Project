* SPICE3 file created from ver3_loaded_routed.ext - technology: scmos

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



M1000 a_931_n935# a_928_n937# a_928_n973# Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=50 ps=30
M1001 gnd a_928_n973# a_931_n979# Gnd CMOSN w=10 l=2
+  ad=4840 pd=2896 as=60 ps=32
M1002 a_2256_n1037# a_2259_n1001# s3 w_2250_n1050# CMOSP w=24 l=2
+  ad=432 pd=180 as=192 ps=64
M1003 a_2259_n1001# prop_3 vdd w_2301_n1089# CMOSP w=12 l=2
+  ad=60 pd=34 as=11080 ps=5432
M1004 a_1752_n1949# q_a2 a_1752_n1998# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1005 a_2666_n1130# a_2622_n1130# vdd w_2653_n1136# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1006 a_2616_n1162# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1007 gnd a_2083_n767# a_2150_n761# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1008 vdd a_1338_n972# a_1338_n1023# w_1367_n991# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1009 a_2259_n1001# prop_3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1010 gen_2 a_1752_n1949# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1011 a_1761_n1432# q_a3 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1012 q_s2 a_2319_n843# vdd w_2351_n849# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1013 a_1670_n902# clk_org a_1635_n936# w_1664_n915# CMOSP w=25 l=2
+  ad=150 pd=62 as=125 ps=60
M1014 gnd a4 a_1035_n937# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1015 vdd b2 a_1373_n902# w_1367_n915# CMOSP w=25 l=2
+  ad=0 pd=0 as=150 ps=62
M1016 a_1237_n979# clk_org a_1234_n1024# Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=50 ps=30
M1017 vdd prop_3 a_2256_n1037# w_2250_n1050# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1018 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=2500 ps=1140
M1019 a_1341_n978# clk_org a_1338_n1023# Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=50 ps=30
M1020 q_s3 a_2472_n972# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1021 a_2428_n972# clk_org vdd w_2415_n978# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1022 a_2666_n1130# clk_org a_2660_n1162# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1023 s4 a_2435_n1234# a_2439_n1195# w_2433_n1208# CMOSP w=24 l=2
+  ad=192 pd=64 as=432 ps=180
M1024 a_1729_n1508# q_a4 vdd w_1716_n1494# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1025 gnd clk_org a_1638_n934# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1026 a_1719_n1239# q_a2 vdd w_1706_n1225# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1027 a_1756_n2057# q_b1 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1028 gnd b3 a_1137_n937# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1029 vdd clk_org a_1635_n972# w_1664_n947# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1030 a_2390_n972# s3 vdd w_2377_n978# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1031 vdd clock_in pdr1 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1032 a_2821_n1467# a_2783_n1435# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1033 a_2255_n771# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1034 a_1946_n1889# a_1896_n1885# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1035 a_2152_n961# a_2083_n1028# s2 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1036 s2 prop_2 a_2152_n989# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1037 a_2122_n761# carry_0 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1038 gnd a_1722_n1438# a_1789_n1432# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1039 iq_s3 q_s3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=1250 ps=610
M1040 gnd a3 a_1234_n937# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1041 pdr2 prop_2 pdr1 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=1500 ps=630
M1042 prop_1 q_b1 a_1757_n1156# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1043 pdr4 gen_4 clock_car0 Gnd CMOSN w=100 l=2
+  ad=1000 pd=420 as=3000 ps=1260
M1044 gnd a_1536_n972# a_1539_n978# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1045 a_1539_n934# a_1536_n936# a_1536_n972# Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=50 ps=30
M1046 vdd prop_4 a_2439_n1195# w_2433_n1208# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1047 vdd a_1137_n1024# q_b3 w_1166_n1037# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1048 vdd a_1137_n973# a_1137_n1024# w_1166_n992# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1049 carry_0 a_1896_n1840# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1050 a_2422_n1004# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1051 a_2442_n1159# prop_4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1052 a_2827_n1435# a_2783_n1435# vdd w_2814_n1441# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1053 gnd clk_org a_1341_n934# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1054 vdd a_1338_n1023# q_b2 w_1367_n1036# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1055 a_1756_n2106# q_b1 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1056 q_s1 a_2305_n739# vdd w_2337_n745# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1057 vdd b3 a_1172_n903# w_1166_n916# CMOSP w=25 l=2
+  ad=0 pd=0 as=150 ps=62
M1058 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1059 gnd a2 a_1440_n936# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1060 a_1789_n1432# a_1722_n1383# prop_3 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1061 a_2083_n1028# c1 vdd w_2077_n1041# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1062 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1063 vdd a_1234_n973# a_1234_n1024# w_1263_n992# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1064 a_1757_n1156# q_a1 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1065 a_1752_n1949# q_b2 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1066 a_2150_n761# a_2083_n712# s1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1067 a_2428_n972# a_2386_n1004# a_2422_n1004# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1068 vdd q_b3 a_1761_n1379# w_1748_n1385# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1069 a_1070_n903# clk_org a_1035_n937# w_1064_n916# CMOSP w=25 l=2
+  ad=150 pd=62 as=125 ps=60
M1070 a_2472_n972# clk_org a_2466_n1004# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1071 gnd a_1137_n1024# q_b3 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1072 vdd prop_1 a_2122_n708# w_2109_n714# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1073 vdd a3 a_1269_n903# w_1263_n916# CMOSP w=25 l=2
+  ad=0 pd=0 as=150 ps=62
M1074 gnd a_2442_n1159# a_2504_n1167# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1075 gnd a_1338_n1023# q_b2 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1076 a_1718_n1162# q_b1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1077 a_1896_n1885# clk_org vdd w_1893_n1940# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1078 a_1751_n1721# q_b4 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1079 vdd clock_in pdr2 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1080 a_931_n979# clk_org a_928_n1024# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1081 vdd q_b1 a_1757_n1103# w_1744_n1109# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1082 vdd q_a4 a_1751_n1721# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1083 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1084 iq_s1 q_s1 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1085 a_2233_n875# clk_org a_2237_n843# w_2224_n849# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1086 a_2122_n708# a_2083_n767# s1 w_2109_n714# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1087 iq_s1 q_s1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1088 gnd clk_org a_1038_n935# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1089 q_s4 a_2666_n1130# vdd w_2698_n1136# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1090 gen_1 a_1756_n2057# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1091 a_2313_n875# a_2275_n843# gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1092 vdd a_1440_n972# a_1440_n1023# w_1469_n991# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1093 a_2584_n1130# s4 vdd w_2571_n1136# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1094 a_1752_n1998# q_b2 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1095 vdd clk_org a_1035_n973# w_1064_n948# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1096 a_2622_n1130# clk_org vdd w_2609_n1136# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1097 prop_2 q_b2 a_1758_n1288# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1098 pdr4 prop_4 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1099 a_1761_n1379# q_a3 vdd w_1748_n1385# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1100 vdd a2 a_1475_n902# w_1469_n915# CMOSP w=25 l=2
+  ad=0 pd=0 as=150 ps=62
M1101 a_2087_n989# c1 vdd w_2081_n1002# CMOSP w=24 l=2
+  ad=432 pd=180 as=0 ps=0
M1102 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1103 a_1443_n978# clk_org a_1440_n1023# Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=50 ps=30
M1104 a_1899_n1957# clk_org a_1899_n1965# w_1893_n1978# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1105 gnd a_1718_n1162# a_1785_n1156# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1106 a_2439_n1195# a_2442_n1159# s4 w_2433_n1208# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1107 gnd clk_org a_1140_n935# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1108 gnd a_1635_n972# a_1638_n978# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1109 prop_4 q_b4 a_1768_n1557# Gnd CMOSN w=12 l=2
+  ad=120 pd=68 as=96 ps=40
M1110 a_1638_n934# a_1635_n936# a_1635_n972# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1111 gnd a_1536_n1023# q_b1 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1112 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1113 a_1896_n1885# a_1899_n1957# a_1946_n1933# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1114 a_1761_n1379# a_1722_n1438# prop_3 w_1748_n1385# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1115 iq_s2 q_s2 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1116 a_1757_n1103# q_a1 vdd w_1744_n1109# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1117 a_2622_n1130# a_2580_n1162# a_2616_n1162# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1118 a_2269_n875# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1119 iq_s2 q_s2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1120 a_1373_n902# clk_org a_1338_n936# w_1367_n915# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1121 pdr1 gen_1 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1122 vdd clock_in pdr4 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1123 gnd b4 a_928_n937# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1124 gnd clk_org a_1237_n935# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1125 gnd a_2090_n953# a_2152_n961# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1126 vdd a_1536_n972# a_1536_n1023# w_1565_n991# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1127 gnd a_1035_n1024# q_a4 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1128 a_1758_n1288# q_a2 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1129 a_2386_n1004# clk_org a_2390_n972# w_2377_n978# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1130 a_2090_n953# prop_2 vdd w_2132_n1041# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1131 a_2252_n1076# c2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1132 a_2261_n739# a_2219_n771# a_2255_n771# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1133 vdd b1 a_1571_n902# w_1565_n915# CMOSP w=25 l=2
+  ad=0 pd=0 as=150 ps=62
M1134 a_1785_n1156# a_1718_n1107# prop_1 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1135 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1136 a_1768_n1557# q_a4 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1137 vdd clk_org a_1338_n972# w_1367_n947# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1138 a_2090_n953# prop_2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1139 gnd a_1729_n1563# a_1796_n1557# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1140 a_1719_n1294# q_b2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1141 vdd q_b2 a_1758_n1235# w_1745_n1241# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1142 prop_3 a_1722_n1383# a_1761_n1379# w_1748_n1385# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1143 gen_2 a_1752_n1949# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1144 a_1751_n1830# q_a3 vdd vdd CMOSP w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1145 a_2827_n1435# clk_org a_2821_n1467# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1146 a_2219_n771# clk_org a_2223_n739# w_2210_n745# CMOSP w=25 l=2
+  ad=125 pd=60 as=150 ps=62
M1147 vdd a_928_n973# a_928_n1024# w_957_n992# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1148 gnd a_1338_n972# a_1341_n978# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1149 a_2580_n1162# s4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1150 vdd q_b3 a_1751_n1830# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1151 pdr2 gen_2 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1152 a_1729_n1563# q_b4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1153 a_1341_n934# a_1338_n936# a_1338_n972# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1154 q_s3 a_2472_n972# vdd w_2504_n978# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1155 a_2122_n708# carry_0 vdd w_2109_n714# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1156 gnd clk_org a_1443_n934# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1157 a_2321_n1037# c2 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1158 vdd q_b4 a_1768_n1504# w_1755_n1510# CMOSP w=24 l=2
+  ad=0 pd=0 as=432 ps=180
M1159 a_2745_n1435# c4 vdd w_2732_n1441# CMOSP w=25 l=2
+  ad=150 pd=62 as=0 ps=0
M1160 vdd b4 a_963_n903# w_957_n916# CMOSP w=25 l=2
+  ad=0 pd=0 as=150 ps=62
M1161 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1162 vdd a_1234_n1024# q_a3 w_1263_n1037# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1163 a_2777_n1467# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=60 pd=32 as=0 ps=0
M1164 gnd a_1719_n1294# a_1786_n1288# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=96 ps=40
M1165 s1 a_2083_n712# a_2122_n708# w_2109_n714# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1166 a_1172_n903# clk_org a_1137_n937# w_1166_n916# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1167 a_1758_n1235# q_a2 vdd w_1745_n1241# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1168 a_2275_n843# clk_org vdd w_2262_n849# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1169 a_1718_n1162# q_b1 vdd w_1705_n1148# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1170 a_1751_n1879# q_a3 gnd Gnd CMOSN w=20 l=2
+  ad=180 pd=58 as=0 ps=0
M1171 gnd b1 a_1536_n936# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1172 a_2321_n1009# a_2252_n1076# s3 Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=120 ps=68
M1173 iq_s4 q_s4 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1174 a_1751_n1830# q_b3 a_1751_n1879# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1175 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1176 iq_s4 q_s4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1177 gen_3 a_1751_n1830# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1178 gnd a_1635_n1023# q_a1 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1179 a_1718_n1107# q_a1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1180 a_1768_n1504# q_a4 vdd w_1755_n1510# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1181 a_1758_n1235# a_1719_n1294# prop_2 w_1745_n1241# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1182 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1183 s2 a_2083_n1028# a_2087_n989# w_2081_n1002# CMOSP w=24 l=2
+  ad=192 pd=64 as=0 ps=0
M1184 gnd a_1035_n973# a_1038_n979# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1185 a_1751_n1721# q_a4 a_1751_n1770# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=180 ps=58
M1186 a_1751_n1770# q_b4 gnd Gnd CMOSN w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1187 a_2083_n767# prop_1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1188 a_1038_n935# a_1035_n937# a_1035_n973# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1189 gnd a_1234_n1024# q_a3 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1190 a_2442_n1159# prop_4 vdd w_2484_n1247# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1191 a_2305_n739# clk_org a_2299_n771# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=60 ps=32
M1192 a_1269_n903# clk_org a_1234_n937# w_1263_n916# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1193 a_2472_n972# a_2428_n972# vdd w_2459_n978# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1194 vdd a_1635_n972# a_1635_n1023# w_1664_n991# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1195 gen_4 a_1751_n1721# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1196 a_1722_n1438# q_b3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1197 vdd a_1536_n1023# q_b1 w_1565_n1036# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1198 a_1786_n1288# a_1719_n1239# prop_2 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1199 a_2783_n1435# clk_org vdd w_2770_n1441# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1200 vdd clk_org a_1137_n973# w_1166_n948# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1201 a_2504_n1195# c3 gnd Gnd CMOSN w=12 l=2
+  ad=96 pd=40 as=0 ps=0
M1202 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1203 a_1722_n1383# q_a3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1204 vdd a1 a_1670_n902# w_1664_n915# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1205 vdd prop_2 a_2087_n989# w_2081_n1002# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1206 a_2660_n1162# a_2622_n1130# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1207 a_1899_n1965# cin vdd w_1893_n1978# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1208 gnd a_1137_n973# a_1140_n979# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=60 ps=32
M1209 a_1757_n1103# a_1718_n1162# prop_1 w_1744_n1109# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1210 a_1796_n1557# a_1729_n1508# prop_4 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1211 a_1140_n935# a_1137_n937# a_1137_n973# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1212 s3 a_2252_n1076# a_2256_n1037# w_2250_n1050# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1213 a_1899_n1957# cin gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1214 a_2305_n739# a_2261_n739# vdd w_2292_n745# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1215 gnd clk_org a_931_n935# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1216 vdd a_1035_n1024# q_a4 w_1064_n1037# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1217 a_1946_n1933# clk_org gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1218 vdd a_1440_n1023# q_a2 w_1469_n1036# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1219 a_1896_n1840# a_1896_n1885# vdd w_1893_n1896# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1220 pdr3 prop_3 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1221 a_2083_n712# carry_0 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1222 vdd clk_org a_1234_n973# w_1263_n948# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1223 a_2386_n1004# s3 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1224 prop_2 a_1719_n1239# a_1758_n1235# w_1745_n1241# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1225 carry_0 a_1896_n1840# vdd w_1893_n1851# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1226 iq_c4 q_c4 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1227 a_1475_n902# clk_org a_1440_n936# w_1469_n915# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1228 a_1539_n978# clk_org a_1536_n1023# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1229 iq_c4 q_c4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1230 a_2580_n1162# clk_org a_2584_n1130# w_2571_n1136# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1231 a_2256_n1037# c2 vdd w_2250_n1050# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1232 gnd a_1234_n973# a_1237_n979# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1233 q_c4 a_2827_n1435# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1234 a_2319_n843# a_2275_n843# vdd w_2306_n849# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1235 a_1237_n935# a_1234_n937# a_1234_n973# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1236 vdd q_a1 a_1756_n2057# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1237 q_s1 a_2305_n739# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1238 a_2275_n843# a_2233_n875# a_2269_n875# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1239 prop_1 a_1718_n1107# a_1757_n1103# w_1744_n1109# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1240 a_2261_n739# clk_org vdd w_2248_n745# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1241 a_1719_n1294# q_b2 vdd w_1706_n1280# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1242 gnd a_1440_n1023# q_a2 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1243 a_2252_n1076# c2 vdd w_2246_n1089# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1244 vdd clock_in pdr3 vdd CMOSP w=50 l=2
+  ad=0 pd=0 as=250 ps=110
M1245 a_1768_n1504# a_1729_n1563# prop_4 w_1755_n1510# CMOSP w=24 l=2
+  ad=0 pd=0 as=192 ps=64
M1246 vdd clk_org a_1440_n972# w_1469_n947# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1247 a_1719_n1239# q_a2 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1248 gnd a1 a_1635_n936# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1249 a_2083_n1028# c1 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1250 a_1896_n1840# clk_org a_1946_n1889# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1251 a_1729_n1563# q_b4 vdd w_1716_n1549# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1252 q_s2 a_2319_n843# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1253 a_2152_n989# c1 gnd Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1254 a_1571_n902# clk_org a_1536_n936# w_1565_n915# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1255 gnd a_1440_n972# a_1443_n978# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1256 a_1443_n934# a_1440_n936# a_1440_n972# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1257 s3 prop_3 a_2321_n1037# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1258 a_1729_n1508# q_a4 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1259 gen_3 a_1751_n1830# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1260 gen_1 a_1756_n2057# vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1261 a_1718_n1107# q_a1 vdd w_1705_n1093# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1262 q_s4 a_2666_n1130# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1263 a_2466_n1004# a_2428_n972# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1264 vdd a_1635_n1023# q_a1 w_1664_n1036# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1265 gnd clk_org a_1539_n934# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1266 a_2439_n1195# c3 vdd w_2433_n1208# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1267 gen_4 a_1751_n1721# gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1268 vdd a_1035_n973# a_1035_n1024# w_1064_n992# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1269 vdd a_928_n1024# q_b4 w_957_n1037# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1270 a_1756_n2057# q_a1 a_1756_n2106# Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1271 a_2219_n771# s1 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1272 a_963_n903# clk_org a_928_n937# w_957_n916# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1273 a_2223_n739# s1 vdd w_2210_n745# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1274 s1 prop_1 a_2122_n761# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1275 vdd clk_org a_1536_n972# w_1565_n947# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1276 iq_s3 q_s3 vdd vdd CMOSP w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1277 gnd a_2259_n1001# a_2321_n1009# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1278 vdd a4 a_1070_n903# w_1064_n916# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1279 vdd q_a2 a_1752_n1949# vdd CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1280 a_2741_n1467# clk_org a_2745_n1435# w_2732_n1441# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1281 a_2083_n767# prop_1 vdd w_2070_n753# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1282 gnd b2 a_1338_n936# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1283 a_1038_n979# clk_org a_1035_n1024# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1284 a_1638_n978# clk_org a_1635_n1023# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1285 prop_3 q_b3 a_1761_n1432# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1286 a_2233_n875# s2 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1287 a_2319_n843# clk_org a_2313_n875# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1288 a_2087_n989# a_2090_n953# s2 w_2081_n1002# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
M1289 a_1722_n1438# q_b3 vdd w_1709_n1424# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1290 a_2299_n771# a_2261_n739# gnd Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1291 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1292 a_2783_n1435# a_2741_n1467# a_2777_n1467# Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1293 a_2741_n1467# c4 gnd Gnd CMOSN w=10 l=2
+  ad=50 pd=30 as=0 ps=0
M1294 a_2083_n712# carry_0 vdd w_2070_n698# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1295 a_2237_n843# s2 vdd w_2224_n849# CMOSP w=25 l=2
+  ad=0 pd=0 as=0 ps=0
M1296 pdr3 gen_3 clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1297 q_c4 a_2827_n1435# vdd w_2859_n1441# CMOSP w=25 l=2
+  ad=125 pd=60 as=0 ps=0
M1298 a_1722_n1383# q_a3 vdd w_1709_n1369# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1299 vdd clk_org a_928_n973# w_957_n948# CMOSP w=25 l=2
+  ad=0 pd=0 as=125 ps=60
M1300 gnd a_928_n1024# q_b4 Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1301 a_2504_n1167# a_2435_n1234# s4 Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=120 ps=68
M1302 s4 prop_4 a_2504_n1195# Gnd CMOSN w=12 l=2
+  ad=0 pd=0 as=0 ps=0
M1303 a_2435_n1234# c3 vdd w_2429_n1247# CMOSP w=12 l=2
+  ad=60 pd=34 as=0 ps=0
M1304 pdr1 prop_1 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1305 a_1140_n979# clk_org a_1137_n1024# Gnd CMOSN w=10 l=2
+  ad=0 pd=0 as=50 ps=30
M1306 a_2435_n1234# c3 gnd Gnd CMOSN w=6 l=2
+  ad=30 pd=22 as=0 ps=0
M1307 prop_4 a_1729_n1508# a_1768_n1504# w_1755_n1510# CMOSP w=24 l=2
+  ad=0 pd=0 as=0 ps=0
C0 a_2083_n712# gnd 0.17fF
C1 gen_2 gnd 0.14fF
C2 w_2377_n978# clk_org 0.06fF
C3 w_1565_n991# a_1536_n972# 0.06fF
C4 w_1745_n1241# a_1758_n1235# 0.16fF
C5 a_1946_n1933# gnd 0.14fF
C6 w_1716_n1494# vdd 0.09fF
C7 a_2741_n1467# gnd 0.24fF
C8 c1 pdr1 0.07fF
C9 s4 gnd 0.16fF
C10 a_1137_n1024# gnd 0.12fF
C11 w_2109_n714# vdd 0.12fF
C12 w_1755_n1510# a_1729_n1508# 0.06fF
C13 w_2484_n1247# prop_4 0.23fF
C14 w_1166_n992# a_1137_n973# 0.06fF
C15 a_1761_n1379# vdd 0.93fF
C16 carry_0 prop_2 0.09fF
C17 s2 a_2090_n953# 0.52fF
C18 w_2484_n1247# vdd 0.06fF
C19 prop_3 a_1722_n1383# 0.06fF
C20 w_1748_n1385# a_1761_n1379# 0.16fF
C21 w_1744_n1109# a_1718_n1162# 0.06fF
C22 w_2210_n745# s1 0.06fF
C23 a_1234_n1024# q_a3 0.07fF
C24 a_2660_n1162# gnd 0.14fF
C25 a_2275_n843# clk_org 0.05fF
C26 clk_org cin 0.21fF
C27 vdd a_1756_n2057# 0.44fF
C28 w_2609_n1136# vdd 0.07fF
C29 a_1638_n934# gnd 0.14fF
C30 a_2428_n972# clk_org 0.05fF
C31 pdr1 gen_4 0.10fF
C32 iq_s4 gnd 0.10fF
C33 a_2580_n1162# vdd 0.20fF
C34 a_1338_n1023# clk_org 0.36fF
C35 a_1443_n978# gnd 0.14fF
C36 a_2821_n1467# gnd 0.14fF
C37 w_957_n948# clk_org 0.06fF
C38 w_1166_n948# vdd 0.07fF
C39 s1 gnd 0.14fF
C40 carry_0 prop1_car0 0.02fF
C41 a_2275_n843# a_2269_n875# 0.10fF
C42 w_2077_n1041# vdd 0.09fF
C43 q_a3 a_1722_n1438# 0.06fF
C44 vdd c3 0.48fF
C45 prop1_car0 gen_3 0.10fF
C46 w_1709_n1369# q_a3 0.06fF
C47 w_2250_n1050# prop_3 0.06fF
C48 w_1893_n1896# a_1896_n1840# 0.09fF
C49 w_1893_n1851# vdd 0.07fF
C50 w_2262_n849# a_2233_n875# 0.13fF
C51 a_1756_n2057# gnd 0.05fF
C52 w_1469_n991# a_1440_n1023# 0.09fF
C53 a_2580_n1162# gnd 0.24fF
C54 q_a4 vdd 0.46fF
C55 w_2210_n745# clk_org 0.06fF
C56 w_957_n1037# q_b4 0.05fF
C57 a_2237_n843# a_2233_n875# 0.26fF
C58 a_2319_n843# q_s2 0.07fF
C59 a_1234_n973# vdd 0.37fF
C60 w_1064_n1037# vdd 0.07fF
C61 a_2083_n712# prop_1 0.20fF
C62 a_1539_n934# a_1536_n972# 0.10fF
C63 w_1263_n916# a_1234_n937# 0.25fF
C64 w_1166_n916# a_1172_n903# 0.01fF
C65 c2 vdd 0.11fF
C66 w_1064_n992# a_1035_n1024# 0.09fF
C67 q_b2 q_b4 0.33fF
C68 pdr3 clock_car0 1.03fF
C69 w_2210_n745# a_2219_n771# 0.25fF
C70 w_2292_n745# a_2305_n739# 0.09fF
C71 pdr2 gen_3 0.10fF
C72 a_2219_n771# vdd 0.20fF
C73 iq_s1 gnd 0.10fF
C74 a_1035_n937# a_1070_n903# 0.26fF
C75 q_a2 a_1719_n1239# 0.27fF
C76 w_1565_n991# vdd 0.07fF
C77 clock_in gen_3 0.09fF
C78 a_1140_n935# a_1137_n973# 0.10fF
C79 q_b4 q_a1 0.33fF
C80 w_2433_n1208# c3 0.06fF
C81 q_a4 q_b1 0.34fF
C82 q_b3 q_a2 0.36fF
C83 q_a4 gnd 0.35fF
C84 q_s3 gnd 0.05fF
C85 clk_org gnd 4.09fF
C86 a_1234_n973# gnd 0.18fF
C87 vdd q_s2 0.06fF
C88 c2 gnd 0.22fF
C89 w_1263_n916# a_1269_n903# 0.01fF
C90 w_1367_n947# clk_org 0.06fF
C91 a_2219_n771# gnd 0.24fF
C92 a_2269_n875# gnd 0.14fF
C93 w_2109_n714# prop_1 0.06fF
C94 w_1893_n1940# clk_org 0.06fF
C95 prop_4 pdr1 0.10fF
C96 prop_2 prop_3 0.62fF
C97 w_2246_n1089# a_2252_n1076# 0.03fF
C98 q_s2 iq_s2 0.07fF
C99 s4 a_2435_n1234# 0.06fF
C100 a_1440_n972# clk_org 0.05fF
C101 vdd a_1752_n1949# 0.44fF
C102 a_2745_n1435# vdd 0.29fF
C103 a_1035_n937# vdd 0.20fF
C104 w_1706_n1225# q_a2 0.06fF
C105 w_1744_n1109# q_a1 0.06fF
C106 a_928_n1024# q_b4 0.07fF
C107 a_1718_n1162# vdd 0.15fF
C108 a_1035_n1024# vdd 0.37fF
C109 a_931_n979# gnd 0.14fF
C110 w_1469_n915# vdd 0.08fF
C111 pdr4 clock_car0 1.03fF
C112 a_2083_n1028# c1 0.27fF
C113 a_1341_n978# a_1338_n1023# 0.10fF
C114 w_1367_n1036# q_b2 0.05fF
C115 w_1745_n1241# a_1719_n1239# 0.06fF
C116 b4 clk_org 0.21fF
C117 prop_2 c1 0.09fF
C118 w_1166_n948# a_1137_n937# 0.13fF
C119 w_2859_n1441# vdd 0.07fF
C120 a_1752_n1949# gnd 0.05fF
C121 a_1035_n937# gnd 0.24fF
C122 q_b1 a_1718_n1162# 0.22fF
C123 a_1718_n1162# gnd 0.20fF
C124 c3 pdr3 0.07fF
C125 a_1035_n1024# gnd 0.12fF
C126 prop_3 prop1_car0 0.09fF
C127 w_1716_n1494# a_1729_n1508# 0.03fF
C128 w_2070_n698# vdd 0.09fF
C129 a_2259_n1001# c2 0.06fF
C130 a_1722_n1383# vdd 0.15fF
C131 w_1469_n1036# q_a2 0.05fF
C132 w_2429_n1247# vdd 0.09fF
C133 vdd pdr2 0.68fF
C134 w_1748_n1385# a_1722_n1383# 0.06fF
C135 a_1137_n937# clk_org 0.41fF
C136 w_1893_n1978# a_1899_n1957# 0.25fF
C137 a_2083_n767# vdd 0.15fF
C138 w_1744_n1109# a_1757_n1103# 0.16fF
C139 w_1565_n1036# a_1536_n1023# 0.06fF
C140 vdd clock_in 0.74fF
C141 gen_1 vdd 0.28fF
C142 a_1635_n936# clk_org 0.41fF
C143 a_2616_n1162# gnd 0.14fF
C144 w_1166_n916# b3 0.06fF
C145 a_1539_n934# gnd 0.14fF
C146 w_2571_n1136# vdd 0.08fF
C147 prop_3 pdr2 0.24fF
C148 w_2504_n978# a_2472_n972# 0.06fF
C149 a_1722_n1383# gnd 0.17fF
C150 a_2584_n1130# vdd 0.29fF
C151 a_1234_n937# a_1269_n903# 0.26fF
C152 a_1341_n978# gnd 0.14fF
C153 a_1234_n1024# clk_org 0.36fF
C154 prop_3 clock_in 0.17fF
C155 w_2351_n849# a_2319_n843# 0.06fF
C156 w_1166_n1037# a_1137_n1024# 0.06fF
C157 a_2777_n1467# gnd 0.14fF
C158 w_1064_n948# vdd 0.07fF
C159 w_1664_n915# clk_org 0.06fF
C160 a_2083_n767# gnd 0.20fF
C161 gen_1 gnd 0.14fF
C162 w_2250_n1050# vdd 0.12fF
C163 w_1755_n1510# q_a4 0.06fF
C164 a_1338_n1023# q_b2 0.07fF
C165 w_1893_n1851# a_1896_n1840# 0.06fF
C166 prop_4 c3 0.09fF
C167 c3 vdd 0.11fF
C168 a_1896_n1840# clk_org 0.36fF
C169 a_928_n973# clk_org 0.05fF
C170 a_1137_n973# vdd 0.37fF
C171 w_957_n1037# vdd 0.07fF
C172 prop1_car0 gen_4 0.10fF
C173 q_a4 a_1729_n1508# 0.27fF
C174 prop_1 pdr1 0.02fF
C175 w_957_n916# vdd 0.08fF
C176 a_1338_n936# vdd 0.20fF
C177 a_1440_n1023# q_a2 0.07fF
C178 w_2210_n745# a_2223_n739# 0.01fF
C179 w_2292_n745# a_2261_n739# 0.06fF
C180 q_b2 vdd 0.45fF
C181 a_2223_n739# vdd 0.29fF
C182 w_1469_n991# vdd 0.07fF
C183 w_1664_n947# a_1635_n972# 0.09fF
C184 prop_1 a_1718_n1162# 0.52fF
C185 vdd iq_s4 0.25fF
C186 a_2252_n1076# prop_3 0.20fF
C187 c3 gnd 0.22fF
C188 w_1263_n916# a3 0.06fF
C189 q_a1 vdd 0.46fF
C190 a_1137_n973# gnd 0.18fF
C191 pdr2 gen_4 0.10fF
C192 a_1338_n936# gnd 0.24fF
C193 w_1263_n948# a_1234_n973# 0.09fF
C194 q_b4 q_a2 0.33fF
C195 w_1263_n948# clk_org 0.06fF
C196 q_b2 q_b1 0.34fF
C197 q_a4 q_a3 0.36fF
C198 clock_in gen_4 0.09fF
C199 q_s2 vdd 0.29fF
C200 q_b2 gnd 0.30fF
C201 a_2083_n1028# vdd 0.15fF
C202 q_b1 q_a1 11.60fF
C203 w_1367_n947# a_1338_n936# 0.13fF
C204 q_a1 gnd 0.35fF
C205 w_2109_n714# a_2083_n712# 0.06fF
C206 prop_2 vdd 0.10fF
C207 a_2472_n972# q_s3 0.07fF
C208 w_2859_n1441# q_c4 0.05fF
C209 a_1719_n1294# vdd 0.15fF
C210 pdr2 pdr3 1.07fF
C211 w_957_n948# a_928_n937# 0.13fF
C212 vdd a_1899_n1957# 0.20fF
C213 a_1338_n972# clk_org 0.05fF
C214 c4 clk_org 0.21fF
C215 a_2827_n1435# vdd 0.37fF
C216 w_2377_n978# s3 0.06fF
C217 q_s2 gnd 0.14fF
C218 vdd iq_s1 0.25fF
C219 prop_1 a_2083_n767# 0.22fF
C220 a_2083_n712# s1 0.06fF
C221 pdr3 clock_in 0.14fF
C222 w_1705_n1093# q_a1 0.06fF
C223 a_1757_n1103# vdd 0.93fF
C224 a_2083_n1028# gnd 0.17fF
C225 a_928_n1024# vdd 0.37fF
C226 a_2261_n739# a_2255_n771# 0.10fF
C227 w_1367_n915# vdd 0.08fF
C228 vdd q_s3 0.06fF
C229 w_2250_n1050# a_2259_n1001# 0.06fF
C230 prop_2 gnd 0.27fF
C231 w_2224_n849# vdd 0.08fF
C232 a_1719_n1294# gnd 0.20fF
C233 w_1469_n991# a_1440_n972# 0.06fF
C234 w_1706_n1225# a_1719_n1239# 0.03fF
C235 a_928_n937# vdd 0.20fF
C236 prop_4 prop1_car0 0.10fF
C237 w_2814_n1441# vdd 0.07fF
C238 a_1899_n1957# gnd 0.24fF
C239 a_2827_n1435# gnd 0.12fF
C240 q_b1 a_1757_n1103# 0.12fF
C241 a_928_n1024# gnd 0.12fF
C242 w_957_n916# b4 0.06fF
C243 w_2429_n1247# a_2435_n1234# 0.03fF
C244 w_1064_n992# a_1035_n973# 0.06fF
C245 a_1722_n1383# a_1722_n1438# 0.08fF
C246 w_1706_n1280# vdd 0.06fF
C247 w_1709_n1369# a_1722_n1383# 0.03fF
C248 a_928_n937# gnd 0.24fF
C249 w_2070_n753# a_2083_n767# 0.03fF
C250 a_1137_n937# a_1137_n973# 0.51fF
C251 w_2109_n714# s1 0.02fF
C252 w_1893_n1940# a_1899_n1957# 0.13fF
C253 a_2122_n708# vdd 0.93fF
C254 w_1744_n1109# a_1718_n1107# 0.06fF
C255 prop_4 pdr2 0.10fF
C256 w_957_n992# vdd 0.07fF
C257 w_2433_n1208# a_2442_n1159# 0.06fF
C258 prop_4 clock_in 0.19fF
C259 w_1705_n1148# vdd 0.06fF
C260 a_1443_n934# gnd 0.14fF
C261 w_2459_n978# a_2472_n972# 0.09fF
C262 w_2081_n1002# a_2083_n1028# 0.06fF
C263 a_2741_n1467# clk_org 0.41fF
C264 a_2666_n1130# vdd 0.37fF
C265 s4 clk_org 0.21fF
C266 pdr4 clock_in 0.08fF
C267 w_2301_n1089# prop_3 0.23fF
C268 a_1440_n936# a_1475_n902# 0.26fF
C269 a_1137_n1024# clk_org 0.36fF
C270 a_1237_n979# gnd 0.14fF
C271 w_2306_n849# a_2319_n843# 0.09fF
C272 w_2081_n1002# prop_2 0.06fF
C273 w_1565_n915# clk_org 0.06fF
C274 a_2472_n972# a_2466_n1004# 0.10fF
C275 q_a3 a_1722_n1383# 0.27fF
C276 w_1664_n1036# vdd 0.07fF
C277 w_1716_n1494# q_a4 0.06fF
C278 w_1705_n1148# q_b1 0.23fF
C279 a_2435_n1234# c3 0.27fF
C280 w_1367_n991# a_1338_n1023# 0.09fF
C281 w_2698_n1136# a_2666_n1130# 0.06fF
C282 w_2609_n1136# a_2580_n1162# 0.13fF
C283 a_2666_n1130# gnd 0.12fF
C284 q_b3 a_1751_n1830# 0.20fF
C285 a_2275_n843# a_2233_n875# 0.51fF
C286 a_1035_n973# vdd 0.37fF
C287 w_2504_n978# vdd 0.07fF
C288 a_1443_n934# a_1440_n972# 0.10fF
C289 s2 gnd 0.16fF
C290 prop_1 prop_2 0.42fF
C291 w_2415_n978# a_2386_n1004# 0.13fF
C292 s3 gnd 0.16fF
C293 a_1172_n903# vdd 0.29fF
C294 b2 clk_org 0.21fF
C295 w_2351_n849# vdd 0.07fF
C296 pdr1 gen_2 0.11fF
C297 w_2248_n745# a_2261_n739# 0.09fF
C298 s1 clk_org 0.21fF
C299 a_2252_n1076# vdd 0.15fF
C300 a_2305_n739# vdd 0.37fF
C301 gen_2 a_1752_n1949# 0.05fF
C302 a_1038_n935# a_1035_n973# 0.10fF
C303 prop_1 a_1757_n1103# 0.45fF
C304 w_1367_n991# vdd 0.07fF
C305 carry_0 gen_3 0.09fF
C306 w_2609_n1136# clk_org 0.06fF
C307 a_1899_n1957# a_1899_n1965# 0.26fF
C308 a_1035_n973# gnd 0.18fF
C309 gen_4 a_1751_n1721# 0.05fF
C310 a_2827_n1435# q_c4 0.07fF
C311 a_2580_n1162# clk_org 0.41fF
C312 a_2745_n1435# a_2741_n1467# 0.26fF
C313 w_1166_n948# clk_org 0.06fF
C314 a_2305_n739# gnd 0.12fF
C315 iq_s2 gnd 0.10fF
C316 a_2233_n875# vdd 0.20fF
C317 a_2252_n1076# gnd 0.17fF
C318 q_a2 vdd 0.46fF
C319 prop_1 prop1_car0 0.26fF
C320 w_2070_n698# a_2083_n712# 0.03fF
C321 c1 gnd 0.21fF
C322 a_1635_n1023# vdd 0.37fF
C323 q_b4 q_b3 0.33fF
C324 q_b2 q_a3 0.36fF
C325 a_1758_n1235# vdd 0.93fF
C326 a_1638_n978# a_1635_n1023# 0.10fF
C327 w_1064_n1037# q_a4 0.05fF
C328 w_2081_n1002# s2 0.02fF
C329 a_1234_n973# clk_org 0.05fF
C330 a_931_n935# gnd 0.14fF
C331 q_a3 q_a1 0.36fF
C332 q_a2 q_b1 0.34fF
C333 a_2783_n1435# vdd 0.37fF
C334 prop_1 a_2122_n708# 0.12fF
C335 a_2083_n712# a_2083_n767# 0.08fF
C336 a_2233_n875# gnd 0.24fF
C337 w_1709_n1424# q_b3 0.23fF
C338 q_a2 gnd 0.35fF
C339 a_1718_n1107# vdd 0.15fF
C340 gen_3 a_1751_n1830# 0.05fF
C341 gen_2 gen_1 0.36fF
C342 w_1263_n916# vdd 0.08fF
C343 a2 clk_org 0.21fF
C344 a_1373_n902# vdd 0.29fF
C345 a_1338_n936# a_1338_n972# 0.51fF
C346 a_1635_n1023# gnd 0.12fF
C347 a_2219_n771# clk_org 0.41fF
C348 a_2090_n953# c1 0.06fF
C349 a_1237_n979# a_1234_n1024# 0.10fF
C350 w_2250_n1050# a_2256_n1037# 0.16fF
C351 s3 a_2259_n1001# 0.52fF
C352 w_2337_n745# vdd 0.07fF
C353 a_928_n937# a_928_n973# 0.51fF
C354 w_2770_n1441# vdd 0.07fF
C355 q_s3 vdd 0.29fF
C356 a_1946_n1889# gnd 0.14fF
C357 a_2442_n1159# prop_4 0.22fF
C358 a_2783_n1435# gnd 0.18fF
C359 q_b1 a_1718_n1107# 0.20fF
C360 w_2571_n1136# s4 0.06fF
C361 a_1718_n1107# gnd 0.17fF
C362 a_2442_n1159# vdd 0.15fF
C363 w_2132_n1041# prop_2 0.23fF
C364 a_2390_n972# a_2386_n1004# 0.26fF
C365 w_1745_n1241# vdd 0.12fF
C366 w_2109_n714# a_2083_n767# 0.06fF
C367 a_2259_n1001# a_2252_n1076# 0.08fF
C368 w_1705_n1093# a_1718_n1107# 0.03fF
C369 w_1469_n947# a_1440_n936# 0.13fF
C370 q_s3 gnd 0.14fF
C371 w_1469_n1036# a_1440_n1023# 0.06fF
C372 a_1751_n1721# vdd 0.44fF
C373 w_1664_n947# vdd 0.07fF
C374 w_2433_n1208# a_2439_n1195# 0.16fF
C375 pdr3 gnd 0.05fF
C376 a_2442_n1159# gnd 0.20fF
C377 w_957_n992# a_928_n973# 0.06fF
C378 a_1137_n937# a_1172_n903# 0.26fF
C379 w_2301_n1089# vdd 0.06fF
C380 a_1341_n934# gnd 0.14fF
C381 iq_c4 gnd 0.10fF
C382 w_2459_n978# a_2428_n972# 0.06fF
C383 a_2083_n767# s1 0.52fF
C384 a_1035_n937# clk_org 0.41fF
C385 a_1035_n1024# q_a4 0.07fF
C386 a_2622_n1130# vdd 0.37fF
C387 w_1064_n1037# a_1035_n1024# 0.06fF
C388 w_2306_n849# a_2275_n843# 0.06fF
C389 a_1035_n1024# clk_org 0.36fF
C390 a_1140_n979# gnd 0.14fF
C391 carry_0 prop_3 0.07fF
C392 w_1469_n915# clk_org 0.06fF
C393 w_957_n916# a_963_n903# 0.01fF
C394 a_1751_n1721# gnd 0.05fF
C395 gen_1 a_1756_n2057# 0.05fF
C396 w_1565_n1036# vdd 0.07fF
C397 a_2087_n989# vdd 0.93fF
C398 w_1469_n915# a2 0.06fF
C399 w_2262_n849# a_2275_n843# 0.09fF
C400 w_2571_n1136# a_2580_n1162# 0.25fF
C401 w_2653_n1136# a_2666_n1130# 0.09fF
C402 a_2622_n1130# gnd 0.18fF
C403 q_s3 iq_s3 0.07fF
C404 a_2584_n1130# a_2580_n1162# 0.26fF
C405 a_2666_n1130# q_s4 0.07fF
C406 w_2459_n978# vdd 0.07fF
C407 a_2299_n771# gnd 0.14fF
C408 w_1565_n1036# q_b1 0.05fF
C409 w_2377_n978# a_2386_n1004# 0.25fF
C410 a_1234_n937# vdd 0.20fF
C411 w_2306_n849# vdd 0.07fF
C412 w_1565_n947# a_1536_n936# 0.13fF
C413 a_2261_n739# vdd 0.37fF
C414 w_1263_n992# vdd 0.07fF
C415 pdr4 gnd 0.05fF
C416 prop_1 a_1718_n1107# 0.06fF
C417 w_1565_n947# a_1536_n972# 0.09fF
C418 w_2571_n1136# clk_org 0.06fF
C419 w_2262_n849# vdd 0.07fF
C420 pdr1 clock_car0 1.03fF
C421 a_1234_n937# gnd 0.24fF
C422 w_1064_n948# clk_org 0.06fF
C423 a_1269_n903# vdd 0.29fF
C424 w_1166_n948# a_1137_n973# 0.09fF
C425 a_931_n935# a_928_n973# 0.10fF
C426 a_2261_n739# gnd 0.18fF
C427 a_2237_n843# vdd 0.29fF
C428 a_2466_n1004# gnd 0.14fF
C429 carry_0 gen_4 0.09fF
C430 a_2090_n953# vdd 0.15fF
C431 gen_4 gen_3 1.07fF
C432 prop1_car0 gen_2 0.11fF
C433 w_2250_n1050# c2 0.06fF
C434 q_a1 a_1756_n2057# 0.20fF
C435 w_1565_n915# b1 0.06fF
C436 a_2428_n972# a_2386_n1004# 0.51fF
C437 a_928_n937# a_963_n903# 0.26fF
C438 a_1536_n1023# vdd 0.37fF
C439 a_1719_n1239# vdd 0.15fF
C440 w_2301_n1089# a_2259_n1001# 0.03fF
C441 q_b3 vdd 0.45fF
C442 q_s4 iq_s4 0.07fF
C443 vdd a_1896_n1885# 0.37fF
C444 a_1896_n1840# a_1946_n1889# 0.10fF
C445 w_2081_n1002# a_2087_n989# 0.16fF
C446 a_1137_n973# clk_org 0.05fF
C447 w_1748_n1385# q_b3 0.06fF
C448 a_2090_n953# gnd 0.20fF
C449 w_1166_n916# vdd 0.08fF
C450 pdr2 gen_2 0.02fF
C451 w_957_n916# clk_org 0.06fF
C452 a_2827_n1435# a_2821_n1467# 0.10fF
C453 pdr1 gen_1 0.02fF
C454 a_1440_n936# vdd 0.20fF
C455 q_b2 q_a4 0.36fF
C456 a_1338_n936# clk_org 0.41fF
C457 pdr3 gen_3 0.02fF
C458 w_1664_n947# a_1635_n936# 0.13fF
C459 a_1536_n1023# q_b1 0.07fF
C460 a_1536_n1023# gnd 0.12fF
C461 s3 a_2256_n1037# 0.45fF
C462 w_2292_n745# vdd 0.07fF
C463 w_1367_n991# a_1338_n972# 0.06fF
C464 q_a3 q_a2 0.36fF
C465 a_1719_n1239# gnd 0.17fF
C466 q_a4 q_a1 0.36fF
C467 q_b3 q_b1 0.34fF
C468 q_b3 gnd 0.25fF
C469 w_1367_n915# b2 0.06fF
C470 w_2732_n1441# vdd 0.08fF
C471 a_2442_n1159# a_2435_n1234# 0.08fF
C472 a_2386_n1004# vdd 0.20fF
C473 q_b4 a_1729_n1563# 0.22fF
C474 a_2439_n1195# prop_4 0.12fF
C475 a_1896_n1885# gnd 0.18fF
C476 iq_s3 gnd 0.10fF
C477 w_2077_n1041# a_2083_n1028# 0.03fF
C478 vdd iq_s2 0.25fF
C479 a_2223_n739# a_2219_n771# 0.26fF
C480 a_2305_n739# q_s1 0.07fF
C481 a_2439_n1195# vdd 0.93fF
C482 a_1440_n936# gnd 0.24fF
C483 vdd c1 0.48fF
C484 w_1064_n948# a_1035_n937# 0.13fF
C485 w_1706_n1225# vdd 0.09fF
C486 w_1664_n915# a1 0.06fF
C487 w_2109_n714# a_2122_n708# 0.16fF
C488 w_1893_n1940# a_1896_n1885# 0.09fF
C489 a_2386_n1004# gnd 0.24fF
C490 w_1565_n947# vdd 0.07fF
C491 w_2246_n1089# vdd 0.09fF
C492 clk_org a_1899_n1957# 0.41fF
C493 a_2666_n1130# a_2660_n1162# 0.10fF
C494 a_1237_n935# gnd 0.14fF
C495 carry_0 prop_4 0.09fF
C496 a_2827_n1435# clk_org 0.36fF
C497 w_2415_n978# a_2428_n972# 0.09fF
C498 w_2081_n1002# a_2090_n953# 0.06fF
C499 a_2122_n708# s1 0.45fF
C500 carry_0 vdd 0.40fF
C501 a_1038_n979# gnd 0.14fF
C502 w_1664_n991# a_1635_n1023# 0.09fF
C503 a_928_n1024# clk_org 0.36fF
C504 gen_3 vdd 0.28fF
C505 a_1475_n902# vdd 0.29fF
C506 w_1367_n915# clk_org 0.06fF
C507 b1 clk_org 0.21fF
C508 a_1440_n936# a_1440_n972# 0.51fF
C509 w_1064_n916# a4 0.06fF
C510 a_2428_n972# a_2422_n1004# 0.10fF
C511 w_2224_n849# clk_org 0.06fF
C512 w_1469_n1036# vdd 0.07fF
C513 a_1635_n972# vdd 0.37fF
C514 q_c4 gnd 0.05fF
C515 a_928_n937# clk_org 0.41fF
C516 w_1263_n992# a_1234_n1024# 0.09fF
C517 q_s1 iq_s1 0.07fF
C518 q_a1 a_1718_n1162# 0.06fF
C519 w_2337_n745# q_s1 0.05fF
C520 w_2653_n1136# a_2622_n1130# 0.06fF
C521 carry_0 gnd 0.35fF
C522 w_2571_n1136# a_2584_n1130# 0.01fF
C523 gen_3 gnd 0.14fF
C524 w_2415_n978# vdd 0.07fF
C525 w_2429_n1247# c3 0.06fF
C526 a_1341_n934# a_1338_n972# 0.10fF
C527 a_2255_n771# gnd 0.14fF
C528 a_1635_n972# gnd 0.18fF
C529 w_2377_n978# a_2390_n972# 0.01fF
C530 vdd pdr3 0.68fF
C531 prop_2 pdr1 0.26fF
C532 a_931_n979# a_928_n1024# 0.10fF
C533 vdd iq_c4 0.25fF
C534 a_1751_n1830# vdd 0.44fF
C535 w_1166_n992# vdd 0.07fF
C536 w_1166_n916# a_1137_n937# 0.25fF
C537 w_1064_n916# a_1070_n903# 0.01fF
C538 prop_3 pdr3 0.02fF
C539 c2 pdr2 0.07fF
C540 clock_in clk_org 0.08fF
C541 a_2783_n1435# a_2741_n1467# 0.51fF
C542 a_2666_n1130# clk_org 0.36fF
C543 a_1670_n902# vdd 0.29fF
C544 a_1536_n936# a_1536_n972# 0.51fF
C545 a_2319_n843# vdd 0.37fF
C546 s2 clk_org 0.21fF
C547 a_2422_n1004# gnd 0.14fF
C548 a_1751_n1830# gnd 0.05fF
C549 a_2472_n972# vdd 0.37fF
C550 s3 clk_org 0.21fF
C551 pdr1 prop1_car0 1.06fF
C552 q_s4 gnd 0.05fF
C553 w_1263_n948# a_1234_n937# 0.13fF
C554 a_1440_n1023# vdd 0.37fF
C555 w_2859_n1441# a_2827_n1435# 0.06fF
C556 w_2770_n1441# a_2741_n1467# 0.13fF
C557 a_1539_n978# a_1536_n1023# 0.10fF
C558 q_b3 a_1722_n1438# 0.22fF
C559 s4 a_2442_n1159# 0.52fF
C560 a_1035_n973# clk_org 0.05fF
C561 prop1_car0 clock_car0 1.03fF
C562 w_1716_n1549# q_b4 0.23fF
C563 a_2319_n843# gnd 0.12fF
C564 a_2472_n972# gnd 0.12fF
C565 vdd pdr4 0.68fF
C566 w_1064_n916# vdd 0.08fF
C567 a_2305_n739# clk_org 0.36fF
C568 q_b4 vdd 0.45fF
C569 a_1440_n1023# gnd 0.12fF
C570 pdr1 pdr2 1.07fF
C571 w_1716_n1549# a_1729_n1563# 0.03fF
C572 a_1140_n979# a_1137_n1024# 0.10fF
C573 w_2248_n745# vdd 0.07fF
C574 prop_3 prop_4 0.92fF
C575 c4 gnd 0.21fF
C576 a_2252_n1076# c2 0.27fF
C577 carry_0 prop_1 0.17fF
C578 pdr1 clock_in 0.14fF
C579 prop_4 a_1729_n1563# 0.52fF
C580 prop_3 vdd 0.10fF
C581 q_b4 a_1768_n1504# 0.12fF
C582 w_1709_n1424# vdd 0.06fF
C583 a_2390_n972# vdd 0.29fF
C584 w_2132_n1041# a_2090_n953# 0.03fF
C585 a_1729_n1563# vdd 0.15fF
C586 w_1748_n1385# prop_3 0.02fF
C587 pdr2 clock_car0 1.03fF
C588 pdr3 gen_4 0.10fF
C589 a_1536_n936# a_1571_n902# 0.26fF
C590 w_1705_n1148# a_1718_n1162# 0.03fF
C591 q_s1 gnd 0.05fF
C592 w_1893_n1978# cin 0.06fF
C593 a_1635_n936# a_1635_n972# 0.51fF
C594 q_a4 q_a2 0.36fF
C595 q_b3 q_a3 11.56fF
C596 clock_in clock_car0 0.08fF
C597 q_b4 q_b1 0.30fF
C598 w_2433_n1208# prop_4 0.06fF
C599 w_2484_n1247# a_2442_n1159# 0.03fF
C600 q_b2 q_a1 0.36fF
C601 a_2233_n875# clk_org 0.41fF
C602 q_b4 gnd 0.30fF
C603 w_2433_n1208# vdd 0.12fF
C604 prop1_car0 gen_1 0.10fF
C605 prop_3 gnd 0.27fF
C606 w_1893_n1896# a_1896_n1885# 0.06fF
C607 a_1635_n1023# clk_org 0.36fF
C608 c1 vdd 0.11fF
C609 w_1367_n1036# a_1338_n1023# 0.06fF
C610 a_1729_n1563# gnd 0.20fF
C611 w_1469_n947# vdd 0.07fF
C612 w_1166_n1037# q_b3 0.05fF
C613 w_1744_n1109# vdd 0.12fF
C614 a_1140_n935# gnd 0.14fF
C615 a_2783_n1435# clk_org 0.05fF
C616 a_1035_n937# a_1035_n973# 0.51fF
C617 carry_0 a_1896_n1840# 0.07fF
C618 w_1893_n1978# vdd 0.08fF
C619 w_957_n1037# a_928_n1024# 0.06fF
C620 q_b2 a_1719_n1294# 0.22fF
C621 a_1536_n936# vdd 0.20fF
C622 w_1263_n916# clk_org 0.06fF
C623 vdd iq_s3 0.25fF
C624 c1 gnd 0.22fF
C625 a_1536_n972# vdd 0.37fF
C626 w_1367_n1036# vdd 0.07fF
C627 w_1744_n1109# q_b1 0.06fF
C628 w_1367_n915# a_1338_n936# 0.25fF
C629 w_2770_n1441# clk_org 0.06fF
C630 w_2732_n1441# c4 0.06fF
C631 gen_4 vdd 0.28fF
C632 a_1635_n936# a_1670_n902# 0.26fF
C633 pdr4 gen_4 0.02fF
C634 w_2609_n1136# a_2622_n1130# 0.09fF
C635 w_957_n916# a_928_n937# 0.25fF
C636 a_2083_n1028# prop_2 0.20fF
C637 a_2622_n1130# a_2580_n1162# 0.51fF
C638 a_1536_n936# gnd 0.24fF
C639 w_2377_n978# vdd 0.08fF
C640 q_a2 a_1752_n1949# 0.20fF
C641 a_1536_n972# gnd 0.18fF
C642 prop_2 a_1719_n1294# 0.52fF
C643 w_1664_n915# a_1670_n902# 0.01fF
C644 q_a4 a_1751_n1721# 0.20fF
C645 prop_4 pdr3 0.26fF
C646 gen_4 gnd 0.14fF
C647 w_1064_n992# vdd 0.07fF
C648 w_1664_n947# clk_org 0.06fF
C649 a_2259_n1001# prop_3 0.22fF
C650 w_1469_n947# a_1440_n972# 0.09fF
C651 pdr3 pdr4 1.05fF
C652 w_1706_n1280# q_b2 0.23fF
C653 a_1896_n1885# a_1946_n1933# 0.10fF
C654 w_2250_n1050# s3 0.02fF
C655 a_1070_n903# vdd 0.29fF
C656 b3 clk_org 0.21fF
C657 a_2622_n1130# clk_org 0.05fF
C658 a_1137_n1024# q_b3 0.07fF
C659 w_2081_n1002# c1 0.06fF
C660 vdd q_c4 0.06fF
C661 a_1718_n1107# a_1718_n1162# 0.08fF
C662 a_1571_n902# vdd 0.29fF
C663 a1 clk_org 0.21fF
C664 w_1064_n948# a_1035_n973# 0.09fF
C665 a_2275_n843# vdd 0.37fF
C666 prop_2 prop1_car0 0.10fF
C667 a_2428_n972# vdd 0.37fF
C668 a_1338_n1023# vdd 0.37fF
C669 w_2814_n1441# a_2827_n1435# 0.09fF
C670 w_2732_n1441# a_2741_n1467# 0.25fF
C671 w_957_n948# vdd 0.07fF
C672 w_2250_n1050# a_2252_n1076# 0.06fF
C673 s4 a_2439_n1195# 0.45fF
C674 q_b3 a_1761_n1379# 0.12fF
C675 w_1706_n1280# a_1719_n1294# 0.03fF
C676 w_1664_n991# a_1635_n972# 0.06fF
C677 w_1755_n1510# q_b4 0.06fF
C678 a_2275_n843# gnd 0.18fF
C679 w_1664_n1036# q_a1 0.05fF
C680 w_1716_n1549# vdd 0.06fF
C681 a_2428_n972# gnd 0.18fF
C682 prop_2 pdr2 0.02fF
C683 a_1234_n937# clk_org 0.41fF
C684 prop_4 vdd 0.10fF
C685 a_1234_n937# a_1234_n973# 0.51fF
C686 a_2783_n1435# a_2777_n1467# 0.10fF
C687 a_2261_n739# clk_org 0.05fF
C688 w_1744_n1109# prop_1 0.02fF
C689 a_1338_n1023# gnd 0.12fF
C690 prop_4 pdr4 0.02fF
C691 w_2210_n745# vdd 0.08fF
C692 w_1755_n1510# a_1729_n1563# 0.06fF
C693 gnd clk_org 0.05fF
C694 prop_2 clock_in 0.09fF
C695 w_1263_n992# a_1234_n973# 0.06fF
C696 carry_0 a_2083_n712# 0.27fF
C697 prop_4 a_1768_n1504# 0.45fF
C698 s2 a_2083_n1028# 0.06fF
C699 c2 gnd 0.21fF
C700 q_b4 a_1729_n1508# 0.20fF
C701 w_1748_n1385# vdd 0.12fF
C702 carry_0 gen_2 0.10fF
C703 prop_3 a_1722_n1438# 0.52fF
C704 w_1709_n1424# a_1722_n1438# 0.03fF
C705 w_957_n992# a_928_n1024# 0.09fF
C706 a_1768_n1504# vdd 0.93fF
C707 a_2261_n739# a_2219_n771# 0.51fF
C708 gen_3 gen_2 0.95fF
C709 w_2262_n849# clk_org 0.06fF
C710 w_1893_n1978# a_1899_n1965# 0.01fF
C711 vdd q_s4 0.06fF
C712 a_1729_n1508# a_1729_n1563# 0.08fF
C713 w_2433_n1208# a_2435_n1234# 0.06fF
C714 prop_4 gnd 0.27fF
C715 q_b1 vdd 0.45fF
C716 w_2698_n1136# vdd 0.07fF
C717 vdd gnd 2.00fF
C718 a_1536_n1023# clk_org 0.36fF
C719 w_2351_n849# q_s2 0.05fF
C720 a_1638_n978# gnd 0.14fF
C721 w_1367_n947# vdd 0.07fF
C722 q_a4 q_b3 0.36fF
C723 q_b2 q_a2 11.57fF
C724 w_2224_n849# s2 0.06fF
C725 q_b4 q_a3 0.33fF
C726 a_2319_n843# a_2313_n875# 0.10fF
C727 a_2622_n1130# a_2616_n1162# 0.10fF
C728 clk_org a_1896_n1885# 0.05fF
C729 w_1705_n1093# vdd 0.09fF
C730 a_1038_n935# gnd 0.14fF
C731 q_a2 q_a1 0.36fF
C732 w_2109_n714# carry_0 0.06fF
C733 q_b1 gnd 0.30fF
C734 w_1893_n1940# vdd 0.07fF
C735 vdd c4 0.48fF
C736 w_1565_n991# a_1536_n1023# 0.09fF
C737 q_b2 a_1758_n1235# 0.12fF
C738 w_1166_n916# clk_org 0.06fF
C739 a_1440_n936# clk_org 0.41fF
C740 pdr1 gnd 0.05fF
C741 a_1635_n1023# q_a1 0.07fF
C742 a_1440_n972# vdd 0.37fF
C743 w_1263_n1037# vdd 0.07fF
C744 a_1638_n934# a_1635_n972# 0.10fF
C745 vdd q_s1 0.06fF
C746 pdr2 clock_in 0.20fF
C747 a_1338_n936# a_1373_n902# 0.26fF
C748 w_2732_n1441# clk_org 0.06fF
C749 a_2386_n1004# clk_org 0.41fF
C750 a_2442_n1159# c3 0.06fF
C751 w_1166_n992# a_1137_n1024# 0.09fF
C752 clock_car0 gnd 1.03fF
C753 q_a1 a_1718_n1107# 0.27fF
C754 q_c4 iq_c4 0.07fF
C755 q_a2 a_1719_n1294# 0.06fF
C756 w_2081_n1002# vdd 0.12fF
C757 a_1237_n935# a_1234_n973# 0.10fF
C758 a_1440_n972# gnd 0.18fF
C759 prop_2 a_1758_n1235# 0.45fF
C760 a_2259_n1001# vdd 0.15fF
C761 w_1565_n947# clk_org 0.06fF
C762 w_1893_n1851# carry_0 0.05fF
C763 a_2256_n1037# prop_3 0.12fF
C764 w_2224_n849# a_2233_n875# 0.25fF
C765 w_1745_n1241# q_b2 0.06fF
C766 a_1137_n937# vdd 0.20fF
C767 prop_1 vdd 0.10fF
C768 w_2246_n1089# c2 0.06fF
C769 a_1635_n936# vdd 0.20fF
C770 a_2259_n1001# gnd 0.20fF
C771 vdd a_1899_n1965# 0.29fF
C772 a_1635_n972# clk_org 0.05fF
C773 q_c4 vdd 0.29fF
C774 w_1367_n915# a_1373_n902# 0.01fF
C775 w_1469_n915# a_1440_n936# 0.25fF
C776 a_1234_n1024# vdd 0.37fF
C777 w_2732_n1441# a_2745_n1435# 0.01fF
C778 w_2814_n1441# a_2783_n1435# 0.06fF
C779 a_1137_n937# gnd 0.24fF
C780 w_1664_n915# vdd 0.08fF
C781 w_957_n948# a_928_n973# 0.09fF
C782 prop_1 gnd 0.27fF
C783 w_1745_n1241# prop_2 0.02fF
C784 a_1443_n978# a_1440_n1023# 0.10fF
C785 s3 a_2252_n1076# 0.06fF
C786 q_b3 a_1722_n1383# 0.20fF
C787 w_2415_n978# clk_org 0.06fF
C788 a_1635_n936# gnd 0.24fF
C789 w_1745_n1241# a_1719_n1294# 0.06fF
C790 w_1755_n1510# prop_4 0.02fF
C791 w_1755_n1510# vdd 0.12fF
C792 a_2435_n1234# prop_4 0.20fF
C793 q_c4 gnd 0.14fF
C794 w_2433_n1208# s4 0.02fF
C795 a_2435_n1234# vdd 0.15fF
C796 c3 gnd 0.21fF
C797 a_1234_n1024# gnd 0.12fF
C798 a_1038_n979# a_1035_n1024# 0.10fF
C799 w_1755_n1510# a_1768_n1504# 0.16fF
C800 w_2070_n753# vdd 0.06fF
C801 a_1896_n1840# vdd 0.37fF
C802 a_928_n973# vdd 0.37fF
C803 a_1722_n1438# vdd 0.15fF
C804 prop_4 a_1729_n1508# 0.06fF
C805 w_1709_n1369# vdd 0.09fF
C806 prop_3 a_1761_n1379# 0.45fF
C807 a_1729_n1508# vdd 0.15fF
C808 w_1748_n1385# a_1722_n1438# 0.06fF
C809 a3 clk_org 0.21fF
C810 pdr1 gen_3 0.10fF
C811 a_2087_n989# prop_2 0.12fF
C812 w_1664_n1036# a_1635_n1023# 0.06fF
C813 a_2435_n1234# gnd 0.17fF
C814 a_2319_n843# clk_org 0.36fF
C815 a_1896_n1840# gnd 0.12fF
C816 w_2653_n1136# vdd 0.07fF
C817 a_2472_n972# clk_org 0.36fF
C818 a_928_n973# gnd 0.18fF
C819 a_1722_n1438# gnd 0.20fF
C820 q_s4 vdd 0.29fF
C821 w_1469_n915# a_1475_n902# 0.01fF
C822 w_1565_n915# a_1536_n936# 0.25fF
C823 a_1539_n978# gnd 0.14fF
C824 a_1440_n1023# clk_org 0.36fF
C825 w_1263_n1037# a_1234_n1024# 0.06fF
C826 a_1729_n1508# gnd 0.17fF
C827 w_1263_n948# vdd 0.07fF
C828 q_s2 gnd 0.05fF
C829 q_a3 vdd 0.46fF
C830 w_2132_n1041# vdd 0.06fF
C831 w_1748_n1385# q_a3 0.06fF
C832 w_2070_n698# carry_0 0.06fF
C833 vdd clk_org 0.06fF
C834 w_1893_n1896# vdd 0.07fF
C835 q_b2 a_1719_n1239# 0.20fF
C836 q_b2 q_b3 0.36fF
C837 q_s4 gnd 0.14fF
C838 vdd c2 0.48fF
C839 w_1064_n916# clk_org 0.06fF
C840 q_b4 q_a4 11.52fF
C841 w_2698_n1136# q_s4 0.05fF
C842 w_2248_n745# clk_org 0.06fF
C843 a_1338_n972# vdd 0.37fF
C844 w_1166_n1037# vdd 0.07fF
C845 q_b3 q_a1 0.36fF
C846 carry_0 a_2083_n767# 0.06fF
C847 q_a3 q_b1 0.34fF
C848 q_a3 gnd 0.41fF
C849 pdr4 c4 0.07fF
C850 q_a4 a_1729_n1563# 0.06fF
C851 carry_0 gen_1 0.09fF
C852 w_2504_n978# q_s3 0.05fF
C853 a_2090_n953# a_2083_n1028# 0.08fF
C854 prop_3 c2 0.09fF
C855 w_2248_n745# a_2219_n771# 0.13fF
C856 w_2337_n745# a_2305_n739# 0.06fF
C857 q_s1 vdd 0.29fF
C858 w_2077_n1041# c1 0.06fF
C859 a_2090_n953# prop_2 0.22fF
C860 w_1664_n991# vdd 0.07fF
C861 a_1338_n972# gnd 0.18fF
C862 prop_2 a_1719_n1239# 0.06fF
C863 w_1565_n915# a_1571_n902# 0.01fF
C864 w_1664_n915# a_1635_n936# 0.25fF
C865 a_1719_n1239# a_1719_n1294# 0.08fF
C866 a_2256_n1037# vdd 0.93fF
C867 w_1469_n947# clk_org 0.06fF
C868 w_2224_n849# a_2237_n843# 0.01fF
C869 w_1367_n947# a_1338_n972# 0.09fF
C870 q_s1 gnd 0.14fF
C871 s2 a_2087_n989# 0.45fF
C872 w_1263_n1037# q_a3 0.05fF
C873 a_1896_n1885# a_1899_n1957# 0.51fF
C874 vdd pdr1 0.68fF
C875 a_2313_n875# gnd 0.14fF
C876 w_2070_n753# prop_1 0.23fF
C877 w_1893_n1978# clk_org 0.06fF
C878 a_2083_n712# vdd 0.15fF
C879 gen_2 vdd 0.28fF
C880 a_1536_n936# clk_org 0.41fF
C881 pdr2 gnd 0.05fF
C882 w_1064_n916# a_1035_n937# 0.25fF
C883 prop_3 pdr1 0.09fF
C884 a_1536_n972# clk_org 0.05fF
C885 clock_in gnd 0.21fF
C886 a_2741_n1467# vdd 0.20fF
C887 a4 clk_org 0.21fF
C888 a_963_n903# vdd 0.29fF
C889 w_1745_n1241# q_a2 0.06fF
C890 a_1137_n1024# vdd 0.37fF
C891 w_2770_n1441# a_2783_n1435# 0.09fF
C892 a_2305_n739# a_2299_n771# 0.10fF
C893 w_1565_n915# vdd 0.08fF
C894 gnd Gnd 10.08fF
C895 a_1756_n2057# Gnd 0.29fF
C896 cin Gnd 0.22fF
C897 a_1899_n1965# Gnd 0.00fF
C898 a_1946_n1933# Gnd 0.01fF
C899 a_1752_n1949# Gnd 0.29fF
C900 a_1899_n1957# Gnd 1.19fF
C901 a_1946_n1889# Gnd 0.01fF
C902 a_1896_n1885# Gnd 0.48fF
C903 clk_org Gnd 36.89fF
C904 vdd Gnd 17.58fF
C905 a_1896_n1840# Gnd 0.44fF
C906 gnd Gnd 0.95fF
C907 a_1751_n1830# Gnd 0.29fF
C908 gen_1 Gnd 0.06fF
C909 a_1751_n1721# Gnd 0.29fF
C910 gen_2 Gnd 0.06fF
C911 gen_3 Gnd 0.04fF
C912 clock_car0 Gnd 3.27fF
C913 gen_4 Gnd 0.05fF
C914 prop1_car0 Gnd 0.73fF
C915 a_1729_n1563# Gnd 0.23fF
C916 a_1768_n1504# Gnd 0.01fF
C917 a_1729_n1508# Gnd 0.13fF
C918 a_2821_n1467# Gnd 0.01fF
C919 a_2777_n1467# Gnd 0.01fF
C920 iq_c4 Gnd 0.07fF
C921 clock_in Gnd 3.32fF
C922 q_c4 Gnd 0.34fF
C923 a_2741_n1467# Gnd 0.02fF
C924 a_2827_n1435# Gnd 0.44fF
C925 a_2783_n1435# Gnd 0.48fF
C926 c4 Gnd 0.06fF
C927 pdr4 Gnd 1.31fF
C928 a_1722_n1438# Gnd 0.49fF
C929 a_1761_n1379# Gnd 0.06fF
C930 a_1722_n1383# Gnd 0.39fF
C931 pdr3 Gnd 2.39fF
C932 pdr2 Gnd 2.36fF
C933 pdr1 Gnd 2.51fF
C934 a_1719_n1294# Gnd 0.49fF
C935 a_1758_n1235# Gnd 0.06fF
C936 a_1719_n1239# Gnd 0.49fF
C937 c3 Gnd 1.35fF
C938 prop_4 Gnd 0.05fF
C939 a_2435_n1234# Gnd 0.05fF
C940 a_2660_n1162# Gnd 0.01fF
C941 a_2616_n1162# Gnd 0.01fF
C942 a_2442_n1159# Gnd 0.49fF
C943 a_2439_n1195# Gnd 0.06fF
C944 iq_s4 Gnd 0.05fF
C945 q_s4 Gnd 0.52fF
C946 a_2580_n1162# Gnd 0.02fF
C947 a_2666_n1130# Gnd 0.44fF
C948 a_2622_n1130# Gnd 0.48fF
C949 s4 Gnd 0.73fF
C950 a_1718_n1162# Gnd 0.46fF
C951 a_1757_n1103# Gnd 0.06fF
C952 a_1718_n1107# Gnd 0.05fF
C953 c2 Gnd 1.80fF
C954 prop_3 Gnd 14.96fF
C955 q_a1 Gnd 17.57fF
C956 q_b1 Gnd 17.62fF
C957 q_a2 Gnd 17.56fF
C958 q_a3 Gnd 17.52fF
C959 q_b3 Gnd 17.57fF
C960 q_a4 Gnd 17.55fF
C961 q_b4 Gnd 17.85fF
C962 q_b2 Gnd 17.58fF
C963 a_2252_n1076# Gnd 0.05fF
C964 a_2466_n1004# Gnd 0.01fF
C965 a_2422_n1004# Gnd 0.01fF
C966 a_2259_n1001# Gnd 0.49fF
C967 a_2256_n1037# Gnd 0.06fF
C968 c1 Gnd 0.08fF
C969 prop_2 Gnd 0.41fF
C970 a_1635_n1023# Gnd 0.44fF
C971 a_1536_n1023# Gnd 0.44fF
C972 a_1440_n1023# Gnd 0.44fF
C973 a_1338_n1023# Gnd 0.44fF
C974 a_1234_n1024# Gnd 0.44fF
C975 a_1137_n1024# Gnd 0.44fF
C976 a_1035_n1024# Gnd 0.44fF
C977 a_928_n1024# Gnd 0.44fF
C978 iq_s3 Gnd 0.06fF
C979 q_s3 Gnd 0.53fF
C980 a_2386_n1004# Gnd 0.04fF
C981 a_1638_n978# Gnd 0.01fF
C982 a_1539_n978# Gnd 0.01fF
C983 a_1443_n978# Gnd 0.01fF
C984 a_1341_n978# Gnd 0.01fF
C985 a_1237_n979# Gnd 0.01fF
C986 a_1140_n979# Gnd 0.01fF
C987 a_1038_n979# Gnd 0.01fF
C988 a_931_n979# Gnd 0.01fF
C989 a_2083_n1028# Gnd 0.01fF
C990 a_2090_n953# Gnd 0.49fF
C991 a_2472_n972# Gnd 0.44fF
C992 a_2428_n972# Gnd 0.48fF
C993 s3 Gnd 0.69fF
C994 a_2087_n989# Gnd 0.06fF
C995 a_1635_n972# Gnd 0.48fF
C996 a_1536_n972# Gnd 0.48fF
C997 a_1440_n972# Gnd 0.48fF
C998 a_1338_n972# Gnd 0.48fF
C999 a_1234_n973# Gnd 0.48fF
C1000 a_1137_n973# Gnd 0.48fF
C1001 a_1035_n973# Gnd 0.48fF
C1002 a_928_n973# Gnd 0.48fF
C1003 a_1638_n934# Gnd 0.01fF
C1004 a_1539_n934# Gnd 0.01fF
C1005 a_1443_n934# Gnd 0.01fF
C1006 a_1341_n934# Gnd 0.01fF
C1007 a_1237_n935# Gnd 0.01fF
C1008 a_1140_n935# Gnd 0.01fF
C1009 a_1038_n935# Gnd 0.01fF
C1010 a_931_n935# Gnd 0.01fF
C1011 a_1269_n903# Gnd 0.00fF
C1012 a_1670_n902# Gnd 0.00fF
C1013 a_1571_n902# Gnd 0.00fF
C1014 a_1635_n936# Gnd 1.20fF
C1015 a1 Gnd 0.22fF
C1016 a_1475_n902# Gnd 0.00fF
C1017 a_1536_n936# Gnd 1.20fF
C1018 b1 Gnd 0.22fF
C1019 a_1373_n902# Gnd 0.00fF
C1020 a_1440_n936# Gnd 1.20fF
C1021 a2 Gnd 0.22fF
C1022 a_1338_n936# Gnd 1.20fF
C1023 a_1172_n903# Gnd 0.00fF
C1024 a_1234_n937# Gnd 1.20fF
C1025 b2 Gnd 0.22fF
C1026 a3 Gnd 0.22fF
C1027 a_1070_n903# Gnd 0.00fF
C1028 a_1137_n937# Gnd 1.20fF
C1029 b3 Gnd 0.22fF
C1030 a_963_n903# Gnd 0.00fF
C1031 a_1035_n937# Gnd 1.20fF
C1032 a4 Gnd 0.22fF
C1033 a_928_n937# Gnd 1.20fF
C1034 b4 Gnd 0.22fF
C1035 a_2313_n875# Gnd 0.01fF
C1036 a_2269_n875# Gnd 0.01fF
C1037 iq_s2 Gnd 0.06fF
C1038 q_s2 Gnd 0.50fF
C1039 a_2233_n875# Gnd 0.02fF
C1040 a_2319_n843# Gnd 0.44fF
C1041 a_2275_n843# Gnd 0.48fF
C1042 s2 Gnd 1.01fF
C1043 a_2299_n771# Gnd 0.01fF
C1044 a_2255_n771# Gnd 0.01fF
C1045 iq_s1 Gnd 0.05fF
C1046 q_s1 Gnd 0.53fF
C1047 a_2219_n771# Gnd 1.20fF
C1048 a_2305_n739# Gnd 0.44fF
C1049 a_2261_n739# Gnd 0.48fF
C1050 s1 Gnd 0.61fF
C1051 a_2083_n767# Gnd 0.05fF
C1052 a_2122_n708# Gnd 0.06fF
C1053 prop_1 Gnd 0.21fF
C1054 a_2083_n712# Gnd 0.49fF
C1055 carry_0 Gnd 5.83fF
C1056 w_1893_n1978# Gnd 1.19fF
C1057 w_1893_n1940# Gnd 0.97fF
C1058 w_1893_n1896# Gnd 0.97fF
C1059 w_1893_n1851# Gnd 0.97fF
C1060 vdd Gnd 17.02fF
C1061 w_1716_n1549# Gnd 0.58fF
C1062 w_1755_n1510# Gnd 0.90fF
C1063 w_1716_n1494# Gnd 0.58fF
C1064 w_2859_n1441# Gnd 0.97fF
C1065 w_2814_n1441# Gnd 0.97fF
C1066 w_2770_n1441# Gnd 0.97fF
C1067 w_2732_n1441# Gnd 1.19fF
C1068 w_1709_n1424# Gnd 0.58fF
C1069 w_1748_n1385# Gnd 2.28fF
C1070 w_1709_n1369# Gnd 0.58fF
C1071 w_2484_n1247# Gnd 0.41fF
C1072 w_2429_n1247# Gnd 0.41fF
C1073 w_1706_n1280# Gnd 0.58fF
C1074 w_1745_n1241# Gnd 2.28fF
C1075 w_1706_n1225# Gnd 0.58fF
C1076 w_2433_n1208# Gnd 2.28fF
C1077 w_2698_n1136# Gnd 0.97fF
C1078 w_2653_n1136# Gnd 0.97fF
C1079 w_2609_n1136# Gnd 0.97fF
C1080 w_2571_n1136# Gnd 1.19fF
C1081 w_1705_n1148# Gnd 0.58fF
C1082 w_2301_n1089# Gnd 0.58fF
C1083 w_2246_n1089# Gnd 0.41fF
C1084 w_1744_n1109# Gnd 2.28fF
C1085 w_1705_n1093# Gnd 0.29fF
C1086 w_2132_n1041# Gnd 0.53fF
C1087 w_2077_n1041# Gnd 0.36fF
C1088 w_2250_n1050# Gnd 2.28fF
C1089 w_1664_n1036# Gnd 0.04fF
C1090 w_1565_n1036# Gnd 0.97fF
C1091 w_1469_n1036# Gnd 0.97fF
C1092 w_1367_n1036# Gnd 0.97fF
C1093 w_1263_n1037# Gnd 0.97fF
C1094 w_1166_n1037# Gnd 0.97fF
C1095 w_1064_n1037# Gnd 0.97fF
C1096 w_957_n1037# Gnd 0.97fF
C1097 w_2504_n978# Gnd 0.97fF
C1098 w_2459_n978# Gnd 0.97fF
C1099 w_2415_n978# Gnd 0.97fF
C1100 w_2377_n978# Gnd 0.67fF
C1101 w_2081_n1002# Gnd 2.28fF
C1102 w_1664_n991# Gnd 0.97fF
C1103 w_1565_n991# Gnd 0.97fF
C1104 w_1469_n991# Gnd 0.97fF
C1105 w_1367_n991# Gnd 0.97fF
C1106 w_1263_n992# Gnd 0.97fF
C1107 w_1166_n992# Gnd 0.97fF
C1108 w_1064_n992# Gnd 0.97fF
C1109 w_957_n992# Gnd 0.97fF
C1110 w_1664_n947# Gnd 0.97fF
C1111 w_1565_n947# Gnd 0.97fF
C1112 w_1469_n947# Gnd 0.97fF
C1113 w_1367_n947# Gnd 0.97fF
C1114 w_1263_n948# Gnd 0.97fF
C1115 w_1166_n948# Gnd 0.97fF
C1116 w_1064_n948# Gnd 0.97fF
C1117 w_957_n948# Gnd 0.97fF
C1118 w_1664_n915# Gnd 1.19fF
C1119 w_1565_n915# Gnd 1.19fF
C1120 w_1469_n915# Gnd 1.19fF
C1121 w_1367_n915# Gnd 1.19fF
C1122 w_1263_n916# Gnd 1.19fF
C1123 w_1166_n916# Gnd 1.19fF
C1124 w_1064_n916# Gnd 1.19fF
C1125 w_957_n916# Gnd 1.19fF
C1126 w_2351_n849# Gnd 0.97fF
C1127 w_2306_n849# Gnd 0.97fF
C1128 w_2262_n849# Gnd 0.97fF
C1129 w_2224_n849# Gnd 1.19fF
C1130 w_2337_n745# Gnd 0.97fF
C1131 w_2292_n745# Gnd 0.97fF
C1132 w_2248_n745# Gnd 0.97fF
C1133 w_2210_n745# Gnd 1.19fF
C1134 w_2070_n753# Gnd 0.53fF
C1135 w_2109_n714# Gnd 2.28fF
C1136 w_2070_n698# Gnd 0.36fF



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
* set curplottitle="Nitin-2023112026-q9"
set curplottitle="Karthik-2023102009-q9"
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
