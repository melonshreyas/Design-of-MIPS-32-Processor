// IC Compiler II Verilog Writer
// Generated on 05/25/2022 at 18:04:23
// Library Name: lib
// Block Name: initial_route_23rd_May
// User Label: 
// Write Command: write_verilog alu_routed.v
module reg_block ( clk , in , out , rst_BAR ) ;
input  clk ;
input  [7:0] in ;
output [7:0] out ;
input  rst_BAR ;

SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_4_ ( .D ( in[4] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[4] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_7_ ( .D ( in[7] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[7] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_6_ ( .D ( in[6] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[6] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_5_ ( .D ( in[5] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[5] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_3_ ( .D ( in[3] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[3] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_2_ ( .D ( in[2] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[2] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_1_ ( .D ( in[1] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[1] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 out_reg_0_ ( .D ( in[0] ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( out[0] ) ) ;
endmodule


module mux_2 ( i0 , i1 , s , y ) ;
input  [7:0] i0 ;
input  [7:0] i1 ;
input  s ;
output [7:0] y ;

SAEDHVT14_MUX2_U_0P5 U1 ( .D0 ( i0[2] ) , .D1 ( i1[2] ) , .S ( s ) , 
    .X ( y[2] ) ) ;
SAEDHVT14_MUX2_U_0P5 U2 ( .D0 ( i0[4] ) , .D1 ( i1[4] ) , .S ( s ) , 
    .X ( y[4] ) ) ;
SAEDHVT14_MUX2_U_0P5 U3 ( .D0 ( i0[7] ) , .D1 ( i1[7] ) , .S ( s ) , 
    .X ( y[7] ) ) ;
SAEDHVT14_MUX2_U_0P5 U4 ( .D0 ( i0[3] ) , .D1 ( i1[3] ) , .S ( s ) , 
    .X ( y[3] ) ) ;
SAEDHVT14_MUX2_U_0P5 U5 ( .D0 ( i0[5] ) , .D1 ( i1[5] ) , .S ( s ) , 
    .X ( y[5] ) ) ;
SAEDHVT14_MUX2_U_0P5 U6 ( .D0 ( i0[6] ) , .D1 ( i1[6] ) , .S ( s ) , 
    .X ( y[6] ) ) ;
SAEDHVT14_MUX2_U_0P5 U7 ( .D0 ( i0[1] ) , .D1 ( i1[1] ) , .S ( s ) , 
    .X ( y[1] ) ) ;
SAEDHVT14_MUX2_U_0P5 U8 ( .D0 ( i0[0] ) , .D1 ( i1[0] ) , .S ( s ) , 
    .X ( y[0] ) ) ;
endmodule


module mux_3 ( i0 , i1 , s , y ) ;
input  [7:0] i0 ;
input  [7:0] i1 ;
input  s ;
output [7:0] y ;

SAEDHVT14_MUX2_U_0P5 U1 ( .D0 ( i0[4] ) , .D1 ( i1[4] ) , .S ( s ) , 
    .X ( y[4] ) ) ;
SAEDHVT14_MUX2_U_0P5 U2 ( .D0 ( i0[7] ) , .D1 ( i1[7] ) , .S ( s ) , 
    .X ( y[7] ) ) ;
SAEDHVT14_MUX2_U_0P5 U3 ( .D0 ( i0[3] ) , .D1 ( i1[3] ) , .S ( s ) , 
    .X ( y[3] ) ) ;
SAEDHVT14_MUX2_U_0P5 U4 ( .D0 ( i0[5] ) , .D1 ( i1[5] ) , .S ( s ) , 
    .X ( y[5] ) ) ;
SAEDHVT14_MUX2_U_0P5 U5 ( .D0 ( i0[2] ) , .D1 ( i1[2] ) , .S ( s ) , 
    .X ( y[2] ) ) ;
SAEDHVT14_MUX2_U_0P5 U6 ( .D0 ( i0[6] ) , .D1 ( i1[6] ) , .S ( s ) , 
    .X ( y[6] ) ) ;
SAEDHVT14_MUX2_U_0P5 U7 ( .D0 ( i0[1] ) , .D1 ( i1[1] ) , .S ( s ) , 
    .X ( y[1] ) ) ;
SAEDHVT14_MUX2_U_0P5 U8 ( .D0 ( i0[0] ) , .D1 ( i1[0] ) , .S ( s ) , 
    .X ( y[0] ) ) ;
endmodule


module shifter_block ( clk , in , s3 , s2 , sh , rst_BAR ) ;
input  clk ;
input  [7:0] in ;
input  s3 ;
input  s2 ;
output [7:0] sh ;
input  rst_BAR ;

SAEDHVT14_FSDPRBQ_V2LP_0P5 sh_reg_6_ ( .D ( in[7] ) , .SI ( in[5] ) , 
    .SE ( s3 ) , .CK ( clk ) , .RD ( rst_BAR ) , .Q ( sh[6] ) ) ;
SAEDHVT14_FSDPRBQ_V2LP_0P5 sh_reg_5_ ( .D ( in[6] ) , .SI ( in[4] ) , 
    .SE ( s3 ) , .CK ( clk ) , .RD ( rst_BAR ) , .Q ( sh[5] ) ) ;
SAEDHVT14_FSDPRBQ_V2LP_0P5 sh_reg_4_ ( .D ( in[5] ) , .SI ( in[3] ) , 
    .SE ( s3 ) , .CK ( clk ) , .RD ( rst_BAR ) , .Q ( sh[4] ) ) ;
SAEDHVT14_FSDPRBQ_V2LP_0P5 sh_reg_3_ ( .D ( in[4] ) , .SI ( in[2] ) , 
    .SE ( s3 ) , .CK ( clk ) , .RD ( rst_BAR ) , .Q ( sh[3] ) ) ;
SAEDHVT14_FSDPRBQ_V2LP_0P5 sh_reg_2_ ( .D ( in[3] ) , .SI ( in[1] ) , 
    .SE ( s3 ) , .CK ( clk ) , .RD ( rst_BAR ) , .Q ( sh[2] ) ) ;
SAEDHVT14_FSDPRBQ_V2LP_0P5 sh_reg_1_ ( .D ( in[2] ) , .SI ( in[0] ) , 
    .SE ( s3 ) , .CK ( clk ) , .RD ( rst_BAR ) , .Q ( sh[1] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 sh_reg_7_ ( .D ( N19 ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( sh[7] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 sh_reg_0_ ( .D ( N12 ) , .CK ( clk ) , 
    .RD ( rst_BAR ) , .Q ( sh[0] ) ) ;
SAEDHVT14_INV_0P5 U3 ( .A ( s2 ) , .X ( n1 ) ) ;
SAEDHVT14_INV_0P5 U4 ( .A ( s3 ) , .X ( n2 ) ) ;
SAEDHVT14_AO32_U_0P5 U5 ( .A1 ( in[7] ) , .A2 ( s3 ) , .A3 ( n1 ) , 
    .B1 ( n2 ) , .B2 ( in[1] ) , .X ( N12 ) ) ;
SAEDHVT14_AO32_U_0P5 U6 ( .A1 ( in[0] ) , .A2 ( n2 ) , .A3 ( n1 ) , 
    .B1 ( s3 ) , .B2 ( in[6] ) , .X ( N19 ) ) ;
endmodule


module logic_block ( A , B , s3 , s2 , out ) ;
input  [7:0] A ;
input  [7:0] B ;
input  s3 ;
input  s2 ;
output [7:0] out ;

SAEDHVT14_OAI21_0P5 U1 ( .A1 ( B[2] ) , .A2 ( A[2] ) , .B ( n14 ) , 
    .X ( n15 ) ) ;
SAEDHVT14_OAI21_0P5 U2 ( .A1 ( B[0] ) , .A2 ( n26 ) , .B ( n25 ) , 
    .X ( out[0] ) ) ;
SAEDHVT14_ND2_CDC_0P5 U3 ( .A1 ( s2 ) , .A2 ( s3 ) , .X ( n26 ) ) ;
SAEDHVT14_INV_0P5 U4 ( .A ( s3 ) , .X ( n23 ) ) ;
SAEDHVT14_AOI21_0P5 U5 ( .A1 ( A[4] ) , .A2 ( B[4] ) , .B ( s2 ) , .X ( n1 ) ) ;
SAEDHVT14_EO2_V1_0P75 U6 ( .A1 ( n23 ) , .A2 ( n1 ) , .X ( n2 ) ) ;
SAEDHVT14_OAI21_0P5 U7 ( .A1 ( B[4] ) , .A2 ( A[4] ) , .B ( n2 ) , .X ( n3 ) ) ;
SAEDHVT14_OAI21_0P5 U8 ( .A1 ( B[4] ) , .A2 ( n26 ) , .B ( n3 ) , 
    .X ( out[4] ) ) ;
SAEDHVT14_AOI21_0P5 U9 ( .A1 ( A[7] ) , .A2 ( B[7] ) , .B ( s2 ) , .X ( n4 ) ) ;
SAEDHVT14_EO2_V1_0P75 U10 ( .A1 ( n23 ) , .A2 ( n4 ) , .X ( n5 ) ) ;
SAEDHVT14_OAI21_0P5 U11 ( .A1 ( B[7] ) , .A2 ( A[7] ) , .B ( n5 ) , 
    .X ( n6 ) ) ;
SAEDHVT14_OAI21_0P5 U12 ( .A1 ( B[7] ) , .A2 ( n26 ) , .B ( n6 ) , 
    .X ( out[7] ) ) ;
SAEDHVT14_AOI21_0P5 U13 ( .A1 ( A[3] ) , .A2 ( B[3] ) , .B ( s2 ) , 
    .X ( n7 ) ) ;
SAEDHVT14_EO2_V1_0P75 U14 ( .A1 ( n23 ) , .A2 ( n7 ) , .X ( n8 ) ) ;
SAEDHVT14_OAI21_0P5 U15 ( .A1 ( B[3] ) , .A2 ( A[3] ) , .B ( n8 ) , 
    .X ( n9 ) ) ;
SAEDHVT14_OAI21_0P5 U16 ( .A1 ( B[3] ) , .A2 ( n26 ) , .B ( n9 ) , 
    .X ( out[3] ) ) ;
SAEDHVT14_AOI21_0P5 U17 ( .A1 ( A[5] ) , .A2 ( B[5] ) , .B ( s2 ) , 
    .X ( n10 ) ) ;
SAEDHVT14_EO2_V1_0P75 U18 ( .A1 ( n23 ) , .A2 ( n10 ) , .X ( n11 ) ) ;
SAEDHVT14_OAI21_0P5 U19 ( .A1 ( B[5] ) , .A2 ( A[5] ) , .B ( n11 ) , 
    .X ( n12 ) ) ;
SAEDHVT14_OAI21_0P5 U20 ( .A1 ( B[5] ) , .A2 ( n26 ) , .B ( n12 ) , 
    .X ( out[5] ) ) ;
SAEDHVT14_AOI21_0P5 U21 ( .A1 ( A[2] ) , .A2 ( B[2] ) , .B ( s2 ) , 
    .X ( n13 ) ) ;
SAEDHVT14_EO2_V1_0P75 U22 ( .A1 ( n23 ) , .A2 ( n13 ) , .X ( n14 ) ) ;
SAEDHVT14_OAI21_0P5 U23 ( .A1 ( B[2] ) , .A2 ( n26 ) , .B ( n15 ) , 
    .X ( out[2] ) ) ;
SAEDHVT14_AOI21_0P5 U24 ( .A1 ( A[6] ) , .A2 ( B[6] ) , .B ( s2 ) , 
    .X ( n16 ) ) ;
SAEDHVT14_EO2_V1_0P75 U25 ( .A1 ( n23 ) , .A2 ( n16 ) , .X ( n17 ) ) ;
SAEDHVT14_OAI21_0P5 U26 ( .A1 ( B[6] ) , .A2 ( A[6] ) , .B ( n17 ) , 
    .X ( n18 ) ) ;
SAEDHVT14_OAI21_0P5 U27 ( .A1 ( B[6] ) , .A2 ( n26 ) , .B ( n18 ) , 
    .X ( out[6] ) ) ;
SAEDHVT14_AOI21_0P5 U28 ( .A1 ( A[1] ) , .A2 ( B[1] ) , .B ( s2 ) , 
    .X ( n19 ) ) ;
SAEDHVT14_EO2_V1_0P75 U29 ( .A1 ( n23 ) , .A2 ( n19 ) , .X ( n20 ) ) ;
SAEDHVT14_OAI21_0P5 U30 ( .A1 ( B[1] ) , .A2 ( A[1] ) , .B ( n20 ) , 
    .X ( n21 ) ) ;
SAEDHVT14_OAI21_0P5 U31 ( .A1 ( B[1] ) , .A2 ( n26 ) , .B ( n21 ) , 
    .X ( out[1] ) ) ;
SAEDHVT14_AOI21_0P5 U32 ( .A1 ( A[0] ) , .A2 ( B[0] ) , .B ( s2 ) , 
    .X ( n22 ) ) ;
SAEDHVT14_EO2_V1_0P75 U33 ( .A1 ( n23 ) , .A2 ( n22 ) , .X ( n24 ) ) ;
SAEDHVT14_OAI21_0P5 U34 ( .A1 ( B[0] ) , .A2 ( A[0] ) , .B ( n24 ) , 
    .X ( n25 ) ) ;
endmodule


module comparator_block ( A , B , aeqb , altb , agtb ) ;
input  [7:0] A ;
input  [7:0] B ;
output aeqb ;
output altb ;
output agtb ;

SAEDHVT14_OAI21_0P5 U1 ( .A1 ( n26 ) , .A2 ( n12 ) , .B ( n27 ) , .X ( n13 ) ) ;
SAEDHVT14_OR2_0P5 U2 ( .A1 ( A[2] ) , .A2 ( n14 ) , .X ( n16 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U3 ( .A1 ( n15 ) , .A2 ( B[3] ) , .X ( n11 ) ) ;
SAEDHVT14_OAI21_0P5 U4 ( .A1 ( B[3] ) , .A2 ( n15 ) , .B ( n31 ) , .X ( n5 ) ) ;
SAEDHVT14_OR4_1 U5 ( .A1 ( n29 ) , .A2 ( n6 ) , .A3 ( n5 ) , .A4 ( n24 ) , 
    .X ( n7 ) ) ;
SAEDHVT14_INV_0P5 U6 ( .A ( A[7] ) , .X ( n39 ) ) ;
SAEDHVT14_OR4_1 U7 ( .A1 ( n36 ) , .A2 ( n28 ) , .A3 ( n8 ) , .A4 ( n7 ) , 
    .X ( n9 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U8 ( .A1 ( n38 ) , .A2 ( n12 ) , .X ( n10 ) ) ;
SAEDHVT14_NR4_0P75 U9 ( .A1 ( n44 ) , .A2 ( n26 ) , .A3 ( n10 ) , .A4 ( n9 ) , 
    .X ( aeqb ) ) ;
SAEDHVT14_INV_0P5 U10 ( .A ( B[5] ) , .X ( n1 ) ) ;
SAEDHVT14_AN2_MM_0P5 U11 ( .A1 ( n1 ) , .A2 ( A[5] ) , .X ( n44 ) ) ;
SAEDHVT14_INV_0P5 U12 ( .A ( A[1] ) , .X ( n3 ) ) ;
SAEDHVT14_NR2_MM_0P5 U13 ( .A1 ( B[1] ) , .A2 ( n3 ) , .X ( n26 ) ) ;
SAEDHVT14_ND2B_U_0P5 U14 ( .A ( B[4] ) , .B ( A[4] ) , .X ( n38 ) ) ;
SAEDHVT14_INV_0P5 U15 ( .A ( A[0] ) , .X ( n2 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U16 ( .A1 ( B[0] ) , .A2 ( n2 ) , .X ( n12 ) ) ;
SAEDHVT14_NR2_MM_0P5 U17 ( .A1 ( A[5] ) , .A2 ( n1 ) , .X ( n36 ) ) ;
SAEDHVT14_NR2_MM_0P5 U18 ( .A1 ( B[0] ) , .A2 ( n2 ) , .X ( n28 ) ) ;
SAEDHVT14_ND2B_U_0P5 U19 ( .A ( A[4] ) , .B ( B[4] ) , .X ( n33 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U20 ( .A1 ( n3 ) , .A2 ( B[1] ) , .X ( n27 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U21 ( .A1 ( n33 ) , .A2 ( n27 ) , .X ( n8 ) ) ;
SAEDHVT14_INV_0P5 U22 ( .A ( B[2] ) , .X ( n14 ) ) ;
SAEDHVT14_INV_0P5 U23 ( .A ( A[3] ) , .X ( n15 ) ) ;
SAEDHVT14_OAI21_0P5 U24 ( .A1 ( A[2] ) , .A2 ( n14 ) , .B ( n11 ) , 
    .X ( n29 ) ) ;
SAEDHVT14_INV_0P5 U25 ( .A ( B[6] ) , .X ( n4 ) ) ;
SAEDHVT14_NR2_MM_0P5 U26 ( .A1 ( A[6] ) , .A2 ( n4 ) , .X ( n21 ) ) ;
SAEDHVT14_AOI21_0P5 U27 ( .A1 ( B[7] ) , .A2 ( n39 ) , .B ( n21 ) , 
    .X ( n45 ) ) ;
SAEDHVT14_INV_0P5 U28 ( .A ( n45 ) , .X ( n6 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U29 ( .A1 ( n14 ) , .A2 ( A[2] ) , .X ( n31 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U30 ( .A1 ( n4 ) , .A2 ( A[6] ) , .X ( n40 ) ) ;
SAEDHVT14_OAI21_0P5 U31 ( .A1 ( B[7] ) , .A2 ( n39 ) , .B ( n40 ) , 
    .X ( n24 ) ) ;
SAEDHVT14_INV_0P5 U32 ( .A ( n11 ) , .X ( n32 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U33 ( .A1 ( n13 ) , .A2 ( n31 ) , .X ( n17 ) ) ;
SAEDHVT14_NR2_MM_0P5 U34 ( .A1 ( B[3] ) , .A2 ( n15 ) , .X ( n35 ) ) ;
SAEDHVT14_AOI21_0P5 U35 ( .A1 ( n17 ) , .A2 ( n16 ) , .B ( n35 ) , 
    .X ( n18 ) ) ;
SAEDHVT14_OAI21_0P5 U36 ( .A1 ( n32 ) , .A2 ( n18 ) , .B ( n38 ) , 
    .X ( n19 ) ) ;
SAEDHVT14_AOI21_0P5 U37 ( .A1 ( n19 ) , .A2 ( n33 ) , .B ( n44 ) , 
    .X ( n20 ) ) ;
SAEDHVT14_NR2_MM_0P5 U38 ( .A1 ( n20 ) , .A2 ( n36 ) , .X ( n25 ) ) ;
SAEDHVT14_AN2_MM_0P5 U39 ( .A1 ( n21 ) , .A2 ( n39 ) , .X ( n22 ) ) ;
SAEDHVT14_OAI22_0P5 U40 ( .A1 ( n22 ) , .A2 ( B[7] ) , .B1 ( n21 ) , 
    .B2 ( n39 ) , .X ( n23 ) ) ;
SAEDHVT14_OAI21_0P5 U41 ( .A1 ( n25 ) , .A2 ( n24 ) , .B ( n23 ) , 
    .X ( altb ) ) ;
SAEDHVT14_AOI21_0P5 U42 ( .A1 ( n28 ) , .A2 ( n27 ) , .B ( n26 ) , 
    .X ( n30 ) ) ;
SAEDHVT14_OAI22_0P5 U43 ( .A1 ( n32 ) , .A2 ( n31 ) , .B1 ( n30 ) , 
    .B2 ( n29 ) , .X ( n34 ) ) ;
SAEDHVT14_OAI21_0P5 U44 ( .A1 ( n35 ) , .A2 ( n34 ) , .B ( n33 ) , 
    .X ( n37 ) ) ;
SAEDHVT14_AOI21_0P5 U45 ( .A1 ( n38 ) , .A2 ( n37 ) , .B ( n36 ) , 
    .X ( n43 ) ) ;
SAEDHVT14_AN2_MM_0P5 U46 ( .A1 ( n39 ) , .A2 ( B[7] ) , .X ( n41 ) ) ;
SAEDHVT14_OAI22_0P5 U47 ( .A1 ( n41 ) , .A2 ( n40 ) , .B1 ( B[7] ) , 
    .B2 ( n39 ) , .X ( n42 ) ) ;
SAEDHVT14_AO221_0P5 U48 ( .A1 ( n45 ) , .A2 ( n44 ) , .B1 ( n45 ) , 
    .B2 ( n43 ) , .C ( n42 ) , .X ( agtb ) ) ;
endmodule


module mux_0 ( i0 , i1 , s , y ) ;
input  [7:0] i0 ;
input  [7:0] i1 ;
input  s ;
output [7:0] y ;

SAEDHVT14_MUX2_U_0P5 U1 ( .D0 ( i0[2] ) , .D1 ( i1[2] ) , .S ( s ) , 
    .X ( y[2] ) ) ;
SAEDHVT14_MUX2_U_0P5 U2 ( .D0 ( i0[4] ) , .D1 ( i1[4] ) , .S ( s ) , 
    .X ( y[4] ) ) ;
SAEDHVT14_MUX2_U_0P5 U3 ( .D0 ( i0[7] ) , .D1 ( i1[7] ) , .S ( s ) , 
    .X ( y[7] ) ) ;
SAEDHVT14_MUX2_U_0P5 U4 ( .D0 ( i0[3] ) , .D1 ( i1[3] ) , .S ( s ) , 
    .X ( y[3] ) ) ;
SAEDHVT14_MUX2_U_0P5 U5 ( .D0 ( i0[5] ) , .D1 ( i1[5] ) , .S ( s ) , 
    .X ( y[5] ) ) ;
SAEDHVT14_MUX2_U_0P5 U6 ( .D0 ( i0[6] ) , .D1 ( i1[6] ) , .S ( s ) , 
    .X ( y[6] ) ) ;
SAEDHVT14_MUX2_U_0P5 U7 ( .D0 ( i0[1] ) , .D1 ( i1[1] ) , .S ( s ) , 
    .X ( y[1] ) ) ;
SAEDHVT14_MUX2_U_0P5 U8 ( .D0 ( i0[0] ) , .D1 ( i1[0] ) , .S ( s ) , 
    .X ( y[0] ) ) ;
endmodule


module fa_0 ( s , cout , a , b , cin ) ;
output s ;
output cout ;
input  a ;
input  b ;
input  cin ;

SAEDHVT14_ADDF_V1_0P5 U1 ( .A ( b ) , .B ( a ) , .CI ( cin ) , .CO ( cout ) , 
    .S ( s ) ) ;
endmodule


module fa_1 ( s , cout , a , b , cin ) ;
output s ;
output cout ;
input  a ;
input  b ;
input  cin ;

SAEDHVT14_ADDF_V1_0P5 U1 ( .A ( b ) , .B ( a ) , .CI ( cin ) , .CO ( cout ) , 
    .S ( s ) ) ;
endmodule


module fa_2 ( s , cout , a , b , cin ) ;
output s ;
output cout ;
input  a ;
input  b ;
input  cin ;

SAEDHVT14_ADDF_V1_0P5 U1 ( .A ( b ) , .B ( a ) , .CI ( cin ) , .CO ( cout ) , 
    .S ( s ) ) ;
endmodule


module fa_3 ( s , cout , a , b , cin ) ;
output s ;
output cout ;
input  a ;
input  b ;
input  cin ;

SAEDHVT14_ADDF_V1_0P5 U1 ( .A ( b ) , .B ( a ) , .CI ( cin ) , .CO ( cout ) , 
    .S ( s ) ) ;
endmodule


module fa_4 ( s , cout , a , b , cin ) ;
output s ;
output cout ;
input  a ;
input  b ;
input  cin ;

SAEDHVT14_ADDF_V1_0P5 U1 ( .A ( b ) , .B ( a ) , .CI ( cin ) , .CO ( cout ) , 
    .S ( s ) ) ;
endmodule


module fa_5 ( s , cout , a , b , cin ) ;
output s ;
output cout ;
input  a ;
input  b ;
input  cin ;

SAEDHVT14_ADDF_V1_0P5 U1 ( .A ( b ) , .B ( a ) , .CI ( cin ) , .CO ( cout ) , 
    .S ( s ) ) ;
endmodule


module fa_6 ( s , cout , a , b , cin ) ;
output s ;
output cout ;
input  a ;
input  b ;
input  cin ;

SAEDLVT14_ADDF_V1_0P5 U1 ( .A ( b ) , .B ( a ) , .CI ( cin ) , .CO ( cout ) , 
    .S ( s ) ) ;
endmodule


module ha ( s , c , a , b ) ;
output s ;
output c ;
input  a ;
input  b ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( c ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( c ) , .X ( s ) ) ;
endmodule


module mux_1 ( i0 , i1 , s , y ) ;
input  [7:0] i0 ;
input  [7:0] i1 ;
input  s ;
output [7:0] y ;

SAEDHVT14_INV_0P5 U2 ( .A ( s ) , .X ( n2 ) ) ;
SAEDHVT14_MUXI2_U_0P5 U3 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[7] ) , 
    .X ( y[7] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U4 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[6] ) , 
    .X ( y[6] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U5 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[5] ) , 
    .X ( y[5] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U6 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[4] ) , 
    .X ( y[4] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U7 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[3] ) , 
    .X ( y[3] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U8 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[2] ) , 
    .X ( y[2] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U9 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[1] ) , 
    .X ( y[1] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U10 ( .D0 ( n2 ) , .D1 ( s ) , .S ( i0[0] ) , 
    .X ( y[0] ) ) ;
endmodule


module arith_block ( a , b , s3 , s2 , f , z , c , v , agtb , altb , aeqb ) ;
input  [7:0] a ;
input  [7:0] b ;
input  s3 ;
input  s2 ;
output [7:0] f ;
output z ;
output c ;
output v ;
output agtb ;
output altb ;
output aeqb ;

wire [7:0] m1out ;
wire [7:0] sum1 ;
wire [7:0] sum ;
wire [7:1] cp ;

mux_1 m1 ( .i0 ( b ) , .s ( s3 ) , .y ( m1out ) ) ;
ha h1 ( .s ( sum[0] ) , .c ( cp[1] ) , .a ( a[0] ) , .b ( sum1[0] ) ) ;
fa_6 f1 ( .s ( sum[1] ) , .cout ( cp[2] ) , .a ( a[1] ) , .b ( sum1[1] ) , 
    .cin ( cp[1] ) ) ;
fa_5 f2 ( .s ( sum[2] ) , .cout ( cp[3] ) , .a ( a[2] ) , .b ( sum1[2] ) , 
    .cin ( cp[2] ) ) ;
fa_4 f3 ( .s ( sum[3] ) , .cout ( cp[4] ) , .a ( a[3] ) , .b ( sum1[3] ) , 
    .cin ( cp[3] ) ) ;
fa_3 f4 ( .s ( sum[4] ) , .cout ( cp[5] ) , .a ( a[4] ) , .b ( sum1[4] ) , 
    .cin ( cp[4] ) ) ;
fa_2 f5 ( .s ( sum[5] ) , .cout ( cp[6] ) , .a ( a[5] ) , .b ( sum1[5] ) , 
    .cin ( cp[5] ) ) ;
fa_1 f6 ( .s ( sum[6] ) , .cout ( cp[7] ) , .a ( a[6] ) , .b ( sum1[6] ) , 
    .cin ( cp[6] ) ) ;
fa_0 f7 ( .s ( sum[7] ) , .cout ( c ) , .a ( a[7] ) , .b ( sum1[7] ) , 
    .cin ( cp[7] ) ) ;
mux_0 m2 ( .i0 ( sum ) , .i1 ( sum1 ) , .s ( s2 ) , .y ( f ) ) ;
comparator_block cb ( .A ( a ) , .B ( b ) , .aeqb ( aeqb ) , .altb ( altb ) , 
    .agtb ( agtb ) ) ;
SAEDHVT14_OR4_1 U2 ( .A1 ( sum[3] ) , .A2 ( sum[2] ) , .A3 ( sum[0] ) , 
    .A4 ( sum[1] ) , .X ( n3 ) ) ;
SAEDHVT14_OR4_1 U3 ( .A1 ( sum[6] ) , .A2 ( sum[5] ) , .A3 ( sum[4] ) , 
    .A4 ( sum[7] ) , .X ( n2 ) ) ;
SAEDHVT14_NR2_MM_0P5 U4 ( .A1 ( n3 ) , .A2 ( n2 ) , .X ( z ) ) ;
SAEDHVT14_EO2_V1_0P75 U5 ( .A1 ( cp[7] ) , .A2 ( c ) , .X ( v ) ) ;
SAEDHVT14_AN2_MM_0P5 U6 ( .A1 ( m1out[0] ) , .A2 ( s3 ) , .X ( n8 ) ) ;
SAEDHVT14_ND2_CDC_0P5 U7 ( .A1 ( n8 ) , .A2 ( m1out[1] ) , .X ( n7 ) ) ;
SAEDHVT14_INV_0P5 U8 ( .A ( m1out[2] ) , .X ( n4 ) ) ;
SAEDHVT14_AN4_0P75 U9 ( .A1 ( m1out[0] ) , .A2 ( s3 ) , .A3 ( m1out[1] ) , 
    .A4 ( m1out[2] ) , .X ( n10 ) ) ;
SAEDHVT14_AOI21_0P5 U10 ( .A1 ( n7 ) , .A2 ( n4 ) , .B ( n10 ) , 
    .X ( sum1[2] ) ) ;
SAEDHVT14_ND2_CDC_0P5 U11 ( .A1 ( n10 ) , .A2 ( m1out[3] ) , .X ( n9 ) ) ;
SAEDHVT14_INV_0P5 U12 ( .A ( m1out[4] ) , .X ( n5 ) ) ;
SAEDHVT14_NR2_MM_0P5 U13 ( .A1 ( n9 ) , .A2 ( n5 ) , .X ( n12 ) ) ;
SAEDHVT14_AOI21_0P5 U14 ( .A1 ( n9 ) , .A2 ( n5 ) , .B ( n12 ) , 
    .X ( sum1[4] ) ) ;
SAEDHVT14_ND2_CDC_0P5 U15 ( .A1 ( n12 ) , .A2 ( m1out[5] ) , .X ( n11 ) ) ;
SAEDHVT14_INV_0P5 U16 ( .A ( m1out[6] ) , .X ( n6 ) ) ;
SAEDHVT14_NR2_MM_0P5 U17 ( .A1 ( n11 ) , .A2 ( n6 ) , .X ( n13 ) ) ;
SAEDHVT14_AOI21_0P5 U18 ( .A1 ( n11 ) , .A2 ( n6 ) , .B ( n13 ) , 
    .X ( sum1[6] ) ) ;
SAEDHVT14_OA21B_1 U19 ( .A1 ( m1out[0] ) , .A2 ( s3 ) , .B ( n8 ) , 
    .X ( sum1[0] ) ) ;
SAEDHVT14_OA21_1 U20 ( .A1 ( n8 ) , .A2 ( m1out[1] ) , .B ( n7 ) , 
    .X ( sum1[1] ) ) ;
SAEDHVT14_OA21_1 U21 ( .A1 ( n10 ) , .A2 ( m1out[3] ) , .B ( n9 ) , 
    .X ( sum1[3] ) ) ;
SAEDHVT14_OA21_1 U22 ( .A1 ( n12 ) , .A2 ( m1out[5] ) , .B ( n11 ) , 
    .X ( sum1[5] ) ) ;
SAEDHVT14_EO2_V1_0P75 U23 ( .A1 ( n13 ) , .A2 ( m1out[7] ) , .X ( sum1[7] ) ) ;
endmodule


module alu ( f , z , c , v , agtb , altb , aeqb , a , b , s , clk , rst ) ;
output [7:0] f ;
output z ;
output c ;
output v ;
output agtb ;
output altb ;
output aeqb ;
input  [7:0] a ;
input  [7:0] b ;
input  [3:0] s ;
input  clk ;
input  rst ;

wire [7:0] a_r ;
wire [7:0] b_r ;
wire [3:2] s_r ;
wire [7:0] a_out ;
wire [7:0] l_out ;
wire [7:0] s_out ;
wire [7:0] c1_out ;
wire [7:0] c2_out ;

arith_block ab ( .a ( a_r ) , .b ( b_r ) , .s3 ( s_r[3] ) , .s2 ( s_r[2] ) , 
    .f ( a_out ) , .z ( z ) , .c ( c ) , .v ( v ) , .agtb ( agtb ) , 
    .altb ( altb ) , .aeqb ( aeqb ) ) ;
logic_block lb ( .A ( a_r ) , .B ( b_r ) , .s3 ( s_r[3] ) , .s2 ( s_r[2] ) , 
    .out ( l_out ) ) ;
shifter_block sb ( .clk ( ctsbuf_net_10 ) , .in ( a_r ) , .s3 ( s_r[3] ) , 
    .s2 ( s_r[2] ) , .sh ( s_out ) , .rst_BAR ( n9 ) ) ;
mux_3 mc1 ( .i0 ( l_out ) , .i1 ( s_out ) , .s ( s[1] ) , .y ( c1_out ) ) ;
mux_2 mc2 ( .i0 ( a_out ) , .i1 ( c1_out ) , .s ( s[0] ) , .y ( c2_out ) ) ;
reg_block rb ( .clk ( ctsbuf_net_10 ) , .in ( c2_out ) , .out ( f ) , 
    .rst_BAR ( n8 ) ) ;
SAEDHVT14_INV_0P5 U10 ( .A ( rst ) , .X ( n8 ) ) ;
SAEDHVT14_INV_0P5 U11 ( .A ( rst ) , .X ( n9 ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_3_ ( .D ( a[3] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( a_r[3] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_7_ ( .D ( b[7] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n9 ) , .Q ( b_r[7] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_6_ ( .D ( b[6] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( b_r[6] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_5_ ( .D ( b[5] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n9 ) , .Q ( b_r[5] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_4_ ( .D ( b[4] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( b_r[4] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_3_ ( .D ( b[3] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n9 ) , .Q ( b_r[3] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_2_ ( .D ( b[2] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( b_r[2] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_1_ ( .D ( b[1] ) , .CK ( ctsbuf_net_21 ) , 
    .RD ( n8 ) , .Q ( b_r[1] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_0_ ( .D ( b[0] ) , .CK ( ctsbuf_net_21 ) , 
    .RD ( n9 ) , .Q ( b_r[0] ) ) ;
SAEDLVT14_FDPRBQ_V2_1 s_r_reg_3_ ( .D ( s[3] ) , .CK ( ctsbuf_net_21 ) , 
    .RD ( n8 ) , .Q ( s_r[3] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 s_r_reg_2_ ( .D ( s[2] ) , .CK ( ctsbuf_net_21 ) , 
    .RD ( n9 ) , .Q ( s_r[2] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_7_ ( .D ( a[7] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( a_r[7] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_6_ ( .D ( a[6] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( a_r[6] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_5_ ( .D ( a[5] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( a_r[5] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_4_ ( .D ( a[4] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n9 ) , .Q ( a_r[4] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_2_ ( .D ( a[2] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( a_r[2] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_0_ ( .D ( a[0] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( a_r[0] ) ) ;
SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_1_ ( .D ( a[1] ) , .CK ( ctsbuf_net_10 ) , 
    .RD ( n8 ) , .Q ( a_r[1] ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_116 ( .A ( clk ) , .X ( cts0 ) ) ;
SAEDRVT14_BUF_S_16 cts_buf_8584 ( .A ( cts1 ) , .X ( ctsbuf_net_10 ) ) ;
SAEDRVT14_BUF_S_2 cts_buf_8685 ( .A ( cts1 ) , .X ( ctsbuf_net_21 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_145 ( .A ( cts3 ) , .X ( cts1 ) ) ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!0 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!1 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!2 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!3 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!4 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!5 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!6 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!7 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!8 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!9 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!10 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!11 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!12 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!13 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!14 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!15 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!16 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!17 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!18 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!19 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!20 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!21 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!22 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!23 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!24 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!25 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!26 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!27 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!28 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!29 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!30 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!31 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!32 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!33 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!34 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!35 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!36 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!37 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!38 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!39 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!40 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!41 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!42 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!43 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!44 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!45 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!46 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!47 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!48 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!49 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!50 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!51 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!52 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!53 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!54 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!55 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!56 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!57 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!58 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!59 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!60 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!61 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!62 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!63 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!64 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!65 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!66 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!67 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!68 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!69 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!70 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!71 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!72 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!73 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!74 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!75 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!76 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!77 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!78 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!79 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!80 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!81 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!82 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!83 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!84 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!85 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!86 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!87 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!88 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!89 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!90 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!91 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!92 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!93 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!94 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!95 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!96 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!97 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!98 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!99 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!100 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!101 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!102 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!103 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!104 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!105 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!106 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!107 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!108 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!109 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!110 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!111 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!112 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!113 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!114 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!115 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!116 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!117 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!118 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!119 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!120 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!121 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!122 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!123 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!124 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!125 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!126 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!127 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!128 () ;
SAEDRVT14_BUF_S_2 cts_trgdly_146 ( .A ( cts0 ) , .X ( cts2 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_147 ( .A ( cts5 ) , .X ( cts3 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_148 ( .A ( cts2 ) , .X ( cts4 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_149 ( .A ( cts7 ) , .X ( cts5 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_150 ( .A ( cts4 ) , .X ( cts6 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_151 ( .A ( cts9 ) , .X ( cts7 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_152 ( .A ( cts6 ) , .X ( cts8 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_153 ( .A ( cts11 ) , .X ( cts9 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_154 ( .A ( cts8 ) , .X ( cts10 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_155 ( .A ( cts13 ) , .X ( cts11 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_156 ( .A ( cts10 ) , .X ( cts12 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_157 ( .A ( cts15 ) , .X ( cts13 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_158 ( .A ( cts12 ) , .X ( cts14 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_159 ( .A ( cts17 ) , .X ( cts15 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_160 ( .A ( cts14 ) , .X ( cts16 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_161 ( .A ( cts19 ) , .X ( cts17 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_162 ( .A ( cts16 ) , .X ( cts18 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_163 ( .A ( cts23 ) , .X ( cts19 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_164 ( .A ( cts18 ) , .X ( cts20 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_165 ( .A ( cts20 ) , .X ( cts21 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_167 ( .A ( cts21 ) , .X ( cts22 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_169 ( .A ( cts25 ) , .X ( cts23 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_170 ( .A ( cts22 ) , .X ( cts24 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_171 ( .A ( cts27 ) , .X ( cts25 ) ) ;
SAEDRVT14_BUF_S_2 cts_trgdly_172 ( .A ( cts24 ) , .X ( cts26 ) ) ;
SAEDRVT14_BUF_S_8 cts_trgdly_173 ( .A ( cts28 ) , .X ( cts27 ) ) ;
SAEDRVT14_BUF_S_8 cts_trgdly_174 ( .A ( cts26 ) , .X ( cts28 ) ) ;
endmodule


