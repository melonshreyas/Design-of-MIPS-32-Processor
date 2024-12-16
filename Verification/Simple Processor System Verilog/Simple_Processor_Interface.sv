interface Simple_Processor_interface (input bit Clock);
/* The Interfaces can also have parameters like modules.
input Run, Resetn, Clock;
input [8:0] DIN;
output [8:0] Bus;
output Done;
Synchrounous Reset
Asynchrounous Run and Done
*/
logic Run, Resetn, Clock;
logic [8:0] DIN;
logic [8:0] Bus;
logic Done;

// Clocking Block
clocking cb @(posedge Clock);
	output DIN, Resetn;
	input Bus;
endclocking 

// Modport 
modport Simple_Processor_Test (clocking cb, output Run, input Done);

endinterface :Simple_Processor_interface