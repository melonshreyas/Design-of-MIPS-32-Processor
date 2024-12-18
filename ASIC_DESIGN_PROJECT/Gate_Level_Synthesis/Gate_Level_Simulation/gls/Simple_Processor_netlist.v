/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Sun May  1 13:04:31 2022
/////////////////////////////////////////////////////////////


module dec3to8_1( W, Y );
  input [2:0] W;
  output [9:0] Y;
  wire   n8, n9, n10, n11, n12, n13, n14;

  SAEDRVT14_NR2_1 U3 ( .A1(W[2]), .A2(n11), .X(Y[9]) );
  SAEDRVT14_NR2_1 U4 ( .A1(W[2]), .A2(n10), .X(Y[8]) );
  SAEDRVT14_NR2_1 U5 ( .A1(W[2]), .A2(n13), .X(Y[7]) );
  SAEDRVT14_INV_0P5 U6 ( .A(W[0]), .X(n9) );
  SAEDRVT14_INV_0P5 U7 ( .A(W[2]), .X(n12) );
  SAEDRVT14_INV_0P5 U8 ( .A(W[1]), .X(n8) );
  SAEDRVT14_ND2_CDC_0P5 U9 ( .A1(W[1]), .A2(W[0]), .X(n14) );
  SAEDRVT14_ND2_CDC_0P5 U10 ( .A1(W[0]), .A2(n8), .X(n10) );
  SAEDRVT14_NR2_1 U11 ( .A1(n12), .A2(n10), .X(Y[4]) );
  SAEDRVT14_NR2_1 U12 ( .A1(n12), .A2(n14), .X(Y[2]) );
  SAEDRVT14_ND2_CDC_0P5 U13 ( .A1(n8), .A2(n9), .X(n11) );
  SAEDRVT14_ND2_CDC_0P5 U14 ( .A1(W[1]), .A2(n9), .X(n13) );
  SAEDRVT14_NR2_1 U15 ( .A1(n12), .A2(n13), .X(Y[3]) );
  SAEDRVT14_NR2_1 U16 ( .A1(n12), .A2(n11), .X(Y[5]) );
  SAEDRVT14_NR2_1 U17 ( .A1(W[2]), .A2(n14), .X(Y[6]) );
endmodule


module dec3to8_0( W, Y );
  input [2:0] W;
  output [9:0] Y;
  wire   n8, n9, n10, n11, n12, n13, n14;

  SAEDRVT14_NR2_1 U3 ( .A1(W[2]), .A2(n9), .X(Y[8]) );
  SAEDRVT14_NR2_1 U4 ( .A1(W[1]), .A2(n11), .X(Y[5]) );
  SAEDRVT14_NR2_1 U5 ( .A1(W[1]), .A2(n12), .X(Y[9]) );
  SAEDRVT14_INV_0P5 U6 ( .A(W[2]), .X(n8) );
  SAEDRVT14_INV_0P5 U7 ( .A(W[1]), .X(n13) );
  SAEDRVT14_INV_0P5 U8 ( .A(W[0]), .X(n10) );
  SAEDRVT14_ND2_CDC_0P5 U9 ( .A1(W[0]), .A2(W[1]), .X(n14) );
  SAEDRVT14_ND2_CDC_0P5 U10 ( .A1(W[0]), .A2(n13), .X(n9) );
  SAEDRVT14_NR2_1 U11 ( .A1(n8), .A2(n9), .X(Y[4]) );
  SAEDRVT14_NR2_1 U12 ( .A1(n8), .A2(n14), .X(Y[2]) );
  SAEDRVT14_ND2_CDC_0P5 U13 ( .A1(n10), .A2(n8), .X(n12) );
  SAEDRVT14_ND2_CDC_0P5 U14 ( .A1(W[2]), .A2(n10), .X(n11) );
  SAEDRVT14_NR2_1 U15 ( .A1(n13), .A2(n11), .X(Y[3]) );
  SAEDRVT14_NR2_1 U16 ( .A1(n13), .A2(n12), .X(Y[7]) );
  SAEDRVT14_NR2_1 U17 ( .A1(W[2]), .A2(n14), .X(Y[6]) );
endmodule


module dec3to8_3bit( W, Y );
  input [2:0] W;
  output [2:0] Y;

  assign Y[2] = W[2];
  assign Y[1] = W[1];
  assign Y[0] = W[0];

endmodule


