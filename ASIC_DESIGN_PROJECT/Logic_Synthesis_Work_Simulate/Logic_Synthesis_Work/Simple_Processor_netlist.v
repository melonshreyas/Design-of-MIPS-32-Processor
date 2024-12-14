/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Thu May  5 00:02:15 2022
/////////////////////////////////////////////////////////////


module dec3to8_1 ( W, Y );
  input [2:0] W;
  output [9:0] Y;
  wire   n1, n2, n3, n4, n5, n6, n7;

  SAEDRVT14_NR2_1 U3 ( .A1(W[0]), .A2(n7), .X(Y[5]) );
  SAEDRVT14_NR2_1 U4 ( .A1(W[0]), .A2(n5), .X(Y[9]) );
  SAEDRVT14_NR2_1 U5 ( .A1(W[0]), .A2(n2), .X(Y[7]) );
  SAEDRVT14_INV_0P5 U6 ( .A(W[1]), .X(n4) );
  SAEDRVT14_INV_0P5 U7 ( .A(W[0]), .X(n6) );
  SAEDRVT14_AN3_0P5 U8 ( .A1(W[0]), .A2(W[1]), .A3(W[2]), .X(Y[2]) );
  SAEDRVT14_ND2_CDC_0P5 U9 ( .A1(W[1]), .A2(W[2]), .X(n1) );
  SAEDRVT14_INV_0P5 U10 ( .A(W[2]), .X(n3) );
  SAEDRVT14_ND2_CDC_0P5 U11 ( .A1(W[1]), .A2(n3), .X(n2) );
  SAEDRVT14_NR2_1 U12 ( .A1(n6), .A2(n2), .X(Y[6]) );
  SAEDRVT14_NR2_1 U13 ( .A1(W[0]), .A2(n1), .X(Y[3]) );
  SAEDRVT14_ND2_CDC_0P5 U14 ( .A1(W[2]), .A2(n4), .X(n7) );
  SAEDRVT14_NR2_1 U15 ( .A1(n6), .A2(n7), .X(Y[4]) );
  SAEDRVT14_ND2_CDC_0P5 U16 ( .A1(n4), .A2(n3), .X(n5) );
  SAEDRVT14_NR2_1 U17 ( .A1(n6), .A2(n5), .X(Y[8]) );
endmodule


module dec3to8_3bit ( W, Y );
  input [2:0] W;
  output [2:0] Y;

  assign Y[2] = W[2];
  assign Y[1] = W[1];
  assign Y[0] = W[0];

endmodule


module dec3to8_0 ( W, Y );
  input [2:0] W;
  output [9:0] Y;
  wire   n1, n2, n3, n4, n5, n6, n7;

  SAEDRVT14_NR2_1 U3 ( .A1(W[0]), .A2(n1), .X(Y[7]) );
  SAEDRVT14_NR2_1 U4 ( .A1(W[0]), .A2(n5), .X(Y[9]) );
  SAEDRVT14_NR2_1 U5 ( .A1(W[0]), .A2(n7), .X(Y[5]) );
  SAEDRVT14_AN3_0P5 U6 ( .A1(W[0]), .A2(W[1]), .A3(W[2]), .X(Y[2]) );
  SAEDRVT14_INV_0P5 U7 ( .A(W[1]), .X(n4) );
  SAEDRVT14_INV_0P5 U8 ( .A(W[2]), .X(n3) );
  SAEDRVT14_ND2_CDC_0P5 U9 ( .A1(W[1]), .A2(W[2]), .X(n2) );
  SAEDRVT14_INV_0P5 U10 ( .A(W[0]), .X(n6) );
  SAEDRVT14_ND2_CDC_0P5 U11 ( .A1(W[1]), .A2(n3), .X(n1) );
  SAEDRVT14_NR2_1 U12 ( .A1(n6), .A2(n1), .X(Y[6]) );
  SAEDRVT14_NR2_1 U13 ( .A1(W[0]), .A2(n2), .X(Y[3]) );
  SAEDRVT14_ND2_CDC_0P5 U14 ( .A1(W[2]), .A2(n4), .X(n7) );
  SAEDRVT14_NR2_1 U15 ( .A1(n6), .A2(n7), .X(Y[4]) );
  SAEDRVT14_ND2_CDC_0P5 U16 ( .A1(n4), .A2(n3), .X(n5) );
  SAEDRVT14_NR2_1 U17 ( .A1(n6), .A2(n5), .X(Y[8]) );
endmodule


