

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={15*20*LAMBDA}
.param width_P={2.5*width_N}
.global gnd vdd

.param T=20n
vclk clk gnd pulse({SUPPLY} 0 {0.4*T} 0n 0n {T/2} {T})
va0 a0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})   
va1 a1 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {2*T} {4*T}) 
va2 a2 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {4*T} {8*T}) 
va3 a3 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {8*T} {16*T})

vb0 b0 gnd pulse (0 {SUPPLY} 0n 0ns 0ns {T} {2*T})   
vb1 b1 gnd DC 0                                     
vb2 b2 gnd DC 0                                     
vb3 b3 gnd DC 0                                       
vc0 c0 gnd pulse (0 1.8 0n 0ns 0ns {T} {2*T})

* V1 a0 0 PULSE(0 1.8 0ns 0ns 0ns 20000ns 40000ns)  ; Toggle every 40 µs (wider pulse)
* V2 a1 0 PULSE(0 1.8 0ns 0ns 0ns 15000ns 30000ns)  ; Toggle every 30 µs (moderate pulse width)
* V3 a2 0 PULSE(0 1.8 0ns 0ns 0ns 8000ns 16000ns)   ; Toggle every 16 µs (narrow pulse width)
* V4 a3 0 PULSE(0 1.8 0ns 0ns 0ns 4000ns 8000ns)    ; Toggle every 8 µs (narrowest pulse width)

* V5 b3 0 PULSE(0 1.8 0ns 0ns 0ns 18000ns 36000ns)  ; Toggle every 70 µs (alternate wider pulse)
* V6 b2 0 PULSE(0 1.8 0ns 0ns 0ns 35000ns 70000ns)  ; Toggle every 36 µs (alternate moderate pulse)
* V7 b1 0 PULSE(0 1.8 0ns 0ns 0ns 6000ns 12000ns)   ; Toggle every 24 µs (alternate narrow pulse)
* V8 b0 0 PULSE(0 1.8 0ns 0ns 0ns 12000ns 24000ns)  ; Toggle every 12 µs (alternate narrowest pulse)

* V9 c0 gnd 1.8
* vclk clk gnd PULSE(0 1.8 0 0 0 2300n 4600n)

* .subckt and_dynamic A B clk out vdd gnd
* * Subcircuit Body

* M1 n12 A vdd vdd CMOSP W={width_P} L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
* M2 n12 B vdd vdd CMOSP W={width_P} L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* M3 n12 clk n34 vdd CMOSP W={width_P} L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* M4 n34 A n45 gnd CMOSN W={width_N} L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* M5 n45 B gnd gnd CMOSN W={width_N} L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* M6 n67 n34 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* M7 n67 clk n78 vdd CMOSP W={width_P} L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* M8 n78 n34 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* M9 n910 n78 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* M10 n910 clk n1011 gnd CMOSN W={width_N} L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* M11 n1011 n78 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* M12 out n910 vdd vdd CMOSP W={width_P} L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* M13 out clk n1314 gnd CMOSN W={width_N} L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* M14 n1314 n910 gnd gnd CMOSN W={width_N} L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* .ends and_dynamic

.subckt and_dynamic A B clk out vdd gnd
.param lam=0.09u
.param WIDTH_P='40*lam'
.param WIDTH_N='20*lam'

.subckt nmos d g s b W='N'
.param width_N={W}
M1 d g s b CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N}
+ AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
.ends nmos

.subckt pmos d g s b W='P'
.param width_P={W}
M1 d g s b CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P}
+ AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends pmos

x1 m13 A vdd vdd pmos W={WIDTH_P}
x2 m13 B vdd vdd pmos W={WIDTH_P}
x3 m34 clk m13 m13 pmos W={WIDTH_P}
x4 m34 A m45 m45 nmos W={WIDTH_N}
x5 m45 B gnd gnd nmos W={WIDTH_N}

x6 m67 m34 vdd vdd pmos W={WIDTH_P}
x7 m78 clk m67 m67 pmos W={WIDTH_P}
x8 m78 m34 gnd gnd nmos W={WIDTH_N}

x9 m910 m78 vdd vdd pmos W={WIDTH_P}
x10 m910 clk m1011 m1011 nmos W={WIDTH_N}
x11 m1011 m78 gnd gnd nmos W={WIDTH_N}

x12 out m910 vdd vdd pmos W={WIDTH_P}
x13 out clk m1314 m1314 nmos W={WIDTH_N}
x14 m1314 m910 gnd gnd nmos W={WIDTH_N}

.ends and_dynamic

.subckt inv x y vdd gnd P ='a'  N = 'b'

M1 y x gnd gnd CMOSN W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}
M2 y x vdd vdd CMOSP W='P' L=0.18u
+ AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}
.ends inv

.subckt xor_dynamic A B clk out vdd gnd
* Subcircuit Body

X1 A A_bar vdd gnd inv P='width_P' N='width_N'
X2 B B_bar vdd gnd inv P='width_P' N='width_N'

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

.subckt cla_karthik C0 G0 P0 G1 P1 G2 P2 G3 P3 C1 C2 C3 C4 vdd gnd clock_org
* Subcircuit Body

.subckt NOT_gate x y vdd gnd N='a'
.param width_Nn={N}
.param width_Pp={2.5*width_Nn}
M1      y       x       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
+ AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}
M2      y       x       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
+ AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}
.ends NOT_gate