module controller_new( DIN, Run, Resetn, Clock, Done, R0out, R1out, R2out, 
        R3out, R4out, R5out, R6out, R7out, Gout, DINout, LdR0, LdR1, LdR2, 
        LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub );
  input [8:0] DIN;
  input Run, Resetn, Clock;
  output Done, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout,
         DINout, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG,
         Add_sub;
  wire   n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [132:124] n;

  dec3to8_1 Z1 ( .W(n[129:127]), .Y({n123, n122, n121, n120, n119, n118, n117, 
        n116, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2}) );
  dec3to8_0 Z2 ( .W(n[126:124]), .Y({n115, n114, n113, n112, n111, n110, n109, 
        n108, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4}) );
  dec3to8_3bit Z3 ( .W(n[132:130]), .Y({n107, n106, n105}) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_6_ ( .G(n81), .D(DIN[6]), .Q(n[130]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_7_ ( .G(n81), .D(DIN[7]), .Q(n[131]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_8_ ( .G(n81), .D(DIN[8]), .Q(n[132]) );
  SAEDRVT14_LDPQ_U_0P5 IRin_reg ( .G(n82), .D(n63), .Q(n98) );
  SAEDRVT14_LDPQ_U_0P5 LdA_reg ( .G(n85), .D(n84), .Q(LdA) );
  SAEDRVT14_LDPQ_U_0P5 LdG_reg ( .G(n85), .D(n83), .Q(LdG) );
  SAEDRVT14_LDPQ_U_0P5 Gout_reg ( .G(n77), .D(n67), .Q(Gout) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_5_ ( .G(n81), .D(DIN[5]), .Q(n[129]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_4_ ( .G(n81), .D(DIN[4]), .Q(n[128]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_3_ ( .G(n81), .D(DIN[3]), .Q(n[127]) );
  SAEDRVT14_LDPQ_U_0P5 LdR7_reg ( .G(n94), .D(n86), .Q(LdR7) );
  SAEDRVT14_LDPQ_U_0P5 LdR6_reg ( .G(n94), .D(n87), .Q(LdR6) );
  SAEDRVT14_LDPQ_U_0P5 LdR5_reg ( .G(n94), .D(n88), .Q(LdR5) );
  SAEDRVT14_LDPQ_U_0P5 LdR4_reg ( .G(n94), .D(n89), .Q(LdR4) );
  SAEDRVT14_LDPQ_U_0P5 LdR3_reg ( .G(n94), .D(n90), .Q(LdR3) );
  SAEDRVT14_LDPQ_U_0P5 LdR2_reg ( .G(n94), .D(n91), .Q(LdR2) );
  SAEDRVT14_LDPQ_U_0P5 LdR1_reg ( .G(n94), .D(n92), .Q(LdR1) );
  SAEDRVT14_LDPQ_U_0P5 LdR0_reg ( .G(n94), .D(n93), .Q(LdR0) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_2_ ( .G(n81), .D(DIN[2]), .Q(n[126]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_1_ ( .G(n81), .D(DIN[1]), .Q(n[125]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_0_ ( .G(n81), .D(DIN[0]), .Q(n[124]) );
  SAEDRVT14_LDPQ_U_0P5 R7out_reg ( .G(n77), .D(n68), .Q(R7out) );
  SAEDRVT14_LDPQ_U_0P5 R6out_reg ( .G(n77), .D(n69), .Q(R6out) );
  SAEDRVT14_LDPQ_U_0P5 R5out_reg ( .G(n77), .D(n70), .Q(R5out) );
  SAEDRVT14_LDPQ_U_0P5 Done_reg ( .G(n80), .D(n79), .Q(Done) );
  SAEDRVT14_LDPQ_U_0P5 Add_sub_reg ( .G(n78), .D(n62), .Q(Add_sub) );
  SAEDRVT14_LDPQ_U_0P5 DINout_reg ( .G(n77), .D(n76), .Q(DINout) );
  SAEDRVT14_LDPQ_U_0P5 R0out_reg ( .G(n77), .D(n75), .Q(R0out) );
  SAEDRVT14_LDPQ_U_0P5 R1out_reg ( .G(n77), .D(n74), .Q(R1out) );
  SAEDRVT14_LDPQ_U_0P5 R2out_reg ( .G(n77), .D(n73), .Q(R2out) );
  SAEDRVT14_LDPQ_U_0P5 R3out_reg ( .G(n77), .D(n72), .Q(R3out) );
  SAEDRVT14_LDPQ_U_0P5 R4out_reg ( .G(n77), .D(n71), .Q(R4out) );
  SAEDRVT14_FDP_V2LP_0P5 opcode_reg_2_ ( .D(n64), .CK(Clock), .Q(n97), .QN(n56) );
  SAEDRVT14_FDP_V2LP_0P5 opcode_reg_0_ ( .D(n65), .CK(Clock), .Q(n95) );
  SAEDRVT14_FDP_V2LP_0P5 opcode_reg_1_ ( .D(n66), .CK(Clock), .Q(n96), .QN(n59) );
  SAEDRVT14_FDP_V2LP_0P5 PS_reg_2_ ( .D(n100), .CK(Clock), .Q(n57), .QN(n60)
         );
  SAEDRVT14_FDP_V2LP_0P5 PS_reg_3_ ( .D(n99), .CK(Clock), .Q(n104), .QN(n55)
         );
  SAEDRVT14_FDP_V2LP_0P5 PS_reg_0_ ( .D(n102), .CK(Clock), .Q(n103), .QN(n58)
         );
  SAEDRVT14_FDPQB_V2LP_0P5 PS_reg_1_ ( .D(n101), .CK(Clock), .QN(n61) );
  SAEDRVT14_AN2_MM_0P5 U3 ( .A1(n117), .A2(n79), .X(n87) );
  SAEDRVT14_AN2_MM_0P5 U4 ( .A1(n118), .A2(n79), .X(n88) );
  SAEDRVT14_AN2_MM_0P5 U5 ( .A1(n119), .A2(n79), .X(n89) );
  SAEDRVT14_AN2_MM_0P5 U6 ( .A1(n120), .A2(n79), .X(n90) );
  SAEDRVT14_AN2_MM_0P5 U7 ( .A1(n116), .A2(n79), .X(n86) );
  SAEDRVT14_ND2_CDC_0P5 U8 ( .A1(n53), .A2(n50), .X(n77) );
  SAEDRVT14_INV_0P5 U9 ( .A(n80), .X(n35) );
  SAEDRVT14_ND2B_U_0P5 U10 ( .A(n37), .B(n46), .X(n41) );
  SAEDRVT14_INV_0P5 U11 ( .A(n46), .X(n47) );
  SAEDRVT14_NR2_1 U12 ( .A1(n54), .A2(n43), .X(n78) );
  SAEDRVT14_INV_0P5 U13 ( .A(n43), .X(n36) );
  SAEDRVT14_INV_0P5 U14 ( .A(n38), .X(n39) );
  SAEDRVT14_INV_0P5 U15 ( .A(n42), .X(n81) );
  SAEDRVT14_INV_0P5 U16 ( .A(n54), .X(n84) );
  SAEDRVT14_AN4_0P5 U17 ( .A1(n61), .A2(n55), .A3(n58), .A4(n57), .X(n83) );
  SAEDRVT14_NR2_1 U18 ( .A1(n95), .A2(n96), .X(n51) );
  SAEDRVT14_AN4_0P5 U19 ( .A1(n61), .A2(n103), .A3(n60), .A4(n55), .X(n63) );
  SAEDRVT14_AN4_0P5 U20 ( .A1(n61), .A2(n104), .A3(n60), .A4(n58), .X(n67) );
  SAEDRVT14_ND2_CDC_0P5 U21 ( .A1(n95), .A2(n96), .X(n40) );
  SAEDRVT14_AN3_0P5 U22 ( .A1(n95), .A2(n59), .A3(n56), .X(n62) );
  SAEDRVT14_INV_0P5 U23 ( .A(Resetn), .X(n52) );
  SAEDRVT14_OR4_1 U24 ( .A1(n104), .A2(n61), .A3(n103), .A4(n57), .X(n54) );
  SAEDRVT14_ND2_CDC_0P5 U25 ( .A1(n56), .A2(n84), .X(n53) );
  SAEDRVT14_AN2B_MM_1 U26 ( .B(n51), .A(n53), .X(n37) );
  SAEDRVT14_NR2_1 U27 ( .A1(n51), .A2(n97), .X(n49) );
  SAEDRVT14_ND2_CDC_0P5 U28 ( .A1(n49), .A2(n40), .X(n43) );
  SAEDRVT14_AN2_MM_0P5 U29 ( .A1(n36), .A2(n67), .X(n48) );
  SAEDRVT14_AN4_0P5 U30 ( .A1(n96), .A2(n95), .A3(n83), .A4(n56), .X(n38) );
  SAEDRVT14_OR4_1 U31 ( .A1(n37), .A2(n48), .A3(n63), .A4(n38), .X(n80) );
  SAEDRVT14_OAI21_0P5 U32 ( .A1(n53), .A2(n40), .B(n35), .X(n94) );
  SAEDRVT14_ND2_CDC_0P5 U33 ( .A1(n83), .A2(n36), .X(n46) );
  SAEDRVT14_AO22_0P5 U34 ( .A1(n118), .A2(n78), .B1(n110), .B2(n41), .X(n70)
         );
  SAEDRVT14_AO22_0P5 U35 ( .A1(n116), .A2(n78), .B1(n108), .B2(n41), .X(n68)
         );
  SAEDRVT14_OAI21_0P5 U36 ( .A1(n40), .A2(n53), .B(n39), .X(n76) );
  SAEDRVT14_AO22_0P5 U37 ( .A1(n123), .A2(n78), .B1(n115), .B2(n41), .X(n75)
         );
  SAEDRVT14_AO22_0P5 U38 ( .A1(n122), .A2(n78), .B1(n114), .B2(n41), .X(n74)
         );
  SAEDRVT14_AO22_0P5 U39 ( .A1(n117), .A2(n78), .B1(n109), .B2(n41), .X(n69)
         );
  SAEDRVT14_AO22_0P5 U40 ( .A1(n119), .A2(n78), .B1(n111), .B2(n41), .X(n71)
         );
  SAEDRVT14_AO22_0P5 U41 ( .A1(n121), .A2(n78), .B1(n113), .B2(n41), .X(n73)
         );
  SAEDRVT14_AO22_0P5 U42 ( .A1(n120), .A2(n78), .B1(n112), .B2(n41), .X(n72)
         );
  SAEDRVT14_MUX2_U_0P5 U43 ( .D0(n97), .D1(n107), .S(n98), .X(n64) );
  SAEDRVT14_MUX2_U_0P5 U44 ( .D0(n96), .D1(n106), .S(n98), .X(n66) );
  SAEDRVT14_NR2_1 U45 ( .A1(n46), .A2(n52), .X(n99) );
  SAEDRVT14_ND2_CDC_0P5 U46 ( .A1(n63), .A2(Run), .X(n42) );
  SAEDRVT14_NR2_1 U47 ( .A1(n42), .A2(n52), .X(n101) );
  SAEDRVT14_OR3_0P5 U48 ( .A1(n84), .A2(n83), .A3(n67), .X(n79) );
  SAEDRVT14_AN2_MM_0P5 U49 ( .A1(n43), .A2(n83), .X(n45) );
  SAEDRVT14_OAI22_0P5 U50 ( .A1(n49), .A2(n54), .B1(n81), .B2(n79), .X(n44) );
  SAEDRVT14_OR4_1 U51 ( .A1(n67), .A2(n45), .A3(n52), .A4(n44), .X(n102) );
  SAEDRVT14_OR3_0P5 U52 ( .A1(n47), .A2(n78), .A3(n63), .X(n85) );
  SAEDRVT14_AOI21_0P75 U53 ( .A1(n83), .A2(n49), .B(n48), .X(n50) );
  SAEDRVT14_AN2_MM_0P5 U54 ( .A1(n123), .A2(n79), .X(n93) );
  SAEDRVT14_AN2_MM_0P5 U55 ( .A1(n122), .A2(n79), .X(n92) );
  SAEDRVT14_AN2_MM_0P5 U56 ( .A1(n121), .A2(n79), .X(n91) );
  SAEDRVT14_NR3_0P5 U57 ( .A1(n53), .A2(n52), .A3(n51), .X(n100) );
  SAEDRVT14_ND2B_U_0P5 U58 ( .A(n63), .B(n54), .X(n82) );
  SAEDRVT14_MUX2_U_0P5 U59 ( .D0(n95), .D1(n105), .S(n98), .X(n65) );
endmodule


module mux_10to1( R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
        Gout, DINout, DIN, R0, R1, R2, R3, R4, R5, R6, R7, G, Bus );
  input [8:0] DIN;
  input [8:0] R0;
  input [8:0] R1;
  input [8:0] R2;
  input [8:0] R3;
  input [8:0] R4;
  input [8:0] R5;
  input [8:0] R6;
  input [8:0] R7;
  input [8:0] G;
  output [8:0] Bus;
  input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout;
  wire   n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187;

  SAEDRVT14_LDPQ_U_0P5 Bus_reg_8_ ( .G(n187), .D(n178), .Q(Bus[8]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_7_ ( .G(n187), .D(n179), .Q(Bus[7]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_6_ ( .G(n187), .D(n180), .Q(Bus[6]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_5_ ( .G(n187), .D(n181), .Q(Bus[5]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_4_ ( .G(n187), .D(n182), .Q(Bus[4]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_3_ ( .G(n187), .D(n183), .Q(Bus[3]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_2_ ( .G(n187), .D(n184), .Q(Bus[2]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_1_ ( .G(n187), .D(n185), .Q(Bus[1]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_0_ ( .G(n187), .D(n186), .Q(Bus[0]) );
  SAEDRVT14_AOI22_0P5 U3 ( .A1(n165), .A2(DIN[8]), .B1(n164), .B2(R5[8]), .X(
        n147) );
  SAEDRVT14_AOI22_0P5 U4 ( .A1(n167), .A2(R6[1]), .B1(n166), .B2(R2[1]), .X(
        n122) );
  SAEDRVT14_AOI22_0P5 U5 ( .A1(n165), .A2(DIN[1]), .B1(n164), .B2(R5[1]), .X(
        n123) );
  SAEDRVT14_AOI22_0P5 U6 ( .A1(n165), .A2(DIN[0]), .B1(n164), .B2(R5[0]), .X(
        n141) );
  SAEDRVT14_AOI22_0P5 U7 ( .A1(n167), .A2(R6[0]), .B1(n166), .B2(R2[0]), .X(
        n140) );
  SAEDRVT14_AOI22_0P5 U8 ( .A1(n171), .A2(R3[8]), .B1(n170), .B2(R7[8]), .X(
        n144) );
  SAEDRVT14_AOI22_0P5 U9 ( .A1(n171), .A2(R3[0]), .B1(n170), .B2(R7[0]), .X(
        n138) );
  SAEDRVT14_AOI22_0P5 U10 ( .A1(n163), .A2(G[8]), .B1(n162), .B2(R0[8]), .X(
        n149) );
  SAEDRVT14_AOI22_0P5 U11 ( .A1(n169), .A2(R4[8]), .B1(n168), .B2(R1[8]), .X(
        n145) );
  SAEDRVT14_AOI22_0P5 U12 ( .A1(n167), .A2(R6[8]), .B1(n166), .B2(R2[8]), .X(
        n146) );
  SAEDRVT14_AOI22_0P5 U13 ( .A1(n163), .A2(G[7]), .B1(n162), .B2(R0[7]), .X(
        n155) );
  SAEDRVT14_AOI22_0P5 U14 ( .A1(n171), .A2(R3[1]), .B1(n170), .B2(R7[1]), .X(
        n120) );
  SAEDRVT14_AOI22_0P5 U15 ( .A1(n169), .A2(R4[0]), .B1(n168), .B2(R1[0]), .X(
        n139) );
  SAEDRVT14_AOI22_0P5 U16 ( .A1(n163), .A2(G[2]), .B1(n162), .B2(R0[2]), .X(
        n131) );
  SAEDRVT14_AOI22_0P5 U17 ( .A1(n167), .A2(R6[7]), .B1(n166), .B2(R2[7]), .X(
        n152) );
  SAEDRVT14_AOI22_0P5 U18 ( .A1(n165), .A2(DIN[2]), .B1(n164), .B2(R5[2]), .X(
        n129) );
  SAEDRVT14_AOI22_0P5 U19 ( .A1(n171), .A2(R3[6]), .B1(n170), .B2(R7[6]), .X(
        n156) );
  SAEDRVT14_AOI22_0P5 U20 ( .A1(n169), .A2(R4[1]), .B1(n168), .B2(R1[1]), .X(
        n121) );
  SAEDRVT14_AOI22_0P5 U21 ( .A1(n169), .A2(R4[6]), .B1(n168), .B2(R1[6]), .X(
        n157) );
  SAEDRVT14_AOI22_0P5 U22 ( .A1(n163), .A2(G[1]), .B1(n162), .B2(R0[1]), .X(
        n125) );
  SAEDRVT14_AOI22_0P5 U23 ( .A1(n167), .A2(R6[2]), .B1(n166), .B2(R2[2]), .X(
        n128) );
  SAEDRVT14_AOI22_0P5 U24 ( .A1(n167), .A2(R6[6]), .B1(n166), .B2(R2[6]), .X(
        n158) );
  SAEDRVT14_AOI22_0P5 U25 ( .A1(n171), .A2(R3[7]), .B1(n170), .B2(R7[7]), .X(
        n150) );
  SAEDRVT14_AOI22_0P5 U26 ( .A1(n165), .A2(DIN[6]), .B1(n164), .B2(R5[6]), .X(
        n159) );
  SAEDRVT14_AOI22_0P5 U27 ( .A1(n169), .A2(R4[2]), .B1(n168), .B2(R1[2]), .X(
        n127) );
  SAEDRVT14_AOI22_0P5 U28 ( .A1(n169), .A2(R4[7]), .B1(n168), .B2(R1[7]), .X(
        n151) );
  SAEDRVT14_AOI22_0P5 U29 ( .A1(n171), .A2(R3[2]), .B1(n170), .B2(R7[2]), .X(
        n126) );
  SAEDRVT14_AOI22_0P5 U30 ( .A1(n163), .A2(G[6]), .B1(n162), .B2(R0[6]), .X(
        n161) );
  SAEDRVT14_AOI22_0P5 U31 ( .A1(n165), .A2(DIN[7]), .B1(n164), .B2(R5[7]), .X(
        n153) );
  SAEDRVT14_AOI22_0P5 U32 ( .A1(n163), .A2(G[0]), .B1(n162), .B2(R0[0]), .X(
        n143) );
  SAEDRVT14_AOI22_0P5 U33 ( .A1(n167), .A2(R6[4]), .B1(n166), .B2(R2[4]), .X(
        n116) );
  SAEDRVT14_AOI22_0P5 U34 ( .A1(n167), .A2(R6[3]), .B1(n166), .B2(R2[3]), .X(
        n134) );
  SAEDRVT14_AOI22_0P5 U35 ( .A1(n163), .A2(G[3]), .B1(n162), .B2(R0[3]), .X(
        n137) );
  SAEDRVT14_AOI22_0P5 U36 ( .A1(n171), .A2(R3[4]), .B1(n170), .B2(R7[4]), .X(
        n114) );
  SAEDRVT14_AOI22_0P5 U37 ( .A1(n163), .A2(G[5]), .B1(n162), .B2(R0[5]), .X(
        n177) );
  SAEDRVT14_AOI22_0P5 U38 ( .A1(n169), .A2(R4[5]), .B1(n168), .B2(R1[5]), .X(
        n173) );
  SAEDRVT14_AOI22_0P5 U39 ( .A1(n171), .A2(R3[3]), .B1(n170), .B2(R7[3]), .X(
        n132) );
  SAEDRVT14_AOI22_0P5 U40 ( .A1(n171), .A2(R3[5]), .B1(n170), .B2(R7[5]), .X(
        n172) );
  SAEDRVT14_AOI22_0P5 U41 ( .A1(n165), .A2(DIN[3]), .B1(n164), .B2(R5[3]), .X(
        n135) );
  SAEDRVT14_AOI22_0P5 U42 ( .A1(n165), .A2(DIN[4]), .B1(n164), .B2(R5[4]), .X(
        n117) );
  SAEDRVT14_AOI22_0P5 U43 ( .A1(n167), .A2(R6[5]), .B1(n166), .B2(R2[5]), .X(
        n174) );
  SAEDRVT14_AOI22_0P5 U44 ( .A1(n163), .A2(G[4]), .B1(n162), .B2(R0[4]), .X(
        n119) );
  SAEDRVT14_AOI22_0P5 U45 ( .A1(n169), .A2(R4[3]), .B1(n168), .B2(R1[3]), .X(
        n133) );
  SAEDRVT14_AOI22_0P5 U46 ( .A1(n165), .A2(DIN[5]), .B1(n164), .B2(R5[5]), .X(
        n175) );
  SAEDRVT14_AOI22_0P5 U47 ( .A1(n169), .A2(R4[4]), .B1(n168), .B2(R1[4]), .X(
        n115) );
  SAEDRVT14_INV_0P5 U48 ( .A(n94), .X(n96) );
  SAEDRVT14_NR2_1 U49 ( .A1(n106), .A2(n105), .X(n109) );
  SAEDRVT14_NR2_1 U50 ( .A1(R1out), .A2(n98), .X(n111) );
  SAEDRVT14_INV_0P5 U51 ( .A(n98), .X(n100) );
  SAEDRVT14_NR2_1 U52 ( .A1(R7out), .A2(n94), .X(n102) );
  SAEDRVT14_NR2_1 U53 ( .A1(n92), .A2(n105), .X(n97) );
  SAEDRVT14_INV_0P5 U54 ( .A(R5out), .X(n108) );
  SAEDRVT14_INV_0P5 U55 ( .A(R0out), .X(n103) );
  SAEDRVT14_INV_0P5 U56 ( .A(R6out), .X(n107) );
  SAEDRVT14_INV_0P5 U57 ( .A(R4out), .X(n104) );
  SAEDRVT14_INV_0P5 U58 ( .A(R2out), .X(n99) );
  SAEDRVT14_INV_0P5 U59 ( .A(R3out), .X(n110) );
  SAEDRVT14_INV_0P5 U60 ( .A(DINout), .X(n90) );
  SAEDRVT14_NR2_1 U61 ( .A1(DINout), .A2(Gout), .X(n95) );
  SAEDRVT14_INV_0P5 U62 ( .A(Gout), .X(n101) );
  SAEDRVT14_OR4_1 U63 ( .A1(R6out), .A2(R4out), .A3(R0out), .A4(R5out), .X(n93) );
  SAEDRVT14_OR4_1 U64 ( .A1(R1out), .A2(R2out), .A3(R3out), .A4(n93), .X(n94)
         );
  SAEDRVT14_AN3_0P5 U65 ( .A1(Gout), .A2(n102), .A3(n90), .X(n163) );
  SAEDRVT14_ND2_CDC_0P5 U66 ( .A1(n107), .A2(n108), .X(n92) );
  SAEDRVT14_ND2B_U_0P5 U67 ( .A(R7out), .B(n95), .X(n91) );
  SAEDRVT14_OR4_1 U68 ( .A1(R2out), .A2(R1out), .A3(R3out), .A4(n91), .X(n105)
         );
  SAEDRVT14_AN3_0P5 U69 ( .A1(R0out), .A2(n97), .A3(n104), .X(n162) );
  SAEDRVT14_OR4_1 U70 ( .A1(DINout), .A2(Gout), .A3(R7out), .A4(n93), .X(n98)
         );
  SAEDRVT14_AN3_0P5 U71 ( .A1(R3out), .A2(n111), .A3(n99), .X(n171) );
  SAEDRVT14_AN3_0P5 U72 ( .A1(R7out), .A2(n96), .A3(n95), .X(n170) );
  SAEDRVT14_AN3_0P5 U73 ( .A1(R4out), .A2(n97), .A3(n103), .X(n169) );
  SAEDRVT14_AN4_0P5 U74 ( .A1(R1out), .A2(n100), .A3(n99), .A4(n110), .X(n168)
         );
  SAEDRVT14_OR4_1 U75 ( .A1(n171), .A2(n170), .A3(n169), .A4(n168), .X(n113)
         );
  SAEDRVT14_AN3_0P5 U76 ( .A1(DINout), .A2(n102), .A3(n101), .X(n165) );
  SAEDRVT14_ND2_CDC_0P5 U77 ( .A1(n104), .A2(n103), .X(n106) );
  SAEDRVT14_AN3_0P5 U78 ( .A1(R5out), .A2(n109), .A3(n107), .X(n164) );
  SAEDRVT14_AN3_0P5 U79 ( .A1(R6out), .A2(n109), .A3(n108), .X(n167) );
  SAEDRVT14_AN3_0P5 U80 ( .A1(R2out), .A2(n111), .A3(n110), .X(n166) );
  SAEDRVT14_OR4_1 U81 ( .A1(n165), .A2(n164), .A3(n167), .A4(n166), .X(n112)
         );
  SAEDRVT14_OR4_1 U82 ( .A1(n163), .A2(n162), .A3(n113), .A4(n112), .X(n187)
         );
  SAEDRVT14_AN4_0P5 U83 ( .A1(n117), .A2(n116), .A3(n115), .A4(n114), .X(n118)
         );
  SAEDRVT14_ND2_CDC_0P5 U84 ( .A1(n119), .A2(n118), .X(n182) );
  SAEDRVT14_AN4_0P5 U85 ( .A1(n123), .A2(n122), .A3(n121), .A4(n120), .X(n124)
         );
  SAEDRVT14_ND2_CDC_0P5 U86 ( .A1(n125), .A2(n124), .X(n185) );
  SAEDRVT14_AN4_0P5 U87 ( .A1(n129), .A2(n128), .A3(n127), .A4(n126), .X(n130)
         );
  SAEDRVT14_ND2_CDC_0P5 U88 ( .A1(n131), .A2(n130), .X(n184) );
  SAEDRVT14_AN4_0P5 U89 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .X(n136)
         );
  SAEDRVT14_ND2_CDC_0P5 U90 ( .A1(n137), .A2(n136), .X(n183) );
  SAEDRVT14_AN4_0P5 U91 ( .A1(n141), .A2(n140), .A3(n139), .A4(n138), .X(n142)
         );
  SAEDRVT14_ND2_CDC_0P5 U92 ( .A1(n143), .A2(n142), .X(n186) );
  SAEDRVT14_AN4_0P5 U93 ( .A1(n147), .A2(n146), .A3(n145), .A4(n144), .X(n148)
         );
  SAEDRVT14_ND2_CDC_0P5 U94 ( .A1(n149), .A2(n148), .X(n178) );
  SAEDRVT14_AN4_0P5 U95 ( .A1(n153), .A2(n152), .A3(n151), .A4(n150), .X(n154)
         );
  SAEDRVT14_ND2_CDC_0P5 U96 ( .A1(n155), .A2(n154), .X(n179) );
  SAEDRVT14_AN4_0P5 U97 ( .A1(n159), .A2(n158), .A3(n157), .A4(n156), .X(n160)
         );
  SAEDRVT14_ND2_CDC_0P5 U98 ( .A1(n161), .A2(n160), .X(n180) );
  SAEDRVT14_AN4_0P5 U99 ( .A1(n175), .A2(n174), .A3(n173), .A4(n172), .X(n176)
         );
  SAEDRVT14_ND2_CDC_0P5 U100 ( .A1(n177), .A2(n176), .X(n181) );
endmodule


module half_adder_33 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_32 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_16 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_33 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_32 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_31 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_30 ( a, b, sum, cout );
  input a, b;
  output sum, cout;
  wire   a;
  assign sum = a;

endmodule


module full_adder_15 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n2, n4;

  half_adder_31 h1 ( .a(a), .b(b), .sum(n4), .cout(cout) );
  half_adder_30 h2 ( .a(n4), .b(n2), .sum(sum) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n2) );
endmodule


module half_adder_29 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_28 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_14 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_29 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_28 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_27 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_26 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_13 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_27 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_26 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_25 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_24 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_12 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_25 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_24 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module ripple_carry_4_bit_3 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n2, n3, n4, n5;

  full_adder_15 fa0 ( .a(a[0]), .b(b[0]), .cin(n2), .sum(sum[0]), .cout(n5) );
  full_adder_14 fa1 ( .a(a[1]), .b(b[1]), .cin(n5), .sum(sum[1]), .cout(n4) );
  full_adder_13 fa2 ( .a(a[2]), .b(b[2]), .cin(n4), .sum(sum[2]), .cout(n3) );
  full_adder_12 fa3 ( .a(a[3]), .b(b[3]), .cin(n3), .sum(sum[3]), .cout(cout)
         );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n2) );
endmodule


module half_adder_23 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_22 ( a, b, sum, cout );
  input a, b;
  output sum, cout;
  wire   a;
  assign cout = a;

  SAEDRVT14_INV_0P5 U1 ( .A(a), .X(sum) );
endmodule


module full_adder_11 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n2, n3, n4, n7;

  half_adder_23 h1 ( .a(a), .b(b), .sum(n4), .cout(n3) );
  half_adder_22 h2 ( .a(n4), .b(n7), .sum(sum), .cout(n2) );
  SAEDRVT14_TIE1_4 U1 ( .X(n7) );
  SAEDRVT14_OR2_0P5 U2 ( .A1(n3), .A2(n2), .X(cout) );
endmodule


module half_adder_21 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_20 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_10 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_21 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_20 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_19 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_18 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_9 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_19 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_18 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_17 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_16 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_8 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_17 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_16 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module ripple_carry_4_bit_2 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n2, n3, n4, n10;

  full_adder_11 fa0 ( .a(a[0]), .b(b[0]), .cin(n10), .sum(sum[0]), .cout(n4)
         );
  full_adder_10 fa1 ( .a(a[1]), .b(b[1]), .cin(n4), .sum(sum[1]), .cout(n3) );
  full_adder_9 fa2 ( .a(a[2]), .b(b[2]), .cin(n3), .sum(sum[2]), .cout(n2) );
  full_adder_8 fa3 ( .a(a[3]), .b(b[3]), .cin(n2), .sum(sum[3]), .cout(cout)
         );
  SAEDRVT14_TIE1_4 U1 ( .X(n10) );
endmodule


module mux2X1_2 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(in0[0]), .D1(in1[0]), .S(sel), .X(out[0]) );
  SAEDRVT14_MUX2_U_0P5 U2 ( .D0(in0[2]), .D1(in1[2]), .S(sel), .X(out[2]) );
  SAEDRVT14_MUX2_U_0P5 U3 ( .D0(in0[3]), .D1(in1[3]), .S(sel), .X(out[3]) );
  SAEDRVT14_MUX2_U_0P5 U4 ( .D0(in0[1]), .D1(in1[1]), .S(sel), .X(out[1]) );
endmodule


module mux2X1_1_1 ( in0, in1, sel, out );
  input in0, in1, sel;
  output out;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(in0), .D1(in1), .S(sel), .X(out) );
endmodule


module carry_select_adder_4bit_slice_1 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n26;
  wire   [11:8] n;

  ripple_carry_4_bit_3 rca1 ( .a(a), .b(b), .cin(n1), .sum(n), .cout(n7) );
  ripple_carry_4_bit_2 rca2 ( .a(a), .b(b), .cin(n26), .sum({n6, n5, n4, n3}), 
        .cout(n2) );
  mux2X1_2 ms0 ( .in0(n), .in1({n6, n5, n4, n3}), .sel(cin), .out(sum) );
  mux2X1_1_1 mc0 ( .in0(n7), .in1(n2), .sel(cin), .out(cout) );
  SAEDRVT14_TIE0_V1_2 U3 ( .X(n1) );
  SAEDRVT14_TIE1_4 U4 ( .X(n26) );
endmodule


module half_adder_15 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_14 ( a, b, sum, cout );
  input a, b;
  output sum, cout;
  wire   a;
  assign sum = a;

endmodule


module full_adder_7 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n2, n4;

  half_adder_15 h1 ( .a(a), .b(b), .sum(n4), .cout(cout) );
  half_adder_14 h2 ( .a(n4), .b(n2), .sum(sum) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n2) );
endmodule


module half_adder_13 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_12 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_6 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_13 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_12 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_11 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_10 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_5 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_11 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_10 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_9 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(a), .A2(b), .X(sum) );
endmodule


module half_adder_8 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(a), .A2(b), .X(sum) );
endmodule


module full_adder_4 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1;

  half_adder_9 h1 ( .a(a), .b(b), .sum(n1) );
  half_adder_8 h2 ( .a(n1), .b(cin), .sum(sum) );
endmodule


module ripple_carry_4_bit_1 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n2, n3, n4, n5;

  full_adder_7 fa0 ( .a(a[0]), .b(b[0]), .cin(n2), .sum(sum[0]), .cout(n5) );
  full_adder_6 fa1 ( .a(a[1]), .b(b[1]), .cin(n5), .sum(sum[1]), .cout(n4) );
  full_adder_5 fa2 ( .a(a[2]), .b(b[2]), .cin(n4), .sum(sum[2]), .cout(n3) );
  full_adder_4 fa3 ( .a(a[3]), .b(b[3]), .cin(n3), .sum(sum[3]) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n2) );
endmodule


module half_adder_7 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_6 ( a, b, sum, cout );
  input a, b;
  output sum, cout;
  wire   a;
  assign cout = a;

  SAEDRVT14_INV_0P5 U1 ( .A(a), .X(sum) );
endmodule


module full_adder_3 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n2, n3, n4, n7;

  half_adder_7 h1 ( .a(a), .b(b), .sum(n4), .cout(n3) );
  half_adder_6 h2 ( .a(n4), .b(n7), .sum(sum), .cout(n2) );
  SAEDRVT14_TIE1_4 U1 ( .X(n7) );
  SAEDRVT14_OR2_0P5 U2 ( .A1(n3), .A2(n2), .X(cout) );
endmodule


module half_adder_5 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_4 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_2 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_5 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_4 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_3 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_2 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_1 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, n2, n3;

  half_adder_3 h1 ( .a(a), .b(b), .sum(n3), .cout(n2) );
  half_adder_2 h2 ( .a(n3), .b(cin), .sum(sum), .cout(n1) );
  SAEDRVT14_OR2_0P5 U1 ( .A1(n2), .A2(n1), .X(cout) );
endmodule


module half_adder_1 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(a), .A2(b), .X(sum) );
endmodule


module half_adder_0 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(a), .A2(b), .X(sum) );
endmodule


module full_adder_0 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1;

  half_adder_1 h1 ( .a(a), .b(b), .sum(n1) );
  half_adder_0 h2 ( .a(n1), .b(cin), .sum(sum) );
endmodule


module ripple_carry_4_bit_0 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n2, n3, n4, n9;

  full_adder_3 fa0 ( .a(a[0]), .b(b[0]), .cin(n9), .sum(sum[0]), .cout(n4) );
  full_adder_2 fa1 ( .a(a[1]), .b(b[1]), .cin(n4), .sum(sum[1]), .cout(n3) );
  full_adder_1 fa2 ( .a(a[2]), .b(b[2]), .cin(n3), .sum(sum[2]), .cout(n2) );
  full_adder_0 fa3 ( .a(a[3]), .b(b[3]), .cin(n2), .sum(sum[3]) );
  SAEDRVT14_TIE1_4 U1 ( .X(n9) );
endmodule


module mux2X1_0 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(in0[3]), .D1(in1[3]), .S(sel), .X(out[3]) );
  SAEDRVT14_MUX2_U_0P5 U2 ( .D0(in0[2]), .D1(in1[2]), .S(sel), .X(out[2]) );
  SAEDRVT14_MUX2_U_0P5 U3 ( .D0(in0[1]), .D1(in1[1]), .S(sel), .X(out[1]) );
  SAEDRVT14_MUX2_U_0P5 U4 ( .D0(in0[0]), .D1(in1[0]), .S(sel), .X(out[0]) );
endmodule


module carry_select_adder_4bit_slice_0 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n3, n4, n5, n6, n7, n25;
  wire   [11:8] n;

  ripple_carry_4_bit_1 rca1 ( .a(a), .b(b), .cin(n3), .sum(n) );
  ripple_carry_4_bit_0 rca2 ( .a(a), .b(b), .cin(n25), .sum({n7, n6, n5, n4})
         );
  mux2X1_0 ms0 ( .in0(n), .in1({n7, n6, n5, n4}), .sel(cin), .out(sum) );
  SAEDRVT14_TIE0_V1_2 U3 ( .X(n3) );
  SAEDRVT14_TIE1_4 U4 ( .X(n25) );
endmodule


module csa_9bit( a, b, cin, sum, cout );
  input [8:0] a;
  input [8:0] b;
  output [8:0] sum;
  input cin;
  output cout;

  wire   [2:1] n;

  full_adder_16 fa0 ( .a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(n[1])
         );
  carry_select_adder_4bit_slice_1 csa_slice1 ( .a(a[4:1]), .b(b[4:1]), .cin(
        n[1]), .sum(sum[4:1]), .cout(n[2]) );
  carry_select_adder_4bit_slice_0 csa_slice2 ( .a(a[8:5]), .b(b[8:5]), .cin(
        n[2]), .sum(sum[8:5]) );
endmodule


module Add_Sub( A, Bus, AddSub, ALU_out );
  input [8:0] A;
  input [8:0] Bus;
  output [8:0] ALU_out;
  input AddSub;
  wire   n2;
  wire   [11:3] n;

  csa_9bit add1 ( .a(A), .b(n), .cin(AddSub), .sum(ALU_out) );
  SAEDRVT14_INV_0P5 U1 ( .A(AddSub), .X(n2) );
  SAEDRVT14_MUXI2_U_0P5 U2 ( .D0(n2), .D1(AddSub), .S(Bus[8]), .X(n[11]) );
  SAEDRVT14_MUXI2_U_0P5 U3 ( .D0(n2), .D1(AddSub), .S(Bus[7]), .X(n[10]) );
  SAEDRVT14_MUXI2_U_0P5 U4 ( .D0(n2), .D1(AddSub), .S(Bus[6]), .X(n[9]) );
  SAEDRVT14_MUXI2_U_0P5 U5 ( .D0(n2), .D1(AddSub), .S(Bus[5]), .X(n[8]) );
  SAEDRVT14_MUXI2_U_0P5 U6 ( .D0(n2), .D1(AddSub), .S(Bus[4]), .X(n[7]) );
  SAEDRVT14_MUXI2_U_0P5 U7 ( .D0(n2), .D1(AddSub), .S(Bus[3]), .X(n[6]) );
  SAEDRVT14_MUXI2_U_0P5 U8 ( .D0(n2), .D1(AddSub), .S(Bus[0]), .X(n[3]) );
  SAEDRVT14_MUXI2_U_0P5 U9 ( .D0(n2), .D1(AddSub), .S(Bus[2]), .X(n[5]) );
  SAEDRVT14_MUXI2_U_0P5 U10 ( .D0(n2), .D1(AddSub), .S(Bus[1]), .X(n[4]) );
endmodule


module reg_G( Sum, Gin, Clock, rst, Z );
  input [8:0] Sum;
  output [8:0] Z;
  input Gin, Clock, rst;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  SAEDRVT14_FDP_V2LP_0P5 Z_reg_8_ ( .D(n12), .CK(Clock), .Q(Z[8]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_7_ ( .D(n13), .CK(Clock), .Q(Z[7]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_6_ ( .D(n14), .CK(Clock), .Q(Z[6]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_5_ ( .D(n15), .CK(Clock), .Q(Z[5]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_4_ ( .D(n16), .CK(Clock), .Q(Z[4]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_3_ ( .D(n17), .CK(Clock), .Q(Z[3]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_2_ ( .D(n18), .CK(Clock), .Q(Z[2]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_1_ ( .D(n19), .CK(Clock), .Q(Z[1]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_0_ ( .D(n20), .CK(Clock), .Q(Z[0]) );
  SAEDRVT14_INV_0P5 U2 ( .A(Gin), .X(n11) );
  SAEDRVT14_OA221_U_0P5 U3 ( .A1(Gin), .A2(Z[1]), .B1(n11), .B2(Sum[1]), .C(
        rst), .X(n19) );
  SAEDRVT14_OA221_U_0P5 U4 ( .A1(Gin), .A2(Z[0]), .B1(n11), .B2(Sum[0]), .C(
        rst), .X(n20) );
  SAEDRVT14_OA221_U_0P5 U5 ( .A1(Gin), .A2(Z[3]), .B1(n11), .B2(Sum[3]), .C(
        rst), .X(n17) );
  SAEDRVT14_OA221_U_0P5 U6 ( .A1(Gin), .A2(Z[8]), .B1(n11), .B2(Sum[8]), .C(
        rst), .X(n12) );
  SAEDRVT14_OA221_U_0P5 U7 ( .A1(Gin), .A2(Z[7]), .B1(n11), .B2(Sum[7]), .C(
        rst), .X(n13) );
  SAEDRVT14_OA221_U_0P5 U8 ( .A1(Gin), .A2(Z[6]), .B1(n11), .B2(Sum[6]), .C(
        rst), .X(n14) );
  SAEDRVT14_OA221_U_0P5 U9 ( .A1(Gin), .A2(Z[5]), .B1(n11), .B2(Sum[5]), .C(
        rst), .X(n15) );
  SAEDRVT14_OA221_U_0P5 U10 ( .A1(Gin), .A2(Z[4]), .B1(n11), .B2(Sum[4]), .C(
        rst), .X(n16) );
  SAEDRVT14_OA221_U_0P5 U11 ( .A1(Gin), .A2(Z[2]), .B1(n11), .B2(Sum[2]), .C(
        rst), .X(n18) );
endmodule


module Register_8( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n12), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n13), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n14), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n15), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n16), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n17), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n18), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n19), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n20), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n11), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n11), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n11), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n11), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n19) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n11), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n16) );
  SAEDRVT14_INV_0P5 U8 ( .A(EN), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n11), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n20) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n11), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n11), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n11), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n14) );
endmodule


module Register_7 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n29), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n28), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n27), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n26), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n25), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n24), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n23), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n22), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n21), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n20), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n25) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n20), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n20), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n26) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n20), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n27) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n20), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n28) );
  SAEDRVT14_INV_0P5 U8 ( .A(EN), .X(n20) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n20), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n21) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n20), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n22) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n20), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n20), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n29) );
