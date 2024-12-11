Trying 
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={5*20*LAMBDA}
.param width_P={2*20*LAMBDA}
.global gnd vdd

vdd vdd gnd 1.8 
.param Ton = 5n

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

.subckt inv x y vdd gnd N='a' P='b'
.param width_Nn={N}
.param width_Pp={P}

M1      y       x       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
+ AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

M2      y       x       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
+ AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

.ends inv


x1 clk_org clock_in vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'


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

x2 pdr1 c1 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
x3 pdr2 c2 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
x4 pdr3 c3 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
x5 pdr4 c4 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* E1 c1bar 0 pdr1 0 1
* x2 c1bar c1 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'


* E2 c2bar 0 pdr2 0 1
* x3 c2bar c2 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* E3 c3bar 0 pdr3 0 1
* x4 c3bar c3 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* E4 c4bar 0 pdr4 0 1
* x5 c4bar c4 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* x3 prd2 c2 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
* x4 prd3 c3 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
* x5 prd4 c4 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'


* .tran 1n  {30*Ton} {15*Ton} 
.tran 1n  {15*Ton}

.control
* set hcopypscolor = 1 *White background for saving plots
* set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run

* plot v(pdr1)  4+v(c1)
* plot v(pdr1) v(c1) 2+v(pdr2) 2+v(c2) 4+v(pdr3) 4+v(c3) 6+v(pdr4) 6+v(c4) 8+v(clock_in) 
plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4)  8+v(clock_in) 
* plot v(gen_1) 2+v(gen_2) 4+v(gen_3) 6+v(gen_4) 8+v(clock_in)
* plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4) 8+v(clock_in)
plot v(c1) 2+v(c2)   4+v(c3)   6+v(c4) 8+v(clock_in) 
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



* Delay characterization of the inverter

* .include TSMC_180nm.txt
* .param SUPPLY=1.8
* .param VGG=1.5
* .param LAMBDA=0.09u
* .param width_N={20*LAMBDA}
* .global gnd vdd
* .param NML
* .param NMH
* vdd vdd gnd 1.8 
* VGS 	G 	gnd  1V
* **SIN(VO VA FREQ TD THETA PHASE) (page-87 NGSPICE manual V32 2020)
* VDS D   gnd 1.8V 

* M1      out1       G       vdd     vdd  CMOSP   W={2.5*width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* M2      out1       G       gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}


* * 2nd inverter

* * Mp2
* M3      out2       out1       vdd     vdd  CMOSP   W={2.5*width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* * Mn2
* M4      out2       out1       gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* ** CV char
* * .tran 1u 490u 10u
* .dc VGS 0 1.8 0.01

* .control
* set hcopypscolor = 1 *White background for saving plots
* set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))



* run
* set curplottitle="KarthiK - 2023102009 - q3_a"
* let slope_graph= deriv(out1)
* plot v(out1)
* set curplottitle="KarthiK - 2023102009 - q3_a"
* plot slope_graph
* meas dc VIL when slope_graph = -1
* * *meas means in 'dc' sweep ,when slope=-1 ,what is corresponding x-value? i.e that is stored in VIL here
* meas dc VIH when slope_graph=-1 cross=last
* meas dc VOH find v(out1) at =VIL
* meas dc VOL find v(out1) at =VIH

* let NML= VIL-VOL
* let NMH= VOH-VIH
* print NML NMH

* .endc


* * ####################################################



* 4th question characterize the delay of FO4 inverter and currents measuring

* .include TSMC_180nm.txt
* .param SUPPLY=1.8
* .param VGG=1.5
* .param LAMBDA=0.09u
* .param width_N={20*LAMBDA}
* .global gnd vdd
* vdd vdd gnd 1.8
* VGS 	G 	gnd  0V

* Vin a 0 PWL(0ns 0V 0.5ns 1.8V 1.1ns 1.8V 1.5ns 0V 10ns 0V)

* .subckt inv x y vdd gnd P ='a'  N = 'b'

* M1 y x gnd gnd CMOSN W='N' L=0.18u
* + AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}
* M2 y x vdd vdd CMOSP W='P' L=0.18u
* + AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}
* .ends inv

