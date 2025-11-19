`timescale 1ns / 1ps

module half_adder(
    input A,
    input B,
    output borrow, 
    output diff    
);

  xor (diff, A, B);      // Sum = A XOR B
  and (borrow, ~A, B);    // Carry = A AND B

endmodule 
