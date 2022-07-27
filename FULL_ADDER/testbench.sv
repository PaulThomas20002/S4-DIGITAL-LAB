module FA_tb;
      reg a,b,ci;
      wire s,co;
  FA inst(.a(a),.b(b),.ci(ci),.s(s),.co(co));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;                                                                                                          
  end
 initial 
   begin
     $monitor(a,b,s,ci,co);
     a<=0;    b<=0;    ci<=0;    #5;
     a<=0;    b<=0;    ci<=1;    #5;
     a<=0;    b<=1;    ci<=0;    #5;
     a<=0;    b<=1;    ci<=1;    #5;
     a<=1;    b<=0;    ci<=0;    #5;
     a<=1;    b<=0;    ci<=1;    #5;
     a<=1;    b<=1;    ci<=0;    #5;
     a<=1;    b<=1;    ci<=1;    #5;
 end
endmodule