x1 clk_org clock_in vdd gnd NOT_gate N='20*LAMBDA'


Mp1      pdr1       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Mp2      pdr2       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Mp3      pdr3       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Mp4      pdr4       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* NMOS doing

Mn5      pdr1       prop_1       prop1_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Mn6      prop1_car0       carry_0       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Mn7      clock_car0       clock_in       gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
* done

Mn8      pdr2       prop_2       pdr1     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Mn9      pdr1       gen_1       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* done

Mn10      pdr3       prop_3       pdr2     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Mn11      pdr2       gen_2       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* done

Mn12      pdr4       prop_4       pdr3     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Mn13      pdr3       gen_3       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* done

Mn14      pdr4       gen_4       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

*done

x2 prd1 c1 vdd gnd NOT_gate N='20*LAMBDA'
x3 prd2 c2 vdd gnd NOT_gate N='20*LAMBDA'
x4 prd3 c3 vdd gnd NOT_gate N='20*LAMBDA'
x5 prd4 c4 vdd gnd NOT_gate N='20*LAMBDA'

.ends cla_karthik


.subckt cla C0 G0 P0 G1 P1 G2 P2 G3 P3 C1 C2 C3 C4 vdd gnd
* Subcircuit Body
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


M13 c c0 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}


M9 c0b g0 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M10 c1b g1 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M11 c2b g2 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

M12 c3b g3 gnd gnd CMOSN  W='N' L=0.18u
+ AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}

x10 c0b c1 vdd gnd inv P='width_P' N='width_N'
x11 c1b c2 vdd gnd inv P='width_P' N='width_N'
x12 c2b c3 vdd gnd inv P='width_P' N='width_N'
x13 c3b c4 vdd gnd inv P='3*width_P' N='width_N'
.ends cla

* X1 A0 B0 clk G0 vdd gnd and_dynamic
* E_unity_gain_amp G0 0 G00 0 1 
* x002 A0 B0 clk P0 vdd gnd xor_dynamic
* E_unity_gain_amp P0 0 P00 0 1 
* x003 A1 B1 clk G1 vdd gnd and_dynamic
* E_unity_gain_amp G1 0 G10 0 1 
* x004 A1 B1 clk P1 vdd gnd xor_dynamic
* E_unity_gain_amp P1 0 P10 0 1 
* x005 A2 B2 clk G2 vdd gnd and_dynamic
* E_unity_gain_amp G2 0 G20 0 1 
* x006 A2 B2 clk P2 vdd gnd xor_dynamic
* E_unity_gain_amp P2 0 P20 0 1 
* x007 A3 B3 clk G3 vdd gnd and_dynamic
* E_unity_gain_amp G3 0 G30 0 1 
* x008 A3 B3 clk P3 vdd gnd xor_dynamic
* E_unity_gain_amp P3 0 P30 0 1 

X1 A0 B0 clk G0 vdd gnd and_dynamic
* E_unity_gain_amp_G0 G0 0 G00 0 1  
x002 A0 B0 clk P0 vdd gnd xor_dynamic
* E_unity_gain_amp_P0 P0 0 P00 0 1  
x003 A1 B1 clk G1 vdd gnd and_dynamic
* E_unity_gain_amp_G1 G1 0 G10 0 1  
x004 A1 B1 clk P1 vdd gnd xor_dynamic
* E_unity_gain_amp_P1 P1 0 P10 0 1  
x005 A2 B2 clk G2 vdd gnd and_dynamic
* E_unity_gain_amp_G2 G2 0 G20 0 1  
x006 A2 B2 clk P2 vdd gnd xor_dynamic
* E_unity_gain_amp_P2 P2 0 P20 0 1  
x007 A3 B3 clk G3 vdd gnd and_dynamic
* E_unity_gain_amp_G3 G3 0 G30 0 1  
x008 A3 B3 clk P3 vdd gnd xor_dynamic
* E_unity_gain_amp_P3 P3 0 P30 0 1  


x009 C0 G0 P0 G1 P1 G2 P2 G3 P3 C1 C2 C3 C4 vdd gnd clk cla_karthik
* x009 C0 G00 P00 G10 P10 G20 P20 G30 P30 C1 C2 C3 C4 vdd gnd cla

x010 P0 C0 clk S0 vdd gnd xor_dynamic
x011 P1 C1 clk S1 vdd gnd xor_dynamic
x012 P2 C2 clk S2 vdd gnd xor_dynamic
x013 P3 C3 clk S3 vdd gnd xor_dynamic
.tran {0.1*T} {16*T}
.control
set hcopypscolor = 1 *White background for saving plots
set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
set curplottitle="rod-2023112014"

* plot v(clk) 2+v(a0) 4+v(b0) 6+v(c0) v(s0)+8  v(c1)+10
* plot  v(clk) 2+v(a1) 4+v(b1) 6+v(c1) v(s1)+8 v(c2)+10
* plot v(clk) 2+v(a2) 4+v(b2) 6+v(c2) v(s2)+8 v(c3)+10
* plot v(clk) 2+v(a3) 4+v(b3) 6+v(c3) v(s3)+8 v(c4)+10
* plot v(clk) v(p0) v(p1) v(p2) v(p3)
plot v(clk) v(g0) v(g1) v(g2) v(g3)
.endc
