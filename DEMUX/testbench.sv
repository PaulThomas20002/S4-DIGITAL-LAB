module demux1x4_tb;
      reg d,s1,s0;
      wire y0,y1,y2,y3;
  demux u0(d,s1,s0,y0,y1,y2,y3);
  initial 
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
     end
 initial 
   begin
     $monitor(y0,y1,y2,y3,s1,s0,d);
     d<=1;
     s1<=0;    s0<=0;    #5;
     s1<=0;    s0<=1;    #5;
     s1<=1;    s0<=0;    #5;
     s1<=1;    s0<=1;    #5;
 end
endmodule
