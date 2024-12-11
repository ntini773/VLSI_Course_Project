

// module Dff_new (
//     input D,        // Data input
//     input clk,      // Clock input
//     output reg Q    // Output Q
// );

//     always @(posedge clk) begin
//         Q <= D;  // On rising edge of the clock, Q gets the value of D
//     end

// endmodule


module Dff_new(
    input D,
    input clk,
    output Q
);
    wire clk_inv, D_inv;           
    wire master_w1, master_w2, master_Q, master_Qb;
    wire slave_w1, slave_w2, slave_Q, slave_Qb;
    
    nand(clk_inv, clk, clk);
    nand(D_inv, D, D);
    
    nand(master_w1, D, clk_inv);
    nand(master_w2, D_inv, clk_inv);
    nand(master_Q, master_w1, master_Qb);
    nand(master_Qb, master_w2, master_Q);
    
    nand(slave_w1, master_Q, clk);
    nand(slave_w2, master_Qb, clk);
    nand(slave_Q, slave_w1, slave_Qb);
    nand(slave_Qb, slave_w2, slave_Q);
    
    assign Q = slave_Q;
endmodule




module cla (
    input [3:0] A1,
    input [3:0] B1,
    input Cin,
    output [3:0] Sum_final,
    output Cout_final
);
    wire [3:0] g, p;
    wire [3:1] c;
    wire [2:0] dum;
    wire Cout;

    xor(p[0], A1[0], B1[0]);
    and(g[0], A1[0], B1[0]);

    xor(p[1], A1[1], B1[1]);
    and(g[1], A1[1], B1[1]);
    
    xor(p[2], A1[2], B1[2]);
    and(g[2], A1[2], B1[2]);

    xor(p[3], A1[3], B1[3]);
    and(g[3], A1[3], B1[3]);

   // Carry-lookahead logic
wire C00;
assign C00 = Cin;


// First carry-out calculation
and(dum[0], p[0], C00);         // dum[0] = p[0] & Cin
or(c[1], g[0], dum[0]);         // c[1] = g[0] | (p[0] & Cin)

// Second carry-out calculation (without using c[1] directly)
wire temp1;
and(temp1, p[1], g[0]);         // temp1 = p[1] & g[0]
wire temp2;
and(temp2, p[1], p[0], C00);    // temp2 = p[1] & p[0] & Cin
or(c[2], g[1], temp1, temp2);   // c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & Cin)

// Third carry-out calculation
wire temp3;
and(temp3, p[2], g[1]);         // temp3 = p[2] & g[1]
wire temp4;
and(temp4, p[2], p[1], g[0]);   // temp4 = p[2] & p[1] & g[0]
wire temp5;
and(temp5, p[2], p[1], p[0], C00); // temp5 = p[2] & p[1] & p[0] & Cin
or(c[3], g[2], temp3, temp4, temp5); // c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & Cin)

// Final carry-out calculation
wire Cout1;
wire temp6;
and(temp6, p[3], g[2]);         // temp6 = p[3] & g[2]
wire temp7;
and(temp7, p[3], p[2], g[1]);   // temp7 = p[3] & p[2] & g[1]
wire temp8;
and(temp8, p[3], p[2], p[1], g[0]); // temp8 = p[3] & p[2] & p[1] & g[0]
wire temp9;
and(temp9, p[3], p[2], p[1], p[0], C00); // temp9 = p[3] & p[2] & p[1] & p[0] & Cin
or(Cout, g[3], temp6, temp7, temp8, temp9); // Cout = g[3] | (p[3] & g[2]) | ... | (p[3] & p[2] & p[1] & p[0] & Cin)

// Sum calculations using XOR gates
xor(Sum_final[0], p[0], C00);   // Sum[0] = p[0] ^ Cin
xor(Sum_final[1], p[1], c[1]);  // Sum[1] = p[1] ^ c[1]
xor(Sum_final[2], p[2], c[2]);  // Sum[2] = p[2] ^ c[2]
xor(Sum_final[3], p[3], c[3]);  // Sum[3] = p[3] ^ c[3]

    // Output the final carry-out
    assign Cout_final = Cout;

endmodule


module total (
    input [3:0] a,
    input [3:0] b,
    input cin,
    input clk,
    output [3:0] sum,
    output  carry_out
);
    wire [3:0] ina;
    wire [3:0] inb;
    wire [3:0] insum;
    wire inc;
    wire incarry_out;

    Dff_new da0(.D(a[0]),.clk(clk),.Q(ina[0]));
    Dff_new da1(.D(a[1]),.clk(clk),.Q(ina[1]));
    Dff_new da2(.D(a[2]),.clk(clk),.Q(ina[2]));
    Dff_new da3(.D(a[3]),.clk(clk),.Q(ina[3]));

    Dff_new db0(.D(b[0]),.clk(clk),.Q(inb[0]));
    Dff_new db1(.D(b[1]),.clk(clk),.Q(inb[1]));
    Dff_new db2(.D(b[2]),.clk(clk),.Q(inb[2]));
    Dff_new db3(.D(b[3]),.clk(clk),.Q(inb[3]));

    Dff_new dcin(.D(cin),.clk(clk),.Q(inc));

    cla c1(
        .A1(ina),
        .B1(inb),
        .Cin(inc),
        .Sum_final(insum),
        .Cout_final(incarry_out)
    );

    Dff_new dsum0(.D(insum[0]),.clk(clk),.Q(sum[0]));
    Dff_new dsum1(.D(insum[1]),.clk(clk),.Q(sum[1]));
    Dff_new dsum2(.D(insum[2]),.clk(clk),.Q(sum[2]));
    Dff_new dsum3(.D(insum[3]),.clk(clk),.Q(sum[3]));

    Dff_new dcarry_out(
        .D(incarry_out),
        .clk(clk),
        .Q(carry_out)
    );

endmodule