* x1 a b vdd gnd inv P='50*LAMBDA' N='20*LAMBDA' 
* x2 b c vdd gnd inv P='200*LAMBDA' N='80*LAMBDA' 
* V3 t gnd 1.8V
* V4 s gnd 0V
* M1 d c  s gnd CMOSN W={320*LAMBDA} L={2*LAMBDA}
* + AS={5*320*LAMBDA*LAMBDA} PS={10*LAMBDA+2*320*LAMBDA} AD={5*320*LAMBDA*LAMBDA} PD={10*LAMBDA+2*320*LAMBDA}
* M2 d c t high CMOSP W={800*LAMBDA} L={2*LAMBDA}
* + AS={5*800*LAMBDA*LAMBDA} PS={10*LAMBDA+2*800*LAMBDA} AD={5*800*LAMBDA*LAMBDA} PD={10*LAMBDA+2*800*LAMBDA}
* x4 d e vdd gnd inv P='3200*LAMBDA' N='1280*LAMBDA' 
* x5 e f vdd gnd inv P='12800*LAMBDA' N='5120*LAMBDA'

* C1 f gnd 1pF

* * b) part

* .measure tran trise_of_c 
* + TRIG v(c) VAL='0.1*SUPPLY' RISE=1
* + TARG v(c) VAL='0.9*SUPPLY' RISE=1

* .measure tran tfall_of_c 
* + TRIG v(c) VAL='0.9*SUPPLY' FALL=1
* + TARG v(c) VAL='0.1*SUPPLY' FALL=1

* .measure tran trise_of_d 
* + TRIG v(d) VAL='0.1*SUPPLY' RISE=1
* + TARG v(d) VAL='0.9*SUPPLY' RISE=1

* .measure tran tfall_of_d 
* + TRIG v(d) VAL='0.9*SUPPLY' FALL=1
* + TARG v(d) VAL='0.1*SUPPLY' FALL=1

* * c) part
* .measure tran tpd_i3_f 
* + TRIG v(c) VAL='SUPPLY/2' RISE=1 
* + TARG v(d) VAL='SUPPLY/2' FALL=1
* .measure tran tpd_i3_r 
* + TRIG v(c) VAL='SUPPLY/2' FALL=1 
* + TARG v(d) VAL='SUPPLY/2' RISE=1

* .measure tran total_prop_delay_I3 param='(tpd_i3_f+tpd_i3_r)/2'

* .measure tran tpd_i4_f
* + TRIG v(d) VAL='SUPPLY/2' RISE=1 
* + TARG v(e) VAL='SUPPLY/2' FALL=1
* .measure tran tpd_i4_r
* + TRIG v(d) VAL='SUPPLY/2' FALL=1 
* + TARG v(e) VAL='SUPPLY/2' RISE=1
* .measure tran total_prop_delay_I4 param='(tpd_i4_f+tpd_i4_r)/2'



* *  trise_of_c

* .tran 1ns 5ns

* .control
* set hcopypscolor = 1 *White background for saving plots
* set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

