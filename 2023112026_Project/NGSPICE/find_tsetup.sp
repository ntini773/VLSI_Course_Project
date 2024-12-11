Trying

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={5*20*LAMBDA}
.param width_P={2.5*20*LAMBDA}
.global gnd vdd

vdd vdd gnd 1.8 
* .param Ton=4n
* .param Tperiod=n
.param Ton=0.6n
.param Tperiod={2*Ton}
.param shift=1.3n
V_clk_org clk_org 0 pulse(0 1.8 {Ton} 10p 10p {Ton} {Tperiod})

* V1 a1 0 pulse(0 1.8 {0.5*Ton} 10p 10p {0.7*Ton} {Tperiod})
V1 a1 0 PWL(0 0 {shift} 0 {shift+10p} 1.8 {shift+10p+0.7*Ton} 1.8 {shift+10p+0.7*Ton+10p} 0)




.subckt inv x y vdd gnd N='a'
.param width_Nn={N}
.param width_Pp={2*width_Nn}

M1      y       x       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
+ AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

M2      y       x       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
+ AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

.ends inv


x1 clk_org clock_in vdd gnd inv N='20*LAMBDA'

.subckt d_flip_flop  d  clk  q vdd gnd
    .param width_P={20*LAMBDA}
    .param width_N={10*LAMBDA}

    M1      y       d      vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
    + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

    M2      temp      clk      y    vdd  CMOSP   W={width_P}   L={2*LAMBDA}
    + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

    * NMOS transistors
    M3      temp      d       gnd   gnd  CMOSN   W={2*width_N}   L={2*LAMBDA}
    + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}



    M4     var      clk      vdd    vdd  CMOSP   W={width_P}   L={2*LAMBDA}
    + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

    * NMOS transistors
    M5   var     temp      x   gnd  CMOSN   W={2*width_N}   L={2*LAMBDA}
    + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

    M6   x     clk       gnd   gnd  CMOSN   W={2*width_N}   L={2*LAMBDA}
    + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}


    M7     last      var     vdd    vdd  CMOSP   W={width_P}   L={2*LAMBDA}
    + AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

    * NMOS transistors
    M8   last      clk     z   gnd  CMOSN   W={2*width_N}   L={2*LAMBDA}
    + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

    M9   z    var       gnd   gnd  CMOSN   W={2*width_N}   L={2*LAMBDA}
    + AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

    *  x_inv last q vdd gnd invertor_gate
     x_inv last q vdd gnd inv N='20*LAMBDA'
    .ends  d_flip_flop 

    x_dff_ina1 a1 clk_org q_a1 vdd gnd d_flip_flop


.tran 0.001n  {3*Ton+3n} 
.measure tran tsetup TRIG v(a1) VAL=0.9 FALL=1 TARG v(clk_org) VAL=0.9 RISE=2
.measure tran tpcq TRIG v(clk_org) VAL=0.9 RISE=1 TARG v(q_a1) VAL=0.9 RISE=1

.control
set hcopypscolor = 1 *White background for saving plots
set color0=black ** color0 is used to set the background of the plot (manual sec:17.7))
set color1=white ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
set curplottitle="Nitin-2023112026-q3"
plot v(clk_org)+4 v(a1)+2 v(q_a1) 


.endc