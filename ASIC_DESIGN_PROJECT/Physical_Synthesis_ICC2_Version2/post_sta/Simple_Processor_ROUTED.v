// IC Compiler II Verilog Writer
// Generated on 05/29/2022 at 23:06:38
// Library Name: lib
// Block Name: 29th_MAY_ROUTE_DONE
// User Label: 
// Write Command: write_verilog Simple_Processor_ROUTED.v
module Register_0 ( Clock , dout , din , EN , rst ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n20 ) , .CK ( Clock ) , 
    .Q ( dout[0] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n12 ) , .CK ( Clock ) , 
    .Q ( copt_net_201 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n13 ) , .CK ( Clock ) , 
    .Q ( copt_net_210 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n14 ) , .CK ( Clock ) , 
    .Q ( copt_net_204 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n15 ) , .CK ( Clock ) , 
    .Q ( copt_net_222 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( n16 ) , .CK ( Clock ) , 
    .Q ( copt_net_216 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( n17 ) , .CK ( Clock ) , 
    .Q ( copt_net_219 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n18 ) , .CK ( Clock ) , 
    .Q ( copt_net_213 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n19 ) , .CK ( Clock ) , 
    .Q ( copt_net_207 ) ) ;
SAEDRVT14_AO32_1 U3 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[1] ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n19 ) ) ;
SAEDRVT14_AO32_1 U4 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[7] ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n13 ) ) ;
SAEDRVT14_AO32_1 U5 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[6] ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n14 ) ) ;
SAEDRVT14_AO32_1 U6 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n15 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[2] ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n18 ) ) ;
SAEDHVT14_INV_0P5 U8 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5791 ( .A ( copt_net_203 ) , .X ( dout[8] ) ) ;
SAEDRVT14_AO32_1 U10 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_300 ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n20 ) ) ;
SAEDRVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[4] ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n16 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[3] ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n17 ) ) ;
SAEDRVT14_AO32_1 U13 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n12 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5792 ( .A ( copt_net_201 ) , 
    .X ( copt_net_202 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5793 ( .A ( copt_net_202 ) , 
    .X ( copt_net_203 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5794 ( .A ( copt_net_206 ) , .X ( dout[6] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5795 ( .A ( copt_net_204 ) , 
    .X ( copt_net_205 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5796 ( .A ( copt_net_205 ) , 
    .X ( copt_net_206 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5797 ( .A ( copt_net_209 ) , .X ( dout[1] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5798 ( .A ( copt_net_207 ) , 
    .X ( copt_net_208 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5799 ( .A ( copt_net_208 ) , 
    .X ( copt_net_209 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5800 ( .A ( copt_net_212 ) , .X ( dout[7] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5801 ( .A ( copt_net_210 ) , 
    .X ( copt_net_211 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5802 ( .A ( copt_net_211 ) , 
    .X ( copt_net_212 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5803 ( .A ( copt_net_215 ) , .X ( dout[2] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5804 ( .A ( copt_net_213 ) , 
    .X ( copt_net_214 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5805 ( .A ( copt_net_214 ) , 
    .X ( copt_net_215 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5806 ( .A ( copt_net_218 ) , .X ( dout[4] ) ) ;
SAEDHVT14_DEL_R2V2_1 copt_h_inst_5807 ( .A ( copt_net_216 ) , 
    .X ( copt_net_217 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5808 ( .A ( copt_net_217 ) , 
    .X ( copt_net_218 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5809 ( .A ( copt_net_221 ) , .X ( dout[3] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5810 ( .A ( copt_net_219 ) , 
    .X ( copt_net_220 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5811 ( .A ( copt_net_220 ) , 
    .X ( copt_net_221 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5812 ( .A ( copt_net_223 ) , .X ( dout[5] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5813 ( .A ( copt_net_224 ) , 
    .X ( copt_net_223 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5814 ( .A ( copt_net_222 ) , 
    .X ( copt_net_224 ) ) ;
SAEDLVT14_DEL_R2V3_2 copt_h_inst_5870 ( .A ( dout[0] ) , .X ( copt_net_280 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5889 ( .A ( copt_net_280 ) , 
    .X ( copt_net_299 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5890 ( .A ( copt_net_299 ) , 
    .X ( copt_net_300 ) ) ;
endmodule


module Register_1 ( Clock , dout , din , EN , rst , p_abuf0 ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;
input  p_abuf0 ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n11 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_119 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n12 ) , .CK ( Clock ) , 
    .Q ( dout[7] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n13 ) , .CK ( Clock ) , 
    .Q ( copt_net_164 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n14 ) , .CK ( Clock ) , 
    .Q ( copt_net_98 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( n15 ) , .CK ( Clock ) , 
    .Q ( copt_net_146 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( n16 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_67 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n17 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_71 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n18 ) , .CK ( Clock ) , 
    .Q ( copt_net_293 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n19 ) , .CK ( Clock ) , 
    .Q ( dout[0] ) ) ;
SAEDHVT14_AO32_2 U3 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[4] ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n15 ) ) ;
SAEDHVT14_INV_0P5 U4 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDRVT14_AO32_1 U5 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[3] ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n16 ) ) ;
SAEDRVT14_AO32_1 U6 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[1] ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n18 ) ) ;
SAEDRVT14_AO32_4 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_113 ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n19 ) ) ;
SAEDRVT14_AO32_1 U8 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_294 ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n12 ) ) ;
SAEDRVT14_AO32_U_0P5 U9 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n11 ) ) ;
SAEDRVT14_AO32_1 U10 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[6] ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n13 ) ) ;
SAEDHVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n14 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[2] ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n17 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5618 ( .A ( copt_net_67 ) , .X ( copt_net_64 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5619 ( .A ( copt_net_64 ) , 
    .X ( copt_net_65 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5620 ( .A ( copt_net_65 ) , 
    .X ( copt_net_66 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5621 ( .A ( copt_net_66 ) , .X ( dout[3] ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5622 ( .A ( copt_net_71 ) , .X ( copt_net_68 ) ) ;
SAEDHVT14_DEL_R2V2_1 copt_h_inst_5623 ( .A ( copt_net_68 ) , 
    .X ( copt_net_69 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5624 ( .A ( copt_net_69 ) , 
    .X ( copt_net_70 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5625 ( .A ( copt_net_70 ) , .X ( dout[2] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5653 ( .A ( copt_net_98 ) , 
    .X ( copt_net_96 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5654 ( .A ( copt_net_96 ) , 
    .X ( copt_net_97 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5655 ( .A ( copt_net_97 ) , .X ( dout[5] ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5671 ( .A ( dout[0] ) , .X ( copt_net_111 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5672 ( .A ( copt_net_111 ) , 
    .X ( copt_net_112 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5673 ( .A ( copt_net_112 ) , 
    .X ( copt_net_113 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5677 ( .A ( copt_net_119 ) , 
    .X ( copt_net_117 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5678 ( .A ( copt_net_117 ) , 
    .X ( copt_net_118 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5679 ( .A ( copt_net_118 ) , 
    .X ( ropt_net_319 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5707 ( .A ( copt_net_146 ) , 
    .X ( copt_net_144 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5708 ( .A ( copt_net_144 ) , 
    .X ( copt_net_145 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5709 ( .A ( copt_net_145 ) , .X ( dout[4] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5725 ( .A ( copt_net_164 ) , 
    .X ( copt_net_162 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5726 ( .A ( copt_net_162 ) , 
    .X ( copt_net_163 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5727 ( .A ( copt_net_163 ) , .X ( dout[6] ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5842 ( .A ( dout[7] ) , .X ( copt_net_252 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5843 ( .A ( copt_net_254 ) , 
    .X ( copt_net_253 ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_5844 ( .A ( copt_net_252 ) , 
    .X ( copt_net_254 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5855 ( .A ( copt_net_293 ) , .X ( copt_net_265 ) ) ;
SAEDHVT14_DEL_R2V2_1 copt_h_inst_5856 ( .A ( copt_net_265 ) , 
    .X ( copt_net_266 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5857 ( .A ( copt_net_266 ) , 
    .X ( copt_net_267 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5883 ( .A ( copt_net_267 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5884 ( .A ( copt_net_253 ) , 
    .X ( copt_net_294 ) ) ;
SAEDHVT14_BUF_1 ropt_h_inst_5909 ( .A ( ropt_net_319 ) , .X ( dout[8] ) ) ;
endmodule


module Register_2 ( Clock , dout , din , EN , rst , p_abuf0 ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;
input  p_abuf0 ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( copt_net_307 ) , .CK ( Clock ) , 
    .Q ( copt_net_16 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n11 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_122 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n12 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_107 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n13 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_167 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n14 ) , .CK ( p_abuf0 ) , 
    .Q ( dout[5] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( copt_net_15 ) , .CK ( Clock ) , 
    .Q ( dout[4] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n17 ) , .CK ( Clock ) , 
    .Q ( copt_net_291 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n18 ) , .CK ( Clock ) , 
    .Q ( copt_net_29 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n19 ) , .CK ( Clock ) , 
    .Q ( copt_net_77 ) ) ;
SAEDRVT14_AO32_1 U3 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[7] ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n12 ) ) ;
SAEDHVT14_AO32_4 U4 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_28 ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n18 ) ) ;
SAEDHVT14_AO32_1 U5 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n11 ) ) ;
SAEDHVT14_INV_0P5 U6 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[6] ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n13 ) ) ;
SAEDRVT14_AO32_1 U8 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_283 ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n14 ) ) ;
SAEDRVT14_AO32_1 U9 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[4] ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n15 ) ) ;
SAEDRVT14_AO32_1 U10 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[3] ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n16 ) ) ;
SAEDRVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[2] ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n17 ) ) ;
SAEDRVT14_AO32_4 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[0] ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n19 ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_5562 ( .A ( n15 ) , .X ( copt_net_12 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5563 ( .A ( copt_net_12 ) , 
    .X ( copt_net_13 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5564 ( .A ( copt_net_13 ) , 
    .X ( copt_net_14 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5565 ( .A ( copt_net_14 ) , 
    .X ( copt_net_15 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5566 ( .A ( copt_net_18 ) , .X ( dout[3] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5567 ( .A ( copt_net_16 ) , 
    .X ( copt_net_17 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5568 ( .A ( copt_net_17 ) , 
    .X ( copt_net_18 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5577 ( .A ( copt_net_29 ) , 
    .X ( copt_net_27 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5578 ( .A ( dout[1] ) , .X ( copt_net_28 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5579 ( .A ( copt_net_27 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5629 ( .A ( copt_net_77 ) , 
    .X ( copt_net_75 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5630 ( .A ( copt_net_75 ) , 
    .X ( copt_net_76 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5631 ( .A ( copt_net_76 ) , .X ( dout[0] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5665 ( .A ( copt_net_107 ) , 
    .X ( copt_net_105 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5666 ( .A ( copt_net_105 ) , 
    .X ( copt_net_106 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5667 ( .A ( copt_net_106 ) , .X ( dout[7] ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5680 ( .A ( copt_net_122 ) , 
    .X ( copt_net_120 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5681 ( .A ( copt_net_120 ) , 
    .X ( copt_net_121 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5682 ( .A ( copt_net_121 ) , .X ( dout[8] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5731 ( .A ( copt_net_167 ) , 
    .X ( copt_net_165 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5732 ( .A ( copt_net_165 ) , 
    .X ( copt_net_166 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5733 ( .A ( copt_net_166 ) , .X ( dout[6] ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5838 ( .A ( copt_net_291 ) , .X ( copt_net_248 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5839 ( .A ( copt_net_248 ) , 
    .X ( copt_net_249 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5840 ( .A ( copt_net_249 ) , 
    .X ( copt_net_250 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5851 ( .A ( dout[5] ) , .X ( copt_net_261 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5872 ( .A ( copt_net_261 ) , 
    .X ( copt_net_282 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5873 ( .A ( copt_net_282 ) , 
    .X ( copt_net_283 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5881 ( .A ( copt_net_250 ) , .X ( dout[2] ) ) ;
SAEDHVT14_BUF_U_0P5 copt_h_inst_5897 ( .A ( n16 ) , .X ( copt_net_307 ) ) ;
endmodule


module Register_3 ( Clock , dout , din , EN , rst ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n11 ) , .CK ( Clock ) , 
    .Q ( copt_net_200 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n12 ) , .CK ( Clock ) , 
    .Q ( copt_net_194 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n13 ) , .CK ( Clock ) , 
    .Q ( dout[6] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n14 ) , .CK ( Clock ) , 
    .Q ( copt_net_197 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( n15 ) , .CK ( Clock ) , 
    .Q ( copt_net_129 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( n16 ) , .CK ( Clock ) , 
    .Q ( dout[3] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n17 ) , .CK ( Clock ) , 
    .Q ( copt_net_180 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n18 ) , .CK ( Clock ) , 
    .Q ( copt_net_277 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n19 ) , .CK ( Clock ) , 
    .Q ( copt_net_191 ) ) ;
SAEDRVT14_AO32_1 U3 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[7] ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n12 ) ) ;
SAEDRVT14_AO32_1 U4 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_276 ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n13 ) ) ;
SAEDHVT14_AO32_2 U5 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_116 ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n16 ) ) ;
SAEDRVT14_AO32_1 U6 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n14 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n11 ) ) ;
SAEDHVT14_INV_0P5 U8 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDHVT14_AO32_2 U9 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_131 ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n15 ) ) ;
SAEDRVT14_AO32_1 U10 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_182 ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n17 ) ) ;
SAEDRVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_279 ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n18 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[0] ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n19 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5674 ( .A ( dout[3] ) , .X ( copt_net_114 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5675 ( .A ( copt_net_114 ) , 
    .X ( copt_net_115 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5676 ( .A ( copt_net_115 ) , 
    .X ( copt_net_116 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5689 ( .A ( copt_net_129 ) , .X ( dout[4] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5690 ( .A ( dout[4] ) , .X ( copt_net_130 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5691 ( .A ( copt_net_130 ) , 
    .X ( copt_net_131 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5752 ( .A ( copt_net_180 ) , .X ( dout[2] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5753 ( .A ( dout[2] ) , .X ( copt_net_181 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5754 ( .A ( copt_net_181 ) , 
    .X ( copt_net_182 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5767 ( .A ( copt_net_191 ) , 
    .X ( copt_net_189 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5768 ( .A ( copt_net_189 ) , 
    .X ( copt_net_190 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5769 ( .A ( copt_net_190 ) , .X ( dout[0] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5773 ( .A ( copt_net_194 ) , 
    .X ( copt_net_192 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5774 ( .A ( copt_net_192 ) , 
    .X ( copt_net_193 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5775 ( .A ( copt_net_193 ) , .X ( dout[7] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5776 ( .A ( copt_net_197 ) , 
    .X ( copt_net_195 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5777 ( .A ( copt_net_195 ) , 
    .X ( copt_net_196 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5778 ( .A ( copt_net_196 ) , .X ( dout[5] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5782 ( .A ( copt_net_200 ) , 
    .X ( copt_net_198 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5783 ( .A ( copt_net_198 ) , 
    .X ( copt_net_199 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5784 ( .A ( copt_net_199 ) , .X ( dout[8] ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5864 ( .A ( dout[6] ) , .X ( copt_net_274 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5865 ( .A ( copt_net_274 ) , 
    .X ( copt_net_275 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5866 ( .A ( copt_net_275 ) , 
    .X ( copt_net_276 ) ) ;
SAEDHVT14_DEL_R2V2_1 copt_h_inst_5867 ( .A ( copt_net_277 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5868 ( .A ( dout[1] ) , .X ( copt_net_278 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5869 ( .A ( copt_net_278 ) , 
    .X ( copt_net_279 ) ) ;
endmodule


module Register_4 ( Clock , dout , din , EN , rst , HFSNET_0 , HFSNET_1 , 
    p_abuf0 , p_abuf1 ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;
input  HFSNET_0 ;
input  HFSNET_1 ;
input  p_abuf0 ;
input  p_abuf1 ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n13 ) , .CK ( p_abuf1 ) , 
    .Q ( copt_net_185 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n11 ) , .CK ( p_abuf1 ) , 
    .Q ( copt_net_157 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n12 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_136 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n14 ) , .CK ( Clock ) , 
    .Q ( copt_net_26 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( n15 ) , .CK ( p_abuf1 ) , 
    .Q ( copt_net_132 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( n16 ) , .CK ( Clock ) , 
    .Q ( copt_net_50 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n17 ) , .CK ( Clock ) , 
    .Q ( copt_net_45 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n18 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_110 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n19 ) , .CK ( p_abuf0 ) , 
    .Q ( dout[0] ) ) ;
SAEDRVT14_AO32_1 U3 ( .A1 ( HFSNET_1 ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n14 ) ) ;
SAEDRVT14_AO32_1 U4 ( .A1 ( HFSNET_0 ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n11 ) ) ;
SAEDHVT14_AO32_1 U5 ( .A1 ( HFSNET_1 ) , .A2 ( n1 ) , .A3 ( dout[7] ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n12 ) ) ;
SAEDRVT14_AO32_1 U6 ( .A1 ( HFSNET_0 ) , .A2 ( n1 ) , .A3 ( dout[1] ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n18 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[3] ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n16 ) ) ;
SAEDHVT14_INV_0P5 U8 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDRVT14_AO32_1 U9 ( .A1 ( HFSNET_1 ) , .A2 ( n1 ) , .A3 ( copt_net_83 ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n19 ) ) ;
SAEDRVT14_AO32_1 U10 ( .A1 ( HFSNET_0 ) , .A2 ( n1 ) , .A3 ( dout[6] ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n13 ) ) ;
SAEDRVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[4] ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n15 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( HFSNET_1 ) , .A2 ( n1 ) , .A3 ( dout[2] ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n17 ) ) ;
SAEDHVT14_BUF_S_0P5 copt_h_inst_5573 ( .A ( copt_net_26 ) , 
    .X ( copt_net_23 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5574 ( .A ( copt_net_23 ) , 
    .X ( copt_net_24 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5575 ( .A ( copt_net_24 ) , 
    .X ( copt_net_25 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5576 ( .A ( copt_net_25 ) , .X ( dout[5] ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5596 ( .A ( copt_net_45 ) , .X ( copt_net_42 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5597 ( .A ( copt_net_42 ) , 
    .X ( copt_net_43 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5598 ( .A ( copt_net_43 ) , 
    .X ( copt_net_44 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5599 ( .A ( copt_net_44 ) , .X ( dout[2] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5604 ( .A ( copt_net_51 ) , .X ( dout[3] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5605 ( .A ( copt_net_52 ) , 
    .X ( copt_net_51 ) ) ;
SAEDHVT14_DEL_R2V2_1 copt_h_inst_5606 ( .A ( copt_net_53 ) , 
    .X ( copt_net_52 ) ) ;
SAEDHVT14_BUF_U_0P5 copt_h_inst_5607 ( .A ( copt_net_50 ) , 
    .X ( copt_net_53 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5635 ( .A ( dout[0] ) , .X ( copt_net_81 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5636 ( .A ( copt_net_81 ) , 
    .X ( copt_net_82 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5637 ( .A ( copt_net_82 ) , 
    .X ( copt_net_83 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5668 ( .A ( copt_net_110 ) , 
    .X ( copt_net_108 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5669 ( .A ( copt_net_108 ) , 
    .X ( copt_net_109 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5670 ( .A ( copt_net_109 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5692 ( .A ( copt_net_133 ) , .X ( dout[4] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5693 ( .A ( copt_net_134 ) , 
    .X ( copt_net_133 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5694 ( .A ( copt_net_132 ) , 
    .X ( copt_net_134 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5695 ( .A ( copt_net_136 ) , 
    .X ( copt_net_135 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5696 ( .A ( copt_net_137 ) , .X ( dout[7] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5697 ( .A ( copt_net_135 ) , 
    .X ( copt_net_137 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5719 ( .A ( copt_net_157 ) , 
    .X ( copt_net_156 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5720 ( .A ( copt_net_158 ) , .X ( dout[8] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5721 ( .A ( copt_net_156 ) , 
    .X ( copt_net_158 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5755 ( .A ( copt_net_185 ) , 
    .X ( copt_net_183 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5756 ( .A ( copt_net_183 ) , 
    .X ( copt_net_184 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5757 ( .A ( copt_net_184 ) , .X ( dout[6] ) ) ;
endmodule


module Register_5 ( Clock , dout , din , EN , rst , HFSNET_0 , HFSNET_1 , 
    p_abuf0 , p_abuf1 ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;
input  HFSNET_0 ;
input  HFSNET_1 ;
input  p_abuf0 ;
input  p_abuf1 ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n19 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_176 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n11 ) , .CK ( p_abuf1 ) , 
    .Q ( copt_net_179 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n12 ) , .CK ( Clock ) , 
    .Q ( copt_net_72 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n13 ) , .CK ( p_abuf1 ) , 
    .Q ( copt_net_148 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n14 ) , .CK ( Clock ) , 
    .Q ( copt_net_78 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( n15 ) , .CK ( p_abuf1 ) , 
    .Q ( copt_net_89 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( n16 ) , .CK ( Clock ) , 
    .Q ( copt_net_61 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n17 ) , .CK ( Clock ) , 
    .Q ( copt_net_54 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n18 ) , .CK ( p_abuf1 ) , 
    .Q ( copt_net_159 ) ) ;
SAEDHVT14_AO32_2 U3 ( .A1 ( HFSNET_1 ) , .A2 ( n1 ) , .A3 ( dout[2] ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n17 ) ) ;
SAEDHVT14_AO32_1 U4 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[7] ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n12 ) ) ;
SAEDRVT14_AO32_1 U5 ( .A1 ( HFSNET_0 ) , .A2 ( n1 ) , .A3 ( copt_net_149 ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n13 ) ) ;
SAEDHVT14_INV_0P5 U6 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( HFSNET_0 ) , .A2 ( n1 ) , .A3 ( dout[1] ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n18 ) ) ;
SAEDRVT14_AO32_1 U8 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_174 ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n19 ) ) ;
SAEDHVT14_AO32_1 U9 ( .A1 ( HFSNET_0 ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n11 ) ) ;
SAEDHVT14_AO32_1 U10 ( .A1 ( HFSNET_1 ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n14 ) ) ;
SAEDHVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[4] ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n15 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[3] ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n16 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5608 ( .A ( copt_net_55 ) , .X ( dout[2] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5609 ( .A ( copt_net_56 ) , 
    .X ( copt_net_55 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5610 ( .A ( copt_net_54 ) , 
    .X ( copt_net_56 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5615 ( .A ( copt_net_62 ) , .X ( dout[3] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5616 ( .A ( copt_net_63 ) , 
    .X ( copt_net_62 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5617 ( .A ( copt_net_61 ) , 
    .X ( copt_net_63 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5626 ( .A ( copt_net_73 ) , .X ( dout[7] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5627 ( .A ( copt_net_74 ) , 
    .X ( copt_net_73 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5628 ( .A ( copt_net_72 ) , 
    .X ( copt_net_74 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5632 ( .A ( copt_net_80 ) , .X ( dout[5] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5633 ( .A ( copt_net_78 ) , 
    .X ( copt_net_79 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5634 ( .A ( copt_net_79 ) , 
    .X ( copt_net_80 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5644 ( .A ( copt_net_89 ) , 
    .X ( copt_net_87 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5645 ( .A ( copt_net_87 ) , 
    .X ( copt_net_88 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5646 ( .A ( copt_net_88 ) , .X ( dout[4] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5710 ( .A ( copt_net_148 ) , 
    .X ( copt_net_147 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5711 ( .A ( copt_net_147 ) , .X ( dout[6] ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5712 ( .A ( dout[6] ) , .X ( copt_net_149 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5722 ( .A ( copt_net_160 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5723 ( .A ( copt_net_161 ) , 
    .X ( copt_net_160 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5724 ( .A ( copt_net_159 ) , 
    .X ( copt_net_161 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5746 ( .A ( copt_net_175 ) , 
    .X ( copt_net_174 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5747 ( .A ( dout[0] ) , .X ( copt_net_175 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5748 ( .A ( copt_net_176 ) , .X ( dout[0] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5749 ( .A ( copt_net_179 ) , 
    .X ( copt_net_177 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5750 ( .A ( copt_net_177 ) , 
    .X ( copt_net_178 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5751 ( .A ( copt_net_178 ) , .X ( dout[8] ) ) ;
endmodule


module Register_6 ( Clock , dout , din , EN , rst , p_abuf0 ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;
input  p_abuf0 ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n11 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_188 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n12 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_256 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n13 ) , .CK ( p_abuf0 ) , 
    .Q ( dout[6] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n14 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_93 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( n15 ) , .CK ( Clock ) , 
    .Q ( copt_net_22 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( ropt_net_317 ) , .CK ( p_abuf0 ) , 
    .Q ( dout[3] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n17 ) , .CK ( p_abuf0 ) , 
    .Q ( dout[2] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n18 ) , .CK ( Clock ) , 
    .Q ( copt_net_33 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n19 ) , .CK ( p_abuf0 ) , 
    .Q ( dout[0] ) ) ;
SAEDRVT14_AO32_1 U3 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n11 ) ) ;
SAEDHVT14_INV_0P5 U4 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDHVT14_AO32_4 U5 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[3] ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n16 ) ) ;
SAEDRVT14_AO32_1 U6 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_257 ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n12 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_295 ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n13 ) ) ;
SAEDHVT14_AO32_2 U8 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n14 ) ) ;
SAEDRVT14_AO32_1 U9 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[4] ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n15 ) ) ;
SAEDHVT14_AO32_4 U10 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_251 ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n17 ) ) ;
SAEDRVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_143 ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n19 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[1] ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n18 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5569 ( .A ( copt_net_22 ) , .X ( copt_net_19 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5570 ( .A ( copt_net_19 ) , 
    .X ( copt_net_20 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5571 ( .A ( copt_net_20 ) , 
    .X ( copt_net_21 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5572 ( .A ( copt_net_21 ) , .X ( dout[4] ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5584 ( .A ( copt_net_33 ) , .X ( copt_net_30 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5585 ( .A ( copt_net_30 ) , 
    .X ( copt_net_31 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5586 ( .A ( copt_net_31 ) , 
    .X ( copt_net_32 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5587 ( .A ( copt_net_32 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5650 ( .A ( copt_net_94 ) , .X ( dout[5] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5651 ( .A ( copt_net_95 ) , 
    .X ( copt_net_94 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5652 ( .A ( copt_net_93 ) , 
    .X ( copt_net_95 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5704 ( .A ( dout[0] ) , .X ( copt_net_141 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5705 ( .A ( copt_net_141 ) , 
    .X ( copt_net_142 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5706 ( .A ( copt_net_142 ) , 
    .X ( copt_net_143 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5764 ( .A ( copt_net_188 ) , 
    .X ( copt_net_186 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5765 ( .A ( copt_net_186 ) , 
    .X ( copt_net_187 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5766 ( .A ( copt_net_187 ) , .X ( dout[8] ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5841 ( .A ( dout[2] ) , .X ( copt_net_251 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5845 ( .A ( copt_net_256 ) , 
    .X ( copt_net_255 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5846 ( .A ( copt_net_255 ) , .X ( dout[7] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5847 ( .A ( dout[7] ) , .X ( copt_net_257 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5861 ( .A ( dout[6] ) , .X ( copt_net_271 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5862 ( .A ( copt_net_273 ) , 
    .X ( copt_net_272 ) ) ;
SAEDHVT14_BUF_S_0P5 copt_h_inst_5863 ( .A ( copt_net_271 ) , 
    .X ( copt_net_273 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5885 ( .A ( copt_net_272 ) , 
    .X ( copt_net_295 ) ) ;
SAEDHVT14_DEL_R2V3_1 ropt_h_inst_5907 ( .A ( n16 ) , .X ( ropt_net_317 ) ) ;
endmodule


module Register_7 ( Clock , dout , din , EN , rst , p_abuf0 ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;
input  p_abuf0 ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( n16 ) , .CK ( p_abuf0 ) , 
    .Q ( dout[3] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n19 ) , .CK ( Clock ) , 
    .Q ( dout[0] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n11 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_90 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n12 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_60 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n13 ) , .CK ( Clock ) , 
    .Q ( dout[6] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n14 ) , .CK ( Clock ) , 
    .Q ( copt_net_140 ) ) ;
SAEDRVT14_FDP_V2_1 dout_reg_4_ ( .D ( copt_net_11 ) , .CK ( Clock ) , 
    .Q ( dout[4] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n17 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_37 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n18 ) , .CK ( Clock ) , 
    .Q ( copt_net_152 ) ) ;
SAEDRVT14_AO32_1 U3 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[2] ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n17 ) ) ;
SAEDHVT14_INV_0P5 U4 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDRVT14_AO32_1 U5 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_259 ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n19 ) ) ;
SAEDRVT14_AO32_1 U6 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n11 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[7] ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n12 ) ) ;
SAEDRVT14_AO32_1 U8 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_128 ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n13 ) ) ;
SAEDRVT14_AO32_4 U9 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n14 ) ) ;
SAEDRVT14_AO32_1 U10 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[4] ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n15 ) ) ;
SAEDRVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_49 ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n16 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[1] ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n18 ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_5558 ( .A ( n15 ) , .X ( copt_net_8 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5559 ( .A ( copt_net_8 ) , 
    .X ( copt_net_9 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5560 ( .A ( copt_net_9 ) , 
    .X ( copt_net_10 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5561 ( .A ( copt_net_10 ) , 
    .X ( copt_net_11 ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_5588 ( .A ( copt_net_37 ) , 
    .X ( copt_net_34 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5589 ( .A ( copt_net_34 ) , 
    .X ( copt_net_35 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5590 ( .A ( copt_net_35 ) , 
    .X ( copt_net_36 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5591 ( .A ( copt_net_36 ) , .X ( dout[2] ) ) ;
SAEDHVT14_BUF_S_0P5 copt_h_inst_5600 ( .A ( dout[3] ) , .X ( copt_net_46 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5601 ( .A ( copt_net_46 ) , 
    .X ( copt_net_47 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5602 ( .A ( copt_net_47 ) , 
    .X ( copt_net_48 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5603 ( .A ( copt_net_48 ) , 
    .X ( copt_net_49 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5611 ( .A ( copt_net_60 ) , .X ( copt_net_57 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5612 ( .A ( copt_net_57 ) , 
    .X ( copt_net_58 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5613 ( .A ( copt_net_58 ) , 
    .X ( copt_net_59 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5614 ( .A ( copt_net_59 ) , .X ( dout[7] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5647 ( .A ( copt_net_91 ) , .X ( dout[8] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5648 ( .A ( copt_net_92 ) , 
    .X ( copt_net_91 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5649 ( .A ( copt_net_90 ) , 
    .X ( copt_net_92 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5686 ( .A ( dout[6] ) , .X ( copt_net_126 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5687 ( .A ( copt_net_126 ) , 
    .X ( copt_net_127 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5688 ( .A ( copt_net_127 ) , 
    .X ( copt_net_128 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5698 ( .A ( copt_net_140 ) , 
    .X ( copt_net_138 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5699 ( .A ( copt_net_138 ) , 
    .X ( copt_net_139 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5700 ( .A ( copt_net_139 ) , .X ( dout[5] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5713 ( .A ( copt_net_152 ) , 
    .X ( copt_net_150 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5714 ( .A ( copt_net_150 ) , 
    .X ( copt_net_151 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5715 ( .A ( copt_net_151 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5848 ( .A ( dout[0] ) , .X ( copt_net_258 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5849 ( .A ( copt_net_260 ) , 
    .X ( copt_net_259 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5850 ( .A ( copt_net_258 ) , 
    .X ( copt_net_260 ) ) ;
endmodule


module Register_8 ( Clock , dout , din , EN , rst , p_abuf0 ) ;
input  Clock ;
output [8:0] dout ;
input  [8:0] din ;
input  EN ;
input  rst ;
input  p_abuf0 ;

SAEDHVT14_FDP_V2LP_0P5 dout_reg_6_ ( .D ( n8 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_173 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_8_ ( .D ( n10 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_101 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_7_ ( .D ( n9 ) , .CK ( Clock ) , 
    .Q ( copt_net_155 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_5_ ( .D ( n7 ) , .CK ( Clock ) , 
    .Q ( copt_net_86 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_4_ ( .D ( n6 ) , .CK ( Clock ) , 
    .Q ( dout[4] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_3_ ( .D ( n5 ) , .CK ( Clock ) , 
    .Q ( copt_net_264 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_2_ ( .D ( n4 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_270 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_1_ ( .D ( n3 ) , .CK ( Clock ) , 
    .Q ( copt_net_125 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 dout_reg_0_ ( .D ( n2 ) , .CK ( Clock ) , 
    .Q ( dout[0] ) ) ;
SAEDHVT14_AO32_1 U3 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_104 ) , 
    .B1 ( EN ) , .B2 ( din[0] ) , .X ( n2 ) ) ;
SAEDHVT14_INV_0P5 U4 ( .A ( EN ) , .X ( n1 ) ) ;
SAEDHVT14_AO32_1 U5 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[8] ) , 
    .B1 ( EN ) , .B2 ( din[8] ) , .X ( n10 ) ) ;
SAEDRVT14_AO32_1 U6 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[7] ) , 
    .B1 ( EN ) , .B2 ( din[7] ) , .X ( n9 ) ) ;
SAEDRVT14_AO32_1 U7 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[5] ) , 
    .B1 ( EN ) , .B2 ( din[5] ) , .X ( n7 ) ) ;
SAEDRVT14_AO32_1 U8 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_170 ) , 
    .B1 ( EN ) , .B2 ( din[4] ) , .X ( n6 ) ) ;
SAEDRVT14_AO32_1 U9 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[3] ) , 
    .B1 ( EN ) , .B2 ( din[3] ) , .X ( n5 ) ) ;
SAEDRVT14_AO32_1 U10 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( copt_net_269 ) , 
    .B1 ( EN ) , .B2 ( din[2] ) , .X ( n4 ) ) ;
SAEDHVT14_AO32_1 U11 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[1] ) , 
    .B1 ( EN ) , .B2 ( din[1] ) , .X ( n3 ) ) ;
SAEDRVT14_AO32_1 U12 ( .A1 ( rst ) , .A2 ( n1 ) , .A3 ( dout[6] ) , 
    .B1 ( EN ) , .B2 ( din[6] ) , .X ( n8 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5641 ( .A ( copt_net_86 ) , 
    .X ( copt_net_84 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5642 ( .A ( copt_net_84 ) , 
    .X ( copt_net_85 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5643 ( .A ( copt_net_85 ) , .X ( dout[5] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5656 ( .A ( copt_net_101 ) , 
    .X ( copt_net_99 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5657 ( .A ( copt_net_99 ) , 
    .X ( copt_net_100 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5658 ( .A ( copt_net_100 ) , .X ( dout[8] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5659 ( .A ( dout[0] ) , .X ( copt_net_102 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5660 ( .A ( copt_net_102 ) , 
    .X ( copt_net_103 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5661 ( .A ( copt_net_103 ) , 
    .X ( copt_net_104 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5683 ( .A ( copt_net_125 ) , 
    .X ( copt_net_123 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5684 ( .A ( copt_net_123 ) , 
    .X ( copt_net_124 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5685 ( .A ( copt_net_124 ) , .X ( dout[1] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5716 ( .A ( copt_net_155 ) , 
    .X ( copt_net_153 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5717 ( .A ( copt_net_153 ) , 
    .X ( copt_net_154 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5718 ( .A ( copt_net_154 ) , .X ( dout[7] ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5734 ( .A ( dout[4] ) , .X ( copt_net_168 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5735 ( .A ( copt_net_168 ) , 
    .X ( copt_net_169 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5736 ( .A ( copt_net_169 ) , 
    .X ( copt_net_170 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5740 ( .A ( copt_net_173 ) , 
    .X ( copt_net_171 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5741 ( .A ( copt_net_171 ) , 
    .X ( copt_net_172 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5742 ( .A ( copt_net_172 ) , .X ( dout[6] ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5852 ( .A ( copt_net_264 ) , 
    .X ( copt_net_262 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5853 ( .A ( copt_net_262 ) , 
    .X ( copt_net_263 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5854 ( .A ( copt_net_263 ) , .X ( dout[3] ) ) ;
SAEDHVT14_DEL_R2V2_1 copt_h_inst_5858 ( .A ( copt_net_270 ) , 
    .X ( copt_net_268 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5859 ( .A ( dout[2] ) , .X ( copt_net_269 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5860 ( .A ( copt_net_268 ) , .X ( dout[2] ) ) ;
endmodule


module reg_G ( Sum , Gin , Clock , rst , Z , p_abuf0 ) ;
input  [8:0] Sum ;
input  Gin ;
input  Clock ;
input  rst ;
output [8:0] Z ;
input  p_abuf0 ;

SAEDHVT14_FDP_V2LP_0P5 Z_reg_8_ ( .D ( n10 ) , .CK ( Clock ) , 
    .Q ( copt_net_290 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_7_ ( .D ( n9 ) , .CK ( Clock ) , .Q ( Z[7] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_6_ ( .D ( n8 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_242 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_5_ ( .D ( n7 ) , .CK ( Clock ) , .Q ( Z[5] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_4_ ( .D ( n6 ) , .CK ( Clock ) , .Q ( Z[4] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_3_ ( .D ( n5 ) , .CK ( Clock ) , .Q ( Z[3] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_2_ ( .D ( copt_net_315 ) , .CK ( Clock ) , 
    .Q ( Z[2] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_1_ ( .D ( copt_net_305 ) , .CK ( p_abuf0 ) , 
    .Q ( copt_net_246 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 Z_reg_0_ ( .D ( copt_net_7 ) , .CK ( Clock ) , 
    .Q ( Z[0] ) ) ;
SAEDHVT14_INV_0P5 U2 ( .A ( Gin ) , .X ( n1 ) ) ;
SAEDHVT14_OA221_U_0P5 U3 ( .A1 ( Gin ) , .A2 ( copt_net_289 ) , .B1 ( n1 ) , 
    .B2 ( Sum[6] ) , .C ( rst ) , .X ( n8 ) ) ;
SAEDHVT14_OA221_U_0P5 U4 ( .A1 ( Gin ) , .A2 ( copt_net_302 ) , .B1 ( n1 ) , 
    .B2 ( Sum[2] ) , .C ( rst ) , .X ( n4 ) ) ;
SAEDHVT14_OA221_U_0P5 U5 ( .A1 ( Gin ) , .A2 ( copt_net_312 ) , .B1 ( n1 ) , 
    .B2 ( Sum[8] ) , .C ( rst ) , .X ( n10 ) ) ;
SAEDHVT14_OA221_U_0P5 U6 ( .A1 ( Gin ) , .A2 ( copt_net_233 ) , .B1 ( n1 ) , 
    .B2 ( Sum[7] ) , .C ( rst ) , .X ( n9 ) ) ;
SAEDHVT14_OA221_U_0P5 U7 ( .A1 ( Gin ) , .A2 ( copt_net_284 ) , .B1 ( n1 ) , 
    .B2 ( Sum[5] ) , .C ( rst ) , .X ( n7 ) ) ;
SAEDHVT14_OA221_U_0P5 U8 ( .A1 ( Gin ) , .A2 ( copt_net_316 ) , .B1 ( n1 ) , 
    .B2 ( Sum[4] ) , .C ( rst ) , .X ( n6 ) ) ;
SAEDHVT14_OA221_U_0P5 U9 ( .A1 ( Gin ) , .A2 ( copt_net_237 ) , .B1 ( n1 ) , 
    .B2 ( Sum[3] ) , .C ( rst ) , .X ( n5 ) ) ;
SAEDHVT14_OA221_U_0P5 U10 ( .A1 ( Gin ) , .A2 ( copt_net_292 ) , .B1 ( n1 ) , 
    .B2 ( Sum[1] ) , .C ( rst ) , .X ( n3 ) ) ;
SAEDHVT14_OA221_U_0P5 U11 ( .A1 ( Gin ) , .A2 ( Z[0] ) , .B1 ( n1 ) , 
    .B2 ( Sum[0] ) , .C ( rst ) , .X ( n2 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5554 ( .A ( n2 ) , .X ( copt_net_4 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5555 ( .A ( copt_net_4 ) , 
    .X ( copt_net_5 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5556 ( .A ( copt_net_5 ) , 
    .X ( copt_net_6 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5557 ( .A ( copt_net_6 ) , 
    .X ( copt_net_7 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5822 ( .A ( Z[7] ) , .X ( copt_net_232 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5823 ( .A ( copt_net_314 ) , 
    .X ( copt_net_233 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5824 ( .A ( Z[4] ) , .X ( copt_net_234 ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5825 ( .A ( copt_net_234 ) , 
    .X ( copt_net_235 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5826 ( .A ( Z[3] ) , .X ( copt_net_236 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5827 ( .A ( copt_net_309 ) , 
    .X ( copt_net_237 ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5828 ( .A ( Z[2] ) , .X ( copt_net_238 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5829 ( .A ( copt_net_238 ) , 
    .X ( copt_net_239 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5830 ( .A ( copt_net_290 ) , .X ( copt_net_240 ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5831 ( .A ( copt_net_240 ) , 
    .X ( copt_net_241 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5832 ( .A ( copt_net_242 ) , .X ( Z[6] ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5833 ( .A ( copt_net_313 ) , 
    .X ( copt_net_243 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5834 ( .A ( Z[5] ) , .X ( copt_net_244 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5835 ( .A ( copt_net_244 ) , 
    .X ( copt_net_245 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5836 ( .A ( copt_net_246 ) , .X ( Z[1] ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5874 ( .A ( copt_net_245 ) , 
    .X ( copt_net_284 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5879 ( .A ( copt_net_243 ) , 
    .X ( copt_net_289 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5880 ( .A ( copt_net_241 ) , .X ( Z[8] ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5882 ( .A ( Z[1] ) , .X ( copt_net_292 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5891 ( .A ( copt_net_232 ) , 
    .X ( copt_net_301 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5892 ( .A ( copt_net_239 ) , 
    .X ( copt_net_302 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5893 ( .A ( copt_net_235 ) , 
    .X ( copt_net_303 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5894 ( .A ( n3 ) , .X ( copt_net_304 ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5895 ( .A ( copt_net_304 ) , 
    .X ( copt_net_305 ) ) ;
SAEDHVT14_DEL_R2V2_1 copt_h_inst_5898 ( .A ( copt_net_236 ) , 
    .X ( copt_net_308 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5899 ( .A ( copt_net_308 ) , 
    .X ( copt_net_309 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5902 ( .A ( Z[8] ) , .X ( copt_net_312 ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5903 ( .A ( Z[6] ) , .X ( copt_net_313 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5904 ( .A ( copt_net_301 ) , 
    .X ( copt_net_314 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5905 ( .A ( n4 ) , .X ( copt_net_315 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5906 ( .A ( copt_net_303 ) , 
    .X ( copt_net_316 ) ) ;
endmodule


module mux2X1_0 ( in0 , in1 , sel , out ) ;
input  [3:0] in0 ;
input  [3:0] in1 ;
input  sel ;
output [3:0] out ;

SAEDHVT14_MUX2_U_0P5 U1 ( .D0 ( in0[2] ) , .D1 ( in1[2] ) , 
    .S ( copt_net_306 ) , .X ( out[2] ) ) ;
SAEDHVT14_MUX2_U_0P5 U2 ( .D0 ( in0[3] ) , .D1 ( in1[3] ) , 
    .S ( copt_net_306 ) , .X ( out[3] ) ) ;
SAEDHVT14_MUX2_U_0P5 U3 ( .D0 ( in0[1] ) , .D1 ( in1[1] ) , 
    .S ( copt_net_306 ) , .X ( out[1] ) ) ;
SAEDHVT14_MUX2_U_0P5 U4 ( .D0 ( in0[0] ) , .D1 ( in1[0] ) , 
    .S ( copt_net_306 ) , .X ( out[0] ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5896 ( .A ( sel ) , .X ( copt_net_306 ) ) ;
endmodule


module half_adder_0 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_EO2_V1_0P75 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( sum ) ) ;
endmodule


module half_adder_1 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_EO2_V1_0P75 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( sum ) ) ;
endmodule


module full_adder_0 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_1 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) ) ;
half_adder_0 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) ) ;
endmodule


module half_adder_2 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_3 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_1 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_3 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_2 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_4 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_5 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_2 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_5 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_4 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_6 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

assign cout = a ;

SAEDHVT14_INV_0P5 U1 ( .A ( a ) , .X ( sum ) ) ;
endmodule


module half_adder_7 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_3 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_7 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_6 h2 ( .a ( x ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U2 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module ripple_carry_4_bit_0 ( a , b , cin , sum , cout ) ;
input  [3:0] a ;
input  [3:0] b ;
input  cin ;
output [3:0] sum ;
output cout ;

full_adder_3 fa0 ( .a ( a[0] ) , .b ( b[0] ) , .sum ( sum[0] ) , 
    .cout ( c1 ) ) ;
full_adder_2 fa1 ( .a ( a[1] ) , .b ( b[1] ) , .cin ( c1 ) , .sum ( sum[1] ) , 
    .cout ( c2 ) ) ;
full_adder_1 fa2 ( .a ( a[2] ) , .b ( b[2] ) , .cin ( c2 ) , .sum ( sum[2] ) , 
    .cout ( c3 ) ) ;
full_adder_0 fa3 ( .a ( a[3] ) , .b ( b[3] ) , .cin ( c3 ) , .sum ( sum[3] ) ) ;
endmodule


module half_adder_8 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDRVT14_EO2_V1_0P75 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( sum ) ) ;
endmodule


module half_adder_9 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_EO2_V1_0P75 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( sum ) ) ;
endmodule


module full_adder_4 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_9 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) ) ;
half_adder_8 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) ) ;
endmodule


module half_adder_10 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_11 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_5 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_11 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_10 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_MM_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_12 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_13 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_6 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_13 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_12 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_MM_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_14 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

assign sum = a ;
endmodule


module half_adder_15 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_7 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_15 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( cout ) ) ;
half_adder_14 h2 ( .a ( x ) , .b ( n1 ) , .sum ( sum ) ) ;
endmodule


module ripple_carry_4_bit_1 ( a , b , cin , sum , cout ) ;
input  [3:0] a ;
input  [3:0] b ;
input  cin ;
output [3:0] sum ;
output cout ;

full_adder_7 fa0 ( .a ( a[0] ) , .b ( b[0] ) , .sum ( sum[0] ) , 
    .cout ( c1 ) ) ;
full_adder_6 fa1 ( .a ( a[1] ) , .b ( b[1] ) , .cin ( c1 ) , .sum ( sum[1] ) , 
    .cout ( c2 ) ) ;
full_adder_5 fa2 ( .a ( a[2] ) , .b ( b[2] ) , .cin ( c2 ) , .sum ( sum[2] ) , 
    .cout ( c3 ) ) ;
full_adder_4 fa3 ( .a ( a[3] ) , .b ( b[3] ) , .cin ( c3 ) , .sum ( sum[3] ) ) ;
endmodule


module carry_select_adder_4bit_slice_0 ( a , b , cin , sum , cout ) ;
input  [3:0] a ;
input  [3:0] b ;
input  cin ;
output [3:0] sum ;
output cout ;

wire [3:0] s0 ;
wire [3:0] s1 ;

ripple_carry_4_bit_1 rca1 ( .a ( a ) , .b ( b ) , .sum ( s0 ) ) ;
ripple_carry_4_bit_0 rca2 ( .a ( a ) , .b ( b ) , .sum ( s1 ) ) ;
mux2X1_0 ms0 ( .in0 ( s0 ) , .in1 ( s1 ) , .sel ( cin ) , .out ( sum ) ) ;
endmodule


module mux2X1_1_1 ( in0 , in1 , sel , out ) ;
input  in0 ;
input  in1 ;
input  sel ;
output out ;

SAEDHVT14_MUX2_U_0P5 U1 ( .D0 ( in0 ) , .D1 ( in1 ) , .S ( sel ) , 
    .X ( out ) ) ;
endmodule


module mux2X1_2 ( in0 , in1 , sel , out ) ;
input  [3:0] in0 ;
input  [3:0] in1 ;
input  sel ;
output [3:0] out ;

SAEDHVT14_MUX2_4 U1 ( .D0 ( in0[1] ) , .D1 ( in1[1] ) , .S ( sel ) , 
    .X ( out[1] ) ) ;
SAEDHVT14_MUX2_U_0P5 U2 ( .D0 ( in0[3] ) , .D1 ( in1[3] ) , .S ( sel ) , 
    .X ( out[3] ) ) ;
SAEDHVT14_MUX2_U_0P5 U3 ( .D0 ( in0[2] ) , .D1 ( in1[2] ) , .S ( sel ) , 
    .X ( out[2] ) ) ;
SAEDHVT14_MUX2_U_0P5 U4 ( .D0 ( in0[0] ) , .D1 ( in1[0] ) , .S ( sel ) , 
    .X ( out[0] ) ) ;
endmodule


module half_adder_16 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_17 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_8 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_17 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_16 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_18 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_19 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_9 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_19 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_18 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_20 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_21 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_10 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_21 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_20 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_22 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

assign cout = a ;

SAEDHVT14_INV_0P5 U1 ( .A ( a ) , .X ( sum ) ) ;
endmodule


module half_adder_23 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_11 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_23 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_22 h2 ( .a ( x ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U2 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module ripple_carry_4_bit_2 ( a , b , cin , sum , cout ) ;
input  [3:0] a ;
input  [3:0] b ;
input  cin ;
output [3:0] sum ;
output cout ;

full_adder_11 fa0 ( .a ( a[0] ) , .b ( b[0] ) , .sum ( sum[0] ) , 
    .cout ( c1 ) ) ;
full_adder_10 fa1 ( .a ( a[1] ) , .b ( b[1] ) , .cin ( c1 ) , 
    .sum ( sum[1] ) , .cout ( c2 ) ) ;
full_adder_9 fa2 ( .a ( a[2] ) , .b ( b[2] ) , .cin ( c2 ) , .sum ( sum[2] ) , 
    .cout ( c3 ) ) ;
full_adder_8 fa3 ( .a ( a[3] ) , .b ( b[3] ) , .cin ( c3 ) , .sum ( sum[3] ) , 
    .cout ( cout ) ) ;
endmodule


module half_adder_24 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_25 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_12 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_25 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_24 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_MM_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_26 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_27 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_13 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_27 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_26 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_28 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_29 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_14 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_29 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_28 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_MM_0P5 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module half_adder_30 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

assign sum = a ;
endmodule


module half_adder_31 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module full_adder_15 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_31 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( cout ) ) ;
half_adder_30 h2 ( .a ( x ) , .b ( n1 ) , .sum ( sum ) ) ;
endmodule


module ripple_carry_4_bit_3 ( a , b , cin , sum , cout ) ;
input  [3:0] a ;
input  [3:0] b ;
input  cin ;
output [3:0] sum ;
output cout ;

full_adder_15 fa0 ( .a ( a[0] ) , .b ( b[0] ) , .sum ( sum[0] ) , 
    .cout ( c1 ) ) ;
full_adder_14 fa1 ( .a ( a[1] ) , .b ( b[1] ) , .cin ( c1 ) , 
    .sum ( sum[1] ) , .cout ( c2 ) ) ;
full_adder_13 fa2 ( .a ( a[2] ) , .b ( b[2] ) , .cin ( c2 ) , 
    .sum ( sum[2] ) , .cout ( c3 ) ) ;
full_adder_12 fa3 ( .a ( a[3] ) , .b ( b[3] ) , .cin ( c3 ) , 
    .sum ( sum[3] ) , .cout ( cout ) ) ;
endmodule


module carry_select_adder_4bit_slice_1 ( a , b , cin , sum , cout ) ;
input  [3:0] a ;
input  [3:0] b ;
input  cin ;
output [3:0] sum ;
output cout ;

wire [3:0] s0 ;
wire [3:0] s1 ;

ripple_carry_4_bit_3 rca1 ( .a ( a ) , .b ( b ) , .sum ( s0 ) , .cout ( c0 ) ) ;
ripple_carry_4_bit_2 rca2 ( .a ( a ) , .b ( b ) , .sum ( s1 ) , .cout ( c1 ) ) ;
mux2X1_2 ms0 ( .in0 ( s0 ) , .in1 ( s1 ) , .sel ( copt_net_310 ) , 
    .out ( sum ) ) ;
mux2X1_1_1 mc0 ( .in0 ( c0 ) , .in1 ( c1 ) , .sel ( copt_net_310 ) , 
    .out ( cout ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_5900 ( .A ( copt_net_311 ) , 
    .X ( copt_net_310 ) ) ;
SAEDHVT14_BUF_S_0P5 copt_h_inst_5901 ( .A ( cin ) , .X ( copt_net_311 ) ) ;
endmodule


module half_adder_32 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDHVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( a ) , .B ( cout ) , .X ( sum ) ) ;
endmodule


module half_adder_33 ( a , b , sum , cout ) ;
input  a ;
input  b ;
output sum ;
output cout ;

SAEDRVT14_AN2_MM_0P5 U1 ( .A1 ( b ) , .A2 ( a ) , .X ( cout ) ) ;
SAEDHVT14_OA21B_1 U2 ( .A1 ( b ) , .A2 ( copt_net_281 ) , .B ( cout ) , 
    .X ( sum ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5871 ( .A ( a ) , .X ( copt_net_281 ) ) ;
endmodule


module full_adder_16 ( a , b , cin , sum , cout ) ;
input  a ;
input  b ;
input  cin ;
output sum ;
output cout ;

half_adder_33 h1 ( .a ( a ) , .b ( b ) , .sum ( x ) , .cout ( y ) ) ;
half_adder_32 h2 ( .a ( x ) , .b ( cin ) , .sum ( sum ) , .cout ( z ) ) ;
SAEDHVT14_OR2_MM_16 U1 ( .A1 ( z ) , .A2 ( y ) , .X ( cout ) ) ;
endmodule


module csa_9bit ( a , b , cin , sum , cout ) ;
input  [8:0] a ;
input  [8:0] b ;
input  cin ;
output [8:0] sum ;
output cout ;

wire [1:0] c ;

full_adder_16 fa0 ( .a ( a[0] ) , .b ( b[0] ) , .cin ( cin ) , 
    .sum ( sum[0] ) , .cout ( c[0] ) ) ;
carry_select_adder_4bit_slice_1 csa_slice1 ( .a ( a[4:1] ) , .b ( b[4:1] ) , 
    .cin ( c[0] ) , .sum ( sum[4:1] ) , .cout ( c[1] ) ) ;
carry_select_adder_4bit_slice_0 csa_slice2 ( .a ( a[8:5] ) , .b ( b[8:5] ) , 
    .cin ( c[1] ) , .sum ( sum[8:5] ) ) ;
endmodule


module Add_Sub ( A , Bus , AddSub , ALU_out ) ;
input  [8:0] A ;
input  [8:0] Bus ;
input  AddSub ;
output [8:0] ALU_out ;

wire [8:0] xrout ;

csa_9bit add1 ( .a ( A ) , .b ( xrout ) , .cin ( AddSub ) , .sum ( ALU_out ) ) ;
SAEDHVT14_INV_0P5 U1 ( .A ( AddSub ) , .X ( n1 ) ) ;
SAEDHVT14_MUXI2_U_0P5 U2 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[0] ) , 
    .X ( xrout[0] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U3 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[8] ) , 
    .X ( xrout[8] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U4 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[7] ) , 
    .X ( xrout[7] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U5 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[6] ) , 
    .X ( xrout[6] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U6 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[5] ) , 
    .X ( xrout[5] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U7 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[4] ) , 
    .X ( xrout[4] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U8 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[3] ) , 
    .X ( xrout[3] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U9 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[2] ) , 
    .X ( xrout[2] ) ) ;
SAEDHVT14_MUXI2_U_0P5 U10 ( .D0 ( n1 ) , .D1 ( AddSub ) , .S ( Bus[1] ) , 
    .X ( xrout[1] ) ) ;
endmodule


module mux_10to1 ( R0out , R1out , R2out , R3out , R4out , R5out , R6out , 
    R7out , Gout , DINout , DIN , R0 , R1 , R2 , R3 , R4 , R5 , R6 , R7 , G , 
    Bus ) ;
input  R0out ;
input  R1out ;
input  R2out ;
input  R3out ;
input  R4out ;
input  R5out ;
input  R6out ;
input  R7out ;
input  Gout ;
input  DINout ;
input  [8:0] DIN ;
input  [8:0] R0 ;
input  [8:0] R1 ;
input  [8:0] R2 ;
input  [8:0] R3 ;
input  [8:0] R4 ;
input  [8:0] R5 ;
input  [8:0] R6 ;
input  [8:0] R7 ;
input  [8:0] G ;
output [8:0] Bus ;

SAEDHVT14_LDPQ_U_0P5 Bus_reg_3_ ( .G ( N20 ) , .D ( N24 ) , .Q ( Bus[3] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_8_ ( .G ( N20 ) , .D ( N29 ) , .Q ( Bus[8] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_7_ ( .G ( N20 ) , .D ( N28 ) , .Q ( Bus[7] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_6_ ( .G ( N20 ) , .D ( N27 ) , .Q ( Bus[6] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_5_ ( .G ( N20 ) , .D ( N26 ) , .Q ( Bus[5] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_4_ ( .G ( N20 ) , .D ( N25 ) , .Q ( Bus[4] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_2_ ( .G ( N20 ) , .D ( N23 ) , .Q ( Bus[2] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_1_ ( .G ( N20 ) , .D ( N22 ) , .Q ( Bus[1] ) ) ;
SAEDHVT14_LDPQ_U_0P5 Bus_reg_0_ ( .G ( N20 ) , .D ( N21 ) , .Q ( Bus[0] ) ) ;
SAEDHVT14_AOI22_0P5 U3 ( .A1 ( n72_CDR3 ) , .A2 ( R6[7] ) , .B1 ( n73_CDR3 ) , 
    .B2 ( R2[7] ) , .X ( n35_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U4 ( .A1 ( n76_CDR3 ) , .A2 ( G[0] ) , .B1 ( n77_CDR2 ) , 
    .B2 ( DIN[0] ) , .X ( n84_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U5 ( .A1 ( n81_CDR3 ) , .A2 ( R4[0] ) , .B1 ( n80_CDR3 ) , 
    .B2 ( R3[0] ) , .X ( n82 ) ) ;
SAEDHVT14_AOI22_0P5 U6 ( .A1 ( n75_CDR3 ) , .A2 ( R0[7] ) , .B1 ( n74_CDR3 ) , 
    .B2 ( R5[7] ) , .X ( n33_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U7 ( .A1 ( n72_CDR3 ) , .A2 ( R6[5] ) , .B1 ( n73_CDR3 ) , 
    .B2 ( R2[5] ) , .X ( n47_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U8 ( .A1 ( n78_CDR3 ) , .A2 ( R7[3] ) , .B1 ( n79_CDR3 ) , 
    .B2 ( R1[3] ) , .X ( n55_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U9 ( .A1 ( n75_CDR3 ) , .A2 ( R0[3] ) , .B1 ( n74_CDR3 ) , 
    .B2 ( R5[3] ) , .X ( n57_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U10 ( .A1 ( n72_CDR3 ) , .A2 ( R6[8] ) , 
    .B1 ( n73_CDR3 ) , .B2 ( R2[8] ) , .X ( n29_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U11 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[6] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[6] ) , .X ( n38 ) ) ;
SAEDHVT14_AOI22_0P5 U12 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[7] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[7] ) , .X ( n32 ) ) ;
SAEDHVT14_AOI22_0P5 U13 ( .A1 ( n75_CDR3 ) , .A2 ( R0[6] ) , 
    .B1 ( n74_CDR3 ) , .B2 ( R5[6] ) , .X ( n39 ) ) ;
SAEDHVT14_AOI22_0P5 U14 ( .A1 ( n78_CDR3 ) , .A2 ( R7[0] ) , 
    .B1 ( n79_CDR3 ) , .B2 ( R1[0] ) , .X ( n83_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U15 ( .A1 ( n72_CDR3 ) , .A2 ( R6[0] ) , 
    .B1 ( n73_CDR3 ) , .B2 ( R2[0] ) , .X ( n87 ) ) ;
SAEDHVT14_AOI22_0P5 U16 ( .A1 ( n81_CDR3 ) , .A2 ( R4[3] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[3] ) , .X ( n54 ) ) ;
SAEDHVT14_AOI22_0P5 U17 ( .A1 ( n75_CDR3 ) , .A2 ( R0[8] ) , 
    .B1 ( n74_CDR3 ) , .B2 ( R5[8] ) , .X ( n27_CDR3 ) ) ;
SAEDHVT14_AOI22_0P5 U18 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[3] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[3] ) , .X ( n56_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U19 ( .A1 ( n78_CDR3 ) , .A2 ( R7[7] ) , 
    .B1 ( n79_CDR3 ) , .B2 ( R1[7] ) , .X ( n31_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U20 ( .A1 ( n81_CDR3 ) , .A2 ( R4[2] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[2] ) , .X ( n60 ) ) ;
SAEDHVT14_AOI22_0P5 U21 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[8] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[8] ) , .X ( n26 ) ) ;
SAEDHVT14_AOI22_0P5 U22 ( .A1 ( n74_CDR3 ) , .A2 ( R5[0] ) , 
    .B1 ( n75_CDR3 ) , .B2 ( R0[0] ) , .X ( n85_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U23 ( .A1 ( n75_CDR3 ) , .A2 ( R0[2] ) , 
    .B1 ( n74_CDR3 ) , .B2 ( R5[2] ) , .X ( n63_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U24 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[5] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[5] ) , .X ( n44 ) ) ;
SAEDHVT14_AOI22_0P5 U25 ( .A1 ( n78_CDR3 ) , .A2 ( R7[8] ) , 
    .B1 ( n79_CDR3 ) , .B2 ( R1[8] ) , .X ( n25_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U26 ( .A1 ( n73_CDR3 ) , .A2 ( R2[6] ) , 
    .B1 ( n72_CDR3 ) , .B2 ( R6[6] ) , .X ( n41 ) ) ;
SAEDHVT14_AOI22_0P5 U27 ( .A1 ( n78_CDR3 ) , .A2 ( R7[2] ) , 
    .B1 ( n79_CDR3 ) , .B2 ( R1[2] ) , .X ( n61_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U28 ( .A1 ( n73_CDR3 ) , .A2 ( R2[1] ) , 
    .B1 ( n72_CDR3 ) , .B2 ( R6[1] ) , .X ( n71 ) ) ;
SAEDHVT14_AOI22_0P5 U29 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[4] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[4] ) , .X ( n50 ) ) ;
SAEDHVT14_AOI22_0P5 U30 ( .A1 ( n78_CDR3 ) , .A2 ( R7[6] ) , 
    .B1 ( n79_CDR3 ) , .B2 ( R1[6] ) , .X ( n37 ) ) ;
SAEDHVT14_AOI22_0P5 U31 ( .A1 ( n75_CDR3 ) , .A2 ( R0[4] ) , 
    .B1 ( n74_CDR3 ) , .B2 ( R5[4] ) , .X ( n51_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U32 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[2] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[2] ) , .X ( n62_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U33 ( .A1 ( n81_CDR3 ) , .A2 ( R4[1] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[1] ) , .X ( n66 ) ) ;
SAEDHVT14_AOI22_0P5 U34 ( .A1 ( n73_CDR3 ) , .A2 ( R2[2] ) , 
    .B1 ( n72_CDR3 ) , .B2 ( R6[2] ) , .X ( n65 ) ) ;
SAEDHVT14_AOI22_0P5 U35 ( .A1 ( n81_CDR3 ) , .A2 ( R4[8] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[8] ) , .X ( n24 ) ) ;
SAEDHVT14_AOI22_0P5 U36 ( .A1 ( n79_CDR3 ) , .A2 ( R1[5] ) , 
    .B1 ( n78_CDR3 ) , .B2 ( R7[5] ) , .X ( n43_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U37 ( .A1 ( n75_CDR3 ) , .A2 ( R0[1] ) , 
    .B1 ( n74_CDR3 ) , .B2 ( R5[1] ) , .X ( n69_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U38 ( .A1 ( n79_CDR3 ) , .A2 ( R1[1] ) , 
    .B1 ( n78_CDR3 ) , .B2 ( R7[1] ) , .X ( n67_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U39 ( .A1 ( n81_CDR3 ) , .A2 ( R4[7] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[7] ) , .X ( n30 ) ) ;
SAEDHVT14_AOI22_0P5 U40 ( .A1 ( n73_CDR3 ) , .A2 ( R2[4] ) , 
    .B1 ( n72_CDR3 ) , .B2 ( R6[4] ) , .X ( n53 ) ) ;
SAEDHVT14_AOI22_0P5 U41 ( .A1 ( n73_CDR3 ) , .A2 ( R2[3] ) , 
    .B1 ( n72_CDR3 ) , .B2 ( R6[3] ) , .X ( n59 ) ) ;
SAEDHVT14_AOI22_0P5 U42 ( .A1 ( n77_CDR2 ) , .A2 ( DIN[1] ) , 
    .B1 ( n76_CDR3 ) , .B2 ( G[1] ) , .X ( n68_CDR2 ) ) ;
SAEDHVT14_AOI22_0P5 U43 ( .A1 ( n78_CDR3 ) , .A2 ( R7[4] ) , 
    .B1 ( n79_CDR3 ) , .B2 ( R1[4] ) , .X ( n49_CDR1 ) ) ;
SAEDHVT14_AOI22_0P5 U44 ( .A1 ( n81_CDR3 ) , .A2 ( R4[4] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[4] ) , .X ( n48 ) ) ;
SAEDHVT14_AOI22_0P5 U45 ( .A1 ( n81_CDR3 ) , .A2 ( R4[5] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[5] ) , .X ( n42 ) ) ;
SAEDHVT14_AOI22_0P5 U46 ( .A1 ( n81_CDR3 ) , .A2 ( R4[6] ) , 
    .B1 ( n80_CDR3 ) , .B2 ( R3[6] ) , .X ( n36 ) ) ;
SAEDHVT14_AOI22_0P5 U47 ( .A1 ( n75_CDR3 ) , .A2 ( R0[5] ) , 
    .B1 ( n74_CDR3 ) , .B2 ( R5[5] ) , .X ( n45_CDR1 ) ) ;
SAEDHVT14_NR2_MM_0P5 U48 ( .A1 ( n2 ) , .A2 ( n6 ) , .X ( n18 ) ) ;
SAEDHVT14_INV_0P5 U49 ( .A ( n9 ) , .X ( n11 ) ) ;
SAEDHVT14_NR2_MM_0P5 U50 ( .A1 ( R7out ) , .A2 ( n19 ) , .X ( n21 ) ) ;
SAEDHVT14_NR2_MM_0P5 U51 ( .A1 ( R1out ) , .A2 ( n9 ) , .X ( n4 ) ) ;
SAEDHVT14_INV_0P5 U52 ( .A ( n19 ) , .X ( n13 ) ) ;
SAEDHVT14_NR2_MM_0P5 U53 ( .A1 ( n7 ) , .A2 ( n6 ) , .X ( n16 ) ) ;
SAEDHVT14_INV_0P5 U54 ( .A ( R4out ) , .X ( n15 ) ) ;
SAEDHVT14_INV_0P5 U55 ( .A ( R0out ) , .X ( n8 ) ) ;
SAEDHVT14_INV_0P5 U56 ( .A ( R5out ) , .X ( n5 ) ) ;
SAEDHVT14_INV_0P5 U57 ( .A ( R3out ) , .X ( n3 ) ) ;
SAEDHVT14_NR2_MM_0P5 U58 ( .A1 ( R2out ) , .A2 ( R3out ) , .X ( n10 ) ) ;
SAEDHVT14_INV_0P5 U59 ( .A ( R6out ) , .X ( n17 ) ) ;
SAEDHVT14_OR3_0P5 U60 ( .A1 ( R7out ) , .A2 ( Gout ) , .A3 ( DINout ) , 
    .X ( n1 ) ) ;
SAEDHVT14_NR2_MM_0P5 U61 ( .A1 ( Gout ) , .A2 ( DINout ) , .X ( n14 ) ) ;
SAEDHVT14_INV_0P5 U62 ( .A ( DINout ) , .X ( n20 ) ) ;
SAEDHVT14_AN3_0P5 U63 ( .A1 ( Gout ) , .A2 ( n21 ) , .A3 ( n20 ) , 
    .X ( n76_CDR3 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U64 ( .A1 ( n8 ) , .A2 ( n15 ) , .X ( n2 ) ) ;
SAEDHVT14_OR4_1 U65 ( .A1 ( R2out ) , .A2 ( R3out ) , .A3 ( R1out ) , 
    .A4 ( n1 ) , .X ( n6 ) ) ;
SAEDHVT14_AN3_0P5 U66 ( .A1 ( R6out ) , .A2 ( n18 ) , .A3 ( n5 ) , 
    .X ( n72_CDR3 ) ) ;
SAEDHVT14_OR4_1 U67 ( .A1 ( R5out ) , .A2 ( R6out ) , .A3 ( R0out ) , 
    .A4 ( R4out ) , .X ( n12 ) ) ;
SAEDHVT14_OR4_1 U68 ( .A1 ( R7out ) , .A2 ( Gout ) , .A3 ( DINout ) , 
    .A4 ( n12 ) , .X ( n9 ) ) ;
SAEDHVT14_NR3B_U_0P5 U69 ( .A ( n4 ) , .B1 ( n3 ) , .B2 ( R2out ) , 
    .X ( n80_CDR3 ) ) ;
SAEDHVT14_AN3_0P5 U70 ( .A1 ( R2out ) , .A2 ( n4 ) , .A3 ( n3 ) , 
    .X ( n73_CDR3 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U71 ( .A1 ( n5 ) , .A2 ( n17 ) , .X ( n7 ) ) ;
SAEDHVT14_AN3_0P5 U72 ( .A1 ( R4out ) , .A2 ( n16 ) , .A3 ( n8 ) , 
    .X ( n81_CDR3 ) ) ;
SAEDHVT14_AN3_0P5 U73 ( .A1 ( R1out ) , .A2 ( n11 ) , .A3 ( n10 ) , 
    .X ( n79_CDR3 ) ) ;
SAEDHVT14_OR4_1 U74 ( .A1 ( R2out ) , .A2 ( R3out ) , .A3 ( R1out ) , 
    .A4 ( n12 ) , .X ( n19 ) ) ;
SAEDHVT14_AN3_0P5 U75 ( .A1 ( R7out ) , .A2 ( n14 ) , .A3 ( n13 ) , 
    .X ( n78_CDR3 ) ) ;
SAEDHVT14_OR4_1 U76 ( .A1 ( n79_CDR3 ) , .A2 ( n78_CDR3 ) , .A3 ( n77_CDR2 ) , 
    .A4 ( n76_CDR3 ) , .X ( n23_CDR3 ) ) ;
SAEDHVT14_AN3_0P5 U77 ( .A1 ( R0out ) , .A2 ( n16 ) , .A3 ( n15 ) , 
    .X ( n75_CDR3 ) ) ;
SAEDHVT14_AN3_0P5 U78 ( .A1 ( R5out ) , .A2 ( n18 ) , .A3 ( n17 ) , 
    .X ( n74_CDR3 ) ) ;
SAEDHVT14_NR3B_U_0P5 U79 ( .A ( n21 ) , .B1 ( n20 ) , .B2 ( Gout ) , 
    .X ( n77_CDR2 ) ) ;
SAEDHVT14_OR4_1 U80 ( .A1 ( n75_CDR3 ) , .A2 ( n81_CDR3 ) , .A3 ( n80_CDR3 ) , 
    .A4 ( n73_CDR3 ) , .X ( n22_CDR3 ) ) ;
SAEDHVT14_OR4_1 U81 ( .A1 ( n74_CDR3 ) , .A2 ( n72_CDR3 ) , .A3 ( n23_CDR3 ) , 
    .A4 ( n22_CDR3 ) , .X ( N20 ) ) ;
SAEDHVT14_AN4_0P75 U82 ( .A1 ( n27_CDR3 ) , .A2 ( n26 ) , .A3 ( n25_CDR2 ) , 
    .A4 ( n24 ) , .X ( n28_CDR2 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U83 ( .A1 ( n29_CDR2 ) , .A2 ( n28_CDR2 ) , .X ( N29 ) ) ;
SAEDHVT14_AN4_0P75 U84 ( .A1 ( n33_CDR2 ) , .A2 ( n32 ) , .A3 ( n31_CDR2 ) , 
    .A4 ( n30 ) , .X ( n34_CDR2 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U85 ( .A1 ( n35_CDR2 ) , .A2 ( n34_CDR2 ) , .X ( N28 ) ) ;
SAEDHVT14_AN4_0P75 U86 ( .A1 ( n39 ) , .A2 ( n38 ) , .A3 ( n37 ) , 
    .A4 ( n36 ) , .X ( n40 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U87 ( .A1 ( n41 ) , .A2 ( n40 ) , .X ( N27 ) ) ;
SAEDHVT14_AN4_0P75 U88 ( .A1 ( n45_CDR1 ) , .A2 ( n44 ) , .A3 ( n43_CDR1 ) , 
    .A4 ( n42 ) , .X ( n46_CDR1 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U89 ( .A1 ( n47_CDR1 ) , .A2 ( n46_CDR1 ) , .X ( N26 ) ) ;
SAEDHVT14_AN4_0P75 U90 ( .A1 ( n51_CDR1 ) , .A2 ( n50 ) , .A3 ( n49_CDR1 ) , 
    .A4 ( n48 ) , .X ( n52 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U91 ( .A1 ( n53 ) , .A2 ( n52 ) , .X ( N25 ) ) ;
SAEDHVT14_AN4_0P75 U92 ( .A1 ( n57_CDR2 ) , .A2 ( n56_CDR2 ) , 
    .A3 ( n55_CDR1 ) , .A4 ( n54 ) , .X ( n58 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U93 ( .A1 ( n59 ) , .A2 ( n58 ) , .X ( N24 ) ) ;
SAEDHVT14_AN4_0P75 U94 ( .A1 ( n63_CDR2 ) , .A2 ( n62_CDR2 ) , 
    .A3 ( n61_CDR1 ) , .A4 ( n60 ) , .X ( n64 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U95 ( .A1 ( n65 ) , .A2 ( n64 ) , .X ( N23 ) ) ;
SAEDHVT14_AN4_0P75 U96 ( .A1 ( n69_CDR2 ) , .A2 ( n68_CDR2 ) , 
    .A3 ( n67_CDR1 ) , .A4 ( n66 ) , .X ( n70 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U97 ( .A1 ( n71 ) , .A2 ( n70 ) , .X ( N22 ) ) ;
SAEDHVT14_AN4_0P75 U98 ( .A1 ( n85_CDR2 ) , .A2 ( n84_CDR1 ) , 
    .A3 ( n83_CDR2 ) , .A4 ( n82 ) , .X ( n86 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U99 ( .A1 ( n87 ) , .A2 ( n86 ) , .X ( N21 ) ) ;
endmodule


module datapath_register_array ( R0out , R1out , R2out , R3out , R4out , 
    R5out , R6out , R7out , Gout , DINout , Clock , rst , R0in , R1in , R2in , 
    R3in , R4in , R5in , R6in , R7in , Ain , Bus , DIN , AddSub , Gin , 
    ZBUF_236_0 , p_abuf0 , p_abuf1 , p_abuf2 ) ;
input  R0out ;
input  R1out ;
input  R2out ;
input  R3out ;
input  R4out ;
input  R5out ;
input  R6out ;
input  R7out ;
input  Gout ;
input  DINout ;
input  Clock ;
input  rst ;
input  R0in ;
input  R1in ;
input  R2in ;
input  R3in ;
input  R4in ;
input  R5in ;
input  R6in ;
input  R7in ;
input  Ain ;
output [8:0] Bus ;
input  [8:0] DIN ;
input  AddSub ;
input  Gin ;
input  ZBUF_236_0 ;
input  p_abuf0 ;
input  p_abuf1 ;
input  p_abuf2 ;

wire [8:0] R0_data_out ;
wire [8:0] R1_data_out ;
wire [8:0] R2_data_out ;
wire [8:0] R3_data_out ;
wire [8:0] R4_data_out ;
wire [8:0] R5_data_out ;
wire [8:0] R6_data_out ;
wire [8:0] R7_data_out ;
wire [8:0] G ;
wire [8:0] A_data_out ;
wire [8:0] Sum ;

mux_10to1 m1 ( .R0out ( R0out ) , .R1out ( R1out ) , .R2out ( R2out ) , 
    .R3out ( R3out ) , .R4out ( R4out ) , .R5out ( R5out ) , 
    .R6out ( R6out ) , .R7out ( R7out ) , .Gout ( Gout ) , 
    .DINout ( DINout ) , .DIN ( DIN ) , .R0 ( R0_data_out ) , 
    .R1 ( R1_data_out ) , .R2 ( R2_data_out ) , .R3 ( R3_data_out ) , 
    .R4 ( R4_data_out ) , .R5 ( R5_data_out ) , .R6 ( R6_data_out ) , 
    .R7 ( R7_data_out ) , .G ( G ) ,
    .Bus ( { Bus[8] , Bus[7] , Bus[6] , Bus[5] , Bus[4] , Bus[3] , Bus[2] , 
        Bus[1] , aps_rename_5356_ } ) ) ;
Add_Sub add_top ( .A ( A_data_out ) ,
    .Bus ( { Bus[8] , Bus[7] , ZBUF_236_0 , Bus[5] , Bus[4] , HFSNET_5 , 
        HFSNET_7 , Bus[1] , Bus[0] } ) ,
    .AddSub ( AddSub ) , .ALU_out ( Sum ) ) ;
reg_G g2 ( .Sum ( Sum ) , .Gin ( Gin ) , .Clock ( Clock ) , 
    .rst ( HFSNET_0 ) , .Z ( G ) , .p_abuf0 ( p_abuf1 ) ) ;
Register_8 Reg0 ( .Clock ( p_abuf0 ) , .dout ( R0_data_out ) ,
    .din ( { Bus[8] , Bus[7] , Bus[6] , Bus[5] , HFSNET_3 , Bus[3] , Bus[2] , 
        Bus[1] , Bus[0] } ) ,
    .EN ( R0in ) , .rst ( HFSNET_1 ) , .p_abuf0 ( p_abuf1 ) ) ;
Register_7 Reg1 ( .Clock ( p_abuf1 ) , .dout ( R1_data_out ) ,
    .din ( { HFSNET_2 , Bus[7] , Bus[6] , Bus[5] , HFSNET_3 , Bus[3] , 
        Bus[2] , Bus[1] , Bus[0] } ) ,
    .EN ( R1in ) , .rst ( HFSNET_1 ) , .p_abuf0 ( p_abuf2 ) ) ;
Register_6 Reg2 ( .Clock ( Clock ) , .dout ( R2_data_out ) ,
    .din ( { Bus[8] , Bus[7] , ZBUF_236_0 , Bus[5] , Bus[4] , Bus[3] , 
        Bus[2] , Bus[1] , aps_rename_5356_ } ) ,
    .EN ( R2in ) , .rst ( rst ) , .p_abuf0 ( p_abuf0 ) ) ;
Register_5 Reg3 ( .Clock ( Clock ) , .dout ( R3_data_out ) ,
    .din ( { HFSNET_2 , Bus[7] , Bus[6] , Bus[5] , Bus[4] , HFSNET_5 , 
        HFSNET_7 , Bus[1] , Bus[0] } ) ,
    .EN ( R3in ) , .rst ( HFSNET_0 ) , .HFSNET_0 ( HFSNET_1 ) , 
    .HFSNET_1 ( rst ) , .p_abuf0 ( p_abuf0 ) , .p_abuf1 ( p_abuf1 ) ) ;
Register_4 Reg4 ( .Clock ( Clock ) , .dout ( R4_data_out ) ,
    .din ( { HFSNET_2 , Bus[7] , Bus[6] , Bus[5] , Bus[4] , Bus[3] , Bus[2] , 
        Bus[1] , Bus[0] } ) ,
    .EN ( R4in ) , .rst ( HFSNET_0 ) , .HFSNET_0 ( HFSNET_1 ) , 
    .HFSNET_1 ( rst ) , .p_abuf0 ( p_abuf0 ) , .p_abuf1 ( p_abuf1 ) ) ;
Register_3 Reg5 ( .Clock ( p_abuf0 ) , .dout ( R5_data_out ) ,
    .din ( { Bus[8] , Bus[7] , Bus[6] , Bus[5] , Bus[4] , Bus[3] , Bus[2] , 
        Bus[1] , aps_rename_5356_ } ) ,
    .EN ( R5in ) , .rst ( rst ) ) ;
Register_2 Reg6 ( .Clock ( Clock ) , .dout ( R6_data_out ) ,
    .din ( { Bus[8] , Bus[7] , ZBUF_236_0 , Bus[5] , Bus[4] , Bus[3] , 
        Bus[2] , Bus[1] , aps_rename_5356_ } ) ,
    .EN ( R6in ) , .rst ( rst ) , .p_abuf0 ( p_abuf0 ) ) ;
Register_1 Reg7 ( .Clock ( p_abuf1 ) , .dout ( R7_data_out ) ,
    .din ( { HFSNET_2 , Bus[7] , Bus[6] , Bus[5] , HFSNET_3 , Bus[3] , 
        Bus[2] , Bus[1] , Bus[0] } ) ,
    .EN ( R7in ) , .rst ( HFSNET_1 ) , .p_abuf0 ( p_abuf2 ) ) ;
Register_0 A5 ( .Clock ( Clock ) , .dout ( A_data_out ) ,
    .din ( { Bus[8] , Bus[7] , ZBUF_236_0 , Bus[5] , Bus[4] , HFSNET_5 , 
        HFSNET_7 , Bus[1] , Bus[0] } ) ,
    .EN ( Ain ) , .rst ( HFSNET_0 ) ) ;
SAEDHVT14_BUF_UCDC_0P5 HFSBUF_335_1 ( .A ( rst ) , .X ( HFSNET_0 ) ) ;
SAEDHVT14_BUF_UCDC_0P5 HFSBUF_753_2 ( .A ( rst ) , .X ( HFSNET_1 ) ) ;
SAEDRVT14_BUF_1 HFSBUF_206_3 ( .A ( Bus[8] ) , .X ( HFSNET_2 ) ) ;
SAEDRVT14_BUF_1 HFSBUF_235_4 ( .A ( Bus[4] ) , .X ( HFSNET_3 ) ) ;
SAEDHVT14_BUF_UCDC_0P5 HFSBUF_277_5 ( .A ( aps_rename_5356_ ) , 
    .X ( Bus[0] ) ) ;
SAEDRVT14_BUF_1 HFSBUF_122_6 ( .A ( Bus[3] ) , .X ( HFSNET_5 ) ) ;
SAEDRVT14_BUF_1 HFSBUF_113_8 ( .A ( Bus[2] ) , .X ( HFSNET_7 ) ) ;
endmodule


module dec3to8_3bit ( W , Y ) ;
input  [2:0] W ;
output [2:0] Y ;

assign Y[2] = W[2] ;
assign Y[1] = W[1] ;
assign Y[0] = W[0] ;
endmodule


module dec3to8_0 ( W , Y ) ;
input  [2:0] W ;
output [9:0] Y ;

SAEDHVT14_NR2_MM_0P5 U3 ( .A1 ( W[0] ) , .A2 ( n5 ) , .X ( Y[9] ) ) ;
SAEDHVT14_NR2_MM_0P5 U4 ( .A1 ( W[0] ) , .A2 ( n7 ) , .X ( Y[5] ) ) ;
SAEDHVT14_NR2_MM_0P5 U5 ( .A1 ( W[0] ) , .A2 ( n1 ) , .X ( Y[7] ) ) ;
SAEDHVT14_INV_0P5 U6 ( .A ( W[0] ) , .X ( n6 ) ) ;
SAEDHVT14_INV_0P5 U7 ( .A ( W[2] ) , .X ( n3 ) ) ;
SAEDHVT14_AN3_0P5 U8 ( .A1 ( W[0] ) , .A2 ( W[1] ) , .A3 ( W[2] ) , 
    .X ( Y[2] ) ) ;
SAEDRVT14_ND2_CDC_0P5 U9 ( .A1 ( W[1] ) , .A2 ( W[2] ) , .X ( n2 ) ) ;
SAEDHVT14_INV_0P5 U10 ( .A ( W[1] ) , .X ( n4 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U11 ( .A1 ( n4 ) , .A2 ( n3 ) , .X ( n5 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U12 ( .A1 ( W[1] ) , .A2 ( n3 ) , .X ( n1 ) ) ;
SAEDHVT14_NR2_MM_0P5 U13 ( .A1 ( n6 ) , .A2 ( n1 ) , .X ( Y[6] ) ) ;
SAEDHVT14_NR2_MM_0P5 U14 ( .A1 ( W[0] ) , .A2 ( n2 ) , .X ( Y[3] ) ) ;
SAEDRVT14_ND2_CDC_0P5 U15 ( .A1 ( W[2] ) , .A2 ( n4 ) , .X ( n7 ) ) ;
SAEDHVT14_NR2_MM_0P5 U16 ( .A1 ( n6 ) , .A2 ( n7 ) , .X ( Y[4] ) ) ;
SAEDHVT14_NR2_MM_0P5 U17 ( .A1 ( n6 ) , .A2 ( n5 ) , .X ( Y[8] ) ) ;
endmodule


module dec3to8_1 ( W , Y ) ;
input  [2:0] W ;
output [9:0] Y ;

SAEDHVT14_NR2_MM_0P5 U3 ( .A1 ( W[0] ) , .A2 ( n5 ) , .X ( Y[9] ) ) ;
SAEDHVT14_NR2_MM_0P5 U4 ( .A1 ( W[0] ) , .A2 ( n2 ) , .X ( Y[7] ) ) ;
SAEDHVT14_NR2_MM_0P5 U5 ( .A1 ( W[0] ) , .A2 ( n7 ) , .X ( Y[5] ) ) ;
SAEDRVT14_ND2_CDC_0P5 U6 ( .A1 ( W[1] ) , .A2 ( W[2] ) , .X ( n1 ) ) ;
SAEDHVT14_AN3_0P5 U7 ( .A1 ( W[0] ) , .A2 ( W[1] ) , .A3 ( W[2] ) , 
    .X ( Y[2] ) ) ;
SAEDHVT14_INV_0P5 U8 ( .A ( W[0] ) , .X ( n6 ) ) ;
SAEDHVT14_INV_0P5 U9 ( .A ( W[1] ) , .X ( n4 ) ) ;
SAEDHVT14_INV_0P5 U10 ( .A ( W[2] ) , .X ( n3 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U11 ( .A1 ( W[1] ) , .A2 ( n3 ) , .X ( n2 ) ) ;
SAEDHVT14_NR2_MM_0P5 U12 ( .A1 ( n6 ) , .A2 ( n2 ) , .X ( Y[6] ) ) ;
SAEDHVT14_NR2_MM_0P5 U13 ( .A1 ( W[0] ) , .A2 ( n1 ) , .X ( Y[3] ) ) ;
SAEDRVT14_ND2_CDC_0P5 U14 ( .A1 ( W[2] ) , .A2 ( n4 ) , .X ( n7 ) ) ;
SAEDHVT14_NR2_MM_0P5 U15 ( .A1 ( n6 ) , .A2 ( n7 ) , .X ( Y[4] ) ) ;
SAEDRVT14_ND2_CDC_0P5 U16 ( .A1 ( n4 ) , .A2 ( n3 ) , .X ( n5 ) ) ;
SAEDHVT14_NR2_MM_0P5 U17 ( .A1 ( n6 ) , .A2 ( n5 ) , .X ( Y[8] ) ) ;
endmodule


module controller_new ( DIN , Run , Resetn , Clock , Done , R0out , R1out , 
    R2out , R3out , R4out , R5out , R6out , R7out , Gout , DINout , LdR0 , 
    LdR1 , LdR2 , LdR3 , LdR4 , LdR5 , LdR6 , LdR7 , LdA , LdG , Add_sub ) ;
input  [8:0] DIN ;
input  Run ;
input  Resetn ;
input  Clock ;
output Done ;
output R0out ;
output R1out ;
output R2out ;
output R3out ;
output R4out ;
output R5out ;
output R6out ;
output R7out ;
output Gout ;
output DINout ;
output LdR0 ;
output LdR1 ;
output LdR2 ;
output LdR3 ;
output LdR4 ;
output LdR5 ;
output LdR6 ;
output LdR7 ;
output LdA ;
output LdG ;
output Add_sub ;

wire [8:0] IR ;
wire [9:2] Xreg ;
wire [9:2] Yreg ;
wire [2:0] opcode_decoded ;
wire [3:0] PS ;
wire [2:0] opcode ;

dec3to8_1 Z1 ( .W ( IR[5:3] ) ,
    .Y ( { Xreg[9] , Xreg[8] , Xreg[7] , Xreg[6] , Xreg[5] , Xreg[4] , 
        Xreg[3] , Xreg[2] , SYNOPSYS_UNCONNECTED_1 , SYNOPSYS_UNCONNECTED_2 } ) ) ;
dec3to8_0 Z2 ( .W ( IR[2:0] ) ,
    .Y ( { Yreg[9] , Yreg[8] , Yreg[7] , Yreg[6] , Yreg[5] , Yreg[4] , 
        Yreg[3] , Yreg[2] , SYNOPSYS_UNCONNECTED_3 , SYNOPSYS_UNCONNECTED_4 } ) ) ;
dec3to8_3bit Z3 ( .W ( IR[8:6] ) , .Y ( opcode_decoded ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR3_reg ( .G ( N132 ) , .D ( N136 ) , .Q ( LdR3 ) ) ;
SAEDHVT14_LDPQ_U_0P5 R2out_reg ( .G ( N149 ) , .D ( N153 ) , .Q ( R2out ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_6_ ( .G ( N145 ) , .D ( DIN[6] ) , .Q ( IR[6] ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_7_ ( .G ( N145 ) , .D ( DIN[7] ) , .Q ( IR[7] ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_8_ ( .G ( N145 ) , .D ( DIN[8] ) , .Q ( IR[8] ) ) ;
SAEDHVT14_LDPQ_U_0P5 IRin_reg ( .G ( N144 ) , .D ( n30 ) , .Q ( IRin ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdA_reg ( .G ( N141 ) , .D ( N142 ) , .Q ( LdA ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdG_reg ( .G ( N141 ) , .D ( N143 ) , .Q ( LdG ) ) ;
SAEDHVT14_LDPQ_U_0P5 Gout_reg ( .G ( N149 ) , .D ( N159 ) , .Q ( Gout ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_5_ ( .G ( N145 ) , .D ( DIN[5] ) , .Q ( IR[5] ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_4_ ( .G ( N145 ) , .D ( DIN[4] ) , .Q ( IR[4] ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_3_ ( .G ( N145 ) , .D ( DIN[3] ) , .Q ( IR[3] ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR7_reg ( .G ( N132 ) , .D ( N140 ) , .Q ( LdR7 ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR6_reg ( .G ( N132 ) , .D ( N139 ) , .Q ( LdR6 ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR5_reg ( .G ( N132 ) , .D ( N138 ) , .Q ( LdR5 ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR4_reg ( .G ( N132 ) , .D ( N137 ) , .Q ( LdR4 ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR2_reg ( .G ( N132 ) , .D ( N135 ) , .Q ( LdR2 ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR1_reg ( .G ( N132 ) , .D ( N134 ) , .Q ( LdR1 ) ) ;
SAEDHVT14_LDPQ_U_0P5 LdR0_reg ( .G ( N132 ) , .D ( N133 ) , .Q ( LdR0 ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_2_ ( .G ( N145 ) , .D ( DIN[2] ) , .Q ( IR[2] ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_1_ ( .G ( N145 ) , .D ( DIN[1] ) , .Q ( IR[1] ) ) ;
SAEDHVT14_LDPQ_U_0P5 IR_reg_0_ ( .G ( N145 ) , .D ( DIN[0] ) , .Q ( IR[0] ) ) ;
SAEDHVT14_LDPQ_U_0P5 R7out_reg ( .G ( N149 ) , .D ( N158 ) , .Q ( R7out ) ) ;
SAEDHVT14_LDPQ_U_0P5 R6out_reg ( .G ( N149 ) , .D ( N157 ) , .Q ( R6out ) ) ;
SAEDHVT14_LDPQ_U_0P5 R5out_reg ( .G ( N149 ) , .D ( N156 ) , .Q ( R5out ) ) ;
SAEDHVT14_LDPQ_U_0P5 Done_reg ( .G ( N146 ) , .D ( N147 ) , .Q ( Done ) ) ;
SAEDHVT14_LDPQ_U_0P5 Add_sub_reg ( .G ( N148 ) , .D ( n31 ) , .Q ( Add_sub ) ) ;
SAEDHVT14_LDPQ_U_0P5 DINout_reg ( .G ( N149 ) , .D ( N150 ) , .Q ( DINout ) ) ;
SAEDHVT14_LDPQ_U_0P5 R0out_reg ( .G ( N149 ) , .D ( N151 ) , .Q ( R0out ) ) ;
SAEDHVT14_LDPQ_U_0P5 R1out_reg ( .G ( N149 ) , .D ( N152 ) , .Q ( R1out ) ) ;
SAEDHVT14_LDPQ_U_0P5 R3out_reg ( .G ( N149 ) , .D ( N154 ) , .Q ( R3out ) ) ;
SAEDHVT14_LDPQ_U_0P5 R4out_reg ( .G ( N149 ) , .D ( N155 ) , .Q ( R4out ) ) ;
SAEDHVT14_FDP_V2LP_0P5 opcode_reg_2_ ( .D ( copt_net_41 ) , .CK ( Clock ) , 
    .Q ( opcode[2] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 opcode_reg_0_ ( .D ( ropt_net_318 ) , .CK ( Clock ) , 
    .Q ( opcode[0] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 opcode_reg_1_ ( .D ( n27 ) , .CK ( Clock ) , 
    .Q ( opcode[1] ) ) ;
SAEDHVT14_FDP_V2LP_0P5 PS_reg_2_ ( .D ( N33 ) , .CK ( Clock ) , .Q ( PS[2] ) , 
    .QN ( n24 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 PS_reg_1_ ( .D ( N32 ) , .CK ( Clock ) , .Q ( PS[1] ) , 
    .QN ( n26 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 PS_reg_3_ ( .D ( N34 ) , .CK ( Clock ) , .Q ( PS[3] ) , 
    .QN ( n25 ) ) ;
SAEDHVT14_FDP_V2LP_0P5 PS_reg_0_ ( .D ( copt_net_298 ) , .CK ( Clock ) , 
    .Q ( PS[0] ) ) ;
SAEDHVT14_AN2_MM_0P5 U3 ( .A1 ( Xreg[4] ) , .A2 ( N147 ) , .X ( N138 ) ) ;
SAEDHVT14_AN2_MM_0P5 U4 ( .A1 ( Xreg[8] ) , .A2 ( N147 ) , .X ( N134 ) ) ;
SAEDHVT14_AN2_MM_0P5 U5 ( .A1 ( Xreg[6] ) , .A2 ( N147 ) , .X ( N136 ) ) ;
SAEDHVT14_INV_0P5 U6 ( .A ( N146 ) , .X ( n5 ) ) ;
SAEDHVT14_AN2_MM_0P5 U7 ( .A1 ( Xreg[3] ) , .A2 ( N147 ) , .X ( N139 ) ) ;
SAEDHVT14_AN3_0P5 U8 ( .A1 ( n8 ) , .A2 ( n19 ) , .A3 ( n3 ) , .X ( n4 ) ) ;
SAEDHVT14_ND3B_0P75 U9 ( .A ( N148 ) , .B1 ( n12 ) , .B2 ( n19 ) , 
    .X ( N141 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U10 ( .A1 ( n8 ) , .A2 ( copt_net_288 ) , .X ( n11 ) ) ;
SAEDRVT14_INV_0P5 U11 ( .A ( n6 ) , .X ( n23 ) ) ;
SAEDHVT14_INV_0P5 U12 ( .A ( n1 ) , .X ( n15 ) ) ;
SAEDHVT14_INV_0P5 U13 ( .A ( N142 ) , .X ( n20 ) ) ;
SAEDRVT14_INV_S_0P5 U14 ( .A ( copt_net_228 ) , .X ( N145 ) ) ;
SAEDLVT14_INV_20 U15 ( .A ( n14 ) , .X ( N143 ) ) ;
SAEDHVT14_NR2_MM_0P5 U16 ( .A1 ( PS[0] ) , .A2 ( PS[2] ) , .X ( n2 ) ) ;
SAEDHVT14_AN4_0P75 U17 ( .A1 ( PS[0] ) , .A2 ( n26 ) , .A3 ( n25 ) , 
    .A4 ( n24 ) , .X ( n30 ) ) ;
SAEDHVT14_NR3B_U_0P5 U18 ( .A ( copt_net_225 ) , .B1 ( copt_net_230 ) , 
    .B2 ( opcode[2] ) , .X ( n31 ) ) ;
SAEDRVT14_NR2_1 U19 ( .A1 ( copt_net_225 ) , .A2 ( copt_net_230 ) , 
    .X ( n21 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U20 ( .A1 ( copt_net_225 ) , .A2 ( copt_net_230 ) , 
    .X ( n9 ) ) ;
SAEDHVT14_INV_0P5 HFSINV_905_0 ( .A ( Resetn ) , .X ( HFSNET_0 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U22 ( .A1 ( n16 ) , .A2 ( n9 ) , .X ( n1 ) ) ;
SAEDHVT14_NR3_8 U23 ( .A1 ( copt_net_286 ) , .A2 ( HFSNET_0 ) , .A3 ( n21 ) , 
    .X ( N33 ) ) ;
SAEDHVT14_OAI21_0P5 U24 ( .A1 ( n9 ) , .A2 ( n10 ) , .B ( n4 ) , .X ( N146 ) ) ;
SAEDHVT14_OAI21_0P5 U25 ( .A1 ( n23 ) , .A2 ( n9 ) , .B ( n5 ) , .X ( N132 ) ) ;
SAEDHVT14_AN3_0P5 U26 ( .A1 ( PS[1] ) , .A2 ( n2 ) , .A3 ( n25 ) , 
    .X ( N142 ) ) ;
SAEDHVT14_NR2_MM_0P5 U27 ( .A1 ( n21 ) , .A2 ( opcode[2] ) , .X ( n16 ) ) ;
SAEDHVT14_NR2_MM_0P5 U28 ( .A1 ( n20 ) , .A2 ( n1 ) , .X ( N148 ) ) ;
SAEDHVT14_OR4_1 U29 ( .A1 ( n24 ) , .A2 ( PS[1] ) , .A3 ( PS[3] ) , 
    .A4 ( PS[0] ) , .X ( n14 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U30 ( .A1 ( N143 ) , .A2 ( n15 ) , .X ( n12 ) ) ;
SAEDHVT14_INV_0P5 U31 ( .A ( n30 ) , .X ( n19 ) ) ;
SAEDHVT14_AN3_0P5 U32 ( .A1 ( PS[3] ) , .A2 ( n2 ) , .A3 ( n26 ) , 
    .X ( N159 ) ) ;
SAEDHVT14_ND2B_U_0P5 U33 ( .A ( opcode[2] ) , .B ( N143 ) , .X ( n10 ) ) ;
SAEDHVT14_NR2_MM_0P5 U34 ( .A1 ( opcode[2] ) , .A2 ( n20 ) , .X ( n6 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U35 ( .A1 ( n21 ) , .A2 ( n6 ) , .X ( n8 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U36 ( .A1 ( n15 ) , .A2 ( copt_net_247 ) , .X ( n3 ) ) ;
SAEDHVT14_AOI21_0P5 U37 ( .A1 ( n15 ) , .A2 ( copt_net_247 ) , .B ( n6 ) , 
    .X ( n7 ) ) ;
SAEDHVT14_OAI21_0P5 U38 ( .A1 ( n21 ) , .A2 ( n10 ) , .B ( n7 ) , 
    .X ( N149 ) ) ;
SAEDHVT14_AO22_0P5 U39 ( .A1 ( Xreg[7] ) , .A2 ( N148 ) , .B1 ( Yreg[7] ) , 
    .B2 ( n11 ) , .X ( N153 ) ) ;
SAEDHVT14_AO22_0P5 U40 ( .A1 ( Xreg[6] ) , .A2 ( N148 ) , .B1 ( Yreg[6] ) , 
    .B2 ( n11 ) , .X ( N154 ) ) ;
SAEDHVT14_AO22_0P5 U41 ( .A1 ( Xreg[2] ) , .A2 ( N148 ) , .B1 ( Yreg[2] ) , 
    .B2 ( n11 ) , .X ( N158 ) ) ;
SAEDHVT14_AO22_0P5 U42 ( .A1 ( Xreg[3] ) , .A2 ( N148 ) , .B1 ( Yreg[3] ) , 
    .B2 ( n11 ) , .X ( N157 ) ) ;
SAEDHVT14_AO22_0P5 U43 ( .A1 ( Xreg[4] ) , .A2 ( N148 ) , .B1 ( Yreg[4] ) , 
    .B2 ( n11 ) , .X ( N156 ) ) ;
SAEDHVT14_AOI21_0P5 U44 ( .A1 ( n23 ) , .A2 ( n10 ) , .B ( n9 ) , 
    .X ( N150 ) ) ;
SAEDHVT14_AO22_0P5 U45 ( .A1 ( Xreg[9] ) , .A2 ( N148 ) , .B1 ( Yreg[9] ) , 
    .B2 ( n11 ) , .X ( N151 ) ) ;
SAEDHVT14_AO22_0P5 U46 ( .A1 ( Xreg[8] ) , .A2 ( N148 ) , .B1 ( Yreg[8] ) , 
    .B2 ( n11 ) , .X ( N152 ) ) ;
SAEDHVT14_AO22_0P5 U47 ( .A1 ( Xreg[5] ) , .A2 ( N148 ) , .B1 ( Yreg[5] ) , 
    .B2 ( n11 ) , .X ( N155 ) ) ;
SAEDHVT14_MUX2_ECO_1 U48 ( .D0 ( copt_net_230 ) , .D1 ( opcode_decoded[0] ) , 
    .S ( IRin ) , .X ( n28 ) ) ;
SAEDHVT14_MUX2_ECO_2 U49 ( .D0 ( copt_net_225 ) , .D1 ( opcode_decoded[1] ) , 
    .S ( IRin ) , .X ( n27 ) ) ;
SAEDRVT14_ND2_MM_16 U50 ( .A1 ( n30 ) , .A2 ( Run ) , .X ( n13 ) ) ;
SAEDHVT14_NR2_ECO_1 U51 ( .A1 ( copt_net_228 ) , .A2 ( HFSNET_0 ) , 
    .X ( N32 ) ) ;
SAEDLVT14_NR2_MM_16 U52 ( .A1 ( copt_net_288 ) , .A2 ( HFSNET_0 ) , 
    .X ( N34 ) ) ;
SAEDHVT14_OR3_0P5 U53 ( .A1 ( N142 ) , .A2 ( N143 ) , .A3 ( copt_net_247 ) , 
    .X ( N147 ) ) ;
SAEDHVT14_NR2_MM_0P5 U54 ( .A1 ( N147 ) , .A2 ( N145 ) , .X ( n18 ) ) ;
SAEDHVT14_OAI22_4 U55 ( .A1 ( n16 ) , .A2 ( n20 ) , .B1 ( n15 ) , 
    .B2 ( n14 ) , .X ( n17 ) ) ;
SAEDHVT14_OR4_1 U56 ( .A1 ( copt_net_247 ) , .A2 ( n18 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n17 ) , .X ( N31 ) ) ;
SAEDRVT14_MUX2_MM_0P5 U57 ( .D0 ( opcode[2] ) , .D1 ( opcode_decoded[2] ) , 
    .S ( IRin ) , .X ( n29 ) ) ;
SAEDRVT14_ND2_CDC_0P5 U58 ( .A1 ( n20 ) , .A2 ( n19 ) , .X ( N144 ) ) ;
SAEDHVT14_AN2_MM_0P5 U59 ( .A1 ( Xreg[5] ) , .A2 ( N147 ) , .X ( N137 ) ) ;
SAEDHVT14_AN2_MM_0P5 U60 ( .A1 ( Xreg[2] ) , .A2 ( N147 ) , .X ( N140 ) ) ;
SAEDHVT14_AN2_MM_0P5 U61 ( .A1 ( Xreg[9] ) , .A2 ( N147 ) , .X ( N133 ) ) ;
SAEDHVT14_AN2_MM_0P5 U62 ( .A1 ( Xreg[7] ) , .A2 ( N147 ) , .X ( N135 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5592 ( .A ( n29 ) , .X ( copt_net_38 ) ) ;
SAEDRVT14_DEL_R2V2_1 copt_h_inst_5593 ( .A ( copt_net_38 ) , 
    .X ( copt_net_39 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5594 ( .A ( copt_net_39 ) , 
    .X ( copt_net_40 ) ) ;
SAEDHVT14_DEL_R2V3_2 copt_h_inst_5595 ( .A ( copt_net_40 ) , 
    .X ( copt_net_41 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5815 ( .A ( copt_net_227 ) , 
    .X ( copt_net_225 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5816 ( .A ( opcode[1] ) , 
    .X ( copt_net_226 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5817 ( .A ( copt_net_226 ) , 
    .X ( copt_net_227 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5818 ( .A ( copt_net_229 ) , 
    .X ( copt_net_228 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5819 ( .A ( n13 ) , .X ( copt_net_229 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5820 ( .A ( copt_net_231 ) , 
    .X ( copt_net_230 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5821 ( .A ( opcode[0] ) , 
    .X ( copt_net_231 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5837 ( .A ( N159 ) , .X ( copt_net_247 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5875 ( .A ( n23 ) , .X ( copt_net_285 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5876 ( .A ( copt_net_285 ) , 
    .X ( copt_net_286 ) ) ;
SAEDRVT14_BUF_S_0P5 copt_h_inst_5877 ( .A ( n12 ) , .X ( copt_net_287 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5878 ( .A ( copt_net_287 ) , 
    .X ( copt_net_288 ) ) ;
SAEDRVT14_BUF_1 copt_h_inst_5886 ( .A ( N31 ) , .X ( copt_net_296 ) ) ;
SAEDRVT14_DEL_R2V3_1 copt_h_inst_5887 ( .A ( copt_net_296 ) , 
    .X ( copt_net_297 ) ) ;
SAEDHVT14_DEL_R2V3_1 copt_h_inst_5888 ( .A ( copt_net_297 ) , 
    .X ( copt_net_298 ) ) ;
SAEDRVT14_DEL_R2V3_1 ropt_h_inst_5908 ( .A ( n28 ) , .X ( ropt_net_318 ) ) ;
endmodule


module simple_processor_Top ( Run , Resetn , Clock , DIN , Bus , Done ) ;
input  Run ;
input  Resetn ;
input  Clock ;
input  [8:0] DIN ;
output [8:0] Bus ;
output Done ;

controller_new G1_Controller ( .DIN ( DIN ) , .Run ( Run ) , 
    .Resetn ( Resetn ) , .Clock ( ctsbuf_net_32 ) , .Done ( Done ) , 
    .R0out ( R0out ) , .R1out ( R1out ) , .R2out ( R2out ) , 
    .R3out ( R3out ) , .R4out ( R4out ) , .R5out ( R5out ) , 
    .R6out ( R6out ) , .R7out ( R7out ) , .Gout ( Gout ) , 
    .DINout ( DINout ) , .LdR0 ( LdR0 ) , .LdR1 ( LdR1 ) , .LdR2 ( LdR2 ) , 
    .LdR3 ( LdR3 ) , .LdR4 ( LdR4 ) , .LdR5 ( LdR5 ) , .LdR6 ( LdR6 ) , 
    .LdR7 ( LdR7 ) , .LdA ( LdA ) , .LdG ( LdG ) , .Add_sub ( Add_sub ) ) ;
datapath_register_array G2_Datapath ( .R0out ( R0out ) , .R1out ( R1out ) , 
    .R2out ( R2out ) , .R3out ( R3out ) , .R4out ( R4out ) , 
    .R5out ( R5out ) , .R6out ( R6out ) , .R7out ( R7out ) , .Gout ( Gout ) , 
    .DINout ( DINout ) , .Clock ( ctsbuf_net_10 ) , .rst ( Resetn ) , 
    .R0in ( LdR0 ) , .R1in ( LdR1 ) , .R2in ( LdR2 ) , .R3in ( LdR3 ) , 
    .R4in ( LdR4 ) , .R5in ( LdR5 ) , .R6in ( LdR6 ) , .R7in ( LdR7 ) , 
    .Ain ( LdA ) ,
    .Bus ( { Bus[8] , Bus[7] , aps_rename_5357_ , Bus[5] , Bus[4] , Bus[3] , 
        Bus[2] , Bus[1] , Bus[0] } ) ,
    .DIN ( DIN ) , .AddSub ( Add_sub ) , .Gin ( LdG ) , 
    .ZBUF_236_0 ( Bus[6] ) , .p_abuf0 ( ctsbuf_net_21 ) , 
    .p_abuf1 ( ctsbuf_net_32 ) , .p_abuf2 ( ctsbuf_net_43 ) ) ;
SAEDHVT14_BUF_UCDC_0P5 ZBUF_236_inst_10 ( .A ( aps_rename_5357_ ) , 
    .X ( Bus[6] ) ) ;
SAEDRVT14_BUF_S_6 cts_buf_1335540 ( .A ( Clock ) , .X ( ctsbuf_net_10 ) ) ;
SAEDRVT14_BUF_S_2 cts_buf_1345541 ( .A ( Clock ) , .X ( ctsbuf_net_21 ) ) ;
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
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!45 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!46 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!47 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!48 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!49 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!50 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!51 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!52 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!53 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!54 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!55 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!56 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!57 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!58 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!59 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!60 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!61 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!62 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!63 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!64 () ;
SAEDRVT14_CAPT2 \boundarycell!endcap!SAEDRVT14_CAPT2!65 () ;
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
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!76 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!77 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!78 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!79 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!80 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!81 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!82 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!83 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!84 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!85 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!86 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!87 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!88 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!89 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!90 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!91 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!92 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!93 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!94 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!95 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!96 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!97 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!98 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!99 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!100 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!101 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!102 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!103 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!104 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!105 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!106 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!107 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!108 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!109 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!110 () ;
SAEDRVT14_CAPBTAP6 \boundarycell!endcap!SAEDRVT14_CAPBTAP6!111 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!112 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!113 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!114 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!115 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!116 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!117 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!118 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!119 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!120 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!121 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!122 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!123 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!124 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!125 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!126 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!127 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!128 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!129 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!130 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!131 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!132 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!133 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!134 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!135 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!136 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!137 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!138 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!139 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!140 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!141 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!142 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!143 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!144 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!145 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!146 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!147 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!148 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!149 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!150 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!151 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!152 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!153 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!154 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!155 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!156 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!157 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!158 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!159 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!160 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!161 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!162 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!163 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!164 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!165 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!166 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!167 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!168 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!169 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!170 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!171 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!172 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!173 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!174 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!175 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!176 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!177 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!178 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!179 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!180 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!181 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!182 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!183 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!184 () ;
SAEDRVT14_CAPB2 \boundarycell!endcap!SAEDRVT14_CAPB2!185 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!186 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!187 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!188 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!189 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!190 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!191 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!192 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!193 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!194 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!195 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!196 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!197 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!198 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!199 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!200 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!201 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!202 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!203 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!204 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!205 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!206 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!207 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!208 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!209 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!210 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!211 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!212 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!213 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!214 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!215 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!216 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!217 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!218 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!219 () ;
SAEDRVT14_CAPBIN13 \boundarycell!endcap!SAEDRVT14_CAPBIN13!220 () ;
SAEDRVT14_BUF_S_2 cts_buf_1355542 ( .A ( Clock ) , .X ( ctsbuf_net_32 ) ) ;
SAEDRVT14_BUF_S_2 cts_buf_1365543 ( .A ( Clock ) , .X ( ctsbuf_net_43 ) ) ;
endmodule


