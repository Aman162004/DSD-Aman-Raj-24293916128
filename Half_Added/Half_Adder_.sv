`timescale 1ns / 1ps

module MUX(
    input i_0, i_1, s,
    output y
    );
    
assign y = (!s & i_0) | (s & i_1); 
endmodule
