/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : O-2018.06-SP4
// Date      : Thu May 19 13:31:33 2022
/////////////////////////////////////////////////////////////


module simple_processor_Top ( Run, Resetn, Clock, DIN, Bus, Done );
  input [8:0] DIN;
  output [8:0] Bus;
  input Run, Resetn, Clock;
  output Done;
  wire   R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout,
         LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub;

  controller_new G1_Controller ( .DIN(DIN), .Run(Run), .Resetn(Resetn), 
        .Clock(Clock), .Done(Done), .R0out(R0out), .R1out(R1out), .R2out(R2out), .R3out(R3out), .R4out(R4out), .R5out(R5out), .R6out(R6out), .R7out(R7out), 
        .Gout(Gout), .DINout(DINout), .LdR0(LdR0), .LdR1(LdR1), .LdR2(LdR2), 
        .LdR3(LdR3), .LdR4(LdR4), .LdR5(LdR5), .LdR6(LdR6), .LdR7(LdR7), .LdA(
        LdA), .LdG(LdG), .Add_sub(Add_sub) );
  datapath_register_array G2_Datapath ( .R0out(R0out), .R1out(R1out), .R2out(
        R2out), .R3out(R3out), .R4out(R4out), .R5out(R5out), .R6out(R6out), 
        .R7out(R7out), .Gout(Gout), .DINout(DINout), .Clock(Clock), .rst(
        Resetn), .R0in(LdR0), .R1in(LdR1), .R2in(LdR2), .R3in(LdR3), .R4in(
        LdR4), .R5in(LdR5), .R6in(LdR6), .R7in(LdR7), .Ain(LdA), .Bus(Bus), 
        .DIN(DIN), .AddSub(Add_sub), .Gin(LdG) );
endmodule

