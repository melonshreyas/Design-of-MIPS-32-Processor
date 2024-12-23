module alu_sub (A,B,Diff);
input [15:0] A,B;
output [16:0] Diff;
assign Diff=A-B;
endmodule
