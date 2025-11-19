`timescale 1ns / 1ps

module tb_HA();

    reg  A;
    reg  B;
    wire diff;
    wire borrow;
    
    half_adder uut (
        .A(A),
        .B(B),
      	.diff(diff),
      	.borrow(borrow)
    );

    initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0, tb_HA);

        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end

endmodule
