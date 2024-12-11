* SPICE3 file created from cla_try3.ext - technology: scmos

.option scale=0.09u

M1000 clock_car0 gen_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=3000 pd=1260 as=1500 ps=630
M1001 c1 pdr1 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=1000 ps=460
M1002 pdr1 prop_2 pdr2 Gnd CMOSN w=100 l=2
+  ad=1500 pd=630 as=0 ps=0
M1003 clock_car0 gen_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1004 c3 pdr3 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=2000 ps=890
M1005 gnd clock_in clock_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1006 clock_car0 gen_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1007 pdr1 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1008 c2 pdr2 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1009 c1 pdr1 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1010 clock_car0 carry_0 prop1_car0 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1000 ps=420
M1011 c4 pdr4 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1012 pdr2 prop_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=1500 ps=630
M1013 clock_in clk_org gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1014 pdr3 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1015 pdr3 prop_4 pdr4 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1016 c4 pdr4 vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1017 pdr2 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1018 prop1_car0 prop_1 pdr1 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1019 c3 pdr3 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
M1020 clock_in clk_org vdd vdd CMOSP w=40 l=2
+  ad=200 pd=90 as=0 ps=0
M1021 pdr4 clock_in vdd vdd CMOSP w=50 l=2
+  ad=250 pd=110 as=0 ps=0
M1022 clock_car0 gen_3 pdr3 Gnd CMOSN w=100 l=2
+  ad=0 pd=0 as=0 ps=0
M1023 c2 pdr2 gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=0 ps=0
C0 pdr4 pdr3 1.03fF
C1 clock_in vdd 0.74fF
C2 pdr3 pdr2 1.03fF
C3 pdr1 vdd 0.68fF
C4 clock_in gnd 0.21fF
C5 clock_car0 gnd 1.03fF
C6 pdr1 gnd 0.05fF
C7 clk_org vdd 0.06fF
C8 pdr4 c4 0.07fF
C9 clk_org gnd 0.05fF
C10 c3 vdd 0.48fF
C11 c2 vdd 0.48fF
C12 pdr1 clock_car0 1.03fF
C13 prop1_car0 pdr1 1.03fF
C14 prop1_car0 clock_car0 1.03fF
C15 c3 gnd 0.21fF
C16 pdr4 vdd 0.68fF
C17 c2 gnd 0.21fF
C18 pdr2 vdd 0.68fF
C19 pdr4 gnd 0.05fF
C20 clk_org clock_in 0.07fF
C21 pdr2 gnd 0.05fF
C22 pdr3 vdd 0.68fF
C23 pdr4 clock_car0 1.03fF
C24 pdr1 pdr2 1.03fF
C25 pdr2 clock_car0 1.03fF
C26 pdr3 gnd 0.05fF
C27 c1 vdd 0.48fF
C28 c1 gnd 0.21fF
C29 c4 vdd 0.48fF
C30 pdr3 clock_car0 1.03fF
C31 c4 gnd 0.21fF
C32 c2 pdr2 0.07fF
C33 c1 pdr1 0.07fF
C34 c3 pdr3 0.07fF
C35 gnd Gnd 0.41fF
C36 c4 Gnd 0.06fF
C37 c3 Gnd 0.06fF
C38 c2 Gnd 0.06fF
C39 c1 Gnd 0.06fF
C40 pdr4 Gnd 0.57fF
C41 pdr3 Gnd 0.71fF
C42 pdr2 Gnd 0.71fF
C43 pdr1 Gnd 0.48fF
C44 clock_car0 Gnd 0.82fF
C45 gen_4 Gnd 0.30fF
C46 gen_3 Gnd 0.30fF
C47 prop_4 Gnd 0.30fF
C48 gen_2 Gnd 0.30fF
C49 prop_3 Gnd 0.30fF
C50 gen_1 Gnd 0.30fF
C51 prop_2 Gnd 0.31fF
C52 prop1_car0 Gnd 0.27fF
C53 clock_in Gnd 1.81fF
C54 carry_0 Gnd 0.30fF
C55 prop_1 Gnd 0.30fF
C56 clk_org Gnd 0.25fF
C57 vdd Gnd 12.48fF
