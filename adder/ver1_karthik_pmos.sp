* SPICE3 file created from ver1.ext - technology: scmos

.option scale=0.09u

M1000 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1001 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1002 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=2000 ps=890
M1003 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=1000 ps=420
M1004 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=0 ps=0
M1005 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1006 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1008 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1009 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1010 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1011 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1012 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1013 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1014 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1015 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1017 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1018 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1019 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1020 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1021 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1022 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1023 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
C0 vdd c3 0.48fF
C1 vdd clk_org 0.06fF
C2 pdr3 pdr4 1.03fF
C3 prop_3 pdr3 0.02fF
C4 gnd pdr4 0.05fF
C5 prop_2 pdr2 0.02fF
C6 gen_1 pdr1 0.02fF
C7 gnd pdr1 0.05fF
C8 clock_in gnd 0.21fF
C9 pdr4 clock_car0 1.03fF
C10 c2 pdr2 0.07fF
C11 c4 gnd 0.21fF
C12 pdr1 clock_car0 1.03fF
C13 clock_in clock_car0 0.02fF
C14 c1 gnd 0.21fF
C15 vdd pdr2 0.68fF
C16 clk_org clock_in 0.07fF
C17 vdd c2 0.48fF
C18 gnd pdr3 0.05fF
C19 pdr1 pdr2 1.03fF
C20 prop1_car0 pdr1 1.03fF
C21 prop_4 pdr4 0.02fF
C22 gen_3 pdr3 0.02fF
C23 c3 pdr3 0.07fF
C24 prop_1 pdr1 0.02fF
C25 pdr3 clock_car0 1.03fF
C26 vdd pdr4 0.68fF
C27 c3 gnd 0.21fF
C28 gnd clock_car0 1.03fF
C29 clk_org gnd 0.05fF
C30 vdd pdr1 0.68fF
C31 vdd clock_in 0.74fF
C32 vdd c4 0.48fF
C33 vdd c1 0.48fF
C34 pdr2 pdr3 1.03fF
C35 gen_4 pdr4 0.02fF
C36 gnd pdr2 0.05fF
C37 c4 pdr4 0.07fF
C38 carry_0 prop1_car0 0.02fF
C39 pdr2 clock_car0 1.03fF
C40 gen_2 pdr2 0.02fF
C41 c2 gnd 0.21fF
C42 c1 pdr1 0.07fF
C43 vdd pdr3 0.68fF
C44 prop1_car0 clock_car0 1.03fF
C45 clock_car0 Gnd 0.77fF
C46 pdr4 Gnd 0.52fF
C47 pdr3 Gnd 0.65fF
C48 pdr2 Gnd 0.42fF
C49 pdr1 Gnd 0.65fF
C50 gnd Gnd 0.43fF
C51 prop1_car0 Gnd 0.26fF
C52 gen_4 Gnd 0.25fF
C53 gen_3 Gnd 0.25fF
C54 prop_4 Gnd 0.25fF
C55 gen_2 Gnd 0.28fF
C56 prop_3 Gnd 0.25fF
C57 gen_1 Gnd 0.25fF
C58 prop_2 Gnd 0.28fF
C59 clock_in Gnd 1.77fF
C60 carry_0 Gnd 0.25fF
C61 prop_1 Gnd 0.25fF
C62 c4 Gnd 0.06fF
C63 c3 Gnd 0.06fF
C64 c2 Gnd 0.06fF
C65 c1 Gnd 0.06fF
C66 clk_org Gnd 0.25fF
C67 vdd Gnd 11.58fF
