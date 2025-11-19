`timescale 1ns / 1ps

module tb_SR_latch();

    reg S;       
    reg R;       
    wire Q;      
    wire Q_bar;  

    sr_latch uut (
        .S(S),
        .R(R),
      	.Q(Q),
        .Q_bar(Q_bar)
    );

    initial begin
        $dumpfile("dump_sr_latch.vcd");
        $dumpvars(0, tb_SR_latch);

        S = 0; R = 0; #10;
        S = 1; R = 0; #10;
        S = 0; R = 0; #10;
        S = 0; R = 1; #10;
        S = 0; R = 0; #10;
        S = 1; R = 1; #10;
        S = 0; R = 0; #10;
    end

endmodule