endmodule


module Register_6 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n29), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n28), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n27), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n26), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n25), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n24), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n23), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n22), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n21), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n20), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n21) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n20), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n28) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n20), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n20), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n22) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n20), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n29) );
  SAEDRVT14_INV_0P5 U8 ( .A(EN), .X(n20) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n20), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n20), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n25) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n20), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n26) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n20), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n27) );
endmodule


module Register_5 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n29), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n28), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n27), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n26), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n25), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n24), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n23), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n22), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n21), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n20), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n25) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n20), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n22) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n20), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n20), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n29) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n20), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n21) );
  SAEDRVT14_INV_0P5 U8 ( .A(EN), .X(n20) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n20), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n20), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n26) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n20), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n27) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n20), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n28) );
endmodule


module Register_4 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n29), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n28), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n27), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n26), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n25), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n24), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n23), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n22), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n21), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n20), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n21) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n20), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n25) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n20), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n20), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n20), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n22) );
  SAEDRVT14_INV_0P5 U8 ( .A(EN), .X(n20) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n20), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n26) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n20), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n27) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n20), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n28) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n20), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n29) );
endmodule


module Register_3 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n29), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n28), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n27), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n26), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n25), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n24), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n23), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n22), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n21), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n20), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n28) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n20), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n27) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n20), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n21) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n20), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n20), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n25) );
  SAEDRVT14_INV_0P5 U8 ( .A(EN), .X(n20) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n20), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n22) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n20), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n20), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n26) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n20), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n29) );
