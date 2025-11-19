`timescale 1ns / 1ps

module Universal_adder(
    input a, b, m,
    output  cout, s
    );
 
wire cin, b_afterxor;
assign b_afterxor = m ^ b;
assign cin = m;
assign s =  a ^ b_afterxor ^ cin;
assign cout = (a & b_afterxor) | (b_afterxor & cin) | (a & cin);
    
endmodule