* run
* set curplottitle="KarthiK - 2023102009-q4-d "
* let idd=(-V3#branch)
* let iss=(V4#branch)
* plot idd
* plot iss
* print idd

* .endc


* * ###################################################


* ques 5 Finding Delay vs cout/cin 

* .include TSMC_180nm.txt
* .param SUPPLY=1.8
* .param VGG=1.5
* .param LAMBDA=0.09u
* .param width_N={20*LAMBDA}
* .global gnd vdd
* .param k=11;
* vdd vdd gnd 1.8
* * VGS 	G 	gnd  0V


* Vin a 0 PWL(0ns 0V 0.5ns 1.8V 1.1ns 1.8V 1.5ns 0V 10ns 0V)

* E_unity_gain_amp g 0 c 0 1

* .subckt inv x y vdd gnd P ='a'  N = 'b'

* M1 y x gnd gnd CMOSN W='N' L=0.18u
* + AS={5*N*LAMBDA} PS={10*LAMBDA+2*N} AD={5*N*LAMBDA} PD={10*LAMBDA+2*N}
* M2 y x vdd vdd CMOSP W='P' L=0.18u
* + AS={5*P*LAMBDA} PS={10*LAMBDA+2*P} AD={5*P*LAMBDA} PD={10*LAMBDA+2*P}
* .ends inv

* x1 a b vdd gnd inv P='50*LAMBDA' N='20*LAMBDA' 
* x2 b c vdd gnd inv P='200*LAMBDA' N='80*LAMBDA' 
* x3 c d vdd gnd inv P='800*LAMBDA'  N='320*LAMBDA'
* x4 d e vdd gnd inv P='3200*LAMBDA' N='1280*LAMBDA' 
* x5 e f vdd gnd inv P='12800*LAMBDA' N='5120*LAMBDA'

* C1 f gnd 1pF

* x6 g h vdd gnd inv P='50*LAMBDA' N='20*LAMBDA'
* //x7 h i vdd gnd inv P='50*k*LAMBDA' N='20*LAMBDA*k'

* .measure tran tpropdelay_r 
* +TRIG v(g) VAL='SUPPLY/2' RISE=1;
* +TARG v(h) VAL='SUPPLY/2' FALL=1;

* .measure tran tpropdelay_f 
* +TRIG v(g) VAL='SUPPLY/2' FALL=1;
* +TARG v(h) VAL='SUPPLY/2' RISE=1;

* .measure tran t_prop_delay param='(tpropdelay_r+tpropdelay_f)/2'

* .tran 10p 5n

* .control
* set hcopypscolor = 1 *White background for saving plots
* set color0=white ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

* run
* set curplottitle="KarthiK - 2023102009 "
* * plot v(g) v(h)
* .endc


* V1 prop_1 0 PULSE(0 1.8 0ns 0ns 0ns 40ns 80ns)  ; Toggle every 80 µs (most significant bit)
* V2 prop_2 0 PULSE(0 1.8 0ns 0ns 0ns 20ns 40ns)  ; Toggle every 40 µs
* V3 prop_3 0 PULSE(0 1.8 0ns 0ns 0ns 10ns 20ns)  ; Toggle every 20 µs
* V4 prop_4 0 PULSE(0 1.8 0ns 0ns 0ns 50ns 10ns)

* V5 gen_1 0 PULSE(0 1.8 0ns 0ns 0ns 40ns 80ns)  ; Toggle every 80 µs (most significant bit)
* V6 gen_2 0 PULSE(0 1.8 0ns 0ns 0ns 20ns 40ns)  ; Toggle every 40 µs
* V7 gen_3 0 PULSE(0 1.8 0ns 0ns 0ns 10ns 20ns)  ; Toggle every 20 µs
* V8 gen_4 0 PULSE(0 1.8 0ns 0ns 0ns 50ns 100ns)
* V9 carry_0 gnd 1.8
* v10 clk_org gnd PULSE(1.8 0 0 0 0 2n 4n)



* * V1 clk_org gnd pulse(0 1.8 0 0 0 80n 160n)
* * V2 prop_1 gnd pulse(0 1.8 0 0 0 160n 320n)
* * V3 carry_0 gnd pulse(0 1.8 0 0 0 320n 640n)

* * V4 prop_2 gnd pulse(0 1.8 0 0 0 640n 1280n)
* * V5 prop_3 gnd 0
* * V6 prop_4 gnd 0

* * V7 gen_1 gnd pulse(0 1.8 0 0 0 1280n 2560n)
* * V8 gen_2 gnd pulse(0 1.8 0 0 0 2560n 5120n)
* * V9 gen_3 gnd 0
* * V10 gen_4 gnd 0





* * V1 prop_1 0 PULSE(0 1.8 0ns 0ns 0ns 20ns 40ns)  ; Toggle every 80 µs (most significant bit)
* * V2 prop_2 0 PULSE(0 1.8 0ns 0ns 0ns 10ns 20ns)  ; Toggle every 40 µs
* * V3 prop_3 0 PULSE(0 1.8 0ns 0ns 0ns 5ns 10ns)  ; Toggle every 20 µs
* * V4 prop_4 0 PULSE(0 1.8 0ns 0ns 0ns 2.5ns 5ns)

* * V5 gen_1 0 PULSE(0 1.8 0ns 0ns 0ns 20ns 40ns)  ; Toggle every 80 µs (most significant bit)
* * V6 gen_2 0 PULSE(0 1.8 0ns 0ns 0ns 10ns 20ns)  ; Toggle every 40 µs
* * V7 gen_3 0 PULSE(0 1.8 0ns 0ns 0ns 5ns 10ns)  ; Toggle every 20 µs
* * V8 gen_4 0 PULSE(0 1.8 0ns 0ns 0ns 2.5ns 5ns)
* * V9 carry_0 gnd 1.8
* * v10 clk_org gnd PULSE(1.8 0 0 0 0 1n 2n)

* * V1 clk_org gnd pulse(0 1.8 0 0 0 80n 160n)
* * V2 prop_1 gnd pulse(0 1.8 0 0 0 160n 320n)
* * V3 gen_1 gnd pulse(0 1.8 0 0 0 320n 640n)

* * V4 prop_2 gnd 0
* * V5 prop_3 gnd 0
* * V6 prop_4 gnd 0

* * V7 carry_0 gnd pulse(0 1.8 0 0 0 640n 1280n)
* * V8 gen_2 gnd 0
* * V9 gen_3 gnd 0
* * V10 gen_4 gnd 0

* * Pulse Sources with Parameterized Ton Values
* * V1 clk_org gnd PULSE(0 1.8 0 0 0 {Ton} {2*Ton})         ; Clock signal with Ton and 50% duty cycle
* * V2 prop_1 gnd PULSE(0 1.8 0 0 0 {2*Ton} {4*Ton})       ; prop_1 with 2*Ton and 50% duty cycle
* * V3 gen_1 gnd PULSE(0 1.8 0 0 0 {4*Ton} {8*Ton})        ; gen_1 with 4*Ton and 50% duty cycle

* * V4 prop_2 gnd 0                                       ; DC source (inactive)
* * V5 prop_3 gnd 0                                       ; DC source (inactive)
* * V6 prop_4 gnd 0                                       ; DC source (inactive)

* * V7 carry_0 gnd PULSE(0 1.8 0 0 0 {8*Ton} {16*Ton})     ; carry_0 with 8*Ton and 50% duty cycle
* * V8 gen_2 gnd 0                                        ; DC source (inactive)
* * V9 gen_3 gnd 0                                        ; DC source (inactive)
* * V10 gen_4 gnd 0  


* * V1 clk_org gnd PULSE(0 1.8 0 0 0 {Ton} {2*Ton})         ; Clock signal with Ton and 50% duty cycle
* * V2 prop_1 gnd PULSE(0 1.8 {2*Ton} 0 0 {2*Ton} {4*Ton})       ; prop_1 with 2*Ton and 50% duty cycle
* * V3 gen_1 gnd PULSE(0 1.8 0 0 0 {4*Ton} {8*Ton})        ; gen_1 with 4*Ton and 50% duty cycle

* * V4 prop_2 gnd PULSE(0 1.8 0 0 0 {8*Ton} {16*Ton})                                    ; DC source (inactive)
* * V5 prop_3 gnd 0                                       ; DC source (inactive)
* * V6 prop_4 gnd 0                                       ; DC source (inactive)

* * V8 gen_2 gnd 0 PULSE(0 1.8 0 0 0 {16*Ton} {32*Ton})                                     ; DC source (inactive)
* * V9 gen_3 gnd 0                                        ; DC source (inactive)
* * V10 gen_4 gnd 0  
* * V7 carry_0 gnd PULSE(0 1.8 0 0 0 {32*Ton} {64*Ton})     ; carry_0 with 8*Ton and 50% duty cycle




* * ##########CLA #######

* Trying 
* .include TSMC_180nm.txt
* .param SUPPLY=1.8
* .param VGG=1.5
* .param LAMBDA=0.09u
* .param width_N={20*LAMBDA}
* .param width_P={40*20*LAMBDA}
* .global gnd vdd

* vdd vdd gnd 1.8 
* VGS 	G 	gnd  1V
* VDS D   gnd 1.8V 


* .param Ton = 5000n

* V1 prop_1 0 0
* v2 prop_2 0 0
* v3 prop_3 0 0
* v4 prop_4 0 0
* V5 gen_1 0 0
* v6 gen_2 0 0
* v7 gen_3 0 0
* v8 gen_4 0 0
* V9 carry_0 0 0
* V10 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton})  
* * V1 clk_org gnd PULSE(0 1.8 0 0 0 {Ton} {2*Ton}) 



