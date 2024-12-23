module test_mux_4to1();
 mux_4to1 G1 (Y,I,Sel);
 reg [3:0] I;
 reg [1:0] Sel;
 wire Y;

initial
 begin
  $monitor ($time,"Y=%b, I=%b, Sel=%b",Y, I, Sel);
 end

initial
 begin
  #2   I=2;   Sel=2; 
  #2   I=2;   Sel=1; 
  #2   I=5;   Sel=0; 
  #2   I=13;   Sel=0; 
  #2   I=10;   Sel=1; 
  #2   I=15;   Sel=3; 
  #2   I=13;   Sel=0; 
  #2   I=9;   Sel=1; 
  #2   I=0;   Sel=1; 
  #2   I=1;   Sel=2; 
  #10 $stop;
 end
endmodule
