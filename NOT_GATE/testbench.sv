module notdf_tb;
  reg x;
  wire z;
not_gate inst(.x(x),.z(z));
 intial begin
 x=0;#5;
 x=1;#5;
 end
endmodule
