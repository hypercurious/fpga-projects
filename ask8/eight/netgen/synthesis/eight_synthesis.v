////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.40d
//  \   \         Application: netgen
//  /   /         Filename: eight_synthesis.v
// /___/   /\     Timestamp: Thu Jul 22 19:29:20 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim eight.ngc eight_synthesis.v 
// Device	: xc3s1000-4-ft256
// Input file	: eight.ngc
// Output file	: C:\Documents and Settings\Administrator\Desktop\papa\ask8\eight\netgen\synthesis\eight_synthesis.v
// # of Modules	: 1
// Design Name	: eight
// Xilinx        : C:\Xilinx\13.1\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module eight (
  clk, reset, ps2data, ps2clk, right, result, left
);
  input clk;
  input reset;
  input ps2data;
  input ps2clk;
  output [7 : 0] right;
  output [7 : 0] result;
  output [7 : 0] left;
  wire N10;
  wire N101;
  wire N102;
  wire N104;
  wire N105;
  wire N111;
  wire N131;
  wire N133;
  wire N135;
  wire N137;
  wire N144;
  wire N146;
  wire N147;
  wire N149;
  wire N15;
  wire N150;
  wire N155;
  wire N157;
  wire N159;
  wire N16;
  wire N161;
  wire N17;
  wire N174;
  wire N176;
  wire N178;
  wire N18;
  wire N180;
  wire N182;
  wire N184;
  wire N186;
  wire N188;
  wire N190;
  wire N192;
  wire N194;
  wire N195;
  wire N196;
  wire N197;
  wire N198;
  wire N199;
  wire N200;
  wire N201;
  wire N202;
  wire N203;
  wire N204;
  wire N205;
  wire N206;
  wire N207;
  wire N208;
  wire N209;
  wire N210;
  wire N211;
  wire N212;
  wire N213;
  wire N215;
  wire N216;
  wire N217;
  wire N218;
  wire N219;
  wire N220;
  wire N221;
  wire N222;
  wire N223;
  wire N224;
  wire N23;
  wire N24;
  wire N25;
  wire N26;
  wire N37;
  wire N38;
  wire N44;
  wire N45;
  wire N51;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire N72;
  wire N75;
  wire N78;
  wire N8;
  wire N80;
  wire N82;
  wire N84;
  wire N86;
  wire N9;
  wire clk_BUFGP_92;
  wire \div/N16 ;
  wire \div/counter_cmp_le0000 ;
  wire \div/counter_cmp_le0000133_101 ;
  wire \div/counter_cmp_lt0000 ;
  wire \div/counter_cmp_lt000012_103 ;
  wire \div/counter_cmp_lt0000133_104 ;
  wire \div/counter_cmp_lt000015_105 ;
  wire \div/counter_not0001 ;
  wire \div/result_and0000 ;
  wire \div/result_and000015_112 ;
  wire \div/result_and000029_113 ;
  wire \div/result_cmp_ge0001 ;
  wire \div/result_cmp_ge000112_115 ;
  wire \div/result_cmp_ge0001133_116 ;
  wire \div/result_cmp_ne0001 ;
  wire \div/result_cmp_ne000132_118 ;
  wire \div/result_cmp_ne000136_119 ;
  wire \div/temp_0__and0000 ;
  wire \div/temp_0__and0001 ;
  wire \div/temp_1__and0000 ;
  wire \div/temp_1__and0001 ;
  wire \div/temp_2__and0000 ;
  wire \div/temp_2__and0001 ;
  wire \div/temp_3__and0000 ;
  wire \div/temp_3__and0001 ;
  wire \kbd/Mcount_cnt ;
  wire \kbd/Mcount_cnt1 ;
  wire \kbd/Mcount_cnt2 ;
  wire \kbd/Mcount_cnt3 ;
  wire \kbd/N3 ;
  wire \kbd/f0_149 ;
  wire \kbd/f0_mux0000 ;
  wire \kbd/f0_not0001 ;
  wire \kbd/f0_not000117_152 ;
  wire \kbd/f0_not0001219_153 ;
  wire \kbd/f0_not0001271_154 ;
  wire \kbd/f0_not0001312_155 ;
  wire \kbd/f0_not000133_156 ;
  wire \kbd/f0_not0001334_157 ;
  wire \kbd/f0_not0001344_158 ;
  wire \kbd/f0_not000136_159 ;
  wire \kbd/f0_not00014_160 ;
  wire \kbd/fall_edge ;
  wire \kbd/flag_162 ;
  wire \kbd/flag_mux0000 ;
  wire \kbd/shift_not0001_190 ;
  wire left_0_OBUF_203;
  wire left_1_OBUF_204;
  wire left_2_OBUF_205;
  wire left_3_OBUF_206;
  wire left_4_OBUF_207;
  wire left_5_OBUF_208;
  wire left_6_OBUF_209;
  wire left_7_OBUF_210;
  wire \lft/ss<2>15_211 ;
  wire \lft/ss<2>5_212 ;
  wire \lft/ss<5>26_213 ;
  wire \lft/ss<5>53_214 ;
  wire \lft/ss_and0000 ;
  wire \op/result<0>24_220 ;
  wire \op/result<0>8 ;
  wire \op/result<0>81_222 ;
  wire \op/result<0>82_223 ;
  wire \op/result_mux00001_224 ;
  wire \pk/N2 ;
  wire \pk/N6 ;
  wire \pk/empty_227 ;
  wire \pk/empty_not0001 ;
  wire \pk/empty_not000120_229 ;
  wire \pk/empty_not0001211_230 ;
  wire \pk/left_not0001 ;
  wire \pk/operator_not0001 ;
  wire \pk/operator_not000116 ;
  wire \pk/operator_not000123_248 ;
  wire \pk/operator_not000141 ;
  wire \pk/operator_not0001411_250 ;
  wire \pk/right_not0001 ;
  wire ps2clk_IBUF_261;
  wire ps2data_IBUF_263;
  wire reset_IBUF_273;
  wire result_0_OBUF_282;
  wire result_1_OBUF_283;
  wire result_2_OBUF_284;
  wire result_3_OBUF_285;
  wire result_4_OBUF_286;
  wire result_5_OBUF_287;
  wire result_6_OBUF_288;
  wire result_7_OBUF_289;
  wire \rgt/ss<2>15_290 ;
  wire \rgt/ss<2>5_291 ;
  wire \rgt/ss<5>26_292 ;
  wire \rgt/ss<5>53_293 ;
  wire \rgt/ss_and0000 ;
  wire right_0_OBUF_303;
  wire right_1_OBUF_304;
  wire right_2_OBUF_305;
  wire right_3_OBUF_306;
  wire right_4_OBUF_307;
  wire right_5_OBUF_308;
  wire right_6_OBUF_309;
  wire right_7_OBUF_310;
  wire \sb1/bin<0>31_311 ;
  wire \sb1/bin<0>32_312 ;
  wire \sb1/bin<0>50_313 ;
  wire \sb1/bin<0>7_314 ;
  wire \sb1/bin<0>8_315 ;
  wire \sb1/bin<2>6_316 ;
  wire \sb2/bin<0>31_317 ;
  wire \sb2/bin<0>32_318 ;
  wire \sb2/bin<0>50_319 ;
  wire \sb2/bin<0>7_320 ;
  wire \sb2/bin<2>6_321 ;
  wire [2 : 0] \div/Result ;
  wire [2 : 0] \div/counter ;
  wire [3 : 0] \div/result ;
  wire [2 : 0] \div/result_mux0000 ;
  wire [3 : 0] \div/temp ;
  wire [1 : 1] \div/temp_Msub__sub0000_cy ;
  wire [3 : 0] \div/temp_Q_mux0000 ;
  wire [3 : 0] \kbd/cnt ;
  wire [7 : 0] \kbd/ps2clksamples ;
  wire [7 : 0] \kbd/scancode ;
  wire [9 : 0] \kbd/shift ;
  wire [3 : 0] l;
  wire [1 : 0] \op/Maddsub_result_addsub0000_cy ;
  wire [2 : 1] \op/Maddsub_result_addsub0000_lut ;
  wire [7 : 0] \pk/left ;
  wire [2 : 0] \pk/operator ;
  wire [2 : 0] \pk/operator_mux0000 ;
  wire [7 : 0] \pk/right ;
  wire [3 : 0] r;
  wire [3 : 0] res;
  GND   XST_GND (
    .G(result_7_OBUF_289)
  );
  FDCE   \kbd/cnt_3  (
    .C(clk_BUFGP_92),
    .CE(\kbd/fall_edge ),
    .CLR(reset_IBUF_273),
    .D(\kbd/Mcount_cnt3 ),
    .Q(\kbd/cnt [3])
  );
  FDCE   \kbd/cnt_2  (
    .C(clk_BUFGP_92),
    .CE(\kbd/fall_edge ),
    .CLR(reset_IBUF_273),
    .D(\kbd/Mcount_cnt2 ),
    .Q(\kbd/cnt [2])
  );
  FDCE   \kbd/cnt_1  (
    .C(clk_BUFGP_92),
    .CE(\kbd/fall_edge ),
    .CLR(reset_IBUF_273),
    .D(\kbd/Mcount_cnt1 ),
    .Q(\kbd/cnt [1])
  );
  FDCE   \kbd/cnt_0  (
    .C(clk_BUFGP_92),
    .CE(\kbd/fall_edge ),
    .CLR(reset_IBUF_273),
    .D(\kbd/Mcount_cnt ),
    .Q(\kbd/cnt [0])
  );
  FDCE   \kbd/scancode_7  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [8]),
    .Q(\kbd/scancode [7])
  );
  FDCE   \kbd/scancode_6  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [7]),
    .Q(\kbd/scancode [6])
  );
  FDCE   \kbd/scancode_5  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [6]),
    .Q(\kbd/scancode [5])
  );
  FDCE   \kbd/scancode_4  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [5]),
    .Q(\kbd/scancode [4])
  );
  FDCE   \kbd/scancode_3  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [4]),
    .Q(\kbd/scancode [3])
  );
  FDCE   \kbd/scancode_2  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [3]),
    .Q(\kbd/scancode [2])
  );
  FDCE   \kbd/scancode_1  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [2]),
    .Q(\kbd/scancode [1])
  );
  FDCE   \kbd/scancode_0  (
    .C(clk_BUFGP_92),
    .CE(\kbd/flag_mux0000 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [1]),
    .Q(\kbd/scancode [0])
  );
  FDCE   \kbd/f0  (
    .C(clk_BUFGP_92),
    .CE(\kbd/f0_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/f0_mux0000 ),
    .Q(\kbd/f0_149 )
  );
  FDCE   \kbd/shift_9  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(ps2data_IBUF_263),
    .Q(\kbd/shift [9])
  );
  FDCE   \kbd/shift_8  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [9]),
    .Q(\kbd/shift [8])
  );
  FDCE   \kbd/shift_7  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [8]),
    .Q(\kbd/shift [7])
  );
  FDCE   \kbd/shift_6  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [7]),
    .Q(\kbd/shift [6])
  );
  FDCE   \kbd/shift_5  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [6]),
    .Q(\kbd/shift [5])
  );
  FDCE   \kbd/shift_4  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [5]),
    .Q(\kbd/shift [4])
  );
  FDCE   \kbd/shift_3  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [4]),
    .Q(\kbd/shift [3])
  );
  FDCE   \kbd/shift_2  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [3]),
    .Q(\kbd/shift [2])
  );
  FDCE   \kbd/shift_1  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [2]),
    .Q(\kbd/shift [1])
  );
  FDCE   \kbd/shift_0  (
    .C(clk_BUFGP_92),
    .CE(\kbd/shift_not0001_190 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/shift [1]),
    .Q(\kbd/shift [0])
  );
  FDC   \kbd/flag  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/flag_mux0000 ),
    .Q(\kbd/flag_162 )
  );
  FDC   \kbd/ps2clksamples_7  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/ps2clksamples [6]),
    .Q(\kbd/ps2clksamples [7])
  );
  FDC   \kbd/ps2clksamples_6  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/ps2clksamples [5]),
    .Q(\kbd/ps2clksamples [6])
  );
  FDC   \kbd/ps2clksamples_5  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/ps2clksamples [4]),
    .Q(\kbd/ps2clksamples [5])
  );
  FDC   \kbd/ps2clksamples_4  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/ps2clksamples [3]),
    .Q(\kbd/ps2clksamples [4])
  );
  FDC   \kbd/ps2clksamples_3  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/ps2clksamples [2]),
    .Q(\kbd/ps2clksamples [3])
  );
  FDC   \kbd/ps2clksamples_2  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/ps2clksamples [1]),
    .Q(\kbd/ps2clksamples [2])
  );
  FDC   \kbd/ps2clksamples_1  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(\kbd/ps2clksamples [0]),
    .Q(\kbd/ps2clksamples [1])
  );
  FDC   \kbd/ps2clksamples_0  (
    .C(clk_BUFGP_92),
    .CLR(reset_IBUF_273),
    .D(ps2clk_IBUF_261),
    .Q(\kbd/ps2clksamples [0])
  );
  FDCE   \pk/left_7  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [7]),
    .Q(\pk/left [7])
  );
  FDCE   \pk/left_6  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [6]),
    .Q(\pk/left [6])
  );
  FDCE   \pk/left_5  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [5]),
    .Q(\pk/left [5])
  );
  FDCE   \pk/left_4  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [4]),
    .Q(\pk/left [4])
  );
  FDCE   \pk/left_3  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [3]),
    .Q(\pk/left [3])
  );
  FDCE   \pk/left_2  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [2]),
    .Q(\pk/left [2])
  );
  FDCE   \pk/left_1  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [1]),
    .Q(\pk/left [1])
  );
  FDCE   \pk/left_0  (
    .C(clk_BUFGP_92),
    .CE(\pk/left_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\pk/right [0]),
    .Q(\pk/left [0])
  );
  FDPE   \pk/empty  (
    .C(clk_BUFGP_92),
    .CE(\pk/empty_not0001 ),
    .D(result_7_OBUF_289),
    .PRE(reset_IBUF_273),
    .Q(\pk/empty_227 )
  );
  FDPE   \pk/operator_2  (
    .C(clk_BUFGP_92),
    .CE(\pk/operator_not0001 ),
    .D(\pk/operator_mux0000 [0]),
    .PRE(reset_IBUF_273),
    .Q(\pk/operator [2])
  );
  FDPE   \pk/operator_1  (
    .C(clk_BUFGP_92),
    .CE(\pk/operator_not0001 ),
    .D(\pk/operator_mux0000 [1]),
    .PRE(reset_IBUF_273),
    .Q(\pk/operator [1])
  );
  FDPE   \pk/operator_0  (
    .C(clk_BUFGP_92),
    .CE(\pk/operator_not0001 ),
    .D(\pk/operator_mux0000 [2]),
    .PRE(reset_IBUF_273),
    .Q(\pk/operator [0])
  );
  FDCE   \pk/right_7  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [7]),
    .Q(\pk/right [7])
  );
  FDCE   \pk/right_6  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [6]),
    .Q(\pk/right [6])
  );
  FDCE   \pk/right_5  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [5]),
    .Q(\pk/right [5])
  );
  FDCE   \pk/right_4  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [4]),
    .Q(\pk/right [4])
  );
  FDCE   \pk/right_3  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [3]),
    .Q(\pk/right [3])
  );
  FDCE   \pk/right_2  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [2]),
    .Q(\pk/right [2])
  );
  FDCE   \pk/right_1  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [1]),
    .Q(\pk/right [1])
  );
  FDCE   \pk/right_0  (
    .C(clk_BUFGP_92),
    .CE(\pk/right_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\kbd/scancode [0]),
    .Q(\pk/right [0])
  );
  FDCE   \div/counter_2  (
    .C(clk_BUFGP_92),
    .CE(\div/counter_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\div/Result [2]),
    .Q(\div/counter [2])
  );
  FDCE   \div/counter_1  (
    .C(clk_BUFGP_92),
    .CE(\div/counter_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\div/Result [1]),
    .Q(\div/counter [1])
  );
  FDCE   \div/counter_0  (
    .C(clk_BUFGP_92),
    .CE(\div/counter_not0001 ),
    .CLR(reset_IBUF_273),
    .D(\div/Result [0]),
    .Q(\div/counter [0])
  );
  FDCPE   \div/temp_0  (
    .C(clk_BUFGP_92),
    .CE(\div/counter_not0001 ),
    .CLR(\div/temp_0__and0000 ),
    .D(\div/temp_Q_mux0000 [0]),
    .PRE(\div/temp_0__and0001 ),
    .Q(\div/temp [0])
  );
  FDCPE   \div/temp_1  (
    .C(clk_BUFGP_92),
    .CE(\div/counter_not0001 ),
    .CLR(\div/temp_1__and0000 ),
    .D(\div/temp_Q_mux0000 [1]),
    .PRE(\div/temp_1__and0001 ),
    .Q(\div/temp [1])
  );
  FDCPE   \div/temp_2  (
    .C(clk_BUFGP_92),
    .CE(\div/counter_not0001 ),
    .CLR(\div/temp_2__and0000 ),
    .D(\div/temp_Q_mux0000 [2]),
    .PRE(\div/temp_2__and0001 ),
    .Q(\div/temp [2])
  );
  FDCPE   \div/temp_3  (
    .C(clk_BUFGP_92),
    .CE(\div/counter_not0001 ),
    .CLR(\div/temp_3__and0000 ),
    .D(\div/temp_Q_mux0000 [3]),
    .PRE(\div/temp_3__and0001 ),
    .Q(\div/temp [3])
  );
  FDE   \div/result_3  (
    .C(clk_BUFGP_92),
    .CE(\div/result_and0000 ),
    .D(\div/N16 ),
    .Q(\div/result [3])
  );
  FDE   \div/result_2  (
    .C(clk_BUFGP_92),
    .CE(\div/result_and0000 ),
    .D(\div/result_mux0000 [2]),
    .Q(\div/result [2])
  );
  FDE   \div/result_1  (
    .C(clk_BUFGP_92),
    .CE(\div/result_and0000 ),
    .D(\div/result_mux0000 [1]),
    .Q(\div/result [1])
  );
  FDE   \div/result_0  (
    .C(clk_BUFGP_92),
    .CE(\div/result_and0000 ),
    .D(\div/result_mux0000 [0]),
    .Q(\div/result [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \div/temp_3__and00011  (
    .I0(reset_IBUF_273),
    .I1(l[3]),
    .O(\div/temp_3__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \div/temp_3__and00001  (
    .I0(reset_IBUF_273),
    .I1(l[3]),
    .O(\div/temp_3__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \div/temp_2__and00011  (
    .I0(reset_IBUF_273),
    .I1(l[2]),
    .O(\div/temp_2__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \div/temp_2__and00001  (
    .I0(reset_IBUF_273),
    .I1(l[2]),
    .O(\div/temp_2__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \div/temp_1__and00011  (
    .I0(reset_IBUF_273),
    .I1(l[1]),
    .O(\div/temp_1__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \div/temp_1__and00001  (
    .I0(reset_IBUF_273),
    .I1(l[1]),
    .O(\div/temp_1__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \div/temp_0__and00011  (
    .I0(reset_IBUF_273),
    .I1(l[0]),
    .O(\div/temp_0__and0001 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \div/temp_0__and00001  (
    .I0(reset_IBUF_273),
    .I1(l[0]),
    .O(\div/temp_0__and0000 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \div/Mcount_counter_xor<1>11  (
    .I0(\div/counter [1]),
    .I1(\div/counter [0]),
    .O(\div/Result [1])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \kbd/Mcount_cnt_xor<2>11  (
    .I0(\kbd/cnt [2]),
    .I1(\kbd/cnt [1]),
    .I2(\kbd/cnt [0]),
    .O(\kbd/Mcount_cnt2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \div/Mcount_counter_xor<2>11  (
    .I0(\div/counter [2]),
    .I1(\div/counter [0]),
    .I2(\div/counter [1]),
    .O(\div/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h5155 ))
  \kbd/Mcount_cnt_xor<0>11  (
    .I0(\kbd/cnt [0]),
    .I1(\kbd/cnt [3]),
    .I2(\kbd/cnt [2]),
    .I3(\kbd/cnt [1]),
    .O(\kbd/Mcount_cnt )
  );
  LUT4 #(
    .INIT ( 16'h6266 ))
  \kbd/Mcount_cnt_xor<1>11  (
    .I0(\kbd/cnt [0]),
    .I1(\kbd/cnt [1]),
    .I2(\kbd/cnt [2]),
    .I3(\kbd/cnt [3]),
    .O(\kbd/Mcount_cnt1 )
  );
  LUT4 #(
    .INIT ( 16'h68CC ))
  \kbd/Mcount_cnt_xor<3>11  (
    .I0(\kbd/cnt [2]),
    .I1(\kbd/cnt [3]),
    .I2(\kbd/cnt [0]),
    .I3(\kbd/cnt [1]),
    .O(\kbd/Mcount_cnt3 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pk/operator_mux0000<1>_SW0  (
    .I0(\kbd/scancode [5]),
    .I1(\kbd/scancode [4]),
    .O(\pk/operator_not000116 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \pk/operator_mux0000<1>  (
    .I0(\kbd/scancode [0]),
    .I1(\pk/N6 ),
    .I2(\pk/operator_not000116 ),
    .I3(\kbd/scancode [2]),
    .O(\pk/operator_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h77EF ))
  \pk/operator_mux0000<0>_SW0  (
    .I0(\kbd/scancode [0]),
    .I1(\kbd/scancode [5]),
    .I2(\kbd/scancode [1]),
    .I3(\kbd/scancode [4]),
    .O(N51)
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \pk/operator_mux0000<0>_SW1  (
    .I0(\kbd/scancode [5]),
    .I1(\kbd/scancode [0]),
    .I2(\kbd/scancode [4]),
    .I3(\kbd/scancode [1]),
    .O(N52)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \pk/operator_mux0000<0>  (
    .I0(\kbd/scancode [2]),
    .I1(N52),
    .I2(N51),
    .I3(\pk/N6 ),
    .O(\pk/operator_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \rgt/ss<3>11  (
    .I0(\pk/right [5]),
    .I1(\pk/right [3]),
    .I2(\pk/right [4]),
    .O(N16)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \lft/ss<3>11  (
    .I0(\pk/left [5]),
    .I1(\pk/left [3]),
    .I2(\pk/left [4]),
    .O(N15)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \rgt/ss<3>_SW0  (
    .I0(\pk/right [1]),
    .I1(\pk/right [0]),
    .I2(N26),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \rgt/ss<3>  (
    .I0(\rgt/ss_and0000 ),
    .I1(N54),
    .I2(N16),
    .I3(N24),
    .O(right_3_OBUF_306)
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \lft/ss<3>_SW0  (
    .I0(\pk/left [1]),
    .I1(\pk/left [0]),
    .I2(N25),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \lft/ss<3>  (
    .I0(\lft/ss_and0000 ),
    .I1(N56),
    .I2(N15),
    .I3(N23),
    .O(left_3_OBUF_206)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \rgt/ss<1>2_SW0  (
    .I0(\pk/right [4]),
    .I1(\pk/right [3]),
    .I2(\pk/right [0]),
    .I3(\pk/right [1]),
    .O(N58)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \rgt/ss<1>2  (
    .I0(\rgt/ss_and0000 ),
    .I1(\pk/right [6]),
    .I2(\pk/right [5]),
    .I3(N58),
    .O(N18)
  );
  LUT4 #(
    .INIT ( 16'h88A8 ))
  \rgt/ss<0>_SW0  (
    .I0(\pk/right [1]),
    .I1(N26),
    .I2(N16),
    .I3(\pk/right [6]),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \rgt/ss<0>  (
    .I0(N18),
    .I1(N60),
    .I2(\rgt/ss_and0000 ),
    .I3(\pk/right [0]),
    .O(right_0_OBUF_303)
  );
  LUT4 #(
    .INIT ( 16'hFFEF ))
  \lft/ss<1>2_SW0  (
    .I0(\pk/left [4]),
    .I1(\pk/left [3]),
    .I2(\pk/left [0]),
    .I3(\pk/left [1]),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \lft/ss<1>2  (
    .I0(\lft/ss_and0000 ),
    .I1(\pk/left [6]),
    .I2(\pk/left [5]),
    .I3(N62),
    .O(N17)
  );
  LUT4 #(
    .INIT ( 16'h88A8 ))
  \lft/ss<0>_SW0  (
    .I0(\pk/left [1]),
    .I1(N25),
    .I2(N15),
    .I3(\pk/left [6]),
    .O(N64)
  );
  LUT4 #(
    .INIT ( 16'hAAEA ))
  \lft/ss<0>  (
    .I0(N17),
    .I1(N64),
    .I2(\lft/ss_and0000 ),
    .I3(\pk/left [0]),
    .O(left_0_OBUF_203)
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \rgt/ss<2>5  (
    .I0(N24),
    .I1(\pk/right [4]),
    .I2(\pk/right [3]),
    .I3(\pk/right [5]),
    .O(\rgt/ss<2>5_291 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \rgt/ss<2>15  (
    .I0(\rgt/ss_and0000 ),
    .I1(N26),
    .I2(\pk/right [0]),
    .I3(\pk/right [1]),
    .O(\rgt/ss<2>15_290 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \rgt/ss<2>16  (
    .I0(\rgt/ss<2>5_291 ),
    .I1(\rgt/ss<2>15_290 ),
    .O(right_2_OBUF_305)
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \lft/ss<2>5  (
    .I0(N23),
    .I1(\pk/left [4]),
    .I2(\pk/left [3]),
    .I3(\pk/left [5]),
    .O(\lft/ss<2>5_212 )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \lft/ss<2>15  (
    .I0(N25),
    .I1(\lft/ss_and0000 ),
    .I2(\pk/left [0]),
    .I3(\pk/left [1]),
    .O(\lft/ss<2>15_211 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \lft/ss<2>16  (
    .I0(\lft/ss<2>5_212 ),
    .I1(\lft/ss<2>15_211 ),
    .O(left_2_OBUF_205)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pk/operator_mux0000<2>1  (
    .I0(\pk/N2 ),
    .I1(\kbd/scancode [1]),
    .O(\pk/operator_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hAAAE ))
  \rgt/ss<7>2  (
    .I0(N45),
    .I1(\pk/right [3]),
    .I2(\pk/right [5]),
    .I3(\pk/right [4]),
    .O(right_7_OBUF_310)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \rgt/ss<2>22  (
    .I0(\pk/right [1]),
    .I1(\pk/right [0]),
    .I2(\rgt/ss_and0000 ),
    .I3(\pk/right [6]),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'hAAAE ))
  \lft/ss<7>2  (
    .I0(N44),
    .I1(\pk/left [3]),
    .I2(\pk/left [5]),
    .I3(\pk/left [4]),
    .O(left_7_OBUF_210)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \lft/ss<2>22  (
    .I0(\pk/left [1]),
    .I1(\pk/left [0]),
    .I2(\lft/ss_and0000 ),
    .I3(\pk/left [6]),
    .O(N23)
  );
  LUT4 #(
    .INIT ( 16'h4060 ))
  \pk/operator_not000123  (
    .I0(\kbd/scancode [2]),
    .I1(\kbd/scancode [0]),
    .I2(\pk/operator_not000116 ),
    .I3(\kbd/scancode [1]),
    .O(\pk/operator_not000123_248 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \kbd/f0_not00014  (
    .I0(\kbd/shift [8]),
    .I1(\kbd/shift [7]),
    .I2(\kbd/shift [6]),
    .I3(\kbd/shift [5]),
    .O(\kbd/f0_not00014_160 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \kbd/f0_not000117  (
    .I0(\kbd/shift [4]),
    .I1(\kbd/shift [3]),
    .I2(\kbd/shift [2]),
    .I3(\kbd/shift [1]),
    .O(\kbd/f0_not000117_152 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \kbd/f0_not000139  (
    .I0(\kbd/N3 ),
    .I1(\kbd/f0_149 ),
    .I2(\kbd/f0_not00014_160 ),
    .I3(\kbd/f0_not000117_152 ),
    .O(\kbd/f0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \div/temp_Q_mux0000<0>1  (
    .I0(reset_IBUF_273),
    .I1(\div/temp [0]),
    .I2(r[0]),
    .I3(l[0]),
    .O(\div/temp_Q_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \rgt/ss<1>111  (
    .I0(\pk/right [3]),
    .I1(\pk/right [6]),
    .I2(\pk/right [5]),
    .I3(\pk/right [4]),
    .O(N26)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \lft/ss<1>111  (
    .I0(\pk/left [3]),
    .I1(\pk/left [6]),
    .I2(\pk/left [5]),
    .I3(\pk/left [4]),
    .O(N25)
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \rgt/ss<4>_SW0  (
    .I0(\pk/right [5]),
    .I1(\pk/right [4]),
    .I2(\pk/right [3]),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \rgt/ss<4>  (
    .I0(N18),
    .I1(N9),
    .I2(N24),
    .I3(N66),
    .O(right_4_OBUF_307)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \rgt/ss<1>_SW0  (
    .I0(N24),
    .I1(\pk/right [3]),
    .I2(\pk/right [4]),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \rgt/ss<1>  (
    .I0(N18),
    .I1(N9),
    .I2(\pk/right [5]),
    .I3(N68),
    .O(right_1_OBUF_304)
  );
  LUT3 #(
    .INIT ( 8'hAE ))
  \lft/ss<4>_SW0  (
    .I0(\pk/left [5]),
    .I1(\pk/left [4]),
    .I2(\pk/left [3]),
    .O(N70)
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \lft/ss<4>  (
    .I0(N17),
    .I1(N8),
    .I2(N23),
    .I3(N70),
    .O(left_4_OBUF_207)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \lft/ss<1>_SW0  (
    .I0(N23),
    .I1(\pk/left [3]),
    .I2(\pk/left [4]),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \lft/ss<1>  (
    .I0(N17),
    .I1(N8),
    .I2(\pk/left [5]),
    .I3(N72),
    .O(left_1_OBUF_204)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \rgt/ss<5>66  (
    .I0(N9),
    .I1(\rgt/ss<5>53_293 ),
    .O(right_5_OBUF_308)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \lft/ss<5>66  (
    .I0(N8),
    .I1(\lft/ss<5>53_214 ),
    .O(left_5_OBUF_208)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \kbd/f0_not0001220  (
    .I0(N215),
    .I1(\kbd/f0_not0001219_153 ),
    .O(\kbd/fall_edge )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \kbd/f0_not000136  (
    .I0(\kbd/shift [2]),
    .I1(\kbd/shift [1]),
    .I2(\kbd/shift [9]),
    .I3(\kbd/f0_not000133_156 ),
    .O(\kbd/f0_not000136_159 )
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \kbd/f0_not0001312  (
    .I0(\kbd/shift [6]),
    .I1(\kbd/shift [5]),
    .I2(\kbd/shift [4]),
    .I3(\kbd/shift [3]),
    .O(\kbd/f0_not0001312_155 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \kbd/f0_not0001334  (
    .I0(\kbd/cnt [1]),
    .I1(\kbd/cnt [0]),
    .I2(ps2data_IBUF_263),
    .I3(\kbd/cnt [2]),
    .O(\kbd/f0_not0001334_157 )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \rgt/ss<6>1  (
    .I0(N9),
    .I1(N16),
    .I2(N24),
    .O(right_6_OBUF_309)
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \lft/ss<6>1  (
    .I0(N8),
    .I1(N15),
    .I2(N23),
    .O(left_6_OBUF_209)
  );
  LUT4 #(
    .INIT ( 16'hF32F ))
  \rgt/ss<1>1_SW1  (
    .I0(\pk/right [6]),
    .I1(N26),
    .I2(\pk/right [0]),
    .I3(\pk/right [1]),
    .O(N75)
  );
  LUT4 #(
    .INIT ( 16'h082A ))
  \rgt/ss<1>1  (
    .I0(\rgt/ss_and0000 ),
    .I1(N38),
    .I2(N75),
    .I3(N54),
    .O(N9)
  );
  LUT4 #(
    .INIT ( 16'hF32F ))
  \lft/ss<1>1_SW1  (
    .I0(\pk/left [6]),
    .I1(N25),
    .I2(\pk/left [0]),
    .I3(\pk/left [1]),
    .O(N78)
  );
  LUT4 #(
    .INIT ( 16'h082A ))
  \lft/ss<1>1  (
    .I0(\lft/ss_and0000 ),
    .I1(N37),
    .I2(N78),
    .I3(N56),
    .O(N8)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \pk/operator_mux0000<0>31  (
    .I0(\kbd/scancode [6]),
    .I1(\kbd/scancode [3]),
    .I2(\kbd/scancode [7]),
    .O(\pk/N6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \pk/left_not00011  (
    .I0(\pk/right_not0001 ),
    .I1(\pk/empty_227 ),
    .O(\pk/left_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pk/empty_not00011  (
    .I0(\pk/empty_227 ),
    .I1(\pk/right_not0001 ),
    .O(\pk/empty_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hFEEF ))
  \pk/empty_not000111  (
    .I0(\kbd/scancode [7]),
    .I1(N80),
    .I2(\kbd/scancode [2]),
    .I3(\kbd/scancode [0]),
    .O(\pk/N2 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \pk/empty_not000120  (
    .I0(\kbd/scancode [1]),
    .I1(\kbd/scancode [2]),
    .O(\pk/empty_not000120_229 )
  );
  LUT4 #(
    .INIT ( 16'hA888 ))
  \pk/empty_not0001230  (
    .I0(\kbd/flag_162 ),
    .I1(\pk/empty_not000120_229 ),
    .I2(\pk/N2 ),
    .I3(\pk/empty_not0001211_230 ),
    .O(\pk/right_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \div/result_mux0000<0>1  (
    .I0(\div/counter [0]),
    .I1(\div/result_cmp_ge0001 ),
    .I2(\div/counter_cmp_le0000 ),
    .O(\div/result_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \div/result_mux0000<1>11  (
    .I0(\div/result_cmp_ge0001 ),
    .I1(\div/counter_cmp_le0000 ),
    .I2(\div/result_cmp_ne0001 ),
    .O(\div/N16 )
  );
  LUT4 #(
    .INIT ( 16'hED21 ))
  \div/temp_Q_mux0000<3>  (
    .I0(r[3]),
    .I1(reset_IBUF_273),
    .I2(N82),
    .I3(l[3]),
    .O(\div/temp_Q_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h6FF6 ))
  \div/result_cmp_ne000132  (
    .I0(N217),
    .I1(r[0]),
    .I2(l[2]),
    .I3(r[2]),
    .O(\div/result_cmp_ne000132_118 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \div/result_cmp_ge000112  (
    .I0(l[3]),
    .I1(r[3]),
    .O(\div/result_cmp_ge000112_115 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \div/counter_cmp_lt000012  (
    .I0(\div/temp [3]),
    .I1(r[3]),
    .O(\div/counter_cmp_lt000012_103 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \div/counter_cmp_lt000015  (
    .I0(\div/temp [3]),
    .I1(r[3]),
    .O(\div/counter_cmp_lt000015_105 )
  );
  LUT4 #(
    .INIT ( 16'h7510 ))
  \div/counter_cmp_lt0000133  (
    .I0(\div/temp [1]),
    .I1(\div/temp [0]),
    .I2(r[0]),
    .I3(r[1]),
    .O(\div/counter_cmp_lt0000133_104 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \div/result_and000015  (
    .I0(r[0]),
    .I1(r[1]),
    .I2(r[3]),
    .I3(N222),
    .O(\div/result_and000015_112 )
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \div/result_and000070  (
    .I0(\div/counter_cmp_le0000 ),
    .I1(\div/counter_cmp_lt0000 ),
    .I2(reset_IBUF_273),
    .I3(\div/result_and000029_113 ),
    .O(\div/result_and0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \rgt/ss<1>1211  (
    .I0(\pk/right [3]),
    .I1(\pk/right [5]),
    .I2(\pk/right [4]),
    .O(N38)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \lft/ss<1>1211  (
    .I0(\pk/left [3]),
    .I1(\pk/left [5]),
    .I2(\pk/left [4]),
    .O(N37)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  \op/result<0>52  (
    .I0(\pk/operator [0]),
    .I1(\op/result<0>24_220 ),
    .I2(\pk/operator [2]),
    .I3(\op/result<0>8 ),
    .O(res[0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \op/Maddsub_result_addsub0000_lut<2>1  (
    .I0(l[2]),
    .I1(r[2]),
    .I2(\op/result_mux00001_224 ),
    .O(\op/Maddsub_result_addsub0000_lut [2])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \sb2/bin<2>6  (
    .I0(\pk/right [6]),
    .I1(\pk/right [0]),
    .O(\sb2/bin<2>6_321 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \sb1/bin<2>6  (
    .I0(\pk/left [6]),
    .I1(\pk/left [0]),
    .O(\sb1/bin<2>6_316 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \op/result_mux00001  (
    .I0(\pk/operator [2]),
    .I1(\pk/operator [0]),
    .I2(\pk/operator [1]),
    .O(\op/result_mux00001_224 )
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \rgt/ss<7>1_SW0  (
    .I0(\pk/right [6]),
    .I1(\pk/right [4]),
    .I2(\pk/right [3]),
    .I3(\pk/right [5]),
    .O(N84)
  );
  LUT4 #(
    .INIT ( 16'hFF13 ))
  \rgt/ss<7>1  (
    .I0(\pk/right [0]),
    .I1(\pk/right [1]),
    .I2(N84),
    .I3(N111),
    .O(N45)
  );
  LUT4 #(
    .INIT ( 16'hC382 ))
  \lft/ss<7>1_SW0  (
    .I0(\pk/left [6]),
    .I1(\pk/left [4]),
    .I2(\pk/left [3]),
    .I3(\pk/left [5]),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'hFF13 ))
  \lft/ss<7>1  (
    .I0(\pk/left [0]),
    .I1(\pk/left [1]),
    .I2(N86),
    .I3(N10),
    .O(N44)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \op/Maddsub_result_addsub0000_lut<1>1  (
    .I0(l[1]),
    .I1(r[1]),
    .I2(\op/result_mux00001_224 ),
    .O(\op/Maddsub_result_addsub0000_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hFF51 ))
  \sb2/bin<1>_SW0  (
    .I0(\pk/right [1]),
    .I1(\pk/right [0]),
    .I2(\pk/right [4]),
    .I3(\pk/right [3]),
    .O(N101)
  );
  LUT4 #(
    .INIT ( 16'h5F5B ))
  \sb2/bin<1>_SW1  (
    .I0(\pk/right [1]),
    .I1(\pk/right [0]),
    .I2(\pk/right [3]),
    .I3(\pk/right [4]),
    .O(N102)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \sb2/bin<1>  (
    .I0(\pk/right [5]),
    .I1(N102),
    .I2(N101),
    .I3(N219),
    .O(r[1])
  );
  LUT4 #(
    .INIT ( 16'hFF51 ))
  \sb1/bin<1>_SW0  (
    .I0(\pk/left [1]),
    .I1(\pk/left [0]),
    .I2(\pk/left [4]),
    .I3(\pk/left [3]),
    .O(N104)
  );
  LUT4 #(
    .INIT ( 16'h3F3D ))
  \sb1/bin<1>_SW1  (
    .I0(\pk/left [0]),
    .I1(\pk/left [1]),
    .I2(\pk/left [3]),
    .I3(\pk/left [4]),
    .O(N105)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \sb1/bin<1>  (
    .I0(\pk/left [5]),
    .I1(N105),
    .I2(N104),
    .I3(N221),
    .O(l[1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \rgt/ss_and00001  (
    .I0(\pk/right [2]),
    .I1(\pk/right [7]),
    .O(\rgt/ss_and0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \lft/ss_and00001  (
    .I0(\pk/left [2]),
    .I1(\pk/left [7]),
    .O(\lft/ss_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h88F8 ))
  \sb2/bin<0>7  (
    .I0(\pk/right [6]),
    .I1(\pk/right [5]),
    .I2(\pk/right [3]),
    .I3(\pk/right [4]),
    .O(\sb2/bin<0>7_320 )
  );
  LUT4 #(
    .INIT ( 16'hC8CC ))
  \sb2/bin<0>50  (
    .I0(\pk/right [6]),
    .I1(\pk/right [1]),
    .I2(\pk/right [0]),
    .I3(\pk/right [4]),
    .O(\sb2/bin<0>50_319 )
  );
  LUT4 #(
    .INIT ( 16'hA0EC ))
  \sb1/bin<0>7  (
    .I0(\pk/left [6]),
    .I1(\pk/left [3]),
    .I2(\pk/left [5]),
    .I3(\pk/left [4]),
    .O(\sb1/bin<0>7_314 )
  );
  LUT4 #(
    .INIT ( 16'hE0F0 ))
  \sb1/bin<0>50  (
    .I0(\pk/left [6]),
    .I1(\pk/left [0]),
    .I2(\pk/left [1]),
    .I3(\pk/left [4]),
    .O(\sb1/bin<0>50_313 )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_273)
  );
  IBUF   ps2data_IBUF (
    .I(ps2data),
    .O(ps2data_IBUF_263)
  );
  IBUF   ps2clk_IBUF (
    .I(ps2clk),
    .O(ps2clk_IBUF_261)
  );
  OBUF   right_7_OBUF (
    .I(right_7_OBUF_310),
    .O(right[7])
  );
  OBUF   right_6_OBUF (
    .I(right_6_OBUF_309),
    .O(right[6])
  );
  OBUF   right_5_OBUF (
    .I(right_5_OBUF_308),
    .O(right[5])
  );
  OBUF   right_4_OBUF (
    .I(right_4_OBUF_307),
    .O(right[4])
  );
  OBUF   right_3_OBUF (
    .I(right_3_OBUF_306),
    .O(right[3])
  );
  OBUF   right_2_OBUF (
    .I(right_2_OBUF_305),
    .O(right[2])
  );
  OBUF   right_1_OBUF (
    .I(right_1_OBUF_304),
    .O(right[1])
  );
  OBUF   right_0_OBUF (
    .I(right_0_OBUF_303),
    .O(right[0])
  );
  OBUF   result_7_OBUF (
    .I(result_7_OBUF_289),
    .O(result[7])
  );
  OBUF   result_6_OBUF (
    .I(result_6_OBUF_288),
    .O(result[6])
  );
  OBUF   result_5_OBUF (
    .I(result_5_OBUF_287),
    .O(result[5])
  );
  OBUF   result_4_OBUF (
    .I(result_4_OBUF_286),
    .O(result[4])
  );
  OBUF   result_3_OBUF (
    .I(result_3_OBUF_285),
    .O(result[3])
  );
  OBUF   result_2_OBUF (
    .I(result_2_OBUF_284),
    .O(result[2])
  );
  OBUF   result_1_OBUF (
    .I(result_1_OBUF_283),
    .O(result[1])
  );
  OBUF   result_0_OBUF (
    .I(result_0_OBUF_282),
    .O(result[0])
  );
  OBUF   left_7_OBUF (
    .I(left_7_OBUF_210),
    .O(left[7])
  );
  OBUF   left_6_OBUF (
    .I(left_6_OBUF_209),
    .O(left[6])
  );
  OBUF   left_5_OBUF (
    .I(left_5_OBUF_208),
    .O(left[5])
  );
  OBUF   left_4_OBUF (
    .I(left_4_OBUF_207),
    .O(left[4])
  );
  OBUF   left_3_OBUF (
    .I(left_3_OBUF_206),
    .O(left[3])
  );
  OBUF   left_2_OBUF (
    .I(left_2_OBUF_205),
    .O(left[2])
  );
  OBUF   left_1_OBUF (
    .I(left_1_OBUF_204),
    .O(left[1])
  );
  OBUF   left_0_OBUF (
    .I(left_0_OBUF_203),
    .O(left[0])
  );
  LUT4 #(
    .INIT ( 16'hFF51 ))
  \sb2/bin<0>32  (
    .I0(\pk/right [1]),
    .I1(\pk/right [0]),
    .I2(\pk/right [4]),
    .I3(\sb2/bin<0>31_317 ),
    .O(\sb2/bin<0>32_318 )
  );
  LUT4 #(
    .INIT ( 16'hFFF6 ))
  \div/result_cmp_ne000163  (
    .I0(l[3]),
    .I1(r[3]),
    .I2(\div/result_cmp_ne000132_118 ),
    .I3(\div/result_cmp_ne000136_119 ),
    .O(\div/result_cmp_ne0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \sb2/bin<0>67  (
    .I0(\rgt/ss_and0000 ),
    .I1(\sb2/bin<0>50_319 ),
    .I2(\sb2/bin<0>7_320 ),
    .I3(\sb2/bin<0>32_318 ),
    .O(r[0])
  );
  LUT4 #(
    .INIT ( 16'hCA0A ))
  \div/result_mux0000<2>1  (
    .I0(\div/counter [2]),
    .I1(\div/result_cmp_ge0001 ),
    .I2(\div/counter_cmp_le0000 ),
    .I3(\div/result_cmp_ne0001 ),
    .O(\div/result_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hCA0A ))
  \div/result_mux0000<1>1  (
    .I0(\div/counter [1]),
    .I1(\div/result_cmp_ge0001 ),
    .I2(\div/counter_cmp_le0000 ),
    .I3(\div/result_cmp_ne0001 ),
    .O(\div/result_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  \div/temp_Msub__sub0000_cy<1>11  (
    .I0(r[0]),
    .I1(\div/temp [1]),
    .I2(r[1]),
    .I3(\div/temp [0]),
    .O(\div/temp_Msub__sub0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'hFFF4 ))
  \sb1/bin<2>36  (
    .I0(\pk/left [1]),
    .I1(\sb1/bin<2>6_316 ),
    .I2(N223),
    .I3(N10),
    .O(l[2])
  );
  LUT4 #(
    .INIT ( 16'h8ECF ))
  \div/result_cmp_ge0001133  (
    .I0(l[0]),
    .I1(l[1]),
    .I2(r[1]),
    .I3(r[0]),
    .O(\div/result_cmp_ge0001133_116 )
  );
  LUT3 #(
    .INIT ( 8'h2C ))
  \sb2/bin<2>16_SW0  (
    .I0(\pk/right [5]),
    .I1(\pk/right [3]),
    .I2(\pk/right [4]),
    .O(N135)
  );
  LUT4 #(
    .INIT ( 16'hF371 ))
  \div/counter_cmp_le0000133  (
    .I0(l[0]),
    .I1(l[1]),
    .I2(r[1]),
    .I3(r[0]),
    .O(\div/counter_cmp_le0000133_101 )
  );
  LUT4 #(
    .INIT ( 16'hFF51 ))
  \sb1/bin<0>32  (
    .I0(\pk/left [1]),
    .I1(\pk/left [0]),
    .I2(\pk/left [4]),
    .I3(\sb1/bin<0>31_311 ),
    .O(\sb1/bin<0>32_312 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \sb1/bin<0>8  (
    .I0(\pk/left [2]),
    .I1(\pk/left [7]),
    .O(\sb1/bin<0>8_315 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \sb2/bin<3>1_SW1  (
    .I0(\pk/right [7]),
    .I1(\pk/right [6]),
    .I2(\pk/right [0]),
    .I3(N218),
    .O(N147)
  );
  LUT4 #(
    .INIT ( 16'hFDA8 ))
  \sb2/bin<3>1  (
    .I0(\pk/right [1]),
    .I1(N38),
    .I2(N147),
    .I3(N146),
    .O(r[3])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \sb1/bin<3>1_SW1  (
    .I0(\pk/left [7]),
    .I1(\pk/left [6]),
    .I2(\pk/left [0]),
    .I3(N220),
    .O(N150)
  );
  LUT4 #(
    .INIT ( 16'hFAD8 ))
  \sb1/bin<3>1  (
    .I0(\pk/left [1]),
    .I1(N37),
    .I2(N149),
    .I3(N150),
    .O(l[3])
  );
  LUT4 #(
    .INIT ( 16'h4FDF ))
  \div/result_and000029_SW0  (
    .I0(l[2]),
    .I1(r[2]),
    .I2(N155),
    .I3(\div/result_cmp_ge0001133_116 ),
    .O(N144)
  );
  LUT4 #(
    .INIT ( 16'hBEFD ))
  \sb2/bin<3>1_SW0_SW0  (
    .I0(\pk/right [6]),
    .I1(\pk/right [3]),
    .I2(\pk/right [4]),
    .I3(\pk/right [5]),
    .O(N157)
  );
  LUT4 #(
    .INIT ( 16'hBEFD ))
  \sb1/bin<3>1_SW0_SW0  (
    .I0(\pk/left [6]),
    .I1(\pk/left [3]),
    .I2(\pk/left [4]),
    .I3(\pk/left [5]),
    .O(N159)
  );
  LUT4 #(
    .INIT ( 16'h0013 ))
  \div/counter_not00011  (
    .I0(\div/counter_cmp_lt000015_105 ),
    .I1(\div/counter_cmp_lt000012_103 ),
    .I2(N161),
    .I3(\div/counter_cmp_le0000 ),
    .O(\div/counter_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h2220 ))
  \pk/operator_not000164  (
    .I0(\kbd/flag_162 ),
    .I1(\pk/N6 ),
    .I2(\pk/operator_not000123_248 ),
    .I3(\pk/operator_not000141 ),
    .O(\pk/operator_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h02BA ))
  \bs/seg<2>_SW2  (
    .I0(res[0]),
    .I1(res[1]),
    .I2(res[2]),
    .I3(res[3]),
    .O(N174)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \bs/seg<2>  (
    .I0(\pk/operator [1]),
    .I1(N174),
    .I2(\pk/operator [2]),
    .I3(\pk/operator [0]),
    .O(result_2_OBUF_284)
  );
  LUT4 #(
    .INIT ( 16'hDEBE ))
  \bs/seg<3>_SW2  (
    .I0(res[1]),
    .I1(res[3]),
    .I2(res[2]),
    .I3(res[0]),
    .O(N176)
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \bs/seg<3>  (
    .I0(N176),
    .I1(\pk/operator [0]),
    .I2(\pk/operator [1]),
    .I3(\pk/operator [2]),
    .O(result_3_OBUF_285)
  );
  LUT4 #(
    .INIT ( 16'hA120 ))
  \bs/seg<1>_SW2  (
    .I0(res[3]),
    .I1(res[0]),
    .I2(res[2]),
    .I3(res[1]),
    .O(N178)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \bs/seg<1>  (
    .I0(\pk/operator [1]),
    .I1(N178),
    .I2(\pk/operator [2]),
    .I3(\pk/operator [0]),
    .O(result_1_OBUF_283)
  );
  LUT4 #(
    .INIT ( 16'h6302 ))
  \bs/seg<5>_SW2  (
    .I0(res[1]),
    .I1(res[3]),
    .I2(res[2]),
    .I3(res[0]),
    .O(N180)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \bs/seg<5>  (
    .I0(\pk/operator [1]),
    .I1(N180),
    .I2(\pk/operator [2]),
    .I3(\pk/operator [0]),
    .O(result_5_OBUF_287)
  );
  LUT4 #(
    .INIT ( 16'hD680 ))
  \bs/seg<4>_SW2  (
    .I0(res[0]),
    .I1(res[1]),
    .I2(res[3]),
    .I3(res[2]),
    .O(N182)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \bs/seg<4>  (
    .I0(\pk/operator [1]),
    .I1(N182),
    .I2(\pk/operator [2]),
    .I3(\pk/operator [0]),
    .O(result_4_OBUF_286)
  );
  LUT4 #(
    .INIT ( 16'h2812 ))
  \bs/seg<6>_SW2  (
    .I0(res[0]),
    .I1(res[1]),
    .I2(res[2]),
    .I3(res[3]),
    .O(N184)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \bs/seg<6>  (
    .I0(\pk/operator [1]),
    .I1(N184),
    .I2(\pk/operator [2]),
    .I3(\pk/operator [0]),
    .O(result_6_OBUF_288)
  );
  LUT4 #(
    .INIT ( 16'hC124 ))
  \bs/seg<0>_SW2  (
    .I0(res[3]),
    .I1(res[0]),
    .I2(res[1]),
    .I3(res[2]),
    .O(N186)
  );
  LUT4 #(
    .INIT ( 16'h1333 ))
  \bs/seg<0>  (
    .I0(\pk/operator [1]),
    .I1(N186),
    .I2(\pk/operator [2]),
    .I3(\pk/operator [0]),
    .O(result_0_OBUF_282)
  );
  LUT4 #(
    .INIT ( 16'h6000 ))
  \kbd/flag_mux00001  (
    .I0(\kbd/f0_not000136_159 ),
    .I1(\kbd/f0_not0001312_155 ),
    .I2(\kbd/f0_149 ),
    .I3(N224),
    .O(\kbd/flag_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \kbd/shift_not0001_SW1  (
    .I0(\kbd/cnt [1]),
    .I1(\kbd/cnt [3]),
    .I2(\kbd/cnt [2]),
    .O(N188)
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \kbd/shift_not0001  (
    .I0(N216),
    .I1(\kbd/f0_not0001271_154 ),
    .I2(\kbd/cnt [0]),
    .I3(N188),
    .O(\kbd/shift_not0001_190 )
  );
  LUT4 #(
    .INIT ( 16'hFFDF ))
  \pk/empty_not0001211  (
    .I0(\kbd/scancode [1]),
    .I1(\kbd/scancode [0]),
    .I2(\kbd/scancode [3]),
    .I3(N190),
    .O(\pk/empty_not0001211_230 )
  );
  LUT4 #(
    .INIT ( 16'hC194 ))
  \op/result<0>24  (
    .I0(\pk/operator [1]),
    .I1(l[0]),
    .I2(r[0]),
    .I3(\op/result_mux00001_224 ),
    .O(\op/result<0>24_220 )
  );
  LUT3 #(
    .INIT ( 8'hE2 ))
  \op/Maddsub_result_addsub0000_cy<0>11  (
    .I0(\op/result_mux00001_224 ),
    .I1(r[0]),
    .I2(l[0]),
    .O(\op/Maddsub_result_addsub0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h4DE8 ))
  \op/result<3>47_SW0  (
    .I0(\op/Maddsub_result_addsub0000_cy [1]),
    .I1(r[2]),
    .I2(l[2]),
    .I3(\op/result_mux00001_224 ),
    .O(N192)
  );
  LUT4 #(
    .INIT ( 16'hBE28 ))
  \op/Maddsub_result_addsub0000_cy<1>11  (
    .I0(l[1]),
    .I1(r[1]),
    .I2(\op/result_mux00001_224 ),
    .I3(\op/Maddsub_result_addsub0000_cy [0]),
    .O(\op/Maddsub_result_addsub0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \rgt/ss<5>26  (
    .I0(\pk/right [0]),
    .I1(\pk/right [1]),
    .I2(\pk/right [2]),
    .I3(\pk/right [7]),
    .O(\rgt/ss<5>26_292 )
  );
  LUT4 #(
    .INIT ( 16'h0060 ))
  \lft/ss<5>26  (
    .I0(\pk/left [0]),
    .I1(\pk/left [1]),
    .I2(\pk/left [2]),
    .I3(\pk/left [7]),
    .O(\lft/ss<5>26_213 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_92)
  );
  INV   \kbd/f0_mux00001_INV_0  (
    .I(\kbd/f0_149 ),
    .O(\kbd/f0_mux0000 )
  );
  INV   \div/Mcount_counter_xor<0>11_INV_0  (
    .I(\div/counter [0]),
    .O(\div/Result [0])
  );
  MUXF5   \op/result<1>  (
    .I0(N194),
    .I1(N195),
    .S(\pk/operator [1]),
    .O(res[1])
  );
  LUT3 #(
    .INIT ( 8'h12 ))
  \op/result<1>_F  (
    .I0(\op/Maddsub_result_addsub0000_cy [0]),
    .I1(\pk/operator [2]),
    .I2(\op/Maddsub_result_addsub0000_lut [1]),
    .O(N194)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \op/result<1>_G  (
    .I0(\pk/operator [0]),
    .I1(\pk/operator [2]),
    .I2(\div/result [1]),
    .O(N195)
  );
  MUXF5   \rgt/ss<5>53  (
    .I0(N196),
    .I1(N197),
    .S(\pk/right [4]),
    .O(\rgt/ss<5>53_293 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \rgt/ss<5>53_F  (
    .I0(\rgt/ss<5>26_292 ),
    .I1(\pk/right [6]),
    .I2(\pk/right [5]),
    .I3(\pk/right [3]),
    .O(N196)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \rgt/ss<5>53_G  (
    .I0(N24),
    .I1(\pk/right [5]),
    .I2(\pk/right [3]),
    .O(N197)
  );
  MUXF5   \lft/ss<5>53  (
    .I0(N198),
    .I1(N199),
    .S(\pk/left [4]),
    .O(\lft/ss<5>53_214 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \lft/ss<5>53_F  (
    .I0(\lft/ss<5>26_213 ),
    .I1(\pk/left [6]),
    .I2(\pk/left [5]),
    .I3(\pk/left [3]),
    .O(N198)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \lft/ss<5>53_G  (
    .I0(N23),
    .I1(\pk/left [5]),
    .I2(\pk/left [3]),
    .O(N199)
  );
  MUXF5   \op/result<2>  (
    .I0(N200),
    .I1(N201),
    .S(\pk/operator [1]),
    .O(res[2])
  );
  LUT3 #(
    .INIT ( 8'h12 ))
  \op/result<2>_F  (
    .I0(\op/Maddsub_result_addsub0000_cy [1]),
    .I1(\pk/operator [2]),
    .I2(\op/Maddsub_result_addsub0000_lut [2]),
    .O(N200)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \op/result<2>_G  (
    .I0(\div/result [2]),
    .I1(\pk/operator [2]),
    .I2(\pk/operator [0]),
    .O(N201)
  );
  MUXF5   \div/temp_Q_mux0000<2>1  (
    .I0(N202),
    .I1(N203),
    .S(reset_IBUF_273),
    .O(\div/temp_Q_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \div/temp_Q_mux0000<2>1_F  (
    .I0(\div/temp [2]),
    .I1(r[2]),
    .I2(\div/temp_Msub__sub0000_cy [1]),
    .O(N202)
  );
  LUT4 #(
    .INIT ( 16'hFFAE ))
  \div/temp_Q_mux0000<2>1_G  (
    .I0(N10),
    .I1(\sb1/bin<2>6_316 ),
    .I2(\pk/left [1]),
    .I3(N137),
    .O(N203)
  );
  MUXF5   \op/result<3>85  (
    .I0(N204),
    .I1(N205),
    .S(\pk/operator [1]),
    .O(res[3])
  );
  LUT4 #(
    .INIT ( 16'h4114 ))
  \op/result<3>85_F  (
    .I0(\pk/operator [2]),
    .I1(l[3]),
    .I2(r[3]),
    .I3(N192),
    .O(N204)
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \op/result<3>85_G  (
    .I0(\div/result [3]),
    .I1(\pk/operator [2]),
    .I2(\pk/operator [0]),
    .O(N205)
  );
  MUXF5   \div/temp_Q_mux0000<1>1  (
    .I0(N206),
    .I1(N207),
    .S(reset_IBUF_273),
    .O(\div/temp_Q_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h5A96 ))
  \div/temp_Q_mux0000<1>1_F  (
    .I0(r[1]),
    .I1(r[0]),
    .I2(\div/temp [1]),
    .I3(\div/temp [0]),
    .O(N206)
  );
  LUT4 #(
    .INIT ( 16'hFFD8 ))
  \div/temp_Q_mux0000<1>1_G  (
    .I0(\pk/left [5]),
    .I1(N105),
    .I2(N104),
    .I3(N10),
    .O(N207)
  );
  MUXF5   \div/counter_cmp_le0000158  (
    .I0(N208),
    .I1(N209),
    .S(\div/counter_cmp_le0000133_101 ),
    .O(\div/counter_cmp_le0000 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \div/counter_cmp_le0000158_F  (
    .I0(r[3]),
    .I1(r[2]),
    .I2(l[2]),
    .I3(l[3]),
    .O(N208)
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  \div/counter_cmp_le0000158_G  (
    .I0(l[2]),
    .I1(r[3]),
    .I2(l[3]),
    .I3(r[2]),
    .O(N209)
  );
  MUXF5   \div/counter_cmp_lt0000178  (
    .I0(N210),
    .I1(N211),
    .S(\div/counter_cmp_lt0000133_104 ),
    .O(\div/counter_cmp_lt0000 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \div/counter_cmp_lt0000178_F  (
    .I0(r[3]),
    .I1(r[2]),
    .I2(\div/temp [2]),
    .I3(\div/temp [3]),
    .O(N210)
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  \div/counter_cmp_lt0000178_G  (
    .I0(\div/temp [2]),
    .I1(r[3]),
    .I2(\div/temp [3]),
    .I3(r[2]),
    .O(N211)
  );
  MUXF5   \div/result_cmp_ge0001158  (
    .I0(N212),
    .I1(N213),
    .S(\div/result_cmp_ge0001133_116 ),
    .O(\div/result_cmp_ge0001 )
  );
  LUT4 #(
    .INIT ( 16'h08AE ))
  \div/result_cmp_ge0001158_F  (
    .I0(l[3]),
    .I1(l[2]),
    .I2(r[2]),
    .I3(r[3]),
    .O(N212)
  );
  LUT4 #(
    .INIT ( 16'hCF4D ))
  \div/result_cmp_ge0001158_G  (
    .I0(r[2]),
    .I1(l[3]),
    .I2(r[3]),
    .I3(l[2]),
    .O(N213)
  );
  LUT4 #(
    .INIT ( 16'h0004 ))
  \pk/operator_not0001411  (
    .I0(\kbd/scancode [4]),
    .I1(\kbd/scancode [1]),
    .I2(\kbd/scancode [2]),
    .I3(\kbd/scancode [0]),
    .O(\pk/operator_not0001411_250 )
  );
  MUXF5   \pk/operator_not000141_f5  (
    .I0(\pk/operator_not0001411_250 ),
    .I1(result_7_OBUF_289),
    .S(\kbd/scancode [5]),
    .O(\pk/operator_not000141 )
  );
  LUT4 #(
    .INIT ( 16'hBE14 ))
  \op/result<0>81  (
    .I0(\pk/operator [1]),
    .I1(l[0]),
    .I2(\op/result_mux00001_224 ),
    .I3(\div/result [0]),
    .O(\op/result<0>81_222 )
  );
  LUT4 #(
    .INIT ( 16'hED21 ))
  \op/result<0>82  (
    .I0(\op/result_mux00001_224 ),
    .I1(\pk/operator [1]),
    .I2(l[0]),
    .I3(\div/result [0]),
    .O(\op/result<0>82_223 )
  );
  MUXF5   \op/result<0>8_f5  (
    .I0(\op/result<0>82_223 ),
    .I1(\op/result<0>81_222 ),
    .S(r[0]),
    .O(\op/result<0>8 )
  );
  LUT4_D #(
    .INIT ( 16'h0080 ))
  \kbd/f0_not0001271  (
    .I0(\kbd/ps2clksamples [6]),
    .I1(\kbd/ps2clksamples [5]),
    .I2(\kbd/ps2clksamples [4]),
    .I3(\kbd/ps2clksamples [2]),
    .LO(N215),
    .O(\kbd/f0_not0001271_154 )
  );
  LUT4_D #(
    .INIT ( 16'h0004 ))
  \kbd/f0_not0001219  (
    .I0(\kbd/ps2clksamples [0]),
    .I1(\kbd/ps2clksamples [7]),
    .I2(\kbd/ps2clksamples [1]),
    .I3(\kbd/ps2clksamples [3]),
    .LO(N216),
    .O(\kbd/f0_not0001219_153 )
  );
  LUT2_L #(
    .INIT ( 4'h6 ))
  \kbd/f0_not000133  (
    .I0(\kbd/shift [8]),
    .I1(\kbd/shift [7]),
    .LO(\kbd/f0_not000133_156 )
  );
  LUT3_L #(
    .INIT ( 8'h60 ))
  \kbd/f0_not0001353  (
    .I0(\kbd/f0_not000136_159 ),
    .I1(\kbd/f0_not0001312_155 ),
    .I2(\kbd/f0_not0001344_158 ),
    .LO(\kbd/N3 )
  );
  LUT4_L #(
    .INIT ( 16'h7FFF ))
  \pk/empty_not000111_SW0  (
    .I0(\kbd/scancode [6]),
    .I1(\kbd/scancode [5]),
    .I2(\kbd/scancode [4]),
    .I3(\kbd/scancode [3]),
    .LO(N80)
  );
  LUT3_L #(
    .INIT ( 8'h01 ))
  \sb2/bin<0>31  (
    .I0(\pk/right [6]),
    .I1(\pk/right [3]),
    .I2(\pk/right [5]),
    .LO(\sb2/bin<0>31_317 )
  );
  LUT3_L #(
    .INIT ( 8'h01 ))
  \sb1/bin<0>31  (
    .I0(\pk/left [6]),
    .I1(\pk/left [3]),
    .I2(\pk/left [5]),
    .LO(\sb1/bin<0>31_311 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFE ))
  \sb1/bin<0>67  (
    .I0(\sb1/bin<0>8_315 ),
    .I1(\sb1/bin<0>50_313 ),
    .I2(\sb1/bin<0>7_314 ),
    .I3(\sb1/bin<0>32_312 ),
    .LO(N217),
    .O(l[0])
  );
  LUT2_L #(
    .INIT ( 4'h6 ))
  \div/result_cmp_ne000136  (
    .I0(l[1]),
    .I1(r[1]),
    .LO(\div/result_cmp_ne000136_119 )
  );
  LUT4_D #(
    .INIT ( 16'hDDD7 ))
  \sb2/bin<1>1_SW1  (
    .I0(\pk/right [2]),
    .I1(\pk/right [6]),
    .I2(\pk/right [5]),
    .I3(\pk/right [4]),
    .LO(N218),
    .O(N131)
  );
  LUT4_D #(
    .INIT ( 16'hFFEA ))
  \sb2/bin<1>1  (
    .I0(\pk/right [7]),
    .I1(\pk/right [1]),
    .I2(\pk/right [0]),
    .I3(N131),
    .LO(N219),
    .O(N111)
  );
  LUT4_D #(
    .INIT ( 16'hDDD7 ))
  \sb1/bin<1>1_SW1  (
    .I0(\pk/left [2]),
    .I1(\pk/left [6]),
    .I2(\pk/left [5]),
    .I3(\pk/left [4]),
    .LO(N220),
    .O(N133)
  );
  LUT4_D #(
    .INIT ( 16'hFFEA ))
  \sb1/bin<1>1  (
    .I0(\pk/left [7]),
    .I1(\pk/left [1]),
    .I2(\pk/left [0]),
    .I3(N133),
    .LO(N221),
    .O(N10)
  );
  LUT4_D #(
    .INIT ( 16'hFFF4 ))
  \sb2/bin<2>36  (
    .I0(\pk/right [1]),
    .I1(\sb2/bin<2>6_321 ),
    .I2(N135),
    .I3(N111),
    .LO(N222),
    .O(r[2])
  );
  LUT3_D #(
    .INIT ( 8'h4A ))
  \sb1/bin<2>16_SW0  (
    .I0(\pk/left [3]),
    .I1(\pk/left [5]),
    .I2(\pk/left [4]),
    .LO(N223),
    .O(N137)
  );
  LUT4_L #(
    .INIT ( 16'hBAFF ))
  \div/result_and000029  (
    .I0(\div/result_and000015_112 ),
    .I1(\div/result_cmp_ge000112_115 ),
    .I2(N144),
    .I3(\div/result_cmp_ne0001 ),
    .LO(\div/result_and000029_113 )
  );
  LUT2_L #(
    .INIT ( 4'hB ))
  \div/result_and000029_SW0_SW0  (
    .I0(l[3]),
    .I1(r[3]),
    .LO(N155)
  );
  LUT4_L #(
    .INIT ( 16'hFFDF ))
  \sb2/bin<3>1_SW0  (
    .I0(\pk/right [2]),
    .I1(\pk/right [7]),
    .I2(\pk/right [0]),
    .I3(N157),
    .LO(N146)
  );
  LUT4_L #(
    .INIT ( 16'hFFDF ))
  \sb1/bin<3>1_SW0  (
    .I0(\pk/left [2]),
    .I1(\pk/left [7]),
    .I2(\pk/left [0]),
    .I3(N159),
    .LO(N149)
  );
  LUT4_L #(
    .INIT ( 16'h65A6 ))
  \div/temp_Q_mux0000<3>_SW0  (
    .I0(\div/temp [3]),
    .I1(\div/temp [2]),
    .I2(r[2]),
    .I3(\div/temp_Msub__sub0000_cy [1]),
    .LO(N82)
  );
  LUT3_L #(
    .INIT ( 8'hD4 ))
  \div/counter_not00011_SW0  (
    .I0(\div/temp [2]),
    .I1(r[2]),
    .I2(\div/counter_cmp_lt0000133_104 ),
    .LO(N161)
  );
  LUT4_D #(
    .INIT ( 16'h0080 ))
  \kbd/f0_not0001344  (
    .I0(\kbd/f0_not0001334_157 ),
    .I1(\kbd/cnt [3]),
    .I2(\kbd/fall_edge ),
    .I3(\kbd/shift [0]),
    .LO(N224),
    .O(\kbd/f0_not0001344_158 )
  );
  LUT4_L #(
    .INIT ( 16'hFFEF ))
  \pk/empty_not0001211_SW0  (
    .I0(\kbd/scancode [4]),
    .I1(\kbd/scancode [5]),
    .I2(\kbd/scancode [6]),
    .I3(\kbd/scancode [7]),
    .LO(N190)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

