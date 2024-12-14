/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : P-2019.03-SP4
// Date      : Wed Mar 23 08:58:49 2022
/////////////////////////////////////////////////////////////


module mux_1 ( i0, i1, s, y );
  input [7:0] i0;
  input [7:0] i1;
  output [7:0] y;
  input s;
  wire   n1, n2;

  SAEDRVT14_BUF_U_0P5 U1 ( .A(s), .X(n1) );
  SAEDRVT14_INV_0P5 U2 ( .A(n1), .X(n2) );
  SAEDRVT14_MUXI2_U_0P5 U3 ( .D0(n2), .D1(n1), .S(i0[0]), .X(y[0]) );
  SAEDRVT14_MUXI2_U_0P5 U4 ( .D0(n2), .D1(n1), .S(i0[1]), .X(y[1]) );
  SAEDRVT14_MUXI2_U_0P5 U5 ( .D0(n2), .D1(n1), .S(i0[2]), .X(y[2]) );
  SAEDRVT14_MUXI2_U_0P5 U6 ( .D0(n2), .D1(n1), .S(i0[3]), .X(y[3]) );
  SAEDRVT14_MUXI2_U_0P5 U7 ( .D0(n2), .D1(n1), .S(i0[4]), .X(y[4]) );
  SAEDRVT14_MUXI2_U_0P5 U8 ( .D0(n2), .D1(n1), .S(i0[5]), .X(y[5]) );
  SAEDRVT14_MUXI2_U_0P5 U9 ( .D0(n2), .D1(n1), .S(i0[6]), .X(y[6]) );
  SAEDRVT14_MUXI2_U_0P5 U10 ( .D0(n2), .D1(n1), .S(i0[7]), .X(y[7]) );
endmodule


module ha ( s, c, a, b );
  input a, b;
  output s, c;


  SAEDRVT14_AN2_MM_0P5 U1 ( .A1(b), .A2(a), .X(c) );
  SAEDRVT14_OA21B_1 U2 ( .A1(b), .A2(a), .B(c), .X(s) );
endmodule


module fa_6 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;


  SAEDRVT14_ADDF_V1_0P5 U1 ( .A(b), .B(a), .CI(cin), .CO(cout), .S(s) );
endmodule


module fa_5 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;


  SAEDRVT14_ADDF_V1_0P5 U1 ( .A(b), .B(a), .CI(cin), .CO(cout), .S(s) );
endmodule


module fa_4 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;


  SAEDRVT14_ADDF_V1_0P5 U1 ( .A(b), .B(a), .CI(cin), .CO(cout), .S(s) );
endmodule


module fa_3 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;


  SAEDRVT14_ADDF_V1_0P5 U1 ( .A(b), .B(a), .CI(cin), .CO(cout), .S(s) );
endmodule


module fa_2 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;


  SAEDRVT14_ADDF_V1_0P5 U1 ( .A(b), .B(a), .CI(cin), .CO(cout), .S(s) );
endmodule


module fa_1 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;


  SAEDRVT14_ADDF_V1_0P5 U1 ( .A(b), .B(a), .CI(cin), .CO(cout), .S(s) );
endmodule


module fa_0 ( s, cout, a, b, cin );
  input a, b, cin;
  output s, cout;


  SAEDRVT14_ADDF_V1_0P5 U1 ( .A(b), .B(a), .CI(cin), .CO(cout), .S(s) );
endmodule


module mux_0 ( i0, i1, s, y );
  input [7:0] i0;
  input [7:0] i1;
  output [7:0] y;
  input s;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(i0[0]), .D1(i1[0]), .S(s), .X(y[0]) );
  SAEDRVT14_MUX2_U_0P5 U2 ( .D0(i0[1]), .D1(i1[1]), .S(s), .X(y[1]) );
  SAEDRVT14_MUX2_U_0P5 U3 ( .D0(i0[2]), .D1(i1[2]), .S(s), .X(y[2]) );
  SAEDRVT14_MUX2_U_0P5 U4 ( .D0(i0[3]), .D1(i1[3]), .S(s), .X(y[3]) );
  SAEDRVT14_MUX2_U_0P5 U5 ( .D0(i0[4]), .D1(i1[4]), .S(s), .X(y[4]) );
  SAEDRVT14_MUX2_U_0P5 U6 ( .D0(i0[5]), .D1(i1[5]), .S(s), .X(y[5]) );
  SAEDRVT14_MUX2_U_0P5 U7 ( .D0(i0[6]), .D1(i1[6]), .S(s), .X(y[6]) );
  SAEDRVT14_MUX2_U_0P5 U8 ( .D0(i0[7]), .D1(i1[7]), .S(s), .X(y[7]) );
