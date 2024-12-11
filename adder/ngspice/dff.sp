Trying

.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={3*20*LAMBDA}
.param width_P={2*20*LAMBDA}
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
 .param Ton=1n
.param Tperiod={2*Ton}
V9 cin 0 0
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


.subckt Xor_gate in_a in_b out vdd gnd N='a'
.param width_nnn={N}
.param width_ppp={2*N}

x3 in_b in_bbar vdd gnd inv N='20*LAMBDA'

M1      in_a       in_b       out     vdd  CMOSP   W={width_ppp}   L={2*LAMBDA}
+ AS={5*width_ppp*LAMBDA} PS={10*LAMBDA+2*width_ppp} AD={5*width_ppp*LAMBDA} PD={10*LAMBDA+2*width_ppp}

M2      in_a       in_bbar       out     gnd  CMOSN   W={width_nnn}   L={2*LAMBDA}
+ AS={5*width_nnn*LAMBDA} PS={10*LAMBDA+2*width_nnn} AD={5*width_nnn*LAMBDA} PD={10*LAMBDA+2*width_nnn}

M3      in_bbar       in_a       out     gnd  CMOSN   W={width_nnn}   L={2*LAMBDA}
+ AS={5*width_nnn*LAMBDA} PS={10*LAMBDA+2*width_nnn} AD={5*width_nnn*LAMBDA} PD={10*LAMBDA+2*width_nnn}

M4      in_b       in_a       out     vdd  CMOSP   W={width_ppp}   L={2*LAMBDA}
+ AS={5*width_ppp*LAMBDA} PS={10*LAMBDA+2*width_ppp} AD={5*width_ppp*LAMBDA} PD={10*LAMBDA+2*width_ppp}


.ends Xor_gate



.subckt And_ptl in_a in_b out vdd gnd N='a'
.param width_nnnn={N}
.param width_pppp={2*width_nnnn}
x4 in_b in_bbar vdd gnd inv N='20*LAMBDA'

M1      out       in_b       in_a     gnd  CMOSN   W={width_nnnn}   L={2*LAMBDA}
+ AS={5*width_nnnn*LAMBDA} PS={10*LAMBDA+2*width_nnnn} AD={5*width_nnnn*LAMBDA} PD={10*LAMBDA+2*width_nnnn}

M2      out       in_bbar       in_a     vdd  CMOSP   W={width_pppp}   L={2*LAMBDA}
+ AS={5*width_pppp*LAMBDA} PS={10*LAMBDA+2*width_pppp} AD={5*width_pppp*LAMBDA} PD={10*LAMBDA+2*width_pppp}

M3      out       in_bbar       gnd     gnd  CMOSN   W={width_nnnn}   L={2*LAMBDA}
+ AS={5*width_nnnn*LAMBDA} PS={10*LAMBDA+2*width_nnnn} AD={5*width_nnnn*LAMBDA} PD={10*LAMBDA+2*width_nnnn}

.ends And_ptl

x_dff_ina1 a1 clk_org q_a1 vdd gnd d_flip_flop
x_dff_ina2 a2 clk_org q_a2 vdd gnd d_flip_flop
x_dff_ina3 a3 clk_org q_a3 vdd gnd d_flip_flop
x_dff_ina4 a4 clk_org q_a4 vdd gnd d_flip_flop

x_dff_inb1 b1 clk_org q_b1 vdd gnd d_flip_flop
x_dff_inb2 b2 clk_org q_b2 vdd gnd d_flip_flop
x_dff_inb3 b3 clk_org q_b3 vdd gnd d_flip_flop
x_dff_inb4 b4 clk_org q_b4 vdd gnd d_flip_flop

x_dff_cin cin clk_org carry_0 vdd gnd d_flip_flop


x5 q_a1 q_b1 prop_1 vdd gnd Xor_gate N='10*LAMBDA'
x6 q_a2 q_b2 prop_2 vdd gnd Xor_gate N='10*LAMBDA'
x7 q_a3 q_b3 prop_3 vdd gnd Xor_gate N='10*LAMBDA'
x8 q_a4 q_b4 prop_4 vdd gnd Xor_gate N='10*LAMBDA'

