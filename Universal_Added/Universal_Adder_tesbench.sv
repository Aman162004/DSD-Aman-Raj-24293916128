`timescale 1ns / 1ps

module tb_adder(
    );

reg a, b, m;
wire cout, s;

Universal_adder uut(a, b, m, cout, s);

initial begin

  $dumpfile("tb_adder.vcd"); 
  $dumpvars(0, tb_adder);

a=0; b=0; m=0; #10 
a=1; b=1; m=0; #10 
a=1; b=1; m=1; #10 
a=1; b=0; m=1; #10 

$finish;

end    

endmodule
