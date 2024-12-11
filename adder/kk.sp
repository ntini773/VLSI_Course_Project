Trying

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={15*20*LAMBDA}
.param width_P={2.5*20*LAMBDA}
.global gnd vdd

vdd vdd gnd 1.8 
.param Ton = 5000n

* V1 prop_1 0 1.8
* v2 prop_2 0 1.8
* v3 prop_3 0 1.8
* v4 prop_4 0 1.8
* V5 gen_1 0 0
* v6 gen_2 0 0
* v7 gen_3 0 0
* v8 gen_4 0 0

* V9 carry_0 0 1.8
* V10 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton})  

V1 prop_1 0 pulse(0 1.8 0 0 0 {2*Ton} {4*Ton})
v2 prop_2 0 pulse(0 1.8 0 0 0 {3*Ton} {6*Ton})
v3 prop_3 0 pulse(0 1.8 0 0 0 {4*Ton} {8*Ton})
v4 prop_4 0 pulse(0 1.8 0 0 0 {5*Ton} {10*Ton})

V5 gen_1 0 pulse(0 1.8 0 0 0 {6*Ton} {12*Ton})
v6 gen_2 0 pulse(0 1.8 0 0 0 {7*Ton} {14*Ton})
v7 gen_3 0 pulse(0 1.8 0 0 0 {8*Ton} {16*Ton})
v8 gen_4 0 pulse(0 1.8 0 0 0 {9*Ton} {18*Ton})

V9 carry_0 0 1.8
V10 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton})  

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


.tran 1n {15*Ton}
.print tran v(prop_1) v(clock_in) 2+v(prop_2) 2+v(clock_in) 4+v(prop_3) 4+v(clock_in) 6+v(prop_4) 6+v(clock_in)

.control
set hcopypscolor = grey *White background for saving plots
set color0=black ** color0 is used to set the background of the plot (manual sec:17.7))
set color1=white ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
plot v(prop_1) v(clock_in) 2+v(prop_2) 2+v(clock_in) 4+v(prop_3) 4+v(clock_in) 6+v(prop_4) 6+v(clock_in) 
plot v(gen_1) v(clock_in) 2+v(gen_2) 2+v(clock_in) 4+v(gen_3) 4+v(clock_in) 6+v(gen_4) 6+v(clock_in)
plot v(pdr1) 2+v(pdr2) 4+v(pdr3) 6+v(pdr4) 8+v(clock_in)
* plot v(c1) 2+v(c2)   4+v(c3)   6+v(c4) 8+v(clock_in) 
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