* .subckt NOT_gate a b vdd gnd
* M1P      b       a        vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* M1N      b       a        gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
* .ends NOT_gate

* x1 clk_org clock_in vdd gnd NOT_gate


* Mp1      pdr1       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* Mp2      pdr2       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* Mp3      pdr3       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* Mp4      pdr4       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* * NMOS doing

* Mn5      pdr1       prop_1       prop1_car0     prop1_car0  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn6      prop1_car0       carry_0       clock_car0     clock_car0  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn7      clock_car0       clock_in       gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
* * done

* Mn8      pdr2       prop_2       pdr1     pdr1  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn9      pdr1       gen_1       clock_car0     clock_car0  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* * done

* Mn10      pdr3       prop_3       pdr2     pdr2  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn11      pdr2       gen_2       clock_car0     clock_car0  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* * done

* Mn12      pdr4       prop_4       pdr3     pdr3  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn13      pdr3       gen_3       clock_car0     clock_car0  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* * done

* Mn14      pdr4       gen_4       clock_car0     clock_car0  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* *done

* x2 prd1 c1 vdd gnd NOT_gate
* x3 prd2 c2 vdd gnd NOT_gate
* x4 prd3 c3 vdd gnd NOT_gate
* x5 prd4 c4 vdd gnd NOT_gate