module controller_new ( DIN, Run, Resetn, Clock, Done, R0out, R1out, R2out, 
        R3out, R4out, R5out, R6out, R7out, Gout, DINout, LdR0, LdR1, LdR2, 
        LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG, Add_sub );
  input [8:0] DIN;
  input Run, Resetn, Clock;
  output Done, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout,
         DINout, LdR0, LdR1, LdR2, LdR3, LdR4, LdR5, LdR6, LdR7, LdA, LdG,
         Add_sub;
  wire   N31, N32, N33, N34, IRin, N132, N133, N134, N135, N136, N137, N138,
         N139, N140, N141, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, N154, N155, N156, N157, N158, N159, n26, n27,
         n28, n29, n30, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n31, n32,
         n33, n34, SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4;
  wire   [8:0] IR;
  wire   [9:2] Xreg;
  wire   [9:2] Yreg;
  wire   [2:0] opcode_decoded;
  wire   [3:0] PS;
  wire   [2:0] opcode;

  dec3to8_1 Z1 ( .W(IR[5:3]), .Y({Xreg, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2}) );
  dec3to8_0 Z2 ( .W(IR[2:0]), .Y({Yreg, SYNOPSYS_UNCONNECTED_3, 
        SYNOPSYS_UNCONNECTED_4}) );
  dec3to8_3bit Z3 ( .W(IR[8:6]), .Y(opcode_decoded) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_6_ ( .G(N145), .D(DIN[6]), .Q(IR[6]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_7_ ( .G(N145), .D(DIN[7]), .Q(IR[7]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_8_ ( .G(N145), .D(DIN[8]), .Q(IR[8]) );
  SAEDRVT14_LDPQ_U_0P5 IRin_reg ( .G(N144), .D(n29), .Q(IRin) );
  SAEDRVT14_LDPQ_U_0P5 LdA_reg ( .G(N141), .D(N142), .Q(LdA) );
  SAEDRVT14_LDPQ_U_0P5 LdG_reg ( .G(N141), .D(N143), .Q(LdG) );
  SAEDRVT14_LDPQ_U_0P5 Gout_reg ( .G(N149), .D(N159), .Q(Gout) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_5_ ( .G(N145), .D(DIN[5]), .Q(IR[5]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_4_ ( .G(N145), .D(DIN[4]), .Q(IR[4]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_3_ ( .G(N145), .D(DIN[3]), .Q(IR[3]) );
  SAEDRVT14_LDPQ_U_0P5 LdR7_reg ( .G(N132), .D(N140), .Q(LdR7) );
  SAEDRVT14_LDPQ_U_0P5 LdR6_reg ( .G(N132), .D(N139), .Q(LdR6) );
  SAEDRVT14_LDPQ_U_0P5 LdR5_reg ( .G(N132), .D(N138), .Q(LdR5) );
  SAEDRVT14_LDPQ_U_0P5 LdR4_reg ( .G(N132), .D(N137), .Q(LdR4) );
  SAEDRVT14_LDPQ_U_0P5 LdR3_reg ( .G(N132), .D(N136), .Q(LdR3) );
  SAEDRVT14_LDPQ_U_0P5 LdR2_reg ( .G(N132), .D(N135), .Q(LdR2) );
  SAEDRVT14_LDPQ_U_0P5 LdR1_reg ( .G(N132), .D(N134), .Q(LdR1) );
  SAEDRVT14_LDPQ_U_0P5 LdR0_reg ( .G(N132), .D(N133), .Q(LdR0) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_2_ ( .G(N145), .D(DIN[2]), .Q(IR[2]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_1_ ( .G(N145), .D(DIN[1]), .Q(IR[1]) );
  SAEDRVT14_LDPQ_U_0P5 IR_reg_0_ ( .G(N145), .D(DIN[0]), .Q(IR[0]) );
  SAEDRVT14_LDPQ_U_0P5 R7out_reg ( .G(N149), .D(N158), .Q(R7out) );
  SAEDRVT14_LDPQ_U_0P5 R6out_reg ( .G(N149), .D(N157), .Q(R6out) );
  SAEDRVT14_LDPQ_U_0P5 R5out_reg ( .G(N149), .D(N156), .Q(R5out) );
  SAEDRVT14_LDPQ_U_0P5 Done_reg ( .G(N146), .D(N147), .Q(Done) );
  SAEDRVT14_LDPQ_U_0P5 Add_sub_reg ( .G(N148), .D(n30), .Q(Add_sub) );
  SAEDRVT14_LDPQ_U_0P5 DINout_reg ( .G(N149), .D(N150), .Q(DINout) );
  SAEDRVT14_LDPQ_U_0P5 R0out_reg ( .G(N149), .D(N151), .Q(R0out) );
  SAEDRVT14_LDPQ_U_0P5 R1out_reg ( .G(N149), .D(N152), .Q(R1out) );
  SAEDRVT14_LDPQ_U_0P5 R2out_reg ( .G(N149), .D(N153), .Q(R2out) );
  SAEDRVT14_LDPQ_U_0P5 R3out_reg ( .G(N149), .D(N154), .Q(R3out) );
  SAEDRVT14_LDPQ_U_0P5 R4out_reg ( .G(N149), .D(N155), .Q(R4out) );
  SAEDRVT14_FDP_V2LP_0P5 opcode_reg_2_ ( .D(n28), .CK(Clock), .Q(opcode[2]), 
        .QN(n31) );
  SAEDRVT14_FDP_V2LP_0P5 opcode_reg_0_ ( .D(n27), .CK(Clock), .Q(opcode[0]) );
  SAEDRVT14_FDP_V2LP_0P5 opcode_reg_1_ ( .D(n26), .CK(Clock), .Q(opcode[1]), 
        .QN(n34) );
  SAEDRVT14_FDP_V2LP_0P5 PS_reg_2_ ( .D(N33), .CK(Clock), .Q(PS[2]), .QN(n33)
         );
  SAEDRVT14_FDP_V2LP_0P5 PS_reg_1_ ( .D(N32), .CK(Clock), .Q(PS[1]), .QN(n25)
         );
  SAEDRVT14_FDP_V2LP_0P5 PS_reg_3_ ( .D(N34), .CK(Clock), .Q(PS[3]), .QN(n32)
         );
  SAEDRVT14_FDP_V2LP_0P5 PS_reg_0_ ( .D(N31), .CK(Clock), .Q(PS[0]) );
  SAEDRVT14_AN2_MM_0P5 U3 ( .A1(Xreg[6]), .A2(N147), .X(N136) );
  SAEDRVT14_AN2_MM_0P5 U4 ( .A1(Xreg[4]), .A2(N147), .X(N138) );
  SAEDRVT14_AN2_MM_0P5 U5 ( .A1(Xreg[8]), .A2(N147), .X(N134) );
  SAEDRVT14_INV_0P5 U6 ( .A(N146), .X(n4) );
  SAEDRVT14_AN2_MM_0P5 U7 ( .A1(Xreg[3]), .A2(N147), .X(N139) );
  SAEDRVT14_ND2_CDC_0P5 U8 ( .A1(n8), .A2(n12), .X(n11) );
  SAEDRVT14_AN3_0P5 U9 ( .A1(n8), .A2(n19), .A3(n2), .X(n3) );
  SAEDRVT14_INV_0P5 U10 ( .A(n7), .X(n15) );
  SAEDRVT14_NR2_1 U11 ( .A1(n14), .A2(n7), .X(n21) );
  SAEDRVT14_ND2_CDC_0P5 U12 ( .A1(n31), .A2(N142), .X(n24) );
  SAEDRVT14_INV_0P5 U13 ( .A(N142), .X(n20) );
  SAEDRVT14_INV_0P5 U14 ( .A(n13), .X(N145) );
  SAEDRVT14_INV_0P5 U15 ( .A(n14), .X(N143) );
  SAEDRVT14_ND2_CDC_0P5 U16 ( .A1(opcode[1]), .A2(opcode[0]), .X(n9) );
  SAEDRVT14_NR2_1 U17 ( .A1(PS[0]), .A2(PS[2]), .X(n1) );
  SAEDRVT14_NR2_1 U18 ( .A1(opcode[1]), .A2(opcode[0]), .X(n22) );
  SAEDRVT14_AN4_0P5 U19 ( .A1(PS[0]), .A2(n25), .A3(n32), .A4(n33), .X(n29) );
  SAEDRVT14_AN3_0P5 U20 ( .A1(opcode[0]), .A2(n34), .A3(n31), .X(n30) );
  SAEDRVT14_INV_0P5 U21 ( .A(Resetn), .X(n23) );
  SAEDRVT14_AN3_0P5 U22 ( .A1(PS[1]), .A2(n1), .A3(n32), .X(N142) );
  SAEDRVT14_OR4_1 U23 ( .A1(n33), .A2(PS[1]), .A3(PS[3]), .A4(PS[0]), .X(n14)
         );
  SAEDRVT14_AN3_0P5 U24 ( .A1(PS[3]), .A2(n1), .A3(n25), .X(N159) );
  SAEDRVT14_ND2_CDC_0P5 U25 ( .A1(N143), .A2(n31), .X(n10) );
  SAEDRVT14_INV_0P5 U26 ( .A(n24), .X(n5) );
  SAEDRVT14_ND2_CDC_0P5 U27 ( .A1(n22), .A2(n5), .X(n8) );
  SAEDRVT14_INV_0P5 U28 ( .A(n29), .X(n19) );
  SAEDRVT14_NR2_1 U29 ( .A1(n22), .A2(opcode[2]), .X(n16) );
  SAEDRVT14_ND2_CDC_0P5 U30 ( .A1(n16), .A2(n9), .X(n7) );
  SAEDRVT14_ND2_CDC_0P5 U31 ( .A1(n15), .A2(N159), .X(n2) );
  SAEDRVT14_OAI21_0P5 U32 ( .A1(n9), .A2(n10), .B(n3), .X(N146) );
  SAEDRVT14_OAI21_0P5 U33 ( .A1(n24), .A2(n9), .B(n4), .X(N132) );
  SAEDRVT14_AOI21_0P75 U34 ( .A1(n15), .A2(N159), .B(n5), .X(n6) );
  SAEDRVT14_OAI21_0P5 U35 ( .A1(n22), .A2(n10), .B(n6), .X(N149) );
  SAEDRVT14_NR2_1 U36 ( .A1(n20), .A2(n7), .X(N148) );
  SAEDRVT14_INV_0P5 U37 ( .A(n21), .X(n12) );
  SAEDRVT14_AO22_0P5 U38 ( .A1(Xreg[7]), .A2(N148), .B1(Yreg[7]), .B2(n11), 
        .X(N153) );
  SAEDRVT14_AO22_0P5 U39 ( .A1(Xreg[6]), .A2(N148), .B1(Yreg[6]), .B2(n11), 
        .X(N154) );
  SAEDRVT14_AO22_0P5 U40 ( .A1(Xreg[2]), .A2(N148), .B1(Yreg[2]), .B2(n11), 
        .X(N158) );
  SAEDRVT14_AO22_0P5 U41 ( .A1(Xreg[3]), .A2(N148), .B1(Yreg[3]), .B2(n11), 
        .X(N157) );
  SAEDRVT14_AO22_0P5 U42 ( .A1(Xreg[4]), .A2(N148), .B1(Yreg[4]), .B2(n11), 
        .X(N156) );
  SAEDRVT14_AOI21_0P75 U43 ( .A1(n24), .A2(n10), .B(n9), .X(N150) );
  SAEDRVT14_AO22_0P5 U44 ( .A1(Xreg[9]), .A2(N148), .B1(Yreg[9]), .B2(n11), 
        .X(N151) );
  SAEDRVT14_AO22_0P5 U45 ( .A1(Xreg[8]), .A2(N148), .B1(Yreg[8]), .B2(n11), 
        .X(N152) );
  SAEDRVT14_AO22_0P5 U46 ( .A1(Xreg[5]), .A2(N148), .B1(Yreg[5]), .B2(n11), 
        .X(N155) );
  SAEDRVT14_MUX2_U_0P5 U47 ( .D0(opcode[2]), .D1(opcode_decoded[2]), .S(IRin), 
        .X(n28) );
  SAEDRVT14_MUX2_U_0P5 U48 ( .D0(opcode[1]), .D1(opcode_decoded[1]), .S(IRin), 
        .X(n26) );
  SAEDRVT14_ND2_CDC_0P5 U49 ( .A1(n29), .A2(Run), .X(n13) );
  SAEDRVT14_NR2_1 U50 ( .A1(n13), .A2(n23), .X(N32) );
  SAEDRVT14_NR2_1 U51 ( .A1(n12), .A2(n23), .X(N34) );
  SAEDRVT14_OR3_0P5 U52 ( .A1(N142), .A2(N143), .A3(N159), .X(N147) );
  SAEDRVT14_NR2_1 U53 ( .A1(N147), .A2(N145), .X(n18) );
  SAEDRVT14_OAI22_0P5 U54 ( .A1(n16), .A2(n20), .B1(n15), .B2(n14), .X(n17) );
  SAEDRVT14_OR4_1 U55 ( .A1(N159), .A2(n18), .A3(n23), .A4(n17), .X(N31) );
  SAEDRVT14_MUX2_U_0P5 U56 ( .D0(opcode[0]), .D1(opcode_decoded[0]), .S(IRin), 
        .X(n27) );
  SAEDRVT14_ND2_CDC_0P5 U57 ( .A1(n20), .A2(n19), .X(N144) );
  SAEDRVT14_OR3_0P5 U58 ( .A1(n21), .A2(N148), .A3(n29), .X(N141) );
  SAEDRVT14_AN2_MM_0P5 U59 ( .A1(Xreg[5]), .A2(N147), .X(N137) );
  SAEDRVT14_AN2_MM_0P5 U60 ( .A1(Xreg[2]), .A2(N147), .X(N140) );
  SAEDRVT14_AN2_MM_0P5 U61 ( .A1(Xreg[9]), .A2(N147), .X(N133) );
  SAEDRVT14_AN2_MM_0P5 U62 ( .A1(Xreg[7]), .A2(N147), .X(N135) );
  SAEDRVT14_NR3_0P5 U63 ( .A1(n24), .A2(n23), .A3(n22), .X(N33) );
endmodule


module mux_10to1 ( R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
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
  wire   N20, N21, N22, N23, N24, N25, N26, N27, N28, N29, n1, n2, n3, n4, n5,
         n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89;

  SAEDRVT14_LDPQ_U_0P5 Bus_reg_8_ ( .G(N20), .D(N29), .Q(Bus[8]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_7_ ( .G(N20), .D(N28), .Q(Bus[7]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_6_ ( .G(N20), .D(N27), .Q(Bus[6]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_5_ ( .G(N20), .D(N26), .Q(Bus[5]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_4_ ( .G(N20), .D(N25), .Q(Bus[4]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_3_ ( .G(N20), .D(N24), .Q(Bus[3]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_2_ ( .G(N20), .D(N23), .Q(Bus[2]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_1_ ( .G(N20), .D(N22), .Q(Bus[1]) );
  SAEDRVT14_LDPQ_U_0P5 Bus_reg_0_ ( .G(N20), .D(N21), .Q(Bus[0]) );
  SAEDRVT14_AOI22_0P5 U3 ( .A1(n79), .A2(DIN[2]), .B1(n78), .B2(G[2]), .X(n64)
         );
  SAEDRVT14_AOI22_0P5 U4 ( .A1(n83), .A2(R4[8]), .B1(n82), .B2(R3[8]), .X(n26)
         );
  SAEDRVT14_AOI22_0P5 U5 ( .A1(n79), .A2(DIN[6]), .B1(n78), .B2(G[6]), .X(n40)
         );
  SAEDRVT14_AOI22_0P5 U6 ( .A1(n79), .A2(DIN[8]), .B1(n78), .B2(G[8]), .X(n28)
         );
  SAEDRVT14_AOI22_0P5 U7 ( .A1(n81), .A2(R1[6]), .B1(n80), .B2(R7[6]), .X(n39)
         );
  SAEDRVT14_AOI22_0P5 U8 ( .A1(n77), .A2(R0[8]), .B1(n76), .B2(R5[8]), .X(n29)
         );
  SAEDRVT14_AOI22_0P5 U9 ( .A1(n81), .A2(R1[0]), .B1(n80), .B2(R7[0]), .X(n85)
         );
  SAEDRVT14_AOI22_0P5 U10 ( .A1(n79), .A2(DIN[4]), .B1(n78), .B2(G[4]), .X(n52) );
  SAEDRVT14_AOI22_0P5 U11 ( .A1(n81), .A2(R1[2]), .B1(n80), .B2(R7[2]), .X(n63) );
  SAEDRVT14_AOI22_0P5 U12 ( .A1(n77), .A2(R0[0]), .B1(n76), .B2(R5[0]), .X(n87) );
  SAEDRVT14_AOI22_0P5 U13 ( .A1(n75), .A2(R2[5]), .B1(n74), .B2(R6[5]), .X(n49) );
  SAEDRVT14_AOI22_0P5 U14 ( .A1(n81), .A2(R1[8]), .B1(n80), .B2(R7[8]), .X(n27) );
  SAEDRVT14_AOI22_0P5 U15 ( .A1(n83), .A2(R4[0]), .B1(n82), .B2(R3[0]), .X(n84) );
  SAEDRVT14_AOI22_0P5 U16 ( .A1(n81), .A2(R1[4]), .B1(n80), .B2(R7[4]), .X(n51) );
  SAEDRVT14_AOI22_0P5 U17 ( .A1(n79), .A2(DIN[1]), .B1(n78), .B2(G[1]), .X(n70) );
  SAEDRVT14_AOI22_0P5 U18 ( .A1(n79), .A2(DIN[0]), .B1(n78), .B2(G[0]), .X(n86) );
  SAEDRVT14_AOI22_0P5 U19 ( .A1(n83), .A2(R4[2]), .B1(n82), .B2(R3[2]), .X(n62) );
  SAEDRVT14_AOI22_0P5 U20 ( .A1(n75), .A2(R2[2]), .B1(n74), .B2(R6[2]), .X(n67) );
  SAEDRVT14_AOI22_0P5 U21 ( .A1(n81), .A2(R1[7]), .B1(n80), .B2(R7[7]), .X(n33) );
  SAEDRVT14_AOI22_0P5 U22 ( .A1(n77), .A2(R0[2]), .B1(n76), .B2(R5[2]), .X(n65) );
  SAEDRVT14_AOI22_0P5 U23 ( .A1(n83), .A2(R4[4]), .B1(n82), .B2(R3[4]), .X(n50) );
  SAEDRVT14_AOI22_0P5 U24 ( .A1(n77), .A2(R0[4]), .B1(n76), .B2(R5[4]), .X(n53) );
  SAEDRVT14_AOI22_0P5 U25 ( .A1(n83), .A2(R4[1]), .B1(n82), .B2(R3[1]), .X(n68) );
  SAEDRVT14_AOI22_0P5 U26 ( .A1(n79), .A2(DIN[7]), .B1(n78), .B2(G[7]), .X(n34) );
  SAEDRVT14_AOI22_0P5 U27 ( .A1(n83), .A2(R4[3]), .B1(n82), .B2(R3[3]), .X(n56) );
  SAEDRVT14_AOI22_0P5 U28 ( .A1(n75), .A2(R2[4]), .B1(n74), .B2(R6[4]), .X(n55) );
  SAEDRVT14_AOI22_0P5 U29 ( .A1(n83), .A2(R4[5]), .B1(n82), .B2(R3[5]), .X(n44) );
  SAEDRVT14_AOI22_0P5 U30 ( .A1(n79), .A2(DIN[5]), .B1(n78), .B2(G[5]), .X(n46) );
  SAEDRVT14_AOI22_0P5 U31 ( .A1(n77), .A2(R0[6]), .B1(n76), .B2(R5[6]), .X(n41) );
  SAEDRVT14_AOI22_0P5 U32 ( .A1(n77), .A2(R0[5]), .B1(n76), .B2(R5[5]), .X(n47) );
  SAEDRVT14_AOI22_0P5 U33 ( .A1(n77), .A2(R0[7]), .B1(n76), .B2(R5[7]), .X(n35) );
  SAEDRVT14_AOI22_0P5 U34 ( .A1(n83), .A2(R4[6]), .B1(n82), .B2(R3[6]), .X(n38) );
  SAEDRVT14_AOI22_0P5 U35 ( .A1(n75), .A2(R2[1]), .B1(n74), .B2(R6[1]), .X(n73) );
  SAEDRVT14_AOI22_0P5 U36 ( .A1(n81), .A2(R1[1]), .B1(n80), .B2(R7[1]), .X(n69) );
  SAEDRVT14_AOI22_0P5 U37 ( .A1(n75), .A2(R2[8]), .B1(n74), .B2(R6[8]), .X(n31) );
  SAEDRVT14_AOI22_0P5 U38 ( .A1(n75), .A2(R2[7]), .B1(n74), .B2(R6[7]), .X(n37) );
  SAEDRVT14_AOI22_0P5 U39 ( .A1(n75), .A2(R2[6]), .B1(n74), .B2(R6[6]), .X(n43) );
  SAEDRVT14_AOI22_0P5 U40 ( .A1(n79), .A2(DIN[3]), .B1(n78), .B2(G[3]), .X(n58) );
  SAEDRVT14_AOI22_0P5 U41 ( .A1(n77), .A2(R0[3]), .B1(n76), .B2(R5[3]), .X(n59) );
  SAEDRVT14_AOI22_0P5 U42 ( .A1(n81), .A2(R1[5]), .B1(n80), .B2(R7[5]), .X(n45) );
  SAEDRVT14_AOI22_0P5 U43 ( .A1(n75), .A2(R2[3]), .B1(n74), .B2(R6[3]), .X(n61) );
  SAEDRVT14_AOI22_0P5 U44 ( .A1(n75), .A2(R2[0]), .B1(n74), .B2(R6[0]), .X(n89) );
  SAEDRVT14_AOI22_0P5 U45 ( .A1(n77), .A2(R0[1]), .B1(n76), .B2(R5[1]), .X(n71) );
  SAEDRVT14_AOI22_0P5 U46 ( .A1(n83), .A2(R4[7]), .B1(n82), .B2(R3[7]), .X(n32) );
  SAEDRVT14_AOI22_0P5 U47 ( .A1(n81), .A2(R1[3]), .B1(n80), .B2(R7[3]), .X(n57) );
  SAEDRVT14_NR2_1 U48 ( .A1(n8), .A2(n7), .X(n17) );
  SAEDRVT14_NR2_1 U49 ( .A1(R7out), .A2(n20), .X(n23) );
  SAEDRVT14_INV_0P5 U50 ( .A(n10), .X(n12) );
  SAEDRVT14_INV_0P5 U51 ( .A(n20), .X(n14) );
  SAEDRVT14_NR2_1 U52 ( .A1(n2), .A2(n7), .X(n19) );
  SAEDRVT14_NR2_1 U53 ( .A1(R1out), .A2(n10), .X(n5) );
  SAEDRVT14_INV_0P5 U54 ( .A(R3out), .X(n4) );
  SAEDRVT14_NR2_1 U55 ( .A1(R2out), .A2(R3out), .X(n11) );
  SAEDRVT14_INV_0P5 U56 ( .A(R2out), .X(n3) );
  SAEDRVT14_INV_0P5 U57 ( .A(R4out), .X(n16) );
  SAEDRVT14_INV_0P5 U58 ( .A(R0out), .X(n9) );
  SAEDRVT14_INV_0P5 U59 ( .A(R5out), .X(n6) );
  SAEDRVT14_INV_0P5 U60 ( .A(R6out), .X(n18) );
  SAEDRVT14_OR3_0P5 U61 ( .A1(R7out), .A2(Gout), .A3(DINout), .X(n1) );
  SAEDRVT14_NR2_1 U62 ( .A1(Gout), .A2(DINout), .X(n15) );
  SAEDRVT14_INV_0P5 U63 ( .A(DINout), .X(n22) );
  SAEDRVT14_INV_0P5 U64 ( .A(Gout), .X(n21) );
  SAEDRVT14_ND2_CDC_0P5 U65 ( .A1(n9), .A2(n16), .X(n2) );
  SAEDRVT14_OR4_1 U66 ( .A1(R2out), .A2(R3out), .A3(R1out), .A4(n1), .X(n7) );
  SAEDRVT14_AN3_0P5 U67 ( .A1(R6out), .A2(n19), .A3(n6), .X(n74) );
  SAEDRVT14_OR4_1 U68 ( .A1(R5out), .A2(R6out), .A3(R0out), .A4(R4out), .X(n13) );
  SAEDRVT14_OR4_1 U69 ( .A1(R7out), .A2(Gout), .A3(DINout), .A4(n13), .X(n10)
         );
  SAEDRVT14_AN3_0P5 U70 ( .A1(R3out), .A2(n5), .A3(n3), .X(n82) );
  SAEDRVT14_AN3_0P5 U71 ( .A1(R2out), .A2(n5), .A3(n4), .X(n75) );
  SAEDRVT14_ND2_CDC_0P5 U72 ( .A1(n6), .A2(n18), .X(n8) );
  SAEDRVT14_AN3_0P5 U73 ( .A1(R4out), .A2(n17), .A3(n9), .X(n83) );
  SAEDRVT14_AN3_0P5 U74 ( .A1(R1out), .A2(n12), .A3(n11), .X(n81) );
  SAEDRVT14_OR4_1 U75 ( .A1(R2out), .A2(R3out), .A3(R1out), .A4(n13), .X(n20)
         );
  SAEDRVT14_AN3_0P5 U76 ( .A1(R7out), .A2(n15), .A3(n14), .X(n80) );
  SAEDRVT14_OR4_1 U77 ( .A1(n75), .A2(n83), .A3(n81), .A4(n80), .X(n25) );
  SAEDRVT14_AN3_0P5 U78 ( .A1(R0out), .A2(n17), .A3(n16), .X(n77) );
  SAEDRVT14_AN3_0P5 U79 ( .A1(R5out), .A2(n19), .A3(n18), .X(n76) );
  SAEDRVT14_AN3_0P5 U80 ( .A1(DINout), .A2(n23), .A3(n21), .X(n79) );
  SAEDRVT14_AN3_0P5 U81 ( .A1(Gout), .A2(n23), .A3(n22), .X(n78) );
  SAEDRVT14_OR4_1 U82 ( .A1(n77), .A2(n76), .A3(n79), .A4(n78), .X(n24) );
  SAEDRVT14_OR4_1 U83 ( .A1(n74), .A2(n82), .A3(n25), .A4(n24), .X(N20) );
  SAEDRVT14_AN4_0P5 U84 ( .A1(n29), .A2(n28), .A3(n27), .A4(n26), .X(n30) );
  SAEDRVT14_ND2_CDC_0P5 U85 ( .A1(n31), .A2(n30), .X(N29) );
  SAEDRVT14_AN4_0P5 U86 ( .A1(n35), .A2(n34), .A3(n33), .A4(n32), .X(n36) );
  SAEDRVT14_ND2_CDC_0P5 U87 ( .A1(n37), .A2(n36), .X(N28) );
  SAEDRVT14_AN4_0P5 U88 ( .A1(n41), .A2(n40), .A3(n39), .A4(n38), .X(n42) );
  SAEDRVT14_ND2_CDC_0P5 U89 ( .A1(n43), .A2(n42), .X(N27) );
  SAEDRVT14_AN4_0P5 U90 ( .A1(n47), .A2(n46), .A3(n45), .A4(n44), .X(n48) );
  SAEDRVT14_ND2_CDC_0P5 U91 ( .A1(n49), .A2(n48), .X(N26) );
  SAEDRVT14_AN4_0P5 U92 ( .A1(n53), .A2(n52), .A3(n51), .A4(n50), .X(n54) );
  SAEDRVT14_ND2_CDC_0P5 U93 ( .A1(n55), .A2(n54), .X(N25) );
  SAEDRVT14_AN4_0P5 U94 ( .A1(n59), .A2(n58), .A3(n57), .A4(n56), .X(n60) );
  SAEDRVT14_ND2_CDC_0P5 U95 ( .A1(n61), .A2(n60), .X(N24) );
  SAEDRVT14_AN4_0P5 U96 ( .A1(n65), .A2(n64), .A3(n63), .A4(n62), .X(n66) );
  SAEDRVT14_ND2_CDC_0P5 U97 ( .A1(n67), .A2(n66), .X(N23) );
  SAEDRVT14_AN4_0P5 U98 ( .A1(n71), .A2(n70), .A3(n69), .A4(n68), .X(n72) );
  SAEDRVT14_ND2_CDC_0P5 U99 ( .A1(n73), .A2(n72), .X(N22) );
  SAEDRVT14_AN4_0P5 U100 ( .A1(n87), .A2(n86), .A3(n85), .A4(n84), .X(n88) );
  SAEDRVT14_ND2_CDC_0P5 U101 ( .A1(n89), .A2(n88), .X(N21) );
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
  wire   x, y, z;

  half_adder_33 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_32 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_30 ( a, b, sum, cout );
  input a, b;
  output sum, cout;
  wire   a;
  assign sum = a;

endmodule


module half_adder_31 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_15 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, x;

  half_adder_31 h1 ( .a(a), .b(b), .sum(x), .cout(cout) );
  half_adder_30 h2 ( .a(x), .b(n1), .sum(sum) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n1) );
endmodule


module half_adder_24 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_25 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_12 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_25 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_24 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_26 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_27 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_13 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_27 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_26 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_28 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_29 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_14 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_29 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_28 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module ripple_carry_4_bit_3 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n1, c1, c2, c3;

  full_adder_15 fa0 ( .a(a[0]), .b(b[0]), .cin(n1), .sum(sum[0]), .cout(c1) );
  full_adder_14 fa1 ( .a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2) );
  full_adder_13 fa2 ( .a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3) );
  full_adder_12 fa3 ( .a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout(cout)
         );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n1) );
endmodule


module half_adder_22 ( a, b, sum, cout );
  input a, b;
  output sum, cout;
  wire   a;
  assign cout = a;

  SAEDRVT14_INV_0P5 U1 ( .A(a), .X(sum) );
endmodule


module half_adder_23 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_11 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n1, x, y, z;

  half_adder_23 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_22 h2 ( .a(x), .b(n1), .sum(sum), .cout(z) );
  SAEDRVT14_TIE1_4 U1 ( .X(n1) );
  SAEDRVT14_OR2_MM_0P5 U2 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_16 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_17 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_8 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_17 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_16 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_18 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_19 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_9 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_19 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_18 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_20 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_21 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_10 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_21 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_20 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module ripple_carry_4_bit_2 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n1, c1, c2, c3;

  full_adder_11 fa0 ( .a(a[0]), .b(b[0]), .cin(n1), .sum(sum[0]), .cout(c1) );
  full_adder_10 fa1 ( .a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2) );
  full_adder_9 fa2 ( .a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3) );
  full_adder_8 fa3 ( .a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]), .cout(cout)
         );
  SAEDRVT14_TIE1_4 U1 ( .X(n1) );
endmodule


module mux2X1_2 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(in0[1]), .D1(in1[1]), .S(sel), .X(out[1]) );
  SAEDRVT14_MUX2_U_0P5 U2 ( .D0(in0[3]), .D1(in1[3]), .S(sel), .X(out[3]) );
  SAEDRVT14_MUX2_U_0P5 U3 ( .D0(in0[2]), .D1(in1[2]), .S(sel), .X(out[2]) );
  SAEDRVT14_MUX2_U_0P5 U4 ( .D0(in0[0]), .D1(in1[0]), .S(sel), .X(out[0]) );
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
  wire   n_Logic1_, n_Logic0_, c0, c1;
  wire   [3:0] s0;
  wire   [3:0] s1;

  ripple_carry_4_bit_3 rca1 ( .a(a), .b(b), .cin(n_Logic0_), .sum(s0), .cout(
        c0) );
  ripple_carry_4_bit_2 rca2 ( .a(a), .b(b), .cin(n_Logic1_), .sum(s1), .cout(
        c1) );
  mux2X1_2 ms0 ( .in0(s0), .in1(s1), .sel(cin), .out(sum) );
  mux2X1_1_1 mc0 ( .in0(c0), .in1(c1), .sel(cin), .out(cout) );
  SAEDRVT14_TIE0_V1_2 U3 ( .X(n_Logic0_) );
  SAEDRVT14_TIE1_4 U4 ( .X(n_Logic1_) );
endmodule


module half_adder_9 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(b), .A2(a), .X(sum) );
endmodule


module half_adder_8 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(b), .A2(a), .X(sum) );
endmodule


module full_adder_4 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x;

  half_adder_9 h1 ( .a(a), .b(b), .sum(x) );
  half_adder_8 h2 ( .a(x), .b(cin), .sum(sum) );
endmodule


module half_adder_10 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_11 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_5 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_11 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_10 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_12 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_13 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_6 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_13 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_12 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
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
  wire   n1, x;

  half_adder_15 h1 ( .a(a), .b(b), .sum(x), .cout(cout) );
  half_adder_14 h2 ( .a(x), .b(n1), .sum(sum) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n1) );
endmodule


module ripple_carry_4_bit_1 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n1, c1, c2, c3;

  full_adder_7 fa0 ( .a(a[0]), .b(b[0]), .cin(n1), .sum(sum[0]), .cout(c1) );
  full_adder_6 fa1 ( .a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2) );
  full_adder_5 fa2 ( .a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3) );
  full_adder_4 fa3 ( .a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n1) );
endmodule


module half_adder_2 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_3 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_1 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_3 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_2 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_4 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module half_adder_5 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(cout) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(cout), .X(sum) );
endmodule


module full_adder_2 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x, y, z;

  half_adder_5 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_4 h2 ( .a(x), .b(cin), .sum(sum), .cout(z) );
  SAEDRVT14_OR2_MM_0P5 U1 ( .A1(z), .A2(y), .X(cout) );
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
  wire   n1, x, y, z;

  half_adder_7 h1 ( .a(a), .b(b), .sum(x), .cout(y) );
  half_adder_6 h2 ( .a(x), .b(n1), .sum(sum), .cout(z) );
  SAEDRVT14_TIE1_4 U1 ( .X(n1) );
  SAEDRVT14_OR2_MM_0P5 U2 ( .A1(z), .A2(y), .X(cout) );
endmodule


module half_adder_0 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(b), .A2(a), .X(sum) );
endmodule


module half_adder_1 ( a, b, sum, cout );
  input a, b;
  output sum, cout;


  SAEDRVT14_EO2_V1_0P75 U1 ( .A1(b), .A2(a), .X(sum) );
endmodule


module full_adder_0 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   x;

  half_adder_1 h1 ( .a(a), .b(b), .sum(x) );
  half_adder_0 h2 ( .a(x), .b(cin), .sum(sum) );
endmodule


module ripple_carry_4_bit_0 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n1, c1, c2, c3;

  full_adder_3 fa0 ( .a(a[0]), .b(b[0]), .cin(n1), .sum(sum[0]), .cout(c1) );
  full_adder_2 fa1 ( .a(a[1]), .b(b[1]), .cin(c1), .sum(sum[1]), .cout(c2) );
  full_adder_1 fa2 ( .a(a[2]), .b(b[2]), .cin(c2), .sum(sum[2]), .cout(c3) );
  full_adder_0 fa3 ( .a(a[3]), .b(b[3]), .cin(c3), .sum(sum[3]) );
  SAEDRVT14_TIE1_4 U1 ( .X(n1) );
endmodule


module mux2X1_0 ( in0, in1, sel, out );
  input [3:0] in0;
  input [3:0] in1;
  output [3:0] out;
  input sel;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(in0[1]), .D1(in1[1]), .S(sel), .X(out[1]) );
  SAEDRVT14_MUX2_U_0P5 U2 ( .D0(in0[2]), .D1(in1[2]), .S(sel), .X(out[2]) );
  SAEDRVT14_MUX2_U_0P5 U3 ( .D0(in0[3]), .D1(in1[3]), .S(sel), .X(out[3]) );
  SAEDRVT14_MUX2_U_0P5 U4 ( .D0(in0[0]), .D1(in1[0]), .S(sel), .X(out[0]) );
endmodule


module carry_select_adder_4bit_slice_0 ( a, b, cin, sum, cout );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input cin;
  output cout;
  wire   n_Logic1_, n_Logic0_;
  wire   [3:0] s0;
  wire   [3:0] s1;

  ripple_carry_4_bit_1 rca1 ( .a(a), .b(b), .cin(n_Logic0_), .sum(s0) );
  ripple_carry_4_bit_0 rca2 ( .a(a), .b(b), .cin(n_Logic1_), .sum(s1) );
  mux2X1_0 ms0 ( .in0(s0), .in1(s1), .sel(cin), .out(sum) );
  SAEDRVT14_TIE0_V1_2 U3 ( .X(n_Logic0_) );
  SAEDRVT14_TIE1_4 U4 ( .X(n_Logic1_) );
endmodule


module csa_9bit ( a, b, cin, sum, cout );
  input [8:0] a;
  input [8:0] b;
  output [8:0] sum;
  input cin;
  output cout;

  wire   [1:0] c;

  full_adder_16 fa0 ( .a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c[0])
         );
  carry_select_adder_4bit_slice_1 csa_slice1 ( .a(a[4:1]), .b(b[4:1]), .cin(
        c[0]), .sum(sum[4:1]), .cout(c[1]) );
  carry_select_adder_4bit_slice_0 csa_slice2 ( .a(a[8:5]), .b(b[8:5]), .cin(
        c[1]), .sum(sum[8:5]) );
endmodule


module Add_Sub ( A, Bus, AddSub, ALU_out );
  input [8:0] A;
  input [8:0] Bus;
  output [8:0] ALU_out;
  input AddSub;
  wire   n1;
  wire   [8:0] xrout;

  csa_9bit add1 ( .a(A), .b(xrout), .cin(AddSub), .sum(ALU_out) );
  SAEDRVT14_INV_0P5 U1 ( .A(AddSub), .X(n1) );
  SAEDRVT14_MUXI2_U_0P5 U2 ( .D0(n1), .D1(AddSub), .S(Bus[8]), .X(xrout[8]) );
  SAEDRVT14_MUXI2_U_0P5 U3 ( .D0(n1), .D1(AddSub), .S(Bus[7]), .X(xrout[7]) );
  SAEDRVT14_MUXI2_U_0P5 U4 ( .D0(n1), .D1(AddSub), .S(Bus[6]), .X(xrout[6]) );
  SAEDRVT14_MUXI2_U_0P5 U5 ( .D0(n1), .D1(AddSub), .S(Bus[5]), .X(xrout[5]) );
  SAEDRVT14_MUXI2_U_0P5 U6 ( .D0(n1), .D1(AddSub), .S(Bus[4]), .X(xrout[4]) );
  SAEDRVT14_MUXI2_U_0P5 U7 ( .D0(n1), .D1(AddSub), .S(Bus[3]), .X(xrout[3]) );
  SAEDRVT14_MUXI2_U_0P5 U8 ( .D0(n1), .D1(AddSub), .S(Bus[2]), .X(xrout[2]) );
  SAEDRVT14_MUXI2_U_0P5 U9 ( .D0(n1), .D1(AddSub), .S(Bus[1]), .X(xrout[1]) );
  SAEDRVT14_MUXI2_U_0P5 U10 ( .D0(n1), .D1(AddSub), .S(Bus[0]), .X(xrout[0])
         );
endmodule


module reg_G ( Sum, Gin, Clock, rst, Z );
  input [8:0] Sum;
  output [8:0] Z;
  input Gin, Clock, rst;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n1;

  SAEDRVT14_FDP_V2LP_0P5 Z_reg_8_ ( .D(n10), .CK(Clock), .Q(Z[8]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_7_ ( .D(n9), .CK(Clock), .Q(Z[7]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_6_ ( .D(n8), .CK(Clock), .Q(Z[6]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_5_ ( .D(n7), .CK(Clock), .Q(Z[5]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_4_ ( .D(n6), .CK(Clock), .Q(Z[4]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_3_ ( .D(n5), .CK(Clock), .Q(Z[3]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_2_ ( .D(n4), .CK(Clock), .Q(Z[2]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_1_ ( .D(n3), .CK(Clock), .Q(Z[1]) );
  SAEDRVT14_FDP_V2LP_0P5 Z_reg_0_ ( .D(n2), .CK(Clock), .Q(Z[0]) );
  SAEDRVT14_INV_0P5 U2 ( .A(Gin), .X(n1) );
  SAEDRVT14_OA221_U_0P5 U3 ( .A1(Gin), .A2(Z[2]), .B1(n1), .B2(Sum[2]), .C(rst), .X(n4) );
  SAEDRVT14_OA221_U_0P5 U4 ( .A1(Gin), .A2(Z[8]), .B1(n1), .B2(Sum[8]), .C(rst), .X(n10) );
  SAEDRVT14_OA221_U_0P5 U5 ( .A1(Gin), .A2(Z[7]), .B1(n1), .B2(Sum[7]), .C(rst), .X(n9) );
  SAEDRVT14_OA221_U_0P5 U6 ( .A1(Gin), .A2(Z[6]), .B1(n1), .B2(Sum[6]), .C(rst), .X(n8) );
  SAEDRVT14_OA221_U_0P5 U7 ( .A1(Gin), .A2(Z[5]), .B1(n1), .B2(Sum[5]), .C(rst), .X(n7) );
  SAEDRVT14_OA221_U_0P5 U8 ( .A1(Gin), .A2(Z[4]), .B1(n1), .B2(Sum[4]), .C(rst), .X(n6) );
  SAEDRVT14_OA221_U_0P5 U9 ( .A1(Gin), .A2(Z[3]), .B1(n1), .B2(Sum[3]), .C(rst), .X(n5) );
  SAEDRVT14_OA221_U_0P5 U10 ( .A1(Gin), .A2(Z[1]), .B1(n1), .B2(Sum[1]), .C(
        rst), .X(n3) );
  SAEDRVT14_OA221_U_0P5 U11 ( .A1(Gin), .A2(Z[0]), .B1(n1), .B2(Sum[0]), .C(
        rst), .X(n2) );
endmodule


module Register_8 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n1;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n10), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n9), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n8), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n7), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n6), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n5), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n4), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n3), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n2), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n10) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n9) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n8) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n7) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n6) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n5) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n4) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n3) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n2) );
endmodule


module Register_0 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n12), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n13), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n14), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n15), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n16), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n17), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n18), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n19), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n20), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_BUF_U_0P5 U4 ( .A(rst), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(n11), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(n11), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(n11), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(n11), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(n11), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(n11), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(n11), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(n11), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n19) );
  SAEDRVT14_AO32_U_0P5 U13 ( .A1(n11), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n20) );
