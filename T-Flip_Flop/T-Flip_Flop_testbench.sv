`timescale 1ns / 1ps

module tb_t_flipflop();

    reg t, clk;
    wire q, qbar;
	T_FlipFlop uut (t, clk, q, qbar);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("tb_t_flipflop.vcd"); 
        $dumpvars(0, tb_t_flipflop);     
        
        t = 0; #10; 

        t = 1; #10; 

        t = 1; #10;

        t = 0; #10;

        t = 1; #10;
        
        $finish; 
    end
    
endmodule