endmodule


module comparator_block ( A, B, aeqb, altb, agtb );
  input [7:0] A;
  input [7:0] B;
  output aeqb, altb, agtb;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45;

  SAEDRVT14_INV_0P5 U1 ( .A(B[5]), .X(n1) );
  SAEDRVT14_AN2_MM_0P5 U2 ( .A1(n1), .A2(A[5]), .X(n35) );
  SAEDRVT14_INV_0P5 U3 ( .A(A[1]), .X(n3) );
  SAEDRVT14_NR2_1 U4 ( .A1(B[1]), .A2(n3), .X(n25) );
  SAEDRVT14_ND2B_U_0P5 U5 ( .A(B[4]), .B(A[4]), .X(n32) );
  SAEDRVT14_INV_0P5 U6 ( .A(A[0]), .X(n2) );
  SAEDRVT14_ND2_CDC_0P5 U7 ( .A1(B[0]), .A2(n2), .X(n24) );
  SAEDRVT14_ND2_CDC_0P5 U8 ( .A1(n32), .A2(n24), .X(n10) );
  SAEDRVT14_NR2_1 U9 ( .A1(A[5]), .A2(n1), .X(n38) );
  SAEDRVT14_NR2_1 U10 ( .A1(B[0]), .A2(n2), .X(n13) );
  SAEDRVT14_ND2B_U_0P5 U11 ( .A(A[4]), .B(B[4]), .X(n36) );
  SAEDRVT14_ND2_CDC_0P5 U12 ( .A1(n3), .A2(B[1]), .X(n23) );
  SAEDRVT14_ND2_CDC_0P5 U13 ( .A1(n36), .A2(n23), .X(n8) );
  SAEDRVT14_INV_0P5 U14 ( .A(B[2]), .X(n28) );
  SAEDRVT14_INV_0P5 U15 ( .A(A[3]), .X(n11) );
  SAEDRVT14_ND2_CDC_0P5 U16 ( .A1(n11), .A2(B[3]), .X(n12) );
  SAEDRVT14_OAI21_0P5 U17 ( .A1(A[2]), .A2(n28), .B(n12), .X(n14) );
  SAEDRVT14_INV_0P5 U18 ( .A(A[7]), .X(n40) );
  SAEDRVT14_INV_0P5 U19 ( .A(B[6]), .X(n4) );
  SAEDRVT14_NR2_1 U20 ( .A1(A[6]), .A2(n4), .X(n41) );
  SAEDRVT14_AOI21_0P75 U21 ( .A1(B[7]), .A2(n40), .B(n41), .X(n22) );
  SAEDRVT14_INV_0P5 U22 ( .A(n22), .X(n6) );
  SAEDRVT14_ND2_CDC_0P5 U23 ( .A1(n28), .A2(A[2]), .X(n26) );
  SAEDRVT14_OAI21_0P5 U24 ( .A1(B[3]), .A2(n11), .B(n26), .X(n5) );
  SAEDRVT14_ND2_CDC_0P5 U25 ( .A1(n4), .A2(A[6]), .X(n18) );
  SAEDRVT14_OAI21_0P5 U26 ( .A1(B[7]), .A2(n40), .B(n18), .X(n44) );
  SAEDRVT14_OR4_1 U27 ( .A1(n14), .A2(n6), .A3(n5), .A4(n44), .X(n7) );
  SAEDRVT14_OR4_1 U28 ( .A1(n38), .A2(n13), .A3(n8), .A4(n7), .X(n9) );
  SAEDRVT14_NR4_0P75 U29 ( .A1(n35), .A2(n25), .A3(n10), .A4(n9), .X(aeqb) );
  SAEDRVT14_NR2_1 U30 ( .A1(B[3]), .A2(n11), .X(n29) );
  SAEDRVT14_INV_0P5 U31 ( .A(n12), .X(n34) );
  SAEDRVT14_AOI21_0P75 U32 ( .A1(n13), .A2(n23), .B(n25), .X(n15) );
  SAEDRVT14_OAI22_0P5 U33 ( .A1(n34), .A2(n26), .B1(n15), .B2(n14), .X(n16) );
  SAEDRVT14_OAI21_0P5 U34 ( .A1(n29), .A2(n16), .B(n36), .X(n17) );
  SAEDRVT14_AOI21_0P75 U35 ( .A1(n32), .A2(n17), .B(n38), .X(n21) );
  SAEDRVT14_AN2_MM_0P5 U36 ( .A1(n40), .A2(B[7]), .X(n19) );
  SAEDRVT14_OAI22_0P5 U37 ( .A1(n19), .A2(n18), .B1(B[7]), .B2(n40), .X(n20)
         );
  SAEDRVT14_AO221_0P5 U38 ( .A1(n22), .A2(n35), .B1(n22), .B2(n21), .C(n20), 
        .X(agtb) );
  SAEDRVT14_OAI21_0P5 U39 ( .A1(n25), .A2(n24), .B(n23), .X(n27) );
  SAEDRVT14_ND2_CDC_0P5 U40 ( .A1(n27), .A2(n26), .X(n31) );
  SAEDRVT14_OR2_MM_0P5 U41 ( .A1(A[2]), .A2(n28), .X(n30) );
  SAEDRVT14_AOI21_0P75 U42 ( .A1(n31), .A2(n30), .B(n29), .X(n33) );
  SAEDRVT14_OAI21_0P5 U43 ( .A1(n34), .A2(n33), .B(n32), .X(n37) );
  SAEDRVT14_AOI21_0P75 U44 ( .A1(n37), .A2(n36), .B(n35), .X(n39) );
  SAEDRVT14_NR2_1 U45 ( .A1(n39), .A2(n38), .X(n45) );
  SAEDRVT14_AN2_MM_0P5 U46 ( .A1(n41), .A2(n40), .X(n42) );
  SAEDRVT14_OAI22_0P5 U47 ( .A1(n42), .A2(B[7]), .B1(n41), .B2(n40), .X(n43)
         );
  SAEDRVT14_OAI21_0P5 U48 ( .A1(n45), .A2(n44), .B(n43), .X(altb) );
endmodule


module arith_block ( a, b, s3, s2, f, z, c, v, agtb, altb, aeqb );
  input [7:0] a;
  input [7:0] b;
  output [7:0] f;
  input s3, s2;
  output z, c, v, agtb, altb, aeqb;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13;
  wire   [7:0] m1out;
  wire   [7:0] sum1;
  wire   [7:0] sum;
  wire   [7:1] cp;

  mux_1 m1 ( .i0(b), .i1({n1, n1, n1, n1, n1, n1, n1, n1}), .s(s3), .y(m1out)
         );
  ha h1 ( .s(sum[0]), .c(cp[1]), .a(a[0]), .b(sum1[0]) );
  fa_6 f1 ( .s(sum[1]), .cout(cp[2]), .a(a[1]), .b(sum1[1]), .cin(cp[1]) );
  fa_5 f2 ( .s(sum[2]), .cout(cp[3]), .a(a[2]), .b(sum1[2]), .cin(cp[2]) );
  fa_4 f3 ( .s(sum[3]), .cout(cp[4]), .a(a[3]), .b(sum1[3]), .cin(cp[3]) );
  fa_3 f4 ( .s(sum[4]), .cout(cp[5]), .a(a[4]), .b(sum1[4]), .cin(cp[4]) );
  fa_2 f5 ( .s(sum[5]), .cout(cp[6]), .a(a[5]), .b(sum1[5]), .cin(cp[5]) );
  fa_1 f6 ( .s(sum[6]), .cout(cp[7]), .a(a[6]), .b(sum1[6]), .cin(cp[6]) );
  fa_0 f7 ( .s(sum[7]), .cout(c), .a(a[7]), .b(sum1[7]), .cin(cp[7]) );
  mux_0 m2 ( .i0(sum), .i1(sum1), .s(s2), .y(f) );
  comparator_block cb ( .A(a), .B(b), .aeqb(aeqb), .altb(altb), .agtb(agtb) );
  SAEDRVT14_TIE0_V1_2 U1 ( .X(n1) );
  SAEDRVT14_OR4_1 U2 ( .A1(sum[3]), .A2(sum[2]), .A3(sum[1]), .A4(sum[0]), .X(
        n3) );
  SAEDRVT14_OR4_1 U3 ( .A1(sum[7]), .A2(sum[6]), .A3(sum[5]), .A4(sum[4]), .X(
        n2) );
  SAEDRVT14_NR2_1 U4 ( .A1(n3), .A2(n2), .X(z) );
  SAEDRVT14_EO2_V1_0P75 U5 ( .A1(cp[7]), .A2(c), .X(v) );
  SAEDRVT14_AN2_MM_0P5 U6 ( .A1(m1out[0]), .A2(s3), .X(n13) );
  SAEDRVT14_ND2_CDC_0P5 U7 ( .A1(n13), .A2(m1out[1]), .X(n5) );
  SAEDRVT14_OA21_1 U8 ( .A1(n13), .A2(m1out[1]), .B(n5), .X(sum1[1]) );
  SAEDRVT14_INV_0P5 U9 ( .A(m1out[2]), .X(n4) );
  SAEDRVT14_AN4_0P5 U10 ( .A1(m1out[0]), .A2(s3), .A3(m1out[1]), .A4(m1out[2]), 
        .X(n6) );
  SAEDRVT14_AOI21_0P75 U11 ( .A1(n5), .A2(n4), .B(n6), .X(sum1[2]) );
  SAEDRVT14_ND2_CDC_0P5 U12 ( .A1(n6), .A2(m1out[3]), .X(n8) );
  SAEDRVT14_OA21_1 U13 ( .A1(n6), .A2(m1out[3]), .B(n8), .X(sum1[3]) );
  SAEDRVT14_INV_0P5 U14 ( .A(m1out[4]), .X(n7) );
  SAEDRVT14_NR2_1 U15 ( .A1(n8), .A2(n7), .X(n9) );
  SAEDRVT14_AOI21_0P75 U16 ( .A1(n8), .A2(n7), .B(n9), .X(sum1[4]) );
  SAEDRVT14_ND2_CDC_0P5 U17 ( .A1(n9), .A2(m1out[5]), .X(n11) );
  SAEDRVT14_OA21_1 U18 ( .A1(n9), .A2(m1out[5]), .B(n11), .X(sum1[5]) );
  SAEDRVT14_INV_0P5 U19 ( .A(m1out[6]), .X(n10) );
  SAEDRVT14_NR2_1 U20 ( .A1(n11), .A2(n10), .X(n12) );
  SAEDRVT14_AOI21_0P75 U21 ( .A1(n11), .A2(n10), .B(n12), .X(sum1[6]) );
  SAEDRVT14_EO2_V1_0P75 U22 ( .A1(n12), .A2(m1out[7]), .X(sum1[7]) );
  SAEDRVT14_OA21B_1 U23 ( .A1(m1out[0]), .A2(s3), .B(n13), .X(sum1[0]) );
endmodule


module logic_block ( A, B, s3, s2, out );
  input [7:0] A;
  input [7:0] B;
  output [7:0] out;
  input s3, s2;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  SAEDRVT14_ND2_CDC_0P5 U1 ( .A1(s2), .A2(s3), .X(n26) );
  SAEDRVT14_INV_0P5 U2 ( .A(s3), .X(n23) );
  SAEDRVT14_AOI21_0P75 U3 ( .A1(A[4]), .A2(B[4]), .B(s2), .X(n1) );
  SAEDRVT14_EO2_V1_0P75 U4 ( .A1(n23), .A2(n1), .X(n2) );
  SAEDRVT14_OAI21_0P5 U5 ( .A1(B[4]), .A2(A[4]), .B(n2), .X(n3) );
  SAEDRVT14_OAI21_0P5 U6 ( .A1(B[4]), .A2(n26), .B(n3), .X(out[4]) );
  SAEDRVT14_AOI21_0P75 U7 ( .A1(A[7]), .A2(B[7]), .B(s2), .X(n4) );
  SAEDRVT14_EO2_V1_0P75 U8 ( .A1(n23), .A2(n4), .X(n5) );
  SAEDRVT14_OAI21_0P5 U9 ( .A1(B[7]), .A2(A[7]), .B(n5), .X(n6) );
  SAEDRVT14_OAI21_0P5 U10 ( .A1(B[7]), .A2(n26), .B(n6), .X(out[7]) );
  SAEDRVT14_AOI21_0P75 U11 ( .A1(A[3]), .A2(B[3]), .B(s2), .X(n7) );
  SAEDRVT14_EO2_V1_0P75 U12 ( .A1(n23), .A2(n7), .X(n8) );
  SAEDRVT14_OAI21_0P5 U13 ( .A1(B[3]), .A2(A[3]), .B(n8), .X(n9) );
  SAEDRVT14_OAI21_0P5 U14 ( .A1(B[3]), .A2(n26), .B(n9), .X(out[3]) );
  SAEDRVT14_AOI21_0P75 U15 ( .A1(A[5]), .A2(B[5]), .B(s2), .X(n10) );
  SAEDRVT14_EO2_V1_0P75 U16 ( .A1(n23), .A2(n10), .X(n11) );
  SAEDRVT14_OAI21_0P5 U17 ( .A1(B[5]), .A2(A[5]), .B(n11), .X(n12) );
  SAEDRVT14_OAI21_0P5 U18 ( .A1(B[5]), .A2(n26), .B(n12), .X(out[5]) );
  SAEDRVT14_AOI21_0P75 U19 ( .A1(A[2]), .A2(B[2]), .B(s2), .X(n13) );
  SAEDRVT14_EO2_V1_0P75 U20 ( .A1(n23), .A2(n13), .X(n14) );
  SAEDRVT14_OAI21_0P5 U21 ( .A1(B[2]), .A2(A[2]), .B(n14), .X(n15) );
  SAEDRVT14_OAI21_0P5 U22 ( .A1(B[2]), .A2(n26), .B(n15), .X(out[2]) );
  SAEDRVT14_AOI21_0P75 U23 ( .A1(A[6]), .A2(B[6]), .B(s2), .X(n16) );
  SAEDRVT14_EO2_V1_0P75 U24 ( .A1(n23), .A2(n16), .X(n17) );
  SAEDRVT14_OAI21_0P5 U25 ( .A1(B[6]), .A2(A[6]), .B(n17), .X(n18) );
  SAEDRVT14_OAI21_0P5 U26 ( .A1(B[6]), .A2(n26), .B(n18), .X(out[6]) );
  SAEDRVT14_AOI21_0P75 U27 ( .A1(A[1]), .A2(B[1]), .B(s2), .X(n19) );
  SAEDRVT14_EO2_V1_0P75 U28 ( .A1(n23), .A2(n19), .X(n20) );
  SAEDRVT14_OAI21_0P5 U29 ( .A1(B[1]), .A2(A[1]), .B(n20), .X(n21) );
  SAEDRVT14_OAI21_0P5 U30 ( .A1(B[1]), .A2(n26), .B(n21), .X(out[1]) );
  SAEDRVT14_AOI21_0P75 U31 ( .A1(A[0]), .A2(B[0]), .B(s2), .X(n22) );
  SAEDRVT14_EO2_V1_0P75 U32 ( .A1(n23), .A2(n22), .X(n24) );
  SAEDRVT14_OAI21_0P5 U33 ( .A1(B[0]), .A2(A[0]), .B(n24), .X(n25) );
  SAEDRVT14_OAI21_0P5 U34 ( .A1(B[0]), .A2(n26), .B(n25), .X(out[0]) );