endmodule


module Register_1 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n11), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n12), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n13), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n14), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n15), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n16), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n17), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n18), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n19), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n19) );
endmodule


module Register_2 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n11), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n12), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n13), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n14), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n15), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n16), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n17), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n18), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n19), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n19) );
endmodule


module Register_3 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n11), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n12), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n13), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n14), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n15), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n16), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n17), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n18), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n19), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n19) );
endmodule


module Register_4 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n11), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n12), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n13), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n14), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n15), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n16), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n17), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n18), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n19), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n19) );
endmodule


module Register_5 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n11), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n12), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n13), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n14), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n15), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n16), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n17), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n18), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n19), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n19) );
endmodule


module Register_6 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n11), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n12), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n13), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n14), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n15), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n16), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n17), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n18), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n19), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n19) );
endmodule


module Register_7 ( Clock, dout, din, EN, rst );
  output [8:0] dout;
  input [8:0] din;
  input Clock, EN, rst;
  wire   n1, n11, n12, n13, n14, n15, n16, n17, n18, n19;

  SAEDRVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D(n11), .CK(Clock), .Q(dout[8]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D(n12), .CK(Clock), .Q(dout[7]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D(n13), .CK(Clock), .Q(dout[6]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D(n14), .CK(Clock), .Q(dout[5]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D(n15), .CK(Clock), .Q(dout[4]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D(n16), .CK(Clock), .Q(dout[3]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D(n17), .CK(Clock), .Q(dout[2]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D(n18), .CK(Clock), .Q(dout[1]) );
  SAEDRVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D(n19), .CK(Clock), .Q(dout[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(EN), .X(n1) );
  SAEDRVT14_AO32_U_0P5 U4 ( .A1(rst), .A2(n1), .A3(dout[8]), .B1(EN), .B2(
        din[8]), .X(n11) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(rst), .A2(n1), .A3(dout[7]), .B1(EN), .B2(
        din[7]), .X(n12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(rst), .A2(n1), .A3(dout[6]), .B1(EN), .B2(
        din[6]), .X(n13) );
  SAEDRVT14_AO32_U_0P5 U7 ( .A1(rst), .A2(n1), .A3(dout[5]), .B1(EN), .B2(
        din[5]), .X(n14) );
  SAEDRVT14_AO32_U_0P5 U8 ( .A1(rst), .A2(n1), .A3(dout[4]), .B1(EN), .B2(
        din[4]), .X(n15) );
  SAEDRVT14_AO32_U_0P5 U9 ( .A1(rst), .A2(n1), .A3(dout[3]), .B1(EN), .B2(
        din[3]), .X(n16) );
  SAEDRVT14_AO32_U_0P5 U10 ( .A1(rst), .A2(n1), .A3(dout[2]), .B1(EN), .B2(
        din[2]), .X(n17) );
  SAEDRVT14_AO32_U_0P5 U11 ( .A1(rst), .A2(n1), .A3(dout[1]), .B1(EN), .B2(
        din[1]), .X(n18) );
  SAEDRVT14_AO32_U_0P5 U12 ( .A1(rst), .A2(n1), .A3(dout[0]), .B1(EN), .B2(
        din[0]), .X(n19) );
endmodule


module datapath_register_array ( R0out, R1out, R2out, R3out, R4out, R5out, 
        R6out, R7out, Gout, DINout, Clock, rst, R0in, R1in, R2in, R3in, R4in, 
        R5in, R6in, R7in, Ain, Bus, DIN, AddSub, Gin );
  output [8:0] Bus;
  input [8:0] DIN;
  input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, Gout, DINout,
         Clock, rst, R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, Ain,
         AddSub, Gin;
  wire   n1, n2, n3, n4;
  wire   [8:0] R0_data_out;
  wire   [8:0] R1_data_out;
  wire   [8:0] R2_data_out;
  wire   [8:0] R3_data_out;
  wire   [8:0] R4_data_out;
  wire   [8:0] R5_data_out;
  wire   [8:0] R6_data_out;
  wire   [8:0] R7_data_out;
  wire   [8:0] G;
  wire   [8:0] A_data_out;
  wire   [8:0] Sum;

  mux_10to1 m1 ( .R0out(R0out), .R1out(R1out), .R2out(R2out), .R3out(R3out), 
        .R4out(R4out), .R5out(R5out), .R6out(R6out), .R7out(R7out), .Gout(Gout), .DINout(DINout), .DIN(DIN), .R0(R0_data_out), .R1(R1_data_out), .R2(
        R2_data_out), .R3(R3_data_out), .R4(R4_data_out), .R5(R5_data_out), 
        .R6(R6_data_out), .R7(R7_data_out), .G(G), .Bus(Bus) );
  Add_Sub add_top ( .A(A_data_out), .Bus(Bus), .AddSub(AddSub), .ALU_out(Sum)
         );
  reg_G g2 ( .Sum(Sum), .Gin(Gin), .Clock(Clock), .rst(n1), .Z(G) );
  Register_8 Reg0 ( .Clock(Clock), .dout(R0_data_out), .din(Bus), .EN(R0in), 
        .rst(n1) );
  Register_7 Reg1 ( .Clock(Clock), .dout(R1_data_out), .din(Bus), .EN(R1in), 
        .rst(n4) );
  Register_6 Reg2 ( .Clock(Clock), .dout(R2_data_out), .din(Bus), .EN(R2in), 
        .rst(n4) );
  Register_5 Reg3 ( .Clock(Clock), .dout(R3_data_out), .din(Bus), .EN(R3in), 
        .rst(n3) );
  Register_4 Reg4 ( .Clock(Clock), .dout(R4_data_out), .din(Bus), .EN(R4in), 
        .rst(n3) );
  Register_3 Reg5 ( .Clock(Clock), .dout(R5_data_out), .din(Bus), .EN(R5in), 
        .rst(n2) );
  Register_2 Reg6 ( .Clock(Clock), .dout(R6_data_out), .din(Bus), .EN(R6in), 
        .rst(n2) );
  Register_1 Reg7 ( .Clock(Clock), .dout(R7_data_out), .din(Bus), .EN(R7in), 
        .rst(rst) );
  Register_0 A5 ( .Clock(Clock), .dout(A_data_out), .din(Bus), .EN(Ain), .rst(
        rst) );
  SAEDRVT14_BUF_U_0P5 U1 ( .A(rst), .X(n3) );
  SAEDRVT14_BUF_U_0P5 U2 ( .A(rst), .X(n2) );
  SAEDRVT14_BUF_U_0P5 U3 ( .A(rst), .X(n1) );
  SAEDRVT14_BUF_U_0P5 U4 ( .A(rst), .X(n4) );
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

