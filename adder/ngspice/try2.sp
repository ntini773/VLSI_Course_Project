Trying gates and latches
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={15*20*LAMBDA}
.param width_P={2.5*20*LAMBDA}
.global gnd vdd

vdd vdd gnd 1.8 

* V1 inpA gnd pulse(0 1.8 0 0 0 50n 100n)
* V2 inpB gnd pulse(0 1.8 0 0 0 25n 50n)

* V1 inpB gnd 0
* V2 inpA gnd 1.8


* .subckt Nand_gate in_a in_b out vdd gnd N='a'
* .param width_Nn={2*N}
* .param width_Pp={2*N}

* Mn1      out       in_a       Nint     Nint  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* Mn2      Nint       in_b       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}


* Mp1      out       in_a       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* Mp2      out       in_b       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* .ends Nand_gate


* .subckt inv x y vdd gnd N='a'
* .param width_Nn={N}
* .param width_Pp={2.5*width_Nn}

* M1      y       x       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* M2      y       x       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* .ends inv

* .subckt Xor_gate in_a in_b out vdd gnd N='a'
* .param width_Nn={N}
* .param width_Pp={2*N}

* x3 in_b in_bbar vdd gnd inv N='20*LAMBDA'

* M1      in_a       in_b       out     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* M2      in_a       in_bbar       out     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* M3      in_bbar       in_a       out     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* M4      in_b       in_a       out     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}


* .ends Xor_gate

* .subckt And_ptl in_a in_b out vdd gnd N='a'
* .param width_Nn={N}
* .param width_Pp={2.5*width_Nn}
* x4 in_b in_bbar vdd gnd inv N='20*LAMBDA'

* M1      out       in_b       in_a     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* M2      out       in_bbar       in_a     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* M3      out       in_bbar       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* .ends And_ptl

V2 D gnd pulse(0 1.8 0 0 0 10n 20n)
V3 clk gnd pulse(0 1.8 0 0 0 25n 50n)


.subckt Dpve_latch D clk Q vdd gnd N='a'
.param width_Nn={N}
.param width_Pp={2*N}
M1 A D vdd vdd CMOSP W={width_Pp} L={2*LAMBDA}
+ AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}
M2 A clk D_clk gnd CMOSN W={width_Nn} L={2*LAMBDA}
+ AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}
M3 D_clk D gnd gnd CMOSN W={width_Nn} L={2*LAMBDA}
+ AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

M4 Q A vdd vdd CMOSP W={width_Pp} L={2*LAMBDA}
+ AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}
M5 Q clk A_clk gnd CMOSN W={width_Nn} L={2*LAMBDA}
+ AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}
M6 A_clk A gnd gnd CMOSN W={width_Nn} L={2*LAMBDA}
+ AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

.ends Dpve_latch


* .subckt D_-ve_latch D clk Q vdd gnd N='a'
* .param width_Nn={N}
* .param width_Pp={2.5*width_Nn}
* M1 D_clk D vdd vdd CMOSP W={width_Pp} L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* M2 B clk D_clk vdd CMOSP W={width_Pp} L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* M3 B D gnd gnd CMOSN W={width_Nn} L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}

* *till done but check

* M4 Q B vdd vdd CMOSP W={width_Pp} L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* M5 B_clk clk Q vdd CMOSP W={width_Pp} L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}

* M6 B_clk B gnd gnd CMOSN W={width_Nn} L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}
* .ends D_-ve_latch



* x1 inpA inpB nand_out vdd gnd Nand_gate N='20*LAMBDA'
* x2 nand_out and_out vdd gnd inv N='20*LAMBDA'

* x1 inpA inpB xor_out vdd gnd Xor_gate N='10*LAMBDA'


* x1 inpA inpB and_out vdd gnd And_ptl N='20*LAMBDA'
x1 D clk Dp_out vdd gnd Dpve_latch N='20*LAMBDA'


.tran 0.01n  150ns 

.control
set hcopypscolor = 1 *White background for saving plots
set color0=black ** color0 is used to set the background of the plot (manual sec:17.7))
set color1=white ** color1 is used to set the grid color of the plot (manual sec:17.7))

run
plot v(D) 2+v(clk) 4+v(Dp_out)

*  plot v(nand_out) 4+v(and_out) 
* plot v(inpA) 2+v(inpB) 4+v(and_out)

* plot v(prop_1) 2+v(prop_2) 4+v(prop_3) 6+v(prop_4) 8+v(clock_in)
* plot v(gen_1) 2+v(gen_2) 4+v(gen_3) 6+v(gen_4) 8+v(clock_in)
* plot v(pdr1)  2+v(pdr2)  4+v(pdr3)  6+v(pdr4) 8+v(clock_in)


.endc





* .subckt NOT_gate x y vdd gnd N='a'
* .param width_Nn={N}
* .param width_Pp={2.5*width_Nn}
* M1      y       x       gnd     gnd  CMOSN   W={width_Nn}   L={2*LAMBDA}
* + AS={5*width_Nn*LAMBDA} PS={10*LAMBDA+2*width_Nn} AD={5*width_Nn*LAMBDA} PD={10*LAMBDA+2*width_Nn}
* M2      y       x       vdd     vdd  CMOSP   W={width_Pp}   L={2*LAMBDA}
* + AS={5*width_Pp*LAMBDA} PS={10*LAMBDA+2*width_Pp} AD={5*width_Pp*LAMBDA} PD={10*LAMBDA+2*width_Pp}
* .ends NOT_gate


.subckt d_flip_flop  q  d  clk vdd gnd
    .param width_P={48*LAMBDA}
    .param width_N={20*LAMBDA}

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

     x_inv last q vdd gnd invertor_gate
    .ends  d_flip_flop 
