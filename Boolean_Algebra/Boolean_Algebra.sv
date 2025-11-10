`timescale 1ns / 1ps

module full_adder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

  // Boolean equation for Sum
  // Sum = A XOR B XOR Cin
  assign Sum = A ^ B ^ Cin;

  // Boolean equation for Carry Out
  // Cout = (A AND B) OR (B AND Cin) OR (A AND Cin)
  assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule
