module mux4x1_tb;
      reg y0,y1,y2,y3,s1,s0;
      wire d;
  mux u0(y0,y1,y2,y3,s1,s0,d);
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
     end
 initial 
   begin
     $monitor(y0,y1,y2,y3,s1,s0,d);
     y0<=0;    y1<=0;    y2<=0; y3<=0;
     s1<=0;    s0<=0;    #5;
     s1<=0;    s0<=1;    #5;
     s1<=1;    s0<=0;    #5;
     s1<=1;    s0<=1;    #5;
 end
endmodule
