`timescale 1ns / 1ps

module tb_OR(

    );

reg a, b;
wire y;

OR_gate uut(a, b, y);

initial begin
    // to create the waveform file
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_OR);

    a = 0;
    b = 0;
    #10;

    a = 0;
    b = 1;
    #10;

    a = 1;
    b = 0;
    #10;

    a = 1;
    b = 1;
    #10;

    $finish;

end

endmodule
