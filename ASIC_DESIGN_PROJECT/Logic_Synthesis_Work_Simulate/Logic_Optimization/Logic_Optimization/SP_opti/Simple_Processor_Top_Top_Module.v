module simple_processor_Top_Top (Run, Resetn, Clock,DIN,Bus,Done);
input Run, Resetn, Clock;
input [8:0] DIN;
output [8:0] Bus;
output Done;

wire R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub;

simple_processor_Top G8 (Run, Resetn, Clock,DIN,Bus,Done);

endmodule
