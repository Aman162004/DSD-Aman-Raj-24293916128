`timescale 1ns / 1ps

module tb_D( );
    
reg d, clk;
wire q, qbar;

D_flipflop uut(d, clk, q, qbar);

initial begin
  $dumpfile("tb_D_flipflop.vcd"); 
  $dumpvars(0, tb_D); 

clk = 0;
forever #5 clk = ~clk;

end

initial begin

d = 0; #10
d = 1; #10


$finish;

end

endmodule
