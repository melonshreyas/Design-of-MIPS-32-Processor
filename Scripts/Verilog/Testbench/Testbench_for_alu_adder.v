module Testbench_for_alu_adder();
alu_adder G1 (A,B,Sum);
reg [7:0] A,B;
wire [8:0] Sum;

initial
begin
$monitor ($time," Sum=%b, A=%b,B=%b", Sum, A,B);
end

initial
begin
#2  A=81;B=135;
#2  A=197;B=0;
#2  A=226;B=159;
#2  A=231;B=119;
#2  A=70;B=83;
#2  A=11;B=14;
#2  A=195;B=138;
#2  A=80;B=151;
#2  A=21;B=103;
#2  A=116;B=247;
#2  A=80;B=45;
#2  A=61;B=66;
#2  A=34;B=130;
#2  A=125;B=142;
#2  A=126;B=148;
end
