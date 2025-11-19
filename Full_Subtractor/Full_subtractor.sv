`timescale 1ns / 1ps

module full_subtractor(
    input A,    
    input B,    
    input Bin,  
    output Diff, 
    output Bout  
);

    // Boolean equation for Difference
    // Diff = A XOR B XOR Bin
    assign Diff = A ^ B ^ Bin;

    // Boolean equation for Borrow Out
    // Bout = (~A AND B) OR (~A AND Bin) OR (B AND Bin)
    assign Bout = (~A & B) | (~A & Bin) | (B & Bin);

endmodule // full_subtractor
