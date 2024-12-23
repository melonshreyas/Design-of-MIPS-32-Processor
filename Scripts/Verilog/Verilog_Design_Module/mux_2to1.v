module mux_2to1 (Z,Y,I,Sel);
input [1:0] I;
input Sel;
output [3:0]Y;
output Z;
assign Y=(I[0]&(!Sel))|(I[1]&Sel);
endmodule
