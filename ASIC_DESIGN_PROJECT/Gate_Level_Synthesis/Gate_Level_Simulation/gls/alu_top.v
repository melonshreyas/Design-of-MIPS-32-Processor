module alu_top;

wire [7:0] f;
wire z,c,v,agtb,altb,aeqb;
reg [7:0] a,b;
reg [3:0]s;
reg clk,rst;

alu final(f,z,c,v,agtb,altb,aeqb,a,b,s,clk,rst);

always
#5 clk = ~clk;

initial
begin
//$dumpvars;
//$set_gate_level_monitoring("on");
//$set_toggle_region("final");
//$toggle_start;

a= 8'b0100_1000;
b= 8'b1000_0111;
s= 4'b0000;
clk=0;
rst=1;

#10;
rst=0;

#10 s=4'b1000;
#10 s=4'b1100;
#10 s=4'b0001;
#10 s=4'b1001;
#10 s=4'b0101;
#10 s=4'b1101;
#10 s=4'b0011;
#10 s=4'b1011;
#10 s=4'b0111;
#10 s=4'b1111;

#10 s=4'b0100;

#100 ;
//$toggle_stop;
//$toggle_report("alu.saif",1.0e-9,"final");
//$finish;
end

initial

    begin

    $sdf_annotate("alu.sdf");

    end

endmodule



