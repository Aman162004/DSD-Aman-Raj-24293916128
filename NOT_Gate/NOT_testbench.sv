module tb_NOT;

  reg a;
  wire y;

  NOT_gate uut(a, y);

  initial begin
    // these two lines to create the waveform file
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_NOT);

    // test vectors
    a = 0;
    #10;
    a = 1;
    #10;
    $finish;
  end

endmodule
