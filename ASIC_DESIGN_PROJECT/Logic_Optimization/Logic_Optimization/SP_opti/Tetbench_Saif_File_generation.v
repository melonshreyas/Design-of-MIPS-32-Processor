`timescale 1 ns / 1 ns
module stimulus;
reg clock;
reg [1:0] data;
reg reset;
wire dummy;
test U1 (data,clock, reset, dummy);
always
 begin
 #10 clock = ~clock;
 end
initial
begin
$set_toggle_region(stimulus.U1);
$toggle_start();
// ...
clock = 0;
data = 0;
reset = 1;
#50 reset = 0;
#25 data = 3; #20 data = 0;
#20 data = 1; #20 data = 2;
// ...
$toggle_stop();
$toggle_report("my_rtl_saif", 1.0e-12, "stimulus");
#80 $finish;
end
