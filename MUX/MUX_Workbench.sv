`timescale 1ns / 1ps

module tb_MUX(

    );
reg i_0, i_1, s;
wire y;

MUX uut(i_0, i_1, s, y);

initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, tb_MUX);

i_0 = 0; i_1 = 1; s = 0 ; #10;
i_0 = 0; i_1 = 1; s = 1 ; #10;

$finish;

end

endmodule
