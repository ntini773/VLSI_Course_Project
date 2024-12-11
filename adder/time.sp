
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
.param T=0.5n
* vclk clk gnd pulse({SUPPLY} 0 {0.4*T} 0n 0n {T/2} {T})
* va0 a0 gnd pulse (0 1.8 0n 1ns 1ns 10ns 20ns)
* vb0 b0 gnd pulse (0` 1.8 0n 1ns 1ns 10ns 20ns)
* va1 a1 gnd pulse (0 1.8 0n 1ns 1ns 10ns 20ns)
* vb1 b1 gnd pulse (0 1.8 0n 1ns 1ns 10ns 20ns)
* va2 a2 gnd pulse (0 1.8 0n 1ns 1ns 10ns 20ns)
* vb2 b2 gnd pulse (0 1.8 0n 1ns 1ns 10ns 20ns)
* va3 a3 gnd pulse (0 1.8 0n 1ns 1ns 10ns 20ns)
* vb3 b3 gnd pulse (0 1.8 0ns 1ns 1ns 10ns 20ns)
* vc0 c0 gnd pulse (0 1.8 0n 1ns 1ns 10ns 20ns)
* va0 a0 gnd DC 0
* vb0 b0 gnd DC 1.8
* va1 a1 gnd DC 0
* vb1 b1 gnd DC 0
* va2 a2 gnd DC 1.8
* vb2 b2 gnd DC 1.8
* va3 a3 gnd DC 1.8
* vb3 b3 gnd DC 1.8
* vc0 c0 gnd DC 0

* va0 a0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* vb0 b0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* va1 a1 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* vb1 b1 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* va2 a2 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* vb2 b2 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* va3 a3 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* vb3 b3 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})
* vc0 c0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {256*T} {512*T})

* va0 a0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})   
* va1 a1 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {2*T} {4*T}) 
* va2 a2 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {4*T} {8*T}) 
* va3 a3 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {8*T} {16*T})

* vb0 b0 gnd pulse(0 {SUPPLY} 0n 1ns 1ns {T} {2*T})   
* vb1 b1 gnd DC 0                                      
* vb2 b2 gnd DC 0                                      
* vb3 b3 gnd DC 0                                      
* vc0 c0 gnd pulse(0 {SUPPLY} 0n 0ns 0ns {T} {2*T}) 

* va0 a0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})   
* va1 a1 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {2*T} {4*T}) 
* va2 a2 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {4*T} {8*T}) 
* va3 a3 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {8*T} {16*T})

* vb0 b0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})   
* vb1 b1 gnd DC 0                                     
* vb2 b2 gnd DC 0                                     
* vb3 b3 gnd DC 0                                       
* vc0 c0 gnd pulse (0 1.8 0n 0ns 0ns {T} {2*T})

V1 a0 0 PULSE(0 1.8 0ns 0ns 0ns 20000ns 40000ns)  ; Toggle every 40 µs (wider pulse)
V2 a1 0 PULSE(0 1.8 0ns 0ns 0ns 15000ns 30000ns)  ; Toggle every 30 µs (moderate pulse width)
V3 a2 0 PULSE(0 1.8 0ns 0ns 0ns 8000ns 16000ns)   ; Toggle every 16 µs (narrow pulse width)
V4 a3 0 PULSE(0 1.8 0ns 0ns 0ns 4000ns 8000ns)    ; Toggle every 8 µs (narrowest pulse width)

V5 b3 0 PULSE(0 1.8 0ns 0ns 0ns 18000ns 36000ns)  ; Toggle every 70 µs (alternate wider pulse)
V6 b2 0 PULSE(0 1.8 0ns 0ns 0ns 35000ns 70000ns)  ; Toggle every 36 µs (alternate moderate pulse)
V7 b1 0 PULSE(0 1.8 0ns 0ns 0ns 6000ns 12000ns)   ; Toggle every 24 µs (alternate narrow pulse)
V8 b0 0 PULSE(0 1.8 0ns 0ns 0ns 12000ns 24000ns)  ; Toggle every 12 µs (alternate narrowest pulse)

V9 c0 gnd 1.8
vclk clk gnd PULSE(0 1.8 0 0 0 2300n 4600n)

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

.subckt and_dynamic A B clk out vdd gnd
* Subcircuit Body

M1 n12 A vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M2 n12 B vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M3 n12 clk n34 vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M4 n34 A n45 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M5 n45 B gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M6 n67 n34 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M7 n67 clk n78 vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M8 n78 n34 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M9 n910 n78 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M10 n910 clk n1011 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M11 n1011 n78 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M12 out n910 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M13 out clk n1314 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M14 n1314 n910 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.ends and_dynamic

.subckt xor_dynamic A B clk out vdd gnd
* Subcircuit Body

X1 A A_bar vdd gnd inverter
X2 B B_bar vdd gnd inverter

*Updated XOR PUN
Ma ad B_bar vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
Mb bc A vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
Mc n12 B bc bc CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
Md n12 A_bar ad ad CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M3 n12 clk n34 vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

*Updated XOR PDN
Me n34 A_bar eh eh CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
Mf n34 A fg fg CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
Mg fg B_bar gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
Mh eh B gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}


M6 n67 n34 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M7 n67 clk n78 vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M8 n78 n34 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M9 n910 n78 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M10 n910 clk n1011 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M11 n1011 n78 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M12 out n910 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

M13 out clk n1314 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

M14 n1314 n910 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

.ends xor_dynamic



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
X1 A0 B0 clk G0 vdd gnd and_dynamic
x002 A0 B0 clk P0 vdd gnd xor_dynamic
x003 A1 B1 clk G1 vdd gnd and_dynamic
x004 A1 B1 clk P1 vdd gnd xor_dynamic
x005 A2 B2 clk G2 vdd gnd and_dynamic
x006 A2 B2 clk P2 vdd gnd xor_dynamic
x007 A3 B3 clk G3 vdd gnd and_dynamic
x008 A3 B3 clk P3 vdd gnd xor_dynamic

x009 C0 G0 P0 G1 P1 G2 P2 G3 P3 C1 C2 C3 C4 vdd gnd CLA_gen

x010 P0 C0 clk S0 vdd gnd xor_dynamic
x011 P1 C1 clk S1 vdd gnd xor_dynamic
x012 P2 C2 clk S2 vdd gnd xor_dynamic
x013 P3 C3 clk S3 vdd gnd xor_dynamic

* x777 p0 c0 t1 vdd gnd and
* x778 t1 g0 t2 vdd gnd or

* .tran {0.1*T} {18*T} 
.tran 1n 64000n
.PRINT TRAN V(s0) V(s1) V(s2) V(s3)
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
* .measure tran tpd TRIG V(b1) VAL={SUPPLY/2} FALL=2 TARG V(s1) VAL={SUPPLY/2} FALL=2

.control
run

* Plot input and output waveforms
plot v(clk) 2+v(a0) 4+v(b0) 6+v(c0) v(s0)+8  v(c1)+10
plot  v(clk) 2+v(a1) 4+v(b1) 6+v(c1) v(s1)+8 v(c2)+10
plot v(clk) 2+v(a2) 4+v(b2) 6+v(c2) v(s2)+8 v(c3)+10
plot v(clk) 2+v(a3) 4+v(b3) 6+v(c3) v(s3)+8 v(c4)+10

.endc