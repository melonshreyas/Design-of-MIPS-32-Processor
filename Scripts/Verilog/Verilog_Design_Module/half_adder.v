module half_add (Cout,Sum,A,B);
input A,B;
output Sum,Cout;
xor G1 (Sum,A,B);
and G2 (Cout,A,B);
endmodule