x9 q_a1 q_b1 gen_1 vdd gnd And_ptl N='10*LAMBDA'
x10 q_a2 q_b2 gen_2 vdd gnd And_ptl N='10*LAMBDA'
x11 q_a3 q_b3 gen_3 vdd gnd And_ptl N='10*LAMBDA'
x12 q_a4 q_b4 gen_4 vdd gnd And_ptl N='10*LAMBDA'




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

x13 pdr1 c1 vdd gnd inv N='20*LAMBDA' 
x14 pdr2 c2 vdd gnd inv N='20*LAMBDA' 
x15 pdr3 c3 vdd gnd inv N='20*LAMBDA' 
x16 pdr4 c4 vdd gnd inv N='20*LAMBDA' 

xs1 prop_1 carry_0 s1 vdd gnd Xor_gate N='10*LAMBDA'
xs2 prop_2 c1 s2 vdd gnd Xor_gate N='10*LAMBDA'
xs3 prop_3 c2 s3 vdd gnd Xor_gate N='10*LAMBDA'
xs4 prop_4 c3 s4 vdd gnd Xor_gate N='10*LAMBDA'

x_dff_out1 s1 clk_org q_s1 vdd gnd d_flip_flop
x_dff_out2 s2 clk_org q_s2 vdd gnd d_flip_flop
x_dff_out3 s3 clk_org q_s3 vdd gnd d_flip_flop
x_dff_out4 s4 clk_org q_s4 vdd gnd d_flip_flop
x_dff_out5 c4 clk_org q_c4 vdd gnd d_flip_flop

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
.tran 0.05n  {5*Ton+3n}
.measure tran clk_c4_f trig V(clk_org) val=0.9 rise=2 targ v(q_c4) val=0.9 fall=1
.measure tran clk_s1_f trig V(clk_org) val=0.9 rise=2 targ v(q_s1) val=0.9 fall=1
.measure tran clk_s2_f trig V(clk_org) val=0.9 rise=2 targ v(q_s2) val=0.9 fall=1
.measure tran clk_s3_f trig V(clk_org) val=0.9 rise=2 targ v(q_s3) val=0.9 fall=1
.measure tran clk_s4_f trig V(clk_org) val=0.9 rise=2 targ v(q_s4) val=0.9 fall=1

.measure tran clk_s4_r trig V(clk_org) val=0.9 rise=3 targ v(q_s4) val=0.9 rise=1
.measure tran clk_s3_r trig V(clk_org) val=0.9 rise=3 targ v(q_s3) val=0.9 rise=1
.measure tran clk_s2_r trig V(clk_org) val=0.9 rise=3 targ v(q_s2) val=0.9 rise=1
.measure tran clk_s1_r trig V(clk_org) val=0.9 rise=3 targ v(q_s1) val=0.9 rise=1

.ic v(q_a1)=0
.ic v(q_a2)=0
.ic v(q_a3)=0
.ic v(q_a4)=0
.ic v(q_b1)=0
.ic v(q_b2)=0
.ic v(q_b3)=0
.ic v(q_b4)=0
.ic v(carry_0)=0
.ic v(c4)=0

.ic v(s1)=0
.ic v(s2)=0
.ic v(s3)=0
.ic v(s4)=0
* .ic v(s1)=0
* .ic v(s1)=0

.control
* set hcopypscolor = 1 *White background for saving plots
* set color0=b ** color0 is used to set the background of the plot (manual sec:17.7))
* set color1=blue ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
* plot v(a1) 2+v(a2) 4+v(carry_0) 6+v(s1) 8+v(c1) 10+v(clock_in)
plot v(q_s1) 2+v(q_s2) 4+v(q_s3) 6+v(q_s4) 8+v(q_c4) 10+v(clk_org)
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