// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 30 14:33:22 2019
// Host        : shegedus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_s02_pchk_0_sim_netlist.v
// Design      : system_s02_pchk_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_axi4pc_asr_inline
   (\s101sq_reg[1]_0 ,
    \AwAddrIncr_q1_reg[3]_0 ,
    \ArAddrIncr_q1_reg[3]_0 ,
    ASR_60_reg_0,
    ASR_60_reg_1,
    ASR_61_reg_0,
    D,
    \AwAddrIncr_q1_reg[3]_1 ,
    \AwAddrIncr_q1_reg[3]_2 ,
    \AwAddrIncr_q1_reg[3]_3 ,
    \AwAddrIncr_q1_reg[3]_4 ,
    \AwAddrIncr_q1_reg[3]_5 ,
    \AwAddrIncr_q1_reg[3]_6 ,
    \AwAddrIncr_q1_reg[3]_7 ,
    \AwAddrIncr_q1_reg[3]_8 ,
    \ArAddrIncr_q1_reg[3]_1 ,
    \ArAddrIncr_q1_reg[3]_2 ,
    \ArAddrIncr_q1_reg[3]_3 ,
    \ArAddrIncr_q1_reg[3]_4 ,
    \ArAddrIncr_q1_reg[3]_5 ,
    \ArAddrIncr_q1_reg[3]_6 ,
    \ArAddrIncr_q1_reg[3]_7 ,
    \ArAddrIncr_q1_reg[3]_8 ,
    aclk,
    ASR_610,
    wlast_q,
    rlast_q,
    awuser_q,
    wuser_q,
    buser_q,
    aruser_q,
    ruser_q,
    Q,
    \araddr_q_reg[31] ,
    data_in,
    \arlen_q_reg[7] ,
    \arsize_q_reg[2] ,
    resetn_q,
    WDataNumError1,
    BStrbError,
    BrespErrorLead_reg,
    rvalid_q,
    \gen_thread_loop[0].active_id_reg ,
    \rid_q_reg[1] ,
    active_cnt,
    \gen_thread_loop[1].active_id_reg ,
    \rresp_q_reg[1] ,
    \arburst_q_reg[1] ,
    \arcache_q_reg[3] ,
    \arid_q_reg[1] ,
    \arqos_q_reg[3] ,
    \arregion_q_reg[3] ,
    arvalid_q,
    bvalid_q,
    bready_q,
    \bid_q_reg[1] ,
    \bresp_q_reg[1] ,
    wvalid_q,
    \awburst_q_reg[1] ,
    \awcache_q_reg[3] ,
    \awqos_q_reg[3] ,
    \awregion_q_reg[3] ,
    awvalid_q,
    awready_q,
    \awprot_q_reg[2] ,
    wready_q,
    arready_q,
    \arprot_q_reg[2] ,
    rready_q,
    \gen_thread_loop[1].RCount_reg[1][6] ,
    CO,
    \wstrb_q_reg[7] ,
    \pc_status_i_reg[77] ,
    S,
    \awaddr_q_reg[7] ,
    \awaddr_q_reg[11] ,
    \awaddr_q_reg[14] ,
    \araddr_q_reg[3] ,
    \araddr_q_reg[7] ,
    \araddr_q_reg[11] ,
    \araddr_q_reg[14] ,
    \wdata_q_reg[63] ,
    \rdata_q_reg[63] );
  output \s101sq_reg[1]_0 ;
  output \AwAddrIncr_q1_reg[3]_0 ;
  output \ArAddrIncr_q1_reg[3]_0 ;
  output ASR_60_reg_0;
  output ASR_60_reg_1;
  output ASR_61_reg_0;
  output [56:0]D;
  output \AwAddrIncr_q1_reg[3]_1 ;
  output \AwAddrIncr_q1_reg[3]_2 ;
  output \AwAddrIncr_q1_reg[3]_3 ;
  output \AwAddrIncr_q1_reg[3]_4 ;
  output \AwAddrIncr_q1_reg[3]_5 ;
  output \AwAddrIncr_q1_reg[3]_6 ;
  output \AwAddrIncr_q1_reg[3]_7 ;
  output \AwAddrIncr_q1_reg[3]_8 ;
  output \ArAddrIncr_q1_reg[3]_1 ;
  output \ArAddrIncr_q1_reg[3]_2 ;
  output \ArAddrIncr_q1_reg[3]_3 ;
  output \ArAddrIncr_q1_reg[3]_4 ;
  output \ArAddrIncr_q1_reg[3]_5 ;
  output \ArAddrIncr_q1_reg[3]_6 ;
  output \ArAddrIncr_q1_reg[3]_7 ;
  output \ArAddrIncr_q1_reg[3]_8 ;
  input aclk;
  input ASR_610;
  input wlast_q;
  input rlast_q;
  input awuser_q;
  input wuser_q;
  input buser_q;
  input aruser_q;
  input ruser_q;
  input [31:0]Q;
  input [31:0]\araddr_q_reg[31] ;
  input [12:0]data_in;
  input [7:0]\arlen_q_reg[7] ;
  input [2:0]\arsize_q_reg[2] ;
  input resetn_q;
  input WDataNumError1;
  input BStrbError;
  input BrespErrorLead_reg;
  input rvalid_q;
  input [1:0]\gen_thread_loop[0].active_id_reg ;
  input [1:0]\rid_q_reg[1] ;
  input [3:0]active_cnt;
  input [1:0]\gen_thread_loop[1].active_id_reg ;
  input [1:0]\rresp_q_reg[1] ;
  input [1:0]\arburst_q_reg[1] ;
  input [3:0]\arcache_q_reg[3] ;
  input [1:0]\arid_q_reg[1] ;
  input [3:0]\arqos_q_reg[3] ;
  input [3:0]\arregion_q_reg[3] ;
  input arvalid_q;
  input bvalid_q;
  input bready_q;
  input [1:0]\bid_q_reg[1] ;
  input [1:0]\bresp_q_reg[1] ;
  input wvalid_q;
  input [1:0]\awburst_q_reg[1] ;
  input [3:0]\awcache_q_reg[3] ;
  input [3:0]\awqos_q_reg[3] ;
  input [3:0]\awregion_q_reg[3] ;
  input awvalid_q;
  input awready_q;
  input [2:0]\awprot_q_reg[2] ;
  input wready_q;
  input arready_q;
  input [2:0]\arprot_q_reg[2] ;
  input rready_q;
  input [0:0]\gen_thread_loop[1].RCount_reg[1][6] ;
  input [0:0]CO;
  input [7:0]\wstrb_q_reg[7] ;
  input [56:0]\pc_status_i_reg[77] ;
  input [3:0]S;
  input [3:0]\awaddr_q_reg[7] ;
  input [3:0]\awaddr_q_reg[11] ;
  input [2:0]\awaddr_q_reg[14] ;
  input [3:0]\araddr_q_reg[3] ;
  input [3:0]\araddr_q_reg[7] ;
  input [3:0]\araddr_q_reg[11] ;
  input [2:0]\araddr_q_reg[14] ;
  input [63:0]\wdata_q_reg[63] ;
  input [63:0]\rdata_q_reg[63] ;

  wire [3:0]ARADDR_eq;
  wire ARADDR_eq0;
  wire ARADDR_eq023_out;
  wire ARADDR_eq026_out;
  wire ARADDR_eq029_out;
  wire \ARADDR_eq[0]_i_2_n_0 ;
  wire \ARADDR_eq[0]_i_3_n_0 ;
  wire \ARADDR_eq[1]_i_2_n_0 ;
  wire \ARADDR_eq[1]_i_3_n_0 ;
  wire \ARADDR_eq[2]_i_2_n_0 ;
  wire \ARADDR_eq[2]_i_3_n_0 ;
  wire \ARADDR_eq[3]_i_2_n_0 ;
  wire \ARADDR_eq[3]_i_3_n_0 ;
  wire [19:0]ARADDR_q1;
  wire \ARADDR_q_reg_n_0_[0] ;
  wire \ARADDR_q_reg_n_0_[1] ;
  wire \ARADDR_q_reg_n_0_[2] ;
  wire \ARADDR_q_reg_n_0_[3] ;
  wire \ARADDR_q_reg_n_0_[4] ;
  wire \ARADDR_q_reg_n_0_[5] ;
  wire \ARADDR_q_reg_n_0_[6] ;
  wire \ARADDR_q_reg_n_0_[7] ;
  wire [0:0]ARADDR_stage_1_eq;
  wire \ARADDR_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]ARADDR_stage_2_eq;
  wire ARUSER_eq0;
  wire ARUSER_q;
  wire \ARUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]ARUSER_stage_2_eq;
  wire ASR_10;
  wire ASR_10_i_1_n_0;
  wire ASR_12;
  wire ASR_12_carry__0_i_1_n_0;
  wire ASR_12_carry__0_i_2_n_0;
  wire ASR_12_carry__0_i_3_n_0;
  wire ASR_12_carry__0_n_2;
  wire ASR_12_carry__0_n_3;
  wire ASR_12_carry_i_1_n_0;
  wire ASR_12_carry_i_2_n_0;
  wire ASR_12_carry_i_3_n_0;
  wire ASR_12_carry_i_4_n_0;
  wire ASR_12_carry_n_0;
  wire ASR_12_carry_n_1;
  wire ASR_12_carry_n_2;
  wire ASR_12_carry_n_3;
  wire ASR_12_i_2_n_0;
  wire ASR_14_i_2_n_0;
  wire ASR_14_i_3_n_0;
  wire ASR_14_i_4_n_0;
  wire ASR_16_i_2_n_0;
  wire ASR_17_i_2_n_0;
  wire ASR_18_i_2_n_0;
  wire ASR_19_i_2_n_0;
  wire ASR_20;
  wire ASR_220;
  wire ASR_230;
  wire ASR_25_i_1_n_0;
  wire ASR_27_i_1_n_0;
  wire ASR_2_i_2_n_0;
  wire ASR_2_i_3_n_0;
  wire ASR_2_i_4_n_0;
  wire ASR_30;
  wire ASR_330;
  wire ASR_380;
  wire ASR_382;
  wire ASR_382_carry__0_i_1_n_0;
  wire ASR_382_carry__0_i_2_n_0;
  wire ASR_382_carry__0_i_3_n_0;
  wire ASR_382_carry__0_n_2;
  wire ASR_382_carry__0_n_3;
  wire ASR_382_carry_i_1_n_0;
  wire ASR_382_carry_i_2_n_0;
  wire ASR_382_carry_i_3_n_0;
  wire ASR_382_carry_i_4_n_0;
  wire ASR_382_carry_n_0;
  wire ASR_382_carry_n_1;
  wire ASR_382_carry_n_2;
  wire ASR_382_carry_n_3;
  wire ASR_390;
  wire ASR_39_i_2_n_0;
  wire ASR_39_i_3_n_0;
  wire ASR_39_i_4_n_0;
  wire ASR_400;
  wire ASR_420;
  wire ASR_430;
  wire ASR_43_i_2_n_0;
  wire ASR_440;
  wire ASR_44_i_2_n_0;
  wire ASR_450;
  wire ASR_47_i_1_n_0;
  wire ASR_49_i_2_n_0;
  wire ASR_50;
  wire ASR_51_i_2_n_0;
  wire ASR_51_i_3_n_0;
  wire ASR_51_i_4_n_0;
  wire ASR_53_i_2_n_0;
  wire ASR_54_i_2_n_0;
  wire ASR_55_i_2_n_0;
  wire ASR_56_i_2_n_0;
  wire ASR_590;
  wire ASR_60;
  wire ASR_600;
  wire ASR_60_reg_0;
  wire ASR_60_reg_1;
  wire ASR_610;
  wire ASR_61_reg_0;
  wire ASR_63_i_1_n_0;
  wire ASR_6_i_2_n_0;
  wire ASR_70;
  wire ASR_74_i_1_n_0;
  wire ASR_75_i_1_n_0;
  wire ASR_76_i_1_n_0;
  wire ASR_77_i_1_n_0;
  wire ASR_78_i_1_n_0;
  wire ASR_7_i_2_n_0;
  wire ASR_80;
  wire [3:0]AWADDR_eq;
  wire AWADDR_eq0;
  wire AWADDR_eq057_out;
  wire AWADDR_eq060_out;
  wire AWADDR_eq063_out;
  wire \AWADDR_eq[0]_i_2_n_0 ;
  wire \AWADDR_eq[0]_i_3_n_0 ;
  wire \AWADDR_eq[1]_i_2_n_0 ;
  wire \AWADDR_eq[1]_i_3_n_0 ;
  wire \AWADDR_eq[2]_i_2_n_0 ;
  wire \AWADDR_eq[2]_i_3_n_0 ;
  wire \AWADDR_eq[3]_i_2_n_0 ;
  wire \AWADDR_eq[3]_i_3_n_0 ;
  wire [19:0]AWADDR_q1;
  wire \AWADDR_q_reg_n_0_[0] ;
  wire \AWADDR_q_reg_n_0_[1] ;
  wire \AWADDR_q_reg_n_0_[2] ;
  wire \AWADDR_q_reg_n_0_[3] ;
  wire \AWADDR_q_reg_n_0_[4] ;
  wire \AWADDR_q_reg_n_0_[5] ;
  wire \AWADDR_q_reg_n_0_[6] ;
  wire \AWADDR_q_reg_n_0_[7] ;
  wire [0:0]AWADDR_stage_1_eq;
  wire \AWADDR_stage_1_eq[0]_i_1_n_0 ;
  wire [0:0]AWADDR_stage_2_eq;
  wire AWUSER_eq0;
  wire AWUSER_q;
  wire \AWUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]AWUSER_stage_2_eq;
  wire [31:12]ArAddrIncr;
  wire [19:0]ArAddrIncr_q1;
  wire \ArAddrIncr_q1[11]_i_2_n_0 ;
  wire \ArAddrIncr_q1[11]_i_3_n_0 ;
  wire \ArAddrIncr_q1[11]_i_4_n_0 ;
  wire \ArAddrIncr_q1[11]_i_5_n_0 ;
  wire \ArAddrIncr_q1[15]_i_2_n_0 ;
  wire \ArAddrIncr_q1[15]_i_3_n_0 ;
  wire \ArAddrIncr_q1[15]_i_4_n_0 ;
  wire \ArAddrIncr_q1[15]_i_5_n_0 ;
  wire \ArAddrIncr_q1[19]_i_2_n_0 ;
  wire \ArAddrIncr_q1[19]_i_3_n_0 ;
  wire \ArAddrIncr_q1[19]_i_4_n_0 ;
  wire \ArAddrIncr_q1[19]_i_5_n_0 ;
  wire \ArAddrIncr_q1[3]_i_3_n_0 ;
  wire \ArAddrIncr_q1[7]_i_2_n_0 ;
  wire \ArAddrIncr_q1[7]_i_3_n_0 ;
  wire \ArAddrIncr_q1[7]_i_4_n_0 ;
  wire \ArAddrIncr_q1[7]_i_5_n_0 ;
  wire \ArAddrIncr_q1_reg[11]_i_1_n_0 ;
  wire \ArAddrIncr_q1_reg[11]_i_1_n_1 ;
  wire \ArAddrIncr_q1_reg[11]_i_1_n_2 ;
  wire \ArAddrIncr_q1_reg[11]_i_1_n_3 ;
  wire \ArAddrIncr_q1_reg[15]_i_1_n_0 ;
  wire \ArAddrIncr_q1_reg[15]_i_1_n_1 ;
  wire \ArAddrIncr_q1_reg[15]_i_1_n_2 ;
  wire \ArAddrIncr_q1_reg[15]_i_1_n_3 ;
  wire \ArAddrIncr_q1_reg[19]_i_1_n_1 ;
  wire \ArAddrIncr_q1_reg[19]_i_1_n_2 ;
  wire \ArAddrIncr_q1_reg[19]_i_1_n_3 ;
  wire \ArAddrIncr_q1_reg[3]_0 ;
  wire \ArAddrIncr_q1_reg[3]_1 ;
  wire \ArAddrIncr_q1_reg[3]_2 ;
  wire \ArAddrIncr_q1_reg[3]_3 ;
  wire \ArAddrIncr_q1_reg[3]_4 ;
  wire \ArAddrIncr_q1_reg[3]_5 ;
  wire \ArAddrIncr_q1_reg[3]_6 ;
  wire \ArAddrIncr_q1_reg[3]_7 ;
  wire \ArAddrIncr_q1_reg[3]_8 ;
  wire \ArAddrIncr_q1_reg[3]_i_13_n_0 ;
  wire \ArAddrIncr_q1_reg[3]_i_13_n_1 ;
  wire \ArAddrIncr_q1_reg[3]_i_13_n_2 ;
  wire \ArAddrIncr_q1_reg[3]_i_13_n_3 ;
  wire \ArAddrIncr_q1_reg[3]_i_1_n_0 ;
  wire \ArAddrIncr_q1_reg[3]_i_1_n_1 ;
  wire \ArAddrIncr_q1_reg[3]_i_1_n_2 ;
  wire \ArAddrIncr_q1_reg[3]_i_1_n_3 ;
  wire \ArAddrIncr_q1_reg[3]_i_2_n_0 ;
  wire \ArAddrIncr_q1_reg[3]_i_2_n_1 ;
  wire \ArAddrIncr_q1_reg[3]_i_2_n_2 ;
  wire \ArAddrIncr_q1_reg[3]_i_2_n_3 ;
  wire \ArAddrIncr_q1_reg[3]_i_7_n_0 ;
  wire \ArAddrIncr_q1_reg[3]_i_7_n_1 ;
  wire \ArAddrIncr_q1_reg[3]_i_7_n_2 ;
  wire \ArAddrIncr_q1_reg[3]_i_7_n_3 ;
  wire \ArAddrIncr_q1_reg[7]_i_1_n_0 ;
  wire \ArAddrIncr_q1_reg[7]_i_1_n_1 ;
  wire \ArAddrIncr_q1_reg[7]_i_1_n_2 ;
  wire \ArAddrIncr_q1_reg[7]_i_1_n_3 ;
  wire [31:12]AwAddrIncr;
  wire [19:0]AwAddrIncr_q1;
  wire \AwAddrIncr_q1[11]_i_2_n_0 ;
  wire \AwAddrIncr_q1[11]_i_3_n_0 ;
  wire \AwAddrIncr_q1[11]_i_4_n_0 ;
  wire \AwAddrIncr_q1[11]_i_5_n_0 ;
  wire \AwAddrIncr_q1[15]_i_2_n_0 ;
  wire \AwAddrIncr_q1[15]_i_3_n_0 ;
  wire \AwAddrIncr_q1[15]_i_4_n_0 ;
  wire \AwAddrIncr_q1[15]_i_5_n_0 ;
  wire \AwAddrIncr_q1[19]_i_2_n_0 ;
  wire \AwAddrIncr_q1[19]_i_3_n_0 ;
  wire \AwAddrIncr_q1[19]_i_4_n_0 ;
  wire \AwAddrIncr_q1[19]_i_5_n_0 ;
  wire \AwAddrIncr_q1[3]_i_3_n_0 ;
  wire \AwAddrIncr_q1[7]_i_2_n_0 ;
  wire \AwAddrIncr_q1[7]_i_3_n_0 ;
  wire \AwAddrIncr_q1[7]_i_4_n_0 ;
  wire \AwAddrIncr_q1[7]_i_5_n_0 ;
  wire \AwAddrIncr_q1_reg[11]_i_1_n_0 ;
  wire \AwAddrIncr_q1_reg[11]_i_1_n_1 ;
  wire \AwAddrIncr_q1_reg[11]_i_1_n_2 ;
  wire \AwAddrIncr_q1_reg[11]_i_1_n_3 ;
  wire \AwAddrIncr_q1_reg[15]_i_1_n_0 ;
  wire \AwAddrIncr_q1_reg[15]_i_1_n_1 ;
  wire \AwAddrIncr_q1_reg[15]_i_1_n_2 ;
  wire \AwAddrIncr_q1_reg[15]_i_1_n_3 ;
  wire \AwAddrIncr_q1_reg[19]_i_1_n_1 ;
  wire \AwAddrIncr_q1_reg[19]_i_1_n_2 ;
  wire \AwAddrIncr_q1_reg[19]_i_1_n_3 ;
  wire \AwAddrIncr_q1_reg[3]_0 ;
  wire \AwAddrIncr_q1_reg[3]_1 ;
  wire \AwAddrIncr_q1_reg[3]_2 ;
  wire \AwAddrIncr_q1_reg[3]_3 ;
  wire \AwAddrIncr_q1_reg[3]_4 ;
  wire \AwAddrIncr_q1_reg[3]_5 ;
  wire \AwAddrIncr_q1_reg[3]_6 ;
  wire \AwAddrIncr_q1_reg[3]_7 ;
  wire \AwAddrIncr_q1_reg[3]_8 ;
  wire \AwAddrIncr_q1_reg[3]_i_13_n_0 ;
  wire \AwAddrIncr_q1_reg[3]_i_13_n_1 ;
  wire \AwAddrIncr_q1_reg[3]_i_13_n_2 ;
  wire \AwAddrIncr_q1_reg[3]_i_13_n_3 ;
  wire \AwAddrIncr_q1_reg[3]_i_1_n_0 ;
  wire \AwAddrIncr_q1_reg[3]_i_1_n_1 ;
  wire \AwAddrIncr_q1_reg[3]_i_1_n_2 ;
  wire \AwAddrIncr_q1_reg[3]_i_1_n_3 ;
  wire \AwAddrIncr_q1_reg[3]_i_2_n_0 ;
  wire \AwAddrIncr_q1_reg[3]_i_2_n_1 ;
  wire \AwAddrIncr_q1_reg[3]_i_2_n_2 ;
  wire \AwAddrIncr_q1_reg[3]_i_2_n_3 ;
  wire \AwAddrIncr_q1_reg[3]_i_7_n_0 ;
  wire \AwAddrIncr_q1_reg[3]_i_7_n_1 ;
  wire \AwAddrIncr_q1_reg[3]_i_7_n_2 ;
  wire \AwAddrIncr_q1_reg[3]_i_7_n_3 ;
  wire \AwAddrIncr_q1_reg[7]_i_1_n_0 ;
  wire \AwAddrIncr_q1_reg[7]_i_1_n_1 ;
  wire \AwAddrIncr_q1_reg[7]_i_1_n_2 ;
  wire \AwAddrIncr_q1_reg[7]_i_1_n_3 ;
  wire [77:0]Axi4PC_asr_inline_out;
  wire BStrbError;
  wire BUSER_eq0;
  wire BUSER_q;
  wire \BUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]BUSER_stage_2_eq;
  wire BrespErrorLead_reg;
  wire [0:0]CO;
  wire [56:0]D;
  wire [31:0]Q;
  wire [7:0]RDATA_eq;
  wire RDATA_eq00_out;
  wire RDATA_eq012_out;
  wire RDATA_eq015_out;
  wire RDATA_eq018_out;
  wire RDATA_eq03_out;
  wire RDATA_eq06_out;
  wire RDATA_eq09_out;
  wire RDATA_eq0__0;
  wire \RDATA_eq0_inferred__0/RDATA_eq[1]_i_2_n_0 ;
  wire \RDATA_eq0_inferred__0/RDATA_eq[1]_i_3_n_0 ;
  wire \RDATA_eq0_inferred__1/RDATA_eq[2]_i_2_n_0 ;
  wire \RDATA_eq0_inferred__1/RDATA_eq[2]_i_3_n_0 ;
  wire \RDATA_eq0_inferred__2/RDATA_eq[3]_i_2_n_0 ;
  wire \RDATA_eq0_inferred__2/RDATA_eq[3]_i_3_n_0 ;
  wire \RDATA_eq0_inferred__3/RDATA_eq[4]_i_2_n_0 ;
  wire \RDATA_eq0_inferred__3/RDATA_eq[4]_i_3_n_0 ;
  wire \RDATA_eq0_inferred__4/RDATA_eq[5]_i_2_n_0 ;
  wire \RDATA_eq0_inferred__4/RDATA_eq[5]_i_3_n_0 ;
  wire \RDATA_eq0_inferred__5/RDATA_eq[6]_i_2_n_0 ;
  wire \RDATA_eq0_inferred__5/RDATA_eq[6]_i_3_n_0 ;
  wire \RDATA_eq0_inferred__6/RDATA_eq[7]_i_2_n_0 ;
  wire \RDATA_eq0_inferred__6/RDATA_eq[7]_i_3_n_0 ;
  wire \RDATA_eq[0]_i_2_n_0 ;
  wire \RDATA_eq[0]_i_3_n_0 ;
  wire \RDATA_q_reg_n_0_[0] ;
  wire \RDATA_q_reg_n_0_[1] ;
  wire \RDATA_q_reg_n_0_[2] ;
  wire \RDATA_q_reg_n_0_[3] ;
  wire \RDATA_q_reg_n_0_[4] ;
  wire \RDATA_q_reg_n_0_[5] ;
  wire \RDATA_q_reg_n_0_[6] ;
  wire \RDATA_q_reg_n_0_[7] ;
  wire [0:0]RDATA_stage_1_eq;
  wire RDATA_stage_1_eq0__0;
  wire \RDATA_stage_1_eq[0]_i_2_n_0 ;
  wire [0:0]RDATA_stage_2_eq;
  wire RUSER_eq0;
  wire RUSER_q;
  wire \RUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]RUSER_stage_2_eq;
  wire [3:0]S;
  wire [7:0]WDATA_eq;
  wire WDATA_eq034_out;
  wire WDATA_eq037_out;
  wire WDATA_eq040_out;
  wire WDATA_eq043_out;
  wire WDATA_eq046_out;
  wire WDATA_eq049_out;
  wire WDATA_eq052_out;
  wire WDATA_eq0__0;
  wire \WDATA_eq0_inferred__0/WDATA_eq[1]_i_2_n_0 ;
  wire \WDATA_eq0_inferred__0/WDATA_eq[1]_i_3_n_0 ;
  wire \WDATA_eq0_inferred__1/WDATA_eq[2]_i_2_n_0 ;
  wire \WDATA_eq0_inferred__1/WDATA_eq[2]_i_3_n_0 ;
  wire \WDATA_eq0_inferred__2/WDATA_eq[3]_i_2_n_0 ;
  wire \WDATA_eq0_inferred__2/WDATA_eq[3]_i_3_n_0 ;
  wire \WDATA_eq0_inferred__3/WDATA_eq[4]_i_2_n_0 ;
  wire \WDATA_eq0_inferred__3/WDATA_eq[4]_i_3_n_0 ;
  wire \WDATA_eq0_inferred__4/WDATA_eq[5]_i_2_n_0 ;
  wire \WDATA_eq0_inferred__4/WDATA_eq[5]_i_3_n_0 ;
  wire \WDATA_eq0_inferred__5/WDATA_eq[6]_i_2_n_0 ;
  wire \WDATA_eq0_inferred__5/WDATA_eq[6]_i_3_n_0 ;
  wire \WDATA_eq0_inferred__6/WDATA_eq[7]_i_2_n_0 ;
  wire \WDATA_eq0_inferred__6/WDATA_eq[7]_i_3_n_0 ;
  wire \WDATA_eq[0]_i_2_n_0 ;
  wire \WDATA_eq[0]_i_3_n_0 ;
  wire \WDATA_q_reg_n_0_[0] ;
  wire \WDATA_q_reg_n_0_[1] ;
  wire \WDATA_q_reg_n_0_[2] ;
  wire \WDATA_q_reg_n_0_[3] ;
  wire \WDATA_q_reg_n_0_[4] ;
  wire \WDATA_q_reg_n_0_[5] ;
  wire \WDATA_q_reg_n_0_[6] ;
  wire \WDATA_q_reg_n_0_[7] ;
  wire [0:0]WDATA_stage_1_eq;
  wire WDATA_stage_1_eq0__0;
  wire \WDATA_stage_1_eq[0]_i_2_n_0 ;
  wire [0:0]WDATA_stage_2_eq;
  wire WDataNumError1;
  wire WSTRB_eq0;
  wire [7:0]WSTRB_q;
  wire \WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0 ;
  wire \WSTRB_stage_1_eq_reg[0]_srl2_i_3_n_0 ;
  wire \WSTRB_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]WSTRB_stage_2_eq;
  wire WUSER_eq0;
  wire WUSER_q;
  wire \WUSER_stage_1_eq_reg[0]_srl2_n_0 ;
  wire [0:0]WUSER_stage_2_eq;
  wire aclk;
  wire [3:0]active_cnt;
  wire [3:0]\araddr_q_reg[11] ;
  wire [2:0]\araddr_q_reg[14] ;
  wire [31:0]\araddr_q_reg[31] ;
  wire [3:0]\araddr_q_reg[3] ;
  wire [3:0]\araddr_q_reg[7] ;
  wire [1:0]\arburst_q_reg[1] ;
  wire [3:0]\arcache_q_reg[3] ;
  wire [1:0]\arid_q_reg[1] ;
  wire [7:0]\arlen_q_reg[7] ;
  wire [2:0]\arprot_q_reg[2] ;
  wire [3:0]\arqos_q_reg[3] ;
  wire arready_q;
  wire [3:0]\arregion_q_reg[3] ;
  wire [2:0]\arsize_q_reg[2] ;
  wire aruser_q;
  wire arvalid_q;
  wire asr_1_ctrl;
  wire asr_1_ctrl0;
  wire asr_38_ctrl;
  wire asr_38_ctrl0;
  wire [3:0]\awaddr_q_reg[11] ;
  wire [2:0]\awaddr_q_reg[14] ;
  wire [3:0]\awaddr_q_reg[7] ;
  wire [1:0]\awburst_q_reg[1] ;
  wire [3:0]\awcache_q_reg[3] ;
  wire [2:0]\awprot_q_reg[2] ;
  wire [3:0]\awqos_q_reg[3] ;
  wire awready_q;
  wire [3:0]\awregion_q_reg[3] ;
  wire awuser_q;
  wire awvalid_q;
  wire [1:0]\bid_q_reg[1] ;
  wire bready_q;
  wire [1:0]\bresp_q_reg[1] ;
  wire buser_q;
  wire bvalid_q;
  wire [12:0]data_in;
  wire [1:0]\gen_thread_loop[0].active_id_reg ;
  wire [0:0]\gen_thread_loop[1].RCount_reg[1][6] ;
  wire [1:0]\gen_thread_loop[1].active_id_reg ;
  wire p_0_in11_in;
  wire [3:0]p_0_in21_in;
  wire p_0_in22_in;
  wire p_0_in2_in;
  wire p_0_in41_in;
  wire [3:0]p_0_in55_in;
  wire p_0_in5_in;
  wire p_0_in65_in;
  wire p_0_in72_in;
  wire p_0_in85_in;
  wire p_0_in8_in;
  wire [7:0]p_1_in;
  wire [7:0]p_1_in11_in;
  wire [7:0]p_1_in14_in;
  wire [7:0]p_1_in17_in;
  wire [7:0]p_1_in2_in;
  wire [7:0]p_1_in33_in;
  wire [7:0]p_1_in36_in;
  wire [7:0]p_1_in39_in;
  wire [7:0]p_1_in42_in;
  wire [7:0]p_1_in45_in;
  wire [7:0]p_1_in48_in;
  wire [7:0]p_1_in51_in;
  wire [7:0]p_1_in5_in;
  wire [7:0]p_1_in8_in;
  wire [56:0]\pc_status_i_reg[77] ;
  wire [63:0]\rdata_q_reg[63] ;
  wire resetn_q;
  wire [1:0]\rid_q_reg[1] ;
  wire rlast_q;
  wire rready_q;
  wire [1:0]\rresp_q_reg[1] ;
  wire ruser_q;
  wire rvalid_q;
  wire s100s0;
  wire s101s0;
  wire \s101sq_reg[1]_0 ;
  wire s10s0;
  wire [1:0]s11;
  wire s13s0;
  wire [7:0]s14;
  wire s16s0;
  wire [2:0]s20;
  wire s22s0;
  wire [2:0]s23;
  wire s25s0;
  wire [3:0]s26;
  wire s28s0;
  wire [3:0]s29;
  wire s31s0;
  wire s32s0;
  wire s38;
  wire s40s0;
  wire s44s0;
  wire [1:0]s47;
  wire s49s0;
  wire [1:0]s5;
  wire [1:0]s50;
  wire s52s0;
  wire s53s0;
  wire [1:0]s59;
  wire s61s0;
  wire [3:0]s62;
  wire s64s0;
  wire [1:0]s65;
  wire s67s0;
  wire [7:0]s68;
  wire s70s0;
  wire [2:0]s74;
  wire s76s0;
  wire [2:0]s77;
  wire s79s0;
  wire s7s0;
  wire [3:0]s8;
  wire [3:0]s80;
  wire s82s0;
  wire [3:0]s83;
  wire s85s0;
  wire s86s0;
  wire [1:0]s92;
  wire s94s0;
  wire s95;
  wire s97s0;
  wire [1:0]s98;
  wire [4:4]s_ARADDR_s;
  wire s_ARUSER_s04_out;
  wire \s_ARUSER_sq_reg_n_0_[2] ;
  wire \s_ARUSER_sq_reg_n_0_[3] ;
  wire [4:4]s_AWADDR_s;
  wire s_AWUSER_s013_out;
  wire \s_AWUSER_sq_reg_n_0_[2] ;
  wire \s_AWUSER_sq_reg_n_0_[3] ;
  wire [4:3]s_BUSER_s;
  wire [2:1]s_BUSER_s__0;
  wire [4:4]s_RDATA_s;
  wire s_RUSER_s01_out;
  wire \s_RUSER_sq_reg_n_0_[1] ;
  wire \s_RUSER_sq_reg_n_0_[2] ;
  wire \s_RUSER_sq_reg_n_0_[3] ;
  wire [4:4]s_WDATA_s;
  wire s_WUSER_s010_out;
  wire \s_WUSER_sq_reg_n_0_[2] ;
  wire \s_WUSER_sq_reg_n_0_[3] ;
  wire [63:0]\wdata_q_reg[63] ;
  wire wlast_q;
  wire wready_q;
  wire [7:0]\wstrb_q_reg[7] ;
  wire wuser_q;
  wire wvalid_q;
  wire [3:0]NLW_ASR_12_carry_O_UNCONNECTED;
  wire [3:3]NLW_ASR_12_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ASR_12_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_ASR_382_carry_O_UNCONNECTED;
  wire [3:3]NLW_ASR_382_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ASR_382_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_ArAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_ArAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_ArAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_ArAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_AwAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_AwAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_AwAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_AwAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \ARADDR_eq[0]_i_1 
       (.I0(\araddr_q_reg[31] [7]),
        .I1(\ARADDR_q_reg_n_0_[7] ),
        .I2(\araddr_q_reg[31] [6]),
        .I3(\ARADDR_q_reg_n_0_[6] ),
        .I4(\ARADDR_eq[0]_i_2_n_0 ),
        .I5(\ARADDR_eq[0]_i_3_n_0 ),
        .O(ARADDR_eq0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[0]_i_2 
       (.I0(\ARADDR_q_reg_n_0_[0] ),
        .I1(\araddr_q_reg[31] [0]),
        .I2(\araddr_q_reg[31] [1]),
        .I3(\ARADDR_q_reg_n_0_[1] ),
        .I4(\araddr_q_reg[31] [2]),
        .I5(\ARADDR_q_reg_n_0_[2] ),
        .O(\ARADDR_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[0]_i_3 
       (.I0(\ARADDR_q_reg_n_0_[3] ),
        .I1(\araddr_q_reg[31] [3]),
        .I2(\araddr_q_reg[31] [4]),
        .I3(\ARADDR_q_reg_n_0_[4] ),
        .I4(\araddr_q_reg[31] [5]),
        .I5(\ARADDR_q_reg_n_0_[5] ),
        .O(\ARADDR_eq[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \ARADDR_eq[1]_i_1 
       (.I0(ARADDR_q1[2]),
        .I1(\araddr_q_reg[31] [14]),
        .I2(ARADDR_q1[3]),
        .I3(\araddr_q_reg[31] [15]),
        .I4(\ARADDR_eq[1]_i_2_n_0 ),
        .I5(\ARADDR_eq[1]_i_3_n_0 ),
        .O(ARADDR_eq023_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[1]_i_2 
       (.I0(p_0_in21_in[0]),
        .I1(\araddr_q_reg[31] [8]),
        .I2(\araddr_q_reg[31] [10]),
        .I3(p_0_in21_in[2]),
        .I4(\araddr_q_reg[31] [9]),
        .I5(p_0_in21_in[1]),
        .O(\ARADDR_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[1]_i_3 
       (.I0(p_0_in21_in[3]),
        .I1(\araddr_q_reg[31] [11]),
        .I2(ARADDR_q1[0]),
        .I3(\araddr_q_reg[31] [12]),
        .I4(ARADDR_q1[1]),
        .I5(\araddr_q_reg[31] [13]),
        .O(\ARADDR_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \ARADDR_eq[2]_i_1 
       (.I0(ARADDR_q1[11]),
        .I1(\araddr_q_reg[31] [23]),
        .I2(ARADDR_q1[10]),
        .I3(\araddr_q_reg[31] [22]),
        .I4(\ARADDR_eq[2]_i_2_n_0 ),
        .I5(\ARADDR_eq[2]_i_3_n_0 ),
        .O(ARADDR_eq026_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[2]_i_2 
       (.I0(\araddr_q_reg[31] [16]),
        .I1(ARADDR_q1[4]),
        .I2(ARADDR_q1[6]),
        .I3(\araddr_q_reg[31] [18]),
        .I4(ARADDR_q1[5]),
        .I5(\araddr_q_reg[31] [17]),
        .O(\ARADDR_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[2]_i_3 
       (.I0(\araddr_q_reg[31] [19]),
        .I1(ARADDR_q1[7]),
        .I2(ARADDR_q1[9]),
        .I3(\araddr_q_reg[31] [21]),
        .I4(ARADDR_q1[8]),
        .I5(\araddr_q_reg[31] [20]),
        .O(\ARADDR_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \ARADDR_eq[3]_i_1 
       (.I0(ARADDR_q1[18]),
        .I1(\araddr_q_reg[31] [30]),
        .I2(ARADDR_q1[19]),
        .I3(\araddr_q_reg[31] [31]),
        .I4(\ARADDR_eq[3]_i_2_n_0 ),
        .I5(\ARADDR_eq[3]_i_3_n_0 ),
        .O(ARADDR_eq029_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[3]_i_2 
       (.I0(ARADDR_q1[13]),
        .I1(\araddr_q_reg[31] [25]),
        .I2(ARADDR_q1[14]),
        .I3(\araddr_q_reg[31] [26]),
        .I4(\araddr_q_reg[31] [24]),
        .I5(ARADDR_q1[12]),
        .O(\ARADDR_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \ARADDR_eq[3]_i_3 
       (.I0(\araddr_q_reg[31] [27]),
        .I1(ARADDR_q1[15]),
        .I2(ARADDR_q1[16]),
        .I3(\araddr_q_reg[31] [28]),
        .I4(ARADDR_q1[17]),
        .I5(\araddr_q_reg[31] [29]),
        .O(\ARADDR_eq[3]_i_3_n_0 ));
  FDRE \ARADDR_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ARADDR_eq0),
        .Q(ARADDR_eq[0]),
        .R(1'b0));
  FDRE \ARADDR_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ARADDR_eq023_out),
        .Q(ARADDR_eq[1]),
        .R(1'b0));
  FDRE \ARADDR_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ARADDR_eq026_out),
        .Q(ARADDR_eq[2]),
        .R(1'b0));
  FDRE \ARADDR_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ARADDR_eq029_out),
        .Q(ARADDR_eq[3]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [12]),
        .Q(ARADDR_q1[0]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [22]),
        .Q(ARADDR_q1[10]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [23]),
        .Q(ARADDR_q1[11]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [24]),
        .Q(ARADDR_q1[12]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [25]),
        .Q(ARADDR_q1[13]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [26]),
        .Q(ARADDR_q1[14]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [27]),
        .Q(ARADDR_q1[15]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [28]),
        .Q(ARADDR_q1[16]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [29]),
        .Q(ARADDR_q1[17]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [30]),
        .Q(ARADDR_q1[18]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [31]),
        .Q(ARADDR_q1[19]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [13]),
        .Q(ARADDR_q1[1]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [14]),
        .Q(ARADDR_q1[2]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [15]),
        .Q(ARADDR_q1[3]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [16]),
        .Q(ARADDR_q1[4]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [17]),
        .Q(ARADDR_q1[5]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [18]),
        .Q(ARADDR_q1[6]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [19]),
        .Q(ARADDR_q1[7]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [20]),
        .Q(ARADDR_q1[8]),
        .R(1'b0));
  FDRE \ARADDR_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [21]),
        .Q(ARADDR_q1[9]),
        .R(1'b0));
  FDRE \ARADDR_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [0]),
        .Q(\ARADDR_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [10]),
        .Q(p_0_in21_in[2]),
        .R(1'b0));
  FDRE \ARADDR_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [11]),
        .Q(p_0_in21_in[3]),
        .R(1'b0));
  FDRE \ARADDR_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [1]),
        .Q(\ARADDR_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [2]),
        .Q(\ARADDR_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [3]),
        .Q(\ARADDR_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [4]),
        .Q(\ARADDR_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [5]),
        .Q(\ARADDR_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [6]),
        .Q(\ARADDR_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [7]),
        .Q(\ARADDR_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \ARADDR_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [8]),
        .Q(p_0_in21_in[0]),
        .R(1'b0));
  FDRE \ARADDR_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\araddr_q_reg[31] [9]),
        .Q(p_0_in21_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \ARADDR_stage_1_eq[0]_i_1 
       (.I0(ARADDR_eq[1]),
        .I1(ARADDR_eq[0]),
        .I2(ARADDR_eq[3]),
        .I3(ARADDR_eq[2]),
        .O(\ARADDR_stage_1_eq[0]_i_1_n_0 ));
  FDRE \ARADDR_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ARADDR_stage_1_eq[0]_i_1_n_0 ),
        .Q(ARADDR_stage_1_eq),
        .R(1'b0));
  FDRE \ARADDR_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ARADDR_stage_1_eq),
        .Q(ARADDR_stage_2_eq),
        .R(1'b0));
  FDRE \ARUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aruser_q),
        .Q(ARUSER_q),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/ARUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/ARUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \ARUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(ARUSER_eq0),
        .Q(\ARUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ARUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(ARUSER_q),
        .I1(aruser_q),
        .O(ARUSER_eq0));
  FDRE \ARUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ARUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(ARUSER_stage_2_eq),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_10_i_1
       (.I0(p_0_in11_in),
        .I1(AWADDR_stage_2_eq),
        .O(ASR_10_i_1_n_0));
  FDRE ASR_10_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_10_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[9]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_11_i_1
       (.I0(p_0_in85_in),
        .I1(resetn_q),
        .I2(\awburst_q_reg[1] [0]),
        .I3(s5[0]),
        .I4(\awburst_q_reg[1] [1]),
        .I5(s5[1]),
        .O(s7s0));
  FDRE ASR_11_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s7s0),
        .Q(Axi4PC_asr_inline_out[10]),
        .R(\s101sq_reg[1]_0 ));
  CARRY4 ASR_12_carry
       (.CI(1'b0),
        .CO({ASR_12_carry_n_0,ASR_12_carry_n_1,ASR_12_carry_n_2,ASR_12_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ASR_12_carry_O_UNCONNECTED[3:0]),
        .S({ASR_12_carry_i_1_n_0,ASR_12_carry_i_2_n_0,ASR_12_carry_i_3_n_0,ASR_12_carry_i_4_n_0}));
  CARRY4 ASR_12_carry__0
       (.CI(ASR_12_carry_n_0),
        .CO({NLW_ASR_12_carry__0_CO_UNCONNECTED[3],ASR_12,ASR_12_carry__0_n_2,ASR_12_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ASR_12_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,ASR_12_carry__0_i_1_n_0,ASR_12_carry__0_i_2_n_0,ASR_12_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    ASR_12_carry__0_i_1
       (.I0(AWADDR_q1[19]),
        .I1(AwAddrIncr_q1[19]),
        .I2(AWADDR_q1[18]),
        .I3(AwAddrIncr_q1[18]),
        .O(ASR_12_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry__0_i_2
       (.I0(AwAddrIncr_q1[15]),
        .I1(AWADDR_q1[15]),
        .I2(AwAddrIncr_q1[16]),
        .I3(AWADDR_q1[16]),
        .I4(AWADDR_q1[17]),
        .I5(AwAddrIncr_q1[17]),
        .O(ASR_12_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry__0_i_3
       (.I0(AwAddrIncr_q1[12]),
        .I1(AWADDR_q1[12]),
        .I2(AwAddrIncr_q1[13]),
        .I3(AWADDR_q1[13]),
        .I4(AWADDR_q1[14]),
        .I5(AwAddrIncr_q1[14]),
        .O(ASR_12_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_1
       (.I0(AwAddrIncr_q1[9]),
        .I1(AWADDR_q1[9]),
        .I2(AwAddrIncr_q1[10]),
        .I3(AWADDR_q1[10]),
        .I4(AWADDR_q1[11]),
        .I5(AwAddrIncr_q1[11]),
        .O(ASR_12_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_2
       (.I0(AwAddrIncr_q1[6]),
        .I1(AWADDR_q1[6]),
        .I2(AwAddrIncr_q1[7]),
        .I3(AWADDR_q1[7]),
        .I4(AWADDR_q1[8]),
        .I5(AwAddrIncr_q1[8]),
        .O(ASR_12_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_3
       (.I0(AwAddrIncr_q1[4]),
        .I1(AWADDR_q1[4]),
        .I2(AwAddrIncr_q1[3]),
        .I3(AWADDR_q1[3]),
        .I4(AWADDR_q1[5]),
        .I5(AwAddrIncr_q1[5]),
        .O(ASR_12_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_12_carry_i_4
       (.I0(AwAddrIncr_q1[2]),
        .I1(AWADDR_q1[2]),
        .I2(AwAddrIncr_q1[0]),
        .I3(AWADDR_q1[0]),
        .I4(AWADDR_q1[1]),
        .I5(AwAddrIncr_q1[1]),
        .O(ASR_12_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    ASR_12_i_1
       (.I0(s_AWUSER_s013_out),
        .I1(ASR_12_i_2_n_0),
        .I2(\awcache_q_reg[3] [0]),
        .I3(s8[0]),
        .I4(s8[2]),
        .I5(\awcache_q_reg[3] [2]),
        .O(s10s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_12_i_2
       (.I0(s8[3]),
        .I1(\awcache_q_reg[3] [3]),
        .I2(s8[1]),
        .I3(\awcache_q_reg[3] [1]),
        .O(ASR_12_i_2_n_0));
  FDRE ASR_12_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s10s0),
        .Q(Axi4PC_asr_inline_out[11]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_13_i_1
       (.I0(p_0_in85_in),
        .I1(resetn_q),
        .I2(s11[0]),
        .I3(data_in[11]),
        .I4(s11[1]),
        .I5(data_in[12]),
        .O(s13s0));
  FDRE ASR_13_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s13s0),
        .Q(Axi4PC_asr_inline_out[12]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h88808888)) 
    ASR_14_i_1
       (.I0(p_0_in85_in),
        .I1(resetn_q),
        .I2(ASR_14_i_2_n_0),
        .I3(ASR_14_i_3_n_0),
        .I4(ASR_14_i_4_n_0),
        .O(s16s0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ASR_14_i_2
       (.I0(s14[3]),
        .I1(data_in[6]),
        .I2(data_in[7]),
        .I3(s14[4]),
        .I4(data_in[8]),
        .I5(s14[5]),
        .O(ASR_14_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ASR_14_i_3
       (.I0(s14[0]),
        .I1(data_in[3]),
        .I2(data_in[5]),
        .I3(s14[2]),
        .I4(data_in[4]),
        .I5(s14[1]),
        .O(ASR_14_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ASR_14_i_4
       (.I0(s14[6]),
        .I1(data_in[9]),
        .I2(s14[7]),
        .I3(data_in[10]),
        .O(ASR_14_i_4_n_0));
  FDRE ASR_14_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s16s0),
        .Q(Axi4PC_asr_inline_out[13]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_16_i_1
       (.I0(p_0_in85_in),
        .I1(resetn_q),
        .I2(ASR_16_i_2_n_0),
        .O(s22s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_16_i_2
       (.I0(s20[1]),
        .I1(\awprot_q_reg[2] [1]),
        .I2(s20[2]),
        .I3(\awprot_q_reg[2] [2]),
        .I4(\awprot_q_reg[2] [0]),
        .I5(s20[0]),
        .O(ASR_16_i_2_n_0));
  FDRE ASR_16_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s22s0),
        .Q(Axi4PC_asr_inline_out[15]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_17_i_1
       (.I0(p_0_in85_in),
        .I1(resetn_q),
        .I2(ASR_17_i_2_n_0),
        .O(s25s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_17_i_2
       (.I0(s23[1]),
        .I1(data_in[1]),
        .I2(s23[2]),
        .I3(data_in[2]),
        .I4(data_in[0]),
        .I5(s23[0]),
        .O(ASR_17_i_2_n_0));
  FDRE ASR_17_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s25s0),
        .Q(Axi4PC_asr_inline_out[16]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    ASR_18_i_1
       (.I0(s_AWUSER_s013_out),
        .I1(ASR_18_i_2_n_0),
        .I2(\awqos_q_reg[3] [1]),
        .I3(s26[1]),
        .I4(\awqos_q_reg[3] [2]),
        .I5(s26[2]),
        .O(s28s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_18_i_2
       (.I0(\awqos_q_reg[3] [3]),
        .I1(s26[3]),
        .I2(\awqos_q_reg[3] [0]),
        .I3(s26[0]),
        .O(ASR_18_i_2_n_0));
  FDRE ASR_18_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s28s0),
        .Q(Axi4PC_asr_inline_out[17]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    ASR_19_i_1
       (.I0(s_AWUSER_s013_out),
        .I1(ASR_19_i_2_n_0),
        .I2(\awregion_q_reg[3] [0]),
        .I3(s29[0]),
        .I4(\awregion_q_reg[3] [2]),
        .I5(s29[2]),
        .O(s31s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_19_i_2
       (.I0(\awregion_q_reg[3] [3]),
        .I1(s29[3]),
        .I2(\awregion_q_reg[3] [1]),
        .I3(s29[1]),
        .O(ASR_19_i_2_n_0));
  FDRE ASR_19_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s31s0),
        .Q(Axi4PC_asr_inline_out[18]),
        .R(\s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    ASR_1_i_1
       (.I0(asr_1_ctrl),
        .I1(ASR_12),
        .O(ASR_10));
  FDRE ASR_1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_10),
        .Q(Axi4PC_asr_inline_out[0]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_20_i_1
       (.I0(p_0_in85_in),
        .I1(resetn_q),
        .I2(awvalid_q),
        .O(s32s0));
  FDRE ASR_20_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s32s0),
        .Q(Axi4PC_asr_inline_out[19]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ASR_22_i_1
       (.I0(resetn_q),
        .I1(WDataNumError1),
        .O(ASR_220));
  FDRE ASR_22_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_220),
        .Q(Axi4PC_asr_inline_out[21]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ASR_23_i_1
       (.I0(resetn_q),
        .I1(BStrbError),
        .O(ASR_230));
  FDRE ASR_23_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_230),
        .Q(Axi4PC_asr_inline_out[22]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_25_i_1
       (.I0(p_0_in8_in),
        .I1(WDATA_stage_2_eq),
        .O(ASR_25_i_1_n_0));
  FDRE ASR_25_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_25_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[24]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    ASR_26_i_1
       (.I0(p_0_in72_in),
        .I1(resetn_q),
        .I2(wlast_q),
        .I3(s38),
        .O(s40s0));
  FDRE ASR_26_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s40s0),
        .Q(Axi4PC_asr_inline_out[25]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_27_i_1
       (.I0(p_0_in8_in),
        .I1(WSTRB_stage_2_eq),
        .O(ASR_27_i_1_n_0));
  FDRE ASR_27_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_27_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[26]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_28_i_1
       (.I0(p_0_in72_in),
        .I1(resetn_q),
        .I2(wvalid_q),
        .O(s44s0));
  FDRE ASR_28_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s44s0),
        .Q(Axi4PC_asr_inline_out[27]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4000404040004000)) 
    ASR_2_i_1
       (.I0(\awburst_q_reg[1] [0]),
        .I1(awvalid_q),
        .I2(\awburst_q_reg[1] [1]),
        .I3(ASR_2_i_2_n_0),
        .I4(ASR_2_i_3_n_0),
        .I5(data_in[1]),
        .O(ASR_20));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    ASR_2_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(data_in[2]),
        .I5(ASR_2_i_4_n_0),
        .O(ASR_2_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000001F5F5F)) 
    ASR_2_i_3
       (.I0(Q[2]),
        .I1(Q[6]),
        .I2(data_in[0]),
        .I3(Q[5]),
        .I4(data_in[2]),
        .I5(Q[1]),
        .O(ASR_2_i_3_n_0));
  LUT5 #(
    .INIT(32'hEEE0E0E0)) 
    ASR_2_i_4
       (.I0(data_in[1]),
        .I1(data_in[0]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(data_in[2]),
        .O(ASR_2_i_4_n_0));
  FDRE ASR_2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_20),
        .Q(Axi4PC_asr_inline_out[1]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ASR_33_i_1
       (.I0(resetn_q),
        .I1(BrespErrorLead_reg),
        .O(ASR_330));
  FDRE ASR_33_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_330),
        .Q(Axi4PC_asr_inline_out[32]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_34_i_1
       (.I0(p_0_in65_in),
        .I1(resetn_q),
        .I2(\bid_q_reg[1] [0]),
        .I3(s47[0]),
        .I4(\bid_q_reg[1] [1]),
        .I5(s47[1]),
        .O(s49s0));
  FDRE ASR_34_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s49s0),
        .Q(Axi4PC_asr_inline_out[33]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_35_i_1
       (.I0(p_0_in65_in),
        .I1(resetn_q),
        .I2(s50[0]),
        .I3(\bresp_q_reg[1] [0]),
        .I4(s50[1]),
        .I5(\bresp_q_reg[1] [1]),
        .O(s52s0));
  FDRE ASR_35_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s52s0),
        .Q(Axi4PC_asr_inline_out[34]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_36_i_1
       (.I0(p_0_in65_in),
        .I1(resetn_q),
        .I2(bvalid_q),
        .O(s53s0));
  FDRE ASR_36_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s53s0),
        .Q(Axi4PC_asr_inline_out[35]),
        .R(\s101sq_reg[1]_0 ));
  CARRY4 ASR_382_carry
       (.CI(1'b0),
        .CO({ASR_382_carry_n_0,ASR_382_carry_n_1,ASR_382_carry_n_2,ASR_382_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ASR_382_carry_O_UNCONNECTED[3:0]),
        .S({ASR_382_carry_i_1_n_0,ASR_382_carry_i_2_n_0,ASR_382_carry_i_3_n_0,ASR_382_carry_i_4_n_0}));
  CARRY4 ASR_382_carry__0
       (.CI(ASR_382_carry_n_0),
        .CO({NLW_ASR_382_carry__0_CO_UNCONNECTED[3],ASR_382,ASR_382_carry__0_n_2,ASR_382_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ASR_382_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,ASR_382_carry__0_i_1_n_0,ASR_382_carry__0_i_2_n_0,ASR_382_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    ASR_382_carry__0_i_1
       (.I0(ARADDR_q1[19]),
        .I1(ArAddrIncr_q1[19]),
        .I2(ARADDR_q1[18]),
        .I3(ArAddrIncr_q1[18]),
        .O(ASR_382_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry__0_i_2
       (.I0(ArAddrIncr_q1[15]),
        .I1(ARADDR_q1[15]),
        .I2(ArAddrIncr_q1[16]),
        .I3(ARADDR_q1[16]),
        .I4(ARADDR_q1[17]),
        .I5(ArAddrIncr_q1[17]),
        .O(ASR_382_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry__0_i_3
       (.I0(ArAddrIncr_q1[12]),
        .I1(ARADDR_q1[12]),
        .I2(ArAddrIncr_q1[13]),
        .I3(ARADDR_q1[13]),
        .I4(ARADDR_q1[14]),
        .I5(ArAddrIncr_q1[14]),
        .O(ASR_382_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_1
       (.I0(ArAddrIncr_q1[9]),
        .I1(ARADDR_q1[9]),
        .I2(ArAddrIncr_q1[10]),
        .I3(ARADDR_q1[10]),
        .I4(ARADDR_q1[11]),
        .I5(ArAddrIncr_q1[11]),
        .O(ASR_382_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_2
       (.I0(ArAddrIncr_q1[6]),
        .I1(ARADDR_q1[6]),
        .I2(ArAddrIncr_q1[7]),
        .I3(ARADDR_q1[7]),
        .I4(ARADDR_q1[8]),
        .I5(ArAddrIncr_q1[8]),
        .O(ASR_382_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_3
       (.I0(ArAddrIncr_q1[3]),
        .I1(ARADDR_q1[3]),
        .I2(ArAddrIncr_q1[4]),
        .I3(ARADDR_q1[4]),
        .I4(ARADDR_q1[5]),
        .I5(ArAddrIncr_q1[5]),
        .O(ASR_382_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_382_carry_i_4
       (.I0(ArAddrIncr_q1[0]),
        .I1(ARADDR_q1[0]),
        .I2(ArAddrIncr_q1[1]),
        .I3(ARADDR_q1[1]),
        .I4(ARADDR_q1[2]),
        .I5(ArAddrIncr_q1[2]),
        .O(ASR_382_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ASR_38_i_1
       (.I0(asr_38_ctrl),
        .I1(ASR_382),
        .O(ASR_380));
  FDRE ASR_38_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_380),
        .Q(Axi4PC_asr_inline_out[37]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4000404040004000)) 
    ASR_39_i_1
       (.I0(\arburst_q_reg[1] [0]),
        .I1(arvalid_q),
        .I2(\arburst_q_reg[1] [1]),
        .I3(ASR_39_i_2_n_0),
        .I4(ASR_39_i_3_n_0),
        .I5(\arsize_q_reg[2] [1]),
        .O(ASR_390));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    ASR_39_i_2
       (.I0(\araddr_q_reg[31] [2]),
        .I1(\araddr_q_reg[31] [1]),
        .I2(\araddr_q_reg[31] [3]),
        .I3(\araddr_q_reg[31] [0]),
        .I4(\arsize_q_reg[2] [2]),
        .I5(ASR_39_i_4_n_0),
        .O(ASR_39_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000001F5F5F)) 
    ASR_39_i_3
       (.I0(\araddr_q_reg[31] [2]),
        .I1(\araddr_q_reg[31] [6]),
        .I2(\arsize_q_reg[2] [0]),
        .I3(\araddr_q_reg[31] [5]),
        .I4(\arsize_q_reg[2] [2]),
        .I5(\araddr_q_reg[31] [1]),
        .O(ASR_39_i_3_n_0));
  LUT5 #(
    .INIT(32'hEEE0E0E0)) 
    ASR_39_i_4
       (.I0(\arsize_q_reg[2] [1]),
        .I1(\arsize_q_reg[2] [0]),
        .I2(\araddr_q_reg[31] [0]),
        .I3(\araddr_q_reg[31] [4]),
        .I4(\arsize_q_reg[2] [2]),
        .O(ASR_39_i_4_n_0));
  FDRE ASR_39_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_390),
        .Q(Axi4PC_asr_inline_out[38]),
        .R(\s101sq_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    ASR_3_i_1
       (.I0(\awburst_q_reg[1] [1]),
        .I1(\awburst_q_reg[1] [0]),
        .I2(awvalid_q),
        .O(ASR_30));
  FDRE ASR_3_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_30),
        .Q(Axi4PC_asr_inline_out[2]),
        .R(\s101sq_reg[1]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    ASR_40_i_1
       (.I0(\arburst_q_reg[1] [1]),
        .I1(\arburst_q_reg[1] [0]),
        .I2(arvalid_q),
        .O(ASR_400));
  FDRE ASR_40_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_400),
        .Q(Axi4PC_asr_inline_out[39]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    ASR_42_i_1
       (.I0(\arcache_q_reg[3] [2]),
        .I1(\arcache_q_reg[3] [3]),
        .I2(arvalid_q),
        .I3(\arcache_q_reg[3] [1]),
        .O(ASR_420));
  FDRE ASR_42_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_420),
        .Q(Axi4PC_asr_inline_out[41]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    ASR_43_i_1
       (.I0(ASR_43_i_2_n_0),
        .I1(\arburst_q_reg[1] [0]),
        .I2(arvalid_q),
        .I3(\arburst_q_reg[1] [1]),
        .O(ASR_430));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ASR_43_i_2
       (.I0(\arlen_q_reg[7] [6]),
        .I1(\arlen_q_reg[7] [4]),
        .I2(\arlen_q_reg[7] [7]),
        .I3(\arlen_q_reg[7] [5]),
        .O(ASR_43_i_2_n_0));
  FDRE ASR_43_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_430),
        .Q(Axi4PC_asr_inline_out[42]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AAAAAAA8AAA8A8A)) 
    ASR_44_i_1
       (.I0(ASR_44_i_2_n_0),
        .I1(ASR_43_i_2_n_0),
        .I2(\arlen_q_reg[7] [0]),
        .I3(\arlen_q_reg[7] [1]),
        .I4(\arlen_q_reg[7] [2]),
        .I5(\arlen_q_reg[7] [3]),
        .O(ASR_440));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_44_i_2
       (.I0(\arburst_q_reg[1] [1]),
        .I1(arvalid_q),
        .I2(\arburst_q_reg[1] [0]),
        .O(ASR_44_i_2_n_0));
  FDRE ASR_44_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_440),
        .Q(Axi4PC_asr_inline_out[43]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ASR_45_i_1
       (.I0(arvalid_q),
        .I1(\arsize_q_reg[2] [2]),
        .O(ASR_450));
  FDRE ASR_45_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_450),
        .Q(Axi4PC_asr_inline_out[44]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_47_i_1
       (.I0(p_0_in2_in),
        .I1(ARADDR_stage_2_eq),
        .O(ASR_47_i_1_n_0));
  FDRE ASR_47_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_47_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[46]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_48_i_1
       (.I0(p_0_in41_in),
        .I1(resetn_q),
        .I2(\arburst_q_reg[1] [0]),
        .I3(s59[0]),
        .I4(\arburst_q_reg[1] [1]),
        .I5(s59[1]),
        .O(s61s0));
  FDRE ASR_48_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s61s0),
        .Q(Axi4PC_asr_inline_out[47]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    ASR_49_i_1
       (.I0(s_ARUSER_s04_out),
        .I1(ASR_49_i_2_n_0),
        .I2(s62[3]),
        .I3(\arcache_q_reg[3] [3]),
        .I4(s62[1]),
        .I5(\arcache_q_reg[3] [1]),
        .O(s64s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_49_i_2
       (.I0(\arcache_q_reg[3] [0]),
        .I1(s62[0]),
        .I2(s62[2]),
        .I3(\arcache_q_reg[3] [2]),
        .O(ASR_49_i_2_n_0));
  FDRE ASR_49_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s64s0),
        .Q(Axi4PC_asr_inline_out[48]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_50_i_1
       (.I0(p_0_in41_in),
        .I1(resetn_q),
        .I2(s65[0]),
        .I3(\arid_q_reg[1] [0]),
        .I4(s65[1]),
        .I5(\arid_q_reg[1] [1]),
        .O(s67s0));
  FDRE ASR_50_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s67s0),
        .Q(Axi4PC_asr_inline_out[49]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h88808888)) 
    ASR_51_i_1
       (.I0(p_0_in41_in),
        .I1(resetn_q),
        .I2(ASR_51_i_2_n_0),
        .I3(ASR_51_i_3_n_0),
        .I4(ASR_51_i_4_n_0),
        .O(s70s0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ASR_51_i_2
       (.I0(s68[3]),
        .I1(\arlen_q_reg[7] [3]),
        .I2(\arlen_q_reg[7] [4]),
        .I3(s68[4]),
        .I4(\arlen_q_reg[7] [5]),
        .I5(s68[5]),
        .O(ASR_51_i_2_n_0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    ASR_51_i_3
       (.I0(s68[0]),
        .I1(\arlen_q_reg[7] [0]),
        .I2(\arlen_q_reg[7] [2]),
        .I3(s68[2]),
        .I4(\arlen_q_reg[7] [1]),
        .I5(s68[1]),
        .O(ASR_51_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ASR_51_i_4
       (.I0(s68[6]),
        .I1(\arlen_q_reg[7] [6]),
        .I2(s68[7]),
        .I3(\arlen_q_reg[7] [7]),
        .O(ASR_51_i_4_n_0));
  FDRE ASR_51_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s70s0),
        .Q(Axi4PC_asr_inline_out[50]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_53_i_1
       (.I0(p_0_in41_in),
        .I1(resetn_q),
        .I2(ASR_53_i_2_n_0),
        .O(s76s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_53_i_2
       (.I0(s74[1]),
        .I1(\arprot_q_reg[2] [1]),
        .I2(s74[2]),
        .I3(\arprot_q_reg[2] [2]),
        .I4(\arprot_q_reg[2] [0]),
        .I5(s74[0]),
        .O(ASR_53_i_2_n_0));
  FDRE ASR_53_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s76s0),
        .Q(Axi4PC_asr_inline_out[52]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_54_i_1
       (.I0(p_0_in41_in),
        .I1(resetn_q),
        .I2(ASR_54_i_2_n_0),
        .O(s79s0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ASR_54_i_2
       (.I0(s77[1]),
        .I1(\arsize_q_reg[2] [1]),
        .I2(s77[2]),
        .I3(\arsize_q_reg[2] [2]),
        .I4(\arsize_q_reg[2] [0]),
        .I5(s77[0]),
        .O(ASR_54_i_2_n_0));
  FDRE ASR_54_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s79s0),
        .Q(Axi4PC_asr_inline_out[53]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    ASR_55_i_1
       (.I0(s_ARUSER_s04_out),
        .I1(ASR_55_i_2_n_0),
        .I2(\arqos_q_reg[3] [0]),
        .I3(s80[0]),
        .I4(\arqos_q_reg[3] [1]),
        .I5(s80[1]),
        .O(s82s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_55_i_2
       (.I0(\arqos_q_reg[3] [3]),
        .I1(s80[3]),
        .I2(\arqos_q_reg[3] [2]),
        .I3(s80[2]),
        .O(ASR_55_i_2_n_0));
  FDRE ASR_55_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s82s0),
        .Q(Axi4PC_asr_inline_out[54]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h8AA8AAAAAAAA8AA8)) 
    ASR_56_i_1
       (.I0(s_ARUSER_s04_out),
        .I1(ASR_56_i_2_n_0),
        .I2(\arregion_q_reg[3] [2]),
        .I3(s83[2]),
        .I4(\arregion_q_reg[3] [1]),
        .I5(s83[1]),
        .O(s85s0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_56_i_2
       (.I0(\arregion_q_reg[3] [3]),
        .I1(s83[3]),
        .I2(\arregion_q_reg[3] [0]),
        .I3(s83[0]),
        .O(ASR_56_i_2_n_0));
  FDRE ASR_56_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s85s0),
        .Q(Axi4PC_asr_inline_out[55]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_57_i_1
       (.I0(p_0_in41_in),
        .I1(resetn_q),
        .I2(arvalid_q),
        .O(s86s0));
  FDRE ASR_57_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s86s0),
        .Q(Axi4PC_asr_inline_out[56]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000008080800080)) 
    ASR_59_i_1
       (.I0(resetn_q),
        .I1(rvalid_q),
        .I2(rready_q),
        .I3(\gen_thread_loop[1].RCount_reg[1][6] ),
        .I4(rlast_q),
        .I5(CO),
        .O(ASR_590));
  FDRE ASR_59_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_590),
        .Q(Axi4PC_asr_inline_out[58]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    ASR_5_i_1
       (.I0(\awcache_q_reg[3] [2]),
        .I1(\awcache_q_reg[3] [3]),
        .I2(awvalid_q),
        .I3(\awcache_q_reg[3] [1]),
        .O(ASR_50));
  FDRE ASR_5_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_50),
        .Q(Axi4PC_asr_inline_out[4]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    ASR_60_i_1
       (.I0(resetn_q),
        .I1(rvalid_q),
        .I2(ASR_60_reg_0),
        .I3(ASR_60_reg_1),
        .O(ASR_600));
  LUT6 #(
    .INIT(64'h9009900990090000)) 
    ASR_60_i_2
       (.I0(\gen_thread_loop[1].active_id_reg [1]),
        .I1(\rid_q_reg[1] [1]),
        .I2(\rid_q_reg[1] [0]),
        .I3(\gen_thread_loop[1].active_id_reg [0]),
        .I4(active_cnt[2]),
        .I5(active_cnt[3]),
        .O(ASR_60_reg_0));
  LUT6 #(
    .INIT(64'h9009900990090000)) 
    ASR_60_i_3
       (.I0(\gen_thread_loop[0].active_id_reg [1]),
        .I1(\rid_q_reg[1] [1]),
        .I2(\rid_q_reg[1] [0]),
        .I3(\gen_thread_loop[0].active_id_reg [0]),
        .I4(active_cnt[0]),
        .I5(active_cnt[1]),
        .O(ASR_60_reg_1));
  FDRE ASR_60_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_600),
        .Q(Axi4PC_asr_inline_out[59]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFF7FFFFF)) 
    ASR_61_i_2
       (.I0(resetn_q),
        .I1(rvalid_q),
        .I2(rready_q),
        .I3(\rresp_q_reg[1] [1]),
        .I4(\rresp_q_reg[1] [0]),
        .O(ASR_61_reg_0));
  FDRE ASR_61_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_610),
        .Q(Axi4PC_asr_inline_out[60]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_63_i_1
       (.I0(\s_RUSER_sq_reg_n_0_[1] ),
        .I1(RDATA_stage_2_eq),
        .O(ASR_63_i_1_n_0));
  FDRE ASR_63_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_63_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[62]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_64_i_1
       (.I0(p_0_in22_in),
        .I1(resetn_q),
        .I2(s92[0]),
        .I3(\rid_q_reg[1] [0]),
        .I4(s92[1]),
        .I5(\rid_q_reg[1] [1]),
        .O(s94s0));
  FDRE ASR_64_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s94s0),
        .Q(Axi4PC_asr_inline_out[63]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    ASR_65_i_1
       (.I0(p_0_in22_in),
        .I1(resetn_q),
        .I2(rlast_q),
        .I3(s95),
        .O(s97s0));
  FDRE ASR_65_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s97s0),
        .Q(Axi4PC_asr_inline_out[64]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0880888888880880)) 
    ASR_66_i_1
       (.I0(p_0_in22_in),
        .I1(resetn_q),
        .I2(\rresp_q_reg[1] [0]),
        .I3(s98[0]),
        .I4(\rresp_q_reg[1] [1]),
        .I5(s98[1]),
        .O(s100s0));
  FDRE ASR_66_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s100s0),
        .Q(Axi4PC_asr_inline_out[65]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_67_i_1
       (.I0(p_0_in22_in),
        .I1(resetn_q),
        .I2(rvalid_q),
        .O(s101s0));
  FDRE ASR_67_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s101s0),
        .Q(Axi4PC_asr_inline_out[66]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    ASR_6_i_1
       (.I0(ASR_6_i_2_n_0),
        .I1(\awburst_q_reg[1] [0]),
        .I2(awvalid_q),
        .I3(\awburst_q_reg[1] [1]),
        .O(ASR_60));
  LUT4 #(
    .INIT(16'hFFFE)) 
    ASR_6_i_2
       (.I0(data_in[9]),
        .I1(data_in[7]),
        .I2(data_in[10]),
        .I3(data_in[8]),
        .O(ASR_6_i_2_n_0));
  FDRE ASR_6_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_60),
        .Q(Axi4PC_asr_inline_out[5]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_74_i_1
       (.I0(p_0_in11_in),
        .I1(AWUSER_stage_2_eq),
        .O(ASR_74_i_1_n_0));
  FDRE ASR_74_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_74_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[73]),
        .R(\s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    ASR_75_i_1
       (.I0(p_0_in8_in),
        .I1(WUSER_stage_2_eq),
        .O(ASR_75_i_1_n_0));
  FDRE ASR_75_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_75_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[74]),
        .R(\s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    ASR_76_i_1
       (.I0(p_0_in5_in),
        .I1(BUSER_stage_2_eq),
        .O(ASR_76_i_1_n_0));
  FDRE ASR_76_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_76_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[75]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_77_i_1
       (.I0(p_0_in2_in),
        .I1(ARUSER_stage_2_eq),
        .O(ASR_77_i_1_n_0));
  FDRE ASR_77_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_77_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[76]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ASR_78_i_1
       (.I0(\s_RUSER_sq_reg_n_0_[1] ),
        .I1(RUSER_stage_2_eq),
        .O(ASR_78_i_1_n_0));
  FDRE ASR_78_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_78_i_1_n_0),
        .Q(Axi4PC_asr_inline_out[77]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA2A20AAAA)) 
    ASR_7_i_1
       (.I0(ASR_7_i_2_n_0),
        .I1(data_in[4]),
        .I2(data_in[5]),
        .I3(data_in[6]),
        .I4(data_in[3]),
        .I5(ASR_6_i_2_n_0),
        .O(ASR_70));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ASR_7_i_2
       (.I0(\awburst_q_reg[1] [1]),
        .I1(awvalid_q),
        .I2(\awburst_q_reg[1] [0]),
        .O(ASR_7_i_2_n_0));
  FDRE ASR_7_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_70),
        .Q(Axi4PC_asr_inline_out[6]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ASR_8_i_1
       (.I0(awvalid_q),
        .I1(data_in[2]),
        .O(ASR_80));
  FDRE ASR_8_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ASR_80),
        .Q(Axi4PC_asr_inline_out[7]),
        .R(\s101sq_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \AWADDR_eq[0]_i_1 
       (.I0(Q[6]),
        .I1(\AWADDR_q_reg_n_0_[6] ),
        .I2(Q[7]),
        .I3(\AWADDR_q_reg_n_0_[7] ),
        .I4(\AWADDR_eq[0]_i_2_n_0 ),
        .I5(\AWADDR_eq[0]_i_3_n_0 ),
        .O(AWADDR_eq0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[0]_i_2 
       (.I0(\AWADDR_q_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\AWADDR_q_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\AWADDR_q_reg_n_0_[1] ),
        .O(\AWADDR_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[0]_i_3 
       (.I0(\AWADDR_q_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\AWADDR_q_reg_n_0_[4] ),
        .I4(Q[5]),
        .I5(\AWADDR_q_reg_n_0_[5] ),
        .O(\AWADDR_eq[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \AWADDR_eq[1]_i_1 
       (.I0(AWADDR_q1[2]),
        .I1(Q[14]),
        .I2(AWADDR_q1[3]),
        .I3(Q[15]),
        .I4(\AWADDR_eq[1]_i_2_n_0 ),
        .I5(\AWADDR_eq[1]_i_3_n_0 ),
        .O(AWADDR_eq057_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[1]_i_2 
       (.I0(p_0_in55_in[0]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(p_0_in55_in[1]),
        .I4(Q[10]),
        .I5(p_0_in55_in[2]),
        .O(\AWADDR_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[1]_i_3 
       (.I0(p_0_in55_in[3]),
        .I1(Q[11]),
        .I2(AWADDR_q1[0]),
        .I3(Q[12]),
        .I4(AWADDR_q1[1]),
        .I5(Q[13]),
        .O(\AWADDR_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \AWADDR_eq[2]_i_1 
       (.I0(AWADDR_q1[10]),
        .I1(Q[22]),
        .I2(AWADDR_q1[11]),
        .I3(Q[23]),
        .I4(\AWADDR_eq[2]_i_2_n_0 ),
        .I5(\AWADDR_eq[2]_i_3_n_0 ),
        .O(AWADDR_eq060_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[2]_i_2 
       (.I0(Q[16]),
        .I1(AWADDR_q1[4]),
        .I2(AWADDR_q1[6]),
        .I3(Q[18]),
        .I4(AWADDR_q1[5]),
        .I5(Q[17]),
        .O(\AWADDR_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[2]_i_3 
       (.I0(Q[19]),
        .I1(AWADDR_q1[7]),
        .I2(AWADDR_q1[8]),
        .I3(Q[20]),
        .I4(AWADDR_q1[9]),
        .I5(Q[21]),
        .O(\AWADDR_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \AWADDR_eq[3]_i_1 
       (.I0(AWADDR_q1[18]),
        .I1(Q[30]),
        .I2(AWADDR_q1[19]),
        .I3(Q[31]),
        .I4(\AWADDR_eq[3]_i_2_n_0 ),
        .I5(\AWADDR_eq[3]_i_3_n_0 ),
        .O(AWADDR_eq063_out));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[3]_i_2 
       (.I0(Q[24]),
        .I1(AWADDR_q1[12]),
        .I2(AWADDR_q1[14]),
        .I3(Q[26]),
        .I4(AWADDR_q1[13]),
        .I5(Q[25]),
        .O(\AWADDR_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \AWADDR_eq[3]_i_3 
       (.I0(Q[27]),
        .I1(AWADDR_q1[15]),
        .I2(AWADDR_q1[16]),
        .I3(Q[28]),
        .I4(AWADDR_q1[17]),
        .I5(Q[29]),
        .O(\AWADDR_eq[3]_i_3_n_0 ));
  FDRE \AWADDR_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWADDR_eq0),
        .Q(AWADDR_eq[0]),
        .R(1'b0));
  FDRE \AWADDR_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWADDR_eq057_out),
        .Q(AWADDR_eq[1]),
        .R(1'b0));
  FDRE \AWADDR_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWADDR_eq060_out),
        .Q(AWADDR_eq[2]),
        .R(1'b0));
  FDRE \AWADDR_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWADDR_eq063_out),
        .Q(AWADDR_eq[3]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(AWADDR_q1[0]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(AWADDR_q1[10]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(AWADDR_q1[11]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(AWADDR_q1[12]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(AWADDR_q1[13]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(AWADDR_q1[14]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(AWADDR_q1[15]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(AWADDR_q1[16]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(AWADDR_q1[17]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(AWADDR_q1[18]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(AWADDR_q1[19]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(AWADDR_q1[1]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(AWADDR_q1[2]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(AWADDR_q1[3]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(AWADDR_q1[4]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(AWADDR_q1[5]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(AWADDR_q1[6]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(AWADDR_q1[7]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(AWADDR_q1[8]),
        .R(1'b0));
  FDRE \AWADDR_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(AWADDR_q1[9]),
        .R(1'b0));
  FDRE \AWADDR_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(\AWADDR_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(p_0_in55_in[2]),
        .R(1'b0));
  FDRE \AWADDR_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(p_0_in55_in[3]),
        .R(1'b0));
  FDRE \AWADDR_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(\AWADDR_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(\AWADDR_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(\AWADDR_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(\AWADDR_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(\AWADDR_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(\AWADDR_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(\AWADDR_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \AWADDR_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(p_0_in55_in[0]),
        .R(1'b0));
  FDRE \AWADDR_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(p_0_in55_in[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \AWADDR_stage_1_eq[0]_i_1 
       (.I0(AWADDR_eq[1]),
        .I1(AWADDR_eq[0]),
        .I2(AWADDR_eq[3]),
        .I3(AWADDR_eq[2]),
        .O(\AWADDR_stage_1_eq[0]_i_1_n_0 ));
  FDRE \AWADDR_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\AWADDR_stage_1_eq[0]_i_1_n_0 ),
        .Q(AWADDR_stage_1_eq),
        .R(1'b0));
  FDRE \AWADDR_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWADDR_stage_1_eq),
        .Q(AWADDR_stage_2_eq),
        .R(1'b0));
  FDRE \AWUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(awuser_q),
        .Q(AWUSER_q),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/AWUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/AWUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \AWUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(AWUSER_eq0),
        .Q(\AWUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \AWUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(AWUSER_q),
        .I1(awuser_q),
        .O(AWUSER_eq0));
  FDRE \AWUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\AWUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(AWUSER_stage_2_eq),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[11]_i_2 
       (.I0(\araddr_q_reg[31] [23]),
        .O(\ArAddrIncr_q1[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[11]_i_3 
       (.I0(\araddr_q_reg[31] [22]),
        .O(\ArAddrIncr_q1[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[11]_i_4 
       (.I0(\araddr_q_reg[31] [21]),
        .O(\ArAddrIncr_q1[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[11]_i_5 
       (.I0(\araddr_q_reg[31] [20]),
        .O(\ArAddrIncr_q1[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[15]_i_2 
       (.I0(\araddr_q_reg[31] [27]),
        .O(\ArAddrIncr_q1[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[15]_i_3 
       (.I0(\araddr_q_reg[31] [26]),
        .O(\ArAddrIncr_q1[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[15]_i_4 
       (.I0(\araddr_q_reg[31] [25]),
        .O(\ArAddrIncr_q1[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[15]_i_5 
       (.I0(\araddr_q_reg[31] [24]),
        .O(\ArAddrIncr_q1[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[19]_i_2 
       (.I0(\araddr_q_reg[31] [31]),
        .O(\ArAddrIncr_q1[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[19]_i_3 
       (.I0(\araddr_q_reg[31] [30]),
        .O(\ArAddrIncr_q1[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[19]_i_4 
       (.I0(\araddr_q_reg[31] [29]),
        .O(\ArAddrIncr_q1[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[19]_i_5 
       (.I0(\araddr_q_reg[31] [28]),
        .O(\ArAddrIncr_q1[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \ArAddrIncr_q1[3]_i_12 
       (.I0(\arlen_q_reg[7] [5]),
        .I1(\arlen_q_reg[7] [6]),
        .I2(\arsize_q_reg[2] [1]),
        .I3(\arlen_q_reg[7] [7]),
        .I4(\arsize_q_reg[2] [0]),
        .O(\ArAddrIncr_q1_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ArAddrIncr_q1[3]_i_18 
       (.I0(\arlen_q_reg[7] [4]),
        .I1(\arlen_q_reg[7] [5]),
        .I2(\arsize_q_reg[2] [1]),
        .I3(\arlen_q_reg[7] [6]),
        .I4(\arsize_q_reg[2] [0]),
        .I5(\arlen_q_reg[7] [7]),
        .O(\ArAddrIncr_q1_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ArAddrIncr_q1[3]_i_19 
       (.I0(\arlen_q_reg[7] [3]),
        .I1(\arlen_q_reg[7] [4]),
        .I2(\arsize_q_reg[2] [1]),
        .I3(\arlen_q_reg[7] [5]),
        .I4(\arsize_q_reg[2] [0]),
        .I5(\arlen_q_reg[7] [6]),
        .O(\ArAddrIncr_q1_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \ArAddrIncr_q1[3]_i_20 
       (.I0(\arlen_q_reg[7] [7]),
        .I1(\arsize_q_reg[2] [0]),
        .I2(\arlen_q_reg[7] [6]),
        .I3(\arsize_q_reg[2] [1]),
        .O(\ArAddrIncr_q1_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ArAddrIncr_q1[3]_i_21 
       (.I0(\arlen_q_reg[7] [2]),
        .I1(\arlen_q_reg[7] [3]),
        .I2(\arsize_q_reg[2] [1]),
        .I3(\arlen_q_reg[7] [4]),
        .I4(\arsize_q_reg[2] [0]),
        .I5(\arlen_q_reg[7] [5]),
        .O(\ArAddrIncr_q1_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ArAddrIncr_q1[3]_i_22 
       (.I0(\arlen_q_reg[7] [1]),
        .I1(\arlen_q_reg[7] [2]),
        .I2(\arsize_q_reg[2] [1]),
        .I3(\arlen_q_reg[7] [3]),
        .I4(\arsize_q_reg[2] [0]),
        .I5(\arlen_q_reg[7] [4]),
        .O(\ArAddrIncr_q1_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \ArAddrIncr_q1[3]_i_27 
       (.I0(\arlen_q_reg[7] [0]),
        .I1(\arlen_q_reg[7] [1]),
        .I2(\arsize_q_reg[2] [1]),
        .I3(\arlen_q_reg[7] [2]),
        .I4(\arsize_q_reg[2] [0]),
        .I5(\arlen_q_reg[7] [3]),
        .O(\ArAddrIncr_q1_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \ArAddrIncr_q1[3]_i_28 
       (.I0(\arlen_q_reg[7] [0]),
        .I1(\arsize_q_reg[2] [1]),
        .I2(\arlen_q_reg[7] [1]),
        .I3(\arsize_q_reg[2] [0]),
        .I4(\arlen_q_reg[7] [2]),
        .O(\ArAddrIncr_q1_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ArAddrIncr_q1[3]_i_29 
       (.I0(\arlen_q_reg[7] [0]),
        .I1(\arsize_q_reg[2] [0]),
        .I2(\arlen_q_reg[7] [1]),
        .O(\ArAddrIncr_q1_reg[3]_8 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[3]_i_3 
       (.I0(\araddr_q_reg[31] [15]),
        .O(\ArAddrIncr_q1[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[7]_i_2 
       (.I0(\araddr_q_reg[31] [19]),
        .O(\ArAddrIncr_q1[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[7]_i_3 
       (.I0(\araddr_q_reg[31] [18]),
        .O(\ArAddrIncr_q1[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[7]_i_4 
       (.I0(\araddr_q_reg[31] [17]),
        .O(\ArAddrIncr_q1[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \ArAddrIncr_q1[7]_i_5 
       (.I0(\araddr_q_reg[31] [16]),
        .O(\ArAddrIncr_q1[7]_i_5_n_0 ));
  FDRE \ArAddrIncr_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[12]),
        .Q(ArAddrIncr_q1[0]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[22]),
        .Q(ArAddrIncr_q1[10]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[23]),
        .Q(ArAddrIncr_q1[11]),
        .R(1'b0));
  CARRY4 \ArAddrIncr_q1_reg[11]_i_1 
       (.CI(\ArAddrIncr_q1_reg[7]_i_1_n_0 ),
        .CO({\ArAddrIncr_q1_reg[11]_i_1_n_0 ,\ArAddrIncr_q1_reg[11]_i_1_n_1 ,\ArAddrIncr_q1_reg[11]_i_1_n_2 ,\ArAddrIncr_q1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ArAddrIncr[23:20]),
        .S({\ArAddrIncr_q1[11]_i_2_n_0 ,\ArAddrIncr_q1[11]_i_3_n_0 ,\ArAddrIncr_q1[11]_i_4_n_0 ,\ArAddrIncr_q1[11]_i_5_n_0 }));
  FDRE \ArAddrIncr_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[24]),
        .Q(ArAddrIncr_q1[12]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[25]),
        .Q(ArAddrIncr_q1[13]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[26]),
        .Q(ArAddrIncr_q1[14]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[27]),
        .Q(ArAddrIncr_q1[15]),
        .R(1'b0));
  CARRY4 \ArAddrIncr_q1_reg[15]_i_1 
       (.CI(\ArAddrIncr_q1_reg[11]_i_1_n_0 ),
        .CO({\ArAddrIncr_q1_reg[15]_i_1_n_0 ,\ArAddrIncr_q1_reg[15]_i_1_n_1 ,\ArAddrIncr_q1_reg[15]_i_1_n_2 ,\ArAddrIncr_q1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ArAddrIncr[27:24]),
        .S({\ArAddrIncr_q1[15]_i_2_n_0 ,\ArAddrIncr_q1[15]_i_3_n_0 ,\ArAddrIncr_q1[15]_i_4_n_0 ,\ArAddrIncr_q1[15]_i_5_n_0 }));
  FDRE \ArAddrIncr_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[28]),
        .Q(ArAddrIncr_q1[16]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[29]),
        .Q(ArAddrIncr_q1[17]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[30]),
        .Q(ArAddrIncr_q1[18]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[31]),
        .Q(ArAddrIncr_q1[19]),
        .R(1'b0));
  CARRY4 \ArAddrIncr_q1_reg[19]_i_1 
       (.CI(\ArAddrIncr_q1_reg[15]_i_1_n_0 ),
        .CO({\NLW_ArAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED [3],\ArAddrIncr_q1_reg[19]_i_1_n_1 ,\ArAddrIncr_q1_reg[19]_i_1_n_2 ,\ArAddrIncr_q1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ArAddrIncr[31:28]),
        .S({\ArAddrIncr_q1[19]_i_2_n_0 ,\ArAddrIncr_q1[19]_i_3_n_0 ,\ArAddrIncr_q1[19]_i_4_n_0 ,\ArAddrIncr_q1[19]_i_5_n_0 }));
  FDRE \ArAddrIncr_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[13]),
        .Q(ArAddrIncr_q1[1]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[14]),
        .Q(ArAddrIncr_q1[2]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[15]),
        .Q(ArAddrIncr_q1[3]),
        .R(1'b0));
  CARRY4 \ArAddrIncr_q1_reg[3]_i_1 
       (.CI(\ArAddrIncr_q1_reg[3]_i_2_n_0 ),
        .CO({\ArAddrIncr_q1_reg[3]_i_1_n_0 ,\ArAddrIncr_q1_reg[3]_i_1_n_1 ,\ArAddrIncr_q1_reg[3]_i_1_n_2 ,\ArAddrIncr_q1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\araddr_q_reg[31] [14:12]}),
        .O(ArAddrIncr[15:12]),
        .S({\ArAddrIncr_q1[3]_i_3_n_0 ,\araddr_q_reg[14] }));
  CARRY4 \ArAddrIncr_q1_reg[3]_i_13 
       (.CI(1'b0),
        .CO({\ArAddrIncr_q1_reg[3]_i_13_n_0 ,\ArAddrIncr_q1_reg[3]_i_13_n_1 ,\ArAddrIncr_q1_reg[3]_i_13_n_2 ,\ArAddrIncr_q1_reg[3]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI(\araddr_q_reg[31] [3:0]),
        .O(\NLW_ArAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED [3:0]),
        .S(\araddr_q_reg[3] ));
  CARRY4 \ArAddrIncr_q1_reg[3]_i_2 
       (.CI(\ArAddrIncr_q1_reg[3]_i_7_n_0 ),
        .CO({\ArAddrIncr_q1_reg[3]_i_2_n_0 ,\ArAddrIncr_q1_reg[3]_i_2_n_1 ,\ArAddrIncr_q1_reg[3]_i_2_n_2 ,\ArAddrIncr_q1_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\araddr_q_reg[31] [11:8]),
        .O(\NLW_ArAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S(\araddr_q_reg[11] ));
  CARRY4 \ArAddrIncr_q1_reg[3]_i_7 
       (.CI(\ArAddrIncr_q1_reg[3]_i_13_n_0 ),
        .CO({\ArAddrIncr_q1_reg[3]_i_7_n_0 ,\ArAddrIncr_q1_reg[3]_i_7_n_1 ,\ArAddrIncr_q1_reg[3]_i_7_n_2 ,\ArAddrIncr_q1_reg[3]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(\araddr_q_reg[31] [7:4]),
        .O(\NLW_ArAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED [3:0]),
        .S(\araddr_q_reg[7] ));
  FDRE \ArAddrIncr_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[16]),
        .Q(ArAddrIncr_q1[4]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[17]),
        .Q(ArAddrIncr_q1[5]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[18]),
        .Q(ArAddrIncr_q1[6]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[19]),
        .Q(ArAddrIncr_q1[7]),
        .R(1'b0));
  CARRY4 \ArAddrIncr_q1_reg[7]_i_1 
       (.CI(\ArAddrIncr_q1_reg[3]_i_1_n_0 ),
        .CO({\ArAddrIncr_q1_reg[7]_i_1_n_0 ,\ArAddrIncr_q1_reg[7]_i_1_n_1 ,\ArAddrIncr_q1_reg[7]_i_1_n_2 ,\ArAddrIncr_q1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ArAddrIncr[19:16]),
        .S({\ArAddrIncr_q1[7]_i_2_n_0 ,\ArAddrIncr_q1[7]_i_3_n_0 ,\ArAddrIncr_q1[7]_i_4_n_0 ,\ArAddrIncr_q1[7]_i_5_n_0 }));
  FDRE \ArAddrIncr_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[20]),
        .Q(ArAddrIncr_q1[8]),
        .R(1'b0));
  FDRE \ArAddrIncr_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(ArAddrIncr[21]),
        .Q(ArAddrIncr_q1[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[11]_i_2 
       (.I0(Q[23]),
        .O(\AwAddrIncr_q1[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[11]_i_3 
       (.I0(Q[22]),
        .O(\AwAddrIncr_q1[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[11]_i_4 
       (.I0(Q[21]),
        .O(\AwAddrIncr_q1[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[11]_i_5 
       (.I0(Q[20]),
        .O(\AwAddrIncr_q1[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[15]_i_2 
       (.I0(Q[27]),
        .O(\AwAddrIncr_q1[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[15]_i_3 
       (.I0(Q[26]),
        .O(\AwAddrIncr_q1[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[15]_i_4 
       (.I0(Q[25]),
        .O(\AwAddrIncr_q1[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[15]_i_5 
       (.I0(Q[24]),
        .O(\AwAddrIncr_q1[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[19]_i_2 
       (.I0(Q[31]),
        .O(\AwAddrIncr_q1[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[19]_i_3 
       (.I0(Q[30]),
        .O(\AwAddrIncr_q1[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[19]_i_4 
       (.I0(Q[29]),
        .O(\AwAddrIncr_q1[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[19]_i_5 
       (.I0(Q[28]),
        .O(\AwAddrIncr_q1[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \AwAddrIncr_q1[3]_i_12 
       (.I0(data_in[8]),
        .I1(data_in[9]),
        .I2(data_in[1]),
        .I3(data_in[10]),
        .I4(data_in[0]),
        .O(\AwAddrIncr_q1_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \AwAddrIncr_q1[3]_i_18 
       (.I0(data_in[7]),
        .I1(data_in[8]),
        .I2(data_in[1]),
        .I3(data_in[9]),
        .I4(data_in[0]),
        .I5(data_in[10]),
        .O(\AwAddrIncr_q1_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \AwAddrIncr_q1[3]_i_19 
       (.I0(data_in[6]),
        .I1(data_in[7]),
        .I2(data_in[1]),
        .I3(data_in[8]),
        .I4(data_in[0]),
        .I5(data_in[9]),
        .O(\AwAddrIncr_q1_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \AwAddrIncr_q1[3]_i_20 
       (.I0(data_in[10]),
        .I1(data_in[0]),
        .I2(data_in[9]),
        .I3(data_in[1]),
        .O(\AwAddrIncr_q1_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \AwAddrIncr_q1[3]_i_21 
       (.I0(data_in[5]),
        .I1(data_in[6]),
        .I2(data_in[1]),
        .I3(data_in[7]),
        .I4(data_in[0]),
        .I5(data_in[8]),
        .O(\AwAddrIncr_q1_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \AwAddrIncr_q1[3]_i_22 
       (.I0(data_in[4]),
        .I1(data_in[5]),
        .I2(data_in[1]),
        .I3(data_in[6]),
        .I4(data_in[0]),
        .I5(data_in[7]),
        .O(\AwAddrIncr_q1_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \AwAddrIncr_q1[3]_i_27 
       (.I0(data_in[3]),
        .I1(data_in[4]),
        .I2(data_in[1]),
        .I3(data_in[5]),
        .I4(data_in[0]),
        .I5(data_in[6]),
        .O(\AwAddrIncr_q1_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \AwAddrIncr_q1[3]_i_28 
       (.I0(data_in[3]),
        .I1(data_in[1]),
        .I2(data_in[4]),
        .I3(data_in[0]),
        .I4(data_in[5]),
        .O(\AwAddrIncr_q1_reg[3]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \AwAddrIncr_q1[3]_i_29 
       (.I0(data_in[3]),
        .I1(data_in[0]),
        .I2(data_in[4]),
        .O(\AwAddrIncr_q1_reg[3]_8 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[3]_i_3 
       (.I0(Q[15]),
        .O(\AwAddrIncr_q1[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[7]_i_2 
       (.I0(Q[19]),
        .O(\AwAddrIncr_q1[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[7]_i_3 
       (.I0(Q[18]),
        .O(\AwAddrIncr_q1[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[7]_i_4 
       (.I0(Q[17]),
        .O(\AwAddrIncr_q1[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \AwAddrIncr_q1[7]_i_5 
       (.I0(Q[16]),
        .O(\AwAddrIncr_q1[7]_i_5_n_0 ));
  FDRE \AwAddrIncr_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[12]),
        .Q(AwAddrIncr_q1[0]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[22]),
        .Q(AwAddrIncr_q1[10]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[23]),
        .Q(AwAddrIncr_q1[11]),
        .R(1'b0));
  CARRY4 \AwAddrIncr_q1_reg[11]_i_1 
       (.CI(\AwAddrIncr_q1_reg[7]_i_1_n_0 ),
        .CO({\AwAddrIncr_q1_reg[11]_i_1_n_0 ,\AwAddrIncr_q1_reg[11]_i_1_n_1 ,\AwAddrIncr_q1_reg[11]_i_1_n_2 ,\AwAddrIncr_q1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(AwAddrIncr[23:20]),
        .S({\AwAddrIncr_q1[11]_i_2_n_0 ,\AwAddrIncr_q1[11]_i_3_n_0 ,\AwAddrIncr_q1[11]_i_4_n_0 ,\AwAddrIncr_q1[11]_i_5_n_0 }));
  FDRE \AwAddrIncr_q1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[24]),
        .Q(AwAddrIncr_q1[12]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[25]),
        .Q(AwAddrIncr_q1[13]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[26]),
        .Q(AwAddrIncr_q1[14]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[27]),
        .Q(AwAddrIncr_q1[15]),
        .R(1'b0));
  CARRY4 \AwAddrIncr_q1_reg[15]_i_1 
       (.CI(\AwAddrIncr_q1_reg[11]_i_1_n_0 ),
        .CO({\AwAddrIncr_q1_reg[15]_i_1_n_0 ,\AwAddrIncr_q1_reg[15]_i_1_n_1 ,\AwAddrIncr_q1_reg[15]_i_1_n_2 ,\AwAddrIncr_q1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(AwAddrIncr[27:24]),
        .S({\AwAddrIncr_q1[15]_i_2_n_0 ,\AwAddrIncr_q1[15]_i_3_n_0 ,\AwAddrIncr_q1[15]_i_4_n_0 ,\AwAddrIncr_q1[15]_i_5_n_0 }));
  FDRE \AwAddrIncr_q1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[28]),
        .Q(AwAddrIncr_q1[16]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[29]),
        .Q(AwAddrIncr_q1[17]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[30]),
        .Q(AwAddrIncr_q1[18]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[31]),
        .Q(AwAddrIncr_q1[19]),
        .R(1'b0));
  CARRY4 \AwAddrIncr_q1_reg[19]_i_1 
       (.CI(\AwAddrIncr_q1_reg[15]_i_1_n_0 ),
        .CO({\NLW_AwAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED [3],\AwAddrIncr_q1_reg[19]_i_1_n_1 ,\AwAddrIncr_q1_reg[19]_i_1_n_2 ,\AwAddrIncr_q1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(AwAddrIncr[31:28]),
        .S({\AwAddrIncr_q1[19]_i_2_n_0 ,\AwAddrIncr_q1[19]_i_3_n_0 ,\AwAddrIncr_q1[19]_i_4_n_0 ,\AwAddrIncr_q1[19]_i_5_n_0 }));
  FDRE \AwAddrIncr_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[13]),
        .Q(AwAddrIncr_q1[1]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[14]),
        .Q(AwAddrIncr_q1[2]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[15]),
        .Q(AwAddrIncr_q1[3]),
        .R(1'b0));
  CARRY4 \AwAddrIncr_q1_reg[3]_i_1 
       (.CI(\AwAddrIncr_q1_reg[3]_i_2_n_0 ),
        .CO({\AwAddrIncr_q1_reg[3]_i_1_n_0 ,\AwAddrIncr_q1_reg[3]_i_1_n_1 ,\AwAddrIncr_q1_reg[3]_i_1_n_2 ,\AwAddrIncr_q1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14:12]}),
        .O(AwAddrIncr[15:12]),
        .S({\AwAddrIncr_q1[3]_i_3_n_0 ,\awaddr_q_reg[14] }));
  CARRY4 \AwAddrIncr_q1_reg[3]_i_13 
       (.CI(1'b0),
        .CO({\AwAddrIncr_q1_reg[3]_i_13_n_0 ,\AwAddrIncr_q1_reg[3]_i_13_n_1 ,\AwAddrIncr_q1_reg[3]_i_13_n_2 ,\AwAddrIncr_q1_reg[3]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(\NLW_AwAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED [3:0]),
        .S(S));
  CARRY4 \AwAddrIncr_q1_reg[3]_i_2 
       (.CI(\AwAddrIncr_q1_reg[3]_i_7_n_0 ),
        .CO({\AwAddrIncr_q1_reg[3]_i_2_n_0 ,\AwAddrIncr_q1_reg[3]_i_2_n_1 ,\AwAddrIncr_q1_reg[3]_i_2_n_2 ,\AwAddrIncr_q1_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[11:8]),
        .O(\NLW_AwAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED [3:0]),
        .S(\awaddr_q_reg[11] ));
  CARRY4 \AwAddrIncr_q1_reg[3]_i_7 
       (.CI(\AwAddrIncr_q1_reg[3]_i_13_n_0 ),
        .CO({\AwAddrIncr_q1_reg[3]_i_7_n_0 ,\AwAddrIncr_q1_reg[3]_i_7_n_1 ,\AwAddrIncr_q1_reg[3]_i_7_n_2 ,\AwAddrIncr_q1_reg[3]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[7:4]),
        .O(\NLW_AwAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED [3:0]),
        .S(\awaddr_q_reg[7] ));
  FDRE \AwAddrIncr_q1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[16]),
        .Q(AwAddrIncr_q1[4]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[17]),
        .Q(AwAddrIncr_q1[5]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[18]),
        .Q(AwAddrIncr_q1[6]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[19]),
        .Q(AwAddrIncr_q1[7]),
        .R(1'b0));
  CARRY4 \AwAddrIncr_q1_reg[7]_i_1 
       (.CI(\AwAddrIncr_q1_reg[3]_i_1_n_0 ),
        .CO({\AwAddrIncr_q1_reg[7]_i_1_n_0 ,\AwAddrIncr_q1_reg[7]_i_1_n_1 ,\AwAddrIncr_q1_reg[7]_i_1_n_2 ,\AwAddrIncr_q1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(AwAddrIncr[19:16]),
        .S({\AwAddrIncr_q1[7]_i_2_n_0 ,\AwAddrIncr_q1[7]_i_3_n_0 ,\AwAddrIncr_q1[7]_i_4_n_0 ,\AwAddrIncr_q1[7]_i_5_n_0 }));
  FDRE \AwAddrIncr_q1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[20]),
        .Q(AwAddrIncr_q1[8]),
        .R(1'b0));
  FDRE \AwAddrIncr_q1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(AwAddrIncr[21]),
        .Q(AwAddrIncr_q1[9]),
        .R(1'b0));
  FDRE \BUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(buser_q),
        .Q(BUSER_q),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/BUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/BUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \BUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(BUSER_eq0),
        .Q(\BUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \BUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(BUSER_q),
        .I1(buser_q),
        .O(BUSER_eq0));
  FDRE \BUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\BUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(BUSER_stage_2_eq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq0_inferred__0/RDATA_eq[1]_i_1 
       (.I0(\rdata_q_reg[63] [15]),
        .I1(p_1_in[7]),
        .I2(\rdata_q_reg[63] [14]),
        .I3(p_1_in[6]),
        .I4(\RDATA_eq0_inferred__0/RDATA_eq[1]_i_2_n_0 ),
        .I5(\RDATA_eq0_inferred__0/RDATA_eq[1]_i_3_n_0 ),
        .O(RDATA_eq00_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__0/RDATA_eq[1]_i_2 
       (.I0(p_1_in[3]),
        .I1(\rdata_q_reg[63] [11]),
        .I2(\rdata_q_reg[63] [13]),
        .I3(p_1_in[5]),
        .I4(\rdata_q_reg[63] [12]),
        .I5(p_1_in[4]),
        .O(\RDATA_eq0_inferred__0/RDATA_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__0/RDATA_eq[1]_i_3 
       (.I0(p_1_in[0]),
        .I1(\rdata_q_reg[63] [8]),
        .I2(\rdata_q_reg[63] [10]),
        .I3(p_1_in[2]),
        .I4(\rdata_q_reg[63] [9]),
        .I5(p_1_in[1]),
        .O(\RDATA_eq0_inferred__0/RDATA_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq0_inferred__1/RDATA_eq[2]_i_1 
       (.I0(\rdata_q_reg[63] [23]),
        .I1(p_1_in2_in[7]),
        .I2(\rdata_q_reg[63] [22]),
        .I3(p_1_in2_in[6]),
        .I4(\RDATA_eq0_inferred__1/RDATA_eq[2]_i_2_n_0 ),
        .I5(\RDATA_eq0_inferred__1/RDATA_eq[2]_i_3_n_0 ),
        .O(RDATA_eq03_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__1/RDATA_eq[2]_i_2 
       (.I0(p_1_in2_in[3]),
        .I1(\rdata_q_reg[63] [19]),
        .I2(\rdata_q_reg[63] [21]),
        .I3(p_1_in2_in[5]),
        .I4(\rdata_q_reg[63] [20]),
        .I5(p_1_in2_in[4]),
        .O(\RDATA_eq0_inferred__1/RDATA_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__1/RDATA_eq[2]_i_3 
       (.I0(p_1_in2_in[0]),
        .I1(\rdata_q_reg[63] [16]),
        .I2(\rdata_q_reg[63] [18]),
        .I3(p_1_in2_in[2]),
        .I4(\rdata_q_reg[63] [17]),
        .I5(p_1_in2_in[1]),
        .O(\RDATA_eq0_inferred__1/RDATA_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq0_inferred__2/RDATA_eq[3]_i_1 
       (.I0(\rdata_q_reg[63] [31]),
        .I1(p_1_in5_in[7]),
        .I2(\rdata_q_reg[63] [30]),
        .I3(p_1_in5_in[6]),
        .I4(\RDATA_eq0_inferred__2/RDATA_eq[3]_i_2_n_0 ),
        .I5(\RDATA_eq0_inferred__2/RDATA_eq[3]_i_3_n_0 ),
        .O(RDATA_eq06_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__2/RDATA_eq[3]_i_2 
       (.I0(p_1_in5_in[3]),
        .I1(\rdata_q_reg[63] [27]),
        .I2(\rdata_q_reg[63] [29]),
        .I3(p_1_in5_in[5]),
        .I4(\rdata_q_reg[63] [28]),
        .I5(p_1_in5_in[4]),
        .O(\RDATA_eq0_inferred__2/RDATA_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__2/RDATA_eq[3]_i_3 
       (.I0(p_1_in5_in[0]),
        .I1(\rdata_q_reg[63] [24]),
        .I2(\rdata_q_reg[63] [26]),
        .I3(p_1_in5_in[2]),
        .I4(\rdata_q_reg[63] [25]),
        .I5(p_1_in5_in[1]),
        .O(\RDATA_eq0_inferred__2/RDATA_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq0_inferred__3/RDATA_eq[4]_i_1 
       (.I0(\rdata_q_reg[63] [39]),
        .I1(p_1_in8_in[7]),
        .I2(\rdata_q_reg[63] [38]),
        .I3(p_1_in8_in[6]),
        .I4(\RDATA_eq0_inferred__3/RDATA_eq[4]_i_2_n_0 ),
        .I5(\RDATA_eq0_inferred__3/RDATA_eq[4]_i_3_n_0 ),
        .O(RDATA_eq09_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__3/RDATA_eq[4]_i_2 
       (.I0(p_1_in8_in[3]),
        .I1(\rdata_q_reg[63] [35]),
        .I2(\rdata_q_reg[63] [37]),
        .I3(p_1_in8_in[5]),
        .I4(\rdata_q_reg[63] [36]),
        .I5(p_1_in8_in[4]),
        .O(\RDATA_eq0_inferred__3/RDATA_eq[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__3/RDATA_eq[4]_i_3 
       (.I0(p_1_in8_in[0]),
        .I1(\rdata_q_reg[63] [32]),
        .I2(\rdata_q_reg[63] [34]),
        .I3(p_1_in8_in[2]),
        .I4(\rdata_q_reg[63] [33]),
        .I5(p_1_in8_in[1]),
        .O(\RDATA_eq0_inferred__3/RDATA_eq[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq0_inferred__4/RDATA_eq[5]_i_1 
       (.I0(\rdata_q_reg[63] [47]),
        .I1(p_1_in11_in[7]),
        .I2(\rdata_q_reg[63] [46]),
        .I3(p_1_in11_in[6]),
        .I4(\RDATA_eq0_inferred__4/RDATA_eq[5]_i_2_n_0 ),
        .I5(\RDATA_eq0_inferred__4/RDATA_eq[5]_i_3_n_0 ),
        .O(RDATA_eq012_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__4/RDATA_eq[5]_i_2 
       (.I0(p_1_in11_in[3]),
        .I1(\rdata_q_reg[63] [43]),
        .I2(\rdata_q_reg[63] [45]),
        .I3(p_1_in11_in[5]),
        .I4(\rdata_q_reg[63] [44]),
        .I5(p_1_in11_in[4]),
        .O(\RDATA_eq0_inferred__4/RDATA_eq[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__4/RDATA_eq[5]_i_3 
       (.I0(p_1_in11_in[0]),
        .I1(\rdata_q_reg[63] [40]),
        .I2(\rdata_q_reg[63] [42]),
        .I3(p_1_in11_in[2]),
        .I4(\rdata_q_reg[63] [41]),
        .I5(p_1_in11_in[1]),
        .O(\RDATA_eq0_inferred__4/RDATA_eq[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq0_inferred__5/RDATA_eq[6]_i_1 
       (.I0(\rdata_q_reg[63] [55]),
        .I1(p_1_in14_in[7]),
        .I2(\rdata_q_reg[63] [54]),
        .I3(p_1_in14_in[6]),
        .I4(\RDATA_eq0_inferred__5/RDATA_eq[6]_i_2_n_0 ),
        .I5(\RDATA_eq0_inferred__5/RDATA_eq[6]_i_3_n_0 ),
        .O(RDATA_eq015_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__5/RDATA_eq[6]_i_2 
       (.I0(p_1_in14_in[3]),
        .I1(\rdata_q_reg[63] [51]),
        .I2(\rdata_q_reg[63] [53]),
        .I3(p_1_in14_in[5]),
        .I4(\rdata_q_reg[63] [52]),
        .I5(p_1_in14_in[4]),
        .O(\RDATA_eq0_inferred__5/RDATA_eq[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__5/RDATA_eq[6]_i_3 
       (.I0(p_1_in14_in[0]),
        .I1(\rdata_q_reg[63] [48]),
        .I2(\rdata_q_reg[63] [50]),
        .I3(p_1_in14_in[2]),
        .I4(\rdata_q_reg[63] [49]),
        .I5(p_1_in14_in[1]),
        .O(\RDATA_eq0_inferred__5/RDATA_eq[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq0_inferred__6/RDATA_eq[7]_i_1 
       (.I0(\rdata_q_reg[63] [63]),
        .I1(p_1_in17_in[7]),
        .I2(\rdata_q_reg[63] [62]),
        .I3(p_1_in17_in[6]),
        .I4(\RDATA_eq0_inferred__6/RDATA_eq[7]_i_2_n_0 ),
        .I5(\RDATA_eq0_inferred__6/RDATA_eq[7]_i_3_n_0 ),
        .O(RDATA_eq018_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__6/RDATA_eq[7]_i_2 
       (.I0(p_1_in17_in[3]),
        .I1(\rdata_q_reg[63] [59]),
        .I2(\rdata_q_reg[63] [61]),
        .I3(p_1_in17_in[5]),
        .I4(\rdata_q_reg[63] [60]),
        .I5(p_1_in17_in[4]),
        .O(\RDATA_eq0_inferred__6/RDATA_eq[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq0_inferred__6/RDATA_eq[7]_i_3 
       (.I0(p_1_in17_in[0]),
        .I1(\rdata_q_reg[63] [56]),
        .I2(\rdata_q_reg[63] [58]),
        .I3(p_1_in17_in[2]),
        .I4(\rdata_q_reg[63] [57]),
        .I5(p_1_in17_in[1]),
        .O(\RDATA_eq0_inferred__6/RDATA_eq[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \RDATA_eq[0]_i_1 
       (.I0(\rdata_q_reg[63] [7]),
        .I1(\RDATA_q_reg_n_0_[7] ),
        .I2(\rdata_q_reg[63] [6]),
        .I3(\RDATA_q_reg_n_0_[6] ),
        .I4(\RDATA_eq[0]_i_2_n_0 ),
        .I5(\RDATA_eq[0]_i_3_n_0 ),
        .O(RDATA_eq0__0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq[0]_i_2 
       (.I0(\RDATA_q_reg_n_0_[3] ),
        .I1(\rdata_q_reg[63] [3]),
        .I2(\rdata_q_reg[63] [5]),
        .I3(\RDATA_q_reg_n_0_[5] ),
        .I4(\rdata_q_reg[63] [4]),
        .I5(\RDATA_q_reg_n_0_[4] ),
        .O(\RDATA_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \RDATA_eq[0]_i_3 
       (.I0(\RDATA_q_reg_n_0_[0] ),
        .I1(\rdata_q_reg[63] [0]),
        .I2(\rdata_q_reg[63] [2]),
        .I3(\RDATA_q_reg_n_0_[2] ),
        .I4(\rdata_q_reg[63] [1]),
        .I5(\RDATA_q_reg_n_0_[1] ),
        .O(\RDATA_eq[0]_i_3_n_0 ));
  FDRE \RDATA_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq0__0),
        .Q(RDATA_eq[0]),
        .R(1'b0));
  FDRE \RDATA_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq00_out),
        .Q(RDATA_eq[1]),
        .R(1'b0));
  FDRE \RDATA_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq03_out),
        .Q(RDATA_eq[2]),
        .R(1'b0));
  FDRE \RDATA_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq06_out),
        .Q(RDATA_eq[3]),
        .R(1'b0));
  FDRE \RDATA_eq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq09_out),
        .Q(RDATA_eq[4]),
        .R(1'b0));
  FDRE \RDATA_eq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq012_out),
        .Q(RDATA_eq[5]),
        .R(1'b0));
  FDRE \RDATA_eq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq015_out),
        .Q(RDATA_eq[6]),
        .R(1'b0));
  FDRE \RDATA_eq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_eq018_out),
        .Q(RDATA_eq[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [0]),
        .Q(\RDATA_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [10]),
        .Q(p_1_in[2]),
        .R(1'b0));
  FDRE \RDATA_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [11]),
        .Q(p_1_in[3]),
        .R(1'b0));
  FDRE \RDATA_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [12]),
        .Q(p_1_in[4]),
        .R(1'b0));
  FDRE \RDATA_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [13]),
        .Q(p_1_in[5]),
        .R(1'b0));
  FDRE \RDATA_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [14]),
        .Q(p_1_in[6]),
        .R(1'b0));
  FDRE \RDATA_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [15]),
        .Q(p_1_in[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [16]),
        .Q(p_1_in2_in[0]),
        .R(1'b0));
  FDRE \RDATA_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [17]),
        .Q(p_1_in2_in[1]),
        .R(1'b0));
  FDRE \RDATA_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [18]),
        .Q(p_1_in2_in[2]),
        .R(1'b0));
  FDRE \RDATA_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [19]),
        .Q(p_1_in2_in[3]),
        .R(1'b0));
  FDRE \RDATA_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [1]),
        .Q(\RDATA_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [20]),
        .Q(p_1_in2_in[4]),
        .R(1'b0));
  FDRE \RDATA_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [21]),
        .Q(p_1_in2_in[5]),
        .R(1'b0));
  FDRE \RDATA_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [22]),
        .Q(p_1_in2_in[6]),
        .R(1'b0));
  FDRE \RDATA_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [23]),
        .Q(p_1_in2_in[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [24]),
        .Q(p_1_in5_in[0]),
        .R(1'b0));
  FDRE \RDATA_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [25]),
        .Q(p_1_in5_in[1]),
        .R(1'b0));
  FDRE \RDATA_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [26]),
        .Q(p_1_in5_in[2]),
        .R(1'b0));
  FDRE \RDATA_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [27]),
        .Q(p_1_in5_in[3]),
        .R(1'b0));
  FDRE \RDATA_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [28]),
        .Q(p_1_in5_in[4]),
        .R(1'b0));
  FDRE \RDATA_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [29]),
        .Q(p_1_in5_in[5]),
        .R(1'b0));
  FDRE \RDATA_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [2]),
        .Q(\RDATA_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [30]),
        .Q(p_1_in5_in[6]),
        .R(1'b0));
  FDRE \RDATA_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [31]),
        .Q(p_1_in5_in[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [32]),
        .Q(p_1_in8_in[0]),
        .R(1'b0));
  FDRE \RDATA_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [33]),
        .Q(p_1_in8_in[1]),
        .R(1'b0));
  FDRE \RDATA_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [34]),
        .Q(p_1_in8_in[2]),
        .R(1'b0));
  FDRE \RDATA_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [35]),
        .Q(p_1_in8_in[3]),
        .R(1'b0));
  FDRE \RDATA_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [36]),
        .Q(p_1_in8_in[4]),
        .R(1'b0));
  FDRE \RDATA_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [37]),
        .Q(p_1_in8_in[5]),
        .R(1'b0));
  FDRE \RDATA_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [38]),
        .Q(p_1_in8_in[6]),
        .R(1'b0));
  FDRE \RDATA_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [39]),
        .Q(p_1_in8_in[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [3]),
        .Q(\RDATA_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [40]),
        .Q(p_1_in11_in[0]),
        .R(1'b0));
  FDRE \RDATA_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [41]),
        .Q(p_1_in11_in[1]),
        .R(1'b0));
  FDRE \RDATA_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [42]),
        .Q(p_1_in11_in[2]),
        .R(1'b0));
  FDRE \RDATA_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [43]),
        .Q(p_1_in11_in[3]),
        .R(1'b0));
  FDRE \RDATA_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [44]),
        .Q(p_1_in11_in[4]),
        .R(1'b0));
  FDRE \RDATA_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [45]),
        .Q(p_1_in11_in[5]),
        .R(1'b0));
  FDRE \RDATA_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [46]),
        .Q(p_1_in11_in[6]),
        .R(1'b0));
  FDRE \RDATA_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [47]),
        .Q(p_1_in11_in[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [48]),
        .Q(p_1_in14_in[0]),
        .R(1'b0));
  FDRE \RDATA_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [49]),
        .Q(p_1_in14_in[1]),
        .R(1'b0));
  FDRE \RDATA_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [4]),
        .Q(\RDATA_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [50]),
        .Q(p_1_in14_in[2]),
        .R(1'b0));
  FDRE \RDATA_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [51]),
        .Q(p_1_in14_in[3]),
        .R(1'b0));
  FDRE \RDATA_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [52]),
        .Q(p_1_in14_in[4]),
        .R(1'b0));
  FDRE \RDATA_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [53]),
        .Q(p_1_in14_in[5]),
        .R(1'b0));
  FDRE \RDATA_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [54]),
        .Q(p_1_in14_in[6]),
        .R(1'b0));
  FDRE \RDATA_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [55]),
        .Q(p_1_in14_in[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [56]),
        .Q(p_1_in17_in[0]),
        .R(1'b0));
  FDRE \RDATA_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [57]),
        .Q(p_1_in17_in[1]),
        .R(1'b0));
  FDRE \RDATA_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [58]),
        .Q(p_1_in17_in[2]),
        .R(1'b0));
  FDRE \RDATA_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [59]),
        .Q(p_1_in17_in[3]),
        .R(1'b0));
  FDRE \RDATA_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [5]),
        .Q(\RDATA_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [60]),
        .Q(p_1_in17_in[4]),
        .R(1'b0));
  FDRE \RDATA_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [61]),
        .Q(p_1_in17_in[5]),
        .R(1'b0));
  FDRE \RDATA_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [62]),
        .Q(p_1_in17_in[6]),
        .R(1'b0));
  FDRE \RDATA_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [63]),
        .Q(p_1_in17_in[7]),
        .R(1'b0));
  FDRE \RDATA_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [6]),
        .Q(\RDATA_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [7]),
        .Q(\RDATA_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \RDATA_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [8]),
        .Q(p_1_in[0]),
        .R(1'b0));
  FDRE \RDATA_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rdata_q_reg[63] [9]),
        .Q(p_1_in[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \RDATA_stage_1_eq[0]_i_1 
       (.I0(RDATA_eq[7]),
        .I1(RDATA_eq[6]),
        .I2(RDATA_eq[4]),
        .I3(RDATA_eq[5]),
        .I4(\RDATA_stage_1_eq[0]_i_2_n_0 ),
        .O(RDATA_stage_1_eq0__0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \RDATA_stage_1_eq[0]_i_2 
       (.I0(RDATA_eq[1]),
        .I1(RDATA_eq[0]),
        .I2(RDATA_eq[3]),
        .I3(RDATA_eq[2]),
        .O(\RDATA_stage_1_eq[0]_i_2_n_0 ));
  FDRE \RDATA_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_stage_1_eq0__0),
        .Q(RDATA_stage_1_eq),
        .R(1'b0));
  FDRE \RDATA_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(RDATA_stage_1_eq),
        .Q(RDATA_stage_2_eq),
        .R(1'b0));
  FDRE \RUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(ruser_q),
        .Q(RUSER_q),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/RUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/RUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \RUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(RUSER_eq0),
        .Q(\RUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \RUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(RUSER_q),
        .I1(ruser_q),
        .O(RUSER_eq0));
  FDRE \RUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\RUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(RUSER_stage_2_eq),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq0_inferred__0/WDATA_eq[1]_i_1 
       (.I0(\wdata_q_reg[63] [15]),
        .I1(p_1_in33_in[7]),
        .I2(\wdata_q_reg[63] [14]),
        .I3(p_1_in33_in[6]),
        .I4(\WDATA_eq0_inferred__0/WDATA_eq[1]_i_2_n_0 ),
        .I5(\WDATA_eq0_inferred__0/WDATA_eq[1]_i_3_n_0 ),
        .O(WDATA_eq034_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__0/WDATA_eq[1]_i_2 
       (.I0(p_1_in33_in[3]),
        .I1(\wdata_q_reg[63] [11]),
        .I2(\wdata_q_reg[63] [13]),
        .I3(p_1_in33_in[5]),
        .I4(\wdata_q_reg[63] [12]),
        .I5(p_1_in33_in[4]),
        .O(\WDATA_eq0_inferred__0/WDATA_eq[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__0/WDATA_eq[1]_i_3 
       (.I0(p_1_in33_in[0]),
        .I1(\wdata_q_reg[63] [8]),
        .I2(\wdata_q_reg[63] [10]),
        .I3(p_1_in33_in[2]),
        .I4(\wdata_q_reg[63] [9]),
        .I5(p_1_in33_in[1]),
        .O(\WDATA_eq0_inferred__0/WDATA_eq[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq0_inferred__1/WDATA_eq[2]_i_1 
       (.I0(\wdata_q_reg[63] [23]),
        .I1(p_1_in36_in[7]),
        .I2(\wdata_q_reg[63] [22]),
        .I3(p_1_in36_in[6]),
        .I4(\WDATA_eq0_inferred__1/WDATA_eq[2]_i_2_n_0 ),
        .I5(\WDATA_eq0_inferred__1/WDATA_eq[2]_i_3_n_0 ),
        .O(WDATA_eq037_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__1/WDATA_eq[2]_i_2 
       (.I0(p_1_in36_in[3]),
        .I1(\wdata_q_reg[63] [19]),
        .I2(\wdata_q_reg[63] [21]),
        .I3(p_1_in36_in[5]),
        .I4(\wdata_q_reg[63] [20]),
        .I5(p_1_in36_in[4]),
        .O(\WDATA_eq0_inferred__1/WDATA_eq[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__1/WDATA_eq[2]_i_3 
       (.I0(p_1_in36_in[0]),
        .I1(\wdata_q_reg[63] [16]),
        .I2(\wdata_q_reg[63] [18]),
        .I3(p_1_in36_in[2]),
        .I4(\wdata_q_reg[63] [17]),
        .I5(p_1_in36_in[1]),
        .O(\WDATA_eq0_inferred__1/WDATA_eq[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq0_inferred__2/WDATA_eq[3]_i_1 
       (.I0(\wdata_q_reg[63] [31]),
        .I1(p_1_in39_in[7]),
        .I2(\wdata_q_reg[63] [30]),
        .I3(p_1_in39_in[6]),
        .I4(\WDATA_eq0_inferred__2/WDATA_eq[3]_i_2_n_0 ),
        .I5(\WDATA_eq0_inferred__2/WDATA_eq[3]_i_3_n_0 ),
        .O(WDATA_eq040_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__2/WDATA_eq[3]_i_2 
       (.I0(p_1_in39_in[3]),
        .I1(\wdata_q_reg[63] [27]),
        .I2(\wdata_q_reg[63] [29]),
        .I3(p_1_in39_in[5]),
        .I4(\wdata_q_reg[63] [28]),
        .I5(p_1_in39_in[4]),
        .O(\WDATA_eq0_inferred__2/WDATA_eq[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__2/WDATA_eq[3]_i_3 
       (.I0(p_1_in39_in[0]),
        .I1(\wdata_q_reg[63] [24]),
        .I2(\wdata_q_reg[63] [26]),
        .I3(p_1_in39_in[2]),
        .I4(\wdata_q_reg[63] [25]),
        .I5(p_1_in39_in[1]),
        .O(\WDATA_eq0_inferred__2/WDATA_eq[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq0_inferred__3/WDATA_eq[4]_i_1 
       (.I0(\wdata_q_reg[63] [39]),
        .I1(p_1_in42_in[7]),
        .I2(\wdata_q_reg[63] [38]),
        .I3(p_1_in42_in[6]),
        .I4(\WDATA_eq0_inferred__3/WDATA_eq[4]_i_2_n_0 ),
        .I5(\WDATA_eq0_inferred__3/WDATA_eq[4]_i_3_n_0 ),
        .O(WDATA_eq043_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__3/WDATA_eq[4]_i_2 
       (.I0(p_1_in42_in[3]),
        .I1(\wdata_q_reg[63] [35]),
        .I2(\wdata_q_reg[63] [37]),
        .I3(p_1_in42_in[5]),
        .I4(\wdata_q_reg[63] [36]),
        .I5(p_1_in42_in[4]),
        .O(\WDATA_eq0_inferred__3/WDATA_eq[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__3/WDATA_eq[4]_i_3 
       (.I0(p_1_in42_in[0]),
        .I1(\wdata_q_reg[63] [32]),
        .I2(\wdata_q_reg[63] [34]),
        .I3(p_1_in42_in[2]),
        .I4(\wdata_q_reg[63] [33]),
        .I5(p_1_in42_in[1]),
        .O(\WDATA_eq0_inferred__3/WDATA_eq[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq0_inferred__4/WDATA_eq[5]_i_1 
       (.I0(\wdata_q_reg[63] [47]),
        .I1(p_1_in45_in[7]),
        .I2(\wdata_q_reg[63] [46]),
        .I3(p_1_in45_in[6]),
        .I4(\WDATA_eq0_inferred__4/WDATA_eq[5]_i_2_n_0 ),
        .I5(\WDATA_eq0_inferred__4/WDATA_eq[5]_i_3_n_0 ),
        .O(WDATA_eq046_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__4/WDATA_eq[5]_i_2 
       (.I0(p_1_in45_in[3]),
        .I1(\wdata_q_reg[63] [43]),
        .I2(\wdata_q_reg[63] [45]),
        .I3(p_1_in45_in[5]),
        .I4(\wdata_q_reg[63] [44]),
        .I5(p_1_in45_in[4]),
        .O(\WDATA_eq0_inferred__4/WDATA_eq[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__4/WDATA_eq[5]_i_3 
       (.I0(p_1_in45_in[0]),
        .I1(\wdata_q_reg[63] [40]),
        .I2(\wdata_q_reg[63] [42]),
        .I3(p_1_in45_in[2]),
        .I4(\wdata_q_reg[63] [41]),
        .I5(p_1_in45_in[1]),
        .O(\WDATA_eq0_inferred__4/WDATA_eq[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq0_inferred__5/WDATA_eq[6]_i_1 
       (.I0(\wdata_q_reg[63] [55]),
        .I1(p_1_in48_in[7]),
        .I2(\wdata_q_reg[63] [54]),
        .I3(p_1_in48_in[6]),
        .I4(\WDATA_eq0_inferred__5/WDATA_eq[6]_i_2_n_0 ),
        .I5(\WDATA_eq0_inferred__5/WDATA_eq[6]_i_3_n_0 ),
        .O(WDATA_eq049_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__5/WDATA_eq[6]_i_2 
       (.I0(p_1_in48_in[3]),
        .I1(\wdata_q_reg[63] [51]),
        .I2(\wdata_q_reg[63] [53]),
        .I3(p_1_in48_in[5]),
        .I4(\wdata_q_reg[63] [52]),
        .I5(p_1_in48_in[4]),
        .O(\WDATA_eq0_inferred__5/WDATA_eq[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__5/WDATA_eq[6]_i_3 
       (.I0(p_1_in48_in[0]),
        .I1(\wdata_q_reg[63] [48]),
        .I2(\wdata_q_reg[63] [50]),
        .I3(p_1_in48_in[2]),
        .I4(\wdata_q_reg[63] [49]),
        .I5(p_1_in48_in[1]),
        .O(\WDATA_eq0_inferred__5/WDATA_eq[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq0_inferred__6/WDATA_eq[7]_i_1 
       (.I0(\wdata_q_reg[63] [63]),
        .I1(p_1_in51_in[7]),
        .I2(\wdata_q_reg[63] [62]),
        .I3(p_1_in51_in[6]),
        .I4(\WDATA_eq0_inferred__6/WDATA_eq[7]_i_2_n_0 ),
        .I5(\WDATA_eq0_inferred__6/WDATA_eq[7]_i_3_n_0 ),
        .O(WDATA_eq052_out));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__6/WDATA_eq[7]_i_2 
       (.I0(p_1_in51_in[3]),
        .I1(\wdata_q_reg[63] [59]),
        .I2(\wdata_q_reg[63] [61]),
        .I3(p_1_in51_in[5]),
        .I4(\wdata_q_reg[63] [60]),
        .I5(p_1_in51_in[4]),
        .O(\WDATA_eq0_inferred__6/WDATA_eq[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq0_inferred__6/WDATA_eq[7]_i_3 
       (.I0(p_1_in51_in[0]),
        .I1(\wdata_q_reg[63] [56]),
        .I2(\wdata_q_reg[63] [58]),
        .I3(p_1_in51_in[2]),
        .I4(\wdata_q_reg[63] [57]),
        .I5(p_1_in51_in[1]),
        .O(\WDATA_eq0_inferred__6/WDATA_eq[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \WDATA_eq[0]_i_1 
       (.I0(\wdata_q_reg[63] [7]),
        .I1(\WDATA_q_reg_n_0_[7] ),
        .I2(\wdata_q_reg[63] [6]),
        .I3(\WDATA_q_reg_n_0_[6] ),
        .I4(\WDATA_eq[0]_i_2_n_0 ),
        .I5(\WDATA_eq[0]_i_3_n_0 ),
        .O(WDATA_eq0__0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq[0]_i_2 
       (.I0(\WDATA_q_reg_n_0_[3] ),
        .I1(\wdata_q_reg[63] [3]),
        .I2(\wdata_q_reg[63] [5]),
        .I3(\WDATA_q_reg_n_0_[5] ),
        .I4(\wdata_q_reg[63] [4]),
        .I5(\WDATA_q_reg_n_0_[4] ),
        .O(\WDATA_eq[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \WDATA_eq[0]_i_3 
       (.I0(\WDATA_q_reg_n_0_[0] ),
        .I1(\wdata_q_reg[63] [0]),
        .I2(\wdata_q_reg[63] [2]),
        .I3(\WDATA_q_reg_n_0_[2] ),
        .I4(\wdata_q_reg[63] [1]),
        .I5(\WDATA_q_reg_n_0_[1] ),
        .O(\WDATA_eq[0]_i_3_n_0 ));
  FDRE \WDATA_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq0__0),
        .Q(WDATA_eq[0]),
        .R(1'b0));
  FDRE \WDATA_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq034_out),
        .Q(WDATA_eq[1]),
        .R(1'b0));
  FDRE \WDATA_eq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq037_out),
        .Q(WDATA_eq[2]),
        .R(1'b0));
  FDRE \WDATA_eq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq040_out),
        .Q(WDATA_eq[3]),
        .R(1'b0));
  FDRE \WDATA_eq_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq043_out),
        .Q(WDATA_eq[4]),
        .R(1'b0));
  FDRE \WDATA_eq_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq046_out),
        .Q(WDATA_eq[5]),
        .R(1'b0));
  FDRE \WDATA_eq_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq049_out),
        .Q(WDATA_eq[6]),
        .R(1'b0));
  FDRE \WDATA_eq_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_eq052_out),
        .Q(WDATA_eq[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [0]),
        .Q(\WDATA_q_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [10]),
        .Q(p_1_in33_in[2]),
        .R(1'b0));
  FDRE \WDATA_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [11]),
        .Q(p_1_in33_in[3]),
        .R(1'b0));
  FDRE \WDATA_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [12]),
        .Q(p_1_in33_in[4]),
        .R(1'b0));
  FDRE \WDATA_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [13]),
        .Q(p_1_in33_in[5]),
        .R(1'b0));
  FDRE \WDATA_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [14]),
        .Q(p_1_in33_in[6]),
        .R(1'b0));
  FDRE \WDATA_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [15]),
        .Q(p_1_in33_in[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [16]),
        .Q(p_1_in36_in[0]),
        .R(1'b0));
  FDRE \WDATA_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [17]),
        .Q(p_1_in36_in[1]),
        .R(1'b0));
  FDRE \WDATA_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [18]),
        .Q(p_1_in36_in[2]),
        .R(1'b0));
  FDRE \WDATA_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [19]),
        .Q(p_1_in36_in[3]),
        .R(1'b0));
  FDRE \WDATA_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [1]),
        .Q(\WDATA_q_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [20]),
        .Q(p_1_in36_in[4]),
        .R(1'b0));
  FDRE \WDATA_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [21]),
        .Q(p_1_in36_in[5]),
        .R(1'b0));
  FDRE \WDATA_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [22]),
        .Q(p_1_in36_in[6]),
        .R(1'b0));
  FDRE \WDATA_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [23]),
        .Q(p_1_in36_in[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [24]),
        .Q(p_1_in39_in[0]),
        .R(1'b0));
  FDRE \WDATA_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [25]),
        .Q(p_1_in39_in[1]),
        .R(1'b0));
  FDRE \WDATA_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [26]),
        .Q(p_1_in39_in[2]),
        .R(1'b0));
  FDRE \WDATA_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [27]),
        .Q(p_1_in39_in[3]),
        .R(1'b0));
  FDRE \WDATA_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [28]),
        .Q(p_1_in39_in[4]),
        .R(1'b0));
  FDRE \WDATA_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [29]),
        .Q(p_1_in39_in[5]),
        .R(1'b0));
  FDRE \WDATA_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [2]),
        .Q(\WDATA_q_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [30]),
        .Q(p_1_in39_in[6]),
        .R(1'b0));
  FDRE \WDATA_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [31]),
        .Q(p_1_in39_in[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [32]),
        .Q(p_1_in42_in[0]),
        .R(1'b0));
  FDRE \WDATA_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [33]),
        .Q(p_1_in42_in[1]),
        .R(1'b0));
  FDRE \WDATA_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [34]),
        .Q(p_1_in42_in[2]),
        .R(1'b0));
  FDRE \WDATA_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [35]),
        .Q(p_1_in42_in[3]),
        .R(1'b0));
  FDRE \WDATA_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [36]),
        .Q(p_1_in42_in[4]),
        .R(1'b0));
  FDRE \WDATA_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [37]),
        .Q(p_1_in42_in[5]),
        .R(1'b0));
  FDRE \WDATA_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [38]),
        .Q(p_1_in42_in[6]),
        .R(1'b0));
  FDRE \WDATA_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [39]),
        .Q(p_1_in42_in[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [3]),
        .Q(\WDATA_q_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [40]),
        .Q(p_1_in45_in[0]),
        .R(1'b0));
  FDRE \WDATA_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [41]),
        .Q(p_1_in45_in[1]),
        .R(1'b0));
  FDRE \WDATA_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [42]),
        .Q(p_1_in45_in[2]),
        .R(1'b0));
  FDRE \WDATA_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [43]),
        .Q(p_1_in45_in[3]),
        .R(1'b0));
  FDRE \WDATA_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [44]),
        .Q(p_1_in45_in[4]),
        .R(1'b0));
  FDRE \WDATA_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [45]),
        .Q(p_1_in45_in[5]),
        .R(1'b0));
  FDRE \WDATA_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [46]),
        .Q(p_1_in45_in[6]),
        .R(1'b0));
  FDRE \WDATA_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [47]),
        .Q(p_1_in45_in[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [48]),
        .Q(p_1_in48_in[0]),
        .R(1'b0));
  FDRE \WDATA_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [49]),
        .Q(p_1_in48_in[1]),
        .R(1'b0));
  FDRE \WDATA_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [4]),
        .Q(\WDATA_q_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [50]),
        .Q(p_1_in48_in[2]),
        .R(1'b0));
  FDRE \WDATA_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [51]),
        .Q(p_1_in48_in[3]),
        .R(1'b0));
  FDRE \WDATA_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [52]),
        .Q(p_1_in48_in[4]),
        .R(1'b0));
  FDRE \WDATA_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [53]),
        .Q(p_1_in48_in[5]),
        .R(1'b0));
  FDRE \WDATA_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [54]),
        .Q(p_1_in48_in[6]),
        .R(1'b0));
  FDRE \WDATA_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [55]),
        .Q(p_1_in48_in[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [56]),
        .Q(p_1_in51_in[0]),
        .R(1'b0));
  FDRE \WDATA_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [57]),
        .Q(p_1_in51_in[1]),
        .R(1'b0));
  FDRE \WDATA_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [58]),
        .Q(p_1_in51_in[2]),
        .R(1'b0));
  FDRE \WDATA_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [59]),
        .Q(p_1_in51_in[3]),
        .R(1'b0));
  FDRE \WDATA_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [5]),
        .Q(\WDATA_q_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [60]),
        .Q(p_1_in51_in[4]),
        .R(1'b0));
  FDRE \WDATA_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [61]),
        .Q(p_1_in51_in[5]),
        .R(1'b0));
  FDRE \WDATA_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [62]),
        .Q(p_1_in51_in[6]),
        .R(1'b0));
  FDRE \WDATA_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [63]),
        .Q(p_1_in51_in[7]),
        .R(1'b0));
  FDRE \WDATA_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [6]),
        .Q(\WDATA_q_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [7]),
        .Q(\WDATA_q_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \WDATA_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [8]),
        .Q(p_1_in33_in[0]),
        .R(1'b0));
  FDRE \WDATA_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wdata_q_reg[63] [9]),
        .Q(p_1_in33_in[1]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    \WDATA_stage_1_eq[0]_i_1 
       (.I0(WDATA_eq[7]),
        .I1(WDATA_eq[6]),
        .I2(WDATA_eq[4]),
        .I3(WDATA_eq[5]),
        .I4(\WDATA_stage_1_eq[0]_i_2_n_0 ),
        .O(WDATA_stage_1_eq0__0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \WDATA_stage_1_eq[0]_i_2 
       (.I0(WDATA_eq[1]),
        .I1(WDATA_eq[0]),
        .I2(WDATA_eq[3]),
        .I3(WDATA_eq[2]),
        .O(\WDATA_stage_1_eq[0]_i_2_n_0 ));
  FDRE \WDATA_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_stage_1_eq0__0),
        .Q(WDATA_stage_1_eq),
        .R(1'b0));
  FDRE \WDATA_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(WDATA_stage_1_eq),
        .Q(WDATA_stage_2_eq),
        .R(1'b0));
  FDRE \WSTRB_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [0]),
        .Q(WSTRB_q[0]),
        .R(1'b0));
  FDRE \WSTRB_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [1]),
        .Q(WSTRB_q[1]),
        .R(1'b0));
  FDRE \WSTRB_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [2]),
        .Q(WSTRB_q[2]),
        .R(1'b0));
  FDRE \WSTRB_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [3]),
        .Q(WSTRB_q[3]),
        .R(1'b0));
  FDRE \WSTRB_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [4]),
        .Q(WSTRB_q[4]),
        .R(1'b0));
  FDRE \WSTRB_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [5]),
        .Q(WSTRB_q[5]),
        .R(1'b0));
  FDRE \WSTRB_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [6]),
        .Q(WSTRB_q[6]),
        .R(1'b0));
  FDRE \WSTRB_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstrb_q_reg[7] [7]),
        .Q(WSTRB_q[7]),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/WSTRB_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/WSTRB_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \WSTRB_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WSTRB_eq0),
        .Q(\WSTRB_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \WSTRB_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(\wstrb_q_reg[7] [6]),
        .I1(WSTRB_q[6]),
        .I2(\wstrb_q_reg[7] [7]),
        .I3(WSTRB_q[7]),
        .I4(\WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0 ),
        .I5(\WSTRB_stage_1_eq_reg[0]_srl2_i_3_n_0 ),
        .O(WSTRB_eq0));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \WSTRB_stage_1_eq_reg[0]_srl2_i_2 
       (.I0(WSTRB_q[0]),
        .I1(\wstrb_q_reg[7] [0]),
        .I2(\wstrb_q_reg[7] [2]),
        .I3(WSTRB_q[2]),
        .I4(\wstrb_q_reg[7] [1]),
        .I5(WSTRB_q[1]),
        .O(\WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \WSTRB_stage_1_eq_reg[0]_srl2_i_3 
       (.I0(WSTRB_q[3]),
        .I1(\wstrb_q_reg[7] [3]),
        .I2(\wstrb_q_reg[7] [4]),
        .I3(WSTRB_q[4]),
        .I4(\wstrb_q_reg[7] [5]),
        .I5(WSTRB_q[5]),
        .O(\WSTRB_stage_1_eq_reg[0]_srl2_i_3_n_0 ));
  FDRE \WSTRB_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WSTRB_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(WSTRB_stage_2_eq),
        .R(1'b0));
  FDRE \WUSER_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(wuser_q),
        .Q(WUSER_q),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/i_Axi4PC_asr_inline/WUSER_stage_1_eq_reg " *) 
  (* srl_name = "inst/\CORE/i_Axi4PC_asr_inline/WUSER_stage_1_eq_reg[0]_srl2 " *) 
  SRL16E \WUSER_stage_1_eq_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WUSER_eq0),
        .Q(\WUSER_stage_1_eq_reg[0]_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \WUSER_stage_1_eq_reg[0]_srl2_i_1 
       (.I0(WUSER_q),
        .I1(wuser_q),
        .O(WUSER_eq0));
  FDRE \WUSER_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\WUSER_stage_1_eq_reg[0]_srl2_n_0 ),
        .Q(WUSER_stage_2_eq),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    asr_1_ctrl_i_1
       (.I0(\awburst_q_reg[1] [1]),
        .I1(\awburst_q_reg[1] [0]),
        .I2(awvalid_q),
        .O(asr_1_ctrl0));
  FDRE asr_1_ctrl_reg
       (.C(aclk),
        .CE(1'b1),
        .D(asr_1_ctrl0),
        .Q(asr_1_ctrl),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h40)) 
    asr_38_ctrl_i_1
       (.I0(\arburst_q_reg[1] [1]),
        .I1(\arburst_q_reg[1] [0]),
        .I2(arvalid_q),
        .O(asr_38_ctrl0));
  FDRE asr_38_ctrl_reg
       (.C(aclk),
        .CE(1'b1),
        .D(asr_38_ctrl0),
        .Q(asr_38_ctrl),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[0]_i_1 
       (.I0(Axi4PC_asr_inline_out[0]),
        .I1(\pc_status_i_reg[77] [0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[10]_i_1 
       (.I0(Axi4PC_asr_inline_out[10]),
        .I1(\pc_status_i_reg[77] [8]),
        .O(D[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[11]_i_1 
       (.I0(Axi4PC_asr_inline_out[11]),
        .I1(\pc_status_i_reg[77] [9]),
        .O(D[9]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[12]_i_1 
       (.I0(Axi4PC_asr_inline_out[12]),
        .I1(\pc_status_i_reg[77] [10]),
        .O(D[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[13]_i_1 
       (.I0(Axi4PC_asr_inline_out[13]),
        .I1(\pc_status_i_reg[77] [11]),
        .O(D[11]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[15]_i_1 
       (.I0(Axi4PC_asr_inline_out[15]),
        .I1(\pc_status_i_reg[77] [12]),
        .O(D[12]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[16]_i_1 
       (.I0(Axi4PC_asr_inline_out[16]),
        .I1(\pc_status_i_reg[77] [13]),
        .O(D[13]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[17]_i_1 
       (.I0(Axi4PC_asr_inline_out[17]),
        .I1(\pc_status_i_reg[77] [14]),
        .O(D[14]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[18]_i_1 
       (.I0(Axi4PC_asr_inline_out[18]),
        .I1(\pc_status_i_reg[77] [15]),
        .O(D[15]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[19]_i_1 
       (.I0(Axi4PC_asr_inline_out[19]),
        .I1(\pc_status_i_reg[77] [16]),
        .O(D[16]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[1]_i_1 
       (.I0(Axi4PC_asr_inline_out[1]),
        .I1(\pc_status_i_reg[77] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[21]_i_1 
       (.I0(Axi4PC_asr_inline_out[21]),
        .I1(\pc_status_i_reg[77] [17]),
        .O(D[17]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[22]_i_1 
       (.I0(Axi4PC_asr_inline_out[22]),
        .I1(\pc_status_i_reg[77] [18]),
        .O(D[18]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[24]_i_1 
       (.I0(Axi4PC_asr_inline_out[24]),
        .I1(\pc_status_i_reg[77] [19]),
        .O(D[19]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[25]_i_1 
       (.I0(Axi4PC_asr_inline_out[25]),
        .I1(\pc_status_i_reg[77] [20]),
        .O(D[20]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[26]_i_1 
       (.I0(Axi4PC_asr_inline_out[26]),
        .I1(\pc_status_i_reg[77] [21]),
        .O(D[21]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[27]_i_1 
       (.I0(Axi4PC_asr_inline_out[27]),
        .I1(\pc_status_i_reg[77] [22]),
        .O(D[22]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[2]_i_1 
       (.I0(Axi4PC_asr_inline_out[2]),
        .I1(\pc_status_i_reg[77] [2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[32]_i_1 
       (.I0(Axi4PC_asr_inline_out[32]),
        .I1(\pc_status_i_reg[77] [23]),
        .O(D[23]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[33]_i_1 
       (.I0(Axi4PC_asr_inline_out[33]),
        .I1(\pc_status_i_reg[77] [24]),
        .O(D[24]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[34]_i_1 
       (.I0(Axi4PC_asr_inline_out[34]),
        .I1(\pc_status_i_reg[77] [25]),
        .O(D[25]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[35]_i_1 
       (.I0(Axi4PC_asr_inline_out[35]),
        .I1(\pc_status_i_reg[77] [26]),
        .O(D[26]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[37]_i_1 
       (.I0(Axi4PC_asr_inline_out[37]),
        .I1(\pc_status_i_reg[77] [27]),
        .O(D[27]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[38]_i_1 
       (.I0(Axi4PC_asr_inline_out[38]),
        .I1(\pc_status_i_reg[77] [28]),
        .O(D[28]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[39]_i_1 
       (.I0(Axi4PC_asr_inline_out[39]),
        .I1(\pc_status_i_reg[77] [29]),
        .O(D[29]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[41]_i_1 
       (.I0(Axi4PC_asr_inline_out[41]),
        .I1(\pc_status_i_reg[77] [30]),
        .O(D[30]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[42]_i_1 
       (.I0(Axi4PC_asr_inline_out[42]),
        .I1(\pc_status_i_reg[77] [31]),
        .O(D[31]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[43]_i_1 
       (.I0(Axi4PC_asr_inline_out[43]),
        .I1(\pc_status_i_reg[77] [32]),
        .O(D[32]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[44]_i_1 
       (.I0(Axi4PC_asr_inline_out[44]),
        .I1(\pc_status_i_reg[77] [33]),
        .O(D[33]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[46]_i_1 
       (.I0(Axi4PC_asr_inline_out[46]),
        .I1(\pc_status_i_reg[77] [34]),
        .O(D[34]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[47]_i_1 
       (.I0(Axi4PC_asr_inline_out[47]),
        .I1(\pc_status_i_reg[77] [35]),
        .O(D[35]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[48]_i_1 
       (.I0(Axi4PC_asr_inline_out[48]),
        .I1(\pc_status_i_reg[77] [36]),
        .O(D[36]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[49]_i_1 
       (.I0(Axi4PC_asr_inline_out[49]),
        .I1(\pc_status_i_reg[77] [37]),
        .O(D[37]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[4]_i_1 
       (.I0(Axi4PC_asr_inline_out[4]),
        .I1(\pc_status_i_reg[77] [3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[50]_i_1 
       (.I0(Axi4PC_asr_inline_out[50]),
        .I1(\pc_status_i_reg[77] [38]),
        .O(D[38]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[52]_i_1 
       (.I0(Axi4PC_asr_inline_out[52]),
        .I1(\pc_status_i_reg[77] [39]),
        .O(D[39]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[53]_i_1 
       (.I0(Axi4PC_asr_inline_out[53]),
        .I1(\pc_status_i_reg[77] [40]),
        .O(D[40]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[54]_i_1 
       (.I0(Axi4PC_asr_inline_out[54]),
        .I1(\pc_status_i_reg[77] [41]),
        .O(D[41]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[55]_i_1 
       (.I0(Axi4PC_asr_inline_out[55]),
        .I1(\pc_status_i_reg[77] [42]),
        .O(D[42]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[56]_i_1 
       (.I0(Axi4PC_asr_inline_out[56]),
        .I1(\pc_status_i_reg[77] [43]),
        .O(D[43]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[58]_i_1 
       (.I0(Axi4PC_asr_inline_out[58]),
        .I1(\pc_status_i_reg[77] [44]),
        .O(D[44]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[59]_i_1 
       (.I0(Axi4PC_asr_inline_out[59]),
        .I1(\pc_status_i_reg[77] [45]),
        .O(D[45]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[5]_i_1 
       (.I0(Axi4PC_asr_inline_out[5]),
        .I1(\pc_status_i_reg[77] [4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[60]_i_1 
       (.I0(Axi4PC_asr_inline_out[60]),
        .I1(\pc_status_i_reg[77] [46]),
        .O(D[46]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[62]_i_1 
       (.I0(Axi4PC_asr_inline_out[62]),
        .I1(\pc_status_i_reg[77] [47]),
        .O(D[47]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[63]_i_1 
       (.I0(Axi4PC_asr_inline_out[63]),
        .I1(\pc_status_i_reg[77] [48]),
        .O(D[48]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[64]_i_1 
       (.I0(Axi4PC_asr_inline_out[64]),
        .I1(\pc_status_i_reg[77] [49]),
        .O(D[49]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[65]_i_1 
       (.I0(Axi4PC_asr_inline_out[65]),
        .I1(\pc_status_i_reg[77] [50]),
        .O(D[50]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[66]_i_1 
       (.I0(Axi4PC_asr_inline_out[66]),
        .I1(\pc_status_i_reg[77] [51]),
        .O(D[51]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[6]_i_1 
       (.I0(Axi4PC_asr_inline_out[6]),
        .I1(\pc_status_i_reg[77] [5]),
        .O(D[5]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[73]_i_1 
       (.I0(Axi4PC_asr_inline_out[73]),
        .I1(\pc_status_i_reg[77] [52]),
        .O(D[52]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[74]_i_1 
       (.I0(Axi4PC_asr_inline_out[74]),
        .I1(\pc_status_i_reg[77] [53]),
        .O(D[53]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[75]_i_1 
       (.I0(Axi4PC_asr_inline_out[75]),
        .I1(\pc_status_i_reg[77] [54]),
        .O(D[54]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[76]_i_1 
       (.I0(Axi4PC_asr_inline_out[76]),
        .I1(\pc_status_i_reg[77] [55]),
        .O(D[55]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[77]_i_1 
       (.I0(Axi4PC_asr_inline_out[77]),
        .I1(\pc_status_i_reg[77] [56]),
        .O(D[56]));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[7]_i_1 
       (.I0(Axi4PC_asr_inline_out[7]),
        .I1(\pc_status_i_reg[77] [6]),
        .O(D[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \pc_status_i[81]_i_1 
       (.I0(resetn_q),
        .O(\s101sq_reg[1]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \pc_status_i[9]_i_1 
       (.I0(Axi4PC_asr_inline_out[9]),
        .I1(\pc_status_i_reg[77] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \s101sq[1]_i_1 
       (.I0(rready_q),
        .I1(rvalid_q),
        .I2(resetn_q),
        .O(s_RDATA_s));
  FDRE \s101sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_RDATA_s),
        .Q(p_0_in22_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s11_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[11]),
        .Q(s11[0]),
        .R(1'b0));
  FDRE \s11_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[12]),
        .Q(s11[1]),
        .R(1'b0));
  FDRE \s14_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[3]),
        .Q(s14[0]),
        .R(1'b0));
  FDRE \s14_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[4]),
        .Q(s14[1]),
        .R(1'b0));
  FDRE \s14_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[5]),
        .Q(s14[2]),
        .R(1'b0));
  FDRE \s14_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[6]),
        .Q(s14[3]),
        .R(1'b0));
  FDRE \s14_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[7]),
        .Q(s14[4]),
        .R(1'b0));
  FDRE \s14_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[8]),
        .Q(s14[5]),
        .R(1'b0));
  FDRE \s14_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[9]),
        .Q(s14[6]),
        .R(1'b0));
  FDRE \s14_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[10]),
        .Q(s14[7]),
        .R(1'b0));
  FDRE \s20_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awprot_q_reg[2] [0]),
        .Q(s20[0]),
        .R(1'b0));
  FDRE \s20_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awprot_q_reg[2] [1]),
        .Q(s20[1]),
        .R(1'b0));
  FDRE \s20_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awprot_q_reg[2] [2]),
        .Q(s20[2]),
        .R(1'b0));
  FDRE \s23_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[0]),
        .Q(s23[0]),
        .R(1'b0));
  FDRE \s23_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[1]),
        .Q(s23[1]),
        .R(1'b0));
  FDRE \s23_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(data_in[2]),
        .Q(s23[2]),
        .R(1'b0));
  FDRE \s26_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_q_reg[3] [0]),
        .Q(s26[0]),
        .R(1'b0));
  FDRE \s26_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_q_reg[3] [1]),
        .Q(s26[1]),
        .R(1'b0));
  FDRE \s26_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_q_reg[3] [2]),
        .Q(s26[2]),
        .R(1'b0));
  FDRE \s26_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awqos_q_reg[3] [3]),
        .Q(s26[3]),
        .R(1'b0));
  FDRE \s29_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_q_reg[3] [0]),
        .Q(s29[0]),
        .R(1'b0));
  FDRE \s29_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_q_reg[3] [1]),
        .Q(s29[1]),
        .R(1'b0));
  FDRE \s29_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_q_reg[3] [2]),
        .Q(s29[2]),
        .R(1'b0));
  FDRE \s29_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awregion_q_reg[3] [3]),
        .Q(s29[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s32sq[1]_i_1 
       (.I0(awvalid_q),
        .I1(resetn_q),
        .I2(awready_q),
        .O(s_AWADDR_s));
  FDRE \s32sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_AWADDR_s),
        .Q(p_0_in85_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE s38_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wlast_q),
        .Q(s38),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s44sq[1]_i_1 
       (.I0(wvalid_q),
        .I1(resetn_q),
        .I2(wready_q),
        .O(s_WDATA_s));
  FDRE \s44sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_WDATA_s),
        .Q(p_0_in72_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s47_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bid_q_reg[1] [0]),
        .Q(s47[0]),
        .R(1'b0));
  FDRE \s47_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bid_q_reg[1] [1]),
        .Q(s47[1]),
        .R(1'b0));
  FDRE \s50_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bresp_q_reg[1] [0]),
        .Q(s50[0]),
        .R(1'b0));
  FDRE \s50_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\bresp_q_reg[1] [1]),
        .Q(s50[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s53sq[1]_i_1 
       (.I0(bvalid_q),
        .I1(resetn_q),
        .I2(bready_q),
        .O(s_BUSER_s[4]));
  FDRE \s53sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_BUSER_s[4]),
        .Q(p_0_in65_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s59_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arburst_q_reg[1] [0]),
        .Q(s59[0]),
        .R(1'b0));
  FDRE \s59_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arburst_q_reg[1] [1]),
        .Q(s59[1]),
        .R(1'b0));
  FDRE \s5_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awburst_q_reg[1] [0]),
        .Q(s5[0]),
        .R(1'b0));
  FDRE \s5_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awburst_q_reg[1] [1]),
        .Q(s5[1]),
        .R(1'b0));
  FDRE \s62_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_q_reg[3] [0]),
        .Q(s62[0]),
        .R(1'b0));
  FDRE \s62_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_q_reg[3] [1]),
        .Q(s62[1]),
        .R(1'b0));
  FDRE \s62_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_q_reg[3] [2]),
        .Q(s62[2]),
        .R(1'b0));
  FDRE \s62_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arcache_q_reg[3] [3]),
        .Q(s62[3]),
        .R(1'b0));
  FDRE \s65_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arid_q_reg[1] [0]),
        .Q(s65[0]),
        .R(1'b0));
  FDRE \s65_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arid_q_reg[1] [1]),
        .Q(s65[1]),
        .R(1'b0));
  FDRE \s68_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [0]),
        .Q(s68[0]),
        .R(1'b0));
  FDRE \s68_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [1]),
        .Q(s68[1]),
        .R(1'b0));
  FDRE \s68_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [2]),
        .Q(s68[2]),
        .R(1'b0));
  FDRE \s68_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [3]),
        .Q(s68[3]),
        .R(1'b0));
  FDRE \s68_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [4]),
        .Q(s68[4]),
        .R(1'b0));
  FDRE \s68_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [5]),
        .Q(s68[5]),
        .R(1'b0));
  FDRE \s68_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [6]),
        .Q(s68[6]),
        .R(1'b0));
  FDRE \s68_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arlen_q_reg[7] [7]),
        .Q(s68[7]),
        .R(1'b0));
  FDRE \s74_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arprot_q_reg[2] [0]),
        .Q(s74[0]),
        .R(1'b0));
  FDRE \s74_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arprot_q_reg[2] [1]),
        .Q(s74[1]),
        .R(1'b0));
  FDRE \s74_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arprot_q_reg[2] [2]),
        .Q(s74[2]),
        .R(1'b0));
  FDRE \s77_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arsize_q_reg[2] [0]),
        .Q(s77[0]),
        .R(1'b0));
  FDRE \s77_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arsize_q_reg[2] [1]),
        .Q(s77[1]),
        .R(1'b0));
  FDRE \s77_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arsize_q_reg[2] [2]),
        .Q(s77[2]),
        .R(1'b0));
  FDRE \s80_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_q_reg[3] [0]),
        .Q(s80[0]),
        .R(1'b0));
  FDRE \s80_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_q_reg[3] [1]),
        .Q(s80[1]),
        .R(1'b0));
  FDRE \s80_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_q_reg[3] [2]),
        .Q(s80[2]),
        .R(1'b0));
  FDRE \s80_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arqos_q_reg[3] [3]),
        .Q(s80[3]),
        .R(1'b0));
  FDRE \s83_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_q_reg[3] [0]),
        .Q(s83[0]),
        .R(1'b0));
  FDRE \s83_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_q_reg[3] [1]),
        .Q(s83[1]),
        .R(1'b0));
  FDRE \s83_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_q_reg[3] [2]),
        .Q(s83[2]),
        .R(1'b0));
  FDRE \s83_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arregion_q_reg[3] [3]),
        .Q(s83[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \s86sq[1]_i_1 
       (.I0(arvalid_q),
        .I1(resetn_q),
        .I2(arready_q),
        .O(s_ARADDR_s));
  FDRE \s86sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_ARADDR_s),
        .Q(p_0_in41_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s8_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_q_reg[3] [0]),
        .Q(s8[0]),
        .R(1'b0));
  FDRE \s8_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_q_reg[3] [1]),
        .Q(s8[1]),
        .R(1'b0));
  FDRE \s8_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_q_reg[3] [2]),
        .Q(s8[2]),
        .R(1'b0));
  FDRE \s8_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\awcache_q_reg[3] [3]),
        .Q(s8[3]),
        .R(1'b0));
  FDRE \s92_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rid_q_reg[1] [0]),
        .Q(s92[0]),
        .R(1'b0));
  FDRE \s92_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rid_q_reg[1] [1]),
        .Q(s92[1]),
        .R(1'b0));
  FDRE s95_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rlast_q),
        .Q(s95),
        .R(1'b0));
  FDRE \s98_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rresp_q_reg[1] [0]),
        .Q(s98[0]),
        .R(1'b0));
  FDRE \s98_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rresp_q_reg[1] [1]),
        .Q(s98[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_ARUSER_sq[3]_i_1 
       (.I0(resetn_q),
        .I1(p_0_in41_in),
        .O(s_ARUSER_s04_out));
  FDRE \s_ARUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_ARUSER_sq_reg_n_0_[2] ),
        .Q(p_0_in2_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_ARUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_ARUSER_sq_reg_n_0_[3] ),
        .Q(\s_ARUSER_sq_reg_n_0_[2] ),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_ARUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_ARUSER_s04_out),
        .Q(\s_ARUSER_sq_reg_n_0_[3] ),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_AWUSER_sq[3]_i_1 
       (.I0(resetn_q),
        .I1(p_0_in85_in),
        .O(s_AWUSER_s013_out));
  FDRE \s_AWUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_AWUSER_sq_reg_n_0_[2] ),
        .Q(p_0_in11_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_AWUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_AWUSER_sq_reg_n_0_[3] ),
        .Q(\s_AWUSER_sq_reg_n_0_[2] ),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_AWUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_AWUSER_s013_out),
        .Q(\s_AWUSER_sq_reg_n_0_[3] ),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_BUSER_sq[3]_i_1 
       (.I0(resetn_q),
        .I1(p_0_in65_in),
        .O(s_BUSER_s[3]));
  FDRE \s_BUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_BUSER_s__0[1]),
        .Q(p_0_in5_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_BUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_BUSER_s__0[2]),
        .Q(s_BUSER_s__0[1]),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_BUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_BUSER_s[3]),
        .Q(s_BUSER_s__0[2]),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_RUSER_sq[3]_i_1 
       (.I0(resetn_q),
        .I1(p_0_in22_in),
        .O(s_RUSER_s01_out));
  FDRE \s_RUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_RUSER_sq_reg_n_0_[2] ),
        .Q(\s_RUSER_sq_reg_n_0_[1] ),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_RUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_RUSER_sq_reg_n_0_[3] ),
        .Q(\s_RUSER_sq_reg_n_0_[2] ),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_RUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_RUSER_s01_out),
        .Q(\s_RUSER_sq_reg_n_0_[3] ),
        .R(\s101sq_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s_WUSER_sq[3]_i_1 
       (.I0(resetn_q),
        .I1(p_0_in72_in),
        .O(s_WUSER_s010_out));
  FDRE \s_WUSER_sq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_WUSER_sq_reg_n_0_[2] ),
        .Q(p_0_in8_in),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_WUSER_sq_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_WUSER_sq_reg_n_0_[3] ),
        .Q(\s_WUSER_sq_reg_n_0_[2] ),
        .R(\s101sq_reg[1]_0 ));
  FDRE \s_WUSER_sq_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(s_WUSER_s010_out),
        .Q(\s_WUSER_sq_reg_n_0_[3] ),
        .R(\s101sq_reg[1]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_core
   (\pc_status[81] ,
    pc_asserted_i_reg,
    aclk,
    wlast_q,
    rlast_q,
    awuser_q,
    wuser_q,
    buser_q,
    aruser_q,
    ruser_q,
    Q,
    \araddr_q_reg[31] ,
    resetn_q,
    awready_q,
    awvalid_q,
    wvalid_q,
    wready_q,
    rready_q,
    rvalid_q,
    \awlen_q_reg[7] ,
    \awsize_q_reg[2] ,
    \arlen_q_reg[7] ,
    \arsize_q_reg[2] ,
    bvalid_q,
    bready_q,
    \awburst_q_reg[1] ,
    \awcache_q_reg[3] ,
    \awid_q_reg[1] ,
    \awprot_q_reg[2] ,
    \awqos_q_reg[3] ,
    \awregion_q_reg[3] ,
    \wdata_q_reg[63] ,
    \wstrb_q_reg[7] ,
    \bid_q_reg[1] ,
    \bresp_q_reg[1] ,
    \arburst_q_reg[1] ,
    \arcache_q_reg[3] ,
    \arid_q_reg[1] ,
    \arprot_q_reg[2] ,
    \arqos_q_reg[3] ,
    \arregion_q_reg[3] ,
    \rdata_q_reg[63] ,
    \rid_q_reg[1] ,
    \rresp_q_reg[1] ,
    arready_q,
    arvalid_q);
  output [60:0]\pc_status[81] ;
  output pc_asserted_i_reg;
  input aclk;
  input wlast_q;
  input rlast_q;
  input awuser_q;
  input wuser_q;
  input buser_q;
  input aruser_q;
  input ruser_q;
  input [31:0]Q;
  input [31:0]\araddr_q_reg[31] ;
  input resetn_q;
  input awready_q;
  input awvalid_q;
  input wvalid_q;
  input wready_q;
  input rready_q;
  input rvalid_q;
  input [7:0]\awlen_q_reg[7] ;
  input [2:0]\awsize_q_reg[2] ;
  input [7:0]\arlen_q_reg[7] ;
  input [2:0]\arsize_q_reg[2] ;
  input bvalid_q;
  input bready_q;
  input [1:0]\awburst_q_reg[1] ;
  input [3:0]\awcache_q_reg[3] ;
  input [1:0]\awid_q_reg[1] ;
  input [2:0]\awprot_q_reg[2] ;
  input [3:0]\awqos_q_reg[3] ;
  input [3:0]\awregion_q_reg[3] ;
  input [63:0]\wdata_q_reg[63] ;
  input [7:0]\wstrb_q_reg[7] ;
  input [1:0]\bid_q_reg[1] ;
  input [1:0]\bresp_q_reg[1] ;
  input [1:0]\arburst_q_reg[1] ;
  input [3:0]\arcache_q_reg[3] ;
  input [1:0]\arid_q_reg[1] ;
  input [2:0]\arprot_q_reg[2] ;
  input [3:0]\arqos_q_reg[3] ;
  input [3:0]\arregion_q_reg[3] ;
  input [63:0]\rdata_q_reg[63] ;
  input [1:0]\rid_q_reg[1] ;
  input [1:0]\rresp_q_reg[1] ;
  input arready_q;
  input arvalid_q;

  wire ASR_59436_in;
  wire ASR_59437_in;
  wire ASR_610;
  wire AWCMD_n_16;
  wire AWCMD_n_17;
  wire AWCMD_n_18;
  wire AWCMD_n_19;
  wire AWCMD_n_2;
  wire AWCMD_n_20;
  wire AWCMD_n_21;
  wire AWCMD_n_22;
  wire AWCMD_n_23;
  wire AWCMD_n_24;
  wire AWCMD_n_25;
  wire AWCMD_n_26;
  wire AWCMD_n_28;
  wire AWCMD_n_29;
  wire AWCMD_n_3;
  wire AWCMD_n_30;
  wire AWCMD_n_31;
  wire AWCMD_n_32;
  wire AWCMD_n_33;
  wire AWCMD_n_34;
  wire AWCMD_n_35;
  wire AWCMD_n_36;
  wire AWCMD_n_4;
  wire [2:0]AWStrbsizeOut;
  wire AWXferCountOverflow2_out;
  wire AWXferCountOverflow_reg_n_0;
  wire \AWXferCount[0][1]_i_3_n_0 ;
  wire \AWXferCount[1][1]_i_2_n_0 ;
  wire \AWXferCount[2][0]_i_2_n_0 ;
  wire \AWXferCount[2][1]_i_2_n_0 ;
  wire \AWXferCount[2][1]_i_5_n_0 ;
  wire \AWXferCount[2][1]_i_7_n_0 ;
  wire \AWXferCount[3][1]_i_2_n_0 ;
  wire \AWXferCount_reg_n_0_[0][0] ;
  wire \AWXferCount_reg_n_0_[0][1] ;
  wire \AWXferCount_reg_n_0_[1][0] ;
  wire \AWXferCount_reg_n_0_[1][1] ;
  wire \AWXferCount_reg_n_0_[2][0] ;
  wire \AWXferCount_reg_n_0_[2][1] ;
  wire \AWXferCount_reg_n_0_[3][0] ;
  wire \AWXferCount_reg_n_0_[3][1] ;
  wire \ArAddrIncr_q1[3]_i_10_n_0 ;
  wire \ArAddrIncr_q1[3]_i_11_n_0 ;
  wire \ArAddrIncr_q1[3]_i_14_n_0 ;
  wire \ArAddrIncr_q1[3]_i_15_n_0 ;
  wire \ArAddrIncr_q1[3]_i_16_n_0 ;
  wire \ArAddrIncr_q1[3]_i_17_n_0 ;
  wire \ArAddrIncr_q1[3]_i_23_n_0 ;
  wire \ArAddrIncr_q1[3]_i_24_n_0 ;
  wire \ArAddrIncr_q1[3]_i_25_n_0 ;
  wire \ArAddrIncr_q1[3]_i_26_n_0 ;
  wire \ArAddrIncr_q1[3]_i_4_n_0 ;
  wire \ArAddrIncr_q1[3]_i_5_n_0 ;
  wire \ArAddrIncr_q1[3]_i_6_n_0 ;
  wire \ArAddrIncr_q1[3]_i_8_n_0 ;
  wire \ArAddrIncr_q1[3]_i_9_n_0 ;
  wire \AwAddrIncr_q1[3]_i_10_n_0 ;
  wire \AwAddrIncr_q1[3]_i_11_n_0 ;
  wire \AwAddrIncr_q1[3]_i_14_n_0 ;
  wire \AwAddrIncr_q1[3]_i_15_n_0 ;
  wire \AwAddrIncr_q1[3]_i_16_n_0 ;
  wire \AwAddrIncr_q1[3]_i_17_n_0 ;
  wire \AwAddrIncr_q1[3]_i_23_n_0 ;
  wire \AwAddrIncr_q1[3]_i_24_n_0 ;
  wire \AwAddrIncr_q1[3]_i_25_n_0 ;
  wire \AwAddrIncr_q1[3]_i_26_n_0 ;
  wire \AwAddrIncr_q1[3]_i_4_n_0 ;
  wire \AwAddrIncr_q1[3]_i_5_n_0 ;
  wire \AwAddrIncr_q1[3]_i_6_n_0 ;
  wire \AwAddrIncr_q1[3]_i_8_n_0 ;
  wire \AwAddrIncr_q1[3]_i_9_n_0 ;
  wire BStrbError;
  wire BStrbError_i_1_n_0;
  wire BrespErrorLead4_out;
  wire BrespErrorLead_i_2_n_0;
  wire BrespErrorLead_i_3_n_0;
  wire BrespErrorLead_reg_n_0;
  wire [1:0]CHKSTRB_eq;
  wire CHKSTRB_eq0;
  wire \CHKSTRB_eq[0]_i_2_n_0 ;
  wire \CHKSTRB_eq[1]_i_2_n_0 ;
  wire CHKSTRB_stage_1_eq;
  wire \CHKSTRB_stage_1_eq[0]_i_1_n_0 ;
  wire CHKSTRB_stage_2_eq;
  wire CheckStrbAssert;
  wire [31:0]Q;
  wire [6:1]StrbMask_q1;
  wire [7:0]StrbMask_q2;
  wire \StrbMask_q2[0]_i_1_n_0 ;
  wire \StrbMask_q2[1]_i_1_n_0 ;
  wire \StrbMask_q2[2]_i_1_n_0 ;
  wire \StrbMask_q2[2]_i_2_n_0 ;
  wire \StrbMask_q2[3]_i_1_n_0 ;
  wire \StrbMask_q2[4]_i_1_n_0 ;
  wire \StrbMask_q2[4]_i_2_n_0 ;
  wire \StrbMask_q2[5]_i_1_n_0 ;
  wire \StrbMask_q2[5]_i_2_n_0 ;
  wire \StrbMask_q2[6]_i_1_n_0 ;
  wire \StrbMask_q2[6]_i_2_n_0 ;
  wire \StrbMask_q2[7]_i_1_n_0 ;
  wire \StrbMask_q2[7]_i_2_n_0 ;
  wire \StrbMask_q2[7]_i_3_n_0 ;
  wire \StrbMask_q2[7]_i_4_n_0 ;
  wire \StrbMask_q3_n[0]_i_1_n_0 ;
  wire \StrbMask_q3_n[1]_i_1_n_0 ;
  wire \StrbMask_q3_n[2]_i_1_n_0 ;
  wire \StrbMask_q3_n[3]_i_1_n_0 ;
  wire \StrbMask_q3_n[3]_i_2_n_0 ;
  wire \StrbMask_q3_n[4]_i_1_n_0 ;
  wire \StrbMask_q3_n[5]_i_1_n_0 ;
  wire \StrbMask_q3_n[5]_i_2_n_0 ;
  wire \StrbMask_q3_n[6]_i_1_n_0 ;
  wire \StrbMask_q3_n[6]_i_2_n_0 ;
  wire \StrbMask_q3_n[7]_i_1_n_0 ;
  wire \StrbMask_q3_n[7]_i_2_n_0 ;
  wire \StrbMask_q3_n[7]_i_3_n_0 ;
  wire \StrbMask_q3_n_reg_n_0_[0] ;
  wire \StrbMask_q3_n_reg_n_0_[1] ;
  wire \StrbMask_q3_n_reg_n_0_[2] ;
  wire \StrbMask_q3_n_reg_n_0_[3] ;
  wire \StrbMask_q3_n_reg_n_0_[4] ;
  wire \StrbMask_q3_n_reg_n_0_[5] ;
  wire \StrbMask_q3_n_reg_n_0_[6] ;
  wire \StrbMask_q3_n_reg_n_0_[7] ;
  wire \Strb_q2_reg[0]_srl2_n_0 ;
  wire \Strb_q2_reg[1]_srl2_n_0 ;
  wire \Strb_q2_reg[2]_srl2_n_0 ;
  wire \Strb_q2_reg[3]_srl2_n_0 ;
  wire \Strb_q2_reg[4]_srl2_n_0 ;
  wire \Strb_q2_reg[5]_srl2_n_0 ;
  wire \Strb_q2_reg[6]_srl2_n_0 ;
  wire \Strb_q2_reg[7]_srl2_n_0 ;
  wire \Strb_q3_reg_n_0_[0] ;
  wire \Strb_q3_reg_n_0_[1] ;
  wire \Strb_q3_reg_n_0_[2] ;
  wire \Strb_q3_reg_n_0_[3] ;
  wire \Strb_q3_reg_n_0_[4] ;
  wire \Strb_q3_reg_n_0_[5] ;
  wire \Strb_q3_reg_n_0_[6] ;
  wire \Strb_q3_reg_n_0_[7] ;
  wire WCHECK_n_0;
  wire WCHECK_n_14;
  wire WCHECK_n_15;
  wire WCHECK_n_16;
  wire WCHECK_n_17;
  wire WCHECK_n_18;
  wire WCHECK_n_19;
  wire WCHECK_n_20;
  wire WCHECK_n_21;
  wire WCHECK_n_3;
  wire WCHECK_n_4;
  wire [8:0]WCheckCountOut;
  wire \WCountIn[8]_i_3_n_0 ;
  wire [8:0]WCountIn_reg__0;
  wire WDataNumError1;
  wire WDataNumError1_i_3_n_0;
  wire WDataNumError1_i_4_n_0;
  wire WDataNumError1_i_5_n_0;
  wire WDataNumError1_reg_i_2_n_1;
  wire WDataNumError1_reg_i_2_n_2;
  wire WDataNumError1_reg_i_2_n_3;
  wire [7:0]WSTRBq;
  wire WSTRBq0;
  wire aclk;
  wire [9:0]active_cnt;
  wire [31:0]\araddr_q_reg[31] ;
  wire [1:0]\arburst_q_reg[1] ;
  wire [3:0]\arcache_q_reg[3] ;
  wire [1:0]\arid_q_reg[1] ;
  wire [7:0]\arlen_q_reg[7] ;
  wire [2:0]\arprot_q_reg[2] ;
  wire [3:0]\arqos_q_reg[3] ;
  wire arready_q;
  wire [3:0]\arregion_q_reg[3] ;
  wire [2:0]\arsize_q_reg[2] ;
  wire aruser_q;
  wire arvalid_q;
  wire [1:0]\awburst_q_reg[1] ;
  wire [3:0]\awcache_q_reg[3] ;
  wire [1:0]\awid_q_reg[1] ;
  wire [7:0]\awlen_q_reg[7] ;
  wire [2:0]\awprot_q_reg[2] ;
  wire [3:0]\awqos_q_reg[3] ;
  wire awready_q;
  wire [3:0]\awregion_q_reg[3] ;
  wire [2:0]\awsize_q_reg[2] ;
  wire awuser_q;
  wire awvalid_q;
  wire [1:0]\bid_q_reg[1] ;
  wire bready_q;
  wire [1:0]\bresp_q_reg[1] ;
  wire buser_q;
  wire bvalid_q;
  wire cmd_pop_0;
  wire cmd_pop_1;
  wire [1:0]cnt;
  wire [1:0]cnt_0;
  wire first_strb;
  wire first_strb_i_1_n_0;
  wire \gen_thread_loop[0].RCount[0][0]_i_1_n_0 ;
  wire \gen_thread_loop[0].RCount[0][3]_i_1_n_0 ;
  wire \gen_thread_loop[0].RCount[0][8]_i_2_n_0 ;
  wire \gen_thread_loop[0].RCount[0][8]_i_4_n_0 ;
  wire [8:0]\gen_thread_loop[0].RCount_reg[0]_1 ;
  wire \gen_thread_loop[0].RDCAM_n_0 ;
  wire \gen_thread_loop[0].RDCAM_n_1 ;
  wire \gen_thread_loop[0].RDCAM_n_2 ;
  wire \gen_thread_loop[0].RDCAM_n_4 ;
  wire \gen_thread_loop[0].RDCAM_n_6 ;
  wire \gen_thread_loop[0].RDCAM_n_7 ;
  wire \gen_thread_loop[0].RDCAM_n_8 ;
  wire \gen_thread_loop[0].active_cnt[0]_i_1_n_0 ;
  wire \gen_thread_loop[0].active_cnt[1]_i_1_n_0 ;
  wire \gen_thread_loop[0].active_id[0]_i_1_n_0 ;
  wire \gen_thread_loop[0].active_id[1]_i_1_n_0 ;
  wire [1:0]\gen_thread_loop[0].active_id_reg__0 ;
  wire \gen_thread_loop[1].RCount[1][3]_i_1_n_0 ;
  wire \gen_thread_loop[1].RCount[1][6]_i_1_n_0 ;
  wire \gen_thread_loop[1].RCount[1][8]_i_2_n_0 ;
  wire \gen_thread_loop[1].RCount[1][8]_i_4_n_0 ;
  wire [8:0]\gen_thread_loop[1].RCount_reg[1]_2 ;
  wire \gen_thread_loop[1].RDCAM_n_1 ;
  wire \gen_thread_loop[1].RDCAM_n_10 ;
  wire \gen_thread_loop[1].RDCAM_n_11 ;
  wire \gen_thread_loop[1].RDCAM_n_3 ;
  wire \gen_thread_loop[1].RDCAM_n_4 ;
  wire \gen_thread_loop[1].RDCAM_n_5 ;
  wire \gen_thread_loop[1].RDCAM_n_6 ;
  wire \gen_thread_loop[1].RDCAM_n_7 ;
  wire \gen_thread_loop[1].RDCAM_n_8 ;
  wire \gen_thread_loop[1].RDCAM_n_9 ;
  wire \gen_thread_loop[1].active_cnt[8]_i_1_n_0 ;
  wire \gen_thread_loop[1].active_cnt[9]_i_1_n_0 ;
  wire \gen_thread_loop[1].active_id[2]_i_1_n_0 ;
  wire \gen_thread_loop[1].active_id[3]_i_1_n_0 ;
  wire [1:0]\gen_thread_loop[1].active_id_reg__0 ;
  wire i_Axi4PC_asr_inline_n_0;
  wire i_Axi4PC_asr_inline_n_1;
  wire i_Axi4PC_asr_inline_n_10;
  wire i_Axi4PC_asr_inline_n_11;
  wire i_Axi4PC_asr_inline_n_12;
  wire i_Axi4PC_asr_inline_n_13;
  wire i_Axi4PC_asr_inline_n_14;
  wire i_Axi4PC_asr_inline_n_15;
  wire i_Axi4PC_asr_inline_n_16;
  wire i_Axi4PC_asr_inline_n_17;
  wire i_Axi4PC_asr_inline_n_18;
  wire i_Axi4PC_asr_inline_n_19;
  wire i_Axi4PC_asr_inline_n_2;
  wire i_Axi4PC_asr_inline_n_20;
  wire i_Axi4PC_asr_inline_n_21;
  wire i_Axi4PC_asr_inline_n_22;
  wire i_Axi4PC_asr_inline_n_23;
  wire i_Axi4PC_asr_inline_n_24;
  wire i_Axi4PC_asr_inline_n_25;
  wire i_Axi4PC_asr_inline_n_26;
  wire i_Axi4PC_asr_inline_n_27;
  wire i_Axi4PC_asr_inline_n_28;
  wire i_Axi4PC_asr_inline_n_29;
  wire i_Axi4PC_asr_inline_n_3;
  wire i_Axi4PC_asr_inline_n_30;
  wire i_Axi4PC_asr_inline_n_31;
  wire i_Axi4PC_asr_inline_n_32;
  wire i_Axi4PC_asr_inline_n_33;
  wire i_Axi4PC_asr_inline_n_34;
  wire i_Axi4PC_asr_inline_n_35;
  wire i_Axi4PC_asr_inline_n_36;
  wire i_Axi4PC_asr_inline_n_37;
  wire i_Axi4PC_asr_inline_n_38;
  wire i_Axi4PC_asr_inline_n_39;
  wire i_Axi4PC_asr_inline_n_4;
  wire i_Axi4PC_asr_inline_n_40;
  wire i_Axi4PC_asr_inline_n_41;
  wire i_Axi4PC_asr_inline_n_42;
  wire i_Axi4PC_asr_inline_n_43;
  wire i_Axi4PC_asr_inline_n_44;
  wire i_Axi4PC_asr_inline_n_45;
  wire i_Axi4PC_asr_inline_n_46;
  wire i_Axi4PC_asr_inline_n_47;
  wire i_Axi4PC_asr_inline_n_48;
  wire i_Axi4PC_asr_inline_n_49;
  wire i_Axi4PC_asr_inline_n_5;
  wire i_Axi4PC_asr_inline_n_50;
  wire i_Axi4PC_asr_inline_n_51;
  wire i_Axi4PC_asr_inline_n_52;
  wire i_Axi4PC_asr_inline_n_53;
  wire i_Axi4PC_asr_inline_n_54;
  wire i_Axi4PC_asr_inline_n_55;
  wire i_Axi4PC_asr_inline_n_56;
  wire i_Axi4PC_asr_inline_n_57;
  wire i_Axi4PC_asr_inline_n_58;
  wire i_Axi4PC_asr_inline_n_59;
  wire i_Axi4PC_asr_inline_n_6;
  wire i_Axi4PC_asr_inline_n_60;
  wire i_Axi4PC_asr_inline_n_61;
  wire i_Axi4PC_asr_inline_n_62;
  wire i_Axi4PC_asr_inline_n_63;
  wire i_Axi4PC_asr_inline_n_64;
  wire i_Axi4PC_asr_inline_n_65;
  wire i_Axi4PC_asr_inline_n_66;
  wire i_Axi4PC_asr_inline_n_67;
  wire i_Axi4PC_asr_inline_n_68;
  wire i_Axi4PC_asr_inline_n_69;
  wire i_Axi4PC_asr_inline_n_7;
  wire i_Axi4PC_asr_inline_n_70;
  wire i_Axi4PC_asr_inline_n_71;
  wire i_Axi4PC_asr_inline_n_72;
  wire i_Axi4PC_asr_inline_n_73;
  wire i_Axi4PC_asr_inline_n_74;
  wire i_Axi4PC_asr_inline_n_75;
  wire i_Axi4PC_asr_inline_n_76;
  wire i_Axi4PC_asr_inline_n_77;
  wire i_Axi4PC_asr_inline_n_78;
  wire i_Axi4PC_asr_inline_n_8;
  wire i_Axi4PC_asr_inline_n_9;
  wire [6:0]mask_shift_stage_1;
  wire \mask_shift_stage_1[0]_i_1_n_0 ;
  wire \mask_shift_stage_1[1]_i_1_n_0 ;
  wire \mask_shift_stage_1[2]_i_1_n_0 ;
  wire \mask_shift_stage_1[3]_i_1_n_0 ;
  wire \mask_shift_stage_1[4]_i_1_n_0 ;
  wire \mask_shift_stage_1[5]_i_1_n_0 ;
  wire \mask_shift_stage_1[6]_i_1_n_0 ;
  wire [2:0]mask_shift_stage_2;
  wire [2:0]mask_shift_stage_2_q1;
  wire [8:0]p_0_in;
  wire [7:0]p_0_in_0;
  wire [8:1]p_0_in__0;
  wire [8:0]p_0_in__1;
  wire [0:0]p_0_out;
  wire p_11_in;
  wire pc_asserted_i_i_10_n_0;
  wire pc_asserted_i_i_11_n_0;
  wire pc_asserted_i_i_12_n_0;
  wire pc_asserted_i_i_13_n_0;
  wire pc_asserted_i_i_14_n_0;
  wire pc_asserted_i_i_15_n_0;
  wire pc_asserted_i_i_16_n_0;
  wire pc_asserted_i_i_2_n_0;
  wire pc_asserted_i_i_3_n_0;
  wire pc_asserted_i_i_4_n_0;
  wire pc_asserted_i_i_5_n_0;
  wire pc_asserted_i_i_6_n_0;
  wire pc_asserted_i_i_7_n_0;
  wire pc_asserted_i_i_8_n_0;
  wire pc_asserted_i_i_9_n_0;
  wire pc_asserted_i_reg;
  wire [60:0]\pc_status[81] ;
  wire [63:0]\rdata_q_reg[63] ;
  wire resetn_q;
  wire [1:0]\rid_q_reg[1] ;
  wire rlast_q;
  wire rready_q;
  wire [1:0]\rresp_q_reg[1] ;
  wire ruser_q;
  wire rvalid_q;
  wire sel;
  wire [6:6]wchechPop_shift;
  wire \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0 ;
  wire \wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0 ;
  wire wchechPop_shift_reg_gate_n_0;
  wire wchechPop_shift_reg_r_0_n_0;
  wire wchechPop_shift_reg_r_1_n_0;
  wire wchechPop_shift_reg_r_2_n_0;
  wire wchechPop_shift_reg_r_3_n_0;
  wire wchechPop_shift_reg_r_4_n_0;
  wire wchechPop_shift_reg_r_n_0;
  wire wcheckPop;
  wire [63:0]\wdata_q_reg[63] ;
  wire wlast_q;
  wire wready_q;
  wire [7:0]\wstrb_q_reg[7] ;
  wire wuser_q;
  wire wvalid_q;
  wire [3:3]NLW_WDataNumError1_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_WDataNumError1_reg_i_2_O_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized0 AWCMD
       (.AWXferCountOverflow2_out(AWXferCountOverflow2_out),
        .AWXferCountOverflow_reg(AWXferCountOverflow_reg_n_0),
        .\AWXferCount_reg[0][0] (AWCMD_n_33),
        .\AWXferCount_reg[0][0]_0 (\AWXferCount_reg_n_0_[0][0] ),
        .\AWXferCount_reg[0][1] (AWCMD_n_32),
        .\AWXferCount_reg[0][1]_0 (\AWXferCount_reg_n_0_[0][1] ),
        .\AWXferCount_reg[1][0] (AWCMD_n_31),
        .\AWXferCount_reg[1][0]_0 (\AWXferCount_reg_n_0_[1][0] ),
        .\AWXferCount_reg[1][1] (AWCMD_n_30),
        .\AWXferCount_reg[1][1]_0 (\AWXferCount_reg_n_0_[1][1] ),
        .\AWXferCount_reg[2][0] (AWCMD_n_29),
        .\AWXferCount_reg[2][0]_0 (\AWXferCount_reg_n_0_[2][0] ),
        .\AWXferCount_reg[2][1] (AWCMD_n_28),
        .\AWXferCount_reg[2][1]_0 (\AWXferCount_reg_n_0_[2][1] ),
        .\AWXferCount_reg[3][0] (AWCMD_n_35),
        .\AWXferCount_reg[3][0]_0 (BrespErrorLead_i_2_n_0),
        .\AWXferCount_reg[3][0]_1 (\AWXferCount[2][1]_i_2_n_0 ),
        .\AWXferCount_reg[3][0]_2 (\AWXferCount_reg_n_0_[3][0] ),
        .\AWXferCount_reg[3][1] (AWCMD_n_34),
        .\AWXferCount_reg[3][1]_0 (BrespErrorLead_i_3_n_0),
        .\AWXferCount_reg[3][1]_1 (\AWXferCount_reg_n_0_[3][1] ),
        .BrespErrorLead4_out(BrespErrorLead4_out),
        .D({AWCMD_n_2,AWCMD_n_3,AWCMD_n_4}),
        .\StrbMask_q1_reg[6] ({AWCMD_n_23,AWCMD_n_24,AWCMD_n_25,AWCMD_n_26}),
        .aclk(aclk),
        .awready_q(awready_q),
        .awvalid_q(awvalid_q),
        .\bid_q_reg[0] (\AWXferCount[2][1]_i_5_n_0 ),
        .\bid_q_reg[0]_0 (\AWXferCount[2][0]_i_2_n_0 ),
        .\bid_q_reg[0]_1 (\AWXferCount[1][1]_i_2_n_0 ),
        .\bid_q_reg[0]_2 (\AWXferCount[0][1]_i_3_n_0 ),
        .\bid_q_reg[1] (\bid_q_reg[1] ),
        .bready_q(bready_q),
        .bvalid_q(bvalid_q),
        .bvalid_q_reg(\AWXferCount[3][1]_i_2_n_0 ),
        .bvalid_q_reg_0(\AWXferCount[2][1]_i_7_n_0 ),
        .cnt(cnt),
        .cnt_0(cnt_0),
        .\cnt_reg[1]_0 (WCHECK_n_3),
        .data_in({\awid_q_reg[1] ,\awlen_q_reg[7] ,\awsize_q_reg[2] ,Q[6:0]}),
        .data_out({p_0_in_0,AWStrbsizeOut,AWCMD_n_16,AWCMD_n_17,AWCMD_n_18,AWCMD_n_19,AWCMD_n_20,AWCMD_n_21,AWCMD_n_22}),
        .\pc_status_i_reg[80] (AWCMD_n_36),
        .\pc_status_i_reg[80]_0 (\pc_status[81] [59]),
        .resetn_q(resetn_q),
        .resetn_q_reg(i_Axi4PC_asr_inline_n_0),
        .wcheckPop(wcheckPop));
  FDRE AWXferCountOverflow_reg
       (.C(aclk),
        .CE(1'b1),
        .D(AWXferCountOverflow2_out),
        .Q(AWXferCountOverflow_reg_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT6 #(
    .INIT(64'h000000000E000000)) 
    \AWXferCount[0][1]_i_3 
       (.I0(BrespErrorLead_i_2_n_0),
        .I1(BrespErrorLead_i_3_n_0),
        .I2(\bid_q_reg[1] [0]),
        .I3(bvalid_q),
        .I4(bready_q),
        .I5(\bid_q_reg[1] [1]),
        .O(\AWXferCount[0][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A8000000)) 
    \AWXferCount[1][1]_i_2 
       (.I0(\bid_q_reg[1] [0]),
        .I1(BrespErrorLead_i_2_n_0),
        .I2(BrespErrorLead_i_3_n_0),
        .I3(bvalid_q),
        .I4(bready_q),
        .I5(\bid_q_reg[1] [1]),
        .O(\AWXferCount[1][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h01510B5BA1F1ABFB)) 
    \AWXferCount[2][0]_i_2 
       (.I0(\bid_q_reg[1] [0]),
        .I1(\AWXferCount_reg_n_0_[0][0] ),
        .I2(\bid_q_reg[1] [1]),
        .I3(\AWXferCount_reg_n_0_[2][0] ),
        .I4(\AWXferCount_reg_n_0_[1][0] ),
        .I5(\AWXferCount_reg_n_0_[3][0] ),
        .O(\AWXferCount[2][0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AWXferCount[2][1]_i_2 
       (.I0(BrespErrorLead_i_2_n_0),
        .I1(BrespErrorLead_i_3_n_0),
        .O(\AWXferCount[2][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E00000000000000)) 
    \AWXferCount[2][1]_i_5 
       (.I0(BrespErrorLead_i_2_n_0),
        .I1(BrespErrorLead_i_3_n_0),
        .I2(\bid_q_reg[1] [0]),
        .I3(bvalid_q),
        .I4(bready_q),
        .I5(\bid_q_reg[1] [1]),
        .O(\AWXferCount[2][1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \AWXferCount[2][1]_i_7 
       (.I0(bvalid_q),
        .I1(bready_q),
        .O(\AWXferCount[2][1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    \AWXferCount[3][1]_i_2 
       (.I0(bvalid_q),
        .I1(bready_q),
        .I2(\bid_q_reg[1] [1]),
        .I3(\bid_q_reg[1] [0]),
        .I4(BrespErrorLead_i_2_n_0),
        .I5(BrespErrorLead_i_3_n_0),
        .O(\AWXferCount[3][1]_i_2_n_0 ));
  FDRE \AWXferCount_reg[0][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_33),
        .Q(\AWXferCount_reg_n_0_[0][0] ),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[0][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_32),
        .Q(\AWXferCount_reg_n_0_[0][1] ),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[1][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_31),
        .Q(\AWXferCount_reg_n_0_[1][0] ),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[1][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_30),
        .Q(\AWXferCount_reg_n_0_[1][1] ),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[2][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_29),
        .Q(\AWXferCount_reg_n_0_[2][0] ),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[2][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_28),
        .Q(\AWXferCount_reg_n_0_[2][1] ),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[3][0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_35),
        .Q(\AWXferCount_reg_n_0_[3][0] ),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \AWXferCount_reg[3][1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_34),
        .Q(\AWXferCount_reg_n_0_[3][1] ),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT4 #(
    .INIT(16'h56A6)) 
    \ArAddrIncr_q1[3]_i_10 
       (.I0(\araddr_q_reg[31] [9]),
        .I1(i_Axi4PC_asr_inline_n_2),
        .I2(\arsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_74),
        .O(\ArAddrIncr_q1[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \ArAddrIncr_q1[3]_i_11 
       (.I0(\araddr_q_reg[31] [8]),
        .I1(i_Axi4PC_asr_inline_n_71),
        .I2(\arsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_75),
        .O(\ArAddrIncr_q1[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \ArAddrIncr_q1[3]_i_14 
       (.I0(\araddr_q_reg[31] [7]),
        .I1(i_Axi4PC_asr_inline_n_72),
        .I2(\arsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_76),
        .O(\ArAddrIncr_q1[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \ArAddrIncr_q1[3]_i_15 
       (.I0(\araddr_q_reg[31] [6]),
        .I1(i_Axi4PC_asr_inline_n_73),
        .I2(\arsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_77),
        .O(\ArAddrIncr_q1[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hA656A6A6)) 
    \ArAddrIncr_q1[3]_i_16 
       (.I0(\araddr_q_reg[31] [5]),
        .I1(i_Axi4PC_asr_inline_n_74),
        .I2(\arsize_q_reg[2] [2]),
        .I3(\arsize_q_reg[2] [1]),
        .I4(i_Axi4PC_asr_inline_n_78),
        .O(\ArAddrIncr_q1[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A656A6A6A6A6)) 
    \ArAddrIncr_q1[3]_i_17 
       (.I0(\araddr_q_reg[31] [4]),
        .I1(i_Axi4PC_asr_inline_n_75),
        .I2(\arsize_q_reg[2] [2]),
        .I3(\arsize_q_reg[2] [0]),
        .I4(\arsize_q_reg[2] [1]),
        .I5(\arlen_q_reg[7] [0]),
        .O(\ArAddrIncr_q1[3]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \ArAddrIncr_q1[3]_i_23 
       (.I0(\araddr_q_reg[31] [3]),
        .I1(\arsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_76),
        .O(\ArAddrIncr_q1[3]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \ArAddrIncr_q1[3]_i_24 
       (.I0(\araddr_q_reg[31] [2]),
        .I1(\arsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_77),
        .O(\ArAddrIncr_q1[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA656A)) 
    \ArAddrIncr_q1[3]_i_25 
       (.I0(\araddr_q_reg[31] [1]),
        .I1(\arlen_q_reg[7] [0]),
        .I2(\arsize_q_reg[2] [0]),
        .I3(\arlen_q_reg[7] [1]),
        .I4(\arsize_q_reg[2] [1]),
        .I5(\arsize_q_reg[2] [2]),
        .O(\ArAddrIncr_q1[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA6)) 
    \ArAddrIncr_q1[3]_i_26 
       (.I0(\araddr_q_reg[31] [0]),
        .I1(\arlen_q_reg[7] [0]),
        .I2(\arsize_q_reg[2] [0]),
        .I3(\arsize_q_reg[2] [1]),
        .I4(\arsize_q_reg[2] [2]),
        .O(\ArAddrIncr_q1[3]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \ArAddrIncr_q1[3]_i_4 
       (.I0(\araddr_q_reg[31] [14]),
        .I1(\arsize_q_reg[2] [2]),
        .I2(\arsize_q_reg[2] [0]),
        .I3(\arlen_q_reg[7] [7]),
        .I4(\arsize_q_reg[2] [1]),
        .O(\ArAddrIncr_q1[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6AAAAAAAAA)) 
    \ArAddrIncr_q1[3]_i_5 
       (.I0(\araddr_q_reg[31] [13]),
        .I1(\arsize_q_reg[2] [2]),
        .I2(\arlen_q_reg[7] [7]),
        .I3(\arsize_q_reg[2] [0]),
        .I4(\arlen_q_reg[7] [6]),
        .I5(\arsize_q_reg[2] [1]),
        .O(\ArAddrIncr_q1[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \ArAddrIncr_q1[3]_i_6 
       (.I0(\araddr_q_reg[31] [12]),
        .I1(\arsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_71),
        .O(\ArAddrIncr_q1[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \ArAddrIncr_q1[3]_i_8 
       (.I0(\araddr_q_reg[31] [11]),
        .I1(\arsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_72),
        .O(\ArAddrIncr_q1[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h55556AAAAAAA6AAA)) 
    \ArAddrIncr_q1[3]_i_9 
       (.I0(\araddr_q_reg[31] [10]),
        .I1(\arsize_q_reg[2] [1]),
        .I2(\arlen_q_reg[7] [7]),
        .I3(\arsize_q_reg[2] [0]),
        .I4(\arsize_q_reg[2] [2]),
        .I5(i_Axi4PC_asr_inline_n_73),
        .O(\ArAddrIncr_q1[3]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \AwAddrIncr_q1[3]_i_10 
       (.I0(Q[9]),
        .I1(i_Axi4PC_asr_inline_n_1),
        .I2(\awsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_66),
        .O(\AwAddrIncr_q1[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \AwAddrIncr_q1[3]_i_11 
       (.I0(Q[8]),
        .I1(i_Axi4PC_asr_inline_n_63),
        .I2(\awsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_67),
        .O(\AwAddrIncr_q1[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \AwAddrIncr_q1[3]_i_14 
       (.I0(Q[7]),
        .I1(i_Axi4PC_asr_inline_n_64),
        .I2(\awsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_68),
        .O(\AwAddrIncr_q1[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h56A6)) 
    \AwAddrIncr_q1[3]_i_15 
       (.I0(Q[6]),
        .I1(i_Axi4PC_asr_inline_n_65),
        .I2(\awsize_q_reg[2] [2]),
        .I3(i_Axi4PC_asr_inline_n_69),
        .O(\AwAddrIncr_q1[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hA656A6A6)) 
    \AwAddrIncr_q1[3]_i_16 
       (.I0(Q[5]),
        .I1(i_Axi4PC_asr_inline_n_66),
        .I2(\awsize_q_reg[2] [2]),
        .I3(\awsize_q_reg[2] [1]),
        .I4(i_Axi4PC_asr_inline_n_70),
        .O(\AwAddrIncr_q1[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hA6A6A656A6A6A6A6)) 
    \AwAddrIncr_q1[3]_i_17 
       (.I0(Q[4]),
        .I1(i_Axi4PC_asr_inline_n_67),
        .I2(\awsize_q_reg[2] [2]),
        .I3(\awsize_q_reg[2] [0]),
        .I4(\awsize_q_reg[2] [1]),
        .I5(\awlen_q_reg[7] [0]),
        .O(\AwAddrIncr_q1[3]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \AwAddrIncr_q1[3]_i_23 
       (.I0(Q[3]),
        .I1(\awsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_68),
        .O(\AwAddrIncr_q1[3]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \AwAddrIncr_q1[3]_i_24 
       (.I0(Q[2]),
        .I1(\awsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_69),
        .O(\AwAddrIncr_q1[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA656A)) 
    \AwAddrIncr_q1[3]_i_25 
       (.I0(Q[1]),
        .I1(\awlen_q_reg[7] [0]),
        .I2(\awsize_q_reg[2] [0]),
        .I3(\awlen_q_reg[7] [1]),
        .I4(\awsize_q_reg[2] [1]),
        .I5(\awsize_q_reg[2] [2]),
        .O(\AwAddrIncr_q1[3]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA6)) 
    \AwAddrIncr_q1[3]_i_26 
       (.I0(Q[0]),
        .I1(\awlen_q_reg[7] [0]),
        .I2(\awsize_q_reg[2] [0]),
        .I3(\awsize_q_reg[2] [1]),
        .I4(\awsize_q_reg[2] [2]),
        .O(\AwAddrIncr_q1[3]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \AwAddrIncr_q1[3]_i_4 
       (.I0(Q[14]),
        .I1(\awsize_q_reg[2] [2]),
        .I2(\awsize_q_reg[2] [0]),
        .I3(\awlen_q_reg[7] [7]),
        .I4(\awsize_q_reg[2] [1]),
        .O(\AwAddrIncr_q1[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h666AAA6AAAAAAAAA)) 
    \AwAddrIncr_q1[3]_i_5 
       (.I0(Q[13]),
        .I1(\awsize_q_reg[2] [2]),
        .I2(\awlen_q_reg[7] [7]),
        .I3(\awsize_q_reg[2] [0]),
        .I4(\awlen_q_reg[7] [6]),
        .I5(\awsize_q_reg[2] [1]),
        .O(\AwAddrIncr_q1[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AwAddrIncr_q1[3]_i_6 
       (.I0(Q[12]),
        .I1(\awsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_63),
        .O(\AwAddrIncr_q1[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \AwAddrIncr_q1[3]_i_8 
       (.I0(Q[11]),
        .I1(\awsize_q_reg[2] [2]),
        .I2(i_Axi4PC_asr_inline_n_64),
        .O(\AwAddrIncr_q1[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h55556AAAAAAA6AAA)) 
    \AwAddrIncr_q1[3]_i_9 
       (.I0(Q[10]),
        .I1(\awsize_q_reg[2] [1]),
        .I2(\awlen_q_reg[7] [7]),
        .I3(\awsize_q_reg[2] [0]),
        .I4(\awsize_q_reg[2] [2]),
        .I5(i_Axi4PC_asr_inline_n_65),
        .O(\AwAddrIncr_q1[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    BStrbError_i_1
       (.I0(wchechPop_shift),
        .I1(CheckStrbAssert),
        .O(BStrbError_i_1_n_0));
  FDRE BStrbError_reg
       (.C(aclk),
        .CE(1'b1),
        .D(BStrbError_i_1_n_0),
        .Q(BStrbError),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
    BrespErrorLead_i_2
       (.I0(\AWXferCount_reg_n_0_[3][0] ),
        .I1(\AWXferCount_reg_n_0_[1][0] ),
        .I2(\AWXferCount_reg_n_0_[2][0] ),
        .I3(\bid_q_reg[1] [1]),
        .I4(\AWXferCount_reg_n_0_[0][0] ),
        .I5(\bid_q_reg[1] [0]),
        .O(BrespErrorLead_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    BrespErrorLead_i_3
       (.I0(\AWXferCount_reg_n_0_[3][1] ),
        .I1(\AWXferCount_reg_n_0_[1][1] ),
        .I2(\bid_q_reg[1] [0]),
        .I3(\AWXferCount_reg_n_0_[2][1] ),
        .I4(\bid_q_reg[1] [1]),
        .I5(\AWXferCount_reg_n_0_[0][1] ),
        .O(BrespErrorLead_i_3_n_0));
  FDRE BrespErrorLead_reg
       (.C(aclk),
        .CE(1'b1),
        .D(BrespErrorLead4_out),
        .Q(BrespErrorLead_reg_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \CHKSTRB_eq[0]_i_1 
       (.I0(\Strb_q3_reg_n_0_[1] ),
        .I1(\StrbMask_q3_n_reg_n_0_[1] ),
        .I2(\Strb_q3_reg_n_0_[0] ),
        .I3(\StrbMask_q3_n_reg_n_0_[0] ),
        .I4(\CHKSTRB_eq[0]_i_2_n_0 ),
        .O(p_0_out));
  LUT4 #(
    .INIT(16'h0777)) 
    \CHKSTRB_eq[0]_i_2 
       (.I0(\StrbMask_q3_n_reg_n_0_[3] ),
        .I1(\Strb_q3_reg_n_0_[3] ),
        .I2(\StrbMask_q3_n_reg_n_0_[2] ),
        .I3(\Strb_q3_reg_n_0_[2] ),
        .O(\CHKSTRB_eq[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF888FFFF)) 
    \CHKSTRB_eq[1]_i_1 
       (.I0(\Strb_q3_reg_n_0_[5] ),
        .I1(\StrbMask_q3_n_reg_n_0_[5] ),
        .I2(\Strb_q3_reg_n_0_[4] ),
        .I3(\StrbMask_q3_n_reg_n_0_[4] ),
        .I4(\CHKSTRB_eq[1]_i_2_n_0 ),
        .O(CHKSTRB_eq0));
  LUT4 #(
    .INIT(16'h0777)) 
    \CHKSTRB_eq[1]_i_2 
       (.I0(\StrbMask_q3_n_reg_n_0_[7] ),
        .I1(\Strb_q3_reg_n_0_[7] ),
        .I2(\StrbMask_q3_n_reg_n_0_[6] ),
        .I3(\Strb_q3_reg_n_0_[6] ),
        .O(\CHKSTRB_eq[1]_i_2_n_0 ));
  FDRE \CHKSTRB_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_out),
        .Q(CHKSTRB_eq[0]),
        .R(1'b0));
  FDRE \CHKSTRB_eq_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(CHKSTRB_eq0),
        .Q(CHKSTRB_eq[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \CHKSTRB_stage_1_eq[0]_i_1 
       (.I0(CHKSTRB_eq[0]),
        .I1(CHKSTRB_eq[1]),
        .O(\CHKSTRB_stage_1_eq[0]_i_1_n_0 ));
  FDRE \CHKSTRB_stage_1_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\CHKSTRB_stage_1_eq[0]_i_1_n_0 ),
        .Q(CHKSTRB_stage_1_eq),
        .R(1'b0));
  FDRE \CHKSTRB_stage_2_eq_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(CHKSTRB_stage_1_eq),
        .Q(CHKSTRB_stage_2_eq),
        .R(1'b0));
  FDRE CheckStrbAssert_reg
       (.C(aclk),
        .CE(1'b1),
        .D(CHKSTRB_stage_2_eq),
        .Q(CheckStrbAssert),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \StrbMask_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_26),
        .Q(StrbMask_q1[1]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_25),
        .Q(StrbMask_q1[3]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_24),
        .Q(StrbMask_q1[5]),
        .R(1'b0));
  FDRE \StrbMask_q1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_23),
        .Q(StrbMask_q1[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \StrbMask_q2[0]_i_1 
       (.I0(mask_shift_stage_1[1]),
        .I1(mask_shift_stage_1[2]),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[7]_i_4_n_0 ),
        .O(\StrbMask_q2[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \StrbMask_q2[1]_i_1 
       (.I0(mask_shift_stage_1[2]),
        .I1(StrbMask_q1[1]),
        .I2(mask_shift_stage_1[1]),
        .I3(\StrbMask_q2[7]_i_4_n_0 ),
        .O(\StrbMask_q2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \StrbMask_q2[2]_i_1 
       (.I0(StrbMask_q1[3]),
        .I1(\StrbMask_q2[2]_i_2_n_0 ),
        .I2(mask_shift_stage_1[5]),
        .I3(mask_shift_stage_1[6]),
        .I4(mask_shift_stage_1[3]),
        .I5(mask_shift_stage_1[4]),
        .O(\StrbMask_q2[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00003B38)) 
    \StrbMask_q2[2]_i_2 
       (.I0(StrbMask_q1[1]),
        .I1(mask_shift_stage_1[0]),
        .I2(mask_shift_stage_1[1]),
        .I3(StrbMask_q1[3]),
        .I4(mask_shift_stage_1[2]),
        .O(\StrbMask_q2[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2A200000)) 
    \StrbMask_q2[3]_i_1 
       (.I0(StrbMask_q1[3]),
        .I1(mask_shift_stage_1[2]),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[4]_i_2_n_0 ),
        .I4(\StrbMask_q2[7]_i_4_n_0 ),
        .O(\StrbMask_q2[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[4]_i_1 
       (.I0(StrbMask_q1[5]),
        .I1(\StrbMask_q2[4]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[5]_i_2_n_0 ),
        .I4(\StrbMask_q2[7]_i_4_n_0 ),
        .O(\StrbMask_q2[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \StrbMask_q2[4]_i_2 
       (.I0(StrbMask_q1[1]),
        .I1(mask_shift_stage_1[1]),
        .I2(StrbMask_q1[3]),
        .I3(mask_shift_stage_1[2]),
        .O(\StrbMask_q2[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[5]_i_1 
       (.I0(StrbMask_q1[5]),
        .I1(\StrbMask_q2[5]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[6]_i_2_n_0 ),
        .I4(\StrbMask_q2[7]_i_4_n_0 ),
        .O(\StrbMask_q2[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \StrbMask_q2[5]_i_2 
       (.I0(StrbMask_q1[3]),
        .I1(mask_shift_stage_1[1]),
        .I2(mask_shift_stage_1[2]),
        .I3(StrbMask_q1[5]),
        .O(\StrbMask_q2[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[6]_i_1 
       (.I0(StrbMask_q1[6]),
        .I1(\StrbMask_q2[6]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[7]_i_2_n_0 ),
        .I4(\StrbMask_q2[7]_i_4_n_0 ),
        .O(\StrbMask_q2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q2[6]_i_2 
       (.I0(StrbMask_q1[3]),
        .I1(mask_shift_stage_1[1]),
        .I2(StrbMask_q1[1]),
        .I3(mask_shift_stage_1[2]),
        .I4(StrbMask_q1[5]),
        .O(\StrbMask_q2[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A800000)) 
    \StrbMask_q2[7]_i_1 
       (.I0(StrbMask_q1[5]),
        .I1(\StrbMask_q2[7]_i_2_n_0 ),
        .I2(mask_shift_stage_1[0]),
        .I3(\StrbMask_q2[7]_i_3_n_0 ),
        .I4(\StrbMask_q2[7]_i_4_n_0 ),
        .O(\StrbMask_q2[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \StrbMask_q2[7]_i_2 
       (.I0(StrbMask_q1[5]),
        .I1(mask_shift_stage_1[1]),
        .I2(StrbMask_q1[3]),
        .I3(mask_shift_stage_1[2]),
        .I4(StrbMask_q1[6]),
        .O(\StrbMask_q2[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q2[7]_i_3 
       (.I0(StrbMask_q1[1]),
        .I1(StrbMask_q1[5]),
        .I2(mask_shift_stage_1[1]),
        .I3(StrbMask_q1[3]),
        .I4(mask_shift_stage_1[2]),
        .I5(StrbMask_q1[5]),
        .O(\StrbMask_q2[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \StrbMask_q2[7]_i_4 
       (.I0(mask_shift_stage_1[5]),
        .I1(mask_shift_stage_1[6]),
        .I2(mask_shift_stage_1[3]),
        .I3(mask_shift_stage_1[4]),
        .O(\StrbMask_q2[7]_i_4_n_0 ));
  FDRE \StrbMask_q2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[0]_i_1_n_0 ),
        .Q(StrbMask_q2[0]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[1]_i_1_n_0 ),
        .Q(StrbMask_q2[1]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[2]_i_1_n_0 ),
        .Q(StrbMask_q2[2]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[3]_i_1_n_0 ),
        .Q(StrbMask_q2[3]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[4]_i_1_n_0 ),
        .Q(StrbMask_q2[4]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[5]_i_1_n_0 ),
        .Q(StrbMask_q2[5]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[6]_i_1_n_0 ),
        .Q(StrbMask_q2[6]),
        .R(1'b0));
  FDRE \StrbMask_q2_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q2[7]_i_1_n_0 ),
        .Q(StrbMask_q2[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \StrbMask_q3_n[0]_i_1 
       (.I0(mask_shift_stage_2_q1[0]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(StrbMask_q2[0]),
        .I3(mask_shift_stage_2_q1[2]),
        .O(\StrbMask_q3_n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFAFBFFFB)) 
    \StrbMask_q3_n[1]_i_1 
       (.I0(mask_shift_stage_2_q1[1]),
        .I1(StrbMask_q2[1]),
        .I2(mask_shift_stage_2_q1[2]),
        .I3(mask_shift_stage_2_q1[0]),
        .I4(StrbMask_q2[0]),
        .O(\StrbMask_q3_n[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFAFAABFBFFFFABFB)) 
    \StrbMask_q3_n[2]_i_1 
       (.I0(mask_shift_stage_2_q1[2]),
        .I1(StrbMask_q2[2]),
        .I2(mask_shift_stage_2_q1[1]),
        .I3(StrbMask_q2[0]),
        .I4(mask_shift_stage_2_q1[0]),
        .I5(StrbMask_q2[1]),
        .O(\StrbMask_q3_n[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD1D1D1DDDDDDD1DD)) 
    \StrbMask_q3_n[3]_i_1 
       (.I0(\StrbMask_q3_n[3]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(mask_shift_stage_2_q1[2]),
        .I3(StrbMask_q2[2]),
        .I4(mask_shift_stage_2_q1[1]),
        .I5(StrbMask_q2[0]),
        .O(\StrbMask_q3_n[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \StrbMask_q3_n[3]_i_2 
       (.I0(StrbMask_q2[1]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(StrbMask_q2[3]),
        .I3(mask_shift_stage_2_q1[2]),
        .O(\StrbMask_q3_n[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD1D1D1DDDDDDD1DD)) 
    \StrbMask_q3_n[4]_i_1 
       (.I0(\StrbMask_q3_n[5]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(mask_shift_stage_2_q1[2]),
        .I3(StrbMask_q2[3]),
        .I4(mask_shift_stage_2_q1[1]),
        .I5(StrbMask_q2[1]),
        .O(\StrbMask_q3_n[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[5]_i_1 
       (.I0(\StrbMask_q3_n[6]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[5]_i_2_n_0 ),
        .O(\StrbMask_q3_n[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q3_n[5]_i_2 
       (.I0(StrbMask_q2[2]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(StrbMask_q2[0]),
        .I3(mask_shift_stage_2_q1[2]),
        .I4(StrbMask_q2[4]),
        .O(\StrbMask_q3_n[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[6]_i_1 
       (.I0(\StrbMask_q3_n[7]_i_3_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[6]_i_2_n_0 ),
        .O(\StrbMask_q3_n[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \StrbMask_q3_n[6]_i_2 
       (.I0(StrbMask_q2[3]),
        .I1(mask_shift_stage_2_q1[1]),
        .I2(StrbMask_q2[1]),
        .I3(mask_shift_stage_2_q1[2]),
        .I4(StrbMask_q2[5]),
        .O(\StrbMask_q3_n[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \StrbMask_q3_n[7]_i_1 
       (.I0(\StrbMask_q3_n[7]_i_2_n_0 ),
        .I1(mask_shift_stage_2_q1[0]),
        .I2(\StrbMask_q3_n[7]_i_3_n_0 ),
        .O(\StrbMask_q3_n[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q3_n[7]_i_2 
       (.I0(StrbMask_q2[1]),
        .I1(StrbMask_q2[5]),
        .I2(mask_shift_stage_2_q1[1]),
        .I3(StrbMask_q2[3]),
        .I4(mask_shift_stage_2_q1[2]),
        .I5(StrbMask_q2[7]),
        .O(\StrbMask_q3_n[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \StrbMask_q3_n[7]_i_3 
       (.I0(StrbMask_q2[0]),
        .I1(StrbMask_q2[4]),
        .I2(mask_shift_stage_2_q1[1]),
        .I3(StrbMask_q2[2]),
        .I4(mask_shift_stage_2_q1[2]),
        .I5(StrbMask_q2[6]),
        .O(\StrbMask_q3_n[7]_i_3_n_0 ));
  FDRE \StrbMask_q3_n_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[0]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[1]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[2]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[3]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[4]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[5]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[6]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \StrbMask_q3_n_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\StrbMask_q3_n[7]_i_1_n_0 ),
        .Q(\StrbMask_q3_n_reg_n_0_[7] ),
        .R(1'b0));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[0]_srl2 " *) 
  SRL16E \Strb_q2_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_21),
        .Q(\Strb_q2_reg[0]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[1]_srl2 " *) 
  SRL16E \Strb_q2_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_20),
        .Q(\Strb_q2_reg[1]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[2]_srl2 " *) 
  SRL16E \Strb_q2_reg[2]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_19),
        .Q(\Strb_q2_reg[2]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[3]_srl2 " *) 
  SRL16E \Strb_q2_reg[3]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_18),
        .Q(\Strb_q2_reg[3]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[4]_srl2 " *) 
  SRL16E \Strb_q2_reg[4]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_17),
        .Q(\Strb_q2_reg[4]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[5]_srl2 " *) 
  SRL16E \Strb_q2_reg[5]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_16),
        .Q(\Strb_q2_reg[5]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[6]_srl2 " *) 
  SRL16E \Strb_q2_reg[6]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_15),
        .Q(\Strb_q2_reg[6]_srl2_n_0 ));
  (* srl_bus_name = "inst/\CORE/Strb_q2_reg " *) 
  (* srl_name = "inst/\CORE/Strb_q2_reg[7]_srl2 " *) 
  SRL16E \Strb_q2_reg[7]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(WCHECK_n_14),
        .Q(\Strb_q2_reg[7]_srl2_n_0 ));
  FDRE \Strb_q3_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[0]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[1]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[2]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[3]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[4]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[5]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[6]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \Strb_q3_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\Strb_q2_reg[7]_srl2_n_0 ),
        .Q(\Strb_q3_reg_n_0_[7] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized1 WCHECK
       (.D(WCHECK_n_4),
        .Q(WSTRBq),
        .\WCountIn_reg[8] (WCountIn_reg__0),
        .WDataNumError1_reg(WCHECK_n_0),
        .aclk(aclk),
        .cnt(cnt_0),
        .cnt_0(cnt),
        .\cnt_reg[1]_0 (WCHECK_n_3),
        .data_out({WCheckCountOut,WCHECK_n_14,WCHECK_n_15,WCHECK_n_16,WCHECK_n_17,WCHECK_n_18,WCHECK_n_19,WCHECK_n_20,WCHECK_n_21}),
        .first_strb(first_strb),
        .p_1_in(WDataNumError1_reg_i_2_n_1),
        .\pc_status_i_reg[81] (\pc_status[81] [60]),
        .resetn_q(resetn_q),
        .resetn_q_reg(i_Axi4PC_asr_inline_n_0),
        .wlast_q(wlast_q),
        .wready_q(wready_q),
        .\wstrb_q_reg[7] (\wstrb_q_reg[7] ),
        .wvalid_q(wvalid_q));
  LUT1 #(
    .INIT(2'h1)) 
    \WCountIn[0]_i_1 
       (.I0(WCountIn_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \WCountIn[1]_i_1 
       (.I0(WCountIn_reg__0[0]),
        .I1(WCountIn_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \WCountIn[2]_i_1 
       (.I0(WCountIn_reg__0[2]),
        .I1(WCountIn_reg__0[0]),
        .I2(WCountIn_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \WCountIn[3]_i_1 
       (.I0(WCountIn_reg__0[3]),
        .I1(WCountIn_reg__0[1]),
        .I2(WCountIn_reg__0[0]),
        .I3(WCountIn_reg__0[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \WCountIn[4]_i_1 
       (.I0(WCountIn_reg__0[4]),
        .I1(WCountIn_reg__0[2]),
        .I2(WCountIn_reg__0[0]),
        .I3(WCountIn_reg__0[1]),
        .I4(WCountIn_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \WCountIn[5]_i_1 
       (.I0(WCountIn_reg__0[3]),
        .I1(WCountIn_reg__0[1]),
        .I2(WCountIn_reg__0[0]),
        .I3(WCountIn_reg__0[2]),
        .I4(WCountIn_reg__0[4]),
        .I5(WCountIn_reg__0[5]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \WCountIn[6]_i_1 
       (.I0(WCountIn_reg__0[6]),
        .I1(\WCountIn[8]_i_3_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \WCountIn[7]_i_1 
       (.I0(WCountIn_reg__0[7]),
        .I1(\WCountIn[8]_i_3_n_0 ),
        .I2(WCountIn_reg__0[6]),
        .O(p_0_in[7]));
  LUT3 #(
    .INIT(8'h40)) 
    \WCountIn[8]_i_1 
       (.I0(wlast_q),
        .I1(wready_q),
        .I2(wvalid_q),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \WCountIn[8]_i_2 
       (.I0(WCountIn_reg__0[8]),
        .I1(WCountIn_reg__0[6]),
        .I2(\WCountIn[8]_i_3_n_0 ),
        .I3(WCountIn_reg__0[7]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \WCountIn[8]_i_3 
       (.I0(WCountIn_reg__0[5]),
        .I1(WCountIn_reg__0[4]),
        .I2(WCountIn_reg__0[2]),
        .I3(WCountIn_reg__0[0]),
        .I4(WCountIn_reg__0[1]),
        .I5(WCountIn_reg__0[3]),
        .O(\WCountIn[8]_i_3_n_0 ));
  FDRE \WCountIn_reg[0] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[0]),
        .Q(WCountIn_reg__0[0]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[1] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[1]),
        .Q(WCountIn_reg__0[1]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[2] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[2]),
        .Q(WCountIn_reg__0[2]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[3] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[3]),
        .Q(WCountIn_reg__0[3]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[4] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[4]),
        .Q(WCountIn_reg__0[4]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[5] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[5]),
        .Q(WCountIn_reg__0[5]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[6] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[6]),
        .Q(WCountIn_reg__0[6]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[7] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[7]),
        .Q(WCountIn_reg__0[7]),
        .R(first_strb_i_1_n_0));
  FDRE \WCountIn_reg[8] 
       (.C(aclk),
        .CE(sel),
        .D(p_0_in[8]),
        .Q(WCountIn_reg__0[8]),
        .R(first_strb_i_1_n_0));
  LUT5 #(
    .INIT(32'h09000009)) 
    WDataNumError1_i_3
       (.I0(WCheckCountOut[6]),
        .I1(p_0_in_0[6]),
        .I2(WCheckCountOut[8]),
        .I3(p_0_in_0[7]),
        .I4(WCheckCountOut[7]),
        .O(WDataNumError1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    WDataNumError1_i_4
       (.I0(WCheckCountOut[3]),
        .I1(p_0_in_0[3]),
        .I2(p_0_in_0[5]),
        .I3(WCheckCountOut[5]),
        .I4(p_0_in_0[4]),
        .I5(WCheckCountOut[4]),
        .O(WDataNumError1_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    WDataNumError1_i_5
       (.I0(WCheckCountOut[0]),
        .I1(p_0_in_0[0]),
        .I2(p_0_in_0[2]),
        .I3(WCheckCountOut[2]),
        .I4(p_0_in_0[1]),
        .I5(WCheckCountOut[1]),
        .O(WDataNumError1_i_5_n_0));
  FDRE WDataNumError1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(WCHECK_n_0),
        .Q(WDataNumError1),
        .R(1'b0));
  CARRY4 WDataNumError1_reg_i_2
       (.CI(1'b0),
        .CO({NLW_WDataNumError1_reg_i_2_CO_UNCONNECTED[3],WDataNumError1_reg_i_2_n_1,WDataNumError1_reg_i_2_n_2,WDataNumError1_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_WDataNumError1_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,WDataNumError1_i_3_n_0,WDataNumError1_i_4_n_0,WDataNumError1_i_5_n_0}));
  FDRE \WSTRBq_reg[0] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [0]),
        .Q(WSTRBq[0]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[1] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [1]),
        .Q(WSTRBq[1]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[2] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [2]),
        .Q(WSTRBq[2]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[3] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [3]),
        .Q(WSTRBq[3]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[4] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [4]),
        .Q(WSTRBq[4]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[5] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [5]),
        .Q(WSTRBq[5]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[6] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [6]),
        .Q(WSTRBq[6]),
        .R(first_strb_i_1_n_0));
  FDRE \WSTRBq_reg[7] 
       (.C(aclk),
        .CE(WSTRBq0),
        .D(\wstrb_q_reg[7] [7]),
        .Q(WSTRBq[7]),
        .R(first_strb_i_1_n_0));
  LUT4 #(
    .INIT(16'h80FF)) 
    first_strb_i_1
       (.I0(wvalid_q),
        .I1(wready_q),
        .I2(wlast_q),
        .I3(resetn_q),
        .O(first_strb_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    first_strb_i_2
       (.I0(first_strb),
        .I1(wready_q),
        .I2(wvalid_q),
        .O(WSTRBq0));
  FDSE first_strb_reg
       (.C(aclk),
        .CE(WSTRBq0),
        .D(1'b0),
        .Q(first_strb),
        .S(first_strb_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_thread_loop[0].RCount[0][0]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .O(\gen_thread_loop[0].RCount[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_thread_loop[0].RCount[0][1]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [1]),
        .I1(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_thread_loop[0].RCount[0][2]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [2]),
        .I1(\gen_thread_loop[0].RCount_reg[0]_1 [1]),
        .I2(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_thread_loop[0].RCount[0][3]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [3]),
        .I1(\gen_thread_loop[0].RCount_reg[0]_1 [2]),
        .I2(\gen_thread_loop[0].RCount_reg[0]_1 [1]),
        .I3(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .O(\gen_thread_loop[0].RCount[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_thread_loop[0].RCount[0][4]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [4]),
        .I1(\gen_thread_loop[0].RCount_reg[0]_1 [2]),
        .I2(\gen_thread_loop[0].RCount_reg[0]_1 [1]),
        .I3(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .I4(\gen_thread_loop[0].RCount_reg[0]_1 [3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gen_thread_loop[0].RCount[0][5]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [3]),
        .I1(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .I2(\gen_thread_loop[0].RCount_reg[0]_1 [1]),
        .I3(\gen_thread_loop[0].RCount_reg[0]_1 [2]),
        .I4(\gen_thread_loop[0].RCount_reg[0]_1 [4]),
        .I5(\gen_thread_loop[0].RCount_reg[0]_1 [5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gen_thread_loop[0].RCount[0][6]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [6]),
        .I1(\gen_thread_loop[0].RCount[0][8]_i_4_n_0 ),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_thread_loop[0].RCount[0][7]_i_1 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [7]),
        .I1(\gen_thread_loop[0].RCount[0][8]_i_4_n_0 ),
        .I2(\gen_thread_loop[0].RCount_reg[0]_1 [6]),
        .O(p_0_in__0[7]));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_thread_loop[0].RCount[0][8]_i_2 
       (.I0(i_Axi4PC_asr_inline_n_4),
        .I1(rvalid_q),
        .I2(rready_q),
        .I3(rlast_q),
        .O(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_thread_loop[0].RCount[0][8]_i_3 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [8]),
        .I1(\gen_thread_loop[0].RCount_reg[0]_1 [7]),
        .I2(\gen_thread_loop[0].RCount_reg[0]_1 [6]),
        .I3(\gen_thread_loop[0].RCount[0][8]_i_4_n_0 ),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_thread_loop[0].RCount[0][8]_i_4 
       (.I0(\gen_thread_loop[0].RCount_reg[0]_1 [5]),
        .I1(\gen_thread_loop[0].RCount_reg[0]_1 [4]),
        .I2(\gen_thread_loop[0].RCount_reg[0]_1 [2]),
        .I3(\gen_thread_loop[0].RCount_reg[0]_1 [1]),
        .I4(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .I5(\gen_thread_loop[0].RCount_reg[0]_1 [3]),
        .O(\gen_thread_loop[0].RCount[0][8]_i_4_n_0 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][0] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(\gen_thread_loop[0].RCount[0][0]_i_1_n_0 ),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [0]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][1] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [1]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][2] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [2]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][3] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(\gen_thread_loop[0].RCount[0][3]_i_1_n_0 ),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [3]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][4] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [4]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][5] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [5]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][6] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [6]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][7] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [7]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  FDRE \gen_thread_loop[0].RCount_reg[0][8] 
       (.C(aclk),
        .CE(\gen_thread_loop[0].RCount[0][8]_i_2_n_0 ),
        .D(p_0_in__0[8]),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 [8]),
        .R(\gen_thread_loop[0].RDCAM_n_4 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo \gen_thread_loop[0].RDCAM 
       (.ASR_59_reg(\gen_thread_loop[0].RDCAM_n_8 ),
        .ASR_59_reg_0(ASR_59436_in),
        .ASR_610(ASR_610),
        .CO(ASR_59437_in),
        .D({\gen_thread_loop[0].RDCAM_n_1 ,\gen_thread_loop[0].RDCAM_n_2 }),
        .Q(\gen_thread_loop[0].RCount_reg[0]_1 ),
        .S(\gen_thread_loop[1].RDCAM_n_8 ),
        .SR(\gen_thread_loop[0].RDCAM_n_4 ),
        .aclk(aclk),
        .active_cnt({active_cnt[9:8],active_cnt[1:0]}),
        .\arid_q_reg[1] (\arid_q_reg[1] ),
        .arready_q(arready_q),
        .arvalid_q(arvalid_q),
        .cmd_pop_0(cmd_pop_0),
        .cmd_pop_1(cmd_pop_1),
        .\cnt_reg[0]_0 (\gen_thread_loop[1].RDCAM_n_5 ),
        .\cnt_reg[0]_1 (\gen_thread_loop[1].RDCAM_n_4 ),
        .\cnt_reg[1]_0 (\gen_thread_loop[0].RDCAM_n_0 ),
        .\cnt_reg[1]_1 (\gen_thread_loop[0].RDCAM_n_6 ),
        .\cnt_reg[1]_2 (\gen_thread_loop[0].RDCAM_n_7 ),
        .data_in({\arlen_q_reg[7] ,\araddr_q_reg[31] [6]}),
        .data_out({\gen_thread_loop[1].RDCAM_n_9 ,\gen_thread_loop[1].RDCAM_n_10 ,\gen_thread_loop[1].RDCAM_n_11 }),
        .\gen_thread_loop[0].active_id_reg (\gen_thread_loop[0].active_id_reg__0 ),
        .\gen_thread_loop[0].active_id_reg_1__s_port_] (i_Axi4PC_asr_inline_n_4),
        .\gen_thread_loop[1].RCount_reg[1][2] (\gen_thread_loop[1].RDCAM_n_7 ),
        .\gen_thread_loop[1].RCount_reg[1][3] ({\gen_thread_loop[1].RCount_reg[1]_2 [3],\gen_thread_loop[1].RCount_reg[1]_2 [0]}),
        .\gen_thread_loop[1].RCount_reg[1][5] (\gen_thread_loop[1].RDCAM_n_6 ),
        .\gen_thread_loop[1].RCount_reg[1][6] (\gen_thread_loop[1].RDCAM_n_3 ),
        .\gen_thread_loop[1].active_id_reg (\gen_thread_loop[1].active_id_reg__0 ),
        .\gen_thread_loop[1].active_id_reg[3] (i_Axi4PC_asr_inline_n_3),
        .p_11_in(p_11_in),
        .\pc_status_i_reg[79] (\pc_status[81] [58:57]),
        .resetn_q(resetn_q),
        .resetn_q_reg(i_Axi4PC_asr_inline_n_0),
        .resetn_q_reg_0(i_Axi4PC_asr_inline_n_5),
        .rlast_q(rlast_q),
        .rready_q(rready_q),
        .rvalid_q(rvalid_q));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    \gen_thread_loop[0].active_cnt[0]_i_1 
       (.I0(i_Axi4PC_asr_inline_n_4),
        .I1(rlast_q),
        .I2(rvalid_q),
        .I3(rready_q),
        .I4(\gen_thread_loop[0].RDCAM_n_0 ),
        .I5(active_cnt[0]),
        .O(\gen_thread_loop[0].active_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBD42)) 
    \gen_thread_loop[0].active_cnt[1]_i_1 
       (.I0(active_cnt[0]),
        .I1(\gen_thread_loop[0].RDCAM_n_0 ),
        .I2(cmd_pop_0),
        .I3(active_cnt[1]),
        .O(\gen_thread_loop[0].active_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_thread_loop[0].active_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[0].active_cnt[0]_i_1_n_0 ),
        .Q(active_cnt[0]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_thread_loop[0].active_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[0].active_cnt[1]_i_1_n_0 ),
        .Q(active_cnt[1]),
        .R(i_Axi4PC_asr_inline_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \gen_thread_loop[0].active_id[0]_i_1 
       (.I0(\arid_q_reg[1] [0]),
        .I1(\gen_thread_loop[0].RDCAM_n_0 ),
        .I2(\gen_thread_loop[0].active_id_reg__0 [0]),
        .O(\gen_thread_loop[0].active_id[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \gen_thread_loop[0].active_id[1]_i_1 
       (.I0(\arid_q_reg[1] [1]),
        .I1(\gen_thread_loop[0].RDCAM_n_0 ),
        .I2(\gen_thread_loop[0].active_id_reg__0 [1]),
        .O(\gen_thread_loop[0].active_id[1]_i_1_n_0 ));
  FDRE \gen_thread_loop[0].active_id_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[0].active_id[0]_i_1_n_0 ),
        .Q(\gen_thread_loop[0].active_id_reg__0 [0]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \gen_thread_loop[0].active_id_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[0].active_id[1]_i_1_n_0 ),
        .Q(\gen_thread_loop[0].active_id_reg__0 [1]),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_thread_loop[1].RCount[1][0]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_thread_loop[1].RCount[1][1]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .I1(\gen_thread_loop[1].RCount_reg[1]_2 [1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_thread_loop[1].RCount[1][2]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [2]),
        .I1(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .I2(\gen_thread_loop[1].RCount_reg[1]_2 [1]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_thread_loop[1].RCount[1][3]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [3]),
        .I1(\gen_thread_loop[1].RCount_reg[1]_2 [2]),
        .I2(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .I3(\gen_thread_loop[1].RCount_reg[1]_2 [1]),
        .O(\gen_thread_loop[1].RCount[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_thread_loop[1].RCount[1][4]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [4]),
        .I1(\gen_thread_loop[1].RCount_reg[1]_2 [2]),
        .I2(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .I3(\gen_thread_loop[1].RCount_reg[1]_2 [1]),
        .I4(\gen_thread_loop[1].RCount_reg[1]_2 [3]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \gen_thread_loop[1].RCount[1][5]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [5]),
        .I1(\gen_thread_loop[1].RCount_reg[1]_2 [3]),
        .I2(\gen_thread_loop[1].RCount_reg[1]_2 [1]),
        .I3(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .I4(\gen_thread_loop[1].RCount_reg[1]_2 [2]),
        .I5(\gen_thread_loop[1].RCount_reg[1]_2 [4]),
        .O(p_0_in__1[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \gen_thread_loop[1].RCount[1][6]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [6]),
        .I1(\gen_thread_loop[1].RCount[1][8]_i_4_n_0 ),
        .O(\gen_thread_loop[1].RCount[1][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \gen_thread_loop[1].RCount[1][7]_i_1 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [7]),
        .I1(\gen_thread_loop[1].RCount[1][8]_i_4_n_0 ),
        .I2(\gen_thread_loop[1].RCount_reg[1]_2 [6]),
        .O(p_0_in__1[7]));
  LUT4 #(
    .INIT(16'h0080)) 
    \gen_thread_loop[1].RCount[1][8]_i_2 
       (.I0(i_Axi4PC_asr_inline_n_3),
        .I1(rvalid_q),
        .I2(rready_q),
        .I3(rlast_q),
        .O(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \gen_thread_loop[1].RCount[1][8]_i_3 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [8]),
        .I1(\gen_thread_loop[1].RCount_reg[1]_2 [6]),
        .I2(\gen_thread_loop[1].RCount[1][8]_i_4_n_0 ),
        .I3(\gen_thread_loop[1].RCount_reg[1]_2 [7]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \gen_thread_loop[1].RCount[1][8]_i_4 
       (.I0(\gen_thread_loop[1].RCount_reg[1]_2 [4]),
        .I1(\gen_thread_loop[1].RCount_reg[1]_2 [2]),
        .I2(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .I3(\gen_thread_loop[1].RCount_reg[1]_2 [1]),
        .I4(\gen_thread_loop[1].RCount_reg[1]_2 [3]),
        .I5(\gen_thread_loop[1].RCount_reg[1]_2 [5]),
        .O(\gen_thread_loop[1].RCount[1][8]_i_4_n_0 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][0] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(p_0_in__1[0]),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [0]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][1] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(p_0_in__1[1]),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [1]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][2] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(p_0_in__1[2]),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [2]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][3] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(\gen_thread_loop[1].RCount[1][3]_i_1_n_0 ),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [3]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][4] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(p_0_in__1[4]),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [4]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][5] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(p_0_in__1[5]),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [5]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][6] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(\gen_thread_loop[1].RCount[1][6]_i_1_n_0 ),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [6]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][7] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(p_0_in__1[7]),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [7]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  FDRE \gen_thread_loop[1].RCount_reg[1][8] 
       (.C(aclk),
        .CE(\gen_thread_loop[1].RCount[1][8]_i_2_n_0 ),
        .D(p_0_in__1[8]),
        .Q(\gen_thread_loop[1].RCount_reg[1]_2 [8]),
        .R(\gen_thread_loop[1].RDCAM_n_1 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo_0 \gen_thread_loop[1].RDCAM 
       (.ASR_59_reg(\gen_thread_loop[1].RDCAM_n_3 ),
        .ASR_59_reg_0(\gen_thread_loop[1].RDCAM_n_6 ),
        .ASR_59_reg_1(\gen_thread_loop[1].RDCAM_n_7 ),
        .Q({\gen_thread_loop[1].RCount_reg[1]_2 [8:4],\gen_thread_loop[1].RCount_reg[1]_2 [2:1]}),
        .S(\gen_thread_loop[1].RDCAM_n_8 ),
        .SR(\gen_thread_loop[1].RDCAM_n_1 ),
        .aclk(aclk),
        .active_cnt({active_cnt[9:8],active_cnt[1:0]}),
        .arready_q(arready_q),
        .arvalid_q(arvalid_q),
        .cmd_pop_1(cmd_pop_1),
        .data_in({\arlen_q_reg[7] ,\araddr_q_reg[31] [6]}),
        .data_out({\gen_thread_loop[1].RDCAM_n_9 ,\gen_thread_loop[1].RDCAM_n_10 ,\gen_thread_loop[1].RDCAM_n_11 }),
        .\gen_thread_loop[0].RCount_reg[0][6] (\gen_thread_loop[0].RDCAM_n_8 ),
        .\gen_thread_loop[0].active_id_reg[1] (i_Axi4PC_asr_inline_n_4),
        .\gen_thread_loop[0].active_id_reg[1]_0 (\gen_thread_loop[0].RDCAM_n_6 ),
        .\gen_thread_loop[1].active_id_reg[3] (i_Axi4PC_asr_inline_n_3),
        .\gen_thread_loop[1].active_id_reg[3]_0 (\gen_thread_loop[0].RDCAM_n_7 ),
        .p_11_in(p_11_in),
        .\pc_status_i_reg[78] (\gen_thread_loop[1].RDCAM_n_4 ),
        .\pc_status_i_reg[79] (\gen_thread_loop[1].RDCAM_n_5 ),
        .resetn_q(resetn_q),
        .resetn_q_reg(i_Axi4PC_asr_inline_n_0),
        .rlast_q(rlast_q),
        .rready_q(rready_q),
        .rvalid_q(rvalid_q));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    \gen_thread_loop[1].active_cnt[8]_i_1 
       (.I0(i_Axi4PC_asr_inline_n_3),
        .I1(rlast_q),
        .I2(rvalid_q),
        .I3(rready_q),
        .I4(p_11_in),
        .I5(active_cnt[8]),
        .O(\gen_thread_loop[1].active_cnt[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE718)) 
    \gen_thread_loop[1].active_cnt[9]_i_1 
       (.I0(active_cnt[8]),
        .I1(p_11_in),
        .I2(cmd_pop_1),
        .I3(active_cnt[9]),
        .O(\gen_thread_loop[1].active_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_thread_loop[1].active_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[1].active_cnt[8]_i_1_n_0 ),
        .Q(active_cnt[8]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_thread_loop[1].active_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[1].active_cnt[9]_i_1_n_0 ),
        .Q(active_cnt[9]),
        .R(i_Axi4PC_asr_inline_n_0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_thread_loop[1].active_id[2]_i_1 
       (.I0(\arid_q_reg[1] [0]),
        .I1(p_11_in),
        .I2(\gen_thread_loop[1].active_id_reg__0 [0]),
        .O(\gen_thread_loop[1].active_id[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_thread_loop[1].active_id[3]_i_1 
       (.I0(\arid_q_reg[1] [1]),
        .I1(p_11_in),
        .I2(\gen_thread_loop[1].active_id_reg__0 [1]),
        .O(\gen_thread_loop[1].active_id[3]_i_1_n_0 ));
  FDRE \gen_thread_loop[1].active_id_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[1].active_id[2]_i_1_n_0 ),
        .Q(\gen_thread_loop[1].active_id_reg__0 [0]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \gen_thread_loop[1].active_id_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[1].active_id[3]_i_1_n_0 ),
        .Q(\gen_thread_loop[1].active_id_reg__0 [1]),
        .R(i_Axi4PC_asr_inline_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_axi4pc_asr_inline i_Axi4PC_asr_inline
       (.ASR_60_reg_0(i_Axi4PC_asr_inline_n_3),
        .ASR_60_reg_1(i_Axi4PC_asr_inline_n_4),
        .ASR_610(ASR_610),
        .ASR_61_reg_0(i_Axi4PC_asr_inline_n_5),
        .\ArAddrIncr_q1_reg[3]_0 (i_Axi4PC_asr_inline_n_2),
        .\ArAddrIncr_q1_reg[3]_1 (i_Axi4PC_asr_inline_n_71),
        .\ArAddrIncr_q1_reg[3]_2 (i_Axi4PC_asr_inline_n_72),
        .\ArAddrIncr_q1_reg[3]_3 (i_Axi4PC_asr_inline_n_73),
        .\ArAddrIncr_q1_reg[3]_4 (i_Axi4PC_asr_inline_n_74),
        .\ArAddrIncr_q1_reg[3]_5 (i_Axi4PC_asr_inline_n_75),
        .\ArAddrIncr_q1_reg[3]_6 (i_Axi4PC_asr_inline_n_76),
        .\ArAddrIncr_q1_reg[3]_7 (i_Axi4PC_asr_inline_n_77),
        .\ArAddrIncr_q1_reg[3]_8 (i_Axi4PC_asr_inline_n_78),
        .\AwAddrIncr_q1_reg[3]_0 (i_Axi4PC_asr_inline_n_1),
        .\AwAddrIncr_q1_reg[3]_1 (i_Axi4PC_asr_inline_n_63),
        .\AwAddrIncr_q1_reg[3]_2 (i_Axi4PC_asr_inline_n_64),
        .\AwAddrIncr_q1_reg[3]_3 (i_Axi4PC_asr_inline_n_65),
        .\AwAddrIncr_q1_reg[3]_4 (i_Axi4PC_asr_inline_n_66),
        .\AwAddrIncr_q1_reg[3]_5 (i_Axi4PC_asr_inline_n_67),
        .\AwAddrIncr_q1_reg[3]_6 (i_Axi4PC_asr_inline_n_68),
        .\AwAddrIncr_q1_reg[3]_7 (i_Axi4PC_asr_inline_n_69),
        .\AwAddrIncr_q1_reg[3]_8 (i_Axi4PC_asr_inline_n_70),
        .BStrbError(BStrbError),
        .BrespErrorLead_reg(BrespErrorLead_reg_n_0),
        .CO(ASR_59437_in),
        .D({i_Axi4PC_asr_inline_n_6,i_Axi4PC_asr_inline_n_7,i_Axi4PC_asr_inline_n_8,i_Axi4PC_asr_inline_n_9,i_Axi4PC_asr_inline_n_10,i_Axi4PC_asr_inline_n_11,i_Axi4PC_asr_inline_n_12,i_Axi4PC_asr_inline_n_13,i_Axi4PC_asr_inline_n_14,i_Axi4PC_asr_inline_n_15,i_Axi4PC_asr_inline_n_16,i_Axi4PC_asr_inline_n_17,i_Axi4PC_asr_inline_n_18,i_Axi4PC_asr_inline_n_19,i_Axi4PC_asr_inline_n_20,i_Axi4PC_asr_inline_n_21,i_Axi4PC_asr_inline_n_22,i_Axi4PC_asr_inline_n_23,i_Axi4PC_asr_inline_n_24,i_Axi4PC_asr_inline_n_25,i_Axi4PC_asr_inline_n_26,i_Axi4PC_asr_inline_n_27,i_Axi4PC_asr_inline_n_28,i_Axi4PC_asr_inline_n_29,i_Axi4PC_asr_inline_n_30,i_Axi4PC_asr_inline_n_31,i_Axi4PC_asr_inline_n_32,i_Axi4PC_asr_inline_n_33,i_Axi4PC_asr_inline_n_34,i_Axi4PC_asr_inline_n_35,i_Axi4PC_asr_inline_n_36,i_Axi4PC_asr_inline_n_37,i_Axi4PC_asr_inline_n_38,i_Axi4PC_asr_inline_n_39,i_Axi4PC_asr_inline_n_40,i_Axi4PC_asr_inline_n_41,i_Axi4PC_asr_inline_n_42,i_Axi4PC_asr_inline_n_43,i_Axi4PC_asr_inline_n_44,i_Axi4PC_asr_inline_n_45,i_Axi4PC_asr_inline_n_46,i_Axi4PC_asr_inline_n_47,i_Axi4PC_asr_inline_n_48,i_Axi4PC_asr_inline_n_49,i_Axi4PC_asr_inline_n_50,i_Axi4PC_asr_inline_n_51,i_Axi4PC_asr_inline_n_52,i_Axi4PC_asr_inline_n_53,i_Axi4PC_asr_inline_n_54,i_Axi4PC_asr_inline_n_55,i_Axi4PC_asr_inline_n_56,i_Axi4PC_asr_inline_n_57,i_Axi4PC_asr_inline_n_58,i_Axi4PC_asr_inline_n_59,i_Axi4PC_asr_inline_n_60,i_Axi4PC_asr_inline_n_61,i_Axi4PC_asr_inline_n_62}),
        .Q(Q),
        .S({\AwAddrIncr_q1[3]_i_23_n_0 ,\AwAddrIncr_q1[3]_i_24_n_0 ,\AwAddrIncr_q1[3]_i_25_n_0 ,\AwAddrIncr_q1[3]_i_26_n_0 }),
        .WDataNumError1(WDataNumError1),
        .aclk(aclk),
        .active_cnt({active_cnt[9:8],active_cnt[1:0]}),
        .\araddr_q_reg[11] ({\ArAddrIncr_q1[3]_i_8_n_0 ,\ArAddrIncr_q1[3]_i_9_n_0 ,\ArAddrIncr_q1[3]_i_10_n_0 ,\ArAddrIncr_q1[3]_i_11_n_0 }),
        .\araddr_q_reg[14] ({\ArAddrIncr_q1[3]_i_4_n_0 ,\ArAddrIncr_q1[3]_i_5_n_0 ,\ArAddrIncr_q1[3]_i_6_n_0 }),
        .\araddr_q_reg[31] (\araddr_q_reg[31] ),
        .\araddr_q_reg[3] ({\ArAddrIncr_q1[3]_i_23_n_0 ,\ArAddrIncr_q1[3]_i_24_n_0 ,\ArAddrIncr_q1[3]_i_25_n_0 ,\ArAddrIncr_q1[3]_i_26_n_0 }),
        .\araddr_q_reg[7] ({\ArAddrIncr_q1[3]_i_14_n_0 ,\ArAddrIncr_q1[3]_i_15_n_0 ,\ArAddrIncr_q1[3]_i_16_n_0 ,\ArAddrIncr_q1[3]_i_17_n_0 }),
        .\arburst_q_reg[1] (\arburst_q_reg[1] ),
        .\arcache_q_reg[3] (\arcache_q_reg[3] ),
        .\arid_q_reg[1] (\arid_q_reg[1] ),
        .\arlen_q_reg[7] (\arlen_q_reg[7] ),
        .\arprot_q_reg[2] (\arprot_q_reg[2] ),
        .\arqos_q_reg[3] (\arqos_q_reg[3] ),
        .arready_q(arready_q),
        .\arregion_q_reg[3] (\arregion_q_reg[3] ),
        .\arsize_q_reg[2] (\arsize_q_reg[2] ),
        .aruser_q(aruser_q),
        .arvalid_q(arvalid_q),
        .\awaddr_q_reg[11] ({\AwAddrIncr_q1[3]_i_8_n_0 ,\AwAddrIncr_q1[3]_i_9_n_0 ,\AwAddrIncr_q1[3]_i_10_n_0 ,\AwAddrIncr_q1[3]_i_11_n_0 }),
        .\awaddr_q_reg[14] ({\AwAddrIncr_q1[3]_i_4_n_0 ,\AwAddrIncr_q1[3]_i_5_n_0 ,\AwAddrIncr_q1[3]_i_6_n_0 }),
        .\awaddr_q_reg[7] ({\AwAddrIncr_q1[3]_i_14_n_0 ,\AwAddrIncr_q1[3]_i_15_n_0 ,\AwAddrIncr_q1[3]_i_16_n_0 ,\AwAddrIncr_q1[3]_i_17_n_0 }),
        .\awburst_q_reg[1] (\awburst_q_reg[1] ),
        .\awcache_q_reg[3] (\awcache_q_reg[3] ),
        .\awprot_q_reg[2] (\awprot_q_reg[2] ),
        .\awqos_q_reg[3] (\awqos_q_reg[3] ),
        .awready_q(awready_q),
        .\awregion_q_reg[3] (\awregion_q_reg[3] ),
        .awuser_q(awuser_q),
        .awvalid_q(awvalid_q),
        .\bid_q_reg[1] (\bid_q_reg[1] ),
        .bready_q(bready_q),
        .\bresp_q_reg[1] (\bresp_q_reg[1] ),
        .buser_q(buser_q),
        .bvalid_q(bvalid_q),
        .data_in({\awid_q_reg[1] ,\awlen_q_reg[7] ,\awsize_q_reg[2] }),
        .\gen_thread_loop[0].active_id_reg (\gen_thread_loop[0].active_id_reg__0 ),
        .\gen_thread_loop[1].RCount_reg[1][6] (ASR_59436_in),
        .\gen_thread_loop[1].active_id_reg (\gen_thread_loop[1].active_id_reg__0 ),
        .\pc_status_i_reg[77] (\pc_status[81] [56:0]),
        .\rdata_q_reg[63] (\rdata_q_reg[63] ),
        .resetn_q(resetn_q),
        .\rid_q_reg[1] (\rid_q_reg[1] ),
        .rlast_q(rlast_q),
        .rready_q(rready_q),
        .\rresp_q_reg[1] (\rresp_q_reg[1] ),
        .ruser_q(ruser_q),
        .rvalid_q(rvalid_q),
        .\s101sq_reg[1]_0 (i_Axi4PC_asr_inline_n_0),
        .\wdata_q_reg[63] (\wdata_q_reg[63] ),
        .wlast_q(wlast_q),
        .wready_q(wready_q),
        .\wstrb_q_reg[7] (\wstrb_q_reg[7] ),
        .wuser_q(wuser_q),
        .wvalid_q(wvalid_q));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \mask_shift_stage_1[0]_i_1 
       (.I0(AWCMD_n_22),
        .I1(AWStrbsizeOut[0]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[2]),
        .O(\mask_shift_stage_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \mask_shift_stage_1[1]_i_1 
       (.I0(AWCMD_n_21),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .O(\mask_shift_stage_1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \mask_shift_stage_1[2]_i_1 
       (.I0(AWCMD_n_20),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(\mask_shift_stage_1[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \mask_shift_stage_1[3]_i_1 
       (.I0(AWCMD_n_19),
        .I1(AWStrbsizeOut[2]),
        .O(\mask_shift_stage_1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \mask_shift_stage_1[4]_i_1 
       (.I0(AWCMD_n_18),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(\mask_shift_stage_1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \mask_shift_stage_1[5]_i_1 
       (.I0(AWCMD_n_17),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .O(\mask_shift_stage_1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mask_shift_stage_1[6]_i_1 
       (.I0(AWCMD_n_16),
        .I1(AWStrbsizeOut[2]),
        .I2(AWStrbsizeOut[1]),
        .I3(AWStrbsizeOut[0]),
        .O(\mask_shift_stage_1[6]_i_1_n_0 ));
  FDRE \mask_shift_stage_1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[0]_i_1_n_0 ),
        .Q(mask_shift_stage_1[0]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[1]_i_1_n_0 ),
        .Q(mask_shift_stage_1[1]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[2]_i_1_n_0 ),
        .Q(mask_shift_stage_1[2]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[3]_i_1_n_0 ),
        .Q(mask_shift_stage_1[3]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[4]_i_1_n_0 ),
        .Q(mask_shift_stage_1[4]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[5]_i_1_n_0 ),
        .Q(mask_shift_stage_1[5]),
        .R(1'b0));
  FDRE \mask_shift_stage_1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\mask_shift_stage_1[6]_i_1_n_0 ),
        .Q(mask_shift_stage_1[6]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_q1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(mask_shift_stage_2[0]),
        .Q(mask_shift_stage_2_q1[0]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_q1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(mask_shift_stage_2[1]),
        .Q(mask_shift_stage_2_q1[1]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_q1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(mask_shift_stage_2[2]),
        .Q(mask_shift_stage_2_q1[2]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_4),
        .Q(mask_shift_stage_2[0]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_3),
        .Q(mask_shift_stage_2[1]),
        .R(1'b0));
  FDRE \mask_shift_stage_2_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_2),
        .Q(mask_shift_stage_2[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_1
       (.I0(pc_asserted_i_i_2_n_0),
        .I1(pc_asserted_i_i_3_n_0),
        .I2(pc_asserted_i_i_4_n_0),
        .I3(pc_asserted_i_i_5_n_0),
        .I4(pc_asserted_i_i_6_n_0),
        .I5(pc_asserted_i_i_7_n_0),
        .O(pc_asserted_i_reg));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_10
       (.I0(\pc_status[81] [41]),
        .I1(\pc_status[81] [24]),
        .I2(\pc_status[81] [48]),
        .I3(\pc_status[81] [31]),
        .O(pc_asserted_i_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_11
       (.I0(\pc_status[81] [22]),
        .I1(\pc_status[81] [13]),
        .I2(\pc_status[81] [57]),
        .I3(\pc_status[81] [56]),
        .O(pc_asserted_i_i_11_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_12
       (.I0(\pc_status[81] [59]),
        .I1(\pc_status[81] [19]),
        .I2(\pc_status[81] [51]),
        .I3(\pc_status[81] [5]),
        .O(pc_asserted_i_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_13
       (.I0(\pc_status[81] [27]),
        .I1(\pc_status[81] [9]),
        .I2(\pc_status[81] [49]),
        .I3(\pc_status[81] [23]),
        .O(pc_asserted_i_i_13_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_14
       (.I0(\pc_status[81] [38]),
        .I1(\pc_status[81] [35]),
        .I2(\pc_status[81] [39]),
        .I3(\pc_status[81] [17]),
        .O(pc_asserted_i_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_15
       (.I0(\pc_status[81] [36]),
        .I1(\pc_status[81] [28]),
        .I2(\pc_status[81] [53]),
        .I3(\pc_status[81] [37]),
        .O(pc_asserted_i_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_16
       (.I0(\pc_status[81] [34]),
        .I1(\pc_status[81] [30]),
        .I2(\pc_status[81] [18]),
        .I3(\pc_status[81] [16]),
        .O(pc_asserted_i_i_16_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_2
       (.I0(pc_asserted_i_i_8_n_0),
        .I1(pc_asserted_i_i_9_n_0),
        .I2(\pc_status[81] [46]),
        .I3(\pc_status[81] [44]),
        .I4(\pc_status[81] [45]),
        .I5(\pc_status[81] [12]),
        .O(pc_asserted_i_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_3
       (.I0(\pc_status[81] [50]),
        .I1(\pc_status[81] [54]),
        .I2(\pc_status[81] [32]),
        .I3(\pc_status[81] [40]),
        .I4(pc_asserted_i_i_10_n_0),
        .O(pc_asserted_i_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_4
       (.I0(\pc_status[81] [20]),
        .I1(\pc_status[81] [55]),
        .I2(\pc_status[81] [33]),
        .I3(\pc_status[81] [58]),
        .I4(pc_asserted_i_i_11_n_0),
        .O(pc_asserted_i_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_5
       (.I0(\pc_status[81] [7]),
        .I1(\pc_status[81] [10]),
        .I2(\pc_status[81] [4]),
        .I3(\pc_status[81] [47]),
        .I4(pc_asserted_i_i_12_n_0),
        .O(pc_asserted_i_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    pc_asserted_i_i_6
       (.I0(\pc_status[81] [26]),
        .I1(\pc_status[81] [43]),
        .I2(\pc_status[81] [2]),
        .I3(\pc_status[81] [6]),
        .I4(pc_asserted_i_i_13_n_0),
        .O(pc_asserted_i_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_7
       (.I0(pc_asserted_i_i_14_n_0),
        .I1(pc_asserted_i_i_15_n_0),
        .I2(pc_asserted_i_i_16_n_0),
        .I3(\pc_status[81] [0]),
        .I4(\pc_status[81] [15]),
        .I5(\pc_status[81] [1]),
        .O(pc_asserted_i_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    pc_asserted_i_i_8
       (.I0(\pc_status[81] [60]),
        .I1(\pc_status[81] [52]),
        .I2(\pc_status[81] [11]),
        .I3(\pc_status[81] [42]),
        .I4(\pc_status[81] [3]),
        .I5(\pc_status[81] [21]),
        .O(pc_asserted_i_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pc_asserted_i_i_9
       (.I0(\pc_status[81] [25]),
        .I1(\pc_status[81] [14]),
        .I2(\pc_status[81] [29]),
        .I3(\pc_status[81] [8]),
        .O(pc_asserted_i_i_9_n_0));
  FDRE \pc_status_i_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_62),
        .Q(\pc_status[81] [0]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_54),
        .Q(\pc_status[81] [8]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_53),
        .Q(\pc_status[81] [9]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_52),
        .Q(\pc_status[81] [10]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_51),
        .Q(\pc_status[81] [11]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_50),
        .Q(\pc_status[81] [12]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_49),
        .Q(\pc_status[81] [13]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_48),
        .Q(\pc_status[81] [14]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_47),
        .Q(\pc_status[81] [15]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_46),
        .Q(\pc_status[81] [16]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_61),
        .Q(\pc_status[81] [1]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_45),
        .Q(\pc_status[81] [17]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_44),
        .Q(\pc_status[81] [18]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_43),
        .Q(\pc_status[81] [19]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_42),
        .Q(\pc_status[81] [20]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_41),
        .Q(\pc_status[81] [21]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_40),
        .Q(\pc_status[81] [22]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_60),
        .Q(\pc_status[81] [2]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_39),
        .Q(\pc_status[81] [23]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_38),
        .Q(\pc_status[81] [24]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_37),
        .Q(\pc_status[81] [25]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_36),
        .Q(\pc_status[81] [26]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_35),
        .Q(\pc_status[81] [27]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_34),
        .Q(\pc_status[81] [28]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_33),
        .Q(\pc_status[81] [29]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_32),
        .Q(\pc_status[81] [30]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_31),
        .Q(\pc_status[81] [31]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_30),
        .Q(\pc_status[81] [32]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_29),
        .Q(\pc_status[81] [33]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_28),
        .Q(\pc_status[81] [34]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_27),
        .Q(\pc_status[81] [35]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_26),
        .Q(\pc_status[81] [36]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_25),
        .Q(\pc_status[81] [37]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_59),
        .Q(\pc_status[81] [3]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_24),
        .Q(\pc_status[81] [38]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_23),
        .Q(\pc_status[81] [39]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_22),
        .Q(\pc_status[81] [40]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_21),
        .Q(\pc_status[81] [41]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_20),
        .Q(\pc_status[81] [42]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_19),
        .Q(\pc_status[81] [43]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_18),
        .Q(\pc_status[81] [44]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_17),
        .Q(\pc_status[81] [45]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_58),
        .Q(\pc_status[81] [4]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_16),
        .Q(\pc_status[81] [46]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_15),
        .Q(\pc_status[81] [47]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_14),
        .Q(\pc_status[81] [48]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[64] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_13),
        .Q(\pc_status[81] [49]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[65] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_12),
        .Q(\pc_status[81] [50]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[66] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_11),
        .Q(\pc_status[81] [51]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_57),
        .Q(\pc_status[81] [5]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[73] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_10),
        .Q(\pc_status[81] [52]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[74] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_9),
        .Q(\pc_status[81] [53]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[75] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_8),
        .Q(\pc_status[81] [54]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[76] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_7),
        .Q(\pc_status[81] [55]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[77] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_6),
        .Q(\pc_status[81] [56]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[78] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[0].RDCAM_n_2 ),
        .Q(\pc_status[81] [57]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[79] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_thread_loop[0].RDCAM_n_1 ),
        .Q(\pc_status[81] [58]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_56),
        .Q(\pc_status[81] [6]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[80] 
       (.C(aclk),
        .CE(1'b1),
        .D(AWCMD_n_36),
        .Q(\pc_status[81] [59]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[81] 
       (.C(aclk),
        .CE(1'b1),
        .D(WCHECK_n_4),
        .Q(\pc_status[81] [60]),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE \pc_status_i_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(i_Axi4PC_asr_inline_n_55),
        .Q(\pc_status[81] [7]),
        .R(i_Axi4PC_asr_inline_n_0));
  (* srl_bus_name = "inst/\CORE/wchechPop_shift_reg " *) 
  (* srl_name = "inst/\CORE/wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3 " *) 
  SRL16E \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(aclk),
        .D(wcheckPop),
        .Q(\wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0 ));
  FDRE \wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4 
       (.C(aclk),
        .CE(1'b1),
        .D(\wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0 ),
        .Q(\wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0 ),
        .R(1'b0));
  FDRE \wchechPop_shift_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_gate_n_0),
        .Q(wchechPop_shift),
        .R(i_Axi4PC_asr_inline_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    wchechPop_shift_reg_gate
       (.I0(\wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0 ),
        .I1(wchechPop_shift_reg_r_4_n_0),
        .O(wchechPop_shift_reg_gate_n_0));
  FDRE wchechPop_shift_reg_r
       (.C(aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(wchechPop_shift_reg_r_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_0
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_n_0),
        .Q(wchechPop_shift_reg_r_0_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_1
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_0_n_0),
        .Q(wchechPop_shift_reg_r_1_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_2
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_1_n_0),
        .Q(wchechPop_shift_reg_r_2_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_3
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_2_n_0),
        .Q(wchechPop_shift_reg_r_3_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
  FDRE wchechPop_shift_reg_r_4
       (.C(aclk),
        .CE(1'b1),
        .D(wchechPop_shift_reg_r_3_n_0),
        .Q(wchechPop_shift_reg_r_4_n_0),
        .R(i_Axi4PC_asr_inline_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_reporter
   (pc_status,
    aclk);
  input [60:0]pc_status;
  input aclk;

  (* MARK_DEBUG *) wire PC_00_AXI_ERRM_AWADDR_BOUNDARY;
  (* MARK_DEBUG *) wire PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN;
  (* MARK_DEBUG *) wire PC_02_AXI_ERRM_AWBURST;
  (* MARK_DEBUG *) wire PC_03_AXI_ERRM_AWLEN_LOCK;
  (* MARK_DEBUG *) wire PC_04_AXI_ERRM_AWCACHE;
  (* MARK_DEBUG *) wire PC_05_AXI_ERRM_AWLEN_FIXED;
  (* MARK_DEBUG *) wire PC_06_AXI_ERRM_AWLEN_WRAP;
  (* MARK_DEBUG *) wire PC_07_AXI_ERRM_AWSIZE;
  (* MARK_DEBUG *) wire PC_08_AXI_ERRM_AWVALID_RESET;
  (* MARK_DEBUG *) wire PC_09_AXI_ERRM_AWADDR_STABLE;
  (* MARK_DEBUG *) wire PC_10_AXI_ERRM_AWBURST_STABLE;
  (* MARK_DEBUG *) wire PC_11_AXI_ERRM_AWCACHE_STABLE;
  (* MARK_DEBUG *) wire PC_12_AXI_ERRM_AWID_STABLE;
  (* MARK_DEBUG *) wire PC_13_AXI_ERRM_AWLEN_STABLE;
  (* MARK_DEBUG *) wire PC_14_AXI_ERRM_AWLOCK_STABLE;
  (* MARK_DEBUG *) wire PC_15_AXI_ERRM_AWPROT_STABLE;
  (* MARK_DEBUG *) wire PC_16_AXI_ERRM_AWSIZE_STABLE;
  (* MARK_DEBUG *) wire PC_17_AXI_ERRM_AWQOS_STABLE;
  (* MARK_DEBUG *) wire PC_18_AXI_ERRM_AWREGION_STABLE;
  (* MARK_DEBUG *) wire PC_19_AXI_ERRM_AWVALID_STABLE;
  (* MARK_DEBUG *) wire PC_20_AXI_RECS_AWREADY_MAX_WAIT;
  (* MARK_DEBUG *) wire PC_21_AXI_ERRM_WDATA_NUM;
  (* MARK_DEBUG *) wire PC_22_AXI_ERRM_WSTRB;
  (* MARK_DEBUG *) wire PC_23_AXI_ERRM_WVALID_RESET;
  (* MARK_DEBUG *) wire PC_24_AXI_ERRM_WDATA_STABLE;
  (* MARK_DEBUG *) wire PC_25_AXI_ERRM_WLAST_STABLE;
  (* MARK_DEBUG *) wire PC_26_AXI_ERRM_WSTRB_STABLE;
  (* MARK_DEBUG *) wire PC_27_AXI_ERRM_WVALID_STABLE;
  (* MARK_DEBUG *) wire PC_28_AXI_RECS_WREADY_MAX_WAIT;
  (* MARK_DEBUG *) wire PC_29_AXI_ERRS_BRESP_WLAST;
  (* MARK_DEBUG *) wire PC_30_AXI_ERRS_BRESP_EXOKAY;
  (* MARK_DEBUG *) wire PC_31_AXI_ERRS_BVALID_RESET;
  (* MARK_DEBUG *) wire PC_32_AXI_ERRS_BRESP_AW;
  (* MARK_DEBUG *) wire PC_33_AXI_ERRS_BID_STABLE;
  (* MARK_DEBUG *) wire PC_34_AXI_ERRS_BRESP_STABLE;
  (* MARK_DEBUG *) wire PC_35_AXI_ERRS_BVALID_STABLE;
  (* MARK_DEBUG *) wire PC_36_AXI_RECM_BREADY_MAX_WAIT;
  (* MARK_DEBUG *) wire PC_37_AXI_ERRM_ARADDR_BOUNDARY;
  (* MARK_DEBUG *) wire PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN;
  (* MARK_DEBUG *) wire PC_39_AXI_ERRM_ARBURST;
  (* MARK_DEBUG *) wire PC_40_AXI_ERRM_ARLEN_LOCK;
  (* MARK_DEBUG *) wire PC_41_AXI_ERRM_ARCACHE;
  (* MARK_DEBUG *) wire PC_42_AXI_ERRM_ARLEN_FIXED;
  (* MARK_DEBUG *) wire PC_43_AXI_ERRM_ARLEN_WRAP;
  (* MARK_DEBUG *) wire PC_44_AXI_ERRM_ARSIZE;
  (* MARK_DEBUG *) wire PC_45_AXI_ERRM_ARVALID_RESET;
  (* MARK_DEBUG *) wire PC_46_AXI_ERRM_ARADDR_STABLE;
  (* MARK_DEBUG *) wire PC_47_AXI_ERRM_ARBURST_STABLE;
  (* MARK_DEBUG *) wire PC_48_AXI_ERRM_ARCACHE_STABLE;
  (* MARK_DEBUG *) wire PC_49_AXI_ERRM_ARID_STABLE;
  (* MARK_DEBUG *) wire PC_50_AXI_ERRM_ARLEN_STABLE;
  (* MARK_DEBUG *) wire PC_51_AXI_ERRM_ARLOCK_STABLE;
  (* MARK_DEBUG *) wire PC_52_AXI_ERRM_ARPROT_STABLE;
  (* MARK_DEBUG *) wire PC_53_AXI_ERRM_ARSIZE_STABLE;
  (* MARK_DEBUG *) wire PC_54_AXI_ERRM_ARQOS_STABLE;
  (* MARK_DEBUG *) wire PC_55_AXI_ERRM_ARREGION_STABLE;
  (* MARK_DEBUG *) wire PC_56_AXI_ERRM_ARVALID_STABLE;
  (* MARK_DEBUG *) wire PC_57_AXI_RECS_ARREADY_MAX_WAIT;
  (* MARK_DEBUG *) wire PC_58_AXI_ERRS_RDATA_NUM;
  (* MARK_DEBUG *) wire PC_59_AXI_ERRS_RID;
  (* MARK_DEBUG *) wire PC_60_AXI_ERRS_RRESP_EXOKAY;
  (* MARK_DEBUG *) wire PC_61_AXI_ERRS_RVALID_RESET;
  (* MARK_DEBUG *) wire PC_62_AXI_ERRS_RDATA_STABLE;
  (* MARK_DEBUG *) wire PC_63_AXI_ERRS_RID_STABLE;
  (* MARK_DEBUG *) wire PC_64_AXI_ERRS_RLAST_STABLE;
  (* MARK_DEBUG *) wire PC_65_AXI_ERRS_RRESP_STABLE;
  (* MARK_DEBUG *) wire PC_66_AXI_ERRS_RVALID_STABLE;
  (* MARK_DEBUG *) wire PC_67_AXI_RECM_RREADY_MAX_WAIT;
  (* MARK_DEBUG *) wire PC_68_AXI_ERRM_EXCL_ALIGN;
  (* MARK_DEBUG *) wire PC_69_AXI_ERRM_EXCL_LEN;
  (* MARK_DEBUG *) wire PC_70_AXI_RECM_EXCL_MATCH;
  (* MARK_DEBUG *) wire PC_71_AXI_ERRM_EXCL_MAX;
  (* MARK_DEBUG *) wire PC_72_AXI_RECM_EXCL_PAIR;
  (* MARK_DEBUG *) wire PC_73_AXI_ERRM_AWUSER_STABLE;
  (* MARK_DEBUG *) wire PC_74_AXI_ERRM_WUSER_STABLE;
  (* MARK_DEBUG *) wire PC_75_AXI_ERRS_BUSER_STABLE;
  (* MARK_DEBUG *) wire PC_76_AXI_ERRM_ARUSER_STABLE;
  (* MARK_DEBUG *) wire PC_77_AXI_ERRS_RUSER_STABLE;
  (* MARK_DEBUG *) wire PC_78_AXI_AUXM_RCAM_OVERFLOW;
  (* MARK_DEBUG *) wire PC_79_AXI_AUXM_RCAM_UNDERFLOW;
  (* MARK_DEBUG *) wire PC_80_AXI_AUXM_WCAM_OVERFLOW;
  (* MARK_DEBUG *) wire PC_81_AXI_AUXM_WCAM_UNDERFLOW;
  (* MARK_DEBUG *) wire PC_82_AXI_AUXM_EXCL_OVERFLOW;
  (* MARK_DEBUG *) wire PC_83_AXI4LITE_ERRS_BRESP_EXOKAY;
  (* MARK_DEBUG *) wire PC_84_AXI4LITE_ERRS_RRESP_EXOKAY;
  (* MARK_DEBUG *) wire PC_85_AXI4LITE_AUXM_DATA_WIDTH;
  (* MARK_DEBUG *) wire PC_86_XILINX_AW_SUPPORTS_NARROW_BURST;
  (* MARK_DEBUG *) wire PC_87_XILINX_AR_SUPPORTS_NARROW_BURST;
  (* MARK_DEBUG *) wire PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE;
  (* MARK_DEBUG *) wire PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE;
  (* MARK_DEBUG *) wire PC_90_XILINX_AW_MAX_BURST;
  (* MARK_DEBUG *) wire PC_91_XILINX_AR_MAX_BURST;
  (* MARK_DEBUG *) wire PC_92_XILINX_AWREADY_RESET;
  (* MARK_DEBUG *) wire PC_93_XILINX_WREADY_RESET;
  (* MARK_DEBUG *) wire PC_94_XILINX_BREADY_RESET;
  (* MARK_DEBUG *) wire PC_95_XILINX_ARREADY_RESET;
  (* MARK_DEBUG *) wire PC_96_XILINX_RREADY_RESET;
  wire aclk;
  wire [60:0]pc_status;

  (* KEEP = "yes" *) 
  FDRE PC_00_AXI_ERRM_AWADDR_BOUNDARY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[0]),
        .Q(PC_00_AXI_ERRM_AWADDR_BOUNDARY),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[1]),
        .Q(PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_02_AXI_ERRM_AWBURST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[2]),
        .Q(PC_02_AXI_ERRM_AWBURST),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_03_AXI_ERRM_AWLEN_LOCK_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_03_AXI_ERRM_AWLEN_LOCK),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_04_AXI_ERRM_AWCACHE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[3]),
        .Q(PC_04_AXI_ERRM_AWCACHE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_05_AXI_ERRM_AWLEN_FIXED_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[4]),
        .Q(PC_05_AXI_ERRM_AWLEN_FIXED),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_06_AXI_ERRM_AWLEN_WRAP_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[5]),
        .Q(PC_06_AXI_ERRM_AWLEN_WRAP),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_07_AXI_ERRM_AWSIZE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[6]),
        .Q(PC_07_AXI_ERRM_AWSIZE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_08_AXI_ERRM_AWVALID_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_08_AXI_ERRM_AWVALID_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_09_AXI_ERRM_AWADDR_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[7]),
        .Q(PC_09_AXI_ERRM_AWADDR_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_10_AXI_ERRM_AWBURST_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[8]),
        .Q(PC_10_AXI_ERRM_AWBURST_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_11_AXI_ERRM_AWCACHE_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[9]),
        .Q(PC_11_AXI_ERRM_AWCACHE_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_12_AXI_ERRM_AWID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[10]),
        .Q(PC_12_AXI_ERRM_AWID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_13_AXI_ERRM_AWLEN_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[11]),
        .Q(PC_13_AXI_ERRM_AWLEN_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_14_AXI_ERRM_AWLOCK_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_14_AXI_ERRM_AWLOCK_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_15_AXI_ERRM_AWPROT_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[12]),
        .Q(PC_15_AXI_ERRM_AWPROT_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_16_AXI_ERRM_AWSIZE_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[13]),
        .Q(PC_16_AXI_ERRM_AWSIZE_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_17_AXI_ERRM_AWQOS_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[14]),
        .Q(PC_17_AXI_ERRM_AWQOS_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_18_AXI_ERRM_AWREGION_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[15]),
        .Q(PC_18_AXI_ERRM_AWREGION_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_19_AXI_ERRM_AWVALID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[16]),
        .Q(PC_19_AXI_ERRM_AWVALID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_20_AXI_RECS_AWREADY_MAX_WAIT_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_20_AXI_RECS_AWREADY_MAX_WAIT),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_21_AXI_ERRM_WDATA_NUM_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[17]),
        .Q(PC_21_AXI_ERRM_WDATA_NUM),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_22_AXI_ERRM_WSTRB_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[18]),
        .Q(PC_22_AXI_ERRM_WSTRB),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_23_AXI_ERRM_WVALID_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_23_AXI_ERRM_WVALID_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_24_AXI_ERRM_WDATA_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[19]),
        .Q(PC_24_AXI_ERRM_WDATA_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_25_AXI_ERRM_WLAST_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[20]),
        .Q(PC_25_AXI_ERRM_WLAST_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_26_AXI_ERRM_WSTRB_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[21]),
        .Q(PC_26_AXI_ERRM_WSTRB_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_27_AXI_ERRM_WVALID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[22]),
        .Q(PC_27_AXI_ERRM_WVALID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_28_AXI_RECS_WREADY_MAX_WAIT_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_28_AXI_RECS_WREADY_MAX_WAIT),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_29_AXI_ERRS_BRESP_WLAST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_29_AXI_ERRS_BRESP_WLAST),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_30_AXI_ERRS_BRESP_EXOKAY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_30_AXI_ERRS_BRESP_EXOKAY),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_31_AXI_ERRS_BVALID_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_31_AXI_ERRS_BVALID_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_32_AXI_ERRS_BRESP_AW_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[23]),
        .Q(PC_32_AXI_ERRS_BRESP_AW),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_33_AXI_ERRS_BID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[24]),
        .Q(PC_33_AXI_ERRS_BID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_34_AXI_ERRS_BRESP_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[25]),
        .Q(PC_34_AXI_ERRS_BRESP_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_35_AXI_ERRS_BVALID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[26]),
        .Q(PC_35_AXI_ERRS_BVALID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_36_AXI_RECM_BREADY_MAX_WAIT_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_36_AXI_RECM_BREADY_MAX_WAIT),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_37_AXI_ERRM_ARADDR_BOUNDARY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[27]),
        .Q(PC_37_AXI_ERRM_ARADDR_BOUNDARY),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[28]),
        .Q(PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_39_AXI_ERRM_ARBURST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[29]),
        .Q(PC_39_AXI_ERRM_ARBURST),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_40_AXI_ERRM_ARLEN_LOCK_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_40_AXI_ERRM_ARLEN_LOCK),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_41_AXI_ERRM_ARCACHE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[30]),
        .Q(PC_41_AXI_ERRM_ARCACHE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_42_AXI_ERRM_ARLEN_FIXED_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[31]),
        .Q(PC_42_AXI_ERRM_ARLEN_FIXED),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_43_AXI_ERRM_ARLEN_WRAP_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[32]),
        .Q(PC_43_AXI_ERRM_ARLEN_WRAP),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_44_AXI_ERRM_ARSIZE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[33]),
        .Q(PC_44_AXI_ERRM_ARSIZE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_45_AXI_ERRM_ARVALID_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_45_AXI_ERRM_ARVALID_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_46_AXI_ERRM_ARADDR_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[34]),
        .Q(PC_46_AXI_ERRM_ARADDR_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_47_AXI_ERRM_ARBURST_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[35]),
        .Q(PC_47_AXI_ERRM_ARBURST_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_48_AXI_ERRM_ARCACHE_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[36]),
        .Q(PC_48_AXI_ERRM_ARCACHE_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_49_AXI_ERRM_ARID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[37]),
        .Q(PC_49_AXI_ERRM_ARID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_50_AXI_ERRM_ARLEN_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[38]),
        .Q(PC_50_AXI_ERRM_ARLEN_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_51_AXI_ERRM_ARLOCK_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_51_AXI_ERRM_ARLOCK_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_52_AXI_ERRM_ARPROT_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[39]),
        .Q(PC_52_AXI_ERRM_ARPROT_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_53_AXI_ERRM_ARSIZE_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[40]),
        .Q(PC_53_AXI_ERRM_ARSIZE_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_54_AXI_ERRM_ARQOS_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[41]),
        .Q(PC_54_AXI_ERRM_ARQOS_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_55_AXI_ERRM_ARREGION_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[42]),
        .Q(PC_55_AXI_ERRM_ARREGION_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_56_AXI_ERRM_ARVALID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[43]),
        .Q(PC_56_AXI_ERRM_ARVALID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_57_AXI_RECS_ARREADY_MAX_WAIT_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_57_AXI_RECS_ARREADY_MAX_WAIT),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_58_AXI_ERRS_RDATA_NUM_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[44]),
        .Q(PC_58_AXI_ERRS_RDATA_NUM),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_59_AXI_ERRS_RID_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[45]),
        .Q(PC_59_AXI_ERRS_RID),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_60_AXI_ERRS_RRESP_EXOKAY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[46]),
        .Q(PC_60_AXI_ERRS_RRESP_EXOKAY),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_61_AXI_ERRS_RVALID_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_61_AXI_ERRS_RVALID_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_62_AXI_ERRS_RDATA_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[47]),
        .Q(PC_62_AXI_ERRS_RDATA_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_63_AXI_ERRS_RID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[48]),
        .Q(PC_63_AXI_ERRS_RID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_64_AXI_ERRS_RLAST_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[49]),
        .Q(PC_64_AXI_ERRS_RLAST_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_65_AXI_ERRS_RRESP_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[50]),
        .Q(PC_65_AXI_ERRS_RRESP_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_66_AXI_ERRS_RVALID_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[51]),
        .Q(PC_66_AXI_ERRS_RVALID_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_67_AXI_RECM_RREADY_MAX_WAIT_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_67_AXI_RECM_RREADY_MAX_WAIT),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_68_AXI_ERRM_EXCL_ALIGN_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_68_AXI_ERRM_EXCL_ALIGN),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_69_AXI_ERRM_EXCL_LEN_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_69_AXI_ERRM_EXCL_LEN),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_70_AXI_RECM_EXCL_MATCH_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_70_AXI_RECM_EXCL_MATCH),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_71_AXI_ERRM_EXCL_MAX_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_71_AXI_ERRM_EXCL_MAX),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_72_AXI_RECM_EXCL_PAIR_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_72_AXI_RECM_EXCL_PAIR),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_73_AXI_ERRM_AWUSER_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[52]),
        .Q(PC_73_AXI_ERRM_AWUSER_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_74_AXI_ERRM_WUSER_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[53]),
        .Q(PC_74_AXI_ERRM_WUSER_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_75_AXI_ERRS_BUSER_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[54]),
        .Q(PC_75_AXI_ERRS_BUSER_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_76_AXI_ERRM_ARUSER_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[55]),
        .Q(PC_76_AXI_ERRM_ARUSER_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_77_AXI_ERRS_RUSER_STABLE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[56]),
        .Q(PC_77_AXI_ERRS_RUSER_STABLE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_78_AXI_AUXM_RCAM_OVERFLOW_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[57]),
        .Q(PC_78_AXI_AUXM_RCAM_OVERFLOW),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_79_AXI_AUXM_RCAM_UNDERFLOW_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[58]),
        .Q(PC_79_AXI_AUXM_RCAM_UNDERFLOW),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_80_AXI_AUXM_WCAM_OVERFLOW_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[59]),
        .Q(PC_80_AXI_AUXM_WCAM_OVERFLOW),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_81_AXI_AUXM_WCAM_UNDERFLOW_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_status[60]),
        .Q(PC_81_AXI_AUXM_WCAM_UNDERFLOW),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_82_AXI_AUXM_EXCL_OVERFLOW_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_82_AXI_AUXM_EXCL_OVERFLOW),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_83_AXI4LITE_ERRS_BRESP_EXOKAY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_83_AXI4LITE_ERRS_BRESP_EXOKAY),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_84_AXI4LITE_ERRS_RRESP_EXOKAY_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_84_AXI4LITE_ERRS_RRESP_EXOKAY),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_85_AXI4LITE_AUXM_DATA_WIDTH_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_85_AXI4LITE_AUXM_DATA_WIDTH),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_86_XILINX_AW_SUPPORTS_NARROW_BURST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_86_XILINX_AW_SUPPORTS_NARROW_BURST),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_87_XILINX_AR_SUPPORTS_NARROW_BURST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_87_XILINX_AR_SUPPORTS_NARROW_BURST),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_90_XILINX_AW_MAX_BURST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_90_XILINX_AW_MAX_BURST),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_91_XILINX_AR_MAX_BURST_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_91_XILINX_AR_MAX_BURST),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_92_XILINX_AWREADY_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_92_XILINX_AWREADY_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_93_XILINX_WREADY_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_93_XILINX_WREADY_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_94_XILINX_BREADY_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_94_XILINX_BREADY_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_95_XILINX_ARREADY_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_95_XILINX_ARREADY_RESET),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE PC_96_XILINX_RREADY_RESET_reg
       (.C(aclk),
        .CE(1'b1),
        .D(1'b0),
        .Q(PC_96_XILINX_RREADY_RESET),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo
   (\cnt_reg[1]_0 ,
    D,
    cmd_pop_0,
    SR,
    ASR_610,
    \cnt_reg[1]_1 ,
    \cnt_reg[1]_2 ,
    ASR_59_reg,
    CO,
    ASR_59_reg_0,
    resetn_q_reg,
    aclk,
    rready_q,
    rvalid_q,
    rlast_q,
    \gen_thread_loop[0].active_id_reg_1__s_port_] ,
    \pc_status_i_reg[79] ,
    cmd_pop_1,
    \cnt_reg[0]_0 ,
    resetn_q,
    \gen_thread_loop[1].active_id_reg[3] ,
    \gen_thread_loop[1].RCount_reg[1][2] ,
    Q,
    data_out,
    resetn_q_reg_0,
    \gen_thread_loop[1].RCount_reg[1][3] ,
    \gen_thread_loop[1].RCount_reg[1][5] ,
    \cnt_reg[0]_1 ,
    p_11_in,
    arready_q,
    arvalid_q,
    active_cnt,
    \gen_thread_loop[0].active_id_reg ,
    \arid_q_reg[1] ,
    \gen_thread_loop[1].active_id_reg ,
    S,
    \gen_thread_loop[1].RCount_reg[1][6] ,
    data_in);
  output \cnt_reg[1]_0 ;
  output [1:0]D;
  output cmd_pop_0;
  output [0:0]SR;
  output ASR_610;
  output \cnt_reg[1]_1 ;
  output \cnt_reg[1]_2 ;
  output ASR_59_reg;
  output [0:0]CO;
  output [0:0]ASR_59_reg_0;
  input resetn_q_reg;
  input aclk;
  input rready_q;
  input rvalid_q;
  input rlast_q;
  input \gen_thread_loop[0].active_id_reg_1__s_port_] ;
  input [1:0]\pc_status_i_reg[79] ;
  input cmd_pop_1;
  input \cnt_reg[0]_0 ;
  input resetn_q;
  input \gen_thread_loop[1].active_id_reg[3] ;
  input \gen_thread_loop[1].RCount_reg[1][2] ;
  input [8:0]Q;
  input [2:0]data_out;
  input resetn_q_reg_0;
  input [1:0]\gen_thread_loop[1].RCount_reg[1][3] ;
  input \gen_thread_loop[1].RCount_reg[1][5] ;
  input \cnt_reg[0]_1 ;
  input p_11_in;
  input arready_q;
  input arvalid_q;
  input [3:0]active_cnt;
  input [1:0]\gen_thread_loop[0].active_id_reg ;
  input [1:0]\arid_q_reg[1] ;
  input [1:0]\gen_thread_loop[1].active_id_reg ;
  input [0:0]S;
  input [0:0]\gen_thread_loop[1].RCount_reg[1][6] ;
  input [8:0]data_in;

  wire [1:0]A;
  wire ASR_59_i_12_n_0;
  wire ASR_59_i_13_n_0;
  wire ASR_59_i_15_n_0;
  wire ASR_59_i_16_n_0;
  wire ASR_59_i_5_n_0;
  wire ASR_59_i_6_n_0;
  wire ASR_59_i_8_n_0;
  wire ASR_59_i_9_n_0;
  wire ASR_59_reg;
  wire [0:0]ASR_59_reg_0;
  wire ASR_59_reg_i_2_n_2;
  wire ASR_59_reg_i_2_n_3;
  wire ASR_59_reg_i_3_n_2;
  wire ASR_59_reg_i_3_n_3;
  wire ASR_610;
  wire [0:0]CO;
  wire [1:0]D;
  wire [8:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire aclk;
  wire [3:0]active_cnt;
  wire [1:0]\arid_q_reg[1] ;
  wire arready_q;
  wire arvalid_q;
  wire cmd_pop_0;
  wire cmd_pop_1;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[1]_1 ;
  wire \cnt_reg[1]_2 ;
  wire [8:0]data_in;
  wire [2:0]data_out;
  wire data_ram_reg_0_1_12_15_n_0;
  wire data_ram_reg_0_1_12_15_n_1;
  wire data_ram_reg_0_1_12_15_n_2;
  wire data_ram_reg_0_1_12_15_n_3;
  wire data_ram_reg_0_1_6_11_n_0;
  wire data_ram_reg_0_1_6_11_n_1;
  wire data_ram_reg_0_1_6_11_n_2;
  wire data_ram_reg_0_1_6_11_n_3;
  wire data_ram_reg_0_1_6_11_n_4;
  wire data_ram_reg_0_1_6_11_n_5;
  wire [1:0]\gen_thread_loop[0].active_id_reg ;
  wire \gen_thread_loop[0].active_id_reg_1__s_net_1 ;
  wire \gen_thread_loop[1].RCount_reg[1][2] ;
  wire [1:0]\gen_thread_loop[1].RCount_reg[1][3] ;
  wire \gen_thread_loop[1].RCount_reg[1][5] ;
  wire [0:0]\gen_thread_loop[1].RCount_reg[1][6] ;
  wire [1:0]\gen_thread_loop[1].active_id_reg ;
  wire \gen_thread_loop[1].active_id_reg[3] ;
  wire p_11_in;
  wire p_20_in;
  wire \pc_status_i[78]_i_2_n_0 ;
  wire \pc_status_i[79]_i_3_n_0 ;
  wire [1:0]\pc_status_i_reg[79] ;
  wire rd_ptr;
  wire \rd_ptr[0]_i_1__2_n_0 ;
  wire resetn_q;
  wire resetn_q_reg;
  wire resetn_q_reg_0;
  wire rlast_q;
  wire rready_q;
  wire rvalid_q;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1__2_n_0 ;
  wire [3:3]NLW_ASR_59_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_ASR_59_reg_i_2_O_UNCONNECTED;
  wire [3:3]NLW_ASR_59_reg_i_3_CO_UNCONNECTED;
  wire [3:0]NLW_ASR_59_reg_i_3_O_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED;

  assign \gen_thread_loop[0].active_id_reg_1__s_net_1  = \gen_thread_loop[0].active_id_reg_1__s_port_] ;
  LUT5 #(
    .INIT(32'hF6FFFFF6)) 
    ASR_59_i_11
       (.I0(Q[6]),
        .I1(data_ram_reg_0_1_12_15_n_3),
        .I2(Q[8]),
        .I3(data_ram_reg_0_1_12_15_n_2),
        .I4(Q[7]),
        .O(ASR_59_reg));
  LUT6 #(
    .INIT(64'hFF0000FF9F9F9F9F)) 
    ASR_59_i_12
       (.I0(Q[3]),
        .I1(data_ram_reg_0_1_6_11_n_4),
        .I2(\gen_thread_loop[0].active_id_reg_1__s_net_1 ),
        .I3(\gen_thread_loop[1].RCount_reg[1][3] [1]),
        .I4(data_out[2]),
        .I5(\gen_thread_loop[1].active_id_reg[3] ),
        .O(ASR_59_i_12_n_0));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    ASR_59_i_13
       (.I0(\gen_thread_loop[0].active_id_reg_1__s_net_1 ),
        .I1(Q[4]),
        .I2(data_ram_reg_0_1_12_15_n_1),
        .I3(Q[5]),
        .I4(data_ram_reg_0_1_12_15_n_0),
        .O(ASR_59_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF9F009F009FFF9F)) 
    ASR_59_i_15
       (.I0(Q[0]),
        .I1(data_ram_reg_0_1_6_11_n_3),
        .I2(\gen_thread_loop[0].active_id_reg_1__s_net_1 ),
        .I3(\gen_thread_loop[1].active_id_reg[3] ),
        .I4(data_out[1]),
        .I5(\gen_thread_loop[1].RCount_reg[1][3] [0]),
        .O(ASR_59_i_15_n_0));
  LUT5 #(
    .INIT(32'h28AAAA28)) 
    ASR_59_i_16
       (.I0(\gen_thread_loop[0].active_id_reg_1__s_net_1 ),
        .I1(Q[1]),
        .I2(data_ram_reg_0_1_6_11_n_2),
        .I3(Q[2]),
        .I4(data_ram_reg_0_1_6_11_n_5),
        .O(ASR_59_i_16_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ASR_59_i_5
       (.I0(ASR_59_i_12_n_0),
        .I1(ASR_59_i_13_n_0),
        .I2(\gen_thread_loop[1].active_id_reg[3] ),
        .I3(\gen_thread_loop[1].RCount_reg[1][5] ),
        .O(ASR_59_i_5_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ASR_59_i_6
       (.I0(ASR_59_i_15_n_0),
        .I1(ASR_59_i_16_n_0),
        .I2(\gen_thread_loop[1].active_id_reg[3] ),
        .I3(\gen_thread_loop[1].RCount_reg[1][2] ),
        .O(ASR_59_i_6_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ASR_59_i_8
       (.I0(ASR_59_i_12_n_0),
        .I1(ASR_59_i_13_n_0),
        .I2(\gen_thread_loop[1].active_id_reg[3] ),
        .I3(\gen_thread_loop[1].RCount_reg[1][5] ),
        .O(ASR_59_i_8_n_0));
  LUT4 #(
    .INIT(16'h02A2)) 
    ASR_59_i_9
       (.I0(ASR_59_i_15_n_0),
        .I1(ASR_59_i_16_n_0),
        .I2(\gen_thread_loop[1].active_id_reg[3] ),
        .I3(\gen_thread_loop[1].RCount_reg[1][2] ),
        .O(ASR_59_i_9_n_0));
  CARRY4 ASR_59_reg_i_2
       (.CI(1'b0),
        .CO({NLW_ASR_59_reg_i_2_CO_UNCONNECTED[3],ASR_59_reg_0,ASR_59_reg_i_2_n_2,ASR_59_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_ASR_59_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,\gen_thread_loop[1].RCount_reg[1][6] ,ASR_59_i_5_n_0,ASR_59_i_6_n_0}));
  CARRY4 ASR_59_reg_i_3
       (.CI(1'b0),
        .CO({NLW_ASR_59_reg_i_3_CO_UNCONNECTED[3],CO,ASR_59_reg_i_3_n_2,ASR_59_reg_i_3_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ASR_59_reg_i_3_O_UNCONNECTED[3:0]),
        .S({1'b0,S,ASR_59_i_8_n_0,ASR_59_i_9_n_0}));
  LUT5 #(
    .INIT(32'h00000F77)) 
    ASR_61_i_1
       (.I0(data_ram_reg_0_1_6_11_n_0),
        .I1(\gen_thread_loop[0].active_id_reg_1__s_net_1 ),
        .I2(data_out[0]),
        .I3(\gen_thread_loop[1].active_id_reg[3] ),
        .I4(resetn_q_reg_0),
        .O(ASR_610));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h3C81)) 
    \cnt[0]_i_1 
       (.I0(A[1]),
        .I1(cmd_pop_0),
        .I2(\cnt_reg[1]_0 ),
        .I3(A[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hE710)) 
    \cnt[1]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(cmd_pop_0),
        .I2(A[0]),
        .I3(A[1]),
        .O(\cnt[1]_i_1_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(A[0]),
        .R(resetn_q_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(A[1]),
        .R(resetn_q_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_12_15
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[6:5]),
        .DIB(data_in[8:7]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({data_ram_reg_0_1_12_15_n_0,data_ram_reg_0_1_12_15_n_1}),
        .DOB({data_ram_reg_0_1_12_15_n_2,data_ram_reg_0_1_12_15_n_3}),
        .DOC(NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_20_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA({1'b0,data_in[0]}),
        .DIB(data_in[2:1]),
        .DIC(data_in[4:3]),
        .DID({1'b0,1'b0}),
        .DOA({data_ram_reg_0_1_6_11_n_0,data_ram_reg_0_1_6_11_n_1}),
        .DOB({data_ram_reg_0_1_6_11_n_2,data_ram_reg_0_1_6_11_n_3}),
        .DOC({data_ram_reg_0_1_6_11_n_4,data_ram_reg_0_1_6_11_n_5}),
        .DOD(NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_20_in));
  LUT1 #(
    .INIT(2'h1)) 
    data_ram_reg_0_1_6_11_i_1__0
       (.I0(\cnt_reg[1]_0 ),
        .O(p_20_in));
  LUT4 #(
    .INIT(16'h9009)) 
    data_ram_reg_0_1_6_11_i_2
       (.I0(\gen_thread_loop[0].active_id_reg [1]),
        .I1(\arid_q_reg[1] [1]),
        .I2(\gen_thread_loop[0].active_id_reg [0]),
        .I3(\arid_q_reg[1] [0]),
        .O(\cnt_reg[1]_1 ));
  LUT6 #(
    .INIT(64'h6FF66FF66FF6FFFF)) 
    data_ram_reg_0_1_6_11_i_5
       (.I0(\gen_thread_loop[1].active_id_reg [1]),
        .I1(\arid_q_reg[1] [1]),
        .I2(\arid_q_reg[1] [0]),
        .I3(\gen_thread_loop[1].active_id_reg [0]),
        .I4(active_cnt[2]),
        .I5(active_cnt[3]),
        .O(\cnt_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF01FF)) 
    \gen_thread_loop[0].RCount[0][8]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(A[0]),
        .I2(A[1]),
        .I3(resetn_q),
        .I4(cmd_pop_0),
        .O(SR));
  LUT6 #(
    .INIT(64'hABFFABABAAAAAAAA)) 
    \pc_status_i[78]_i_1 
       (.I0(\pc_status_i_reg[79] [0]),
        .I1(\pc_status_i[78]_i_2_n_0 ),
        .I2(\cnt_reg[1]_0 ),
        .I3(\cnt_reg[0]_1 ),
        .I4(p_11_in),
        .I5(resetn_q),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pc_status_i[78]_i_2 
       (.I0(A[0]),
        .I1(A[1]),
        .O(\pc_status_i[78]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7F7F7F777F7F7FFF)) 
    \pc_status_i[78]_i_3 
       (.I0(arready_q),
        .I1(arvalid_q),
        .I2(\cnt_reg[1]_1 ),
        .I3(active_cnt[1]),
        .I4(active_cnt[0]),
        .I5(\cnt_reg[1]_2 ),
        .O(\cnt_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFEAEAEAAAAAAAAA)) 
    \pc_status_i[79]_i_1 
       (.I0(\pc_status_i_reg[79] [1]),
        .I1(cmd_pop_0),
        .I2(\pc_status_i[79]_i_3_n_0 ),
        .I3(cmd_pop_1),
        .I4(\cnt_reg[0]_0 ),
        .I5(resetn_q),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pc_status_i[79]_i_2 
       (.I0(\gen_thread_loop[0].active_id_reg_1__s_net_1 ),
        .I1(rlast_q),
        .I2(rvalid_q),
        .I3(rready_q),
        .O(cmd_pop_0));
  LUT2 #(
    .INIT(4'h1)) 
    \pc_status_i[79]_i_3 
       (.I0(A[0]),
        .I1(A[1]),
        .O(\pc_status_i[79]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_ptr[0]_i_1__2 
       (.I0(rready_q),
        .I1(rvalid_q),
        .I2(rlast_q),
        .I3(\gen_thread_loop[0].active_id_reg_1__s_net_1 ),
        .I4(rd_ptr),
        .O(\rd_ptr[0]_i_1__2_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rd_ptr[0]_i_1__2_n_0 ),
        .Q(rd_ptr),
        .R(resetn_q_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \wr_ptr[0]_i_1__2 
       (.I0(\cnt_reg[1]_0 ),
        .I1(wr_ptr),
        .O(\wr_ptr[0]_i_1__2_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1__2_n_0 ),
        .Q(wr_ptr),
        .R(resetn_q_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v1_1_12_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo_0
   (p_11_in,
    SR,
    cmd_pop_1,
    ASR_59_reg,
    \pc_status_i_reg[78] ,
    \pc_status_i_reg[79] ,
    ASR_59_reg_0,
    ASR_59_reg_1,
    S,
    data_out,
    resetn_q_reg,
    aclk,
    rready_q,
    rvalid_q,
    rlast_q,
    \gen_thread_loop[1].active_id_reg[3] ,
    resetn_q,
    \gen_thread_loop[0].active_id_reg[1] ,
    \gen_thread_loop[0].RCount_reg[0][6] ,
    arready_q,
    arvalid_q,
    \gen_thread_loop[0].active_id_reg[1]_0 ,
    \gen_thread_loop[1].active_id_reg[3]_0 ,
    active_cnt,
    Q,
    data_in);
  output p_11_in;
  output [0:0]SR;
  output cmd_pop_1;
  output [0:0]ASR_59_reg;
  output \pc_status_i_reg[78] ;
  output \pc_status_i_reg[79] ;
  output ASR_59_reg_0;
  output ASR_59_reg_1;
  output [0:0]S;
  output [2:0]data_out;
  input resetn_q_reg;
  input aclk;
  input rready_q;
  input rvalid_q;
  input rlast_q;
  input \gen_thread_loop[1].active_id_reg[3] ;
  input resetn_q;
  input \gen_thread_loop[0].active_id_reg[1] ;
  input \gen_thread_loop[0].RCount_reg[0][6] ;
  input arready_q;
  input arvalid_q;
  input \gen_thread_loop[0].active_id_reg[1]_0 ;
  input \gen_thread_loop[1].active_id_reg[3]_0 ;
  input [3:0]active_cnt;
  input [6:0]Q;
  input [8:0]data_in;

  wire ASR_59_i_10_n_0;
  wire [0:0]ASR_59_reg;
  wire ASR_59_reg_0;
  wire ASR_59_reg_1;
  wire [6:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire aclk;
  wire [3:0]active_cnt;
  wire arready_q;
  wire arvalid_q;
  wire cmd_pop_1;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[1] ;
  wire [8:0]data_in;
  wire [2:0]data_out;
  wire data_ram_reg_0_1_12_15_n_0;
  wire data_ram_reg_0_1_12_15_n_1;
  wire data_ram_reg_0_1_12_15_n_2;
  wire data_ram_reg_0_1_12_15_n_3;
  wire data_ram_reg_0_1_6_11_i_3_n_0;
  wire data_ram_reg_0_1_6_11_i_4_n_0;
  wire data_ram_reg_0_1_6_11_n_1;
  wire data_ram_reg_0_1_6_11_n_2;
  wire data_ram_reg_0_1_6_11_n_5;
  wire \gen_thread_loop[0].RCount_reg[0][6] ;
  wire \gen_thread_loop[0].active_id_reg[1] ;
  wire \gen_thread_loop[0].active_id_reg[1]_0 ;
  wire \gen_thread_loop[1].active_id_reg[3] ;
  wire \gen_thread_loop[1].active_id_reg[3]_0 ;
  wire p_11_in;
  wire \pc_status_i_reg[78] ;
  wire \pc_status_i_reg[79] ;
  wire rd_ptr;
  wire \rd_ptr[0]_i_1__1_n_0 ;
  wire resetn_q;
  wire resetn_q_reg;
  wire rlast_q;
  wire rready_q;
  wire rvalid_q;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1__1_n_0 ;
  wire [1:0]NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00009009)) 
    ASR_59_i_10
       (.I0(data_ram_reg_0_1_12_15_n_3),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(data_ram_reg_0_1_12_15_n_2),
        .I4(Q[6]),
        .O(ASR_59_i_10_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_59_i_14
       (.I0(data_ram_reg_0_1_12_15_n_0),
        .I1(Q[3]),
        .I2(data_ram_reg_0_1_12_15_n_1),
        .I3(Q[2]),
        .O(ASR_59_reg_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    ASR_59_i_17
       (.I0(data_ram_reg_0_1_6_11_n_5),
        .I1(Q[1]),
        .I2(data_ram_reg_0_1_6_11_n_2),
        .I3(Q[0]),
        .O(ASR_59_reg_1));
  LUT4 #(
    .INIT(16'h8BBB)) 
    ASR_59_i_4
       (.I0(ASR_59_i_10_n_0),
        .I1(\gen_thread_loop[1].active_id_reg[3] ),
        .I2(\gen_thread_loop[0].active_id_reg[1] ),
        .I3(\gen_thread_loop[0].RCount_reg[0][6] ),
        .O(ASR_59_reg));
  LUT4 #(
    .INIT(16'h8BBB)) 
    ASR_59_i_7
       (.I0(ASR_59_i_10_n_0),
        .I1(\gen_thread_loop[1].active_id_reg[3] ),
        .I2(\gen_thread_loop[0].active_id_reg[1] ),
        .I3(\gen_thread_loop[0].RCount_reg[0][6] ),
        .O(S));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hC324)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(p_11_in),
        .I2(cmd_pop_1),
        .I3(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBD40)) 
    \cnt[1]_i_1 
       (.I0(cmd_pop_1),
        .I1(p_11_in),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(\cnt_reg_n_0_[1] ),
        .O(\cnt[1]_i_1_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(resetn_q_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(resetn_q_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_12_15
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[6:5]),
        .DIB(data_in[8:7]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({data_ram_reg_0_1_12_15_n_0,data_ram_reg_0_1_12_15_n_1}),
        .DOB({data_ram_reg_0_1_12_15_n_2,data_ram_reg_0_1_12_15_n_3}),
        .DOC(NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_11_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA({1'b0,data_in[0]}),
        .DIB(data_in[2:1]),
        .DIC(data_in[4:3]),
        .DID({1'b0,1'b0}),
        .DOA({data_out[0],data_ram_reg_0_1_6_11_n_1}),
        .DOB({data_ram_reg_0_1_6_11_n_2,data_out[1]}),
        .DOC({data_out[2],data_ram_reg_0_1_6_11_n_5}),
        .DOD(NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(p_11_in));
  LUT6 #(
    .INIT(64'h0000080088888888)) 
    data_ram_reg_0_1_6_11_i_1
       (.I0(arready_q),
        .I1(arvalid_q),
        .I2(\gen_thread_loop[0].active_id_reg[1]_0 ),
        .I3(data_ram_reg_0_1_6_11_i_3_n_0),
        .I4(data_ram_reg_0_1_6_11_i_4_n_0),
        .I5(\gen_thread_loop[1].active_id_reg[3]_0 ),
        .O(p_11_in));
  LUT2 #(
    .INIT(4'h1)) 
    data_ram_reg_0_1_6_11_i_3
       (.I0(active_cnt[2]),
        .I1(active_cnt[3]),
        .O(data_ram_reg_0_1_6_11_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    data_ram_reg_0_1_6_11_i_4
       (.I0(active_cnt[0]),
        .I1(active_cnt[1]),
        .O(data_ram_reg_0_1_6_11_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFF02FF)) 
    \gen_thread_loop[1].RCount[1][8]_i_1 
       (.I0(p_11_in),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(resetn_q),
        .I4(cmd_pop_1),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pc_status_i[78]_i_4 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\pc_status_i_reg[78] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pc_status_i[79]_i_4 
       (.I0(\gen_thread_loop[1].active_id_reg[3] ),
        .I1(rlast_q),
        .I2(rvalid_q),
        .I3(rready_q),
        .O(cmd_pop_1));
  LUT2 #(
    .INIT(4'h1)) 
    \pc_status_i[79]_i_5 
       (.I0(\cnt_reg_n_0_[0] ),
        .I1(\cnt_reg_n_0_[1] ),
        .O(\pc_status_i_reg[79] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_ptr[0]_i_1__1 
       (.I0(rready_q),
        .I1(rvalid_q),
        .I2(rlast_q),
        .I3(\gen_thread_loop[1].active_id_reg[3] ),
        .I4(rd_ptr),
        .O(\rd_ptr[0]_i_1__1_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rd_ptr[0]_i_1__1_n_0 ),
        .Q(rd_ptr),
        .R(resetn_q_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr[0]_i_1__1 
       (.I0(p_11_in),
        .I1(wr_ptr),
        .O(\wr_ptr[0]_i_1__1_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1__1_n_0 ),
        .Q(wr_ptr),
        .R(resetn_q_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v1_1_12_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized0
   (cnt,
    D,
    data_out,
    \StrbMask_q1_reg[6] ,
    BrespErrorLead4_out,
    \AWXferCount_reg[2][1] ,
    \AWXferCount_reg[2][0] ,
    \AWXferCount_reg[1][1] ,
    \AWXferCount_reg[1][0] ,
    \AWXferCount_reg[0][1] ,
    \AWXferCount_reg[0][0] ,
    \AWXferCount_reg[3][1] ,
    \AWXferCount_reg[3][0] ,
    \pc_status_i_reg[80] ,
    AWXferCountOverflow2_out,
    wcheckPop,
    resetn_q_reg,
    aclk,
    awready_q,
    awvalid_q,
    cnt_0,
    \AWXferCount_reg[3][0]_0 ,
    \AWXferCount_reg[3][1]_0 ,
    bvalid_q,
    bready_q,
    \AWXferCount_reg[3][0]_1 ,
    \bid_q_reg[0] ,
    \AWXferCount_reg[2][1]_0 ,
    \bid_q_reg[0]_0 ,
    \AWXferCount_reg[2][0]_0 ,
    \bid_q_reg[0]_1 ,
    \AWXferCount_reg[1][1]_0 ,
    \AWXferCount_reg[1][0]_0 ,
    \bid_q_reg[0]_2 ,
    \AWXferCount_reg[0][1]_0 ,
    \AWXferCount_reg[0][0]_0 ,
    bvalid_q_reg,
    \AWXferCount_reg[3][1]_1 ,
    \AWXferCount_reg[3][0]_2 ,
    \pc_status_i_reg[80]_0 ,
    AWXferCountOverflow_reg,
    resetn_q,
    \cnt_reg[1]_0 ,
    \bid_q_reg[1] ,
    bvalid_q_reg_0,
    data_in);
  output [1:0]cnt;
  output [2:0]D;
  output [17:0]data_out;
  output [3:0]\StrbMask_q1_reg[6] ;
  output BrespErrorLead4_out;
  output \AWXferCount_reg[2][1] ;
  output \AWXferCount_reg[2][0] ;
  output \AWXferCount_reg[1][1] ;
  output \AWXferCount_reg[1][0] ;
  output \AWXferCount_reg[0][1] ;
  output \AWXferCount_reg[0][0] ;
  output \AWXferCount_reg[3][1] ;
  output \AWXferCount_reg[3][0] ;
  output [0:0]\pc_status_i_reg[80] ;
  output AWXferCountOverflow2_out;
  output wcheckPop;
  input resetn_q_reg;
  input aclk;
  input awready_q;
  input awvalid_q;
  input [1:0]cnt_0;
  input \AWXferCount_reg[3][0]_0 ;
  input \AWXferCount_reg[3][1]_0 ;
  input bvalid_q;
  input bready_q;
  input \AWXferCount_reg[3][0]_1 ;
  input \bid_q_reg[0] ;
  input \AWXferCount_reg[2][1]_0 ;
  input \bid_q_reg[0]_0 ;
  input \AWXferCount_reg[2][0]_0 ;
  input \bid_q_reg[0]_1 ;
  input \AWXferCount_reg[1][1]_0 ;
  input \AWXferCount_reg[1][0]_0 ;
  input \bid_q_reg[0]_2 ;
  input \AWXferCount_reg[0][1]_0 ;
  input \AWXferCount_reg[0][0]_0 ;
  input bvalid_q_reg;
  input \AWXferCount_reg[3][1]_1 ;
  input \AWXferCount_reg[3][0]_2 ;
  input [0:0]\pc_status_i_reg[80]_0 ;
  input AWXferCountOverflow_reg;
  input resetn_q;
  input \cnt_reg[1]_0 ;
  input [1:0]\bid_q_reg[1] ;
  input bvalid_q_reg_0;
  input [19:0]data_in;

  wire [1:0]AWIDOut;
  wire AWPush;
  wire AWXferCountOverflow2_out;
  wire AWXferCountOverflow_i_2_n_0;
  wire AWXferCountOverflow_i_3_n_0;
  wire AWXferCountOverflow_reg;
  wire \AWXferCount[0][1]_i_2_n_0 ;
  wire \AWXferCount[1][1]_i_3_n_0 ;
  wire \AWXferCount[2][0]_i_3_n_0 ;
  wire \AWXferCount[2][1]_i_3_n_0 ;
  wire \AWXferCount[2][1]_i_4_n_0 ;
  wire \AWXferCount[2][1]_i_6_n_0 ;
  wire \AWXferCount[3][1]_i_3_n_0 ;
  wire \AWXferCount_reg[0][0] ;
  wire \AWXferCount_reg[0][0]_0 ;
  wire \AWXferCount_reg[0][1] ;
  wire \AWXferCount_reg[0][1]_0 ;
  wire \AWXferCount_reg[1][0] ;
  wire \AWXferCount_reg[1][0]_0 ;
  wire \AWXferCount_reg[1][1] ;
  wire \AWXferCount_reg[1][1]_0 ;
  wire \AWXferCount_reg[2][0] ;
  wire \AWXferCount_reg[2][0]_0 ;
  wire \AWXferCount_reg[2][1] ;
  wire \AWXferCount_reg[2][1]_0 ;
  wire \AWXferCount_reg[3][0] ;
  wire \AWXferCount_reg[3][0]_0 ;
  wire \AWXferCount_reg[3][0]_1 ;
  wire \AWXferCount_reg[3][0]_2 ;
  wire \AWXferCount_reg[3][1] ;
  wire \AWXferCount_reg[3][1]_0 ;
  wire \AWXferCount_reg[3][1]_1 ;
  wire BrespErrorLead4_out;
  wire [2:0]D;
  wire [3:0]\StrbMask_q1_reg[6] ;
  wire aclk;
  wire awready_q;
  wire awvalid_q;
  wire \bid_q_reg[0] ;
  wire \bid_q_reg[0]_0 ;
  wire \bid_q_reg[0]_1 ;
  wire \bid_q_reg[0]_2 ;
  wire [1:0]\bid_q_reg[1] ;
  wire bready_q;
  wire bvalid_q;
  wire bvalid_q_reg;
  wire bvalid_q_reg_0;
  wire [1:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire [1:0]cnt_0;
  wire \cnt_reg[1]_0 ;
  wire [19:0]data_in;
  wire [17:0]data_out;
  wire [0:0]\pc_status_i_reg[80] ;
  wire [0:0]\pc_status_i_reg[80]_0 ;
  wire rd_ptr;
  wire \rd_ptr[0]_i_1__0_n_0 ;
  wire resetn_q;
  wire resetn_q_reg;
  wire wcheckPop;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1_n_0 ;
  wire [1:0]NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_18_19_DOB_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_18_19_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_18_19_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    AWXferCountOverflow_i_1
       (.I0(\AWXferCount[2][1]_i_4_n_0 ),
        .I1(\cnt_reg[1]_0 ),
        .I2(AWXferCountOverflow_i_2_n_0),
        .I3(AWXferCountOverflow_i_3_n_0),
        .O(AWXferCountOverflow2_out));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    AWXferCountOverflow_i_2
       (.I0(\AWXferCount_reg[3][1]_1 ),
        .I1(\AWXferCount_reg[1][1]_0 ),
        .I2(AWIDOut[0]),
        .I3(\AWXferCount_reg[2][1]_0 ),
        .I4(AWIDOut[1]),
        .I5(\AWXferCount_reg[0][1]_0 ),
        .O(AWXferCountOverflow_i_2_n_0));
  LUT6 #(
    .INIT(64'hF0FFF000AACCAACC)) 
    AWXferCountOverflow_i_3
       (.I0(\AWXferCount_reg[2][0]_0 ),
        .I1(\AWXferCount_reg[0][0]_0 ),
        .I2(\AWXferCount_reg[3][0]_2 ),
        .I3(AWIDOut[1]),
        .I4(\AWXferCount_reg[1][0]_0 ),
        .I5(AWIDOut[0]),
        .O(AWXferCountOverflow_i_3_n_0));
  LUT6 #(
    .INIT(64'hFAFAFCFF0A0A0C00)) 
    \AWXferCount[0][0]_i_1 
       (.I0(\bid_q_reg[0]_0 ),
        .I1(\AWXferCount[2][0]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(\AWXferCount[0][1]_i_2_n_0 ),
        .I4(\bid_q_reg[0]_2 ),
        .I5(\AWXferCount_reg[0][0]_0 ),
        .O(\AWXferCount_reg[0][0] ));
  LUT6 #(
    .INIT(64'hFAFAFCFF0A0A0C00)) 
    \AWXferCount[0][1]_i_1 
       (.I0(\AWXferCount_reg[3][0]_1 ),
        .I1(\AWXferCount[2][1]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(\AWXferCount[0][1]_i_2_n_0 ),
        .I4(\bid_q_reg[0]_2 ),
        .I5(\AWXferCount_reg[0][1]_0 ),
        .O(\AWXferCount_reg[0][1] ));
  LUT6 #(
    .INIT(64'h1110111011100000)) 
    \AWXferCount[0][1]_i_2 
       (.I0(AWIDOut[1]),
        .I1(AWIDOut[0]),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt_0[0]),
        .I5(cnt_0[1]),
        .O(\AWXferCount[0][1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFAFC0A000A0C)) 
    \AWXferCount[1][0]_i_1 
       (.I0(\bid_q_reg[0]_0 ),
        .I1(\AWXferCount[2][0]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(\bid_q_reg[0]_1 ),
        .I4(\AWXferCount[1][1]_i_3_n_0 ),
        .I5(\AWXferCount_reg[1][0]_0 ),
        .O(\AWXferCount_reg[1][0] ));
  LUT6 #(
    .INIT(64'hFAFFFAFC0A000A0C)) 
    \AWXferCount[1][1]_i_1 
       (.I0(\AWXferCount_reg[3][0]_1 ),
        .I1(\AWXferCount[2][1]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(\bid_q_reg[0]_1 ),
        .I4(\AWXferCount[1][1]_i_3_n_0 ),
        .I5(\AWXferCount_reg[1][1]_0 ),
        .O(\AWXferCount_reg[1][1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF111FFFFF)) 
    \AWXferCount[1][1]_i_3 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt_0[0]),
        .I3(cnt_0[1]),
        .I4(AWIDOut[0]),
        .I5(AWIDOut[1]),
        .O(\AWXferCount[1][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFAFC0A000A0C)) 
    \AWXferCount[2][0]_i_1 
       (.I0(\bid_q_reg[0]_0 ),
        .I1(\AWXferCount[2][0]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(\bid_q_reg[0] ),
        .I4(\AWXferCount[2][1]_i_6_n_0 ),
        .I5(\AWXferCount_reg[2][0]_0 ),
        .O(\AWXferCount_reg[2][0] ));
  LUT6 #(
    .INIT(64'h02A207A752F257F7)) 
    \AWXferCount[2][0]_i_3 
       (.I0(AWIDOut[0]),
        .I1(\AWXferCount_reg[1][0]_0 ),
        .I2(AWIDOut[1]),
        .I3(\AWXferCount_reg[3][0]_2 ),
        .I4(\AWXferCount_reg[0][0]_0 ),
        .I5(\AWXferCount_reg[2][0]_0 ),
        .O(\AWXferCount[2][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFAFC0A000A0C)) 
    \AWXferCount[2][1]_i_1 
       (.I0(\AWXferCount_reg[3][0]_1 ),
        .I1(\AWXferCount[2][1]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(\bid_q_reg[0] ),
        .I4(\AWXferCount[2][1]_i_6_n_0 ),
        .I5(\AWXferCount_reg[2][1]_0 ),
        .O(\AWXferCount_reg[2][1] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \AWXferCount[2][1]_i_3 
       (.I0(AWXferCountOverflow_i_2_n_0),
        .I1(AWXferCountOverflow_i_3_n_0),
        .O(\AWXferCount[2][1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000090000090)) 
    \AWXferCount[2][1]_i_4 
       (.I0(AWIDOut[0]),
        .I1(\bid_q_reg[1] [0]),
        .I2(bvalid_q_reg_0),
        .I3(AWIDOut[1]),
        .I4(\bid_q_reg[1] [1]),
        .I5(\cnt_reg[1]_0 ),
        .O(\AWXferCount[2][1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF111FFFFF)) 
    \AWXferCount[2][1]_i_6 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt_0[0]),
        .I3(cnt_0[1]),
        .I4(AWIDOut[1]),
        .I5(AWIDOut[0]),
        .O(\AWXferCount[2][1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFAFFFAFC0A000A0C)) 
    \AWXferCount[3][0]_i_1 
       (.I0(\bid_q_reg[0]_0 ),
        .I1(\AWXferCount[2][0]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(bvalid_q_reg),
        .I4(\AWXferCount[3][1]_i_3_n_0 ),
        .I5(\AWXferCount_reg[3][0]_2 ),
        .O(\AWXferCount_reg[3][0] ));
  LUT6 #(
    .INIT(64'hFAFFFAFC0A000A0C)) 
    \AWXferCount[3][1]_i_1 
       (.I0(\AWXferCount_reg[3][0]_1 ),
        .I1(\AWXferCount[2][1]_i_3_n_0 ),
        .I2(\AWXferCount[2][1]_i_4_n_0 ),
        .I3(bvalid_q_reg),
        .I4(\AWXferCount[3][1]_i_3_n_0 ),
        .I5(\AWXferCount_reg[3][1]_1 ),
        .O(\AWXferCount_reg[3][1] ));
  LUT6 #(
    .INIT(64'h111FFFFFFFFFFFFF)) 
    \AWXferCount[3][1]_i_3 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt_0[0]),
        .I3(cnt_0[1]),
        .I4(AWIDOut[1]),
        .I5(AWIDOut[0]),
        .O(\AWXferCount[3][1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    BrespErrorLead_i_1
       (.I0(\AWXferCount_reg[3][0]_0 ),
        .I1(\AWXferCount_reg[3][1]_0 ),
        .I2(bvalid_q),
        .I3(bready_q),
        .I4(\AWXferCount[2][1]_i_4_n_0 ),
        .O(BrespErrorLead4_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \StrbMask_q1[1]_i_1 
       (.I0(data_out[7]),
        .I1(data_out[8]),
        .I2(data_out[9]),
        .O(\StrbMask_q1_reg[6] [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \StrbMask_q1[3]_i_1 
       (.I0(data_out[8]),
        .I1(data_out[9]),
        .O(\StrbMask_q1_reg[6] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \StrbMask_q1[5]_i_1 
       (.I0(data_out[7]),
        .I1(data_out[8]),
        .I2(data_out[9]),
        .O(\StrbMask_q1_reg[6] [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \StrbMask_q1[6]_i_1 
       (.I0(data_out[8]),
        .I1(data_out[7]),
        .I2(data_out[9]),
        .O(\StrbMask_q1_reg[6] [3]));
  LUT6 #(
    .INIT(64'hEE1111110FE0E0E0)) 
    \cnt[0]_i_1 
       (.I0(cnt_0[0]),
        .I1(cnt_0[1]),
        .I2(cnt[1]),
        .I3(awvalid_q),
        .I4(awready_q),
        .I5(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF800F800F8007F80)) 
    \cnt[1]_i_1 
       (.I0(awready_q),
        .I1(awvalid_q),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(cnt_0[1]),
        .I5(cnt_0[0]),
        .O(\cnt[1]_i_1_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(resetn_q_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(resetn_q_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[1:0]),
        .DIB(data_in[3:2]),
        .DIC(data_in[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(data_out[1:0]),
        .DOB(data_out[3:2]),
        .DOC(data_out[5:4]),
        .DOD(NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(AWPush));
  LUT2 #(
    .INIT(4'h8)) 
    data_ram_reg_0_1_0_5_i_1
       (.I0(awvalid_q),
        .I1(awready_q),
        .O(AWPush));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_12_17
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[13:12]),
        .DIB(data_in[15:14]),
        .DIC(data_in[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(data_out[13:12]),
        .DOB(data_out[15:14]),
        .DOC(data_out[17:16]),
        .DOD(NLW_data_ram_reg_0_1_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(AWPush));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_18_19
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[19:18]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(AWIDOut),
        .DOB(NLW_data_ram_reg_0_1_18_19_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_data_ram_reg_0_1_18_19_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_data_ram_reg_0_1_18_19_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(AWPush));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(data_in[7:6]),
        .DIB(data_in[9:8]),
        .DIC(data_in[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(data_out[7:6]),
        .DOB(data_out[9:8]),
        .DOC(data_out[11:10]),
        .DOD(NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(AWPush));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \mask_shift_stage_2[0]_i_1 
       (.I0(data_out[0]),
        .I1(data_out[9]),
        .I2(data_out[8]),
        .I3(data_out[7]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \mask_shift_stage_2[1]_i_1 
       (.I0(data_out[1]),
        .I1(data_out[8]),
        .I2(data_out[9]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0222)) 
    \mask_shift_stage_2[2]_i_1 
       (.I0(data_out[2]),
        .I1(data_out[9]),
        .I2(data_out[8]),
        .I3(data_out[7]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFAEAAAAAAAAAA)) 
    \pc_status_i[80]_i_1 
       (.I0(\pc_status_i_reg[80]_0 ),
        .I1(cnt[1]),
        .I2(cnt[0]),
        .I3(AWPush),
        .I4(AWXferCountOverflow_reg),
        .I5(resetn_q),
        .O(\pc_status_i_reg[80] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h111FEEE0)) 
    \rd_ptr[0]_i_1__0 
       (.I0(cnt_0[1]),
        .I1(cnt_0[0]),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(rd_ptr),
        .O(\rd_ptr[0]_i_1__0_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rd_ptr[0]_i_1__0_n_0 ),
        .Q(rd_ptr),
        .R(resetn_q_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_i_1 
       (.I0(cnt[0]),
        .I1(cnt[1]),
        .I2(cnt_0[0]),
        .I3(cnt_0[1]),
        .O(wcheckPop));
  LUT3 #(
    .INIT(8'h78)) 
    \wr_ptr[0]_i_1 
       (.I0(awready_q),
        .I1(awvalid_q),
        .I2(wr_ptr),
        .O(\wr_ptr[0]_i_1_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1_n_0 ),
        .Q(wr_ptr),
        .R(resetn_q_reg));
endmodule

(* ORIG_REF_NAME = "axi_protocol_checker_v1_1_12_syn_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized1
   (WDataNumError1_reg,
    cnt,
    \cnt_reg[1]_0 ,
    D,
    data_out,
    resetn_q_reg,
    aclk,
    p_1_in,
    resetn_q,
    cnt_0,
    wvalid_q,
    wready_q,
    wlast_q,
    \pc_status_i_reg[81] ,
    \wstrb_q_reg[7] ,
    first_strb,
    Q,
    \WCountIn_reg[8] );
  output WDataNumError1_reg;
  output [1:0]cnt;
  output \cnt_reg[1]_0 ;
  output [0:0]D;
  output [16:0]data_out;
  input resetn_q_reg;
  input aclk;
  input p_1_in;
  input resetn_q;
  input [1:0]cnt_0;
  input wvalid_q;
  input wready_q;
  input wlast_q;
  input [0:0]\pc_status_i_reg[81] ;
  input [7:0]\wstrb_q_reg[7] ;
  input first_strb;
  input [7:0]Q;
  input [8:0]\WCountIn_reg[8] ;

  wire [0:0]D;
  wire [7:0]Q;
  wire [8:0]\WCountIn_reg[8] ;
  wire WDataNumError1_reg;
  wire WLastPush;
  wire aclk;
  wire [1:0]cnt;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire [1:0]cnt_0;
  wire \cnt_reg[1]_0 ;
  wire [16:0]data_out;
  wire data_ram_reg_0_1_0_5_i_2_n_0;
  wire data_ram_reg_0_1_0_5_i_3_n_0;
  wire data_ram_reg_0_1_0_5_i_4_n_0;
  wire data_ram_reg_0_1_0_5_i_5_n_0;
  wire data_ram_reg_0_1_0_5_i_6_n_0;
  wire data_ram_reg_0_1_0_5_i_7_n_0;
  wire data_ram_reg_0_1_6_11_i_1__1_n_0;
  wire data_ram_reg_0_1_6_11_i_2__0_n_0;
  wire first_strb;
  wire p_1_in;
  wire [0:0]\pc_status_i_reg[81] ;
  wire rd_ptr;
  wire \rd_ptr[0]_i_1_n_0 ;
  wire resetn_q;
  wire resetn_q_reg;
  wire wlast_q;
  wire wr_ptr;
  wire \wr_ptr[0]_i_1__0_n_0 ;
  wire wready_q;
  wire [7:0]\wstrb_q_reg[7] ;
  wire wvalid_q;
  wire [1:0]NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED;
  wire [1:1]NLW_data_ram_reg_0_1_12_16_DOC_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_12_16_DOD_UNCONNECTED;
  wire [1:0]NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8880888088800000)) 
    WDataNumError1_i_1
       (.I0(p_1_in),
        .I1(resetn_q),
        .I2(cnt[1]),
        .I3(cnt[0]),
        .I4(cnt_0[1]),
        .I5(cnt_0[0]),
        .O(WDataNumError1_reg));
  LUT6 #(
    .INIT(64'h5AAAAAAA25555555)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg[1]_0 ),
        .I1(cnt[1]),
        .I2(wlast_q),
        .I3(wready_q),
        .I4(wvalid_q),
        .I5(cnt[0]),
        .O(\cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FF80007F)) 
    \cnt[1]_i_1 
       (.I0(wvalid_q),
        .I1(wready_q),
        .I2(wlast_q),
        .I3(cnt[0]),
        .I4(cnt[1]),
        .I5(\cnt_reg[1]_0 ),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \cnt[1]_i_2 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt_0[1]),
        .I3(cnt_0[0]),
        .O(\cnt_reg[1]_0 ));
  FDRE \cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt[0]),
        .R(resetn_q_reg));
  FDRE \cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt[1]),
        .R(resetn_q_reg));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_0_5
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA({data_ram_reg_0_1_0_5_i_2_n_0,data_ram_reg_0_1_0_5_i_3_n_0}),
        .DIB({data_ram_reg_0_1_0_5_i_4_n_0,data_ram_reg_0_1_0_5_i_5_n_0}),
        .DIC({data_ram_reg_0_1_0_5_i_6_n_0,data_ram_reg_0_1_0_5_i_7_n_0}),
        .DID({1'b0,1'b0}),
        .DOA(data_out[1:0]),
        .DOB(data_out[3:2]),
        .DOC(data_out[5:4]),
        .DOD(NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(WLastPush));
  LUT3 #(
    .INIT(8'h80)) 
    data_ram_reg_0_1_0_5_i_1__0
       (.I0(wlast_q),
        .I1(wready_q),
        .I2(wvalid_q),
        .O(WLastPush));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_2
       (.I0(\wstrb_q_reg[7] [1]),
        .I1(first_strb),
        .I2(Q[1]),
        .O(data_ram_reg_0_1_0_5_i_2_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_3
       (.I0(\wstrb_q_reg[7] [0]),
        .I1(first_strb),
        .I2(Q[0]),
        .O(data_ram_reg_0_1_0_5_i_3_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_4
       (.I0(\wstrb_q_reg[7] [3]),
        .I1(first_strb),
        .I2(Q[3]),
        .O(data_ram_reg_0_1_0_5_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_5
       (.I0(\wstrb_q_reg[7] [2]),
        .I1(first_strb),
        .I2(Q[2]),
        .O(data_ram_reg_0_1_0_5_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_6
       (.I0(\wstrb_q_reg[7] [5]),
        .I1(first_strb),
        .I2(Q[5]),
        .O(data_ram_reg_0_1_0_5_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_0_5_i_7
       (.I0(\wstrb_q_reg[7] [4]),
        .I1(first_strb),
        .I2(Q[4]),
        .O(data_ram_reg_0_1_0_5_i_7_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_12_16
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA(\WCountIn_reg[8] [5:4]),
        .DIB(\WCountIn_reg[8] [7:6]),
        .DIC({1'b0,\WCountIn_reg[8] [8]}),
        .DID({1'b0,1'b0}),
        .DOA(data_out[13:12]),
        .DOB(data_out[15:14]),
        .DOC({NLW_data_ram_reg_0_1_12_16_DOC_UNCONNECTED[1],data_out[16]}),
        .DOD(NLW_data_ram_reg_0_1_12_16_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(WLastPush));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M data_ram_reg_0_1_6_11
       (.ADDRA({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRB({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRC({1'b0,1'b0,1'b0,1'b0,rd_ptr}),
        .ADDRD({1'b0,1'b0,1'b0,1'b0,wr_ptr}),
        .DIA({data_ram_reg_0_1_6_11_i_1__1_n_0,data_ram_reg_0_1_6_11_i_2__0_n_0}),
        .DIB(\WCountIn_reg[8] [1:0]),
        .DIC(\WCountIn_reg[8] [3:2]),
        .DID({1'b0,1'b0}),
        .DOA(data_out[7:6]),
        .DOB(data_out[9:8]),
        .DOC(data_out[11:10]),
        .DOD(NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(aclk),
        .WE(WLastPush));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_6_11_i_1__1
       (.I0(\wstrb_q_reg[7] [7]),
        .I1(first_strb),
        .I2(Q[7]),
        .O(data_ram_reg_0_1_6_11_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    data_ram_reg_0_1_6_11_i_2__0
       (.I0(\wstrb_q_reg[7] [6]),
        .I1(first_strb),
        .I2(Q[6]),
        .O(data_ram_reg_0_1_6_11_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hAEAAAAAA)) 
    \pc_status_i[81]_i_2 
       (.I0(\pc_status_i_reg[81] ),
        .I1(resetn_q),
        .I2(cnt[0]),
        .I3(cnt[1]),
        .I4(WLastPush),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h111FEEE0)) 
    \rd_ptr[0]_i_1 
       (.I0(cnt[1]),
        .I1(cnt[0]),
        .I2(cnt_0[1]),
        .I3(cnt_0[0]),
        .I4(rd_ptr),
        .O(\rd_ptr[0]_i_1_n_0 ));
  FDRE \rd_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rd_ptr[0]_i_1_n_0 ),
        .Q(rd_ptr),
        .R(resetn_q_reg));
  LUT4 #(
    .INIT(16'h7F80)) 
    \wr_ptr[0]_i_1__0 
       (.I0(wvalid_q),
        .I1(wready_q),
        .I2(wlast_q),
        .I3(wr_ptr),
        .O(\wr_ptr[0]_i_1__0_n_0 ));
  FDRE \wr_ptr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wr_ptr[0]_i_1__0_n_0 ),
        .Q(wr_ptr),
        .R(resetn_q_reg));
endmodule

(* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "2" *) 
(* C_AXI_PROTOCOL = "0" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_PC_AR_MAXWAITS = "0" *) (* C_PC_AW_MAXWAITS = "0" *) (* C_PC_B_MAXWAITS = "0" *) 
(* C_PC_EXMON_WIDTH = "0" *) (* C_PC_HAS_SYSTEM_RESET = "0" *) (* C_PC_MAXRBURSTS = "2" *) 
(* C_PC_MAXWBURSTS = "2" *) (* C_PC_MAX_BURST_LENGTH = "256" *) (* C_PC_MESSAGE_LEVEL = "2" *) 
(* C_PC_R_MAXWAITS = "0" *) (* C_PC_STATUS_WIDTH = "97" *) (* C_PC_SUPPORTS_NARROW_BURST = "1" *) 
(* C_PC_W_MAXWAITS = "0" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* LP_AXI_SIZE = "3'b011" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top
   (pc_status,
    pc_asserted,
    system_resetn,
    aclk,
    aresetn,
    pc_axi_awid,
    pc_axi_awaddr,
    pc_axi_awlen,
    pc_axi_awsize,
    pc_axi_awburst,
    pc_axi_awlock,
    pc_axi_awcache,
    pc_axi_awprot,
    pc_axi_awqos,
    pc_axi_awregion,
    pc_axi_awuser,
    pc_axi_awvalid,
    pc_axi_awready,
    pc_axi_wid,
    pc_axi_wlast,
    pc_axi_wdata,
    pc_axi_wstrb,
    pc_axi_wuser,
    pc_axi_wvalid,
    pc_axi_wready,
    pc_axi_bid,
    pc_axi_bresp,
    pc_axi_buser,
    pc_axi_bvalid,
    pc_axi_bready,
    pc_axi_arid,
    pc_axi_araddr,
    pc_axi_arlen,
    pc_axi_arsize,
    pc_axi_arburst,
    pc_axi_arlock,
    pc_axi_arcache,
    pc_axi_arprot,
    pc_axi_arqos,
    pc_axi_arregion,
    pc_axi_aruser,
    pc_axi_arvalid,
    pc_axi_arready,
    pc_axi_rid,
    pc_axi_rlast,
    pc_axi_rdata,
    pc_axi_rresp,
    pc_axi_ruser,
    pc_axi_rvalid,
    pc_axi_rready);
  output [96:0]pc_status;
  output pc_asserted;
  input system_resetn;
  input aclk;
  input aresetn;
  input [1:0]pc_axi_awid;
  input [31:0]pc_axi_awaddr;
  input [7:0]pc_axi_awlen;
  input [2:0]pc_axi_awsize;
  input [1:0]pc_axi_awburst;
  input [0:0]pc_axi_awlock;
  input [3:0]pc_axi_awcache;
  input [2:0]pc_axi_awprot;
  input [3:0]pc_axi_awqos;
  input [3:0]pc_axi_awregion;
  input [0:0]pc_axi_awuser;
  input pc_axi_awvalid;
  input pc_axi_awready;
  input [1:0]pc_axi_wid;
  input pc_axi_wlast;
  input [63:0]pc_axi_wdata;
  input [7:0]pc_axi_wstrb;
  input [0:0]pc_axi_wuser;
  input pc_axi_wvalid;
  input pc_axi_wready;
  input [1:0]pc_axi_bid;
  input [1:0]pc_axi_bresp;
  input [0:0]pc_axi_buser;
  input pc_axi_bvalid;
  input pc_axi_bready;
  input [1:0]pc_axi_arid;
  input [31:0]pc_axi_araddr;
  input [7:0]pc_axi_arlen;
  input [2:0]pc_axi_arsize;
  input [1:0]pc_axi_arburst;
  input [0:0]pc_axi_arlock;
  input [3:0]pc_axi_arcache;
  input [2:0]pc_axi_arprot;
  input [3:0]pc_axi_arqos;
  input [3:0]pc_axi_arregion;
  input [0:0]pc_axi_aruser;
  input pc_axi_arvalid;
  input pc_axi_arready;
  input [1:0]pc_axi_rid;
  input pc_axi_rlast;
  input [63:0]pc_axi_rdata;
  input [1:0]pc_axi_rresp;
  input [0:0]pc_axi_ruser;
  input pc_axi_rvalid;
  input pc_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire [31:0]araddr_q;
  wire [1:0]arburst_q;
  wire [3:0]arcache_q;
  wire aresetn;
  wire [1:0]arid_q;
  wire [7:0]arlen_q;
  wire [2:0]arprot_q;
  wire [3:0]arqos_q;
  wire arready_q;
  wire [3:0]arregion_q;
  wire [2:0]arsize_q;
  wire aruser_q;
  wire arvalid_q;
  wire [31:0]awaddr_q;
  wire [1:0]awburst_q;
  wire [3:0]awcache_q;
  wire [1:0]awid_q;
  wire [7:0]awlen_q;
  wire [2:0]awprot_q;
  wire [3:0]awqos_q;
  wire awready_q;
  wire [3:0]awregion_q;
  wire [2:0]awsize_q;
  wire awuser_q;
  wire awvalid_q;
  wire [1:0]bid_q;
  wire bready_q;
  wire [1:0]bresp_q;
  wire buser_q;
  wire bvalid_q;
  wire p_0_in;
  wire pc_asserted;
  wire [31:0]pc_axi_araddr;
  wire [1:0]pc_axi_arburst;
  wire [3:0]pc_axi_arcache;
  wire [1:0]pc_axi_arid;
  wire [7:0]pc_axi_arlen;
  wire [2:0]pc_axi_arprot;
  wire [3:0]pc_axi_arqos;
  wire pc_axi_arready;
  wire [3:0]pc_axi_arregion;
  wire [2:0]pc_axi_arsize;
  wire [0:0]pc_axi_aruser;
  wire pc_axi_arvalid;
  wire [31:0]pc_axi_awaddr;
  wire [1:0]pc_axi_awburst;
  wire [3:0]pc_axi_awcache;
  wire [1:0]pc_axi_awid;
  wire [7:0]pc_axi_awlen;
  wire [2:0]pc_axi_awprot;
  wire [3:0]pc_axi_awqos;
  wire pc_axi_awready;
  wire [3:0]pc_axi_awregion;
  wire [2:0]pc_axi_awsize;
  wire [0:0]pc_axi_awuser;
  wire pc_axi_awvalid;
  wire [1:0]pc_axi_bid;
  wire pc_axi_bready;
  wire [1:0]pc_axi_bresp;
  wire [0:0]pc_axi_buser;
  wire pc_axi_bvalid;
  wire [63:0]pc_axi_rdata;
  wire [1:0]pc_axi_rid;
  wire pc_axi_rlast;
  wire pc_axi_rready;
  wire [1:0]pc_axi_rresp;
  wire [0:0]pc_axi_ruser;
  wire pc_axi_rvalid;
  wire [63:0]pc_axi_wdata;
  wire pc_axi_wlast;
  wire pc_axi_wready;
  wire [7:0]pc_axi_wstrb;
  wire [0:0]pc_axi_wuser;
  wire pc_axi_wvalid;
  wire [81:0]\^pc_status ;
  wire [63:0]rdata_q;
  wire resetn_q;
  wire [1:0]rid_q;
  wire rlast_q;
  wire rready_q;
  wire [1:0]rresp_q;
  wire ruser_q;
  wire rvalid_q;
  wire [63:0]wdata_q;
  wire wlast_q;
  wire wready_q;
  wire [7:0]wstrb_q;
  wire wuser_q;
  wire wvalid_q;

  assign pc_status[96] = \<const0> ;
  assign pc_status[95] = \<const0> ;
  assign pc_status[94] = \<const0> ;
  assign pc_status[93] = \<const0> ;
  assign pc_status[92] = \<const0> ;
  assign pc_status[91] = \<const0> ;
  assign pc_status[90] = \<const0> ;
  assign pc_status[89] = \<const0> ;
  assign pc_status[88] = \<const0> ;
  assign pc_status[87] = \<const0> ;
  assign pc_status[86] = \<const0> ;
  assign pc_status[85] = \<const0> ;
  assign pc_status[84] = \<const0> ;
  assign pc_status[83] = \<const0> ;
  assign pc_status[82] = \<const0> ;
  assign pc_status[81:73] = \^pc_status [81:73];
  assign pc_status[72] = \<const0> ;
  assign pc_status[71] = \<const0> ;
  assign pc_status[70] = \<const0> ;
  assign pc_status[69] = \<const0> ;
  assign pc_status[68] = \<const0> ;
  assign pc_status[67] = \<const0> ;
  assign pc_status[66:62] = \^pc_status [66:62];
  assign pc_status[61] = \<const0> ;
  assign pc_status[60:58] = \^pc_status [60:58];
  assign pc_status[57] = \<const0> ;
  assign pc_status[56:52] = \^pc_status [56:52];
  assign pc_status[51] = \<const0> ;
  assign pc_status[50:46] = \^pc_status [50:46];
  assign pc_status[45] = \<const0> ;
  assign pc_status[44:41] = \^pc_status [44:41];
  assign pc_status[40] = \<const0> ;
  assign pc_status[39:37] = \^pc_status [39:37];
  assign pc_status[36] = \<const0> ;
  assign pc_status[35:32] = \^pc_status [35:32];
  assign pc_status[31] = \<const0> ;
  assign pc_status[30] = \<const0> ;
  assign pc_status[29] = \<const0> ;
  assign pc_status[28] = \<const0> ;
  assign pc_status[27:24] = \^pc_status [27:24];
  assign pc_status[23] = \<const0> ;
  assign pc_status[22:21] = \^pc_status [22:21];
  assign pc_status[20] = \<const0> ;
  assign pc_status[19:15] = \^pc_status [19:15];
  assign pc_status[14] = \<const0> ;
  assign pc_status[13:9] = \^pc_status [13:9];
  assign pc_status[8] = \<const0> ;
  assign pc_status[7:4] = \^pc_status [7:4];
  assign pc_status[3] = \<const0> ;
  assign pc_status[2:0] = \^pc_status [2:0];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_core CORE
       (.Q(awaddr_q),
        .aclk(aclk),
        .\araddr_q_reg[31] (araddr_q),
        .\arburst_q_reg[1] (arburst_q),
        .\arcache_q_reg[3] (arcache_q),
        .\arid_q_reg[1] (arid_q),
        .\arlen_q_reg[7] (arlen_q),
        .\arprot_q_reg[2] (arprot_q),
        .\arqos_q_reg[3] (arqos_q),
        .arready_q(arready_q),
        .\arregion_q_reg[3] (arregion_q),
        .\arsize_q_reg[2] (arsize_q),
        .aruser_q(aruser_q),
        .arvalid_q(arvalid_q),
        .\awburst_q_reg[1] (awburst_q),
        .\awcache_q_reg[3] (awcache_q),
        .\awid_q_reg[1] (awid_q),
        .\awlen_q_reg[7] (awlen_q),
        .\awprot_q_reg[2] (awprot_q),
        .\awqos_q_reg[3] (awqos_q),
        .awready_q(awready_q),
        .\awregion_q_reg[3] (awregion_q),
        .\awsize_q_reg[2] (awsize_q),
        .awuser_q(awuser_q),
        .awvalid_q(awvalid_q),
        .\bid_q_reg[1] (bid_q),
        .bready_q(bready_q),
        .\bresp_q_reg[1] (bresp_q),
        .buser_q(buser_q),
        .bvalid_q(bvalid_q),
        .pc_asserted_i_reg(p_0_in),
        .\pc_status[81] ({\^pc_status [81:73],\^pc_status [66:62],\^pc_status [60:58],\^pc_status [56:52],\^pc_status [50:46],\^pc_status [44:41],\^pc_status [39:37],\^pc_status [35:32],\^pc_status [27:24],\^pc_status [22:21],\^pc_status [19:15],\^pc_status [13:9],\^pc_status [7:4],\^pc_status [2:0]}),
        .\rdata_q_reg[63] (rdata_q),
        .resetn_q(resetn_q),
        .\rid_q_reg[1] (rid_q),
        .rlast_q(rlast_q),
        .rready_q(rready_q),
        .\rresp_q_reg[1] (rresp_q),
        .ruser_q(ruser_q),
        .rvalid_q(rvalid_q),
        .\wdata_q_reg[63] (wdata_q),
        .wlast_q(wlast_q),
        .wready_q(wready_q),
        .\wstrb_q_reg[7] (wstrb_q),
        .wuser_q(wuser_q),
        .wvalid_q(wvalid_q));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_reporter REP
       (.aclk(aclk),
        .pc_status({\^pc_status [81:73],\^pc_status [66:62],\^pc_status [60:58],\^pc_status [56:52],\^pc_status [50:46],\^pc_status [44:41],\^pc_status [39:37],\^pc_status [35:32],\^pc_status [27:24],\^pc_status [22:21],\^pc_status [19:15],\^pc_status [13:9],\^pc_status [7:4],\^pc_status [2:0]}));
  FDRE \araddr_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[0]),
        .Q(araddr_q[0]),
        .R(1'b0));
  FDRE \araddr_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[10]),
        .Q(araddr_q[10]),
        .R(1'b0));
  FDRE \araddr_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[11]),
        .Q(araddr_q[11]),
        .R(1'b0));
  FDRE \araddr_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[12]),
        .Q(araddr_q[12]),
        .R(1'b0));
  FDRE \araddr_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[13]),
        .Q(araddr_q[13]),
        .R(1'b0));
  FDRE \araddr_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[14]),
        .Q(araddr_q[14]),
        .R(1'b0));
  FDRE \araddr_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[15]),
        .Q(araddr_q[15]),
        .R(1'b0));
  FDRE \araddr_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[16]),
        .Q(araddr_q[16]),
        .R(1'b0));
  FDRE \araddr_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[17]),
        .Q(araddr_q[17]),
        .R(1'b0));
  FDRE \araddr_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[18]),
        .Q(araddr_q[18]),
        .R(1'b0));
  FDRE \araddr_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[19]),
        .Q(araddr_q[19]),
        .R(1'b0));
  FDRE \araddr_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[1]),
        .Q(araddr_q[1]),
        .R(1'b0));
  FDRE \araddr_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[20]),
        .Q(araddr_q[20]),
        .R(1'b0));
  FDRE \araddr_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[21]),
        .Q(araddr_q[21]),
        .R(1'b0));
  FDRE \araddr_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[22]),
        .Q(araddr_q[22]),
        .R(1'b0));
  FDRE \araddr_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[23]),
        .Q(araddr_q[23]),
        .R(1'b0));
  FDRE \araddr_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[24]),
        .Q(araddr_q[24]),
        .R(1'b0));
  FDRE \araddr_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[25]),
        .Q(araddr_q[25]),
        .R(1'b0));
  FDRE \araddr_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[26]),
        .Q(araddr_q[26]),
        .R(1'b0));
  FDRE \araddr_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[27]),
        .Q(araddr_q[27]),
        .R(1'b0));
  FDRE \araddr_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[28]),
        .Q(araddr_q[28]),
        .R(1'b0));
  FDRE \araddr_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[29]),
        .Q(araddr_q[29]),
        .R(1'b0));
  FDRE \araddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[2]),
        .Q(araddr_q[2]),
        .R(1'b0));
  FDRE \araddr_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[30]),
        .Q(araddr_q[30]),
        .R(1'b0));
  FDRE \araddr_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[31]),
        .Q(araddr_q[31]),
        .R(1'b0));
  FDRE \araddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[3]),
        .Q(araddr_q[3]),
        .R(1'b0));
  FDRE \araddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[4]),
        .Q(araddr_q[4]),
        .R(1'b0));
  FDRE \araddr_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[5]),
        .Q(araddr_q[5]),
        .R(1'b0));
  FDRE \araddr_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[6]),
        .Q(araddr_q[6]),
        .R(1'b0));
  FDRE \araddr_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[7]),
        .Q(araddr_q[7]),
        .R(1'b0));
  FDRE \araddr_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[8]),
        .Q(araddr_q[8]),
        .R(1'b0));
  FDRE \araddr_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_araddr[9]),
        .Q(araddr_q[9]),
        .R(1'b0));
  FDRE \arburst_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arburst[0]),
        .Q(arburst_q[0]),
        .R(1'b0));
  FDRE \arburst_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arburst[1]),
        .Q(arburst_q[1]),
        .R(1'b0));
  FDRE \arcache_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[0]),
        .Q(arcache_q[0]),
        .R(1'b0));
  FDRE \arcache_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[1]),
        .Q(arcache_q[1]),
        .R(1'b0));
  FDRE \arcache_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[2]),
        .Q(arcache_q[2]),
        .R(1'b0));
  FDRE \arcache_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arcache[3]),
        .Q(arcache_q[3]),
        .R(1'b0));
  FDRE \arid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arid[0]),
        .Q(arid_q[0]),
        .R(1'b0));
  FDRE \arid_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arid[1]),
        .Q(arid_q[1]),
        .R(1'b0));
  FDRE \arlen_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[0]),
        .Q(arlen_q[0]),
        .R(1'b0));
  FDRE \arlen_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[1]),
        .Q(arlen_q[1]),
        .R(1'b0));
  FDRE \arlen_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[2]),
        .Q(arlen_q[2]),
        .R(1'b0));
  FDRE \arlen_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[3]),
        .Q(arlen_q[3]),
        .R(1'b0));
  FDRE \arlen_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[4]),
        .Q(arlen_q[4]),
        .R(1'b0));
  FDRE \arlen_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[5]),
        .Q(arlen_q[5]),
        .R(1'b0));
  FDRE \arlen_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[6]),
        .Q(arlen_q[6]),
        .R(1'b0));
  FDRE \arlen_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arlen[7]),
        .Q(arlen_q[7]),
        .R(1'b0));
  FDRE \arprot_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[0]),
        .Q(arprot_q[0]),
        .R(1'b0));
  FDRE \arprot_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[1]),
        .Q(arprot_q[1]),
        .R(1'b0));
  FDRE \arprot_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arprot[2]),
        .Q(arprot_q[2]),
        .R(1'b0));
  FDRE \arqos_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[0]),
        .Q(arqos_q[0]),
        .R(1'b0));
  FDRE \arqos_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[1]),
        .Q(arqos_q[1]),
        .R(1'b0));
  FDRE \arqos_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[2]),
        .Q(arqos_q[2]),
        .R(1'b0));
  FDRE \arqos_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arqos[3]),
        .Q(arqos_q[3]),
        .R(1'b0));
  FDRE arready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arready),
        .Q(arready_q),
        .R(1'b0));
  FDRE \arregion_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[0]),
        .Q(arregion_q[0]),
        .R(1'b0));
  FDRE \arregion_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[1]),
        .Q(arregion_q[1]),
        .R(1'b0));
  FDRE \arregion_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[2]),
        .Q(arregion_q[2]),
        .R(1'b0));
  FDRE \arregion_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arregion[3]),
        .Q(arregion_q[3]),
        .R(1'b0));
  FDRE \arsize_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arsize[0]),
        .Q(arsize_q[0]),
        .R(1'b0));
  FDRE \arsize_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arsize[1]),
        .Q(arsize_q[1]),
        .R(1'b0));
  FDRE \arsize_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arsize[2]),
        .Q(arsize_q[2]),
        .R(1'b0));
  FDRE \aruser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_aruser),
        .Q(aruser_q),
        .R(1'b0));
  FDRE arvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_arvalid),
        .Q(arvalid_q),
        .R(1'b0));
  FDRE \awaddr_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[0]),
        .Q(awaddr_q[0]),
        .R(1'b0));
  FDRE \awaddr_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[10]),
        .Q(awaddr_q[10]),
        .R(1'b0));
  FDRE \awaddr_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[11]),
        .Q(awaddr_q[11]),
        .R(1'b0));
  FDRE \awaddr_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[12]),
        .Q(awaddr_q[12]),
        .R(1'b0));
  FDRE \awaddr_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[13]),
        .Q(awaddr_q[13]),
        .R(1'b0));
  FDRE \awaddr_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[14]),
        .Q(awaddr_q[14]),
        .R(1'b0));
  FDRE \awaddr_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[15]),
        .Q(awaddr_q[15]),
        .R(1'b0));
  FDRE \awaddr_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[16]),
        .Q(awaddr_q[16]),
        .R(1'b0));
  FDRE \awaddr_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[17]),
        .Q(awaddr_q[17]),
        .R(1'b0));
  FDRE \awaddr_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[18]),
        .Q(awaddr_q[18]),
        .R(1'b0));
  FDRE \awaddr_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[19]),
        .Q(awaddr_q[19]),
        .R(1'b0));
  FDRE \awaddr_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[1]),
        .Q(awaddr_q[1]),
        .R(1'b0));
  FDRE \awaddr_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[20]),
        .Q(awaddr_q[20]),
        .R(1'b0));
  FDRE \awaddr_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[21]),
        .Q(awaddr_q[21]),
        .R(1'b0));
  FDRE \awaddr_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[22]),
        .Q(awaddr_q[22]),
        .R(1'b0));
  FDRE \awaddr_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[23]),
        .Q(awaddr_q[23]),
        .R(1'b0));
  FDRE \awaddr_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[24]),
        .Q(awaddr_q[24]),
        .R(1'b0));
  FDRE \awaddr_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[25]),
        .Q(awaddr_q[25]),
        .R(1'b0));
  FDRE \awaddr_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[26]),
        .Q(awaddr_q[26]),
        .R(1'b0));
  FDRE \awaddr_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[27]),
        .Q(awaddr_q[27]),
        .R(1'b0));
  FDRE \awaddr_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[28]),
        .Q(awaddr_q[28]),
        .R(1'b0));
  FDRE \awaddr_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[29]),
        .Q(awaddr_q[29]),
        .R(1'b0));
  FDRE \awaddr_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[2]),
        .Q(awaddr_q[2]),
        .R(1'b0));
  FDRE \awaddr_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[30]),
        .Q(awaddr_q[30]),
        .R(1'b0));
  FDRE \awaddr_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[31]),
        .Q(awaddr_q[31]),
        .R(1'b0));
  FDRE \awaddr_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[3]),
        .Q(awaddr_q[3]),
        .R(1'b0));
  FDRE \awaddr_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[4]),
        .Q(awaddr_q[4]),
        .R(1'b0));
  FDRE \awaddr_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[5]),
        .Q(awaddr_q[5]),
        .R(1'b0));
  FDRE \awaddr_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[6]),
        .Q(awaddr_q[6]),
        .R(1'b0));
  FDRE \awaddr_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[7]),
        .Q(awaddr_q[7]),
        .R(1'b0));
  FDRE \awaddr_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[8]),
        .Q(awaddr_q[8]),
        .R(1'b0));
  FDRE \awaddr_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awaddr[9]),
        .Q(awaddr_q[9]),
        .R(1'b0));
  FDRE \awburst_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awburst[0]),
        .Q(awburst_q[0]),
        .R(1'b0));
  FDRE \awburst_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awburst[1]),
        .Q(awburst_q[1]),
        .R(1'b0));
  FDRE \awcache_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[0]),
        .Q(awcache_q[0]),
        .R(1'b0));
  FDRE \awcache_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[1]),
        .Q(awcache_q[1]),
        .R(1'b0));
  FDRE \awcache_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[2]),
        .Q(awcache_q[2]),
        .R(1'b0));
  FDRE \awcache_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awcache[3]),
        .Q(awcache_q[3]),
        .R(1'b0));
  FDRE \awid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awid[0]),
        .Q(awid_q[0]),
        .R(1'b0));
  FDRE \awid_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awid[1]),
        .Q(awid_q[1]),
        .R(1'b0));
  FDRE \awlen_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[0]),
        .Q(awlen_q[0]),
        .R(1'b0));
  FDRE \awlen_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[1]),
        .Q(awlen_q[1]),
        .R(1'b0));
  FDRE \awlen_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[2]),
        .Q(awlen_q[2]),
        .R(1'b0));
  FDRE \awlen_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[3]),
        .Q(awlen_q[3]),
        .R(1'b0));
  FDRE \awlen_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[4]),
        .Q(awlen_q[4]),
        .R(1'b0));
  FDRE \awlen_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[5]),
        .Q(awlen_q[5]),
        .R(1'b0));
  FDRE \awlen_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[6]),
        .Q(awlen_q[6]),
        .R(1'b0));
  FDRE \awlen_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awlen[7]),
        .Q(awlen_q[7]),
        .R(1'b0));
  FDRE \awprot_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[0]),
        .Q(awprot_q[0]),
        .R(1'b0));
  FDRE \awprot_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[1]),
        .Q(awprot_q[1]),
        .R(1'b0));
  FDRE \awprot_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awprot[2]),
        .Q(awprot_q[2]),
        .R(1'b0));
  FDRE \awqos_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[0]),
        .Q(awqos_q[0]),
        .R(1'b0));
  FDRE \awqos_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[1]),
        .Q(awqos_q[1]),
        .R(1'b0));
  FDRE \awqos_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[2]),
        .Q(awqos_q[2]),
        .R(1'b0));
  FDRE \awqos_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awqos[3]),
        .Q(awqos_q[3]),
        .R(1'b0));
  FDRE awready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awready),
        .Q(awready_q),
        .R(1'b0));
  FDRE \awregion_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[0]),
        .Q(awregion_q[0]),
        .R(1'b0));
  FDRE \awregion_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[1]),
        .Q(awregion_q[1]),
        .R(1'b0));
  FDRE \awregion_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[2]),
        .Q(awregion_q[2]),
        .R(1'b0));
  FDRE \awregion_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awregion[3]),
        .Q(awregion_q[3]),
        .R(1'b0));
  FDRE \awsize_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awsize[0]),
        .Q(awsize_q[0]),
        .R(1'b0));
  FDRE \awsize_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awsize[1]),
        .Q(awsize_q[1]),
        .R(1'b0));
  FDRE \awsize_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awsize[2]),
        .Q(awsize_q[2]),
        .R(1'b0));
  FDRE \awuser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awuser),
        .Q(awuser_q),
        .R(1'b0));
  FDRE awvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_awvalid),
        .Q(awvalid_q),
        .R(1'b0));
  FDRE \bid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bid[0]),
        .Q(bid_q[0]),
        .R(1'b0));
  FDRE \bid_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bid[1]),
        .Q(bid_q[1]),
        .R(1'b0));
  FDRE bready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bready),
        .Q(bready_q),
        .R(1'b0));
  FDRE \bresp_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bresp[0]),
        .Q(bresp_q[0]),
        .R(1'b0));
  FDRE \bresp_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bresp[1]),
        .Q(bresp_q[1]),
        .R(1'b0));
  FDRE \buser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_buser),
        .Q(buser_q),
        .R(1'b0));
  FDRE bvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_bvalid),
        .Q(bvalid_q),
        .R(1'b0));
  FDRE pc_asserted_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(pc_asserted),
        .R(1'b0));
  FDRE \rdata_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[0]),
        .Q(rdata_q[0]),
        .R(1'b0));
  FDRE \rdata_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[10]),
        .Q(rdata_q[10]),
        .R(1'b0));
  FDRE \rdata_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[11]),
        .Q(rdata_q[11]),
        .R(1'b0));
  FDRE \rdata_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[12]),
        .Q(rdata_q[12]),
        .R(1'b0));
  FDRE \rdata_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[13]),
        .Q(rdata_q[13]),
        .R(1'b0));
  FDRE \rdata_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[14]),
        .Q(rdata_q[14]),
        .R(1'b0));
  FDRE \rdata_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[15]),
        .Q(rdata_q[15]),
        .R(1'b0));
  FDRE \rdata_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[16]),
        .Q(rdata_q[16]),
        .R(1'b0));
  FDRE \rdata_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[17]),
        .Q(rdata_q[17]),
        .R(1'b0));
  FDRE \rdata_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[18]),
        .Q(rdata_q[18]),
        .R(1'b0));
  FDRE \rdata_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[19]),
        .Q(rdata_q[19]),
        .R(1'b0));
  FDRE \rdata_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[1]),
        .Q(rdata_q[1]),
        .R(1'b0));
  FDRE \rdata_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[20]),
        .Q(rdata_q[20]),
        .R(1'b0));
  FDRE \rdata_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[21]),
        .Q(rdata_q[21]),
        .R(1'b0));
  FDRE \rdata_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[22]),
        .Q(rdata_q[22]),
        .R(1'b0));
  FDRE \rdata_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[23]),
        .Q(rdata_q[23]),
        .R(1'b0));
  FDRE \rdata_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[24]),
        .Q(rdata_q[24]),
        .R(1'b0));
  FDRE \rdata_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[25]),
        .Q(rdata_q[25]),
        .R(1'b0));
  FDRE \rdata_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[26]),
        .Q(rdata_q[26]),
        .R(1'b0));
  FDRE \rdata_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[27]),
        .Q(rdata_q[27]),
        .R(1'b0));
  FDRE \rdata_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[28]),
        .Q(rdata_q[28]),
        .R(1'b0));
  FDRE \rdata_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[29]),
        .Q(rdata_q[29]),
        .R(1'b0));
  FDRE \rdata_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[2]),
        .Q(rdata_q[2]),
        .R(1'b0));
  FDRE \rdata_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[30]),
        .Q(rdata_q[30]),
        .R(1'b0));
  FDRE \rdata_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[31]),
        .Q(rdata_q[31]),
        .R(1'b0));
  FDRE \rdata_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[32]),
        .Q(rdata_q[32]),
        .R(1'b0));
  FDRE \rdata_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[33]),
        .Q(rdata_q[33]),
        .R(1'b0));
  FDRE \rdata_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[34]),
        .Q(rdata_q[34]),
        .R(1'b0));
  FDRE \rdata_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[35]),
        .Q(rdata_q[35]),
        .R(1'b0));
  FDRE \rdata_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[36]),
        .Q(rdata_q[36]),
        .R(1'b0));
  FDRE \rdata_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[37]),
        .Q(rdata_q[37]),
        .R(1'b0));
  FDRE \rdata_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[38]),
        .Q(rdata_q[38]),
        .R(1'b0));
  FDRE \rdata_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[39]),
        .Q(rdata_q[39]),
        .R(1'b0));
  FDRE \rdata_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[3]),
        .Q(rdata_q[3]),
        .R(1'b0));
  FDRE \rdata_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[40]),
        .Q(rdata_q[40]),
        .R(1'b0));
  FDRE \rdata_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[41]),
        .Q(rdata_q[41]),
        .R(1'b0));
  FDRE \rdata_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[42]),
        .Q(rdata_q[42]),
        .R(1'b0));
  FDRE \rdata_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[43]),
        .Q(rdata_q[43]),
        .R(1'b0));
  FDRE \rdata_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[44]),
        .Q(rdata_q[44]),
        .R(1'b0));
  FDRE \rdata_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[45]),
        .Q(rdata_q[45]),
        .R(1'b0));
  FDRE \rdata_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[46]),
        .Q(rdata_q[46]),
        .R(1'b0));
  FDRE \rdata_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[47]),
        .Q(rdata_q[47]),
        .R(1'b0));
  FDRE \rdata_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[48]),
        .Q(rdata_q[48]),
        .R(1'b0));
  FDRE \rdata_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[49]),
        .Q(rdata_q[49]),
        .R(1'b0));
  FDRE \rdata_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[4]),
        .Q(rdata_q[4]),
        .R(1'b0));
  FDRE \rdata_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[50]),
        .Q(rdata_q[50]),
        .R(1'b0));
  FDRE \rdata_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[51]),
        .Q(rdata_q[51]),
        .R(1'b0));
  FDRE \rdata_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[52]),
        .Q(rdata_q[52]),
        .R(1'b0));
  FDRE \rdata_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[53]),
        .Q(rdata_q[53]),
        .R(1'b0));
  FDRE \rdata_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[54]),
        .Q(rdata_q[54]),
        .R(1'b0));
  FDRE \rdata_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[55]),
        .Q(rdata_q[55]),
        .R(1'b0));
  FDRE \rdata_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[56]),
        .Q(rdata_q[56]),
        .R(1'b0));
  FDRE \rdata_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[57]),
        .Q(rdata_q[57]),
        .R(1'b0));
  FDRE \rdata_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[58]),
        .Q(rdata_q[58]),
        .R(1'b0));
  FDRE \rdata_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[59]),
        .Q(rdata_q[59]),
        .R(1'b0));
  FDRE \rdata_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[5]),
        .Q(rdata_q[5]),
        .R(1'b0));
  FDRE \rdata_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[60]),
        .Q(rdata_q[60]),
        .R(1'b0));
  FDRE \rdata_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[61]),
        .Q(rdata_q[61]),
        .R(1'b0));
  FDRE \rdata_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[62]),
        .Q(rdata_q[62]),
        .R(1'b0));
  FDRE \rdata_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[63]),
        .Q(rdata_q[63]),
        .R(1'b0));
  FDRE \rdata_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[6]),
        .Q(rdata_q[6]),
        .R(1'b0));
  FDRE \rdata_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[7]),
        .Q(rdata_q[7]),
        .R(1'b0));
  FDRE \rdata_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[8]),
        .Q(rdata_q[8]),
        .R(1'b0));
  FDRE \rdata_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rdata[9]),
        .Q(rdata_q[9]),
        .R(1'b0));
  FDRE resetn_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(resetn_q),
        .R(1'b0));
  FDRE \rid_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rid[0]),
        .Q(rid_q[0]),
        .R(1'b0));
  FDRE \rid_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rid[1]),
        .Q(rid_q[1]),
        .R(1'b0));
  FDRE rlast_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rlast),
        .Q(rlast_q),
        .R(1'b0));
  FDRE rready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rready),
        .Q(rready_q),
        .R(1'b0));
  FDRE \rresp_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rresp[0]),
        .Q(rresp_q[0]),
        .R(1'b0));
  FDRE \rresp_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rresp[1]),
        .Q(rresp_q[1]),
        .R(1'b0));
  FDRE \ruser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_ruser),
        .Q(ruser_q),
        .R(1'b0));
  FDRE rvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_rvalid),
        .Q(rvalid_q),
        .R(1'b0));
  FDRE \wdata_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[0]),
        .Q(wdata_q[0]),
        .R(1'b0));
  FDRE \wdata_q_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[10]),
        .Q(wdata_q[10]),
        .R(1'b0));
  FDRE \wdata_q_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[11]),
        .Q(wdata_q[11]),
        .R(1'b0));
  FDRE \wdata_q_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[12]),
        .Q(wdata_q[12]),
        .R(1'b0));
  FDRE \wdata_q_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[13]),
        .Q(wdata_q[13]),
        .R(1'b0));
  FDRE \wdata_q_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[14]),
        .Q(wdata_q[14]),
        .R(1'b0));
  FDRE \wdata_q_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[15]),
        .Q(wdata_q[15]),
        .R(1'b0));
  FDRE \wdata_q_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[16]),
        .Q(wdata_q[16]),
        .R(1'b0));
  FDRE \wdata_q_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[17]),
        .Q(wdata_q[17]),
        .R(1'b0));
  FDRE \wdata_q_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[18]),
        .Q(wdata_q[18]),
        .R(1'b0));
  FDRE \wdata_q_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[19]),
        .Q(wdata_q[19]),
        .R(1'b0));
  FDRE \wdata_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[1]),
        .Q(wdata_q[1]),
        .R(1'b0));
  FDRE \wdata_q_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[20]),
        .Q(wdata_q[20]),
        .R(1'b0));
  FDRE \wdata_q_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[21]),
        .Q(wdata_q[21]),
        .R(1'b0));
  FDRE \wdata_q_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[22]),
        .Q(wdata_q[22]),
        .R(1'b0));
  FDRE \wdata_q_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[23]),
        .Q(wdata_q[23]),
        .R(1'b0));
  FDRE \wdata_q_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[24]),
        .Q(wdata_q[24]),
        .R(1'b0));
  FDRE \wdata_q_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[25]),
        .Q(wdata_q[25]),
        .R(1'b0));
  FDRE \wdata_q_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[26]),
        .Q(wdata_q[26]),
        .R(1'b0));
  FDRE \wdata_q_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[27]),
        .Q(wdata_q[27]),
        .R(1'b0));
  FDRE \wdata_q_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[28]),
        .Q(wdata_q[28]),
        .R(1'b0));
  FDRE \wdata_q_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[29]),
        .Q(wdata_q[29]),
        .R(1'b0));
  FDRE \wdata_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[2]),
        .Q(wdata_q[2]),
        .R(1'b0));
  FDRE \wdata_q_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[30]),
        .Q(wdata_q[30]),
        .R(1'b0));
  FDRE \wdata_q_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[31]),
        .Q(wdata_q[31]),
        .R(1'b0));
  FDRE \wdata_q_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[32]),
        .Q(wdata_q[32]),
        .R(1'b0));
  FDRE \wdata_q_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[33]),
        .Q(wdata_q[33]),
        .R(1'b0));
  FDRE \wdata_q_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[34]),
        .Q(wdata_q[34]),
        .R(1'b0));
  FDRE \wdata_q_reg[35] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[35]),
        .Q(wdata_q[35]),
        .R(1'b0));
  FDRE \wdata_q_reg[36] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[36]),
        .Q(wdata_q[36]),
        .R(1'b0));
  FDRE \wdata_q_reg[37] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[37]),
        .Q(wdata_q[37]),
        .R(1'b0));
  FDRE \wdata_q_reg[38] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[38]),
        .Q(wdata_q[38]),
        .R(1'b0));
  FDRE \wdata_q_reg[39] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[39]),
        .Q(wdata_q[39]),
        .R(1'b0));
  FDRE \wdata_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[3]),
        .Q(wdata_q[3]),
        .R(1'b0));
  FDRE \wdata_q_reg[40] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[40]),
        .Q(wdata_q[40]),
        .R(1'b0));
  FDRE \wdata_q_reg[41] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[41]),
        .Q(wdata_q[41]),
        .R(1'b0));
  FDRE \wdata_q_reg[42] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[42]),
        .Q(wdata_q[42]),
        .R(1'b0));
  FDRE \wdata_q_reg[43] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[43]),
        .Q(wdata_q[43]),
        .R(1'b0));
  FDRE \wdata_q_reg[44] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[44]),
        .Q(wdata_q[44]),
        .R(1'b0));
  FDRE \wdata_q_reg[45] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[45]),
        .Q(wdata_q[45]),
        .R(1'b0));
  FDRE \wdata_q_reg[46] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[46]),
        .Q(wdata_q[46]),
        .R(1'b0));
  FDRE \wdata_q_reg[47] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[47]),
        .Q(wdata_q[47]),
        .R(1'b0));
  FDRE \wdata_q_reg[48] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[48]),
        .Q(wdata_q[48]),
        .R(1'b0));
  FDRE \wdata_q_reg[49] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[49]),
        .Q(wdata_q[49]),
        .R(1'b0));
  FDRE \wdata_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[4]),
        .Q(wdata_q[4]),
        .R(1'b0));
  FDRE \wdata_q_reg[50] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[50]),
        .Q(wdata_q[50]),
        .R(1'b0));
  FDRE \wdata_q_reg[51] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[51]),
        .Q(wdata_q[51]),
        .R(1'b0));
  FDRE \wdata_q_reg[52] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[52]),
        .Q(wdata_q[52]),
        .R(1'b0));
  FDRE \wdata_q_reg[53] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[53]),
        .Q(wdata_q[53]),
        .R(1'b0));
  FDRE \wdata_q_reg[54] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[54]),
        .Q(wdata_q[54]),
        .R(1'b0));
  FDRE \wdata_q_reg[55] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[55]),
        .Q(wdata_q[55]),
        .R(1'b0));
  FDRE \wdata_q_reg[56] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[56]),
        .Q(wdata_q[56]),
        .R(1'b0));
  FDRE \wdata_q_reg[57] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[57]),
        .Q(wdata_q[57]),
        .R(1'b0));
  FDRE \wdata_q_reg[58] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[58]),
        .Q(wdata_q[58]),
        .R(1'b0));
  FDRE \wdata_q_reg[59] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[59]),
        .Q(wdata_q[59]),
        .R(1'b0));
  FDRE \wdata_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[5]),
        .Q(wdata_q[5]),
        .R(1'b0));
  FDRE \wdata_q_reg[60] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[60]),
        .Q(wdata_q[60]),
        .R(1'b0));
  FDRE \wdata_q_reg[61] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[61]),
        .Q(wdata_q[61]),
        .R(1'b0));
  FDRE \wdata_q_reg[62] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[62]),
        .Q(wdata_q[62]),
        .R(1'b0));
  FDRE \wdata_q_reg[63] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[63]),
        .Q(wdata_q[63]),
        .R(1'b0));
  FDRE \wdata_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[6]),
        .Q(wdata_q[6]),
        .R(1'b0));
  FDRE \wdata_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[7]),
        .Q(wdata_q[7]),
        .R(1'b0));
  FDRE \wdata_q_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[8]),
        .Q(wdata_q[8]),
        .R(1'b0));
  FDRE \wdata_q_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wdata[9]),
        .Q(wdata_q[9]),
        .R(1'b0));
  FDRE wlast_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wlast),
        .Q(wlast_q),
        .R(1'b0));
  FDRE wready_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wready),
        .Q(wready_q),
        .R(1'b0));
  FDRE \wstrb_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[0]),
        .Q(wstrb_q[0]),
        .R(1'b0));
  FDRE \wstrb_q_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[1]),
        .Q(wstrb_q[1]),
        .R(1'b0));
  FDRE \wstrb_q_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[2]),
        .Q(wstrb_q[2]),
        .R(1'b0));
  FDRE \wstrb_q_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[3]),
        .Q(wstrb_q[3]),
        .R(1'b0));
  FDRE \wstrb_q_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[4]),
        .Q(wstrb_q[4]),
        .R(1'b0));
  FDRE \wstrb_q_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[5]),
        .Q(wstrb_q[5]),
        .R(1'b0));
  FDRE \wstrb_q_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[6]),
        .Q(wstrb_q[6]),
        .R(1'b0));
  FDRE \wstrb_q_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wstrb[7]),
        .Q(wstrb_q[7]),
        .R(1'b0));
  FDRE \wuser_q_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wuser),
        .Q(wuser_q),
        .R(1'b0));
  FDRE wvalid_q_reg
       (.C(aclk),
        .CE(1'b1),
        .D(pc_axi_wvalid),
        .Q(wvalid_q),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_s02_pchk_0,axi_protocol_checker_v1_1_12_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_checker_v1_1_12_top,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pc_status,
    pc_asserted,
    aclk,
    aresetn,
    pc_axi_awid,
    pc_axi_awaddr,
    pc_axi_awlen,
    pc_axi_awsize,
    pc_axi_awburst,
    pc_axi_awlock,
    pc_axi_awcache,
    pc_axi_awprot,
    pc_axi_awqos,
    pc_axi_awregion,
    pc_axi_awvalid,
    pc_axi_awready,
    pc_axi_wlast,
    pc_axi_wdata,
    pc_axi_wstrb,
    pc_axi_wvalid,
    pc_axi_wready,
    pc_axi_bid,
    pc_axi_bresp,
    pc_axi_bvalid,
    pc_axi_bready,
    pc_axi_arid,
    pc_axi_araddr,
    pc_axi_arlen,
    pc_axi_arsize,
    pc_axi_arburst,
    pc_axi_arlock,
    pc_axi_arcache,
    pc_axi_arprot,
    pc_axi_arqos,
    pc_axi_arregion,
    pc_axi_arvalid,
    pc_axi_arready,
    pc_axi_rid,
    pc_axi_rlast,
    pc_axi_rdata,
    pc_axi_rresp,
    pc_axi_rvalid,
    pc_axi_rready);
  output [96:0]pc_status;
  output pc_asserted;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWID" *) input [1:0]pc_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWADDR" *) input [31:0]pc_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWLEN" *) input [7:0]pc_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWSIZE" *) input [2:0]pc_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWBURST" *) input [1:0]pc_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWLOCK" *) input [0:0]pc_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWCACHE" *) input [3:0]pc_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWPROT" *) input [2:0]pc_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWQOS" *) input [3:0]pc_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWREGION" *) input [3:0]pc_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWVALID" *) input pc_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI AWREADY" *) input pc_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WLAST" *) input pc_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WDATA" *) input [63:0]pc_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WSTRB" *) input [7:0]pc_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WVALID" *) input pc_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI WREADY" *) input pc_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BID" *) input [1:0]pc_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BRESP" *) input [1:0]pc_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BVALID" *) input pc_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI BREADY" *) input pc_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARID" *) input [1:0]pc_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARADDR" *) input [31:0]pc_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARLEN" *) input [7:0]pc_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARSIZE" *) input [2:0]pc_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARBURST" *) input [1:0]pc_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARLOCK" *) input [0:0]pc_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARCACHE" *) input [3:0]pc_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARPROT" *) input [2:0]pc_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARQOS" *) input [3:0]pc_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARREGION" *) input [3:0]pc_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARVALID" *) input pc_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI ARREADY" *) input pc_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RID" *) input [1:0]pc_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RLAST" *) input pc_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RDATA" *) input [63:0]pc_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RRESP" *) input [1:0]pc_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RVALID" *) input pc_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PC_AXI RREADY" *) input pc_axi_rready;

  wire aclk;
  wire aresetn;
  wire pc_asserted;
  wire [31:0]pc_axi_araddr;
  wire [1:0]pc_axi_arburst;
  wire [3:0]pc_axi_arcache;
  wire [1:0]pc_axi_arid;
  wire [7:0]pc_axi_arlen;
  wire [0:0]pc_axi_arlock;
  wire [2:0]pc_axi_arprot;
  wire [3:0]pc_axi_arqos;
  wire pc_axi_arready;
  wire [3:0]pc_axi_arregion;
  wire [2:0]pc_axi_arsize;
  wire pc_axi_arvalid;
  wire [31:0]pc_axi_awaddr;
  wire [1:0]pc_axi_awburst;
  wire [3:0]pc_axi_awcache;
  wire [1:0]pc_axi_awid;
  wire [7:0]pc_axi_awlen;
  wire [0:0]pc_axi_awlock;
  wire [2:0]pc_axi_awprot;
  wire [3:0]pc_axi_awqos;
  wire pc_axi_awready;
  wire [3:0]pc_axi_awregion;
  wire [2:0]pc_axi_awsize;
  wire pc_axi_awvalid;
  wire [1:0]pc_axi_bid;
  wire pc_axi_bready;
  wire [1:0]pc_axi_bresp;
  wire pc_axi_bvalid;
  wire [63:0]pc_axi_rdata;
  wire [1:0]pc_axi_rid;
  wire pc_axi_rlast;
  wire pc_axi_rready;
  wire [1:0]pc_axi_rresp;
  wire pc_axi_rvalid;
  wire [63:0]pc_axi_wdata;
  wire pc_axi_wlast;
  wire pc_axi_wready;
  wire [7:0]pc_axi_wstrb;
  wire pc_axi_wvalid;
  wire [96:0]pc_status;

  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "2" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_PC_AR_MAXWAITS = "0" *) 
  (* C_PC_AW_MAXWAITS = "0" *) 
  (* C_PC_B_MAXWAITS = "0" *) 
  (* C_PC_EXMON_WIDTH = "0" *) 
  (* C_PC_HAS_SYSTEM_RESET = "0" *) 
  (* C_PC_MAXRBURSTS = "2" *) 
  (* C_PC_MAXWBURSTS = "2" *) 
  (* C_PC_MAX_BURST_LENGTH = "256" *) 
  (* C_PC_MESSAGE_LEVEL = "2" *) 
  (* C_PC_R_MAXWAITS = "0" *) 
  (* C_PC_STATUS_WIDTH = "97" *) 
  (* C_PC_SUPPORTS_NARROW_BURST = "1" *) 
  (* C_PC_W_MAXWAITS = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* LP_AXI_SIZE = "3'b011" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .pc_asserted(pc_asserted),
        .pc_axi_araddr(pc_axi_araddr),
        .pc_axi_arburst(pc_axi_arburst),
        .pc_axi_arcache(pc_axi_arcache),
        .pc_axi_arid(pc_axi_arid),
        .pc_axi_arlen(pc_axi_arlen),
        .pc_axi_arlock(pc_axi_arlock),
        .pc_axi_arprot(pc_axi_arprot),
        .pc_axi_arqos(pc_axi_arqos),
        .pc_axi_arready(pc_axi_arready),
        .pc_axi_arregion(pc_axi_arregion),
        .pc_axi_arsize(pc_axi_arsize),
        .pc_axi_aruser(1'b0),
        .pc_axi_arvalid(pc_axi_arvalid),
        .pc_axi_awaddr(pc_axi_awaddr),
        .pc_axi_awburst(pc_axi_awburst),
        .pc_axi_awcache(pc_axi_awcache),
        .pc_axi_awid(pc_axi_awid),
        .pc_axi_awlen(pc_axi_awlen),
        .pc_axi_awlock(pc_axi_awlock),
        .pc_axi_awprot(pc_axi_awprot),
        .pc_axi_awqos(pc_axi_awqos),
        .pc_axi_awready(pc_axi_awready),
        .pc_axi_awregion(pc_axi_awregion),
        .pc_axi_awsize(pc_axi_awsize),
        .pc_axi_awuser(1'b0),
        .pc_axi_awvalid(pc_axi_awvalid),
        .pc_axi_bid(pc_axi_bid),
        .pc_axi_bready(pc_axi_bready),
        .pc_axi_bresp(pc_axi_bresp),
        .pc_axi_buser(1'b0),
        .pc_axi_bvalid(pc_axi_bvalid),
        .pc_axi_rdata(pc_axi_rdata),
        .pc_axi_rid(pc_axi_rid),
        .pc_axi_rlast(pc_axi_rlast),
        .pc_axi_rready(pc_axi_rready),
        .pc_axi_rresp(pc_axi_rresp),
        .pc_axi_ruser(1'b0),
        .pc_axi_rvalid(pc_axi_rvalid),
        .pc_axi_wdata(pc_axi_wdata),
        .pc_axi_wid({1'b0,1'b0}),
        .pc_axi_wlast(pc_axi_wlast),
        .pc_axi_wready(pc_axi_wready),
        .pc_axi_wstrb(pc_axi_wstrb),
        .pc_axi_wuser(1'b0),
        .pc_axi_wvalid(pc_axi_wvalid),
        .pc_status(pc_status),
        .system_resetn(1'b1));
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
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