endmodule


module Register_2 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n29), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n28), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n27), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n26), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n25), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n24), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n23), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n22), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n21), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n20), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n25) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n20), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n28) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n20), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n22) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n20), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n27) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n20), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n26) );
  SAEDRVT14_INV_0P5 U8 ( .A(EN), .X(n20) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n20), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n21) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n20), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n20), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n20), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n29) );
endmodule


module Register_1 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n30), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n29), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n28), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n27), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n26), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n25), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n24), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n23), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n22), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n20), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n27) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(n21), .A2(n20), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n28) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(n21), .A2(n20), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n30) );
  SAEDRVT14_INV_0P5 U6 ( .A(EN), .X(n20) );
  SAEDRVT14_BUF_U_0P5 U7 ( .A(rst), .X(n21) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(n21), .A2(n20), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n22) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n20), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(n21), .A2(n20), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n20), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n25) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(n21), .A2(n20), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n26) );
  SAEDRVT14_AO32_U_0P5 U13 ( .A1(rst), .A2(n20), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n29) );
endmodule


module Register_0 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n30), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n29), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n28), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n27), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n26), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n25), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n24), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n23), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n22), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_AO32_U_0P5 U3 ( .A1(rst), .A2(n21), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n30) );
  SAEDRVT14_INV_0P5 U4 ( .A(EN), .X(n21) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n21), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n22) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n21), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n23) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n21), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n24) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n21), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n25) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n21), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n26) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n21), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n27) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n21), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n28) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n21), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n29) );
