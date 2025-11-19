`timescale 1ns / 1ps

module tb_JK(

    );
    
reg j, k, clk, RESET;
wire q;

JK_flipflop uut(j, k, clk, RESET, q);

initial begin
  $dumpfile("tb_JK_flipflop.vcd"); 
  $dumpvars(0, tb_JK);

clk = 0;
forever #5 clk = ~clk;

end

initial begin
 RESET = 1; j = 0; k = 0;
    #12 RESET = 0;

    j = 0; k = 0; #10
    j = 0; k = 1; #10
    j = 1; k = 0; #10
    j = 1; k = 1; #10

$finish;
end
endmodule
