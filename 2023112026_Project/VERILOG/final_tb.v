`timescale 1ns / 1ps
`include "final.v"
module tb_total;

    // Declare inputs as registers and outputs as wires
    reg [3:0] a, b;
    reg cin, clk;
    wire [3:0] sum;
    wire carry_out;

    // Instantiate the top-level module (karthik)
    total uut (
        .a(a),
        .b(b),
        .cin(cin),
        .clk(clk),
        .sum(sum),
        .carry_out(carry_out)
    );

    // Clock generation: Toggle clock every 5ns (100MHz clock)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock period = 10ns
    end

    // Test cases
    initial begin
        // Initialize inputs
        a = 4'b0000;
        b = 4'b0000;
        cin = 0;

        // Display the results
        $monitor("Time = %0t, a = %d, b = %d, cin = %d, sum = %d, carry_out = %d", $time, a, b, cin, sum, carry_out);

        // Wait for some time before starting the test
        #10;

        // Test case 1: Add 0000 + 0000 (Carry-in = 0)
        a = 4'b0000; b = 4'b0000; cin = 0;
        #10;  // Wait for one clock cycle

        // Test case 2: Add 0101 + 0011 (Carry-in = 0)
        a = 4'b0101; b = 4'b0011; cin = 0;
        #10;  // Wait for one clock cycle

        // Test case 3: Add 1111 + 1111 (Carry-in = 1)
        a = 4'b1111; b = 4'b1111; cin = 1;
        #10;  // Wait for one clock cycle

        // Test case 4: Add 1100 + 1010 (Carry-in = 0)
        a = 4'b1100; b = 4'b1010; cin = 0;
        #10;  // Wait for one clock cycle

        // Test case 5: Add 1110 + 0011 (Carry-in = 1)
        a = 4'b1110; b = 4'b0011; cin = 1;
        #10;  // Wait for one clock cycle

        // End the simulation
        $finish;
    end

     initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_total);
    end

endmodule