endmodule


module shifter_block ( clk, in, s3, s2, sh, rst_BAR );
  input [7:0] in;
  output [7:0] sh;
  input clk, s3, s2, rst_BAR;
  wire   N12, N19, n1, n2;

  SAEDRVT14_FSDPRBQ_V2LP_0P5 sh_reg_6_ ( .D(in[7]), .SI(in[5]), .SE(s3), .CK(
        clk), .RD(rst_BAR), .Q(sh[6]) );
  SAEDRVT14_FSDPRBQ_V2LP_0P5 sh_reg_5_ ( .D(in[6]), .SI(in[4]), .SE(s3), .CK(
        clk), .RD(rst_BAR), .Q(sh[5]) );
  SAEDRVT14_FSDPRBQ_V2LP_0P5 sh_reg_4_ ( .D(in[5]), .SI(in[3]), .SE(s3), .CK(
        clk), .RD(rst_BAR), .Q(sh[4]) );
  SAEDRVT14_FSDPRBQ_V2LP_0P5 sh_reg_3_ ( .D(in[4]), .SI(in[2]), .SE(s3), .CK(
        clk), .RD(rst_BAR), .Q(sh[3]) );
  SAEDRVT14_FSDPRBQ_V2LP_0P5 sh_reg_2_ ( .D(in[3]), .SI(in[1]), .SE(s3), .CK(
        clk), .RD(rst_BAR), .Q(sh[2]) );
  SAEDRVT14_FSDPRBQ_V2LP_0P5 sh_reg_1_ ( .D(in[2]), .SI(in[0]), .SE(s3), .CK(
        clk), .RD(rst_BAR), .Q(sh[1]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 sh_reg_7_ ( .D(N19), .CK(clk), .RD(rst_BAR), .Q(
        sh[7]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 sh_reg_0_ ( .D(N12), .CK(clk), .RD(rst_BAR), .Q(
        sh[0]) );
  SAEDRVT14_INV_0P5 U3 ( .A(s2), .X(n1) );
  SAEDRVT14_INV_0P5 U4 ( .A(s3), .X(n2) );
  SAEDRVT14_AO32_U_0P5 U5 ( .A1(in[7]), .A2(s3), .A3(n1), .B1(n2), .B2(in[1]), 
        .X(N12) );
  SAEDRVT14_AO32_U_0P5 U6 ( .A1(in[0]), .A2(n2), .A3(n1), .B1(s3), .B2(in[6]), 
        .X(N19) );
endmodule


module mux_3 ( i0, i1, s, y );
  input [7:0] i0;
  input [7:0] i1;
  output [7:0] y;
  input s;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(i0[0]), .D1(i1[0]), .S(s), .X(y[0]) );
  SAEDRVT14_MUX2_U_0P5 U2 ( .D0(i0[1]), .D1(i1[1]), .S(s), .X(y[1]) );
  SAEDRVT14_MUX2_U_0P5 U3 ( .D0(i0[2]), .D1(i1[2]), .S(s), .X(y[2]) );
  SAEDRVT14_MUX2_U_0P5 U4 ( .D0(i0[3]), .D1(i1[3]), .S(s), .X(y[3]) );
  SAEDRVT14_MUX2_U_0P5 U5 ( .D0(i0[4]), .D1(i1[4]), .S(s), .X(y[4]) );
  SAEDRVT14_MUX2_U_0P5 U6 ( .D0(i0[5]), .D1(i1[5]), .S(s), .X(y[5]) );
  SAEDRVT14_MUX2_U_0P5 U7 ( .D0(i0[6]), .D1(i1[6]), .S(s), .X(y[6]) );
  SAEDRVT14_MUX2_U_0P5 U8 ( .D0(i0[7]), .D1(i1[7]), .S(s), .X(y[7]) );
endmodule


module mux_2 ( i0, i1, s, y );
  input [7:0] i0;
  input [7:0] i1;
  output [7:0] y;
  input s;


  SAEDRVT14_MUX2_U_0P5 U1 ( .D0(i0[0]), .D1(i1[0]), .S(s), .X(y[0]) );
  SAEDRVT14_MUX2_U_0P5 U2 ( .D0(i0[1]), .D1(i1[1]), .S(s), .X(y[1]) );
  SAEDRVT14_MUX2_U_0P5 U3 ( .D0(i0[2]), .D1(i1[2]), .S(s), .X(y[2]) );
  SAEDRVT14_MUX2_U_0P5 U4 ( .D0(i0[3]), .D1(i1[3]), .S(s), .X(y[3]) );
  SAEDRVT14_MUX2_U_0P5 U5 ( .D0(i0[4]), .D1(i1[4]), .S(s), .X(y[4]) );
  SAEDRVT14_MUX2_U_0P5 U6 ( .D0(i0[5]), .D1(i1[5]), .S(s), .X(y[5]) );
  SAEDRVT14_MUX2_U_0P5 U7 ( .D0(i0[6]), .D1(i1[6]), .S(s), .X(y[6]) );
  SAEDRVT14_MUX2_U_0P5 U8 ( .D0(i0[7]), .D1(i1[7]), .S(s), .X(y[7]) );
endmodule


module reg_block ( clk, in, out, rst_BAR );
  input [7:0] in;
  output [7:0] out;
  input clk, rst_BAR;


  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_4_ ( .D(in[4]), .CK(clk), .RD(rst_BAR), 
        .Q(out[4]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_7_ ( .D(in[7]), .CK(clk), .RD(rst_BAR), 
        .Q(out[7]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_6_ ( .D(in[6]), .CK(clk), .RD(rst_BAR), 
        .Q(out[6]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_5_ ( .D(in[5]), .CK(clk), .RD(rst_BAR), 
        .Q(out[5]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_3_ ( .D(in[3]), .CK(clk), .RD(rst_BAR), 
        .Q(out[3]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_2_ ( .D(in[2]), .CK(clk), .RD(rst_BAR), 
        .Q(out[2]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_1_ ( .D(in[1]), .CK(clk), .RD(rst_BAR), 
        .Q(out[1]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 out_reg_0_ ( .D(in[0]), .CK(clk), .RD(rst_BAR), 
        .Q(out[0]) );
endmodule


module alu ( f, z, c, v, agtb, altb, aeqb, a, b, s, clk, rst );
  output [7:0] f;
  input [7:0] a;
  input [7:0] b;
  input [3:0] s;
  input clk, rst;
  output z, c, v, agtb, altb, aeqb;
  wire   n7, n8;
  wire   [7:0] a_r;
  wire   [7:0] b_r;
  wire   [3:2] s_r;
  wire   [7:0] a_out;
  wire   [7:0] l_out;
  wire   [7:0] s_out;
  wire   [7:0] c1_out;
  wire   [7:0] c2_out;

  arith_block ab ( .a(a_r), .b(b_r), .s3(s_r[3]), .s2(s_r[2]), .f(a_out), .z(z), .c(c), .v(v), .agtb(agtb), .altb(altb), .aeqb(aeqb) );
  logic_block lb ( .A(a_r), .B(b_r), .s3(s_r[3]), .s2(s_r[2]), .out(l_out) );
  shifter_block sb ( .clk(clk), .in(a_r), .s3(s_r[3]), .s2(s_r[2]), .sh(s_out), 
        .rst_BAR(n7) );
  mux_3 mc1 ( .i0(l_out), .i1(s_out), .s(s[1]), .y(c1_out) );
  mux_2 mc2 ( .i0(a_out), .i1(c1_out), .s(s[0]), .y(c2_out) );
  reg_block rb ( .clk(clk), .in(c2_out), .out(f), .rst_BAR(n8) );
  SAEDRVT14_INV_0P5 U9 ( .A(rst), .X(n7) );
  SAEDRVT14_INV_0P5 U10 ( .A(rst), .X(n8) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_3_ ( .D(a[3]), .CK(clk), .RD(n7), .Q(
        a_r[3]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_7_ ( .D(b[7]), .CK(clk), .RD(n7), .Q(
        b_r[7]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_6_ ( .D(b[6]), .CK(clk), .RD(n8), .Q(
        b_r[6]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_5_ ( .D(b[5]), .CK(clk), .RD(n8), .Q(
        b_r[5]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_4_ ( .D(b[4]), .CK(clk), .RD(n7), .Q(
        b_r[4]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_3_ ( .D(b[3]), .CK(clk), .RD(n7), .Q(
        b_r[3]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_2_ ( .D(b[2]), .CK(clk), .RD(n7), .Q(
        b_r[2]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_1_ ( .D(b[1]), .CK(clk), .RD(n8), .Q(
        b_r[1]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 b_r_reg_0_ ( .D(b[0]), .CK(clk), .RD(n8), .Q(
        b_r[0]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 s_r_reg_3_ ( .D(s[3]), .CK(clk), .RD(n7), .Q(
        s_r[3]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 s_r_reg_2_ ( .D(s[2]), .CK(clk), .RD(n8), .Q(
        s_r[2]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_7_ ( .D(a[7]), .CK(clk), .RD(n8), .Q(
        a_r[7]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_6_ ( .D(a[6]), .CK(clk), .RD(n7), .Q(
        a_r[6]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_5_ ( .D(a[5]), .CK(clk), .RD(n8), .Q(
        a_r[5]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_4_ ( .D(a[4]), .CK(clk), .RD(n8), .Q(
        a_r[4]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_2_ ( .D(a[2]), .CK(clk), .RD(n7), .Q(
        a_r[2]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_0_ ( .D(a[0]), .CK(clk), .RD(n8), .Q(
        a_r[0]) );
  SAEDRVT14_FDPRBQ_V2LP_0P5 a_r_reg_1_ ( .D(a[1]), .CK(clk), .RD(n8), .Q(
        a_r[1]) );
endmodule

