.include TSMC_180nm.txt
.param SUPPLY=1.8
.param VGG=1.5
.param LAMBDA=0.09u
.param width_N={20*LAMBDA}
.param  width_P={2.5*width_N}
.global gnd vdd

vdd vdd gnd 'SUPPLY'
* 
* 

V1 A 0 PULSE(0 1.8 0 0n 0n 40n 80n)
V2 B 0 PULSE(0 1.8 0 0n 0n 20n 40n)
* V3 pi 0 PULSE(0 1.8 0 1n 1n 10n 20n)

V3 pi 0 PULSE(0 1.8 5n 0n 0n 1n 2n)


Mp1      u2       pi       vdd     vdd  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

//and PUN
Ma1      f2       A       u2     u2  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Mb1      f2       B       u2     u2  CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
//and end

Mp2      f2       pi       gnd     gnd   CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

//2nd level
Ms1      u3       f2       u2     u2   CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Mp3      f3       pi       u3     u3   CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Ms2      f3       f2       gnd     gnd   CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
//2nd level end

//3rd level
Ms3      u3       pi       vdd     vdd   CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Ms6      u3       f3       f4     f4    CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}

Mpl      f4       pi       gnd     gnd    CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
//3rd level end

//4th level
Ms4      u4       u3       vdd     vdd   CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Mp5      f5       pi       u4     u4     CMOSP   W={width_P}   L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

Ms5      f5       u3       f4     f4    CMOSN   W={width_N}   L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
//4th level end

//output is u4 f5
.tran 1n 200n
.control
run
plot 10+v(pi) 8+V(B) 6+V(A) V(u4) 3+V(f3)
.endc