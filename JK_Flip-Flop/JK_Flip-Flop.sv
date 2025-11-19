`timescale 1ns / 1ps

module JK_flipflop(
    input j , k, clk, RESET,
    output reg q
    );

always @(posedge clk or posedge RESET) begin
    if(RESET) // active when high
        q <= 1'b0;
    else if(k & j)
        q <= ~q;
    else if(j)
        q <= 1'b1;
    else if(k)
        q <= 1'b0;
     else q <= q;
 end
 
endmodule
