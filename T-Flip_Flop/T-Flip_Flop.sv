`timescale 1ns / 1ps

module T_FlipFlop(
    input t, clk,
    output reg q,
    output qbar
    );
    
    initial begin
        q = 1'b0;
    end

    always @(posedge clk) begin
        if (t == 1'b1) begin
            q <= ~q;
        end
        else begin
            q <= q;
        end
    end
    
    assign qbar = ~q;

endmodule
