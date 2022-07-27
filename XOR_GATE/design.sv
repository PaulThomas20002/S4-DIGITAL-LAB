// Code your design here
module xor_gate(x,y,z);
  input x,y;
  output z;
  reg z;
  always@(x,y)z=x^y;                                            
endmodule
