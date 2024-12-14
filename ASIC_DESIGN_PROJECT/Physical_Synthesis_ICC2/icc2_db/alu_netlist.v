/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon Apr 11 11:37:47 2022
/////////////////////////////////////////////////////////////


module alu ( f, z, c, v, agtb, altb, aeqb, a, b, s, clk, rst );
  output [7:0] f;
  input [7:0] a;
  input [7:0] b;
  input [3:0] s;
  input clk, rst;
  output z, c, v, agtb, altb, aeqb;
  wire   n160, n161, intadd_0_B_5_, intadd_0_B_4_, intadd_0_B_3_,
         intadd_0_B_2_, intadd_0_B_1_, intadd_0_B_0_, intadd_0_CI,
         intadd_0_SUM_5_, intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_,
         intadd_0_SUM_1_, intadd_0_SUM_0_, intadd_0_n6, intadd_0_n5,
         intadd_0_n4, intadd_0_n3, intadd_0_n2, intadd_0_n1, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n202, n203, n204, n205, n206, n207, n208,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306;
  wire   [7:0] a_r;
  wire   [7:0] b_r;
  wire   [3:2] s_r;
  wire   [7:0] s_out;
  wire   [7:0] c2_out;

  SAEDHVT14_ADDF_V1_0P5 intadd_0_U6 ( .A(intadd_0_n6), .B(a_r[2]), .CI(
        intadd_0_B_1_), .CO(intadd_0_n5), .S(intadd_0_SUM_1_) );
  SAEDHVT14_ADDF_V1_0P5 intadd_0_U5 ( .A(intadd_0_n5), .B(a_r[3]), .CI(
        intadd_0_B_2_), .CO(intadd_0_n4), .S(intadd_0_SUM_2_) );
  SAEDHVT14_ADDF_V1_0P5 intadd_0_U4 ( .A(intadd_0_n4), .B(a_r[4]), .CI(
        intadd_0_B_3_), .CO(intadd_0_n3), .S(intadd_0_SUM_3_) );
  SAEDHVT14_ADDF_V1_0P5 intadd_0_U3 ( .A(intadd_0_n3), .B(a_r[5]), .CI(
        intadd_0_B_4_), .CO(intadd_0_n2), .S(intadd_0_SUM_4_) );
  SAEDHVT14_ADDF_V1_0P5 intadd_0_U2 ( .A(intadd_0_n2), .B(a_r[6]), .CI(
        intadd_0_B_5_), .CO(intadd_0_n1), .S(intadd_0_SUM_5_) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 s_r_reg_3_ ( .D(s[3]), .CK(clk), .RD(n304), .Q(
        s_r[3]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_1_ ( .D(a[1]), .CK(clk), .RD(n304), .Q(
        a_r[1]) );
  SAEDHVT14_FSDPRBQ_V2LP_0P5 sb_sh_reg_4_ ( .D(a_r[3]), .SI(a_r[5]), .SE(n306), 
        .CK(clk), .RD(n304), .Q(s_out[4]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_7_ ( .D(b[7]), .CK(clk), .RD(n304), .Q(
        b_r[7]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_6_ ( .D(b[6]), .CK(clk), .RD(n304), .Q(
        b_r[6]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_5_ ( .D(b[5]), .CK(clk), .RD(n304), .Q(
        b_r[5]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_4_ ( .D(b[4]), .CK(clk), .RD(n304), .Q(
        b_r[4]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_3_ ( .D(b[3]), .CK(clk), .RD(n304), .Q(
        b_r[3]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_2_ ( .D(b[2]), .CK(clk), .RD(n304), .Q(
        b_r[2]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_1_ ( .D(b[1]), .CK(clk), .RD(n304), .Q(
        b_r[1]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 b_r_reg_0_ ( .D(b[0]), .CK(clk), .RD(n304), .Q(
        b_r[0]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_7_ ( .D(a[7]), .CK(clk), .RD(n304), .Q(
        a_r[7]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_6_ ( .D(a[6]), .CK(clk), .RD(n305), .Q(
        a_r[6]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_5_ ( .D(a[5]), .CK(clk), .RD(n305), .Q(
        a_r[5]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_4_ ( .D(a[4]), .CK(clk), .RD(n305), .Q(
        a_r[4]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_3_ ( .D(a[3]), .CK(clk), .RD(n305), .Q(
        a_r[3]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_2_ ( .D(a[2]), .CK(clk), .RD(n305), .Q(
        a_r[2]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 a_r_reg_0_ ( .D(a[0]), .CK(clk), .RD(n304), .Q(
        a_r[0]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 sb_sh_reg_0_ ( .D(n161), .CK(clk), .RD(n304), .Q(
        s_out[0]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 sb_sh_reg_7_ ( .D(n160), .CK(clk), .RD(n305), .Q(
        s_out[7]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 s_r_reg_2_ ( .D(s[2]), .CK(clk), .RD(n304), .Q(
        s_r[2]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_0_ ( .D(c2_out[0]), .CK(clk), .RD(n305), 
        .Q(f[0]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_1_ ( .D(c2_out[1]), .CK(clk), .RD(n305), 
        .Q(f[1]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_2_ ( .D(c2_out[2]), .CK(clk), .RD(n305), 
        .Q(f[2]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_3_ ( .D(c2_out[3]), .CK(clk), .RD(n305), 
        .Q(f[3]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_4_ ( .D(c2_out[4]), .CK(clk), .RD(n305), 
        .Q(f[4]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_5_ ( .D(c2_out[5]), .CK(clk), .RD(n305), 
        .Q(f[5]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_6_ ( .D(c2_out[6]), .CK(clk), .RD(n305), 
        .Q(f[6]) );
  SAEDHVT14_FDPRBQ_V2LP_0P5 rb_out_reg_7_ ( .D(c2_out[7]), .CK(clk), .RD(n305), 
        .Q(f[7]) );
  SAEDHVT14_FSDPRBQ_V2LP_0P5 sb_sh_reg_6_ ( .D(a_r[5]), .SI(a_r[7]), .SE(n306), 
        .CK(clk), .RD(n305), .Q(s_out[6]) );
  SAEDHVT14_FSDPRBQ_V2LP_0P5 sb_sh_reg_5_ ( .D(a_r[4]), .SI(a_r[6]), .SE(n306), 
        .CK(clk), .RD(n304), .Q(s_out[5]) );
  SAEDHVT14_FSDPRBQ_V2LP_0P5 sb_sh_reg_3_ ( .D(a_r[2]), .SI(a_r[4]), .SE(n306), 
        .CK(clk), .RD(n304), .Q(s_out[3]) );
  SAEDHVT14_FSDPRBQ_V2LP_0P5 sb_sh_reg_2_ ( .D(a_r[1]), .SI(a_r[3]), .SE(n306), 
        .CK(clk), .RD(n304), .Q(s_out[2]) );
  SAEDHVT14_FSDPRBQ_V2LP_0P5 sb_sh_reg_1_ ( .D(a_r[0]), .SI(a_r[2]), .SE(n306), 
        .CK(clk), .RD(n304), .Q(s_out[1]) );
  SAEDHVT14_ADDF_V1_1 intadd_0_U7 ( .A(intadd_0_CI), .B(a_r[1]), .CI(
        intadd_0_B_0_), .CO(intadd_0_n6), .S(intadd_0_SUM_0_) );
  SAEDLVT14_TIE1_4 U176 ( .X(n162) );
  SAEDHVT14_AOI21_0P5 U177 ( .A1(n199), .A2(n198), .B(n220), .X(intadd_0_B_4_)
         );
  SAEDHVT14_AOI21_0P5 U178 ( .A1(n177), .A2(n176), .B(n197), .X(intadd_0_B_2_)
         );
  SAEDHVT14_AN4_0P75 U179 ( .A1(s_r[3]), .A2(n175), .A3(n178), .A4(n232), .X(
        n197) );
  SAEDHVT14_INV_0P75 U180 ( .A(s_r[3]), .X(n306) );
  SAEDHVT14_AN4_1 U181 ( .A1(n299), .A2(n265), .A3(n264), .A4(n263), .X(z) );
  SAEDHVT14_AN4_0P75 U182 ( .A1(n262), .A2(n261), .A3(n260), .A4(n259), .X(
        n265) );
  SAEDHVT14_EO2_V1_0P75 U183 ( .A1(intadd_0_n1), .A2(c), .X(v) );
  SAEDHVT14_ADDF_V1_2 U184 ( .A(a_r[7]), .B(n216), .CI(intadd_0_n1), .CO(c), 
        .S(n209) );
  SAEDHVT14_AOI21_0P5 U185 ( .A1(n220), .A2(n223), .B(n306), .X(n208) );
  SAEDHVT14_ND2_CDC_0P5 U186 ( .A1(a_r[1]), .A2(n273), .X(n240) );
  SAEDHVT14_ND2_CDC_0P5 U187 ( .A1(b_r[3]), .A2(n185), .X(n244) );
  SAEDHVT14_INV_0P5 U188 ( .A(b_r[0]), .X(n278) );
  SAEDHVT14_INV_0P5 U189 ( .A(b_r[3]), .X(n178) );
  SAEDHVT14_INV_0P5 U190 ( .A(b_r[6]), .X(n223) );
  SAEDHVT14_INV_0P5 U191 ( .A(b_r[2]), .X(n232) );
  SAEDHVT14_INV_0P5 U192 ( .A(b_r[4]), .X(n196) );
  SAEDHVT14_MUXI2_U_0P5 U193 ( .D0(n232), .D1(b_r[2]), .S(n164), .X(
        intadd_0_B_1_) );
  SAEDHVT14_INV_0P5 U194 ( .A(b_r[7]), .X(n210) );
  SAEDHVT14_INV_0P5 U195 ( .A(b_r[5]), .X(n200) );
  SAEDHVT14_ND2_CDC_0P5 U196 ( .A1(n197), .A2(n196), .X(n198) );
  SAEDHVT14_MUXI2_U_0P5 U197 ( .D0(n273), .D1(b_r[1]), .S(n163), .X(
        intadd_0_B_0_) );
  SAEDHVT14_AOI21_0P5 U198 ( .A1(n234), .A2(n244), .B(n251), .X(n236) );
  SAEDHVT14_INV_0P5 U199 ( .A(n209), .X(n261) );
  SAEDHVT14_INV_0P5 U200 ( .A(intadd_0_SUM_4_), .X(n263) );
  SAEDHVT14_INV_0P5 U201 ( .A(intadd_0_SUM_3_), .X(n264) );
  SAEDHVT14_INV_0P5 U202 ( .A(intadd_0_SUM_2_), .X(n259) );
  SAEDHVT14_INV_0P5 U203 ( .A(intadd_0_SUM_1_), .X(n260) );
  SAEDHVT14_MUXI2_U_0P5 U204 ( .D0(n210), .D1(b_r[7]), .S(n208), .X(n216) );
  SAEDHVT14_INV_0P5 U205 ( .A(a_r[6]), .X(n230) );
  SAEDHVT14_INV_0P5 U206 ( .A(intadd_0_SUM_5_), .X(n222) );
  SAEDHVT14_MUXI2_U_0P5 U207 ( .D0(s_r[3]), .D1(n306), .S(n221), .X(
        intadd_0_B_5_) );
  SAEDHVT14_MUXI2_U_0P5 U208 ( .D0(b_r[6]), .D1(n223), .S(n220), .X(n221) );
  SAEDHVT14_INV_0P5 U209 ( .A(a_r[5]), .X(n235) );
  SAEDHVT14_INV_0P5 U210 ( .A(a_r[4]), .X(n194) );
  SAEDHVT14_MUXI2_U_0P5 U211 ( .D0(n196), .D1(b_r[4]), .S(n187), .X(
        intadd_0_B_3_) );
  SAEDHVT14_INV_0P5 U212 ( .A(a_r[3]), .X(n185) );
  SAEDHVT14_OR4_1 U213 ( .A1(b_r[1]), .A2(b_r[0]), .A3(b_r[2]), .A4(n306), .X(
        n176) );
  SAEDHVT14_INV_0P5 U214 ( .A(a_r[1]), .X(n267) );
  SAEDHVT14_INV_0P5 U215 ( .A(b_r[1]), .X(n273) );
  SAEDHVT14_INV_0P5 U216 ( .A(intadd_0_SUM_0_), .X(n271) );
  SAEDHVT14_INV_0P5 U217 ( .A(a_r[0]), .X(n289) );
  SAEDHVT14_AO32_U_0P5 U218 ( .A1(n238), .A2(n237), .A3(n249), .B1(n162), .B2(
        n257), .X(n239) );
  SAEDHVT14_AOI21_0P5 U219 ( .A1(n254), .A2(n253), .B(n252), .X(n256) );
  SAEDHVT14_AOI21_0P5 U220 ( .A1(n248), .A2(n247), .B(n246), .X(n250) );
  SAEDHVT14_INV_0P5 U221 ( .A(a_r[2]), .X(n173) );
  SAEDHVT14_AO32_U_0P5 U222 ( .A1(a_r[0]), .A2(n306), .A3(n266), .B1(s_r[3]), 
        .B2(a_r[6]), .X(n160) );
  SAEDHVT14_AO32_U_0P5 U223 ( .A1(n241), .A2(n284), .A3(n240), .B1(n241), .B2(
        n272), .X(n233) );
  SAEDHVT14_ND2_CDC_0P5 U224 ( .A1(n268), .A2(s_out[3]), .X(n181) );
  SAEDHVT14_INV_0P5 U225 ( .A(n279), .X(n269) );
  SAEDHVT14_OAI21_0P5 U226 ( .A1(n219), .A2(n218), .B(n217), .X(c2_out[7]) );
  SAEDHVT14_BUF_U_0P5 U227 ( .A(n304), .X(n305) );
  SAEDHVT14_AN2_MM_0P5 U228 ( .A1(n303), .A2(n302), .X(aeqb) );
  SAEDHVT14_INV_0P5 U229 ( .A(rst), .X(n304) );
  SAEDHVT14_NR2_MM_0P5 U230 ( .A1(n278), .A2(n306), .X(n163) );
  SAEDHVT14_NR2_MM_0P5 U231 ( .A1(b_r[1]), .A2(b_r[0]), .X(n175) );
  SAEDHVT14_NR2_MM_0P5 U232 ( .A1(n175), .A2(n306), .X(n164) );
  SAEDHVT14_ND2B_U_0P5 U233 ( .A(s[1]), .B(s[0]), .X(n165) );
  SAEDHVT14_NR2_MM_0P5 U234 ( .A1(s_r[3]), .A2(n165), .X(n287) );
  SAEDHVT14_OAI21_0P5 U235 ( .A1(b_r[2]), .A2(s_r[2]), .B(n287), .X(n174) );
  SAEDHVT14_INV_0P5 U236 ( .A(s[0]), .X(n285) );
  SAEDHVT14_ND2_CDC_0P5 U237 ( .A1(n285), .A2(s_r[2]), .X(n279) );
  SAEDHVT14_NR2_MM_0P5 U238 ( .A1(n306), .A2(n165), .X(n166) );
  SAEDHVT14_ND2_CDC_0P5 U239 ( .A1(s_r[2]), .A2(n166), .X(n281) );
  SAEDHVT14_ND2_CDC_0P5 U240 ( .A1(s_r[2]), .A2(n287), .X(n282) );
  SAEDHVT14_OAI22_0P5 U241 ( .A1(b_r[2]), .A2(n281), .B1(n232), .B2(n282), .X(
        n168) );
  SAEDHVT14_NR2_MM_0P5 U242 ( .A1(a_r[2]), .A2(n232), .X(n243) );
  SAEDHVT14_AOI21_0P5 U243 ( .A1(a_r[2]), .A2(n232), .B(n243), .X(n295) );
  SAEDHVT14_INV_0P5 U244 ( .A(s_r[2]), .X(n266) );
  SAEDHVT14_ND2_CDC_0P5 U245 ( .A1(n166), .A2(n266), .X(n280) );
  SAEDHVT14_ND2_CDC_0P5 U246 ( .A1(n266), .A2(n285), .X(n283) );
  SAEDHVT14_OAI22_0P5 U247 ( .A1(n295), .A2(n280), .B1(n283), .B2(n260), .X(
        n167) );
  SAEDHVT14_NR2_MM_0P5 U248 ( .A1(n168), .A2(n167), .X(n170) );
  SAEDHVT14_AN2_MM_0P5 U249 ( .A1(s[0]), .A2(s[1]), .X(n268) );
  SAEDHVT14_ND2_CDC_0P5 U250 ( .A1(n268), .A2(s_out[2]), .X(n169) );
  SAEDHVT14_ND2_CDC_0P5 U251 ( .A1(n170), .A2(n169), .X(n171) );
  SAEDHVT14_AOI21_0P5 U252 ( .A1(n269), .A2(intadd_0_B_1_), .B(n171), .X(n172)
         );
  SAEDHVT14_OAI21_0P5 U253 ( .A1(n174), .A2(n173), .B(n172), .X(c2_out[2]) );
  SAEDHVT14_OAI22_0P5 U254 ( .A1(b_r[3]), .A2(s_r[3]), .B1(n178), .B2(n306), 
        .X(n177) );
  SAEDHVT14_OAI21_0P5 U255 ( .A1(b_r[3]), .A2(s_r[2]), .B(n287), .X(n186) );
  SAEDHVT14_ND2_CDC_0P5 U256 ( .A1(a_r[3]), .A2(n178), .X(n248) );
  SAEDHVT14_AN2_MM_0P5 U257 ( .A1(n248), .A2(n244), .X(n294) );
  SAEDHVT14_OAI22_0P5 U258 ( .A1(b_r[3]), .A2(n281), .B1(n294), .B2(n280), .X(
        n180) );
  SAEDHVT14_OAI22_0P5 U259 ( .A1(n178), .A2(n282), .B1(n283), .B2(n259), .X(
        n179) );
  SAEDHVT14_NR2_MM_0P5 U260 ( .A1(n180), .A2(n179), .X(n182) );
  SAEDHVT14_ND2_CDC_0P5 U261 ( .A1(n182), .A2(n181), .X(n183) );
  SAEDHVT14_AOI21_0P5 U262 ( .A1(n269), .A2(intadd_0_B_2_), .B(n183), .X(n184)
         );
  SAEDHVT14_OAI21_0P5 U263 ( .A1(n186), .A2(n185), .B(n184), .X(c2_out[3]) );
  SAEDHVT14_NR2_MM_0P5 U264 ( .A1(n197), .A2(n306), .X(n187) );
  SAEDHVT14_OAI21_0P5 U265 ( .A1(b_r[4]), .A2(s_r[2]), .B(n287), .X(n195) );
  SAEDHVT14_NR2_MM_0P5 U266 ( .A1(b_r[4]), .A2(n194), .X(n251) );
  SAEDHVT14_NR2_MM_0P5 U267 ( .A1(a_r[4]), .A2(n196), .X(n246) );
  SAEDHVT14_NR2_MM_0P5 U268 ( .A1(n251), .A2(n246), .X(n300) );
  SAEDHVT14_OAI22_0P5 U269 ( .A1(b_r[4]), .A2(n281), .B1(n300), .B2(n280), .X(
        n189) );
  SAEDHVT14_OAI22_0P5 U270 ( .A1(n196), .A2(n282), .B1(n283), .B2(n264), .X(
        n188) );
  SAEDHVT14_NR2_MM_0P5 U271 ( .A1(n189), .A2(n188), .X(n191) );
  SAEDHVT14_ND2_CDC_0P5 U272 ( .A1(n268), .A2(s_out[4]), .X(n190) );
  SAEDHVT14_ND2_CDC_0P5 U273 ( .A1(n191), .A2(n190), .X(n192) );
  SAEDHVT14_AOI21_0P5 U274 ( .A1(n269), .A2(intadd_0_B_3_), .B(n192), .X(n193)
         );
  SAEDHVT14_OAI21_0P5 U275 ( .A1(n195), .A2(n194), .B(n193), .X(c2_out[4]) );
  SAEDHVT14_OAI22_0P5 U276 ( .A1(b_r[5]), .A2(s_r[3]), .B1(n200), .B2(n306), 
        .X(n199) );
  SAEDHVT14_NR2_MM_0P5 U277 ( .A1(n199), .A2(n198), .X(n220) );
  SAEDHVT14_OAI21_0P5 U278 ( .A1(b_r[5]), .A2(s_r[2]), .B(n287), .X(n207) );
  SAEDHVT14_ND2_CDC_0P5 U279 ( .A1(a_r[5]), .A2(n200), .X(n253) );
  SAEDHVT14_ND2_CDC_0P5 U280 ( .A1(b_r[5]), .A2(n235), .X(n249) );
  SAEDHVT14_AN2_MM_0P5 U281 ( .A1(n253), .A2(n249), .X(n296) );
  SAEDHVT14_OAI22_0P5 U282 ( .A1(b_r[5]), .A2(n281), .B1(n296), .B2(n280), .X(
        n202) );
  SAEDHVT14_OAI22_0P5 U283 ( .A1(n200), .A2(n282), .B1(n283), .B2(n263), .X(
        n201) );
  SAEDHVT14_NR2_MM_0P5 U284 ( .A1(n202), .A2(n201), .X(n204) );
  SAEDHVT14_ND2_CDC_0P5 U285 ( .A1(n268), .A2(s_out[5]), .X(n203) );
  SAEDHVT14_ND2_CDC_0P5 U286 ( .A1(n204), .A2(n203), .X(n205) );
  SAEDHVT14_AOI21_0P5 U287 ( .A1(n269), .A2(intadd_0_B_4_), .B(n205), .X(n206)
         );
  SAEDHVT14_OAI21_0P5 U288 ( .A1(n207), .A2(n235), .B(n206), .X(c2_out[5]) );
  SAEDHVT14_OAI21_0P5 U289 ( .A1(b_r[7]), .A2(s_r[2]), .B(n287), .X(n219) );
  SAEDHVT14_INV_0P5 U290 ( .A(a_r[7]), .X(n218) );
  SAEDHVT14_ND2_CDC_0P5 U291 ( .A1(b_r[7]), .A2(n218), .X(n258) );
  SAEDHVT14_NR2_MM_0P5 U292 ( .A1(b_r[7]), .A2(n218), .X(n255) );
  SAEDHVT14_AN2B_MM_1 U293 ( .B(n258), .A(n255), .X(n297) );
  SAEDHVT14_OAI22_0P5 U294 ( .A1(b_r[7]), .A2(n281), .B1(n297), .B2(n280), .X(
        n212) );
  SAEDHVT14_OAI22_0P5 U295 ( .A1(n210), .A2(n282), .B1(n283), .B2(n261), .X(
        n211) );
  SAEDHVT14_NR2_MM_0P5 U296 ( .A1(n212), .A2(n211), .X(n214) );
  SAEDHVT14_ND2_CDC_0P5 U297 ( .A1(n268), .A2(s_out[7]), .X(n213) );
  SAEDHVT14_ND2_CDC_0P5 U298 ( .A1(n214), .A2(n213), .X(n215) );
  SAEDHVT14_AOI21_0P5 U299 ( .A1(n269), .A2(n216), .B(n215), .X(n217) );
  SAEDHVT14_OAI21_0P5 U300 ( .A1(b_r[6]), .A2(s_r[2]), .B(n287), .X(n231) );
  SAEDHVT14_NR2_MM_0P5 U301 ( .A1(n223), .A2(a_r[6]), .X(n252) );
  SAEDHVT14_NR2_MM_0P5 U302 ( .A1(b_r[6]), .A2(n230), .X(n257) );
  SAEDHVT14_NR2_MM_0P5 U303 ( .A1(n252), .A2(n257), .X(n301) );
  SAEDHVT14_OAI22_0P5 U304 ( .A1(n301), .A2(n280), .B1(b_r[6]), .B2(n281), .X(
        n225) );
  SAEDHVT14_OAI22_0P5 U305 ( .A1(n223), .A2(n282), .B1(n222), .B2(n283), .X(
        n224) );
  SAEDHVT14_NR2_MM_0P5 U306 ( .A1(n225), .A2(n224), .X(n227) );
  SAEDHVT14_ND2_CDC_0P5 U307 ( .A1(s_out[6]), .A2(n268), .X(n226) );
  SAEDHVT14_ND2_CDC_0P5 U308 ( .A1(n227), .A2(n226), .X(n228) );
  SAEDHVT14_AOI21_0P5 U309 ( .A1(n269), .A2(intadd_0_B_5_), .B(n228), .X(n229)
         );
  SAEDHVT14_OAI21_0P5 U310 ( .A1(n231), .A2(n230), .B(n229), .X(c2_out[6]) );
  SAEDHVT14_INV_0P5 U311 ( .A(n252), .X(n238) );
  SAEDHVT14_ND2_CDC_0P5 U312 ( .A1(a_r[2]), .A2(n232), .X(n241) );
  SAEDHVT14_NR2_MM_0P5 U313 ( .A1(a_r[0]), .A2(n278), .X(n284) );
  SAEDHVT14_NR2_MM_0P5 U314 ( .A1(a_r[1]), .A2(n273), .X(n272) );
  SAEDHVT14_OAI21_0P5 U315 ( .A1(n233), .A2(n243), .B(n248), .X(n234) );
  SAEDHVT14_OAI22_0P5 U316 ( .A1(n236), .A2(n246), .B1(b_r[5]), .B2(n235), .X(
        n237) );
  SAEDHVT14_OAI21_0P5 U317 ( .A1(n255), .A2(n239), .B(n258), .X(altb) );
  SAEDHVT14_OA31_1 U318 ( .A1(b_r[0]), .A2(n272), .A3(n289), .B(n240), .X(n242) );
  SAEDHVT14_OAI21_0P5 U319 ( .A1(n243), .A2(n242), .B(n241), .X(n245) );
  SAEDHVT14_ND2_CDC_0P5 U320 ( .A1(n245), .A2(n244), .X(n247) );
  SAEDHVT14_OAI21_0P5 U321 ( .A1(n251), .A2(n250), .B(n249), .X(n254) );
  SAEDHVT14_AO221_0P5 U322 ( .A1(n258), .A2(n257), .B1(n258), .B2(n256), .C(
        n255), .X(agtb) );
  SAEDHVT14_AOI21_0P5 U323 ( .A1(a_r[0]), .A2(n278), .B(n284), .X(n299) );
  SAEDHVT14_NR2_MM_0P5 U324 ( .A1(intadd_0_SUM_5_), .A2(intadd_0_SUM_0_), .X(
        n262) );
  SAEDHVT14_NR2_MM_0P5 U325 ( .A1(n289), .A2(n278), .X(intadd_0_CI) );
  SAEDHVT14_AO32_U_0P5 U326 ( .A1(a_r[7]), .A2(s_r[3]), .A3(n266), .B1(n306), 
        .B2(a_r[1]), .X(n161) );
  SAEDHVT14_OAI22_0P5 U327 ( .A1(b_r[1]), .A2(n281), .B1(n282), .B2(n267), .X(
        n277) );
  SAEDHVT14_AOI22_0P5 U328 ( .A1(n269), .A2(intadd_0_B_0_), .B1(n268), .B2(
        s_out[1]), .X(n270) );
  SAEDHVT14_OAI21_0P5 U329 ( .A1(n283), .A2(n271), .B(n270), .X(n276) );
  SAEDHVT14_OAI21_0P5 U330 ( .A1(a_r[1]), .A2(s_r[2]), .B(n287), .X(n274) );
  SAEDHVT14_AOI21_0P5 U331 ( .A1(a_r[1]), .A2(n273), .B(n272), .X(n298) );
  SAEDHVT14_OAI22_0P5 U332 ( .A1(n274), .A2(n273), .B1(n298), .B2(n280), .X(
        n275) );
  SAEDHVT14_OR3_0P5 U333 ( .A1(n277), .A2(n276), .A3(n275), .X(c2_out[1]) );
  SAEDHVT14_AOI21_0P5 U334 ( .A1(n282), .A2(n279), .B(n278), .X(n293) );
  SAEDHVT14_OAI22_0P5 U335 ( .A1(b_r[0]), .A2(n281), .B1(n299), .B2(n280), .X(
        n292) );
  SAEDHVT14_OA21_1 U336 ( .A1(n283), .A2(b_r[0]), .B(n282), .X(n290) );
  SAEDHVT14_AO32_U_0P5 U337 ( .A1(s[1]), .A2(s[0]), .A3(s_out[0]), .B1(n285), 
        .B2(n284), .X(n286) );
  SAEDHVT14_AOI21_0P5 U338 ( .A1(n287), .A2(intadd_0_CI), .B(n286), .X(n288)
         );
  SAEDHVT14_OAI21_0P5 U339 ( .A1(n290), .A2(n289), .B(n288), .X(n291) );
  SAEDHVT14_OR3_0P5 U340 ( .A1(n293), .A2(n292), .A3(n291), .X(c2_out[0]) );
  SAEDHVT14_AN4_0P75 U341 ( .A1(n297), .A2(n296), .A3(n295), .A4(n294), .X(
        n303) );
  SAEDHVT14_AN4_0P75 U342 ( .A1(n301), .A2(n300), .A3(n299), .A4(n298), .X(
        n302) );
endmodule

