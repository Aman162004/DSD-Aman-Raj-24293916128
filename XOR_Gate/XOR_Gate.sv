`timescale 1ns / 1ps

module XOR_gate(
    input a, b,
    output y
);

  assign y = a ^ b; // '^' is the XOR operator

endmodule
