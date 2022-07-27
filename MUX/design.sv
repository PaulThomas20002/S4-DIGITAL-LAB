module mux(y0,y1,y2,y3,s1,s0,d);
  input y0,y1,y2,y3,s1,s0;
  output d;
  assign d=s1?(s0?y3:y2):(s0?y1:y0);
endmodule
