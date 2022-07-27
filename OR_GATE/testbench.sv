module or_tb;
      reg x,y;
      wire z;
  or_gate inst(.x(x),.y(y),.z(z));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #30 $finish;
  end
 initial begin
 x=0;    y=0;    #5;
 x=0;    y=1;    #5; //#timedelay
 x=1;    y=0;    #5;
 x=1;    y=1;    #5;
 end
endmodule
