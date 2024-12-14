//`timescale 1ns/1ns
module simple_processor_testbench_mv_op (
input Run, Resetn, Clock,
input [8:0] DIN,
output [8:0] Bus,
output Done);

wire R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub;

controller_new G1 (DIN, Run, Resetn, Clock, Done, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub);

datapath_register_array G2 (R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout, Clock, Resetn, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, Bus, DIN, Add_sub, LdG);

/*
datapath_register_array (R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout, 
clk,rst,R0in, R1in,R2in,R3in,R4in,R5in,R6in,R7in,Ain,Bus,DIN,AddSub,Gin);
*/

endmodule


