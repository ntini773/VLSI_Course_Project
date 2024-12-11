.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N={10*LAMBDA}
.param width_P={2*WIDTH_N}
.global gnd vdd

* Voltage source for Vdd
Vdd vdd gnd {SUPPLY}
* Vin1 in1 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)  
* Vin2 in2 gnd pulse (0 {SUPPLY} 5ns 1ns 1ns 10ns 20ns)
va0 a0 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)
vb0 b0 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)
va1 a1 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)
vb1 b1 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)
va2 a2 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)
vb2 b2 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)
va3 a3 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)
vb3 b3 gnd pulse (0 {SUPPLY} 0ns 1ns 1ns 10ns 20ns)
vc0 c0 gnd pulse (0 {SUPPLY} 0n 1ns 1ns 10ns 20ns)

.subckt inverter in out vdd gnd 
M1 out in gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2 out in vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inverter


.subckt nor in1 in2 out vdd gnd
M1 temp1 in1 vdd vdd CMOSP W={4*width_N} L={2*LAMBDA}
+ AS={5*4*width_N*LAMBDA} PS={10*LAMBDA+8*width_N} AD={5*4*width_N*LAMBDA} PD={10*LAMBDA+8*width_N}
M2 out in2 temp1 vdd CMOSP W={4*width_N} L={2*LAMBDA}
+ AS={5*4*width_N*LAMBDA} PS={10*LAMBDA+8*width_N} AD={5*4*width_N*LAMBDA} PD={10*LAMBDA+8*width_N}

M3 out in1 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M4 out in2 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
.ends nor

.subckt or in1 in2 out vdd gnd
x777 in1 in2 temp1 vdd gnd nor
x778 temp1 out vdd gnd inverter
.ends or

.subckt nand in1 in2 out vdd gnd
M1 out in1 temp1 gnd CMOSN W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
M2 temp1 in2 gnd gnd CMOSN W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
M3 out in1 vdd vdd CMOSP W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
M4 out in2 vdd vdd CMOSP W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
.ends nand

.subckt and in1 in2 out vdd gnd
x1 in1 in2 temp1 vdd gnd nand
x2 temp1 out vdd gnd inverter
.ends and

.subckt xor in1 in2 out vdd gnd 
x1 in1 in1_bar vdd gnd inverter
x2 in2 in2_bar vdd gnd inverter
*pull up network for the xor gate
M1 temp1 in1 vdd vdd CMOSP W={4*width_N} L={2*LAMBDA}
+ AS={5*4*width_N*LAMBDA} PS={10*LAMBDA+8*width_N} AD={5*4*width_N*LAMBDA} PD={10*LAMBDA+8*width_N}
M2 temp1 in2 vdd vdd CMOSP W={4*width_N} L={2*LAMBDA}
+ AS={5*4*width_N*LAMBDA} PS={10*LAMBDA+8*width_N} AD={5*4*width_N*LAMBDA} PD={10*LAMBDA+8*width_N}
M3 out in1_bar temp1 vdd CMOSP W={4*width_N} L={2*LAMBDA}
+ AS={5*4*width_N*LAMBDA} PS={10*LAMBDA+8*width_N} AD={5*4*width_N*LAMBDA} PD={10*LAMBDA+8*width_N}
M4 out in2_bar temp1 vdd CMOSP W={4*width_N} L={2*LAMBDA}
+ AS={5*4*width_N*LAMBDA} PS={10*LAMBDA+8*width_N} AD={5*4*width_N*LAMBDA} PD={10*LAMBDA+8*width_N}
*pull down network for the xor gate
M5 out in2 temp2 gnd CMOSN W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
M6 out in2_bar temp3 gnd CMOSN W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
M7 temp2 in1 gnd gnd CMOSN W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
M8 temp3 in1_bar gnd gnd CMOSN W={2*width_N} L={2*LAMBDA}
+ AS={5*2*width_N*LAMBDA} PS={10*LAMBDA+4*width_N} AD={5*2*width_N*LAMBDA} PD={10*LAMBDA+4*width_N}
.ends xor



