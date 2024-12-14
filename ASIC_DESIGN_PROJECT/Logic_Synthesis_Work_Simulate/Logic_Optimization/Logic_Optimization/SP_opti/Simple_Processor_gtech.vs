/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : O-2018.06-SP4
// Date      : Thu May  5 15:13:07 2022
/////////////////////////////////////////////////////////////


module simple_processor_Top_Top ( Run, Resetn, Clock, DIN, Bus, Done );
  input [8:0] DIN;
  output [8:0] Bus;
  input Run, Resetn, Clock;
  output Done;


  simple_processor_Top G8 ( .Run(Run), .Resetn(Resetn), .Clock(Clock), .DIN(
        DIN), .Bus(Bus), .Done(Done) );
endmodule

