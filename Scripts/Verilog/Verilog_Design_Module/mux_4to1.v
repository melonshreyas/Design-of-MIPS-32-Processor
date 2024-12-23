module mux_4to1 (Y,I,Sel);
input [3:0] I;
input [1:0] Sel;
output Y;
wire Y1,Y2;
wire [1:0]YX;
mux_2to1 G1 (Y1,I[1:0],Sel[0]);
mux_2to1 G2 (Y2,I[3:2],Sel[0]);
assign YX={Y2,Y1};
mux_2to1G2 (Y,YX[1:0],Sel[1]);
endmodule