.subckt CLA_gen C0 G0 P0 G1 P1 G2 P2 G3 P3 C1 C2 C3 C4 vdd gnd
x101 P0 C0 t1 vdd gnd and 
*t1=P0.C0
X102 t1 G0 C1 vdd gnd or
x103 P1 G0 t2 vdd gnd and
*t2=P1.G0
X104 t1 P1 t3 vdd gnd and
*t3=P1.P0.C0
x105 t2 t3 t4 vdd gnd or 
X106 t4 G1 C2 vdd gnd or
x107 P2 t3 t5 vdd gnd and
*t5=P2.P1.P0.C0
X108 t2 P2 t6 vdd gnd and
*t6=P2.P1.G0
x109 P2 G1 t7 vdd gnd and
*t7=P2.G1
x110 t5 t6 t8 vdd gnd or 
x111 t8 t7 t9 vdd gnd or 
X112 t9 G2 C3 vdd gnd or
x113 p3 t5 t10 vdd gnd and
*t10=P3.P2.P1.P0.C0
x114 t6 P3 t11 vdd gnd and
*t11=P3.P2.P1.G0
x115 t7 P3 t12 vdd gnd and
*t12=P3.P2.G1
x116 P3 G2 t13 vdd gnd and
*t13=P3.G2
x117 t10 t11 t14 vdd gnd or
x118 t14 t12 t15 vdd gnd or
x119 t15 t13 t16 vdd gnd or
x120 t16 G3 C4 vdd gnd or
.ends CLA_gen

*main circuit starts here
X1 A0 B0 G0 vdd gnd and
x002 A0 B0 P0 vdd gnd xor
x003 A1 B1 G1 vdd gnd and
x004 A1 B1 P1 vdd gnd xor
x005 A2 B2 G2 vdd gnd and
x006 A2 B2 P2 vdd gnd xor
x007 A3 B3 G3 vdd gnd and
x008 A3 B3 P3 vdd gnd xor

x009 C0 G0 P0 G1 P1 G2 P2 G3 P3 C1 C2 C3 C4 vdd gnd CLA_gen

x010 P0 C0 S0 vdd gnd xor
x011 P1 C1 S1 vdd gnd xor
x012 P2 C2 S2 vdd gnd xor
x013 P3 C3 S3 vdd gnd xor

* x777 p0 c0 t1 vdd gnd and
* x778 t1 g0 t2 vdd gnd or

.tran 0.01n 100n 
.ic v(a0)=0
.ic v(b0)=0
.ic v(a1)=0
.ic v(b1)=0
.ic v(a2)=0
.ic v(b2)=0
.ic v(a3)=0
.ic v(b3)=0
.ic v(c0)=0
.ic v(g0)=0
.ic v(p0)=0
.ic v(s0)=0
.ic v(s1)=0
.ic v(s2)=0
.ic v(s3)=0
.ic v(g1)=0
.ic v(g2)=0
.ic v(g3)=0
.ic v(p1)=0
.ic v(p2)=0
.ic v(p3)=0
.ic v(c1)=0
.ic v(c2)=0
.ic v(c3)=0
.ic v(c4)=0

* Measure delay from V(G) to V(B) reaching 50% of supply
.measure tran tpd TRIG V(b1) VAL={SUPPLY/2} FALL=2 TARG V(s1) VAL={SUPPLY/2} FALL=2

.control
run
set hcopypscolor = 1 *White background for saving plots
set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
set color1=black ** color1 is used to set the grid color of the plot (manual sec:17.7
* Plot input and output waveforms
plot v(b0) v(s0)+1.8 v(b1)+3.6 v(s1)+5.4 v(b2)+7.2 v(s2)+9 v(b3)+10.8 v(s3)+12.6
.endc