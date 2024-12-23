module test_full_adder();
 full_adder G1 (Cout,Sum,A,B,Cin);
 reg A,B,Cin;
 wire Cout,Sum;

initial
 begin
  $monitor ($time,"Cout=%b,Sum=%b,A=%b,B=%b,Cin=%b",Cout,Sum,A,B,Cin);
 end

initial
 begin
  #2  A=1;  B=0;  Cin=1; 
  #2  A=0;  B=0;  Cin=1; 
  #2  A=0;  B=0;  Cin=1; 
  #2  A=0;  B=1;  Cin=0; 
  #2  A=0;  B=1;  Cin=0; 
  #2  A=0;  B=0;  Cin=0; 
  #2  A=1;  B=0;  Cin=1; 
  #2  A=0;  B=1;  Cin=0; 
  #2  A=1;  B=1;  Cin=1; 
  #2  A=0;  B=0;  Cin=1; 
  #2  A=0;  B=1;  Cin=0; 
  #2  A=0;  B=0;  Cin=0; 
  #2  A=0;  B=1;  Cin=0; 
  #2  A=1;  B=1;  Cin=1; 
  #2  A=0;  B=0;  Cin=0; 
  #2  A=1;  B=1;  Cin=0; 
  #2  A=0;  B=0;  Cin=0; 
  #2  A=1;  B=0;  Cin=1; 
  #2  A=1;  B=1;  Cin=1; 
  #2  A=0;  B=0;  Cin=1; 
  #2  A=1;  B=0;  Cin=1; 
  #2  A=0;  B=0;  Cin=0; 
  #2  A=1;  B=0;  Cin=0; 
  #2  A=0;  B=0;  Cin=1; 
  #2  A=1;  B=0;  Cin=1; 
  #10 $stop;
 end
endmodule
