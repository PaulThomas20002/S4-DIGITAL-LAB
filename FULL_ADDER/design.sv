module HA_D(a,b,s,c);
  input a,b;
  output s,c;
  xor x1(s,a,b);
  and x2(c,a,b);
endmodule
module FA(a,b,ci,s,co);
  input a,b,ci;
  output s,co;
  wire s1,c1,c2;
  HA_D u1(a,b,s1,ci);
  HA_D u2(s1,ci,s,c2);
  or us(co,c1,c2);
endmodule
