
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N=0.9u
.param width_P={2.5*width_N}
.param P=0.5*width_N
.param N=15*width_N
.global gnd vdd

VDS high gnd 1.8
vdd vdd gnd 1.8
* VGS 	G 	gnd  0V
.subckt inv x y vdd gnd P ='a'  N = 'b'

M1 y x gnd gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}
M2 y x vdd vdd CMOSP W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}
.ends inv

.subckt and2 a b y vdd gnd P='a' N='b'
M1 y1 a vdd vdd CMOSP  W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M2 y1 b vdd vdd CMOSP  W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M3 y1 a c gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N} 

M4 c b gnd gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

x1 y1 y vdd gnd inv P='P' N='N'

.ends



.subckt xor2 a b y vdd gnd P='a' N='b'
x2 a abar vdd gnd inv P='P' N='N'
x3 b bbar  vdd gnd inv P='P' N='N'
M1 c1 a vdd vdd CMOSP  W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M2 y bbar c1 vdd CMOSP  W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M3 c2 abar vdd vdd CMOSP  W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M4 y b c2 vdd CMOSP  W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*N} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}


M5 y a c3 gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M6 c3 b gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M7 y abar c4 gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M8 c4 bbar gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

.ends



.subckt dff d q clk vdd gnd P='a' N='b'
M1 x d gnd gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M2 x clk c1 vdd  CMOSP W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M3 c1 D vdd vdd CMOSP W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M4 c2 clk gnd gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M5 y x c2 gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M6 y clk vdd vdd CMOSP W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M7 c3 y gnd gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M8 qb clk c3 gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M9 qb y vdd vdd CMOSP W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

x1 qb q vdd gnd inv P='P' N='N'
.ends



//main code starts

V1 a0 0 PULSE(0 1.8 0ns 0ns 0ns 20000ns 40000ns)  ; Toggle every 40 µs (wider pulse)
V2 a1 0 PULSE(0 1.8 0ns 0ns 0ns 15000ns 30000ns)  ; Toggle every 30 µs (moderate pulse width)
V3 a2 0 PULSE(0 1.8 0ns 0ns 0ns 8000ns 16000ns)   ; Toggle every 16 µs (narrow pulse width)
V4 a3 0 PULSE(0 1.8 0ns 0ns 0ns 4000ns 8000ns)    ; Toggle every 8 µs (narrowest pulse width)

V5 b3 0 PULSE(0 1.8 0ns 0ns 0ns 18000ns 36000ns)  ; Toggle every 70 µs (alternate wider pulse)
V6 b2 0 PULSE(0 1.8 0ns 0ns 0ns 35000ns 70000ns)  ; Toggle every 36 µs (alternate moderate pulse)
V7 b1 0 PULSE(0 1.8 0ns 0ns 0ns 6000ns 12000ns)   ; Toggle every 24 µs (alternate narrow pulse)
V8 b0 0 PULSE(0 1.8 0ns 0ns 0ns 12000ns 24000ns)  ; Toggle every 12 µs (alternate narrowest pulse)

V9 cind gnd 1.8
v10 clk gnd PULSE(0 1.8 0 0 0 2300n 4600n)

* V1 a0d 0 1.8
* v2 a1d 0 1.8
* v3 a2d 0 1.8
* v4 a3d 0 1.8
* V5 b0d 0 0
* v6 b1d 0 0
* v7 b2d 0 0
* v8 b3d 0 0

x18 a0d a0 clk vdd gnd dff P='width_P' N='width_N' 
x19 a1d a1 clk vdd gnd dff P='width_P' N='width_N' 
x20 a2d a2 clk vdd gnd dff P='width_P' N='width_N' 
x21 a3d a3 clk vdd gnd dff P='width_P' N='width_N' 
x22 b0d b0 clk vdd gnd dff P='width_P' N='width_N' 
x23 b1d b1 clk vdd gnd dff P='width_P' N='width_N' 
x24 b2d b2 clk vdd gnd dff P='width_P' N='width_N' 
x25 b3d b3 clk vdd gnd dff P='width_P' N='width_N' 
x26 cind cin clk vdd gnd dff P='width_P' N='width_N' 



 
x2 a0 b0 g0 vdd gnd and2 P='width_P' N='width_N'
x3 a1 b1 g1 vdd gnd and2 P='width_P' N='width_N'
x4 a2 b2 g2 vdd gnd and2 P='width_P' N='width_N'
x5 a3 b3 g3 vdd gnd and2 P='width_P' N='width_N'

x6 a0 b0 p0 vdd gnd xor2 P='width_P' N='width_N'
x7 a1 b1 p1 vdd gnd xor2 P='width_P' N='width_N'
x8 a2 b2 p2 vdd gnd xor2 P='width_P' N='width_N'
x9 a3 b3 p3 vdd gnd xor2 P='width_P' N='width_N'

M1 c3b gnd vdd vdd CMOSP  W='width_P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M2 c2b gnd vdd vdd CMOSP  W='width_P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M3 c1b gnd vdd vdd CMOSP  W='width_P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M4 c0b gnd vdd vdd CMOSP  W='width_P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}

M5 c3b p3 c2b gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M6 c2b p2 c1b gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M7 c1b p1 c0b gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M8 c0b p0 c gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}


M13 c cin gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}


M9 c0b g0 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M10 c1b g1 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M11 c2b g2 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M12 c3b g3 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

x10 c0b c0 vdd gnd inv P='width_P' N='width_N'
x11 c1b c1 vdd gnd inv P='width_P' N='width_N'
x12 c2b c2 vdd gnd inv P='width_P' N='width_N'
x13 c3b c3 vdd gnd inv P='3*width_P' N='width_N'

x14 p0 cin s0 vdd gnd xor2 P='width_P' N='width_N'
x15 p1 c0 s1 vdd gnd xor2 P='width_P' N='width_N'
x16 p2 c1 s2 vdd gnd xor2 P='width_P' N='width_N'
x17 p3 c2 s3 vdd gnd xor2 P='width_P' N='width_N'

x28 s0 s0d clk vdd gnd dff P='width_P' N='width_N' 
x29 s1 s1d clk vdd gnd dff P='width_P' N='width_N' 
x30 s2 s2d clk vdd gnd dff P='width_P' N='width_N' 
x31 s3 s3d clk vdd gnd dff P='width_P' N='width_N' 
x32 c3 coutd clk vdd gnd dff P='width_P' N='width_N' 


.tran 1n 64000n

.control
set hcopypscolor = 1 *White background for saving plots
set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
set curplottitle="bhargav-2023112014"

plot v(a0d) 2+v(a1d) 4+v(a2d) 6+v(a3d) 8+v(clk)
plot v(b0d) 2+v(b1d) 4+v(b2d) 6+v(b3d) 8+v(clk)
plot v(s0d) 8+v(coutd) 6+v(s3d) 4+v(s2d) 2+v(s1d)  10+v(clk)
plot v(c0) 2+v(c1) 4+v(c2) 6+v(c3)
plot v(g0) v(g1) v(g2) v(g3)
.endc