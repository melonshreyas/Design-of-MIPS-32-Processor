//`timescale 1ns/1ns
module simple_processor_testbench_add_op();
reg Run, Resetn, Clock;
reg [8:0] DIN;
wire [8:0] Bus;
wire Done;

controller_new G1 (DIN, Run, Resetn, Clock, Done, R0out, R1out, R2out, R3out, R4out, R5out, 
R6out, R7out, Gout, DINout, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub);

datapath_register_array G2 (R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout, Clock, Resetn, LdR0,LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, Bus, DIN, Add_sub, LdG);

initial
Clock = 1'b1;

always #5 Clock = ~Clock;

initial 
begin
$set_toggle_region(simple_processor_testbench_add_op.G1, simple_processor_testbench_add_op.G2);
$toggle_start();
// ...

Resetn = 1'b0;
#10 Resetn = 1'b1;
Run = 1'b1;

DIN = 9'b011_000_001; // mvi operation
#20 DIN = 9'b111_001_111; // immediate data
//R0 is loaded with 111001111;
#5;


20 DIN = 9'b011_010_001; // mvi operation
#20 DIN = 9'b111_111_111; // immediate data after 50ns from 1st instuction @t=10
// R2 is loaded with 111111111;



#30 DIN = 9'b011_001_001; // mvi operation
#20 DIN = 9'b101_010_101; // immediate data
//R1 is loaded with 101010101;

#40 DIN = 9'b001_000_010;
#20 Run =0;

// ...
$toggle_stop();
$toggle_report("Simple_Processor_SAIF_ADD_Operation.saif", 1.0e-12, "simple_processor_testbench_add_op");

#10 $stop;
end
endmodule

