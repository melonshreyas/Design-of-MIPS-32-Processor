module full_adder (Cout,Sum,A,B,Cin);
input A,B,Cin;
output Cout,Sum;
xor G1 (Sum,A,B,Cin);
assign Cout = (A&B)|(B&Cin)|(Cin&A);
endmodule
