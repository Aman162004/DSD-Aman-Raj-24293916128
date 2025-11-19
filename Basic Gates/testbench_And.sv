`timescale 1ns / 1ps

module tb_AND(

    );
    
reg a, b;
wire y;

AND_gate uut(a, b, y);

initial begin
    // Dump waves to see in EPWave
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_AND);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;
  end

endmodule
