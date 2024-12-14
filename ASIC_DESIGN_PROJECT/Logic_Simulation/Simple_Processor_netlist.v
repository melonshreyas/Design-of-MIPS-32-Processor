/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Apr  4 12:35:20 2022
/////////////////////////////////////////////////////////////


module controller_new ( DIN, Run, Resetn, Clock, Done, R0out, R1out, R2out, 
        R3out, R4out, R5out, R6out, R7out, Gout, DINout, LdR0, LdR1, LdR2, 
        LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub );
  input [8:0] DIN;
  input Run, Resetn, Clock;
  output Done, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout,
         DINout, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG,
         Add_sub;
  wire   PS_1_, N76, n6, n7, n8;

  SAEDRVT14_LDPQ_U_0P5 LdR0_reg ( .G(n6), .D(PS_1_), .Q(Done) );
  SAEDRVT14_FDPQB_V2LP_0P5 PS_reg_1_ ( .D(N76), .CK(Clock), .QN(PS_1_) );
  SAEDRVT14_TIE1_4 U3 ( .X(n6) );
  SAEDRVT14_INV_0P5 U4 ( .A(PS_1_), .X(n7) );
  SAEDRVT14_AN3_0P5 U5 ( .A1(n7), .A2(Run), .A3(Resetn), .X(n8) );
  SAEDRVT14_INV_0P5 U6 ( .A(n8), .X(N76) );
endmodule


module simple_processor_testbench_mv_op ( Run, Resetn, Clock, DIN, Bus, Done
 );
  input [8:0] DIN;
  output [8:0] Bus;
  input Run, Resetn, Clock;
  output Done;

  assign Bus[0] = Bus[8];
  assign Bus[1] = Bus[8];
  assign Bus[2] = Bus[8];
  assign Bus[3] = Bus[8];
  assign Bus[4] = Bus[8];
  assign Bus[5] = Bus[8];
  assign Bus[6] = Bus[8];
  assign Bus[7] = Bus[8];

  controller_new G1 ( .DIN({Bus[8], Bus[8], Bus[8], Bus[8], Bus[8], Bus[8], 
        Bus[8], Bus[8], Bus[8]}), .Run(Run), .Resetn(Resetn), .Clock(Clock), 
        .Done(Done) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(Bus[8]) );
endmodule

