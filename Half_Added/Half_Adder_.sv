`timescale 1ns / 1ps

module half_adder(
    input A,
    input B,
    output Carry, 
    output Sum    
);

    xor (Sum, A, B);      // Sum = A XOR B
    and (Carry, A, B);    // Carry = A AND B

endmodule 