* .tran 1n {10*Ton}

* .control
* set hcopypscolor = 1 *White background for saving plots
* set color0=black ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

* run
* * plot v(clk_org) 3+v(clock_in)
* * plot 
* * plot    v(gen_1) 3+v(prop_1) 7+v(carry_0) 10+v(pdr1) 13+v(clock_in)
* * plot v(c1) 3+v(c2)   6+v(c3)   9+v(c4) 12+v(clock_in) 

* * plot v(pdr4)  v(c4) 4+v(clk_org)

* * plot    v(gen_2) 3+v(prop_2) 7+v(pdr1) 10+v(pdr2) 13+v(clock_in) 

* plot v(pdr1) 2+v(pdr2) 4+v(pdr3) 6+v(pdr4) 8+v(clock_in)

* * plot 2+v(prop_1)
* * plot v(gen_1)

* * plot v(prop_2)
* * plot v(gen_2)

* * plot v(prop_3)
* * plot v(gen_3)

* * plot v(prop_4)
* * plot v(gen_4)


* .endc


* * V1 clk_org gnd PULSE(0 1.8 0 0 0 {Ton} {2*Ton}) 



* * .subckt NOT_gate a b vdd gnd
* * M1P      b       a        vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* * + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* * M1N      b       a        gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* * + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
* * .ends NOT_gate

* * .subckt NOT_gate in out vdd gnd 
* * M1 out in gnd gnd CMOSN W={width_N} L={2*LAMBDA}
* * + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
* * M2 out in vdd vdd CMOSP W={width_P} L={2*LAMBDA}
* * + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
* * .ends NOT_gate

* * ###################################################################3

* Trying 
* .include TSMC_180nm.txt
* .param SUPPLY=1.8
* .param VGG=1.5
* .param LAMBDA=0.09u
* .param width_N={15*20*LAMBDA}
* .param width_P={2.5*20*LAMBDA}
* .global gnd vdd

* vdd vdd gnd 1.8 
* .param Ton = 5n

* * V1 prop_1 0 0
* * * V1 prop_1 0 1.8

* * v2 prop_2 0 0
* * * v2 prop_2 0 1.8

* * v3 prop_3 0 0
* * * v3 prop_3 0 1.8

* * * v4 prop_4 0 0
* * v4 prop_4 0 1.8

* * * V5 gen_1 0 1.8
* * V5 gen_1 0 0

* * * v6 gen_2 0 1.8
* * v6 gen_2 0 0

* * * v7 gen_3 0 0
* * v7 gen_3 0 1.8

* * v8 gen_4 0 0
* * * v8 gen_4 0 1.8

* * V9 carry_0 0 1.8
* * V10 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton})  

*     V1 prop_1 0 pulse(0 1.8 0 0 0 {2*Ton} {4*Ton})
*     v2 prop_2 0 pulse(0 1.8 0 0 0 {3*Ton} {6*Ton})
*     v3 prop_3 0 pulse(0 1.8 0 0 0 {4*Ton} {8*Ton})
*     v4 prop_4 0 pulse(0 1.8 0 0 0 {5*Ton} {10*Ton})

