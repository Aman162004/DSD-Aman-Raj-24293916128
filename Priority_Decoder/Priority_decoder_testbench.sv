`timescale 1ns / 1ps

module tb_Decoder( );
    
reg a, b;
wire d0, d1, d2, d3;

Decoder uut(a, b, d0, d1, d2, d3);

initial begin;

  $dumpfile("tb_Decoder.vcd"); 
  $dumpvars(0, tb_Decoder);

a = 0;b = 0;#10

a = 0;b = 1;#10

a = 1;b = 0;#10

a = 1;b = 1;#10

$finish;

end 
    
    
endmodule
