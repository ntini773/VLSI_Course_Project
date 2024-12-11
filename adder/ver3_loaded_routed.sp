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
C0 q_b4 q_a4 11.93fF
C1 gnd a_1234_n973# 0.18fF
C2 prop_4 pdr4 0.02fF
C3 prop_4 a_1729_n1563# 0.52fF
C4 a_1719_n1294# w_1745_n1241# 0.06fF
C5 w_1263_n948# a_1234_n973# 0.09fF
C6 w_1166_n992# vdd 0.07fF
C7 w_1745_n1241# a_1758_n1235# 0.16fF
C8 a_1536_n972# gnd 0.18fF
C9 a_1719_n1294# prop_2 0.52fF
C10 a_1758_n1235# prop_2 0.45fF
C11 w_1716_n1494# q_a4 0.06fF
C12 w_2459_n978# vdd 0.07fF
C13 c3 a_2442_n1159# 0.06fF
C14 a_1635_n936# a_1670_n902# 0.26fF
C15 vdd a_1440_n972# 0.37fF
C16 w_2081_n1002# vdd 0.12fF
C17 a_1635_n1023# gnd 0.12fF
C18 w_1367_n915# b2 0.06fF
C19 c2 gnd 0.21fF
C20 a_1722_n1383# prop_3 0.06fF
C21 w_1664_n1036# q_a1 0.05fF
C22 q_s3 iq_s3 0.07fF
C23 prop_1 a_1757_n1103# 0.45fF
C24 a_1440_n936# a_1475_n902# 0.26fF
C25 q_c4 vdd 0.29fF
C26 vdd iq_s1 0.25fF
C27 a_1137_n1024# a_1140_n979# 0.10fF
C28 q_a2 a_1752_n1949# 0.20fF
C29 q_b4 q_b1 0.36fF
C30 a_1440_n1023# gnd 0.12fF
C31 vdd q_s3 0.29fF
C32 w_2306_n849# vdd 0.07fF
C33 w_1367_n915# vdd 0.08fF
C34 w_2224_n849# a_2233_n875# 0.25fF
C35 gnd q_a4 0.35fF
C36 a_1635_n972# a_1638_n934# 0.10fF
C37 q_c4 w_2859_n1441# 0.05fF
C38 w_1263_n916# a_1269_n903# 0.01fF
C39 w_1064_n1037# q_a4 0.05fF
C40 a_2472_n972# a_2466_n1004# 0.10fF
C41 a_1718_n1107# a_1718_n1162# 0.08fF
C42 w_957_n948# a_928_n973# 0.09fF
C43 a_2083_n1028# s2 0.06fF
C44 w_2081_n1002# prop_2 0.06fF
C45 w_1893_n1851# vdd 0.07fF
C46 a_2255_n771# a_2261_n739# 0.10fF
C47 a_1234_n1024# q_a3 0.07fF
C48 a_2255_n771# gnd 0.14fF
C49 clk_org a_1440_n972# 0.05fF
C50 prop_1 carry_0 0.17fF
C51 q_a3 vdd 0.46fF
C52 a_2435_n1234# gnd 0.17fF
C53 a_2083_n1028# gnd 0.17fF
C54 q_b2 vdd 0.45fF
C55 vdd a_2390_n972# 0.29fF
C56 a_1635_n1023# q_a1 0.07fF
C57 gnd iq_s1 0.10fF
C58 a_1070_n903# vdd 0.29fF
C59 a_2299_n771# gnd 0.14fF
C60 w_1705_n1148# q_b1 0.23fF
C61 q_b1 gnd 0.30fF
C62 vdd a_1269_n903# 0.29fF
C63 w_2070_n753# vdd 0.06fF
C64 clock_in prop_4 0.19fF
C65 prop_1 prop1_car0 0.26fF
C66 vdd a_2256_n1037# 0.93fF
C67 a_2299_n771# a_2305_n739# 0.10fF
C68 w_1367_n915# clk_org 0.06fF
C69 vdd a_1172_n903# 0.29fF
C70 w_1263_n992# a_1234_n973# 0.06fF
C71 q_a1 q_a4 0.36fF
C72 a_1571_n902# a_1536_n936# 0.26fF
C73 a_1635_n936# gnd 0.24fF
C74 w_2377_n978# a_2390_n972# 0.01fF
C75 w_2070_n753# a_2083_n767# 0.03fF
C76 w_1745_n1241# q_b2 0.06fF
C77 a_2584_n1130# a_2580_n1162# 0.26fF
C78 a_2827_n1435# vdd 0.37fF
C79 w_957_n992# a_928_n1024# 0.09fF
C80 vdd a_1338_n936# 0.20fF
C81 a_2439_n1195# s4 0.45fF
C82 a_2319_n843# gnd 0.12fF
C83 a_1234_n937# a_1269_n903# 0.26fF
C84 q_b4 gnd 0.30fF
C85 prop_4 vdd 0.10fF
C86 a_1768_n1504# prop_4 0.45fF
C87 pdr2 clock_in 0.20fF
C88 w_1748_n1385# q_b3 0.06fF
C89 w_1744_n1109# a_1718_n1107# 0.06fF
C90 q_a3 a_1722_n1438# 0.06fF
C91 w_1166_n948# a_1137_n973# 0.09fF
C92 a_2666_n1130# q_s4 0.07fF
C93 vdd c1 0.48fF
C94 a_1638_n978# gnd 0.14fF
C95 w_1166_n1037# a_1137_n1024# 0.06fF
C96 a_1899_n1957# vdd 0.20fF
C97 w_1716_n1549# q_b4 0.23fF
C98 vdd a_2386_n1004# 0.20fF
C99 w_2433_n1208# prop_4 0.06fF
C100 gnd clock_car0 1.03fF
C101 s3 a_2259_n1001# 0.52fF
C102 a_1718_n1107# vdd 0.15fF
C103 w_957_n992# a_928_n973# 0.06fF
C104 a_1899_n1957# a_1896_n1885# 0.51fF
C105 vdd w_1469_n947# 0.07fF
C106 a_2666_n1130# vdd 0.37fF
C107 w_2351_n849# vdd 0.07fF
C108 w_2859_n1441# a_2827_n1435# 0.06fF
C109 w_1565_n947# a_1536_n972# 0.09fF
C110 pdr3 prop_4 0.26fF
C111 a_1752_n1949# vdd 0.44fF
C112 a_1761_n1379# q_b3 0.12fF
C113 s1 gnd 0.14fF
C114 w_2246_n1089# a_2252_n1076# 0.03fF
C115 q_a1 q_b1 12.16fF
C116 w_1709_n1424# q_b3 0.23fF
C117 w_2415_n978# a_2386_n1004# 0.13fF
C118 w_1705_n1093# a_1718_n1107# 0.03fF
C119 s2 gnd 0.16fF
C120 a_2233_n875# vdd 0.20fF
C121 a_1341_n934# a_1338_n972# 0.10fF
C122 a_928_n1024# q_b4 0.07fF
C123 prop_1 a_1718_n1162# 0.52fF
C124 vdd a_2275_n843# 0.37fF
C125 a_2442_n1159# s4 0.52fF
C126 a_2261_n739# gnd 0.18fF
C127 w_2377_n978# a_2386_n1004# 0.25fF
C128 a_2428_n972# a_2422_n1004# 0.10fF
C129 pdr3 pdr2 1.07fF
C130 a_1719_n1294# q_b2 0.22fF
C131 vdd a_1338_n972# 0.37fF
C132 a_1758_n1235# q_b2 0.12fF
C133 a_1752_n1949# gen_2 0.05fF
C134 prop_1 w_2109_n714# 0.06fF
C135 a_2827_n1435# clk_org 0.36fF
C136 gnd c1 0.21fF
C137 clk_org a_1338_n936# 0.41fF
C138 q_a1 q_b4 0.36fF
C139 a_1234_n1024# a_1237_n979# 0.10fF
C140 pdr2 gen_2 0.02fF
C141 a_2259_n1001# a_2252_n1076# 0.08fF
C142 a_2305_n739# gnd 0.12fF
C143 w_1755_n1510# q_a4 0.06fF
C144 a_1899_n1957# clk_org 0.41fF
C145 a_1341_n978# gnd 0.14fF
C146 a_1722_n1383# q_b3 0.20fF
C147 c2 a_2252_n1076# 0.27fF
C148 a_1038_n979# gnd 0.14fF
C149 a_2580_n1162# vdd 0.20fF
C150 clk_org a_2386_n1004# 0.41fF
C151 w_2337_n745# vdd 0.07fF
C152 a_2622_n1130# a_2580_n1162# 0.51fF
C153 w_2571_n1136# a_2580_n1162# 0.25fF
C154 vdd q_s1 0.29fF
C155 clk_org w_1469_n947# 0.06fF
C156 pdr2 prop_2 0.02fF
C157 a_2666_n1130# clk_org 0.36fF
C158 a_1035_n1024# vdd 0.37fF
C159 w_1166_n1037# q_b3 0.05fF
C160 w_1469_n1036# a_1440_n1023# 0.06fF
C161 a_1635_n972# vdd 0.37fF
C162 w_1064_n916# a4 0.06fF
C163 a_1536_n972# a_1539_n934# 0.10fF
C164 w_2429_n1247# a_2435_n1234# 0.03fF
C165 vdd iq_s2 0.25fF
C166 vdd a_1440_n936# 0.20fF
C167 w_1367_n991# a_1338_n1023# 0.09fF
C168 a_928_n1024# gnd 0.12fF
C169 a_2233_n875# clk_org 0.41fF
C170 w_1064_n916# a_1035_n937# 0.25fF
C171 w_1664_n915# a_1670_n902# 0.01fF
C172 clk_org a_2275_n843# 0.05fF
C173 c3 a_2435_n1234# 0.27fF
C174 a_1536_n972# a_1536_n936# 0.51fF
C175 clk_org a_1338_n972# 0.05fF
C176 gnd a_928_n973# 0.18fF
C177 w_2484_n1247# vdd 0.06fF
C178 a_1137_n973# gnd 0.18fF
C179 prop_1 w_1744_n1109# 0.02fF
C180 q_a1 gnd 0.35fF
C181 a_2090_n953# vdd 0.15fF
C182 a_2741_n1467# gnd 0.24fF
C183 vdd pdr1 0.68fF
C184 pdr1 prop_3 0.09fF
C185 a_931_n979# gnd 0.14fF
C186 gen_3 pdr2 0.10fF
C187 gen_4 pdr1 0.10fF
C188 prop_1 vdd 0.10fF
C189 q_s2 vdd 0.29fF
C190 a_2580_n1162# clk_org 0.41fF
C191 vdd a_1751_n1721# 0.44fF
C192 iq_s2 gnd 0.10fF
C193 a_1635_n972# w_1664_n947# 0.09fF
C194 a_1035_n1024# clk_org 0.36fF
C195 a_1635_n972# clk_org 0.05fF
C196 a_1635_n936# w_1664_n915# 0.25fF
C197 prop_1 a_2083_n767# 0.22fF
C198 w_1166_n916# a_1137_n937# 0.25fF
C199 w_1755_n1510# q_b4 0.06fF
C200 w_2292_n745# vdd 0.07fF
C201 w_2301_n1089# vdd 0.06fF
C202 a_1440_n936# clk_org 0.41fF
C203 w_2246_n1089# vdd 0.09fF
C204 prop1_car0 clock_car0 1.03fF
C205 q_c4 a_2827_n1435# 0.07fF
C206 a_931_n979# a_928_n1024# 0.10fF
C207 q_b2 q_a3 0.36fF
C208 a_2090_n953# prop_2 0.22fF
C209 a_1756_n2057# gnd 0.05fF
C210 w_1469_n947# a_1440_n972# 0.09fF
C211 prop_1 prop_2 0.42fF
C212 pdr1 gnd 0.05fF
C213 w_957_n948# a_928_n937# 0.13fF
C214 w_1748_n1385# vdd 0.12fF
C215 a_2439_n1195# vdd 0.93fF
C216 w_1367_n915# a_1338_n936# 0.25fF
C217 prop_1 a_2122_n708# 0.12fF
C218 vdd a_2259_n1001# 0.15fF
C219 pdr4 clock_car0 1.03fF
C220 w_1166_n916# b3 0.06fF
C221 w_2732_n1441# a_2741_n1467# 0.25fF
C222 w_2433_n1208# a_2439_n1195# 0.16fF
C223 a_2087_n989# s2 0.45fF
C224 c2 vdd 0.11fF
C225 w_1565_n915# b1 0.06fF
C226 a_1761_n1379# vdd 0.93fF
C227 prop_3 gnd 0.27fF
C228 s1 a_2083_n712# 0.06fF
C229 gen_4 gnd 0.14fF
C230 w_1709_n1424# vdd 0.06fF
C231 c3 gnd 0.22fF
C232 w_1709_n1369# vdd 0.09fF
C233 a_2783_n1435# vdd 0.37fF
C234 w_1367_n991# vdd 0.07fF
C235 a_2319_n843# a_2313_n875# 0.10fF
C236 vdd a_2442_n1159# 0.15fF
C237 w_2306_n849# a_2275_n843# 0.06fF
C238 gnd a_2083_n712# 0.17fF
C239 w_2248_n745# a_2261_n739# 0.09fF
C240 a_1729_n1508# q_a4 0.27fF
C241 a_2390_n972# a_2386_n1004# 0.26fF
C242 q_a1 a_1756_n2057# 0.20fF
C243 w_2210_n745# s1 0.06fF
C244 w_1748_n1385# a_1722_n1438# 0.06fF
C245 w_1565_n991# a_1536_n1023# 0.09fF
C246 a_1757_n1103# q_b1 0.12fF
C247 w_2433_n1208# a_2442_n1159# 0.06fF
C248 a_1722_n1383# vdd 0.15fF
C249 a_1440_n936# a_1440_n972# 0.51fF
C250 q_b3 q_a4 0.36fF
C251 w_2770_n1441# a_2741_n1467# 0.13fF
C252 vdd iq_c4 0.25fF
C253 w_2250_n1050# prop_3 0.06fF
C254 w_1469_n991# a_1440_n1023# 0.09fF
C255 w_1166_n1037# vdd 0.07fF
C256 a_1571_n902# vdd 0.29fF
C257 gnd a_1539_n934# 0.14fF
C258 a_2219_n771# a_2261_n739# 0.51fF
C259 w_1064_n916# vdd 0.08fF
C260 w_1709_n1424# a_1722_n1438# 0.03fF
C261 w_1565_n1036# q_b1 0.05fF
C262 a_2219_n771# gnd 0.24fF
C263 a_2435_n1234# s4 0.06fF
C264 a_2090_n953# w_2081_n1002# 0.06fF
C265 a_2783_n1435# clk_org 0.05fF
C266 w_1166_n948# a_1137_n937# 0.13fF
C267 w_1469_n915# a_1475_n902# 0.01fF
C268 a_2313_n875# gnd 0.14fF
C269 a_1536_n936# gnd 0.24fF
C270 clock_in clock_car0 0.08fF
C271 w_2210_n745# a_2223_n739# 0.01fF
C272 a_2472_n972# w_2504_n978# 0.06fF
C273 a_1729_n1563# q_a4 0.06fF
C274 a_1536_n1023# q_b1 0.07fF
C275 q_b3 q_b1 0.36fF
C276 gnd a_1946_n1889# 0.14fF
C277 pdr2 prop_4 0.10fF
C278 q_a2 a_1440_n1023# 0.07fF
C279 a_2219_n771# a_2223_n739# 0.26fF
C280 a_1440_n1023# a_1443_n978# 0.10fF
C281 iq_c4 gnd 0.10fF
C282 a_1722_n1383# a_1722_n1438# 0.08fF
C283 q_a2 q_a4 0.36fF
C284 a_1035_n973# a_1038_n935# 0.10fF
C285 a_2821_n1467# gnd 0.14fF
C286 a_1137_n1024# gnd 0.12fF
C287 w_1166_n916# vdd 0.08fF
C288 a_1729_n1508# q_b4 0.20fF
C289 a_1338_n972# a_1338_n936# 0.51fF
C290 prop1_car0 pdr1 1.06fF
C291 a_1751_n1830# gnd 0.05fF
C292 w_1064_n916# clk_org 0.06fF
C293 a_1140_n935# gnd 0.14fF
C294 q_b3 q_b4 0.36fF
C295 w_1706_n1280# vdd 0.06fF
C296 w_1664_n1036# vdd 0.07fF
C297 a_1729_n1508# w_1716_n1494# 0.03fF
C298 a_1719_n1239# gnd 0.17fF
C299 pdr3 clock_car0 1.03fF
C300 w_1893_n1896# a_1896_n1840# 0.09fF
C301 a_1946_n1933# gnd 0.14fF
C302 c4 w_2732_n1441# 0.06fF
C303 a_2622_n1130# a_2616_n1162# 0.10fF
C304 a_2472_n972# gnd 0.12fF
C305 w_2429_n1247# c3 0.06fF
C306 w_957_n916# b4 0.06fF
C307 w_2077_n1041# vdd 0.09fF
C308 a_1373_n902# vdd 0.29fF
C309 a_2233_n875# a_2275_n843# 0.51fF
C310 q_a2 q_b1 0.36fF
C311 a_2269_n875# a_2275_n843# 0.10fF
C312 w_1893_n1940# vdd 0.07fF
C313 vdd c3 0.48fF
C314 vdd c1 0.11fF
C315 a_928_n937# gnd 0.24fF
C316 w_1664_n991# vdd 0.07fF
C317 a_2428_n972# gnd 0.18fF
C318 prop_1 w_2070_n753# 0.23fF
C319 vdd a_1234_n973# 0.37fF
C320 w_1893_n1940# a_1896_n1885# 0.09fF
C321 w_2224_n849# a_2237_n843# 0.01fF
C322 a_1729_n1508# gnd 0.17fF
C323 w_957_n916# a_928_n937# 0.25fF
C324 w_1166_n916# clk_org 0.06fF
C325 w_1565_n915# a_1536_n936# 0.25fF
C326 a_1729_n1563# q_b4 0.22fF
C327 w_957_n948# vdd 0.07fF
C328 carry_0 gnd 0.35fF
C329 gnd s4 0.16fF
C330 a_1440_n936# w_1469_n947# 0.13fF
C331 a_1440_n972# a_1443_n934# 0.10fF
C332 a_1536_n1023# gnd 0.12fF
C333 s3 gnd 0.16fF
C334 q_b3 gnd 0.25fF
C335 vdd a_1536_n972# 0.37fF
C336 prop_4 w_2484_n1247# 0.23fF
C337 q_a2 q_b4 0.36fF
C338 a_1718_n1162# q_b1 0.22fF
C339 clk_org a2 0.21fF
C340 a1 w_1664_n915# 0.06fF
C341 a_1140_n935# a_1137_n973# 0.10fF
C342 a_1635_n1023# vdd 0.37fF
C343 w_1748_n1385# q_a3 0.06fF
C344 gnd a_1638_n934# 0.14fF
C345 a_1137_n937# gnd 0.24fF
C346 a_1234_n937# a_1234_n973# 0.51fF
C347 a_1035_n937# gnd 0.24fF
C348 w_1064_n948# a_1035_n937# 0.13fF
C349 prop_2 c1 0.09fF
C350 w_957_n1037# q_b4 0.05fF
C351 a_1896_n1840# gnd 0.12fF
C352 c3 gnd 0.21fF
C353 prop_1 a_1718_n1107# 0.06fF
C354 w_1565_n991# vdd 0.07fF
C355 vdd a_1440_n1023# 0.37fF
C356 w_2351_n849# q_s2 0.05fF
C357 w_2337_n745# q_s1 0.05fF
C358 w_2224_n849# s2 0.06fF
C359 vdd q_a4 0.46fF
C360 w_1893_n1940# clk_org 0.06fF
C361 c4 vdd 0.48fF
C362 a_928_n937# a_928_n973# 0.51fF
C363 vdd iq_s4 0.25fF
C364 a_1338_n1023# gnd 0.12fF
C365 w_957_n916# a_963_n903# 0.01fF
C366 w_1709_n1369# q_a3 0.06fF
C367 clk_org a_1234_n973# 0.05fF
C368 w_1565_n947# a_1536_n936# 0.13fF
C369 a_1729_n1563# gnd 0.20fF
C370 a_1719_n1294# w_1706_n1280# 0.03fF
C371 s3 w_2250_n1050# 0.02fF
C372 gnd a_2252_n1076# 0.17fF
C373 w_957_n948# clk_org 0.06fF
C374 a_1341_n978# a_1338_n1023# 0.10fF
C375 q_a2 gnd 0.35fF
C376 a_1443_n978# gnd 0.14fF
C377 w_1716_n1549# a_1729_n1563# 0.03fF
C378 clk_org a_1536_n972# 0.05fF
C379 vdd w_1166_n948# 0.07fF
C380 prop_4 a_2439_n1195# 0.12fF
C381 a_1237_n935# a_1234_n973# 0.10fF
C382 q_b3 q_a1 0.36fF
C383 pdr1 clock_in 0.14fF
C384 w_2248_n745# a_2219_n771# 0.13fF
C385 vdd a_1670_n902# 0.29fF
C386 a_1635_n1023# clk_org 0.36fF
C387 a_2435_n1234# vdd 0.15fF
C388 vdd a_2083_n1028# 0.15fF
C389 w_957_n992# vdd 0.07fF
C390 a_1137_n937# a_1137_n973# 0.51fF
C391 w_1744_n1109# q_b1 0.06fF
C392 a_1722_n1383# q_a3 0.27fF
C393 w_2109_n714# s1 0.02fF
C394 w_2433_n1208# a_2435_n1234# 0.06fF
C395 w_1367_n947# vdd 0.07fF
C396 vdd q_b1 0.45fF
C397 a_2666_n1130# a_2660_n1162# 0.10fF
C398 c4 gnd 0.21fF
C399 w_1705_n1148# a_1718_n1162# 0.03fF
C400 iq_s4 gnd 0.10fF
C401 w_2210_n745# a_2219_n771# 0.25fF
C402 a_1718_n1162# gnd 0.20fF
C403 clk_org a_1440_n1023# 0.36fF
C404 w_1469_n915# vdd 0.08fF
C405 w_2250_n1050# a_2252_n1076# 0.06fF
C406 w_1893_n1896# vdd 0.07fF
C407 vdd a_2237_n843# 0.29fF
C408 a_1635_n936# vdd 0.20fF
C409 w_2814_n1441# vdd 0.07fF
C410 w_1064_n916# a_1070_n903# 0.01fF
C411 pdr2 c2 0.07fF
C412 w_1893_n1896# a_1896_n1885# 0.06fF
C413 prop_4 a_2442_n1159# 0.22fF
C414 a_2745_n1435# a_2741_n1467# 0.26fF
C415 a_2319_n843# vdd 0.37fF
C416 a_1768_n1504# q_b4 0.12fF
C417 w_2732_n1441# a_2745_n1435# 0.01fF
C418 vdd q_b4 0.45fF
C419 a_2083_n1028# prop_2 0.20fF
C420 clk_org w_1166_n948# 0.06fF
C421 w_2504_n978# vdd 0.07fF
C422 w_957_n1037# a_928_n1024# 0.06fF
C423 q_a2 q_a1 0.36fF
C424 pdr1 gen_2 0.11fF
C425 a_2777_n1467# a_2783_n1435# 0.10fF
C426 w_2698_n1136# q_s4 0.05fF
C427 w_2081_n1002# c1 0.06fF
C428 w_1706_n1225# a_1719_n1239# 0.03fF
C429 w_1716_n1494# vdd 0.09fF
C430 a_1729_n1508# w_1755_n1510# 0.06fF
C431 pdr1 prop_2 0.26fF
C432 w_2698_n1136# vdd 0.07fF
C433 carry_0 prop_3 0.07fF
C434 a_1234_n1024# w_1263_n1037# 0.06fF
C435 gen_4 carry_0 0.09fF
C436 w_1367_n947# clk_org 0.06fF
C437 w_1263_n1037# vdd 0.07fF
C438 w_1367_n915# a_1373_n902# 0.01fF
C439 q_a1 a_1718_n1162# 0.06fF
C440 w_1469_n915# clk_org 0.06fF
C441 a_1341_n934# gnd 0.14fF
C442 q_s4 gnd 0.14fF
C443 a_1635_n936# w_1664_n947# 0.13fF
C444 w_1706_n1280# q_b2 0.23fF
C445 w_1367_n991# a_1338_n972# 0.06fF
C446 prop1_car0 prop_3 0.09fF
C447 vdd a_2261_n739# 0.37fF
C448 carry_0 a_2083_n712# 0.27fF
C449 gen_4 prop1_car0 0.10fF
C450 a_1234_n1024# gnd 0.12fF
C451 a_1635_n936# clk_org 0.41fF
C452 s1 a_2083_n767# 0.52fF
C453 w_1705_n1148# vdd 0.06fF
C454 w_1166_n916# a_1172_n903# 0.01fF
C455 vdd gnd 2.00fF
C456 a_2622_n1130# gnd 0.18fF
C457 vdd w_1064_n948# 0.07fF
C458 a_2319_n843# clk_org 0.36fF
C459 a_1896_n1885# gnd 0.18fF
C460 w_957_n916# vdd 0.08fF
C461 w_1064_n1037# vdd 0.07fF
C462 w_1263_n948# vdd 0.07fF
C463 pdr1 gen_1 0.02fF
C464 a_1035_n973# gnd 0.18fF
C465 w_1716_n1549# vdd 0.06fF
C466 vdd a_2305_n739# 0.37fF
C467 gen_3 pdr1 0.10fF
C468 a_1035_n973# w_1064_n948# 0.09fF
C469 a_2083_n767# gnd 0.20fF
C470 vdd pdr4 0.68fF
C471 w_1755_n1510# a_1729_n1563# 0.06fF
C472 gen_4 pdr4 0.02fF
C473 prop_3 a_2252_n1076# 0.20fF
C474 a_1234_n937# gnd 0.24fF
C475 vdd a_2223_n739# 0.29fF
C476 gen_2 gnd 0.14fF
C477 a_1539_n978# gnd 0.14fF
C478 s1 a_2122_n708# 0.45fF
C479 clk_org s1 0.21fF
C480 w_1263_n948# a_1234_n937# 0.13fF
C481 vdd a_928_n1024# 0.37fF
C482 clk_org s2 0.21fF
C483 q_s1 iq_s1 0.07fF
C484 prop_2 gnd 0.27fF
C485 w_2132_n1041# vdd 0.06fF
C486 w_2250_n1050# vdd 0.12fF
C487 w_2301_n1089# a_2259_n1001# 0.03fF
C488 w_1744_n1109# q_a1 0.06fF
C489 clk_org a_2261_n739# 0.05fF
C490 w_2484_n1247# a_2442_n1159# 0.03fF
C491 w_1469_n1036# q_a2 0.05fF
C492 w_2081_n1002# a_2083_n1028# 0.06fF
C493 a_1722_n1438# gnd 0.20fF
C494 pdr2 clock_car0 1.03fF
C495 a_1373_n902# a_1338_n936# 0.26fF
C496 w_2246_n1089# c2 0.06fF
C497 vdd a_928_n973# 0.37fF
C498 clk_org gnd 4.09fF
C499 vdd a_1137_n973# 0.37fF
C500 q_a1 vdd 0.46fF
C501 clk_org w_1064_n948# 0.06fF
C502 w_1706_n1225# q_a2 0.06fF
C503 a_2741_n1467# vdd 0.20fF
C504 w_2732_n1441# vdd 0.08fF
C505 w_957_n916# clk_org 0.06fF
C506 pdr4 gnd 0.05fF
C507 w_1263_n948# clk_org 0.06fF
C508 clk_org a_2305_n739# 0.36fF
C509 q_a3 q_a4 0.36fF
C510 w_1893_n1940# a_1899_n1957# 0.13fF
C511 q_b3 a_1137_n1024# 0.07fF
C512 a_1237_n935# gnd 0.14fF
C513 q_b2 q_a4 0.36fF
C514 w_1565_n915# vdd 0.08fF
C515 w_1705_n1093# q_a1 0.06fF
C516 w_1748_n1385# a_1761_n1379# 0.16fF
C517 c4 pdr4 0.07fF
C518 gen_3 gnd 0.14fF
C519 gen_1 gnd 0.14fF
C520 w_1064_n992# vdd 0.07fF
C521 w_2132_n1041# prop_2 0.23fF
C522 c2 a_2259_n1001# 0.06fF
C523 a_1751_n1830# q_b3 0.20fF
C524 a_1896_n1840# a_1946_n1889# 0.10fF
C525 a_1719_n1294# gnd 0.20fF
C526 w_2070_n698# a_2083_n712# 0.03fF
C527 w_2109_n714# a_2083_n712# 0.06fF
C528 clk_org a_928_n1024# 0.36fF
C529 w_1064_n992# a_1035_n973# 0.06fF
C530 w_1367_n1036# a_1338_n1023# 0.06fF
C531 a_1234_n1024# w_1263_n992# 0.09fF
C532 vdd a_1756_n2057# 0.44fF
C533 clk_org b1 0.21fF
C534 w_1263_n992# vdd 0.07fF
C535 vdd clock_in 0.74fF
C536 clock_in prop_3 0.17fF
C537 clk_org a_928_n973# 0.05fF
C538 gen_4 clock_in 0.09fF
C539 clk_org a_1137_n973# 0.05fF
C540 w_1565_n1036# a_1536_n1023# 0.06fF
C541 q_a3 q_b1 0.36fF
C542 w_2770_n1441# vdd 0.07fF
C543 w_2306_n849# a_2319_n843# 0.09fF
C544 w_2504_n978# q_s3 0.05fF
C545 a_2741_n1467# clk_org 0.41fF
C546 w_2732_n1441# clk_org 0.06fF
C547 vdd iq_s3 0.25fF
C548 q_b2 q_b1 0.36fF
C549 w_1748_n1385# a_1722_n1383# 0.06fF
C550 w_2429_n1247# vdd 0.09fF
C551 vdd q_s4 0.06fF
C552 w_1565_n947# vdd 0.07fF
C553 w_2081_n1002# s2 0.02fF
C554 w_1565_n915# clk_org 0.06fF
C555 prop_3 vdd 0.10fF
C556 gen_4 vdd 0.28fF
C557 a_1768_n1504# w_1755_n1510# 0.16fF
C558 a_931_n935# gnd 0.14fF
C559 w_1755_n1510# vdd 0.12fF
C560 a_1440_n972# gnd 0.18fF
C561 c3 vdd 0.11fF
C562 a_2087_n989# vdd 0.93fF
C563 w_1664_n915# vdd 0.08fF
C564 q_a3 q_b4 0.36fF
C565 a_1635_n972# w_1664_n991# 0.06fF
C566 w_1893_n1978# a_1899_n1965# 0.01fF
C567 q_b2 q_b4 0.36fF
C568 prop_4 a_2435_n1234# 0.20fF
C569 a_963_n903# a_928_n937# 0.26fF
C570 w_2653_n1136# vdd 0.07fF
C571 w_2262_n849# vdd 0.07fF
C572 carry_0 prop1_car0 0.02fF
C573 w_2653_n1136# a_2622_n1130# 0.06fF
C574 a_1719_n1239# q_a2 0.27fF
C575 w_1893_n1978# cin 0.06fF
C576 q_c4 gnd 0.14fF
C577 w_1709_n1369# a_1722_n1383# 0.03fF
C578 w_1469_n1036# vdd 0.07fF
C579 clock_in gnd 0.21fF
C580 pdr3 vdd 0.68fF
C581 w_2433_n1208# c3 0.06fF
C582 pdr3 prop_3 0.02fF
C583 pdr3 gen_4 0.10fF
C584 carry_0 a_1896_n1840# 0.07fF
C585 w_1367_n947# a_1338_n936# 0.13fF
C586 vdd a_2083_n712# 0.15fF
C587 pdr3 c3 0.07fF
C588 q_s3 gnd 0.14fF
C589 iq_s3 gnd 0.10fF
C590 w_2248_n745# vdd 0.07fF
C591 w_1706_n1225# vdd 0.09fF
C592 w_1263_n1037# q_a3 0.05fF
C593 a_1729_n1508# a_1729_n1563# 0.08fF
C594 pdr1 prop_4 0.10fF
C595 q_s4 gnd 0.05fF
C596 w_2770_n1441# clk_org 0.06fF
C597 a_2090_n953# c1 0.06fF
C598 a_1718_n1107# q_b1 0.20fF
C599 prop_3 prop_2 0.62fF
C600 a_2083_n767# a_2083_n712# 0.08fF
C601 a_2827_n1435# w_2814_n1441# 0.09fF
C602 a_2087_n989# prop_2 0.12fF
C603 w_1565_n947# clk_org 0.06fF
C604 w_2210_n745# vdd 0.08fF
C605 s3 a_2252_n1076# 0.06fF
C606 gen_1 a_1756_n2057# 0.05fF
C607 w_1166_n992# a_1137_n973# 0.06fF
C608 q_s4 iq_s4 0.07fF
C609 prop_3 a_1722_n1438# 0.52fF
C610 vdd clk_org 0.06fF
C611 a_1035_n1024# q_a4 0.07fF
C612 q_b3 q_a2 0.36fF
C613 a_931_n935# a_928_n973# 0.10fF
C614 q_a3 gnd 0.41fF
C615 vdd a_2219_n771# 0.20fF
C616 w_1664_n915# clk_org 0.06fF
C617 q_c4 iq_c4 0.07fF
C618 pdr2 pdr1 1.07fF
C619 q_b2 gnd 0.30fF
C620 pdr3 gnd 0.05fF
C621 w_2262_n849# clk_org 0.06fF
C622 w_2351_n849# a_2319_n843# 0.06fF
C623 vdd a_1536_n936# 0.20fF
C624 w_1367_n947# a_1338_n972# 0.09fF
C625 a1 clk_org 0.21fF
C626 a_2233_n875# a_2237_n843# 0.26fF
C627 w_2248_n745# clk_org 0.06fF
C628 w_1367_n1036# vdd 0.07fF
C629 gen_4 gen_3 1.07fF
C630 w_2070_n698# carry_0 0.06fF
C631 carry_0 w_2109_n714# 0.06fF
C632 w_2698_n1136# a_2666_n1130# 0.06fF
C633 vdd a_1137_n1024# 0.37fF
C634 clk_org gnd 0.05fF
C635 w_1744_n1109# a_1757_n1103# 0.16fF
C636 a_2827_n1435# gnd 0.12fF
C637 a_1338_n936# gnd 0.24fF
C638 w_2210_n745# clk_org 0.06fF
C639 prop_4 gnd 0.27fF
C640 a_1751_n1830# vdd 0.44fF
C641 a_1751_n1721# q_a4 0.20fF
C642 vdd a_1757_n1103# 0.93fF
C643 clk_org a_2219_n771# 0.41fF
C644 a_1899_n1957# gnd 0.24fF
C645 q_a3 q_a1 0.36fF
C646 gnd a_2386_n1004# 0.24fF
C647 c4 clk_org 0.21fF
C648 w_1469_n915# a_1440_n936# 0.25fF
C649 q_s2 iq_s2 0.07fF
C650 a_1718_n1107# gnd 0.17fF
C651 a_1719_n1239# vdd 0.15fF
C652 a_2666_n1130# gnd 0.12fF
C653 q_b2 q_a1 0.36fF
C654 w_2609_n1136# vdd 0.07fF
C655 w_2609_n1136# a_2622_n1130# 0.09fF
C656 a_1635_n972# a_1635_n936# 0.51fF
C657 a_2090_n953# a_2083_n1028# 0.08fF
C658 a_2777_n1467# gnd 0.14fF
C659 w_2250_n1050# a_2256_n1037# 0.16fF
C660 a_2472_n972# vdd 0.37fF
C661 a_1752_n1949# gnd 0.05fF
C662 clk_org a_1536_n936# 0.41fF
C663 a_1946_n1933# a_1896_n1885# 0.10fF
C664 w_1565_n1036# vdd 0.07fF
C665 vdd a_928_n937# 0.20fF
C666 vdd a_1475_n902# 0.29fF
C667 a_2233_n875# gnd 0.24fF
C668 a_2269_n875# gnd 0.14fF
C669 a_2428_n972# vdd 0.37fF
C670 a_2275_n843# gnd 0.18fF
C671 a_1729_n1508# vdd 0.15fF
C672 clk_org a_1137_n1024# 0.36fF
C673 prop_1 pdr1 0.02fF
C674 a_2087_n989# w_2081_n1002# 0.16fF
C675 q_c4 vdd 0.06fF
C676 carry_0 vdd 0.40fF
C677 a_1338_n972# gnd 0.18fF
C678 w_2571_n1136# s4 0.06fF
C679 w_1745_n1241# a_1719_n1239# 0.06fF
C680 a_1536_n1023# vdd 0.37fF
C681 a_1899_n1965# vdd 0.29fF
C682 vdd q_s3 0.06fF
C683 q_b3 vdd 0.45fF
C684 a_1719_n1239# prop_2 0.06fF
C685 a_1237_n979# gnd 0.14fF
C686 a_2428_n972# w_2415_n978# 0.09fF
C687 w_2433_n1208# s4 0.02fF
C688 w_1893_n1978# vdd 0.08fF
C689 q_s2 a_2319_n843# 0.07fF
C690 a_2580_n1162# gnd 0.24fF
C691 vdd a_1137_n937# 0.20fF
C692 carry_0 a_2083_n767# 0.06fF
C693 vdd a_1035_n937# 0.20fF
C694 w_1469_n991# vdd 0.07fF
C695 q_s1 gnd 0.14fF
C696 w_2609_n1136# clk_org 0.06fF
C697 q_a1 a_1718_n1107# 0.27fF
C698 clock_in pdr4 0.08fF
C699 clk_org b4 0.21fF
C700 a_1035_n1024# gnd 0.12fF
C701 a_1635_n972# gnd 0.18fF
C702 a_2472_n972# clk_org 0.36fF
C703 carry_0 gen_2 0.10fF
C704 w_2337_n745# a_2305_n739# 0.06fF
C705 a_1896_n1840# vdd 0.37fF
C706 a_1035_n973# a_1035_n937# 0.51fF
C707 q_s1 a_2305_n739# 0.07fF
C708 a_1035_n1024# w_1064_n1037# 0.06fF
C709 gen_3 a_1751_n1830# 0.05fF
C710 a_1440_n936# gnd 0.24fF
C711 vdd a_963_n903# 0.29fF
C712 a_1536_n1023# a_1539_n978# 0.10fF
C713 a_1035_n1024# a_1038_n979# 0.10fF
C714 s3 w_2377_n978# 0.06fF
C715 carry_0 prop_2 0.09fF
C716 clk_org a_928_n937# 0.41fF
C717 q_c4 gnd 0.05fF
C718 vdd a_1338_n1023# 0.37fF
C719 a_2428_n972# clk_org 0.05fF
C720 a_2090_n953# s2 0.52fF
C721 vdd a_1729_n1563# 0.15fF
C722 a_2745_n1435# vdd 0.29fF
C723 q_s3 gnd 0.05fF
C724 vdd a_2252_n1076# 0.15fF
C725 prop1_car0 gen_2 0.11fF
C726 w_2224_n849# vdd 0.08fF
C727 clk_org s4 0.21fF
C728 a_1719_n1294# a_1719_n1239# 0.08fF
C729 clk_org a4 0.21fF
C730 q_b3 a_1722_n1438# 0.22fF
C731 q_a2 vdd 0.46fF
C732 a_2090_n953# gnd 0.20fF
C733 a_1536_n1023# clk_org 0.36fF
C734 prop_3 a_2256_n1037# 0.12fF
C735 s3 clk_org 0.21fF
C736 a_2435_n1234# a_2442_n1159# 0.08fF
C737 prop1_car0 prop_2 0.10fF
C738 q_s2 gnd 0.14fF
C739 prop_1 gnd 0.27fF
C740 clk_org cin 0.21fF
C741 w_1166_n992# a_1137_n1024# 0.09fF
C742 pdr3 pdr4 1.05fF
C743 w_1893_n1978# clk_org 0.06fF
C744 clk_org a_1137_n937# 0.41fF
C745 clk_org a_1035_n937# 0.41fF
C746 a_1751_n1721# gnd 0.05fF
C747 a_2466_n1004# gnd 0.14fF
C748 w_1744_n1109# a_1718_n1162# 0.06fF
C749 w_957_n1037# vdd 0.07fF
C750 carry_0 gen_3 0.09fF
C751 carry_0 gen_1 0.09fF
C752 w_2292_n745# a_2261_n739# 0.06fF
C753 a_1896_n1840# clk_org 0.36fF
C754 prop_4 prop_3 0.92fF
C755 w_1755_n1510# prop_4 0.02fF
C756 a_1718_n1162# vdd 0.15fF
C757 a_2783_n1435# w_2814_n1441# 0.06fF
C758 a_1140_n979# gnd 0.14fF
C759 w_2077_n1041# c1 0.06fF
C760 c3 prop_4 0.09fF
C761 a_2584_n1130# vdd 0.29fF
C762 w_2571_n1136# a_2584_n1130# 0.01fF
C763 w_1745_n1241# q_a2 0.06fF
C764 w_2070_n698# vdd 0.09fF
C765 clk_org a_1338_n1023# 0.36fF
C766 w_2109_n714# vdd 0.12fF
C767 w_2292_n745# a_2305_n739# 0.09fF
C768 a_1635_n1023# w_1664_n1036# 0.06fF
C769 a_2090_n953# w_2132_n1041# 0.03fF
C770 prop1_car0 gen_3 0.10fF
C771 prop1_car0 gen_1 0.10fF
C772 w_2224_n849# clk_org 0.06fF
C773 a_2472_n972# w_2459_n978# 0.09fF
C774 a_1035_n1024# w_1064_n992# 0.09fF
C775 clk_org b3 0.21fF
C776 vdd pdr2 0.68fF
C777 pdr2 prop_3 0.24fF
C778 w_2653_n1136# a_2666_n1130# 0.09fF
C779 gen_4 pdr2 0.10fF
C780 w_2109_n714# a_2083_n767# 0.06fF
C781 a_2660_n1162# gnd 0.14fF
C782 gnd a_2259_n1001# 0.20fF
C783 w_1263_n916# vdd 0.08fF
C784 a_2428_n972# w_2459_n978# 0.06fF
C785 c2 gnd 0.22fF
C786 q_b2 w_1367_n1036# 0.05fF
C787 a_1635_n1023# w_1664_n991# 0.09fF
C788 a_2472_n972# q_s3 0.07fF
C789 w_2262_n849# a_2233_n875# 0.13fF
C790 w_2262_n849# a_2275_n843# 0.09fF
C791 w_1263_n916# a_1234_n937# 0.25fF
C792 a_2783_n1435# gnd 0.18fF
C793 a_1719_n1294# q_a2 0.06fF
C794 q_s4 vdd 0.29fF
C795 w_2109_n714# a_2122_n708# 0.16fF
C796 vdd q_s1 0.06fF
C797 w_1744_n1109# vdd 0.12fF
C798 gnd a_1443_n934# 0.14fF
C799 pdr3 clock_in 0.14fF
C800 w_1469_n991# a_1440_n972# 0.06fF
C801 a_2442_n1159# gnd 0.20fF
C802 w_1263_n916# a3 0.06fF
C803 pdr2 gnd 0.05fF
C804 a_1234_n1024# vdd 0.37fF
C805 a_1768_n1504# vdd 0.93fF
C806 w_2571_n1136# vdd 0.08fF
C807 a_1719_n1239# q_b2 0.20fF
C808 a_2622_n1130# vdd 0.37fF
C809 w_2250_n1050# a_2259_n1001# 0.06fF
C810 w_1565_n991# a_1536_n972# 0.06fF
C811 pdr1 clock_car0 1.03fF
C812 vdd a_1896_n1885# 0.37fF
C813 w_2250_n1050# c2 0.06fF
C814 a_2422_n1004# gnd 0.14fF
C815 a_1722_n1383# gnd 0.17fF
C816 vdd a_1035_n973# 0.37fF
C817 a_2827_n1435# a_2821_n1467# 0.10fF
C818 w_2433_n1208# vdd 0.12fF
C819 w_1469_n915# a2 0.06fF
C820 w_2077_n1041# a_2083_n1028# 0.03fF
C821 w_1263_n916# clk_org 0.06fF
C822 clock_in prop_2 0.09fF
C823 vdd a_2083_n767# 0.15fF
C824 w_1705_n1093# vdd 0.09fF
C825 w_2859_n1441# vdd 0.07fF
C826 carry_0 w_1893_n1851# 0.05fF
C827 w_2415_n978# vdd 0.07fF
C828 a_2083_n1028# c1 0.27fF
C829 vdd a_1234_n937# 0.20fF
C830 clock_in clk_org 0.08fF
C831 vdd gen_2 0.28fF
C832 clk_org b2 0.21fF
C833 w_2377_n978# vdd 0.08fF
C834 q_s1 gnd 0.05fF
C835 w_1745_n1241# vdd 0.12fF
C836 q_b3 q_a3 12.00fF
C837 vdd q_s2 0.06fF
C838 pdr1 c1 0.07fF
C839 vdd prop_2 0.10fF
C840 q_b2 q_b3 0.36fF
C841 a_2783_n1435# a_2741_n1467# 0.51fF
C842 gen_4 a_1751_n1721# 0.05fF
C843 a_1234_n1024# clk_org 0.36fF
C844 w_1893_n1851# a_1896_n1840# 0.06fF
C845 a_1038_n935# gnd 0.14fF
C846 vdd a_1722_n1438# 0.15fF
C847 w_1664_n947# vdd 0.07fF
C848 vdd a_2122_n708# 0.93fF
C849 a_2622_n1130# clk_org 0.05fF
C850 w_2571_n1136# clk_org 0.06fF
C851 gen_3 clock_in 0.09fF
C852 s3 a_2256_n1037# 0.45fF
C853 prop_1 a_2083_n712# 0.20fF
C854 w_2301_n1089# prop_3 0.23fF
C855 clk_org a_1896_n1885# 0.05fF
C856 a_1070_n903# a_1035_n937# 0.26fF
C857 clk_org a_1035_n973# 0.05fF
C858 a_1729_n1508# prop_4 0.06fF
C859 a_1172_n903# a_1137_n937# 0.26fF
C860 carry_0 prop_4 0.09fF
C861 w_2415_n978# clk_org 0.06fF
C862 a_2428_n972# a_2386_n1004# 0.51fF
C863 w_1745_n1241# prop_2 0.02fF
C864 q_b2 a_1338_n1023# 0.07fF
C865 clk_org a_1234_n937# 0.41fF
C866 q_s2 gnd 0.05fF
C867 w_1748_n1385# prop_3 0.02fF
C868 gen_1 vdd 0.28fF
C869 gen_3 vdd 0.28fF
C870 q_b1 q_a4 0.36fF
C871 q_a3 q_a2 0.36fF
C872 w_2377_n978# clk_org 0.06fF
C873 clk_org a3 0.21fF
C874 a_1719_n1294# vdd 0.15fF
C875 a_1899_n1965# a_1899_n1957# 0.26fF
C876 a_1758_n1235# vdd 0.93fF
C877 prop_3 a_2259_n1001# 0.22fF
C878 q_b2 q_a2 12.02fF
C879 vdd c2 0.48fF
C880 w_1565_n915# a_1571_n902# 0.01fF
C881 a_1635_n1023# a_1638_n978# 0.10fF
C882 a_2616_n1162# gnd 0.14fF
C883 prop_3 c2 0.09fF
C884 w_1893_n1978# a_1899_n1957# 0.25fF
C885 prop1_car0 prop_4 0.10fF
C886 w_2770_n1441# a_2783_n1435# 0.09fF
C887 pdr3 gen_3 0.02fF
C888 a_1761_n1379# prop_3 0.45fF
C889 w_1664_n947# clk_org 0.06fF
C890 w_2609_n1136# a_2580_n1162# 0.13fF
C891 gen_1 gen_2 0.36fF
C892 gen_3 gen_2 0.95fF
C893 gnd c1 0.22fF
C894 gnd Gnd 10.72fF
C895 a_1756_n2057# Gnd 0.23fF
C896 cin Gnd 0.22fF
C897 a_1899_n1965# Gnd 0.00fF
C898 a_1946_n1933# Gnd 0.01fF
C899 a_1752_n1949# Gnd 0.28fF
C900 a_1899_n1957# Gnd 1.19fF
C901 a_1946_n1889# Gnd 0.01fF
C902 a_1896_n1885# Gnd 0.48fF
C903 clk_org Gnd 29.99fF
C904 vdd Gnd 16.64fF
C905 a_1896_n1840# Gnd 0.44fF
C906 gnd Gnd 0.93fF
C907 a_1751_n1830# Gnd 0.29fF
C908 gen_1 Gnd 6.46fF
C909 a_1751_n1721# Gnd 0.29fF
C910 gen_2 Gnd 0.06fF
C911 gen_3 Gnd 0.05fF
C912 clock_car0 Gnd 0.55fF
C913 gen_4 Gnd 0.06fF
C914 prop1_car0 Gnd 0.10fF
C915 a_1729_n1563# Gnd 0.23fF
C916 a_1768_n1504# Gnd 0.06fF
C917 a_1729_n1508# Gnd 0.49fF
C918 a_2821_n1467# Gnd 0.01fF
C919 a_2777_n1467# Gnd 0.01fF
C920 iq_c4 Gnd 0.07fF
C921 clock_in Gnd 3.32fF
C922 q_c4 Gnd 0.34fF
C923 a_2741_n1467# Gnd 0.04fF
C924 a_2827_n1435# Gnd 0.44fF
C925 a_2783_n1435# Gnd 0.48fF
C926 c4 Gnd 0.06fF
C927 pdr4 Gnd 1.31fF
C928 a_1722_n1438# Gnd 0.23fF
C929 a_1761_n1379# Gnd 0.01fF
C930 a_1722_n1383# Gnd 0.12fF
C931 pdr3 Gnd 2.39fF
C932 pdr2 Gnd 2.36fF
C933 pdr1 Gnd 2.51fF
C934 a_1719_n1294# Gnd 0.49fF
C935 a_1758_n1235# Gnd 0.06fF
C936 a_1719_n1239# Gnd 0.05fF
C937 c3 Gnd 1.35fF
C938 prop_4 Gnd 0.05fF
C939 a_2435_n1234# Gnd 0.05fF
C940 a_2660_n1162# Gnd 0.01fF
C941 a_2616_n1162# Gnd 0.01fF
C942 a_2442_n1159# Gnd 0.49fF
C943 a_2439_n1195# Gnd 0.06fF
C944 iq_s4 Gnd 0.06fF
C945 q_s4 Gnd 0.52fF
C946 a_2580_n1162# Gnd 0.04fF
C947 a_2666_n1130# Gnd 0.44fF
C948 a_2622_n1130# Gnd 0.48fF
C949 s4 Gnd 0.73fF
C950 a_1718_n1162# Gnd 0.23fF
C951 a_1757_n1103# Gnd 0.06fF
C952 a_1718_n1107# Gnd 0.49fF
C953 c2 Gnd 0.08fF
C954 prop_3 Gnd 0.05fF
C955 q_a1 Gnd 18.38fF
C956 q_b1 Gnd 18.51fF
C957 q_a2 Gnd 18.53fF
C958 q_a3 Gnd 18.53fF
C959 q_b3 Gnd 18.73fF
C960 q_a4 Gnd 18.67fF
C961 q_b4 Gnd 18.93fF
C962 q_b2 Gnd 18.43fF
C963 a_2252_n1076# Gnd 0.05fF
C964 a_2466_n1004# Gnd 0.01fF
C965 a_2422_n1004# Gnd 0.01fF
C966 a_2259_n1001# Gnd 0.49fF
C967 a_2256_n1037# Gnd 0.06fF
C968 c1 Gnd 0.07fF
C969 prop_2 Gnd 14.82fF
C970 a_1635_n1023# Gnd 0.44fF
C971 a_1536_n1023# Gnd 0.44fF
C972 a_1440_n1023# Gnd 0.44fF
C973 a_1338_n1023# Gnd 0.44fF
C974 a_1234_n1024# Gnd 0.44fF
C975 a_1137_n1024# Gnd 0.44fF
C976 a_1035_n1024# Gnd 0.44fF
C977 a_928_n1024# Gnd 0.44fF
C978 iq_s3 Gnd 0.07fF
C979 q_s3 Gnd 0.53fF
C980 a_2386_n1004# Gnd 0.02fF
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
C1037 iq_s2 Gnd 0.07fF
C1038 q_s2 Gnd 0.50fF
C1039 a_2233_n875# Gnd 0.04fF
C1040 a_2319_n843# Gnd 0.44fF
C1041 a_2275_n843# Gnd 0.48fF
C1042 s2 Gnd 1.01fF
C1043 a_2299_n771# Gnd 0.01fF
C1044 a_2255_n771# Gnd 0.01fF
C1045 iq_s1 Gnd 0.07fF
C1046 q_s1 Gnd 0.53fF
C1047 a_2219_n771# Gnd 1.20fF
C1048 a_2305_n739# Gnd 0.44fF
C1049 a_2261_n739# Gnd 0.48fF
C1050 s1 Gnd 0.61fF
C1051 a_2083_n767# Gnd 0.05fF
C1052 a_2122_n708# Gnd 0.06fF
C1053 prop_1 Gnd 0.05fF
C1054 a_2083_n712# Gnd 0.04fF
C1055 carry_0 Gnd 5.83fF
C1056 w_1893_n1978# Gnd 1.19fF
C1057 w_1893_n1940# Gnd 0.97fF
C1058 w_1893_n1896# Gnd 0.97fF
C1059 w_1893_n1851# Gnd 0.97fF
C1060 vdd Gnd 16.00fF
C1061 w_1716_n1549# Gnd 0.58fF
C1062 w_1755_n1510# Gnd 2.28fF
C1063 w_1716_n1494# Gnd 0.58fF
C1064 w_2859_n1441# Gnd 0.97fF
C1065 w_2814_n1441# Gnd 0.97fF
C1066 w_2770_n1441# Gnd 0.97fF
C1067 w_2732_n1441# Gnd 0.67fF
C1068 w_1709_n1424# Gnd 0.58fF
C1069 w_1748_n1385# Gnd 1.05fF
C1070 w_1709_n1369# Gnd 0.58fF
C1071 w_2484_n1247# Gnd 0.58fF
C1072 w_2429_n1247# Gnd 0.41fF
C1073 w_1706_n1280# Gnd 0.58fF
C1074 w_1745_n1241# Gnd 2.28fF
C1075 w_1706_n1225# Gnd 0.58fF
C1076 w_2433_n1208# Gnd 2.28fF
C1077 w_2698_n1136# Gnd 0.97fF
C1078 w_2653_n1136# Gnd 0.97fF
C1079 w_2609_n1136# Gnd 0.97fF
C1080 w_2571_n1136# Gnd 0.67fF
C1081 w_1705_n1148# Gnd 0.58fF
C1082 w_2301_n1089# Gnd 0.58fF
C1083 w_2246_n1089# Gnd 0.58fF
C1084 w_1744_n1109# Gnd 2.28fF
C1085 w_1705_n1093# Gnd 0.58fF
C1086 w_2132_n1041# Gnd 0.53fF
C1087 w_2077_n1041# Gnd 0.36fF
C1088 w_2250_n1050# Gnd 2.28fF
C1089 w_1664_n1036# Gnd 0.97fF
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
C1129 w_2224_n849# Gnd 0.67fF
C1130 w_2337_n745# Gnd 0.97fF
C1131 w_2292_n745# Gnd 0.97fF
C1132 w_2248_n745# Gnd 0.97fF
C1133 w_2210_n745# Gnd 1.19fF
C1134 w_2070_n753# Gnd 0.53fF
C1135 w_2109_n714# Gnd 2.28fF
C1136 w_2070_n698# Gnd 0.58fF




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