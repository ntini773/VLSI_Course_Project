
.include TSMC_180nm.txt
.param SUPPLY=1.8
.param LAMBDA=0.09u
.param width_N={10*LAMBDA}
.param width_P={2.5*width_N}
.global gnd


* Power Supply and Input
VDD vdd gnd 'SUPPLY'

* Inverter (NOT gate) definition
.subckt inverter a out vdd gnd
M1N out a gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M1P out a vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
.ends inverter

* NAND gate definition
.subckt nand a b out vdd gnd
* Pull-up network (PMOS transistors in parallel)
M1P out a vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M2P out b vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}

* Pull-down network (NMOS transistors in series)
M1N out a n1 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2N n1 b gnd gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
.ends nand

* AND gate using NAND and Inverter
.subckt and a b out vdd gnd
X1 nand_gate a b nand_out vdd gnd       * NAND gate instance for inputs a and b
X2 inverter nand_out out vdd gnd        * Inverter instance to invert NAND output
.ends and

* XOR gate using NAND gates
.subckt xor a b out vdd gnd
X1 nand1 a b n1 vdd gnd         * X1 = NAND(A, B)
X2 nand2 a n1 n2 vdd gnd        * X2 = NAND(A, X1)
X3 nand3 b n1 n3 vdd gnd        * X3 = NAND(B, X1)
X4 nand4 n2 n3 out vdd gnd      * XOR_out = NAND(X2, X3)
.ends xor

* OR gate using NOR and Inverter
.subckt or a b out vdd gnd
X1 nor_gate a b nor_out vdd gnd      * NOR gate instance for inputs a and b
X2 inverter nor_out out vdd gnd       * Inverter instance to invert the NOR output
.ends or

* NOR gate definition
.subckt nor a b out vdd gnd
M1P out a vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M2P out b vdd vdd CMOSP W={width_P} L={2*LAMBDA}
+ AS={5*width_P*LAMBDA} PS={10*LAMBDA+2*width_P} AD={5*width_P*LAMBDA} PD={10*LAMBDA+2*width_P}
M1N out a n1 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
M2N out b n1 gnd CMOSN W={width_N} L={2*LAMBDA}
+ AS={5*width_N*LAMBDA} PS={10*LAMBDA+2*width_N} AD={5*width_N*LAMBDA} PD={10*LAMBDA+2*width_N}
.ends nor