*     V5 gen_1 0 pulse(0 1.8 0 0 0 {6*Ton} {12*Ton})
*     v6 gen_2 0 pulse(0 1.8 0 0 0 {7*Ton} {14*Ton})
*     v7 gen_3 0 pulse(0 1.8 0 0 0 {8*Ton} {16*Ton})
*     v8 gen_4 0 pulse(0 1.8 0 0 0 {9*Ton} {18*Ton})

*     V9 carry_0 0 1.8
*     V10 clk_org gnd pulse(0 1.8 0 0 0 {Ton} {2*Ton})  

* .subckt inv x y vdd gnd N='a' P='b'
* .param width_Nn={N}
* .param width_Pp={P}

* M1      y       x       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* M2      y       x       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* .ends inv


* x1 clk_org clock_in vdd gnd inv N='20*LAMBDA' P='2.5*20*LAMBDA'


* Mp1      pdr1       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* Mp2      pdr2       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* Mp3      pdr3       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* Mp4      pdr4       clock_in       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
* + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* * NMOS doing

* Mn5      pdr1       prop_1       prop1_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn6      prop1_car0       carry_0       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn7      clock_car0       clock_in       gnd     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
* * done

* Mn8      pdr2       prop_2       pdr1     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn9      pdr1       gen_1       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* * done

* Mn10      pdr3       prop_3       pdr2     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn11      pdr2       gen_2       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* * done

* Mn12      pdr4       prop_4       pdr3     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* Mn13      pdr3       gen_3       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* * done

* Mn14      pdr4       gen_4       clock_car0     gnd  CMOSN   W={width_N}   L={2*LAMBDA}
* + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

* *done

* x2 pdr1 c1 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
* x3 pdr2 c2 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
* x4 pdr3 c3 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
* x5 pdr4 c4 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* * E1 c1bar 0 pdr1 0 1
* * x2 c1bar c1 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'


* * E2 c2bar 0 pdr2 0 1
* * x3 c2bar c2 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* * E3 c3bar 0 pdr3 0 1
* * x4 c3bar c3 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* * E4 c4bar 0 pdr4 0 1
* * x5 c4bar c4 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'

* * x3 prd2 c2 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
* * x4 prd3 c3 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'
* * x5 prd4 c4 vdd gnd inv N='20*LAMBDA' P='2*20*LAMBDA'


* * .tran 1n  {30*Ton} {15*Ton} 
* .tran 1n  {15*Ton}

* .control
* * set hcopypscolor = 1 *White background for saving plots
* * set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* * set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

* run

* * plot v(pdr1)  4+v(c1)
* plot v(pdr1) v(c1) 2+v(pdr2) 2+v(c2) 4+v(pdr3) 4+v(c3) 6+v(pdr4) 6+v(c4) 8+v(clock_in) 8+v(clk_org)
* * plot v(gen_1) 2+v(gen_2) 4+v(gen_3) 6+v(gen_4) 8+v(clock_in)
* * plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4) 8+v(clock_in)
* * * plot v(c1) 2+v(c2)   4+v(c3)   6+v(c4) 8+v(clock_in) 
* * plot v(clk_org) 3+v(clock_in)
* * plot    v(gen_1) 3+v(prop_1) 7+v(carry_0) 10+v(pdr1) 13+v(clock_in)
* * plot v(pdr4)  v(c4) 4+v(clk_org)
* * plot    v(gen_2) 3+v(prop_2) 7+v(pdr1) 10+v(pdr2) 13+v(clock_in) 
* * plot 2+v(prop_1)
* * plot v(gen_1)
* * plot v(prop_2)
* * plot v(gen_2)
* * plot v(prop_3)
* * plot v(gen_3)
* * plot v(prop_4)
* * plot v(gen_4)


* .endc



* V_a1 a1 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 0 {2*Tperiod} 0)
* V_a2 a2 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 0 {2*Tperiod} 0)
* V_a3 a3 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_a4 a4 0 PWL(0ns 1.8 {Tperiod} 1.8 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_b1 b1 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_b2 b2 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_b3 b3 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)
* V_b4 b4 0 PWL(0ns 0 {Tperiod} 0 {Tperiod+0.1n} 1.8 {2*Tperiod} 1.8)




