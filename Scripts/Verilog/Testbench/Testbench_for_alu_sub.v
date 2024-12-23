module Testbench_for_alu_sub();
 alu_sub G1 (A,B,Diff);
 reg [15:0] A,B;
 wire [16:0] Diff;

initial
 begin
  $monitor ($time," Diff=%b, A=%b,B=%b", Diff, A,B);
 end

initial
 begin
  #2   A=60003;  B=43839; 
  #2   A=24485;  B=56623; 
  #2   A=51645;  B=14680; 
  #2   A=765;  B=17406; 
  #2   A=8626;  B=21468; 
  #2   A=37460;  B=9419; 
  #2   A=35280;  B=44327; 
  #2   A=18911;  B=28646; 
  #2   A=22095;  B=33408; 
  #2   A=27101;  B=30828; 
  #2   A=30826;  B=3637; 
  #2   A=40453;  B=49626; 
  #2   A=37448;  B=55301; 
  #2   A=12718;  B=27026; 
  #2   A=44462;  B=5153; 
  #10 $stop;
 end
endmodule