endmodule


module datapath_register_array( R0out, R1out, R2out, R3out, R4out, R5out, 
        R6out, R7out, Gout, DINout, Clock, rst, R0in, R1in, R2in, R3in, R4in, 
        R5in, R6in, R7in, Ain, Bus, DIN, AddSub, Gin );
  output [8:0] Bus;
  input [8:0] DIN;
  input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout,
         Clock, rst, R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, Ain,
         AddSub, Gin;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98;
  wire   [107:99] n;

  mux_10to1 m1 ( .R0out(R0out), .R1out(R1out), .R2out(R2out), .R3out(R3out), 
        .R4out(R4out), .R5out(R5out), .R6out(R6out), .R7out(R7out), .Gout(Gout), .DINout(DINout), .DIN(DIN), .R0(n), .R1({n98, n97, n96, n95, n94, n93, n92, 
        n91, n90}), .R2({n89, n88, n87, n86, n85, n84, n83, n82, n81}), .R3({
        n80, n79, n78, n77, n76, n75, n74, n73, n72}), .R4({n71, n70, n69, n68, 
        n67, n66, n65, n64, n63}), .R5({n62, n61, n60, n59, n58, n57, n56, n55, 
        n54}), .R6({n53, n52, n51, n50, n49, n48, n47, n46, n45}), .R7({n44, 
        n43, n42, n41, n40, n39, n38, n37, n36}), .G({n35, n34, n33, n32, n31, 
        n30, n29, n28, n27}), .Bus(Bus) );
  Add_Sub add_top ( .A({n26, n25, n24, n23, n22, n21, n20, n19, n18}), .Bus(
        Bus), .AddSub(AddSub), .ALU_out({n17, n16, n15, n14, n13, n12, n11, 
        n10, n9}) );
  reg_G g2 ( .Sum({n17, n16, n15, n14, n13, n12, n11, n10, n9}), .Gin(Gin), 
        .Clock(Clock), .rst(n8), .Z({n35, n34, n33, n32, n31, n30, n29, n28, 
        n27}) );
  Register_8 Reg0 ( .Clock(Clock), .dout(n), .din(Bus), .EN(R0in), .rst(n8) );
  Register_7 Reg1 ( .Clock(Clock), .dout({n98, n97, n96, n95, n94, n93, n92, 
        n91, n90}), .din(Bus), .EN(R1in), .rst(n5) );
  Register_6 Reg2 ( .Clock(Clock), .dout({n89, n88, n87, n86, n85, n84, n83, 
        n82, n81}), .din(Bus), .EN(R2in), .rst(n5) );
  Register_5 Reg3 ( .Clock(Clock), .dout({n80, n79, n78, n77, n76, n75, n74, 
        n73, n72}), .din(Bus), .EN(R3in), .rst(n6) );
  Register_4 Reg4 ( .Clock(Clock), .dout({n71, n70, n69, n68, n67, n66, n65, 
        n64, n63}), .din(Bus), .EN(R4in), .rst(n6) );
  Register_3 Reg5 ( .Clock(Clock), .dout({n62, n61, n60, n59, n58, n57, n56, 
        n55, n54}), .din(Bus), .EN(R5in), .rst(n7) );
  Register_2 Reg6 ( .Clock(Clock), .dout({n53, n52, n51, n50, n49, n48, n47, 
        n46, n45}), .din(Bus), .EN(R6in), .rst(n7) );
  Register_1 Reg7 ( .Clock(Clock), .dout({n44, n43, n42, n41, n40, n39, n38, 
        n37, n36}), .din(Bus), .EN(R7in), .rst(rst) );
  Register_0 A5 ( .Clock(Clock), .dout({n26, n25, n24, n23, n22, n21, n20, n19, 
        n18}), .din(Bus), .EN(Ain), .rst(rst) );
  SAEDRVT14_BUF_U_0P5 U4 ( .A(rst), .X(n5) );
  SAEDRVT14_BUF_U_0P5 U1 ( .A(rst), .X(n6) );
  SAEDRVT14_BUF_U_0P5 U2 ( .A(rst), .X(n7) );
  SAEDRVT14_BUF_U_0P5 U3 ( .A(rst), .X(n8) );
endmodule


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

