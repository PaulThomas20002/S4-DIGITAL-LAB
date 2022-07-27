module half_add_tb;
      reg a,b;
      wire s,c;
  half_add inst(.a(a),.b(b),.s(s),.c(c));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #30 $finish;
  end
 initial begin
 a=0;    b=0;    #5;
 a=0;    b=1;    #5; //#timedelay
 a=1;    b=0;    #5;
 a=1;    b=1;    #5;
 end
endmodule
