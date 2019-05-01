-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Tue Apr 30 14:33:22 2019
-- Host        : shegedus running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_s02_pchk_0_sim_netlist.vhdl
-- Design      : system_s02_pchk_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_axi4pc_asr_inline is
  port (
    \s101sq_reg[1]_0\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_0\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_0\ : out STD_LOGIC;
    ASR_60_reg_0 : out STD_LOGIC;
    ASR_60_reg_1 : out STD_LOGIC;
    ASR_61_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 56 downto 0 );
    \AwAddrIncr_q1_reg[3]_1\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_2\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_3\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_4\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_5\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_6\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_7\ : out STD_LOGIC;
    \AwAddrIncr_q1_reg[3]_8\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_1\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_2\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_3\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_4\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_5\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_6\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_7\ : out STD_LOGIC;
    \ArAddrIncr_q1_reg[3]_8\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    ASR_610 : in STD_LOGIC;
    wlast_q : in STD_LOGIC;
    rlast_q : in STD_LOGIC;
    awuser_q : in STD_LOGIC;
    wuser_q : in STD_LOGIC;
    buser_q : in STD_LOGIC;
    aruser_q : in STD_LOGIC;
    ruser_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \araddr_q_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \arlen_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \arsize_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    resetn_q : in STD_LOGIC;
    WDataNumError1 : in STD_LOGIC;
    BStrbError : in STD_LOGIC;
    BrespErrorLead_reg : in STD_LOGIC;
    rvalid_q : in STD_LOGIC;
    \gen_thread_loop[0].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    active_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_thread_loop[1].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rresp_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arburst_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arcache_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arqos_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arregion_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    arvalid_q : in STD_LOGIC;
    bvalid_q : in STD_LOGIC;
    bready_q : in STD_LOGIC;
    \bid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bresp_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wvalid_q : in STD_LOGIC;
    \awburst_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \awcache_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \awqos_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \awregion_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    awvalid_q : in STD_LOGIC;
    awready_q : in STD_LOGIC;
    \awprot_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    wready_q : in STD_LOGIC;
    arready_q : in STD_LOGIC;
    \arprot_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rready_q : in STD_LOGIC;
    \gen_thread_loop[1].RCount_reg[1][6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wstrb_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \pc_status_i_reg[77]\ : in STD_LOGIC_VECTOR ( 56 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \awaddr_q_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \awaddr_q_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \awaddr_q_reg[14]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \araddr_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \araddr_q_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \araddr_q_reg[11]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \araddr_q_reg[14]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \wdata_q_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \rdata_q_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_axi4pc_asr_inline;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_axi4pc_asr_inline is
  signal ARADDR_eq : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ARADDR_eq0 : STD_LOGIC;
  signal ARADDR_eq023_out : STD_LOGIC;
  signal ARADDR_eq026_out : STD_LOGIC;
  signal ARADDR_eq029_out : STD_LOGIC;
  signal \ARADDR_eq[0]_i_2_n_0\ : STD_LOGIC;
  signal \ARADDR_eq[0]_i_3_n_0\ : STD_LOGIC;
  signal \ARADDR_eq[1]_i_2_n_0\ : STD_LOGIC;
  signal \ARADDR_eq[1]_i_3_n_0\ : STD_LOGIC;
  signal \ARADDR_eq[2]_i_2_n_0\ : STD_LOGIC;
  signal \ARADDR_eq[2]_i_3_n_0\ : STD_LOGIC;
  signal \ARADDR_eq[3]_i_2_n_0\ : STD_LOGIC;
  signal \ARADDR_eq[3]_i_3_n_0\ : STD_LOGIC;
  signal ARADDR_q1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \ARADDR_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \ARADDR_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \ARADDR_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \ARADDR_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \ARADDR_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \ARADDR_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \ARADDR_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \ARADDR_q_reg_n_0_[7]\ : STD_LOGIC;
  signal ARADDR_stage_1_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ARADDR_stage_1_eq[0]_i_1_n_0\ : STD_LOGIC;
  signal ARADDR_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ARUSER_eq0 : STD_LOGIC;
  signal \^aruser_q\ : STD_LOGIC;
  signal \ARUSER_stage_1_eq_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal ARUSER_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ASR_10 : STD_LOGIC;
  signal ASR_10_i_1_n_0 : STD_LOGIC;
  signal ASR_12 : STD_LOGIC;
  signal \ASR_12_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ASR_12_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ASR_12_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ASR_12_carry__0_n_2\ : STD_LOGIC;
  signal \ASR_12_carry__0_n_3\ : STD_LOGIC;
  signal ASR_12_carry_i_1_n_0 : STD_LOGIC;
  signal ASR_12_carry_i_2_n_0 : STD_LOGIC;
  signal ASR_12_carry_i_3_n_0 : STD_LOGIC;
  signal ASR_12_carry_i_4_n_0 : STD_LOGIC;
  signal ASR_12_carry_n_0 : STD_LOGIC;
  signal ASR_12_carry_n_1 : STD_LOGIC;
  signal ASR_12_carry_n_2 : STD_LOGIC;
  signal ASR_12_carry_n_3 : STD_LOGIC;
  signal ASR_12_i_2_n_0 : STD_LOGIC;
  signal ASR_14_i_2_n_0 : STD_LOGIC;
  signal ASR_14_i_3_n_0 : STD_LOGIC;
  signal ASR_14_i_4_n_0 : STD_LOGIC;
  signal ASR_16_i_2_n_0 : STD_LOGIC;
  signal ASR_17_i_2_n_0 : STD_LOGIC;
  signal ASR_18_i_2_n_0 : STD_LOGIC;
  signal ASR_19_i_2_n_0 : STD_LOGIC;
  signal ASR_20 : STD_LOGIC;
  signal ASR_220 : STD_LOGIC;
  signal ASR_230 : STD_LOGIC;
  signal ASR_25_i_1_n_0 : STD_LOGIC;
  signal ASR_27_i_1_n_0 : STD_LOGIC;
  signal ASR_2_i_2_n_0 : STD_LOGIC;
  signal ASR_2_i_3_n_0 : STD_LOGIC;
  signal ASR_2_i_4_n_0 : STD_LOGIC;
  signal ASR_30 : STD_LOGIC;
  signal ASR_330 : STD_LOGIC;
  signal ASR_380 : STD_LOGIC;
  signal ASR_382 : STD_LOGIC;
  signal \ASR_382_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ASR_382_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ASR_382_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ASR_382_carry__0_n_2\ : STD_LOGIC;
  signal \ASR_382_carry__0_n_3\ : STD_LOGIC;
  signal ASR_382_carry_i_1_n_0 : STD_LOGIC;
  signal ASR_382_carry_i_2_n_0 : STD_LOGIC;
  signal ASR_382_carry_i_3_n_0 : STD_LOGIC;
  signal ASR_382_carry_i_4_n_0 : STD_LOGIC;
  signal ASR_382_carry_n_0 : STD_LOGIC;
  signal ASR_382_carry_n_1 : STD_LOGIC;
  signal ASR_382_carry_n_2 : STD_LOGIC;
  signal ASR_382_carry_n_3 : STD_LOGIC;
  signal ASR_390 : STD_LOGIC;
  signal ASR_39_i_2_n_0 : STD_LOGIC;
  signal ASR_39_i_3_n_0 : STD_LOGIC;
  signal ASR_39_i_4_n_0 : STD_LOGIC;
  signal ASR_400 : STD_LOGIC;
  signal ASR_420 : STD_LOGIC;
  signal ASR_430 : STD_LOGIC;
  signal ASR_43_i_2_n_0 : STD_LOGIC;
  signal ASR_440 : STD_LOGIC;
  signal ASR_44_i_2_n_0 : STD_LOGIC;
  signal ASR_450 : STD_LOGIC;
  signal ASR_47_i_1_n_0 : STD_LOGIC;
  signal ASR_49_i_2_n_0 : STD_LOGIC;
  signal ASR_50 : STD_LOGIC;
  signal ASR_51_i_2_n_0 : STD_LOGIC;
  signal ASR_51_i_3_n_0 : STD_LOGIC;
  signal ASR_51_i_4_n_0 : STD_LOGIC;
  signal ASR_53_i_2_n_0 : STD_LOGIC;
  signal ASR_54_i_2_n_0 : STD_LOGIC;
  signal ASR_55_i_2_n_0 : STD_LOGIC;
  signal ASR_56_i_2_n_0 : STD_LOGIC;
  signal ASR_590 : STD_LOGIC;
  signal ASR_60 : STD_LOGIC;
  signal ASR_600 : STD_LOGIC;
  signal \^asr_60_reg_0\ : STD_LOGIC;
  signal \^asr_60_reg_1\ : STD_LOGIC;
  signal ASR_63_i_1_n_0 : STD_LOGIC;
  signal ASR_6_i_2_n_0 : STD_LOGIC;
  signal ASR_70 : STD_LOGIC;
  signal ASR_74_i_1_n_0 : STD_LOGIC;
  signal ASR_75_i_1_n_0 : STD_LOGIC;
  signal ASR_76_i_1_n_0 : STD_LOGIC;
  signal ASR_77_i_1_n_0 : STD_LOGIC;
  signal ASR_78_i_1_n_0 : STD_LOGIC;
  signal ASR_7_i_2_n_0 : STD_LOGIC;
  signal ASR_80 : STD_LOGIC;
  signal AWADDR_eq : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal AWADDR_eq0 : STD_LOGIC;
  signal AWADDR_eq057_out : STD_LOGIC;
  signal AWADDR_eq060_out : STD_LOGIC;
  signal AWADDR_eq063_out : STD_LOGIC;
  signal \AWADDR_eq[0]_i_2_n_0\ : STD_LOGIC;
  signal \AWADDR_eq[0]_i_3_n_0\ : STD_LOGIC;
  signal \AWADDR_eq[1]_i_2_n_0\ : STD_LOGIC;
  signal \AWADDR_eq[1]_i_3_n_0\ : STD_LOGIC;
  signal \AWADDR_eq[2]_i_2_n_0\ : STD_LOGIC;
  signal \AWADDR_eq[2]_i_3_n_0\ : STD_LOGIC;
  signal \AWADDR_eq[3]_i_2_n_0\ : STD_LOGIC;
  signal \AWADDR_eq[3]_i_3_n_0\ : STD_LOGIC;
  signal AWADDR_q1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \AWADDR_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \AWADDR_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \AWADDR_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \AWADDR_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \AWADDR_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \AWADDR_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \AWADDR_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \AWADDR_q_reg_n_0_[7]\ : STD_LOGIC;
  signal AWADDR_stage_1_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \AWADDR_stage_1_eq[0]_i_1_n_0\ : STD_LOGIC;
  signal AWADDR_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal AWUSER_eq0 : STD_LOGIC;
  signal \^awuser_q\ : STD_LOGIC;
  signal \AWUSER_stage_1_eq_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal AWUSER_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ArAddrIncr : STD_LOGIC_VECTOR ( 31 downto 12 );
  signal ArAddrIncr_q1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \ArAddrIncr_q1[11]_i_2_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[11]_i_3_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[11]_i_4_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[11]_i_5_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[15]_i_2_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[15]_i_3_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[15]_i_4_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[15]_i_5_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[19]_i_2_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[19]_i_3_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[19]_i_4_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[19]_i_5_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_3_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[7]_i_2_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[7]_i_3_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[7]_i_4_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[7]_i_5_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_13_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_13_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_13_n_3\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_7_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_7_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[3]_i_7_n_3\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \ArAddrIncr_q1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal AwAddrIncr : STD_LOGIC_VECTOR ( 31 downto 12 );
  signal AwAddrIncr_q1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \AwAddrIncr_q1[11]_i_2_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[11]_i_3_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[11]_i_4_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[11]_i_5_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[15]_i_2_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[15]_i_3_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[15]_i_4_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[15]_i_5_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[19]_i_2_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[19]_i_3_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[19]_i_4_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[19]_i_5_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_3_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[7]_i_2_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[7]_i_3_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[7]_i_4_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[7]_i_5_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_13_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_13_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_13_n_3\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_7_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_7_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[3]_i_7_n_3\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \AwAddrIncr_q1_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal Axi4PC_asr_inline_out : STD_LOGIC_VECTOR ( 77 downto 0 );
  signal BUSER_eq0 : STD_LOGIC;
  signal \^buser_q\ : STD_LOGIC;
  signal \BUSER_stage_1_eq_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal BUSER_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RDATA_eq : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RDATA_eq00_out : STD_LOGIC;
  signal RDATA_eq012_out : STD_LOGIC;
  signal RDATA_eq015_out : STD_LOGIC;
  signal RDATA_eq018_out : STD_LOGIC;
  signal RDATA_eq03_out : STD_LOGIC;
  signal RDATA_eq06_out : STD_LOGIC;
  signal RDATA_eq09_out : STD_LOGIC;
  signal \RDATA_eq0__0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__0/RDATA_eq[1]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__0/RDATA_eq[1]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__1/RDATA_eq[2]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__1/RDATA_eq[2]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__2/RDATA_eq[3]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__2/RDATA_eq[3]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__3/RDATA_eq[4]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__3/RDATA_eq[4]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__4/RDATA_eq[5]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__4/RDATA_eq[5]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__5/RDATA_eq[6]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__5/RDATA_eq[6]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__6/RDATA_eq[7]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq0_inferred__6/RDATA_eq[7]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_eq[0]_i_2_n_0\ : STD_LOGIC;
  signal \RDATA_eq[0]_i_3_n_0\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \RDATA_q_reg_n_0_[7]\ : STD_LOGIC;
  signal RDATA_stage_1_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \RDATA_stage_1_eq0__0\ : STD_LOGIC;
  signal \RDATA_stage_1_eq[0]_i_2_n_0\ : STD_LOGIC;
  signal RDATA_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RUSER_eq0 : STD_LOGIC;
  signal \^ruser_q\ : STD_LOGIC;
  signal \RUSER_stage_1_eq_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal RUSER_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal WDATA_eq : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal WDATA_eq034_out : STD_LOGIC;
  signal WDATA_eq037_out : STD_LOGIC;
  signal WDATA_eq040_out : STD_LOGIC;
  signal WDATA_eq043_out : STD_LOGIC;
  signal WDATA_eq046_out : STD_LOGIC;
  signal WDATA_eq049_out : STD_LOGIC;
  signal WDATA_eq052_out : STD_LOGIC;
  signal \WDATA_eq0__0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__0/WDATA_eq[1]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__0/WDATA_eq[1]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__1/WDATA_eq[2]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__1/WDATA_eq[2]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__2/WDATA_eq[3]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__2/WDATA_eq[3]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__3/WDATA_eq[4]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__3/WDATA_eq[4]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__4/WDATA_eq[5]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__4/WDATA_eq[5]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__5/WDATA_eq[6]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__5/WDATA_eq[6]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__6/WDATA_eq[7]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq0_inferred__6/WDATA_eq[7]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_eq[0]_i_2_n_0\ : STD_LOGIC;
  signal \WDATA_eq[0]_i_3_n_0\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \WDATA_q_reg_n_0_[7]\ : STD_LOGIC;
  signal WDATA_stage_1_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \WDATA_stage_1_eq0__0\ : STD_LOGIC;
  signal \WDATA_stage_1_eq[0]_i_2_n_0\ : STD_LOGIC;
  signal WDATA_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal WSTRB_eq0 : STD_LOGIC;
  signal WSTRB_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0\ : STD_LOGIC;
  signal \WSTRB_stage_1_eq_reg[0]_srl2_i_3_n_0\ : STD_LOGIC;
  signal \WSTRB_stage_1_eq_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal WSTRB_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal WUSER_eq0 : STD_LOGIC;
  signal \^wuser_q\ : STD_LOGIC;
  signal \WUSER_stage_1_eq_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal WUSER_stage_2_eq : STD_LOGIC_VECTOR ( 0 to 0 );
  signal asr_1_ctrl : STD_LOGIC;
  signal asr_1_ctrl0 : STD_LOGIC;
  signal asr_38_ctrl : STD_LOGIC;
  signal asr_38_ctrl0 : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in21_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in22_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in41_in : STD_LOGIC;
  signal p_0_in55_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in5_in : STD_LOGIC;
  signal p_0_in65_in : STD_LOGIC;
  signal p_0_in72_in : STD_LOGIC;
  signal p_0_in85_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in11_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in14_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in17_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in33_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in36_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in39_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in42_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in45_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in48_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in51_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in5_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in8_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s100s0 : STD_LOGIC;
  signal s101s0 : STD_LOGIC;
  signal \^s101sq_reg[1]_0\ : STD_LOGIC;
  signal s10s0 : STD_LOGIC;
  signal s11 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s13s0 : STD_LOGIC;
  signal s14 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s16s0 : STD_LOGIC;
  signal s20 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s22s0 : STD_LOGIC;
  signal s23 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s25s0 : STD_LOGIC;
  signal s26 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s28s0 : STD_LOGIC;
  signal s29 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s31s0 : STD_LOGIC;
  signal s32s0 : STD_LOGIC;
  signal s38 : STD_LOGIC;
  signal s40s0 : STD_LOGIC;
  signal s44s0 : STD_LOGIC;
  signal s47 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s49s0 : STD_LOGIC;
  signal s5 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s50 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s52s0 : STD_LOGIC;
  signal s53s0 : STD_LOGIC;
  signal s59 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s61s0 : STD_LOGIC;
  signal s62 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s64s0 : STD_LOGIC;
  signal s65 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s67s0 : STD_LOGIC;
  signal s68 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s70s0 : STD_LOGIC;
  signal s74 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s76s0 : STD_LOGIC;
  signal s77 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s79s0 : STD_LOGIC;
  signal s7s0 : STD_LOGIC;
  signal s8 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s80 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s82s0 : STD_LOGIC;
  signal s83 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s85s0 : STD_LOGIC;
  signal s86s0 : STD_LOGIC;
  signal s92 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s94s0 : STD_LOGIC;
  signal s95 : STD_LOGIC;
  signal s97s0 : STD_LOGIC;
  signal s98 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ARADDR_s : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s_ARUSER_s04_out : STD_LOGIC;
  signal \s_ARUSER_sq_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_ARUSER_sq_reg_n_0_[3]\ : STD_LOGIC;
  signal s_AWADDR_s : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s_AWUSER_s013_out : STD_LOGIC;
  signal \s_AWUSER_sq_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_AWUSER_sq_reg_n_0_[3]\ : STD_LOGIC;
  signal s_BUSER_s : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \s_BUSER_s__0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal s_RDATA_s : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s_RUSER_s01_out : STD_LOGIC;
  signal \s_RUSER_sq_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_RUSER_sq_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_RUSER_sq_reg_n_0_[3]\ : STD_LOGIC;
  signal s_WDATA_s : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s_WUSER_s010_out : STD_LOGIC;
  signal \s_WUSER_sq_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_WUSER_sq_reg_n_0_[3]\ : STD_LOGIC;
  signal NLW_ASR_12_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ASR_12_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ASR_12_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ASR_382_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ASR_382_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ASR_382_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ArAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ArAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ArAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ArAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_AwAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_AwAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_AwAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_AwAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute srl_bus_name : string;
  attribute srl_bus_name of \ARUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/ARUSER_stage_1_eq_reg ";
  attribute srl_name : string;
  attribute srl_name of \ARUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/ARUSER_stage_1_eq_reg[0]_srl2 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ASR_10_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of ASR_14_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ASR_16_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of ASR_17_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of ASR_20_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of ASR_22_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of ASR_23_i_1 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of ASR_25_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of ASR_26_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of ASR_27_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of ASR_28_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of ASR_33_i_1 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of ASR_36_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of ASR_42_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of ASR_43_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ASR_44_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ASR_45_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of ASR_47_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of ASR_51_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ASR_53_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of ASR_54_i_1 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of ASR_57_i_1 : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of ASR_5_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of ASR_60_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of ASR_61_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of ASR_63_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of ASR_65_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of ASR_67_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of ASR_6_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of ASR_74_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of ASR_77_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of ASR_78_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of ASR_7_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of ASR_8_i_1 : label is "soft_lutpair22";
  attribute srl_bus_name of \AWUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/AWUSER_stage_1_eq_reg ";
  attribute srl_name of \AWUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/AWUSER_stage_1_eq_reg[0]_srl2 ";
  attribute SOFT_HLUTNM of \ArAddrIncr_q1[3]_i_12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ArAddrIncr_q1[3]_i_20\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ArAddrIncr_q1[3]_i_28\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ArAddrIncr_q1[3]_i_29\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \AwAddrIncr_q1[3]_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \AwAddrIncr_q1[3]_i_20\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \AwAddrIncr_q1[3]_i_28\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \AwAddrIncr_q1[3]_i_29\ : label is "soft_lutpair18";
  attribute srl_bus_name of \BUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/BUSER_stage_1_eq_reg ";
  attribute srl_name of \BUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/BUSER_stage_1_eq_reg[0]_srl2 ";
  attribute srl_bus_name of \RUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/RUSER_stage_1_eq_reg ";
  attribute srl_name of \RUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/RUSER_stage_1_eq_reg[0]_srl2 ";
  attribute srl_bus_name of \WSTRB_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/WSTRB_stage_1_eq_reg ";
  attribute srl_name of \WSTRB_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/WSTRB_stage_1_eq_reg[0]_srl2 ";
  attribute srl_bus_name of \WUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/WUSER_stage_1_eq_reg ";
  attribute srl_name of \WUSER_stage_1_eq_reg[0]_srl2\ : label is "inst/\CORE/i_Axi4PC_asr_inline/WUSER_stage_1_eq_reg[0]_srl2 ";
  attribute SOFT_HLUTNM of \s101sq[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s32sq[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s44sq[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s53sq[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s86sq[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_ARUSER_sq[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_AWUSER_sq[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_BUSER_sq[3]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_RUSER_sq[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_WUSER_sq[3]_i_1\ : label is "soft_lutpair35";
begin
  ASR_60_reg_0 <= \^asr_60_reg_0\;
  ASR_60_reg_1 <= \^asr_60_reg_1\;
  \s101sq_reg[1]_0\ <= \^s101sq_reg[1]_0\;
\ARADDR_eq[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => \araddr_q_reg[31]\(7),
      I1 => \ARADDR_q_reg_n_0_[7]\,
      I2 => \araddr_q_reg[31]\(6),
      I3 => \ARADDR_q_reg_n_0_[6]\,
      I4 => \ARADDR_eq[0]_i_2_n_0\,
      I5 => \ARADDR_eq[0]_i_3_n_0\,
      O => ARADDR_eq0
    );
\ARADDR_eq[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \ARADDR_q_reg_n_0_[0]\,
      I1 => \araddr_q_reg[31]\(0),
      I2 => \araddr_q_reg[31]\(1),
      I3 => \ARADDR_q_reg_n_0_[1]\,
      I4 => \araddr_q_reg[31]\(2),
      I5 => \ARADDR_q_reg_n_0_[2]\,
      O => \ARADDR_eq[0]_i_2_n_0\
    );
\ARADDR_eq[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \ARADDR_q_reg_n_0_[3]\,
      I1 => \araddr_q_reg[31]\(3),
      I2 => \araddr_q_reg[31]\(4),
      I3 => \ARADDR_q_reg_n_0_[4]\,
      I4 => \araddr_q_reg[31]\(5),
      I5 => \ARADDR_q_reg_n_0_[5]\,
      O => \ARADDR_eq[0]_i_3_n_0\
    );
\ARADDR_eq[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => ARADDR_q1(2),
      I1 => \araddr_q_reg[31]\(14),
      I2 => ARADDR_q1(3),
      I3 => \araddr_q_reg[31]\(15),
      I4 => \ARADDR_eq[1]_i_2_n_0\,
      I5 => \ARADDR_eq[1]_i_3_n_0\,
      O => ARADDR_eq023_out
    );
\ARADDR_eq[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in21_in(0),
      I1 => \araddr_q_reg[31]\(8),
      I2 => \araddr_q_reg[31]\(10),
      I3 => p_0_in21_in(2),
      I4 => \araddr_q_reg[31]\(9),
      I5 => p_0_in21_in(1),
      O => \ARADDR_eq[1]_i_2_n_0\
    );
\ARADDR_eq[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in21_in(3),
      I1 => \araddr_q_reg[31]\(11),
      I2 => ARADDR_q1(0),
      I3 => \araddr_q_reg[31]\(12),
      I4 => ARADDR_q1(1),
      I5 => \araddr_q_reg[31]\(13),
      O => \ARADDR_eq[1]_i_3_n_0\
    );
\ARADDR_eq[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => ARADDR_q1(11),
      I1 => \araddr_q_reg[31]\(23),
      I2 => ARADDR_q1(10),
      I3 => \araddr_q_reg[31]\(22),
      I4 => \ARADDR_eq[2]_i_2_n_0\,
      I5 => \ARADDR_eq[2]_i_3_n_0\,
      O => ARADDR_eq026_out
    );
\ARADDR_eq[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(16),
      I1 => ARADDR_q1(4),
      I2 => ARADDR_q1(6),
      I3 => \araddr_q_reg[31]\(18),
      I4 => ARADDR_q1(5),
      I5 => \araddr_q_reg[31]\(17),
      O => \ARADDR_eq[2]_i_2_n_0\
    );
\ARADDR_eq[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(19),
      I1 => ARADDR_q1(7),
      I2 => ARADDR_q1(9),
      I3 => \araddr_q_reg[31]\(21),
      I4 => ARADDR_q1(8),
      I5 => \araddr_q_reg[31]\(20),
      O => \ARADDR_eq[2]_i_3_n_0\
    );
\ARADDR_eq[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => ARADDR_q1(18),
      I1 => \araddr_q_reg[31]\(30),
      I2 => ARADDR_q1(19),
      I3 => \araddr_q_reg[31]\(31),
      I4 => \ARADDR_eq[3]_i_2_n_0\,
      I5 => \ARADDR_eq[3]_i_3_n_0\,
      O => ARADDR_eq029_out
    );
\ARADDR_eq[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => ARADDR_q1(13),
      I1 => \araddr_q_reg[31]\(25),
      I2 => ARADDR_q1(14),
      I3 => \araddr_q_reg[31]\(26),
      I4 => \araddr_q_reg[31]\(24),
      I5 => ARADDR_q1(12),
      O => \ARADDR_eq[3]_i_2_n_0\
    );
\ARADDR_eq[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(27),
      I1 => ARADDR_q1(15),
      I2 => ARADDR_q1(16),
      I3 => \araddr_q_reg[31]\(28),
      I4 => ARADDR_q1(17),
      I5 => \araddr_q_reg[31]\(29),
      O => \ARADDR_eq[3]_i_3_n_0\
    );
\ARADDR_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ARADDR_eq0,
      Q => ARADDR_eq(0),
      R => '0'
    );
\ARADDR_eq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ARADDR_eq023_out,
      Q => ARADDR_eq(1),
      R => '0'
    );
\ARADDR_eq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ARADDR_eq026_out,
      Q => ARADDR_eq(2),
      R => '0'
    );
\ARADDR_eq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ARADDR_eq029_out,
      Q => ARADDR_eq(3),
      R => '0'
    );
\ARADDR_q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(12),
      Q => ARADDR_q1(0),
      R => '0'
    );
\ARADDR_q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(22),
      Q => ARADDR_q1(10),
      R => '0'
    );
\ARADDR_q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(23),
      Q => ARADDR_q1(11),
      R => '0'
    );
\ARADDR_q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(24),
      Q => ARADDR_q1(12),
      R => '0'
    );
\ARADDR_q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(25),
      Q => ARADDR_q1(13),
      R => '0'
    );
\ARADDR_q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(26),
      Q => ARADDR_q1(14),
      R => '0'
    );
\ARADDR_q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(27),
      Q => ARADDR_q1(15),
      R => '0'
    );
\ARADDR_q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(28),
      Q => ARADDR_q1(16),
      R => '0'
    );
\ARADDR_q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(29),
      Q => ARADDR_q1(17),
      R => '0'
    );
\ARADDR_q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(30),
      Q => ARADDR_q1(18),
      R => '0'
    );
\ARADDR_q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(31),
      Q => ARADDR_q1(19),
      R => '0'
    );
\ARADDR_q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(13),
      Q => ARADDR_q1(1),
      R => '0'
    );
\ARADDR_q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(14),
      Q => ARADDR_q1(2),
      R => '0'
    );
\ARADDR_q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(15),
      Q => ARADDR_q1(3),
      R => '0'
    );
\ARADDR_q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(16),
      Q => ARADDR_q1(4),
      R => '0'
    );
\ARADDR_q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(17),
      Q => ARADDR_q1(5),
      R => '0'
    );
\ARADDR_q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(18),
      Q => ARADDR_q1(6),
      R => '0'
    );
\ARADDR_q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(19),
      Q => ARADDR_q1(7),
      R => '0'
    );
\ARADDR_q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(20),
      Q => ARADDR_q1(8),
      R => '0'
    );
\ARADDR_q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(21),
      Q => ARADDR_q1(9),
      R => '0'
    );
\ARADDR_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(0),
      Q => \ARADDR_q_reg_n_0_[0]\,
      R => '0'
    );
\ARADDR_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(10),
      Q => p_0_in21_in(2),
      R => '0'
    );
\araddr_q_reg[11]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(11),
      Q => p_0_in21_in(3),
      R => '0'
    );
\ARADDR_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(1),
      Q => \ARADDR_q_reg_n_0_[1]\,
      R => '0'
    );
\ARADDR_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(2),
      Q => \ARADDR_q_reg_n_0_[2]\,
      R => '0'
    );
\araddr_q_reg[3]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(3),
      Q => \ARADDR_q_reg_n_0_[3]\,
      R => '0'
    );
\ARADDR_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(4),
      Q => \ARADDR_q_reg_n_0_[4]\,
      R => '0'
    );
\ARADDR_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(5),
      Q => \ARADDR_q_reg_n_0_[5]\,
      R => '0'
    );
\ARADDR_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(6),
      Q => \ARADDR_q_reg_n_0_[6]\,
      R => '0'
    );
\araddr_q_reg[7]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(7),
      Q => \ARADDR_q_reg_n_0_[7]\,
      R => '0'
    );
\ARADDR_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(8),
      Q => p_0_in21_in(0),
      R => '0'
    );
\ARADDR_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \araddr_q_reg[31]\(9),
      Q => p_0_in21_in(1),
      R => '0'
    );
\ARADDR_stage_1_eq[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => ARADDR_eq(1),
      I1 => ARADDR_eq(0),
      I2 => ARADDR_eq(3),
      I3 => ARADDR_eq(2),
      O => \ARADDR_stage_1_eq[0]_i_1_n_0\
    );
\ARADDR_stage_1_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \ARADDR_stage_1_eq[0]_i_1_n_0\,
      Q => ARADDR_stage_1_eq(0),
      R => '0'
    );
\ARADDR_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ARADDR_stage_1_eq(0),
      Q => ARADDR_stage_2_eq(0),
      R => '0'
    );
\ARUSER_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => aruser_q,
      Q => \^aruser_q\,
      R => '0'
    );
\ARUSER_stage_1_eq_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => ARUSER_eq0,
      Q => \ARUSER_stage_1_eq_reg[0]_srl2_n_0\
    );
\ARUSER_stage_1_eq_reg[0]_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^aruser_q\,
      I1 => aruser_q,
      O => ARUSER_eq0
    );
\ARUSER_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \ARUSER_stage_1_eq_reg[0]_srl2_n_0\,
      Q => ARUSER_stage_2_eq(0),
      R => '0'
    );
ASR_10_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in11_in,
      I1 => AWADDR_stage_2_eq(0),
      O => ASR_10_i_1_n_0
    );
ASR_10_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_10_i_1_n_0,
      Q => Axi4PC_asr_inline_out(9),
      R => \^s101sq_reg[1]_0\
    );
ASR_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in85_in,
      I1 => resetn_q,
      I2 => \awburst_q_reg[1]\(0),
      I3 => s5(0),
      I4 => \awburst_q_reg[1]\(1),
      I5 => s5(1),
      O => s7s0
    );
ASR_11_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s7s0,
      Q => Axi4PC_asr_inline_out(10),
      R => \^s101sq_reg[1]_0\
    );
ASR_12_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ASR_12_carry_n_0,
      CO(2) => ASR_12_carry_n_1,
      CO(1) => ASR_12_carry_n_2,
      CO(0) => ASR_12_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ASR_12_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ASR_12_carry_i_1_n_0,
      S(2) => ASR_12_carry_i_2_n_0,
      S(1) => ASR_12_carry_i_3_n_0,
      S(0) => ASR_12_carry_i_4_n_0
    );
\ASR_12_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ASR_12_carry_n_0,
      CO(3) => \NLW_ASR_12_carry__0_CO_UNCONNECTED\(3),
      CO(2) => ASR_12,
      CO(1) => \ASR_12_carry__0_n_2\,
      CO(0) => \ASR_12_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ASR_12_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ASR_12_carry__0_i_1_n_0\,
      S(1) => \ASR_12_carry__0_i_2_n_0\,
      S(0) => \ASR_12_carry__0_i_3_n_0\
    );
\ASR_12_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => AWADDR_q1(19),
      I1 => AwAddrIncr_q1(19),
      I2 => AWADDR_q1(18),
      I3 => AwAddrIncr_q1(18),
      O => \ASR_12_carry__0_i_1_n_0\
    );
\ASR_12_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => AwAddrIncr_q1(15),
      I1 => AWADDR_q1(15),
      I2 => AwAddrIncr_q1(16),
      I3 => AWADDR_q1(16),
      I4 => AWADDR_q1(17),
      I5 => AwAddrIncr_q1(17),
      O => \ASR_12_carry__0_i_2_n_0\
    );
\ASR_12_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => AwAddrIncr_q1(12),
      I1 => AWADDR_q1(12),
      I2 => AwAddrIncr_q1(13),
      I3 => AWADDR_q1(13),
      I4 => AWADDR_q1(14),
      I5 => AwAddrIncr_q1(14),
      O => \ASR_12_carry__0_i_3_n_0\
    );
ASR_12_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => AwAddrIncr_q1(9),
      I1 => AWADDR_q1(9),
      I2 => AwAddrIncr_q1(10),
      I3 => AWADDR_q1(10),
      I4 => AWADDR_q1(11),
      I5 => AwAddrIncr_q1(11),
      O => ASR_12_carry_i_1_n_0
    );
ASR_12_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => AwAddrIncr_q1(6),
      I1 => AWADDR_q1(6),
      I2 => AwAddrIncr_q1(7),
      I3 => AWADDR_q1(7),
      I4 => AWADDR_q1(8),
      I5 => AwAddrIncr_q1(8),
      O => ASR_12_carry_i_2_n_0
    );
ASR_12_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => AwAddrIncr_q1(4),
      I1 => AWADDR_q1(4),
      I2 => AwAddrIncr_q1(3),
      I3 => AWADDR_q1(3),
      I4 => AWADDR_q1(5),
      I5 => AwAddrIncr_q1(5),
      O => ASR_12_carry_i_3_n_0
    );
ASR_12_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => AwAddrIncr_q1(2),
      I1 => AWADDR_q1(2),
      I2 => AwAddrIncr_q1(0),
      I3 => AWADDR_q1(0),
      I4 => AWADDR_q1(1),
      I5 => AwAddrIncr_q1(1),
      O => ASR_12_carry_i_4_n_0
    );
ASR_12_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8AAAAAAAA8AA8"
    )
        port map (
      I0 => s_AWUSER_s013_out,
      I1 => ASR_12_i_2_n_0,
      I2 => \awcache_q_reg[3]\(0),
      I3 => s8(0),
      I4 => s8(2),
      I5 => \awcache_q_reg[3]\(2),
      O => s10s0
    );
ASR_12_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => s8(3),
      I1 => \awcache_q_reg[3]\(3),
      I2 => s8(1),
      I3 => \awcache_q_reg[3]\(1),
      O => ASR_12_i_2_n_0
    );
ASR_12_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s10s0,
      Q => Axi4PC_asr_inline_out(11),
      R => \^s101sq_reg[1]_0\
    );
ASR_13_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in85_in,
      I1 => resetn_q,
      I2 => s11(0),
      I3 => data_in(11),
      I4 => s11(1),
      I5 => data_in(12),
      O => s13s0
    );
ASR_13_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s13s0,
      Q => Axi4PC_asr_inline_out(12),
      R => \^s101sq_reg[1]_0\
    );
ASR_14_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808888"
    )
        port map (
      I0 => p_0_in85_in,
      I1 => resetn_q,
      I2 => ASR_14_i_2_n_0,
      I3 => ASR_14_i_3_n_0,
      I4 => ASR_14_i_4_n_0,
      O => s16s0
    );
ASR_14_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => s14(3),
      I1 => data_in(6),
      I2 => data_in(7),
      I3 => s14(4),
      I4 => data_in(8),
      I5 => s14(5),
      O => ASR_14_i_2_n_0
    );
ASR_14_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => s14(0),
      I1 => data_in(3),
      I2 => data_in(5),
      I3 => s14(2),
      I4 => data_in(4),
      I5 => s14(1),
      O => ASR_14_i_3_n_0
    );
ASR_14_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s14(6),
      I1 => data_in(9),
      I2 => s14(7),
      I3 => data_in(10),
      O => ASR_14_i_4_n_0
    );
ASR_14_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s16s0,
      Q => Axi4PC_asr_inline_out(13),
      R => \^s101sq_reg[1]_0\
    );
ASR_16_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in85_in,
      I1 => resetn_q,
      I2 => ASR_16_i_2_n_0,
      O => s22s0
    );
ASR_16_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s20(1),
      I1 => \awprot_q_reg[2]\(1),
      I2 => s20(2),
      I3 => \awprot_q_reg[2]\(2),
      I4 => \awprot_q_reg[2]\(0),
      I5 => s20(0),
      O => ASR_16_i_2_n_0
    );
ASR_16_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s22s0,
      Q => Axi4PC_asr_inline_out(15),
      R => \^s101sq_reg[1]_0\
    );
ASR_17_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in85_in,
      I1 => resetn_q,
      I2 => ASR_17_i_2_n_0,
      O => s25s0
    );
ASR_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s23(1),
      I1 => data_in(1),
      I2 => s23(2),
      I3 => data_in(2),
      I4 => data_in(0),
      I5 => s23(0),
      O => ASR_17_i_2_n_0
    );
ASR_17_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s25s0,
      Q => Axi4PC_asr_inline_out(16),
      R => \^s101sq_reg[1]_0\
    );
ASR_18_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8AAAAAAAA8AA8"
    )
        port map (
      I0 => s_AWUSER_s013_out,
      I1 => ASR_18_i_2_n_0,
      I2 => \awqos_q_reg[3]\(1),
      I3 => s26(1),
      I4 => \awqos_q_reg[3]\(2),
      I5 => s26(2),
      O => s28s0
    );
ASR_18_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \awqos_q_reg[3]\(3),
      I1 => s26(3),
      I2 => \awqos_q_reg[3]\(0),
      I3 => s26(0),
      O => ASR_18_i_2_n_0
    );
ASR_18_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s28s0,
      Q => Axi4PC_asr_inline_out(17),
      R => \^s101sq_reg[1]_0\
    );
ASR_19_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8AAAAAAAA8AA8"
    )
        port map (
      I0 => s_AWUSER_s013_out,
      I1 => ASR_19_i_2_n_0,
      I2 => \awregion_q_reg[3]\(0),
      I3 => s29(0),
      I4 => \awregion_q_reg[3]\(2),
      I5 => s29(2),
      O => s31s0
    );
ASR_19_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \awregion_q_reg[3]\(3),
      I1 => s29(3),
      I2 => \awregion_q_reg[3]\(1),
      I3 => s29(1),
      O => ASR_19_i_2_n_0
    );
ASR_19_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s31s0,
      Q => Axi4PC_asr_inline_out(18),
      R => \^s101sq_reg[1]_0\
    );
ASR_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => asr_1_ctrl,
      I1 => ASR_12,
      O => ASR_10
    );
ASR_1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_10,
      Q => Axi4PC_asr_inline_out(0),
      R => \^s101sq_reg[1]_0\
    );
ASR_20_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in85_in,
      I1 => resetn_q,
      I2 => awvalid_q,
      O => s32s0
    );
ASR_20_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s32s0,
      Q => Axi4PC_asr_inline_out(19),
      R => \^s101sq_reg[1]_0\
    );
ASR_22_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => WDataNumError1,
      O => ASR_220
    );
ASR_22_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_220,
      Q => Axi4PC_asr_inline_out(21),
      R => \^s101sq_reg[1]_0\
    );
ASR_23_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => BStrbError,
      O => ASR_230
    );
ASR_23_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_230,
      Q => Axi4PC_asr_inline_out(22),
      R => \^s101sq_reg[1]_0\
    );
ASR_25_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => WDATA_stage_2_eq(0),
      O => ASR_25_i_1_n_0
    );
ASR_25_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_25_i_1_n_0,
      Q => Axi4PC_asr_inline_out(24),
      R => \^s101sq_reg[1]_0\
    );
ASR_26_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => p_0_in72_in,
      I1 => resetn_q,
      I2 => wlast_q,
      I3 => s38,
      O => s40s0
    );
ASR_26_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s40s0,
      Q => Axi4PC_asr_inline_out(25),
      R => \^s101sq_reg[1]_0\
    );
ASR_27_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => WSTRB_stage_2_eq(0),
      O => ASR_27_i_1_n_0
    );
ASR_27_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_27_i_1_n_0,
      Q => Axi4PC_asr_inline_out(26),
      R => \^s101sq_reg[1]_0\
    );
ASR_28_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in72_in,
      I1 => resetn_q,
      I2 => wvalid_q,
      O => s44s0
    );
ASR_28_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s44s0,
      Q => Axi4PC_asr_inline_out(27),
      R => \^s101sq_reg[1]_0\
    );
ASR_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000404040004000"
    )
        port map (
      I0 => \awburst_q_reg[1]\(0),
      I1 => awvalid_q,
      I2 => \awburst_q_reg[1]\(1),
      I3 => ASR_2_i_2_n_0,
      I4 => ASR_2_i_3_n_0,
      I5 => data_in(1),
      O => ASR_20
    );
ASR_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => data_in(2),
      I5 => ASR_2_i_4_n_0,
      O => ASR_2_i_2_n_0
    );
ASR_2_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001F5F5F"
    )
        port map (
      I0 => Q(2),
      I1 => Q(6),
      I2 => data_in(0),
      I3 => Q(5),
      I4 => data_in(2),
      I5 => Q(1),
      O => ASR_2_i_3_n_0
    );
ASR_2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE0E0E0"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in(0),
      I2 => Q(0),
      I3 => Q(4),
      I4 => data_in(2),
      O => ASR_2_i_4_n_0
    );
ASR_2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_20,
      Q => Axi4PC_asr_inline_out(1),
      R => \^s101sq_reg[1]_0\
    );
ASR_33_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => BrespErrorLead_reg,
      O => ASR_330
    );
ASR_33_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_330,
      Q => Axi4PC_asr_inline_out(32),
      R => \^s101sq_reg[1]_0\
    );
ASR_34_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in65_in,
      I1 => resetn_q,
      I2 => \bid_q_reg[1]\(0),
      I3 => s47(0),
      I4 => \bid_q_reg[1]\(1),
      I5 => s47(1),
      O => s49s0
    );
ASR_34_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s49s0,
      Q => Axi4PC_asr_inline_out(33),
      R => \^s101sq_reg[1]_0\
    );
ASR_35_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in65_in,
      I1 => resetn_q,
      I2 => s50(0),
      I3 => \bresp_q_reg[1]\(0),
      I4 => s50(1),
      I5 => \bresp_q_reg[1]\(1),
      O => s52s0
    );
ASR_35_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s52s0,
      Q => Axi4PC_asr_inline_out(34),
      R => \^s101sq_reg[1]_0\
    );
ASR_36_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in65_in,
      I1 => resetn_q,
      I2 => bvalid_q,
      O => s53s0
    );
ASR_36_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s53s0,
      Q => Axi4PC_asr_inline_out(35),
      R => \^s101sq_reg[1]_0\
    );
ASR_382_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ASR_382_carry_n_0,
      CO(2) => ASR_382_carry_n_1,
      CO(1) => ASR_382_carry_n_2,
      CO(0) => ASR_382_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ASR_382_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ASR_382_carry_i_1_n_0,
      S(2) => ASR_382_carry_i_2_n_0,
      S(1) => ASR_382_carry_i_3_n_0,
      S(0) => ASR_382_carry_i_4_n_0
    );
\ASR_382_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ASR_382_carry_n_0,
      CO(3) => \NLW_ASR_382_carry__0_CO_UNCONNECTED\(3),
      CO(2) => ASR_382,
      CO(1) => \ASR_382_carry__0_n_2\,
      CO(0) => \ASR_382_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ASR_382_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \ASR_382_carry__0_i_1_n_0\,
      S(1) => \ASR_382_carry__0_i_2_n_0\,
      S(0) => \ASR_382_carry__0_i_3_n_0\
    );
\ASR_382_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ARADDR_q1(19),
      I1 => ArAddrIncr_q1(19),
      I2 => ARADDR_q1(18),
      I3 => ArAddrIncr_q1(18),
      O => \ASR_382_carry__0_i_1_n_0\
    );
\ASR_382_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ArAddrIncr_q1(15),
      I1 => ARADDR_q1(15),
      I2 => ArAddrIncr_q1(16),
      I3 => ARADDR_q1(16),
      I4 => ARADDR_q1(17),
      I5 => ArAddrIncr_q1(17),
      O => \ASR_382_carry__0_i_2_n_0\
    );
\ASR_382_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ArAddrIncr_q1(12),
      I1 => ARADDR_q1(12),
      I2 => ArAddrIncr_q1(13),
      I3 => ARADDR_q1(13),
      I4 => ARADDR_q1(14),
      I5 => ArAddrIncr_q1(14),
      O => \ASR_382_carry__0_i_3_n_0\
    );
ASR_382_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ArAddrIncr_q1(9),
      I1 => ARADDR_q1(9),
      I2 => ArAddrIncr_q1(10),
      I3 => ARADDR_q1(10),
      I4 => ARADDR_q1(11),
      I5 => ArAddrIncr_q1(11),
      O => ASR_382_carry_i_1_n_0
    );
ASR_382_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ArAddrIncr_q1(6),
      I1 => ARADDR_q1(6),
      I2 => ArAddrIncr_q1(7),
      I3 => ARADDR_q1(7),
      I4 => ARADDR_q1(8),
      I5 => ArAddrIncr_q1(8),
      O => ASR_382_carry_i_2_n_0
    );
ASR_382_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ArAddrIncr_q1(3),
      I1 => ARADDR_q1(3),
      I2 => ArAddrIncr_q1(4),
      I3 => ARADDR_q1(4),
      I4 => ARADDR_q1(5),
      I5 => ArAddrIncr_q1(5),
      O => ASR_382_carry_i_3_n_0
    );
ASR_382_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => ArAddrIncr_q1(0),
      I1 => ARADDR_q1(0),
      I2 => ArAddrIncr_q1(1),
      I3 => ARADDR_q1(1),
      I4 => ARADDR_q1(2),
      I5 => ArAddrIncr_q1(2),
      O => ASR_382_carry_i_4_n_0
    );
ASR_38_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => asr_38_ctrl,
      I1 => ASR_382,
      O => ASR_380
    );
ASR_38_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_380,
      Q => Axi4PC_asr_inline_out(37),
      R => \^s101sq_reg[1]_0\
    );
ASR_39_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000404040004000"
    )
        port map (
      I0 => \arburst_q_reg[1]\(0),
      I1 => arvalid_q,
      I2 => \arburst_q_reg[1]\(1),
      I3 => ASR_39_i_2_n_0,
      I4 => ASR_39_i_3_n_0,
      I5 => \arsize_q_reg[2]\(1),
      O => ASR_390
    );
ASR_39_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \araddr_q_reg[31]\(2),
      I1 => \araddr_q_reg[31]\(1),
      I2 => \araddr_q_reg[31]\(3),
      I3 => \araddr_q_reg[31]\(0),
      I4 => \arsize_q_reg[2]\(2),
      I5 => ASR_39_i_4_n_0,
      O => ASR_39_i_2_n_0
    );
ASR_39_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001F5F5F"
    )
        port map (
      I0 => \araddr_q_reg[31]\(2),
      I1 => \araddr_q_reg[31]\(6),
      I2 => \arsize_q_reg[2]\(0),
      I3 => \araddr_q_reg[31]\(5),
      I4 => \arsize_q_reg[2]\(2),
      I5 => \araddr_q_reg[31]\(1),
      O => ASR_39_i_3_n_0
    );
ASR_39_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE0E0E0"
    )
        port map (
      I0 => \arsize_q_reg[2]\(1),
      I1 => \arsize_q_reg[2]\(0),
      I2 => \araddr_q_reg[31]\(0),
      I3 => \araddr_q_reg[31]\(4),
      I4 => \arsize_q_reg[2]\(2),
      O => ASR_39_i_4_n_0
    );
ASR_39_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_390,
      Q => Axi4PC_asr_inline_out(38),
      R => \^s101sq_reg[1]_0\
    );
ASR_3_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \awburst_q_reg[1]\(1),
      I1 => \awburst_q_reg[1]\(0),
      I2 => awvalid_q,
      O => ASR_30
    );
ASR_3_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_30,
      Q => Axi4PC_asr_inline_out(2),
      R => \^s101sq_reg[1]_0\
    );
ASR_40_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \arburst_q_reg[1]\(1),
      I1 => \arburst_q_reg[1]\(0),
      I2 => arvalid_q,
      O => ASR_400
    );
ASR_40_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_400,
      Q => Axi4PC_asr_inline_out(39),
      R => \^s101sq_reg[1]_0\
    );
ASR_42_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \arcache_q_reg[3]\(2),
      I1 => \arcache_q_reg[3]\(3),
      I2 => arvalid_q,
      I3 => \arcache_q_reg[3]\(1),
      O => ASR_420
    );
ASR_42_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_420,
      Q => Axi4PC_asr_inline_out(41),
      R => \^s101sq_reg[1]_0\
    );
ASR_43_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ASR_43_i_2_n_0,
      I1 => \arburst_q_reg[1]\(0),
      I2 => arvalid_q,
      I3 => \arburst_q_reg[1]\(1),
      O => ASR_430
    );
ASR_43_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \arlen_q_reg[7]\(6),
      I1 => \arlen_q_reg[7]\(4),
      I2 => \arlen_q_reg[7]\(7),
      I3 => \arlen_q_reg[7]\(5),
      O => ASR_43_i_2_n_0
    );
ASR_43_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_430,
      Q => Axi4PC_asr_inline_out(42),
      R => \^s101sq_reg[1]_0\
    );
ASR_44_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA8AAA8A8A"
    )
        port map (
      I0 => ASR_44_i_2_n_0,
      I1 => ASR_43_i_2_n_0,
      I2 => \arlen_q_reg[7]\(0),
      I3 => \arlen_q_reg[7]\(1),
      I4 => \arlen_q_reg[7]\(2),
      I5 => \arlen_q_reg[7]\(3),
      O => ASR_440
    );
ASR_44_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \arburst_q_reg[1]\(1),
      I1 => arvalid_q,
      I2 => \arburst_q_reg[1]\(0),
      O => ASR_44_i_2_n_0
    );
ASR_44_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_440,
      Q => Axi4PC_asr_inline_out(43),
      R => \^s101sq_reg[1]_0\
    );
ASR_45_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => arvalid_q,
      I1 => \arsize_q_reg[2]\(2),
      O => ASR_450
    );
ASR_45_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_450,
      Q => Axi4PC_asr_inline_out(44),
      R => \^s101sq_reg[1]_0\
    );
ASR_47_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => ARADDR_stage_2_eq(0),
      O => ASR_47_i_1_n_0
    );
ASR_47_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_47_i_1_n_0,
      Q => Axi4PC_asr_inline_out(46),
      R => \^s101sq_reg[1]_0\
    );
ASR_48_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => resetn_q,
      I2 => \arburst_q_reg[1]\(0),
      I3 => s59(0),
      I4 => \arburst_q_reg[1]\(1),
      I5 => s59(1),
      O => s61s0
    );
ASR_48_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s61s0,
      Q => Axi4PC_asr_inline_out(47),
      R => \^s101sq_reg[1]_0\
    );
ASR_49_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8AAAAAAAA8AA8"
    )
        port map (
      I0 => s_ARUSER_s04_out,
      I1 => ASR_49_i_2_n_0,
      I2 => s62(3),
      I3 => \arcache_q_reg[3]\(3),
      I4 => s62(1),
      I5 => \arcache_q_reg[3]\(1),
      O => s64s0
    );
ASR_49_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \arcache_q_reg[3]\(0),
      I1 => s62(0),
      I2 => s62(2),
      I3 => \arcache_q_reg[3]\(2),
      O => ASR_49_i_2_n_0
    );
ASR_49_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s64s0,
      Q => Axi4PC_asr_inline_out(48),
      R => \^s101sq_reg[1]_0\
    );
ASR_50_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => resetn_q,
      I2 => s65(0),
      I3 => \arid_q_reg[1]\(0),
      I4 => s65(1),
      I5 => \arid_q_reg[1]\(1),
      O => s67s0
    );
ASR_50_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s67s0,
      Q => Axi4PC_asr_inline_out(49),
      R => \^s101sq_reg[1]_0\
    );
ASR_51_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808888"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => resetn_q,
      I2 => ASR_51_i_2_n_0,
      I3 => ASR_51_i_3_n_0,
      I4 => ASR_51_i_4_n_0,
      O => s70s0
    );
ASR_51_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => s68(3),
      I1 => \arlen_q_reg[7]\(3),
      I2 => \arlen_q_reg[7]\(4),
      I3 => s68(4),
      I4 => \arlen_q_reg[7]\(5),
      I5 => s68(5),
      O => ASR_51_i_2_n_0
    );
ASR_51_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => s68(0),
      I1 => \arlen_q_reg[7]\(0),
      I2 => \arlen_q_reg[7]\(2),
      I3 => s68(2),
      I4 => \arlen_q_reg[7]\(1),
      I5 => s68(1),
      O => ASR_51_i_3_n_0
    );
ASR_51_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => s68(6),
      I1 => \arlen_q_reg[7]\(6),
      I2 => s68(7),
      I3 => \arlen_q_reg[7]\(7),
      O => ASR_51_i_4_n_0
    );
ASR_51_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s70s0,
      Q => Axi4PC_asr_inline_out(50),
      R => \^s101sq_reg[1]_0\
    );
ASR_53_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => resetn_q,
      I2 => ASR_53_i_2_n_0,
      O => s76s0
    );
ASR_53_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s74(1),
      I1 => \arprot_q_reg[2]\(1),
      I2 => s74(2),
      I3 => \arprot_q_reg[2]\(2),
      I4 => \arprot_q_reg[2]\(0),
      I5 => s74(0),
      O => ASR_53_i_2_n_0
    );
ASR_53_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s76s0,
      Q => Axi4PC_asr_inline_out(52),
      R => \^s101sq_reg[1]_0\
    );
ASR_54_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => resetn_q,
      I2 => ASR_54_i_2_n_0,
      O => s79s0
    );
ASR_54_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => s77(1),
      I1 => \arsize_q_reg[2]\(1),
      I2 => s77(2),
      I3 => \arsize_q_reg[2]\(2),
      I4 => \arsize_q_reg[2]\(0),
      I5 => s77(0),
      O => ASR_54_i_2_n_0
    );
ASR_54_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s79s0,
      Q => Axi4PC_asr_inline_out(53),
      R => \^s101sq_reg[1]_0\
    );
ASR_55_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8AAAAAAAA8AA8"
    )
        port map (
      I0 => s_ARUSER_s04_out,
      I1 => ASR_55_i_2_n_0,
      I2 => \arqos_q_reg[3]\(0),
      I3 => s80(0),
      I4 => \arqos_q_reg[3]\(1),
      I5 => s80(1),
      O => s82s0
    );
ASR_55_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \arqos_q_reg[3]\(3),
      I1 => s80(3),
      I2 => \arqos_q_reg[3]\(2),
      I3 => s80(2),
      O => ASR_55_i_2_n_0
    );
ASR_55_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s82s0,
      Q => Axi4PC_asr_inline_out(54),
      R => \^s101sq_reg[1]_0\
    );
ASR_56_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AA8AAAAAAAA8AA8"
    )
        port map (
      I0 => s_ARUSER_s04_out,
      I1 => ASR_56_i_2_n_0,
      I2 => \arregion_q_reg[3]\(2),
      I3 => s83(2),
      I4 => \arregion_q_reg[3]\(1),
      I5 => s83(1),
      O => s85s0
    );
ASR_56_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => \arregion_q_reg[3]\(3),
      I1 => s83(3),
      I2 => \arregion_q_reg[3]\(0),
      I3 => s83(0),
      O => ASR_56_i_2_n_0
    );
ASR_56_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s85s0,
      Q => Axi4PC_asr_inline_out(55),
      R => \^s101sq_reg[1]_0\
    );
ASR_57_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in41_in,
      I1 => resetn_q,
      I2 => arvalid_q,
      O => s86s0
    );
ASR_57_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s86s0,
      Q => Axi4PC_asr_inline_out(56),
      R => \^s101sq_reg[1]_0\
    );
ASR_59_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008080800080"
    )
        port map (
      I0 => resetn_q,
      I1 => rvalid_q,
      I2 => rready_q,
      I3 => \gen_thread_loop[1].RCount_reg[1][6]\(0),
      I4 => rlast_q,
      I5 => CO(0),
      O => ASR_590
    );
ASR_59_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_590,
      Q => Axi4PC_asr_inline_out(58),
      R => \^s101sq_reg[1]_0\
    );
ASR_5_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \awcache_q_reg[3]\(2),
      I1 => \awcache_q_reg[3]\(3),
      I2 => awvalid_q,
      I3 => \awcache_q_reg[3]\(1),
      O => ASR_50
    );
ASR_5_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_50,
      Q => Axi4PC_asr_inline_out(4),
      R => \^s101sq_reg[1]_0\
    );
ASR_60_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => resetn_q,
      I1 => rvalid_q,
      I2 => \^asr_60_reg_0\,
      I3 => \^asr_60_reg_1\,
      O => ASR_600
    );
ASR_60_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009900990090000"
    )
        port map (
      I0 => \gen_thread_loop[1].active_id_reg\(1),
      I1 => \rid_q_reg[1]\(1),
      I2 => \rid_q_reg[1]\(0),
      I3 => \gen_thread_loop[1].active_id_reg\(0),
      I4 => active_cnt(2),
      I5 => active_cnt(3),
      O => \^asr_60_reg_0\
    );
ASR_60_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009900990090000"
    )
        port map (
      I0 => \gen_thread_loop[0].active_id_reg\(1),
      I1 => \rid_q_reg[1]\(1),
      I2 => \rid_q_reg[1]\(0),
      I3 => \gen_thread_loop[0].active_id_reg\(0),
      I4 => active_cnt(0),
      I5 => active_cnt(1),
      O => \^asr_60_reg_1\
    );
ASR_60_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_600,
      Q => Axi4PC_asr_inline_out(59),
      R => \^s101sq_reg[1]_0\
    );
ASR_61_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FFFFF"
    )
        port map (
      I0 => resetn_q,
      I1 => rvalid_q,
      I2 => rready_q,
      I3 => \rresp_q_reg[1]\(1),
      I4 => \rresp_q_reg[1]\(0),
      O => ASR_61_reg_0
    );
ASR_61_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_610,
      Q => Axi4PC_asr_inline_out(60),
      R => \^s101sq_reg[1]_0\
    );
ASR_63_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_RUSER_sq_reg_n_0_[1]\,
      I1 => RDATA_stage_2_eq(0),
      O => ASR_63_i_1_n_0
    );
ASR_63_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_63_i_1_n_0,
      Q => Axi4PC_asr_inline_out(62),
      R => \^s101sq_reg[1]_0\
    );
ASR_64_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in22_in,
      I1 => resetn_q,
      I2 => s92(0),
      I3 => \rid_q_reg[1]\(0),
      I4 => s92(1),
      I5 => \rid_q_reg[1]\(1),
      O => s94s0
    );
ASR_64_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s94s0,
      Q => Axi4PC_asr_inline_out(63),
      R => \^s101sq_reg[1]_0\
    );
ASR_65_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => p_0_in22_in,
      I1 => resetn_q,
      I2 => rlast_q,
      I3 => s95,
      O => s97s0
    );
ASR_65_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s97s0,
      Q => Axi4PC_asr_inline_out(64),
      R => \^s101sq_reg[1]_0\
    );
ASR_66_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880888888880880"
    )
        port map (
      I0 => p_0_in22_in,
      I1 => resetn_q,
      I2 => \rresp_q_reg[1]\(0),
      I3 => s98(0),
      I4 => \rresp_q_reg[1]\(1),
      I5 => s98(1),
      O => s100s0
    );
ASR_66_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s100s0,
      Q => Axi4PC_asr_inline_out(65),
      R => \^s101sq_reg[1]_0\
    );
ASR_67_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => p_0_in22_in,
      I1 => resetn_q,
      I2 => rvalid_q,
      O => s101s0
    );
ASR_67_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s101s0,
      Q => Axi4PC_asr_inline_out(66),
      R => \^s101sq_reg[1]_0\
    );
ASR_6_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ASR_6_i_2_n_0,
      I1 => \awburst_q_reg[1]\(0),
      I2 => awvalid_q,
      I3 => \awburst_q_reg[1]\(1),
      O => ASR_60
    );
ASR_6_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_in(9),
      I1 => data_in(7),
      I2 => data_in(10),
      I3 => data_in(8),
      O => ASR_6_i_2_n_0
    );
ASR_6_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_60,
      Q => Axi4PC_asr_inline_out(5),
      R => \^s101sq_reg[1]_0\
    );
ASR_74_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in11_in,
      I1 => AWUSER_stage_2_eq(0),
      O => ASR_74_i_1_n_0
    );
ASR_74_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_74_i_1_n_0,
      Q => Axi4PC_asr_inline_out(73),
      R => \^s101sq_reg[1]_0\
    );
ASR_75_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => WUSER_stage_2_eq(0),
      O => ASR_75_i_1_n_0
    );
ASR_75_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_75_i_1_n_0,
      Q => Axi4PC_asr_inline_out(74),
      R => \^s101sq_reg[1]_0\
    );
ASR_76_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in5_in,
      I1 => BUSER_stage_2_eq(0),
      O => ASR_76_i_1_n_0
    );
ASR_76_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_76_i_1_n_0,
      Q => Axi4PC_asr_inline_out(75),
      R => \^s101sq_reg[1]_0\
    );
ASR_77_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => ARUSER_stage_2_eq(0),
      O => ASR_77_i_1_n_0
    );
ASR_77_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_77_i_1_n_0,
      Q => Axi4PC_asr_inline_out(76),
      R => \^s101sq_reg[1]_0\
    );
ASR_78_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_RUSER_sq_reg_n_0_[1]\,
      I1 => RUSER_stage_2_eq(0),
      O => ASR_78_i_1_n_0
    );
ASR_78_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_78_i_1_n_0,
      Q => Axi4PC_asr_inline_out(77),
      R => \^s101sq_reg[1]_0\
    );
ASR_7_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2A20AAAA"
    )
        port map (
      I0 => ASR_7_i_2_n_0,
      I1 => data_in(4),
      I2 => data_in(5),
      I3 => data_in(6),
      I4 => data_in(3),
      I5 => ASR_6_i_2_n_0,
      O => ASR_70
    );
ASR_7_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \awburst_q_reg[1]\(1),
      I1 => awvalid_q,
      I2 => \awburst_q_reg[1]\(0),
      O => ASR_7_i_2_n_0
    );
ASR_7_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_70,
      Q => Axi4PC_asr_inline_out(6),
      R => \^s101sq_reg[1]_0\
    );
ASR_8_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => awvalid_q,
      I1 => data_in(2),
      O => ASR_80
    );
ASR_8_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ASR_80,
      Q => Axi4PC_asr_inline_out(7),
      R => \^s101sq_reg[1]_0\
    );
\AWADDR_eq[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => Q(6),
      I1 => \AWADDR_q_reg_n_0_[6]\,
      I2 => Q(7),
      I3 => \AWADDR_q_reg_n_0_[7]\,
      I4 => \AWADDR_eq[0]_i_2_n_0\,
      I5 => \AWADDR_eq[0]_i_3_n_0\,
      O => AWADDR_eq0
    );
\AWADDR_eq[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \AWADDR_q_reg_n_0_[0]\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => \AWADDR_q_reg_n_0_[2]\,
      I4 => Q(1),
      I5 => \AWADDR_q_reg_n_0_[1]\,
      O => \AWADDR_eq[0]_i_2_n_0\
    );
\AWADDR_eq[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \AWADDR_q_reg_n_0_[3]\,
      I1 => Q(3),
      I2 => Q(4),
      I3 => \AWADDR_q_reg_n_0_[4]\,
      I4 => Q(5),
      I5 => \AWADDR_q_reg_n_0_[5]\,
      O => \AWADDR_eq[0]_i_3_n_0\
    );
\AWADDR_eq[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => AWADDR_q1(2),
      I1 => Q(14),
      I2 => AWADDR_q1(3),
      I3 => Q(15),
      I4 => \AWADDR_eq[1]_i_2_n_0\,
      I5 => \AWADDR_eq[1]_i_3_n_0\,
      O => AWADDR_eq057_out
    );
\AWADDR_eq[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in55_in(0),
      I1 => Q(8),
      I2 => Q(9),
      I3 => p_0_in55_in(1),
      I4 => Q(10),
      I5 => p_0_in55_in(2),
      O => \AWADDR_eq[1]_i_2_n_0\
    );
\AWADDR_eq[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => p_0_in55_in(3),
      I1 => Q(11),
      I2 => AWADDR_q1(0),
      I3 => Q(12),
      I4 => AWADDR_q1(1),
      I5 => Q(13),
      O => \AWADDR_eq[1]_i_3_n_0\
    );
\AWADDR_eq[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => AWADDR_q1(10),
      I1 => Q(22),
      I2 => AWADDR_q1(11),
      I3 => Q(23),
      I4 => \AWADDR_eq[2]_i_2_n_0\,
      I5 => \AWADDR_eq[2]_i_3_n_0\,
      O => AWADDR_eq060_out
    );
\AWADDR_eq[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(16),
      I1 => AWADDR_q1(4),
      I2 => AWADDR_q1(6),
      I3 => Q(18),
      I4 => AWADDR_q1(5),
      I5 => Q(17),
      O => \AWADDR_eq[2]_i_2_n_0\
    );
\AWADDR_eq[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(19),
      I1 => AWADDR_q1(7),
      I2 => AWADDR_q1(8),
      I3 => Q(20),
      I4 => AWADDR_q1(9),
      I5 => Q(21),
      O => \AWADDR_eq[2]_i_3_n_0\
    );
\AWADDR_eq[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => AWADDR_q1(18),
      I1 => Q(30),
      I2 => AWADDR_q1(19),
      I3 => Q(31),
      I4 => \AWADDR_eq[3]_i_2_n_0\,
      I5 => \AWADDR_eq[3]_i_3_n_0\,
      O => AWADDR_eq063_out
    );
\AWADDR_eq[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(24),
      I1 => AWADDR_q1(12),
      I2 => AWADDR_q1(14),
      I3 => Q(26),
      I4 => AWADDR_q1(13),
      I5 => Q(25),
      O => \AWADDR_eq[3]_i_2_n_0\
    );
\AWADDR_eq[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => Q(27),
      I1 => AWADDR_q1(15),
      I2 => AWADDR_q1(16),
      I3 => Q(28),
      I4 => AWADDR_q1(17),
      I5 => Q(29),
      O => \AWADDR_eq[3]_i_3_n_0\
    );
\AWADDR_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWADDR_eq0,
      Q => AWADDR_eq(0),
      R => '0'
    );
\AWADDR_eq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWADDR_eq057_out,
      Q => AWADDR_eq(1),
      R => '0'
    );
\AWADDR_eq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWADDR_eq060_out,
      Q => AWADDR_eq(2),
      R => '0'
    );
\AWADDR_eq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWADDR_eq063_out,
      Q => AWADDR_eq(3),
      R => '0'
    );
\AWADDR_q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(12),
      Q => AWADDR_q1(0),
      R => '0'
    );
\AWADDR_q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(22),
      Q => AWADDR_q1(10),
      R => '0'
    );
\AWADDR_q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(23),
      Q => AWADDR_q1(11),
      R => '0'
    );
\AWADDR_q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(24),
      Q => AWADDR_q1(12),
      R => '0'
    );
\AWADDR_q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(25),
      Q => AWADDR_q1(13),
      R => '0'
    );
\AWADDR_q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(26),
      Q => AWADDR_q1(14),
      R => '0'
    );
\AWADDR_q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(27),
      Q => AWADDR_q1(15),
      R => '0'
    );
\AWADDR_q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(28),
      Q => AWADDR_q1(16),
      R => '0'
    );
\AWADDR_q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(29),
      Q => AWADDR_q1(17),
      R => '0'
    );
\AWADDR_q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(30),
      Q => AWADDR_q1(18),
      R => '0'
    );
\AWADDR_q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(31),
      Q => AWADDR_q1(19),
      R => '0'
    );
\AWADDR_q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(13),
      Q => AWADDR_q1(1),
      R => '0'
    );
\AWADDR_q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(14),
      Q => AWADDR_q1(2),
      R => '0'
    );
\AWADDR_q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(15),
      Q => AWADDR_q1(3),
      R => '0'
    );
\AWADDR_q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(16),
      Q => AWADDR_q1(4),
      R => '0'
    );
\AWADDR_q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(17),
      Q => AWADDR_q1(5),
      R => '0'
    );
\AWADDR_q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(18),
      Q => AWADDR_q1(6),
      R => '0'
    );
\AWADDR_q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(19),
      Q => AWADDR_q1(7),
      R => '0'
    );
\AWADDR_q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(20),
      Q => AWADDR_q1(8),
      R => '0'
    );
\AWADDR_q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(21),
      Q => AWADDR_q1(9),
      R => '0'
    );
\AWADDR_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(0),
      Q => \AWADDR_q_reg_n_0_[0]\,
      R => '0'
    );
\AWADDR_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(10),
      Q => p_0_in55_in(2),
      R => '0'
    );
\awaddr_q_reg[11]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(11),
      Q => p_0_in55_in(3),
      R => '0'
    );
\AWADDR_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(1),
      Q => \AWADDR_q_reg_n_0_[1]\,
      R => '0'
    );
\AWADDR_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(2),
      Q => \AWADDR_q_reg_n_0_[2]\,
      R => '0'
    );
\AWADDR_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(3),
      Q => \AWADDR_q_reg_n_0_[3]\,
      R => '0'
    );
\AWADDR_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(4),
      Q => \AWADDR_q_reg_n_0_[4]\,
      R => '0'
    );
\AWADDR_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(5),
      Q => \AWADDR_q_reg_n_0_[5]\,
      R => '0'
    );
\AWADDR_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(6),
      Q => \AWADDR_q_reg_n_0_[6]\,
      R => '0'
    );
\awaddr_q_reg[7]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(7),
      Q => \AWADDR_q_reg_n_0_[7]\,
      R => '0'
    );
\AWADDR_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(8),
      Q => p_0_in55_in(0),
      R => '0'
    );
\AWADDR_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => Q(9),
      Q => p_0_in55_in(1),
      R => '0'
    );
\AWADDR_stage_1_eq[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => AWADDR_eq(1),
      I1 => AWADDR_eq(0),
      I2 => AWADDR_eq(3),
      I3 => AWADDR_eq(2),
      O => \AWADDR_stage_1_eq[0]_i_1_n_0\
    );
\AWADDR_stage_1_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \AWADDR_stage_1_eq[0]_i_1_n_0\,
      Q => AWADDR_stage_1_eq(0),
      R => '0'
    );
\AWADDR_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWADDR_stage_1_eq(0),
      Q => AWADDR_stage_2_eq(0),
      R => '0'
    );
\AWUSER_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => awuser_q,
      Q => \^awuser_q\,
      R => '0'
    );
\AWUSER_stage_1_eq_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => AWUSER_eq0,
      Q => \AWUSER_stage_1_eq_reg[0]_srl2_n_0\
    );
\AWUSER_stage_1_eq_reg[0]_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^awuser_q\,
      I1 => awuser_q,
      O => AWUSER_eq0
    );
\AWUSER_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \AWUSER_stage_1_eq_reg[0]_srl2_n_0\,
      Q => AWUSER_stage_2_eq(0),
      R => '0'
    );
\ArAddrIncr_q1[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(23),
      O => \ArAddrIncr_q1[11]_i_2_n_0\
    );
\ArAddrIncr_q1[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(22),
      O => \ArAddrIncr_q1[11]_i_3_n_0\
    );
\ArAddrIncr_q1[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(21),
      O => \ArAddrIncr_q1[11]_i_4_n_0\
    );
\ArAddrIncr_q1[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(20),
      O => \ArAddrIncr_q1[11]_i_5_n_0\
    );
\ArAddrIncr_q1[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(27),
      O => \ArAddrIncr_q1[15]_i_2_n_0\
    );
\ArAddrIncr_q1[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(26),
      O => \ArAddrIncr_q1[15]_i_3_n_0\
    );
\ArAddrIncr_q1[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(25),
      O => \ArAddrIncr_q1[15]_i_4_n_0\
    );
\ArAddrIncr_q1[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(24),
      O => \ArAddrIncr_q1[15]_i_5_n_0\
    );
\ArAddrIncr_q1[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(31),
      O => \ArAddrIncr_q1[19]_i_2_n_0\
    );
\ArAddrIncr_q1[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(30),
      O => \ArAddrIncr_q1[19]_i_3_n_0\
    );
\ArAddrIncr_q1[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(29),
      O => \ArAddrIncr_q1[19]_i_4_n_0\
    );
\ArAddrIncr_q1[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(28),
      O => \ArAddrIncr_q1[19]_i_5_n_0\
    );
\ArAddrIncr_q1[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \arlen_q_reg[7]\(5),
      I1 => \arlen_q_reg[7]\(6),
      I2 => \arsize_q_reg[2]\(1),
      I3 => \arlen_q_reg[7]\(7),
      I4 => \arsize_q_reg[2]\(0),
      O => \ArAddrIncr_q1_reg[3]_1\
    );
\ArAddrIncr_q1[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \arlen_q_reg[7]\(4),
      I1 => \arlen_q_reg[7]\(5),
      I2 => \arsize_q_reg[2]\(1),
      I3 => \arlen_q_reg[7]\(6),
      I4 => \arsize_q_reg[2]\(0),
      I5 => \arlen_q_reg[7]\(7),
      O => \ArAddrIncr_q1_reg[3]_2\
    );
\ArAddrIncr_q1[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \arlen_q_reg[7]\(3),
      I1 => \arlen_q_reg[7]\(4),
      I2 => \arsize_q_reg[2]\(1),
      I3 => \arlen_q_reg[7]\(5),
      I4 => \arsize_q_reg[2]\(0),
      I5 => \arlen_q_reg[7]\(6),
      O => \ArAddrIncr_q1_reg[3]_3\
    );
\ArAddrIncr_q1[3]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \arlen_q_reg[7]\(7),
      I1 => \arsize_q_reg[2]\(0),
      I2 => \arlen_q_reg[7]\(6),
      I3 => \arsize_q_reg[2]\(1),
      O => \ArAddrIncr_q1_reg[3]_0\
    );
\ArAddrIncr_q1[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \arlen_q_reg[7]\(2),
      I1 => \arlen_q_reg[7]\(3),
      I2 => \arsize_q_reg[2]\(1),
      I3 => \arlen_q_reg[7]\(4),
      I4 => \arsize_q_reg[2]\(0),
      I5 => \arlen_q_reg[7]\(5),
      O => \ArAddrIncr_q1_reg[3]_4\
    );
\ArAddrIncr_q1[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \arlen_q_reg[7]\(1),
      I1 => \arlen_q_reg[7]\(2),
      I2 => \arsize_q_reg[2]\(1),
      I3 => \arlen_q_reg[7]\(3),
      I4 => \arsize_q_reg[2]\(0),
      I5 => \arlen_q_reg[7]\(4),
      O => \ArAddrIncr_q1_reg[3]_5\
    );
\ArAddrIncr_q1[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \arlen_q_reg[7]\(0),
      I1 => \arlen_q_reg[7]\(1),
      I2 => \arsize_q_reg[2]\(1),
      I3 => \arlen_q_reg[7]\(2),
      I4 => \arsize_q_reg[2]\(0),
      I5 => \arlen_q_reg[7]\(3),
      O => \ArAddrIncr_q1_reg[3]_6\
    );
\ArAddrIncr_q1[3]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \arlen_q_reg[7]\(0),
      I1 => \arsize_q_reg[2]\(1),
      I2 => \arlen_q_reg[7]\(1),
      I3 => \arsize_q_reg[2]\(0),
      I4 => \arlen_q_reg[7]\(2),
      O => \ArAddrIncr_q1_reg[3]_7\
    );
\ArAddrIncr_q1[3]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \arlen_q_reg[7]\(0),
      I1 => \arsize_q_reg[2]\(0),
      I2 => \arlen_q_reg[7]\(1),
      O => \ArAddrIncr_q1_reg[3]_8\
    );
\ArAddrIncr_q1[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(15),
      O => \ArAddrIncr_q1[3]_i_3_n_0\
    );
\ArAddrIncr_q1[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(19),
      O => \ArAddrIncr_q1[7]_i_2_n_0\
    );
\ArAddrIncr_q1[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(18),
      O => \ArAddrIncr_q1[7]_i_3_n_0\
    );
\ArAddrIncr_q1[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(17),
      O => \ArAddrIncr_q1[7]_i_4_n_0\
    );
\ArAddrIncr_q1[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \araddr_q_reg[31]\(16),
      O => \ArAddrIncr_q1[7]_i_5_n_0\
    );
\ArAddrIncr_q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(12),
      Q => ArAddrIncr_q1(0),
      R => '0'
    );
\ArAddrIncr_q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(22),
      Q => ArAddrIncr_q1(10),
      R => '0'
    );
\ArAddrIncr_q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(23),
      Q => ArAddrIncr_q1(11),
      R => '0'
    );
\ArAddrIncr_q1_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ArAddrIncr_q1_reg[7]_i_1_n_0\,
      CO(3) => \ArAddrIncr_q1_reg[11]_i_1_n_0\,
      CO(2) => \ArAddrIncr_q1_reg[11]_i_1_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[11]_i_1_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ArAddrIncr(23 downto 20),
      S(3) => \ArAddrIncr_q1[11]_i_2_n_0\,
      S(2) => \ArAddrIncr_q1[11]_i_3_n_0\,
      S(1) => \ArAddrIncr_q1[11]_i_4_n_0\,
      S(0) => \ArAddrIncr_q1[11]_i_5_n_0\
    );
\ArAddrIncr_q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(24),
      Q => ArAddrIncr_q1(12),
      R => '0'
    );
\ArAddrIncr_q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(25),
      Q => ArAddrIncr_q1(13),
      R => '0'
    );
\ArAddrIncr_q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(26),
      Q => ArAddrIncr_q1(14),
      R => '0'
    );
\ArAddrIncr_q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(27),
      Q => ArAddrIncr_q1(15),
      R => '0'
    );
\ArAddrIncr_q1_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ArAddrIncr_q1_reg[11]_i_1_n_0\,
      CO(3) => \ArAddrIncr_q1_reg[15]_i_1_n_0\,
      CO(2) => \ArAddrIncr_q1_reg[15]_i_1_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[15]_i_1_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ArAddrIncr(27 downto 24),
      S(3) => \ArAddrIncr_q1[15]_i_2_n_0\,
      S(2) => \ArAddrIncr_q1[15]_i_3_n_0\,
      S(1) => \ArAddrIncr_q1[15]_i_4_n_0\,
      S(0) => \ArAddrIncr_q1[15]_i_5_n_0\
    );
\ArAddrIncr_q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(28),
      Q => ArAddrIncr_q1(16),
      R => '0'
    );
\ArAddrIncr_q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(29),
      Q => ArAddrIncr_q1(17),
      R => '0'
    );
\ArAddrIncr_q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(30),
      Q => ArAddrIncr_q1(18),
      R => '0'
    );
\ArAddrIncr_q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(31),
      Q => ArAddrIncr_q1(19),
      R => '0'
    );
\ArAddrIncr_q1_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ArAddrIncr_q1_reg[15]_i_1_n_0\,
      CO(3) => \NLW_ArAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ArAddrIncr_q1_reg[19]_i_1_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[19]_i_1_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ArAddrIncr(31 downto 28),
      S(3) => \ArAddrIncr_q1[19]_i_2_n_0\,
      S(2) => \ArAddrIncr_q1[19]_i_3_n_0\,
      S(1) => \ArAddrIncr_q1[19]_i_4_n_0\,
      S(0) => \ArAddrIncr_q1[19]_i_5_n_0\
    );
\ArAddrIncr_q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(13),
      Q => ArAddrIncr_q1(1),
      R => '0'
    );
\ArAddrIncr_q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(14),
      Q => ArAddrIncr_q1(2),
      R => '0'
    );
\ArAddrIncr_q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(15),
      Q => ArAddrIncr_q1(3),
      R => '0'
    );
\ArAddrIncr_q1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ArAddrIncr_q1_reg[3]_i_2_n_0\,
      CO(3) => \ArAddrIncr_q1_reg[3]_i_1_n_0\,
      CO(2) => \ArAddrIncr_q1_reg[3]_i_1_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[3]_i_1_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \araddr_q_reg[31]\(14 downto 12),
      O(3 downto 0) => ArAddrIncr(15 downto 12),
      S(3) => \ArAddrIncr_q1[3]_i_3_n_0\,
      S(2 downto 0) => \araddr_q_reg[14]\(2 downto 0)
    );
\ArAddrIncr_q1_reg[3]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ArAddrIncr_q1_reg[3]_i_13_n_0\,
      CO(2) => \ArAddrIncr_q1_reg[3]_i_13_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[3]_i_13_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[3]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \araddr_q_reg[31]\(3 downto 0),
      O(3 downto 0) => \NLW_ArAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \araddr_q_reg[3]\(3 downto 0)
    );
\ArAddrIncr_q1_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ArAddrIncr_q1_reg[3]_i_7_n_0\,
      CO(3) => \ArAddrIncr_q1_reg[3]_i_2_n_0\,
      CO(2) => \ArAddrIncr_q1_reg[3]_i_2_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[3]_i_2_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \araddr_q_reg[31]\(11 downto 8),
      O(3 downto 0) => \NLW_ArAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \araddr_q_reg[11]\(3 downto 0)
    );
\ArAddrIncr_q1_reg[3]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \ArAddrIncr_q1_reg[3]_i_13_n_0\,
      CO(3) => \ArAddrIncr_q1_reg[3]_i_7_n_0\,
      CO(2) => \ArAddrIncr_q1_reg[3]_i_7_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[3]_i_7_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[3]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \araddr_q_reg[31]\(7 downto 4),
      O(3 downto 0) => \NLW_ArAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \araddr_q_reg[7]\(3 downto 0)
    );
\ArAddrIncr_q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(16),
      Q => ArAddrIncr_q1(4),
      R => '0'
    );
\ArAddrIncr_q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(17),
      Q => ArAddrIncr_q1(5),
      R => '0'
    );
\ArAddrIncr_q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(18),
      Q => ArAddrIncr_q1(6),
      R => '0'
    );
\ArAddrIncr_q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(19),
      Q => ArAddrIncr_q1(7),
      R => '0'
    );
\ArAddrIncr_q1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ArAddrIncr_q1_reg[3]_i_1_n_0\,
      CO(3) => \ArAddrIncr_q1_reg[7]_i_1_n_0\,
      CO(2) => \ArAddrIncr_q1_reg[7]_i_1_n_1\,
      CO(1) => \ArAddrIncr_q1_reg[7]_i_1_n_2\,
      CO(0) => \ArAddrIncr_q1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => ArAddrIncr(19 downto 16),
      S(3) => \ArAddrIncr_q1[7]_i_2_n_0\,
      S(2) => \ArAddrIncr_q1[7]_i_3_n_0\,
      S(1) => \ArAddrIncr_q1[7]_i_4_n_0\,
      S(0) => \ArAddrIncr_q1[7]_i_5_n_0\
    );
\ArAddrIncr_q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(20),
      Q => ArAddrIncr_q1(8),
      R => '0'
    );
\ArAddrIncr_q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ArAddrIncr(21),
      Q => ArAddrIncr_q1(9),
      R => '0'
    );
\AwAddrIncr_q1[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(23),
      O => \AwAddrIncr_q1[11]_i_2_n_0\
    );
\AwAddrIncr_q1[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(22),
      O => \AwAddrIncr_q1[11]_i_3_n_0\
    );
\AwAddrIncr_q1[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(21),
      O => \AwAddrIncr_q1[11]_i_4_n_0\
    );
\AwAddrIncr_q1[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(20),
      O => \AwAddrIncr_q1[11]_i_5_n_0\
    );
\AwAddrIncr_q1[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(27),
      O => \AwAddrIncr_q1[15]_i_2_n_0\
    );
\AwAddrIncr_q1[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(26),
      O => \AwAddrIncr_q1[15]_i_3_n_0\
    );
\AwAddrIncr_q1[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(25),
      O => \AwAddrIncr_q1[15]_i_4_n_0\
    );
\AwAddrIncr_q1[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(24),
      O => \AwAddrIncr_q1[15]_i_5_n_0\
    );
\AwAddrIncr_q1[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(31),
      O => \AwAddrIncr_q1[19]_i_2_n_0\
    );
\AwAddrIncr_q1[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(30),
      O => \AwAddrIncr_q1[19]_i_3_n_0\
    );
\AwAddrIncr_q1[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(29),
      O => \AwAddrIncr_q1[19]_i_4_n_0\
    );
\AwAddrIncr_q1[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(28),
      O => \AwAddrIncr_q1[19]_i_5_n_0\
    );
\AwAddrIncr_q1[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => data_in(8),
      I1 => data_in(9),
      I2 => data_in(1),
      I3 => data_in(10),
      I4 => data_in(0),
      O => \AwAddrIncr_q1_reg[3]_1\
    );
\AwAddrIncr_q1[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(8),
      I2 => data_in(1),
      I3 => data_in(9),
      I4 => data_in(0),
      I5 => data_in(10),
      O => \AwAddrIncr_q1_reg[3]_2\
    );
\AwAddrIncr_q1[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(6),
      I1 => data_in(7),
      I2 => data_in(1),
      I3 => data_in(8),
      I4 => data_in(0),
      I5 => data_in(9),
      O => \AwAddrIncr_q1_reg[3]_3\
    );
\AwAddrIncr_q1[3]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => data_in(10),
      I1 => data_in(0),
      I2 => data_in(9),
      I3 => data_in(1),
      O => \AwAddrIncr_q1_reg[3]_0\
    );
\AwAddrIncr_q1[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in(6),
      I2 => data_in(1),
      I3 => data_in(7),
      I4 => data_in(0),
      I5 => data_in(8),
      O => \AwAddrIncr_q1_reg[3]_4\
    );
\AwAddrIncr_q1[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(4),
      I1 => data_in(5),
      I2 => data_in(1),
      I3 => data_in(6),
      I4 => data_in(0),
      I5 => data_in(7),
      O => \AwAddrIncr_q1_reg[3]_5\
    );
\AwAddrIncr_q1[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(4),
      I2 => data_in(1),
      I3 => data_in(5),
      I4 => data_in(0),
      I5 => data_in(6),
      O => \AwAddrIncr_q1_reg[3]_6\
    );
\AwAddrIncr_q1[3]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(1),
      I2 => data_in(4),
      I3 => data_in(0),
      I4 => data_in(5),
      O => \AwAddrIncr_q1_reg[3]_7\
    );
\AwAddrIncr_q1[3]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in(0),
      I2 => data_in(4),
      O => \AwAddrIncr_q1_reg[3]_8\
    );
\AwAddrIncr_q1[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(15),
      O => \AwAddrIncr_q1[3]_i_3_n_0\
    );
\AwAddrIncr_q1[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(19),
      O => \AwAddrIncr_q1[7]_i_2_n_0\
    );
\AwAddrIncr_q1[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(18),
      O => \AwAddrIncr_q1[7]_i_3_n_0\
    );
\AwAddrIncr_q1[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(17),
      O => \AwAddrIncr_q1[7]_i_4_n_0\
    );
\AwAddrIncr_q1[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(16),
      O => \AwAddrIncr_q1[7]_i_5_n_0\
    );
\AwAddrIncr_q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(12),
      Q => AwAddrIncr_q1(0),
      R => '0'
    );
\AwAddrIncr_q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(22),
      Q => AwAddrIncr_q1(10),
      R => '0'
    );
\AwAddrIncr_q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(23),
      Q => AwAddrIncr_q1(11),
      R => '0'
    );
\AwAddrIncr_q1_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \AwAddrIncr_q1_reg[7]_i_1_n_0\,
      CO(3) => \AwAddrIncr_q1_reg[11]_i_1_n_0\,
      CO(2) => \AwAddrIncr_q1_reg[11]_i_1_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[11]_i_1_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => AwAddrIncr(23 downto 20),
      S(3) => \AwAddrIncr_q1[11]_i_2_n_0\,
      S(2) => \AwAddrIncr_q1[11]_i_3_n_0\,
      S(1) => \AwAddrIncr_q1[11]_i_4_n_0\,
      S(0) => \AwAddrIncr_q1[11]_i_5_n_0\
    );
\AwAddrIncr_q1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(24),
      Q => AwAddrIncr_q1(12),
      R => '0'
    );
\AwAddrIncr_q1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(25),
      Q => AwAddrIncr_q1(13),
      R => '0'
    );
\AwAddrIncr_q1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(26),
      Q => AwAddrIncr_q1(14),
      R => '0'
    );
\AwAddrIncr_q1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(27),
      Q => AwAddrIncr_q1(15),
      R => '0'
    );
\AwAddrIncr_q1_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \AwAddrIncr_q1_reg[11]_i_1_n_0\,
      CO(3) => \AwAddrIncr_q1_reg[15]_i_1_n_0\,
      CO(2) => \AwAddrIncr_q1_reg[15]_i_1_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[15]_i_1_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => AwAddrIncr(27 downto 24),
      S(3) => \AwAddrIncr_q1[15]_i_2_n_0\,
      S(2) => \AwAddrIncr_q1[15]_i_3_n_0\,
      S(1) => \AwAddrIncr_q1[15]_i_4_n_0\,
      S(0) => \AwAddrIncr_q1[15]_i_5_n_0\
    );
\AwAddrIncr_q1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(28),
      Q => AwAddrIncr_q1(16),
      R => '0'
    );
\AwAddrIncr_q1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(29),
      Q => AwAddrIncr_q1(17),
      R => '0'
    );
\AwAddrIncr_q1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(30),
      Q => AwAddrIncr_q1(18),
      R => '0'
    );
\AwAddrIncr_q1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(31),
      Q => AwAddrIncr_q1(19),
      R => '0'
    );
\AwAddrIncr_q1_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \AwAddrIncr_q1_reg[15]_i_1_n_0\,
      CO(3) => \NLW_AwAddrIncr_q1_reg[19]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \AwAddrIncr_q1_reg[19]_i_1_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[19]_i_1_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => AwAddrIncr(31 downto 28),
      S(3) => \AwAddrIncr_q1[19]_i_2_n_0\,
      S(2) => \AwAddrIncr_q1[19]_i_3_n_0\,
      S(1) => \AwAddrIncr_q1[19]_i_4_n_0\,
      S(0) => \AwAddrIncr_q1[19]_i_5_n_0\
    );
\AwAddrIncr_q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(13),
      Q => AwAddrIncr_q1(1),
      R => '0'
    );
\AwAddrIncr_q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(14),
      Q => AwAddrIncr_q1(2),
      R => '0'
    );
\AwAddrIncr_q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(15),
      Q => AwAddrIncr_q1(3),
      R => '0'
    );
\AwAddrIncr_q1_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \AwAddrIncr_q1_reg[3]_i_2_n_0\,
      CO(3) => \AwAddrIncr_q1_reg[3]_i_1_n_0\,
      CO(2) => \AwAddrIncr_q1_reg[3]_i_1_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[3]_i_1_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => Q(14 downto 12),
      O(3 downto 0) => AwAddrIncr(15 downto 12),
      S(3) => \AwAddrIncr_q1[3]_i_3_n_0\,
      S(2 downto 0) => \awaddr_q_reg[14]\(2 downto 0)
    );
\AwAddrIncr_q1_reg[3]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \AwAddrIncr_q1_reg[3]_i_13_n_0\,
      CO(2) => \AwAddrIncr_q1_reg[3]_i_13_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[3]_i_13_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[3]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(3 downto 0),
      O(3 downto 0) => \NLW_AwAddrIncr_q1_reg[3]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\AwAddrIncr_q1_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \AwAddrIncr_q1_reg[3]_i_7_n_0\,
      CO(3) => \AwAddrIncr_q1_reg[3]_i_2_n_0\,
      CO(2) => \AwAddrIncr_q1_reg[3]_i_2_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[3]_i_2_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(11 downto 8),
      O(3 downto 0) => \NLW_AwAddrIncr_q1_reg[3]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \awaddr_q_reg[11]\(3 downto 0)
    );
\AwAddrIncr_q1_reg[3]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \AwAddrIncr_q1_reg[3]_i_13_n_0\,
      CO(3) => \AwAddrIncr_q1_reg[3]_i_7_n_0\,
      CO(2) => \AwAddrIncr_q1_reg[3]_i_7_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[3]_i_7_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[3]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(7 downto 4),
      O(3 downto 0) => \NLW_AwAddrIncr_q1_reg[3]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \awaddr_q_reg[7]\(3 downto 0)
    );
\AwAddrIncr_q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(16),
      Q => AwAddrIncr_q1(4),
      R => '0'
    );
\AwAddrIncr_q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(17),
      Q => AwAddrIncr_q1(5),
      R => '0'
    );
\AwAddrIncr_q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(18),
      Q => AwAddrIncr_q1(6),
      R => '0'
    );
\AwAddrIncr_q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(19),
      Q => AwAddrIncr_q1(7),
      R => '0'
    );
\AwAddrIncr_q1_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \AwAddrIncr_q1_reg[3]_i_1_n_0\,
      CO(3) => \AwAddrIncr_q1_reg[7]_i_1_n_0\,
      CO(2) => \AwAddrIncr_q1_reg[7]_i_1_n_1\,
      CO(1) => \AwAddrIncr_q1_reg[7]_i_1_n_2\,
      CO(0) => \AwAddrIncr_q1_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => AwAddrIncr(19 downto 16),
      S(3) => \AwAddrIncr_q1[7]_i_2_n_0\,
      S(2) => \AwAddrIncr_q1[7]_i_3_n_0\,
      S(1) => \AwAddrIncr_q1[7]_i_4_n_0\,
      S(0) => \AwAddrIncr_q1[7]_i_5_n_0\
    );
\AwAddrIncr_q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(20),
      Q => AwAddrIncr_q1(8),
      R => '0'
    );
\AwAddrIncr_q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AwAddrIncr(21),
      Q => AwAddrIncr_q1(9),
      R => '0'
    );
\BUSER_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => buser_q,
      Q => \^buser_q\,
      R => '0'
    );
\BUSER_stage_1_eq_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => BUSER_eq0,
      Q => \BUSER_stage_1_eq_reg[0]_srl2_n_0\
    );
\BUSER_stage_1_eq_reg[0]_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^buser_q\,
      I1 => buser_q,
      O => BUSER_eq0
    );
\BUSER_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \BUSER_stage_1_eq_reg[0]_srl2_n_0\,
      Q => BUSER_stage_2_eq(0),
      R => '0'
    );
\RDATA_eq0_inferred__0/RDATA_eq[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(15),
      I1 => p_1_in(7),
      I2 => \rdata_q_reg[63]\(14),
      I3 => p_1_in(6),
      I4 => \RDATA_eq0_inferred__0/RDATA_eq[1]_i_2_n_0\,
      I5 => \RDATA_eq0_inferred__0/RDATA_eq[1]_i_3_n_0\,
      O => RDATA_eq00_out
    );
\RDATA_eq0_inferred__0/RDATA_eq[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(3),
      I1 => \rdata_q_reg[63]\(11),
      I2 => \rdata_q_reg[63]\(13),
      I3 => p_1_in(5),
      I4 => \rdata_q_reg[63]\(12),
      I5 => p_1_in(4),
      O => \RDATA_eq0_inferred__0/RDATA_eq[1]_i_2_n_0\
    );
\RDATA_eq0_inferred__0/RDATA_eq[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \rdata_q_reg[63]\(8),
      I2 => \rdata_q_reg[63]\(10),
      I3 => p_1_in(2),
      I4 => \rdata_q_reg[63]\(9),
      I5 => p_1_in(1),
      O => \RDATA_eq0_inferred__0/RDATA_eq[1]_i_3_n_0\
    );
\RDATA_eq0_inferred__1/RDATA_eq[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(23),
      I1 => p_1_in2_in(7),
      I2 => \rdata_q_reg[63]\(22),
      I3 => p_1_in2_in(6),
      I4 => \RDATA_eq0_inferred__1/RDATA_eq[2]_i_2_n_0\,
      I5 => \RDATA_eq0_inferred__1/RDATA_eq[2]_i_3_n_0\,
      O => RDATA_eq03_out
    );
\RDATA_eq0_inferred__1/RDATA_eq[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in2_in(3),
      I1 => \rdata_q_reg[63]\(19),
      I2 => \rdata_q_reg[63]\(21),
      I3 => p_1_in2_in(5),
      I4 => \rdata_q_reg[63]\(20),
      I5 => p_1_in2_in(4),
      O => \RDATA_eq0_inferred__1/RDATA_eq[2]_i_2_n_0\
    );
\RDATA_eq0_inferred__1/RDATA_eq[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in2_in(0),
      I1 => \rdata_q_reg[63]\(16),
      I2 => \rdata_q_reg[63]\(18),
      I3 => p_1_in2_in(2),
      I4 => \rdata_q_reg[63]\(17),
      I5 => p_1_in2_in(1),
      O => \RDATA_eq0_inferred__1/RDATA_eq[2]_i_3_n_0\
    );
\RDATA_eq0_inferred__2/RDATA_eq[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(31),
      I1 => p_1_in5_in(7),
      I2 => \rdata_q_reg[63]\(30),
      I3 => p_1_in5_in(6),
      I4 => \RDATA_eq0_inferred__2/RDATA_eq[3]_i_2_n_0\,
      I5 => \RDATA_eq0_inferred__2/RDATA_eq[3]_i_3_n_0\,
      O => RDATA_eq06_out
    );
\RDATA_eq0_inferred__2/RDATA_eq[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in5_in(3),
      I1 => \rdata_q_reg[63]\(27),
      I2 => \rdata_q_reg[63]\(29),
      I3 => p_1_in5_in(5),
      I4 => \rdata_q_reg[63]\(28),
      I5 => p_1_in5_in(4),
      O => \RDATA_eq0_inferred__2/RDATA_eq[3]_i_2_n_0\
    );
\RDATA_eq0_inferred__2/RDATA_eq[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in5_in(0),
      I1 => \rdata_q_reg[63]\(24),
      I2 => \rdata_q_reg[63]\(26),
      I3 => p_1_in5_in(2),
      I4 => \rdata_q_reg[63]\(25),
      I5 => p_1_in5_in(1),
      O => \RDATA_eq0_inferred__2/RDATA_eq[3]_i_3_n_0\
    );
\RDATA_eq0_inferred__3/RDATA_eq[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(39),
      I1 => p_1_in8_in(7),
      I2 => \rdata_q_reg[63]\(38),
      I3 => p_1_in8_in(6),
      I4 => \RDATA_eq0_inferred__3/RDATA_eq[4]_i_2_n_0\,
      I5 => \RDATA_eq0_inferred__3/RDATA_eq[4]_i_3_n_0\,
      O => RDATA_eq09_out
    );
\RDATA_eq0_inferred__3/RDATA_eq[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in8_in(3),
      I1 => \rdata_q_reg[63]\(35),
      I2 => \rdata_q_reg[63]\(37),
      I3 => p_1_in8_in(5),
      I4 => \rdata_q_reg[63]\(36),
      I5 => p_1_in8_in(4),
      O => \RDATA_eq0_inferred__3/RDATA_eq[4]_i_2_n_0\
    );
\RDATA_eq0_inferred__3/RDATA_eq[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in8_in(0),
      I1 => \rdata_q_reg[63]\(32),
      I2 => \rdata_q_reg[63]\(34),
      I3 => p_1_in8_in(2),
      I4 => \rdata_q_reg[63]\(33),
      I5 => p_1_in8_in(1),
      O => \RDATA_eq0_inferred__3/RDATA_eq[4]_i_3_n_0\
    );
\RDATA_eq0_inferred__4/RDATA_eq[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(47),
      I1 => p_1_in11_in(7),
      I2 => \rdata_q_reg[63]\(46),
      I3 => p_1_in11_in(6),
      I4 => \RDATA_eq0_inferred__4/RDATA_eq[5]_i_2_n_0\,
      I5 => \RDATA_eq0_inferred__4/RDATA_eq[5]_i_3_n_0\,
      O => RDATA_eq012_out
    );
\RDATA_eq0_inferred__4/RDATA_eq[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in11_in(3),
      I1 => \rdata_q_reg[63]\(43),
      I2 => \rdata_q_reg[63]\(45),
      I3 => p_1_in11_in(5),
      I4 => \rdata_q_reg[63]\(44),
      I5 => p_1_in11_in(4),
      O => \RDATA_eq0_inferred__4/RDATA_eq[5]_i_2_n_0\
    );
\RDATA_eq0_inferred__4/RDATA_eq[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in11_in(0),
      I1 => \rdata_q_reg[63]\(40),
      I2 => \rdata_q_reg[63]\(42),
      I3 => p_1_in11_in(2),
      I4 => \rdata_q_reg[63]\(41),
      I5 => p_1_in11_in(1),
      O => \RDATA_eq0_inferred__4/RDATA_eq[5]_i_3_n_0\
    );
\RDATA_eq0_inferred__5/RDATA_eq[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(55),
      I1 => p_1_in14_in(7),
      I2 => \rdata_q_reg[63]\(54),
      I3 => p_1_in14_in(6),
      I4 => \RDATA_eq0_inferred__5/RDATA_eq[6]_i_2_n_0\,
      I5 => \RDATA_eq0_inferred__5/RDATA_eq[6]_i_3_n_0\,
      O => RDATA_eq015_out
    );
\RDATA_eq0_inferred__5/RDATA_eq[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in14_in(3),
      I1 => \rdata_q_reg[63]\(51),
      I2 => \rdata_q_reg[63]\(53),
      I3 => p_1_in14_in(5),
      I4 => \rdata_q_reg[63]\(52),
      I5 => p_1_in14_in(4),
      O => \RDATA_eq0_inferred__5/RDATA_eq[6]_i_2_n_0\
    );
\RDATA_eq0_inferred__5/RDATA_eq[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in14_in(0),
      I1 => \rdata_q_reg[63]\(48),
      I2 => \rdata_q_reg[63]\(50),
      I3 => p_1_in14_in(2),
      I4 => \rdata_q_reg[63]\(49),
      I5 => p_1_in14_in(1),
      O => \RDATA_eq0_inferred__5/RDATA_eq[6]_i_3_n_0\
    );
\RDATA_eq0_inferred__6/RDATA_eq[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(63),
      I1 => p_1_in17_in(7),
      I2 => \rdata_q_reg[63]\(62),
      I3 => p_1_in17_in(6),
      I4 => \RDATA_eq0_inferred__6/RDATA_eq[7]_i_2_n_0\,
      I5 => \RDATA_eq0_inferred__6/RDATA_eq[7]_i_3_n_0\,
      O => RDATA_eq018_out
    );
\RDATA_eq0_inferred__6/RDATA_eq[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in17_in(3),
      I1 => \rdata_q_reg[63]\(59),
      I2 => \rdata_q_reg[63]\(61),
      I3 => p_1_in17_in(5),
      I4 => \rdata_q_reg[63]\(60),
      I5 => p_1_in17_in(4),
      O => \RDATA_eq0_inferred__6/RDATA_eq[7]_i_2_n_0\
    );
\RDATA_eq0_inferred__6/RDATA_eq[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in17_in(0),
      I1 => \rdata_q_reg[63]\(56),
      I2 => \rdata_q_reg[63]\(58),
      I3 => p_1_in17_in(2),
      I4 => \rdata_q_reg[63]\(57),
      I5 => p_1_in17_in(1),
      O => \RDATA_eq0_inferred__6/RDATA_eq[7]_i_3_n_0\
    );
\RDATA_eq[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \rdata_q_reg[63]\(7),
      I1 => \RDATA_q_reg_n_0_[7]\,
      I2 => \rdata_q_reg[63]\(6),
      I3 => \RDATA_q_reg_n_0_[6]\,
      I4 => \RDATA_eq[0]_i_2_n_0\,
      I5 => \RDATA_eq[0]_i_3_n_0\,
      O => \RDATA_eq0__0\
    );
\RDATA_eq[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \RDATA_q_reg_n_0_[3]\,
      I1 => \rdata_q_reg[63]\(3),
      I2 => \rdata_q_reg[63]\(5),
      I3 => \RDATA_q_reg_n_0_[5]\,
      I4 => \rdata_q_reg[63]\(4),
      I5 => \RDATA_q_reg_n_0_[4]\,
      O => \RDATA_eq[0]_i_2_n_0\
    );
\RDATA_eq[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \RDATA_q_reg_n_0_[0]\,
      I1 => \rdata_q_reg[63]\(0),
      I2 => \rdata_q_reg[63]\(2),
      I3 => \RDATA_q_reg_n_0_[2]\,
      I4 => \rdata_q_reg[63]\(1),
      I5 => \RDATA_q_reg_n_0_[1]\,
      O => \RDATA_eq[0]_i_3_n_0\
    );
\RDATA_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \RDATA_eq0__0\,
      Q => RDATA_eq(0),
      R => '0'
    );
\RDATA_eq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_eq00_out,
      Q => RDATA_eq(1),
      R => '0'
    );
\RDATA_eq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_eq03_out,
      Q => RDATA_eq(2),
      R => '0'
    );
\RDATA_eq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_eq06_out,
      Q => RDATA_eq(3),
      R => '0'
    );
\RDATA_eq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_eq09_out,
      Q => RDATA_eq(4),
      R => '0'
    );
\RDATA_eq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_eq012_out,
      Q => RDATA_eq(5),
      R => '0'
    );
\RDATA_eq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_eq015_out,
      Q => RDATA_eq(6),
      R => '0'
    );
\RDATA_eq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_eq018_out,
      Q => RDATA_eq(7),
      R => '0'
    );
\RDATA_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(0),
      Q => \RDATA_q_reg_n_0_[0]\,
      R => '0'
    );
\RDATA_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(10),
      Q => p_1_in(2),
      R => '0'
    );
\RDATA_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(11),
      Q => p_1_in(3),
      R => '0'
    );
\RDATA_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(12),
      Q => p_1_in(4),
      R => '0'
    );
\RDATA_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(13),
      Q => p_1_in(5),
      R => '0'
    );
\RDATA_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(14),
      Q => p_1_in(6),
      R => '0'
    );
\RDATA_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(15),
      Q => p_1_in(7),
      R => '0'
    );
\RDATA_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(16),
      Q => p_1_in2_in(0),
      R => '0'
    );
\RDATA_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(17),
      Q => p_1_in2_in(1),
      R => '0'
    );
\RDATA_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(18),
      Q => p_1_in2_in(2),
      R => '0'
    );
\RDATA_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(19),
      Q => p_1_in2_in(3),
      R => '0'
    );
\RDATA_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(1),
      Q => \RDATA_q_reg_n_0_[1]\,
      R => '0'
    );
\RDATA_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(20),
      Q => p_1_in2_in(4),
      R => '0'
    );
\RDATA_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(21),
      Q => p_1_in2_in(5),
      R => '0'
    );
\RDATA_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(22),
      Q => p_1_in2_in(6),
      R => '0'
    );
\RDATA_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(23),
      Q => p_1_in2_in(7),
      R => '0'
    );
\RDATA_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(24),
      Q => p_1_in5_in(0),
      R => '0'
    );
\RDATA_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(25),
      Q => p_1_in5_in(1),
      R => '0'
    );
\RDATA_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(26),
      Q => p_1_in5_in(2),
      R => '0'
    );
\RDATA_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(27),
      Q => p_1_in5_in(3),
      R => '0'
    );
\RDATA_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(28),
      Q => p_1_in5_in(4),
      R => '0'
    );
\RDATA_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(29),
      Q => p_1_in5_in(5),
      R => '0'
    );
\RDATA_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(2),
      Q => \RDATA_q_reg_n_0_[2]\,
      R => '0'
    );
\RDATA_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(30),
      Q => p_1_in5_in(6),
      R => '0'
    );
\RDATA_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(31),
      Q => p_1_in5_in(7),
      R => '0'
    );
\RDATA_q_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(32),
      Q => p_1_in8_in(0),
      R => '0'
    );
\RDATA_q_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(33),
      Q => p_1_in8_in(1),
      R => '0'
    );
\RDATA_q_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(34),
      Q => p_1_in8_in(2),
      R => '0'
    );
\RDATA_q_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(35),
      Q => p_1_in8_in(3),
      R => '0'
    );
\RDATA_q_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(36),
      Q => p_1_in8_in(4),
      R => '0'
    );
\RDATA_q_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(37),
      Q => p_1_in8_in(5),
      R => '0'
    );
\RDATA_q_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(38),
      Q => p_1_in8_in(6),
      R => '0'
    );
\RDATA_q_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(39),
      Q => p_1_in8_in(7),
      R => '0'
    );
\RDATA_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(3),
      Q => \RDATA_q_reg_n_0_[3]\,
      R => '0'
    );
\RDATA_q_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(40),
      Q => p_1_in11_in(0),
      R => '0'
    );
\RDATA_q_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(41),
      Q => p_1_in11_in(1),
      R => '0'
    );
\RDATA_q_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(42),
      Q => p_1_in11_in(2),
      R => '0'
    );
\RDATA_q_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(43),
      Q => p_1_in11_in(3),
      R => '0'
    );
\RDATA_q_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(44),
      Q => p_1_in11_in(4),
      R => '0'
    );
\RDATA_q_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(45),
      Q => p_1_in11_in(5),
      R => '0'
    );
\RDATA_q_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(46),
      Q => p_1_in11_in(6),
      R => '0'
    );
\RDATA_q_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(47),
      Q => p_1_in11_in(7),
      R => '0'
    );
\RDATA_q_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(48),
      Q => p_1_in14_in(0),
      R => '0'
    );
\RDATA_q_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(49),
      Q => p_1_in14_in(1),
      R => '0'
    );
\RDATA_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(4),
      Q => \RDATA_q_reg_n_0_[4]\,
      R => '0'
    );
\RDATA_q_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(50),
      Q => p_1_in14_in(2),
      R => '0'
    );
\RDATA_q_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(51),
      Q => p_1_in14_in(3),
      R => '0'
    );
\RDATA_q_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(52),
      Q => p_1_in14_in(4),
      R => '0'
    );
\RDATA_q_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(53),
      Q => p_1_in14_in(5),
      R => '0'
    );
\RDATA_q_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(54),
      Q => p_1_in14_in(6),
      R => '0'
    );
\RDATA_q_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(55),
      Q => p_1_in14_in(7),
      R => '0'
    );
\RDATA_q_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(56),
      Q => p_1_in17_in(0),
      R => '0'
    );
\RDATA_q_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(57),
      Q => p_1_in17_in(1),
      R => '0'
    );
\RDATA_q_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(58),
      Q => p_1_in17_in(2),
      R => '0'
    );
\RDATA_q_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(59),
      Q => p_1_in17_in(3),
      R => '0'
    );
\RDATA_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(5),
      Q => \RDATA_q_reg_n_0_[5]\,
      R => '0'
    );
\RDATA_q_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(60),
      Q => p_1_in17_in(4),
      R => '0'
    );
\RDATA_q_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(61),
      Q => p_1_in17_in(5),
      R => '0'
    );
\RDATA_q_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(62),
      Q => p_1_in17_in(6),
      R => '0'
    );
\rdata_q_reg[63]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(63),
      Q => p_1_in17_in(7),
      R => '0'
    );
\RDATA_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(6),
      Q => \RDATA_q_reg_n_0_[6]\,
      R => '0'
    );
\RDATA_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(7),
      Q => \RDATA_q_reg_n_0_[7]\,
      R => '0'
    );
\RDATA_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(8),
      Q => p_1_in(0),
      R => '0'
    );
\RDATA_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rdata_q_reg[63]\(9),
      Q => p_1_in(1),
      R => '0'
    );
\RDATA_stage_1_eq[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => RDATA_eq(7),
      I1 => RDATA_eq(6),
      I2 => RDATA_eq(4),
      I3 => RDATA_eq(5),
      I4 => \RDATA_stage_1_eq[0]_i_2_n_0\,
      O => \RDATA_stage_1_eq0__0\
    );
\RDATA_stage_1_eq[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => RDATA_eq(1),
      I1 => RDATA_eq(0),
      I2 => RDATA_eq(3),
      I3 => RDATA_eq(2),
      O => \RDATA_stage_1_eq[0]_i_2_n_0\
    );
\RDATA_stage_1_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \RDATA_stage_1_eq0__0\,
      Q => RDATA_stage_1_eq(0),
      R => '0'
    );
\RDATA_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => RDATA_stage_1_eq(0),
      Q => RDATA_stage_2_eq(0),
      R => '0'
    );
\RUSER_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => ruser_q,
      Q => \^ruser_q\,
      R => '0'
    );
\RUSER_stage_1_eq_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => RUSER_eq0,
      Q => \RUSER_stage_1_eq_reg[0]_srl2_n_0\
    );
\RUSER_stage_1_eq_reg[0]_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^ruser_q\,
      I1 => ruser_q,
      O => RUSER_eq0
    );
\RUSER_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \RUSER_stage_1_eq_reg[0]_srl2_n_0\,
      Q => RUSER_stage_2_eq(0),
      R => '0'
    );
\WDATA_eq0_inferred__0/WDATA_eq[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(15),
      I1 => p_1_in33_in(7),
      I2 => \wdata_q_reg[63]\(14),
      I3 => p_1_in33_in(6),
      I4 => \WDATA_eq0_inferred__0/WDATA_eq[1]_i_2_n_0\,
      I5 => \WDATA_eq0_inferred__0/WDATA_eq[1]_i_3_n_0\,
      O => WDATA_eq034_out
    );
\WDATA_eq0_inferred__0/WDATA_eq[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in33_in(3),
      I1 => \wdata_q_reg[63]\(11),
      I2 => \wdata_q_reg[63]\(13),
      I3 => p_1_in33_in(5),
      I4 => \wdata_q_reg[63]\(12),
      I5 => p_1_in33_in(4),
      O => \WDATA_eq0_inferred__0/WDATA_eq[1]_i_2_n_0\
    );
\WDATA_eq0_inferred__0/WDATA_eq[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in33_in(0),
      I1 => \wdata_q_reg[63]\(8),
      I2 => \wdata_q_reg[63]\(10),
      I3 => p_1_in33_in(2),
      I4 => \wdata_q_reg[63]\(9),
      I5 => p_1_in33_in(1),
      O => \WDATA_eq0_inferred__0/WDATA_eq[1]_i_3_n_0\
    );
\WDATA_eq0_inferred__1/WDATA_eq[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(23),
      I1 => p_1_in36_in(7),
      I2 => \wdata_q_reg[63]\(22),
      I3 => p_1_in36_in(6),
      I4 => \WDATA_eq0_inferred__1/WDATA_eq[2]_i_2_n_0\,
      I5 => \WDATA_eq0_inferred__1/WDATA_eq[2]_i_3_n_0\,
      O => WDATA_eq037_out
    );
\WDATA_eq0_inferred__1/WDATA_eq[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in36_in(3),
      I1 => \wdata_q_reg[63]\(19),
      I2 => \wdata_q_reg[63]\(21),
      I3 => p_1_in36_in(5),
      I4 => \wdata_q_reg[63]\(20),
      I5 => p_1_in36_in(4),
      O => \WDATA_eq0_inferred__1/WDATA_eq[2]_i_2_n_0\
    );
\WDATA_eq0_inferred__1/WDATA_eq[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in36_in(0),
      I1 => \wdata_q_reg[63]\(16),
      I2 => \wdata_q_reg[63]\(18),
      I3 => p_1_in36_in(2),
      I4 => \wdata_q_reg[63]\(17),
      I5 => p_1_in36_in(1),
      O => \WDATA_eq0_inferred__1/WDATA_eq[2]_i_3_n_0\
    );
\WDATA_eq0_inferred__2/WDATA_eq[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(31),
      I1 => p_1_in39_in(7),
      I2 => \wdata_q_reg[63]\(30),
      I3 => p_1_in39_in(6),
      I4 => \WDATA_eq0_inferred__2/WDATA_eq[3]_i_2_n_0\,
      I5 => \WDATA_eq0_inferred__2/WDATA_eq[3]_i_3_n_0\,
      O => WDATA_eq040_out
    );
\WDATA_eq0_inferred__2/WDATA_eq[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in39_in(3),
      I1 => \wdata_q_reg[63]\(27),
      I2 => \wdata_q_reg[63]\(29),
      I3 => p_1_in39_in(5),
      I4 => \wdata_q_reg[63]\(28),
      I5 => p_1_in39_in(4),
      O => \WDATA_eq0_inferred__2/WDATA_eq[3]_i_2_n_0\
    );
\WDATA_eq0_inferred__2/WDATA_eq[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in39_in(0),
      I1 => \wdata_q_reg[63]\(24),
      I2 => \wdata_q_reg[63]\(26),
      I3 => p_1_in39_in(2),
      I4 => \wdata_q_reg[63]\(25),
      I5 => p_1_in39_in(1),
      O => \WDATA_eq0_inferred__2/WDATA_eq[3]_i_3_n_0\
    );
\WDATA_eq0_inferred__3/WDATA_eq[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(39),
      I1 => p_1_in42_in(7),
      I2 => \wdata_q_reg[63]\(38),
      I3 => p_1_in42_in(6),
      I4 => \WDATA_eq0_inferred__3/WDATA_eq[4]_i_2_n_0\,
      I5 => \WDATA_eq0_inferred__3/WDATA_eq[4]_i_3_n_0\,
      O => WDATA_eq043_out
    );
\WDATA_eq0_inferred__3/WDATA_eq[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in42_in(3),
      I1 => \wdata_q_reg[63]\(35),
      I2 => \wdata_q_reg[63]\(37),
      I3 => p_1_in42_in(5),
      I4 => \wdata_q_reg[63]\(36),
      I5 => p_1_in42_in(4),
      O => \WDATA_eq0_inferred__3/WDATA_eq[4]_i_2_n_0\
    );
\WDATA_eq0_inferred__3/WDATA_eq[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in42_in(0),
      I1 => \wdata_q_reg[63]\(32),
      I2 => \wdata_q_reg[63]\(34),
      I3 => p_1_in42_in(2),
      I4 => \wdata_q_reg[63]\(33),
      I5 => p_1_in42_in(1),
      O => \WDATA_eq0_inferred__3/WDATA_eq[4]_i_3_n_0\
    );
\WDATA_eq0_inferred__4/WDATA_eq[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(47),
      I1 => p_1_in45_in(7),
      I2 => \wdata_q_reg[63]\(46),
      I3 => p_1_in45_in(6),
      I4 => \WDATA_eq0_inferred__4/WDATA_eq[5]_i_2_n_0\,
      I5 => \WDATA_eq0_inferred__4/WDATA_eq[5]_i_3_n_0\,
      O => WDATA_eq046_out
    );
\WDATA_eq0_inferred__4/WDATA_eq[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in45_in(3),
      I1 => \wdata_q_reg[63]\(43),
      I2 => \wdata_q_reg[63]\(45),
      I3 => p_1_in45_in(5),
      I4 => \wdata_q_reg[63]\(44),
      I5 => p_1_in45_in(4),
      O => \WDATA_eq0_inferred__4/WDATA_eq[5]_i_2_n_0\
    );
\WDATA_eq0_inferred__4/WDATA_eq[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in45_in(0),
      I1 => \wdata_q_reg[63]\(40),
      I2 => \wdata_q_reg[63]\(42),
      I3 => p_1_in45_in(2),
      I4 => \wdata_q_reg[63]\(41),
      I5 => p_1_in45_in(1),
      O => \WDATA_eq0_inferred__4/WDATA_eq[5]_i_3_n_0\
    );
\WDATA_eq0_inferred__5/WDATA_eq[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(55),
      I1 => p_1_in48_in(7),
      I2 => \wdata_q_reg[63]\(54),
      I3 => p_1_in48_in(6),
      I4 => \WDATA_eq0_inferred__5/WDATA_eq[6]_i_2_n_0\,
      I5 => \WDATA_eq0_inferred__5/WDATA_eq[6]_i_3_n_0\,
      O => WDATA_eq049_out
    );
\WDATA_eq0_inferred__5/WDATA_eq[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in48_in(3),
      I1 => \wdata_q_reg[63]\(51),
      I2 => \wdata_q_reg[63]\(53),
      I3 => p_1_in48_in(5),
      I4 => \wdata_q_reg[63]\(52),
      I5 => p_1_in48_in(4),
      O => \WDATA_eq0_inferred__5/WDATA_eq[6]_i_2_n_0\
    );
\WDATA_eq0_inferred__5/WDATA_eq[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in48_in(0),
      I1 => \wdata_q_reg[63]\(48),
      I2 => \wdata_q_reg[63]\(50),
      I3 => p_1_in48_in(2),
      I4 => \wdata_q_reg[63]\(49),
      I5 => p_1_in48_in(1),
      O => \WDATA_eq0_inferred__5/WDATA_eq[6]_i_3_n_0\
    );
\WDATA_eq0_inferred__6/WDATA_eq[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(63),
      I1 => p_1_in51_in(7),
      I2 => \wdata_q_reg[63]\(62),
      I3 => p_1_in51_in(6),
      I4 => \WDATA_eq0_inferred__6/WDATA_eq[7]_i_2_n_0\,
      I5 => \WDATA_eq0_inferred__6/WDATA_eq[7]_i_3_n_0\,
      O => WDATA_eq052_out
    );
\WDATA_eq0_inferred__6/WDATA_eq[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in51_in(3),
      I1 => \wdata_q_reg[63]\(59),
      I2 => \wdata_q_reg[63]\(61),
      I3 => p_1_in51_in(5),
      I4 => \wdata_q_reg[63]\(60),
      I5 => p_1_in51_in(4),
      O => \WDATA_eq0_inferred__6/WDATA_eq[7]_i_2_n_0\
    );
\WDATA_eq0_inferred__6/WDATA_eq[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => p_1_in51_in(0),
      I1 => \wdata_q_reg[63]\(56),
      I2 => \wdata_q_reg[63]\(58),
      I3 => p_1_in51_in(2),
      I4 => \wdata_q_reg[63]\(57),
      I5 => p_1_in51_in(1),
      O => \WDATA_eq0_inferred__6/WDATA_eq[7]_i_3_n_0\
    );
\WDATA_eq[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => \wdata_q_reg[63]\(7),
      I1 => \WDATA_q_reg_n_0_[7]\,
      I2 => \wdata_q_reg[63]\(6),
      I3 => \WDATA_q_reg_n_0_[6]\,
      I4 => \WDATA_eq[0]_i_2_n_0\,
      I5 => \WDATA_eq[0]_i_3_n_0\,
      O => \WDATA_eq0__0\
    );
\WDATA_eq[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \WDATA_q_reg_n_0_[3]\,
      I1 => \wdata_q_reg[63]\(3),
      I2 => \wdata_q_reg[63]\(5),
      I3 => \WDATA_q_reg_n_0_[5]\,
      I4 => \wdata_q_reg[63]\(4),
      I5 => \WDATA_q_reg_n_0_[4]\,
      O => \WDATA_eq[0]_i_2_n_0\
    );
\WDATA_eq[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \WDATA_q_reg_n_0_[0]\,
      I1 => \wdata_q_reg[63]\(0),
      I2 => \wdata_q_reg[63]\(2),
      I3 => \WDATA_q_reg_n_0_[2]\,
      I4 => \wdata_q_reg[63]\(1),
      I5 => \WDATA_q_reg_n_0_[1]\,
      O => \WDATA_eq[0]_i_3_n_0\
    );
\WDATA_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \WDATA_eq0__0\,
      Q => WDATA_eq(0),
      R => '0'
    );
\WDATA_eq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_eq034_out,
      Q => WDATA_eq(1),
      R => '0'
    );
\WDATA_eq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_eq037_out,
      Q => WDATA_eq(2),
      R => '0'
    );
\WDATA_eq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_eq040_out,
      Q => WDATA_eq(3),
      R => '0'
    );
\WDATA_eq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_eq043_out,
      Q => WDATA_eq(4),
      R => '0'
    );
\WDATA_eq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_eq046_out,
      Q => WDATA_eq(5),
      R => '0'
    );
\WDATA_eq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_eq049_out,
      Q => WDATA_eq(6),
      R => '0'
    );
\WDATA_eq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_eq052_out,
      Q => WDATA_eq(7),
      R => '0'
    );
\WDATA_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(0),
      Q => \WDATA_q_reg_n_0_[0]\,
      R => '0'
    );
\WDATA_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(10),
      Q => p_1_in33_in(2),
      R => '0'
    );
\WDATA_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(11),
      Q => p_1_in33_in(3),
      R => '0'
    );
\WDATA_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(12),
      Q => p_1_in33_in(4),
      R => '0'
    );
\WDATA_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(13),
      Q => p_1_in33_in(5),
      R => '0'
    );
\WDATA_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(14),
      Q => p_1_in33_in(6),
      R => '0'
    );
\WDATA_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(15),
      Q => p_1_in33_in(7),
      R => '0'
    );
\WDATA_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(16),
      Q => p_1_in36_in(0),
      R => '0'
    );
\WDATA_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(17),
      Q => p_1_in36_in(1),
      R => '0'
    );
\WDATA_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(18),
      Q => p_1_in36_in(2),
      R => '0'
    );
\WDATA_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(19),
      Q => p_1_in36_in(3),
      R => '0'
    );
\WDATA_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(1),
      Q => \WDATA_q_reg_n_0_[1]\,
      R => '0'
    );
\WDATA_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(20),
      Q => p_1_in36_in(4),
      R => '0'
    );
\WDATA_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(21),
      Q => p_1_in36_in(5),
      R => '0'
    );
\WDATA_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(22),
      Q => p_1_in36_in(6),
      R => '0'
    );
\WDATA_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(23),
      Q => p_1_in36_in(7),
      R => '0'
    );
\WDATA_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(24),
      Q => p_1_in39_in(0),
      R => '0'
    );
\WDATA_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(25),
      Q => p_1_in39_in(1),
      R => '0'
    );
\WDATA_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(26),
      Q => p_1_in39_in(2),
      R => '0'
    );
\WDATA_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(27),
      Q => p_1_in39_in(3),
      R => '0'
    );
\WDATA_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(28),
      Q => p_1_in39_in(4),
      R => '0'
    );
\WDATA_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(29),
      Q => p_1_in39_in(5),
      R => '0'
    );
\WDATA_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(2),
      Q => \WDATA_q_reg_n_0_[2]\,
      R => '0'
    );
\WDATA_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(30),
      Q => p_1_in39_in(6),
      R => '0'
    );
\WDATA_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(31),
      Q => p_1_in39_in(7),
      R => '0'
    );
\WDATA_q_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(32),
      Q => p_1_in42_in(0),
      R => '0'
    );
\WDATA_q_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(33),
      Q => p_1_in42_in(1),
      R => '0'
    );
\WDATA_q_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(34),
      Q => p_1_in42_in(2),
      R => '0'
    );
\WDATA_q_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(35),
      Q => p_1_in42_in(3),
      R => '0'
    );
\WDATA_q_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(36),
      Q => p_1_in42_in(4),
      R => '0'
    );
\WDATA_q_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(37),
      Q => p_1_in42_in(5),
      R => '0'
    );
\WDATA_q_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(38),
      Q => p_1_in42_in(6),
      R => '0'
    );
\WDATA_q_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(39),
      Q => p_1_in42_in(7),
      R => '0'
    );
\WDATA_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(3),
      Q => \WDATA_q_reg_n_0_[3]\,
      R => '0'
    );
\WDATA_q_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(40),
      Q => p_1_in45_in(0),
      R => '0'
    );
\WDATA_q_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(41),
      Q => p_1_in45_in(1),
      R => '0'
    );
\WDATA_q_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(42),
      Q => p_1_in45_in(2),
      R => '0'
    );
\WDATA_q_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(43),
      Q => p_1_in45_in(3),
      R => '0'
    );
\WDATA_q_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(44),
      Q => p_1_in45_in(4),
      R => '0'
    );
\WDATA_q_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(45),
      Q => p_1_in45_in(5),
      R => '0'
    );
\WDATA_q_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(46),
      Q => p_1_in45_in(6),
      R => '0'
    );
\WDATA_q_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(47),
      Q => p_1_in45_in(7),
      R => '0'
    );
\WDATA_q_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(48),
      Q => p_1_in48_in(0),
      R => '0'
    );
\WDATA_q_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(49),
      Q => p_1_in48_in(1),
      R => '0'
    );
\WDATA_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(4),
      Q => \WDATA_q_reg_n_0_[4]\,
      R => '0'
    );
\WDATA_q_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(50),
      Q => p_1_in48_in(2),
      R => '0'
    );
\WDATA_q_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(51),
      Q => p_1_in48_in(3),
      R => '0'
    );
\WDATA_q_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(52),
      Q => p_1_in48_in(4),
      R => '0'
    );
\WDATA_q_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(53),
      Q => p_1_in48_in(5),
      R => '0'
    );
\WDATA_q_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(54),
      Q => p_1_in48_in(6),
      R => '0'
    );
\WDATA_q_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(55),
      Q => p_1_in48_in(7),
      R => '0'
    );
\WDATA_q_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(56),
      Q => p_1_in51_in(0),
      R => '0'
    );
\WDATA_q_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(57),
      Q => p_1_in51_in(1),
      R => '0'
    );
\WDATA_q_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(58),
      Q => p_1_in51_in(2),
      R => '0'
    );
\WDATA_q_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(59),
      Q => p_1_in51_in(3),
      R => '0'
    );
\WDATA_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(5),
      Q => \WDATA_q_reg_n_0_[5]\,
      R => '0'
    );
\WDATA_q_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(60),
      Q => p_1_in51_in(4),
      R => '0'
    );
\WDATA_q_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(61),
      Q => p_1_in51_in(5),
      R => '0'
    );
\WDATA_q_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(62),
      Q => p_1_in51_in(6),
      R => '0'
    );
\wdata_q_reg[63]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(63),
      Q => p_1_in51_in(7),
      R => '0'
    );
\WDATA_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(6),
      Q => \WDATA_q_reg_n_0_[6]\,
      R => '0'
    );
\WDATA_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(7),
      Q => \WDATA_q_reg_n_0_[7]\,
      R => '0'
    );
\WDATA_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(8),
      Q => p_1_in33_in(0),
      R => '0'
    );
\WDATA_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wdata_q_reg[63]\(9),
      Q => p_1_in33_in(1),
      R => '0'
    );
\WDATA_stage_1_eq[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => WDATA_eq(7),
      I1 => WDATA_eq(6),
      I2 => WDATA_eq(4),
      I3 => WDATA_eq(5),
      I4 => \WDATA_stage_1_eq[0]_i_2_n_0\,
      O => \WDATA_stage_1_eq0__0\
    );
\WDATA_stage_1_eq[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => WDATA_eq(1),
      I1 => WDATA_eq(0),
      I2 => WDATA_eq(3),
      I3 => WDATA_eq(2),
      O => \WDATA_stage_1_eq[0]_i_2_n_0\
    );
\WDATA_stage_1_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \WDATA_stage_1_eq0__0\,
      Q => WDATA_stage_1_eq(0),
      R => '0'
    );
\WDATA_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WDATA_stage_1_eq(0),
      Q => WDATA_stage_2_eq(0),
      R => '0'
    );
\WSTRB_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(0),
      Q => WSTRB_q(0),
      R => '0'
    );
\WSTRB_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(1),
      Q => WSTRB_q(1),
      R => '0'
    );
\WSTRB_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(2),
      Q => WSTRB_q(2),
      R => '0'
    );
\WSTRB_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(3),
      Q => WSTRB_q(3),
      R => '0'
    );
\WSTRB_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(4),
      Q => WSTRB_q(4),
      R => '0'
    );
\WSTRB_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(5),
      Q => WSTRB_q(5),
      R => '0'
    );
\WSTRB_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(6),
      Q => WSTRB_q(6),
      R => '0'
    );
\wstrb_q_reg[7]_RnM\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wstrb_q_reg[7]\(7),
      Q => WSTRB_q(7),
      R => '0'
    );
\WSTRB_stage_1_eq_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WSTRB_eq0,
      Q => \WSTRB_stage_1_eq_reg[0]_srl2_n_0\
    );
\WSTRB_stage_1_eq_reg[0]_srl2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000009009"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(6),
      I1 => WSTRB_q(6),
      I2 => \wstrb_q_reg[7]\(7),
      I3 => WSTRB_q(7),
      I4 => \WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0\,
      I5 => \WSTRB_stage_1_eq_reg[0]_srl2_i_3_n_0\,
      O => WSTRB_eq0
    );
\WSTRB_stage_1_eq_reg[0]_srl2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => WSTRB_q(0),
      I1 => \wstrb_q_reg[7]\(0),
      I2 => \wstrb_q_reg[7]\(2),
      I3 => WSTRB_q(2),
      I4 => \wstrb_q_reg[7]\(1),
      I5 => WSTRB_q(1),
      O => \WSTRB_stage_1_eq_reg[0]_srl2_i_2_n_0\
    );
\WSTRB_stage_1_eq_reg[0]_srl2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => WSTRB_q(3),
      I1 => \wstrb_q_reg[7]\(3),
      I2 => \wstrb_q_reg[7]\(4),
      I3 => WSTRB_q(4),
      I4 => \wstrb_q_reg[7]\(5),
      I5 => WSTRB_q(5),
      O => \WSTRB_stage_1_eq_reg[0]_srl2_i_3_n_0\
    );
\WSTRB_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \WSTRB_stage_1_eq_reg[0]_srl2_n_0\,
      Q => WSTRB_stage_2_eq(0),
      R => '0'
    );
\WUSER_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wuser_q,
      Q => \^wuser_q\,
      R => '0'
    );
\WUSER_stage_1_eq_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WUSER_eq0,
      Q => \WUSER_stage_1_eq_reg[0]_srl2_n_0\
    );
\WUSER_stage_1_eq_reg[0]_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wuser_q\,
      I1 => wuser_q,
      O => WUSER_eq0
    );
\WUSER_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \WUSER_stage_1_eq_reg[0]_srl2_n_0\,
      Q => WUSER_stage_2_eq(0),
      R => '0'
    );
asr_1_ctrl_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \awburst_q_reg[1]\(1),
      I1 => \awburst_q_reg[1]\(0),
      I2 => awvalid_q,
      O => asr_1_ctrl0
    );
asr_1_ctrl_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => asr_1_ctrl0,
      Q => asr_1_ctrl,
      R => '0'
    );
asr_38_ctrl_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \arburst_q_reg[1]\(1),
      I1 => \arburst_q_reg[1]\(0),
      I2 => arvalid_q,
      O => asr_38_ctrl0
    );
asr_38_ctrl_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => asr_38_ctrl0,
      Q => asr_38_ctrl,
      R => '0'
    );
\pc_status_i[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(0),
      I1 => \pc_status_i_reg[77]\(0),
      O => D(0)
    );
\pc_status_i[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(10),
      I1 => \pc_status_i_reg[77]\(8),
      O => D(8)
    );
\pc_status_i[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(11),
      I1 => \pc_status_i_reg[77]\(9),
      O => D(9)
    );
\pc_status_i[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(12),
      I1 => \pc_status_i_reg[77]\(10),
      O => D(10)
    );
\pc_status_i[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(13),
      I1 => \pc_status_i_reg[77]\(11),
      O => D(11)
    );
\pc_status_i[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(15),
      I1 => \pc_status_i_reg[77]\(12),
      O => D(12)
    );
\pc_status_i[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(16),
      I1 => \pc_status_i_reg[77]\(13),
      O => D(13)
    );
\pc_status_i[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(17),
      I1 => \pc_status_i_reg[77]\(14),
      O => D(14)
    );
\pc_status_i[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(18),
      I1 => \pc_status_i_reg[77]\(15),
      O => D(15)
    );
\pc_status_i[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(19),
      I1 => \pc_status_i_reg[77]\(16),
      O => D(16)
    );
\pc_status_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(1),
      I1 => \pc_status_i_reg[77]\(1),
      O => D(1)
    );
\pc_status_i[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(21),
      I1 => \pc_status_i_reg[77]\(17),
      O => D(17)
    );
\pc_status_i[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(22),
      I1 => \pc_status_i_reg[77]\(18),
      O => D(18)
    );
\pc_status_i[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(24),
      I1 => \pc_status_i_reg[77]\(19),
      O => D(19)
    );
\pc_status_i[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(25),
      I1 => \pc_status_i_reg[77]\(20),
      O => D(20)
    );
\pc_status_i[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(26),
      I1 => \pc_status_i_reg[77]\(21),
      O => D(21)
    );
\pc_status_i[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(27),
      I1 => \pc_status_i_reg[77]\(22),
      O => D(22)
    );
\pc_status_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(2),
      I1 => \pc_status_i_reg[77]\(2),
      O => D(2)
    );
\pc_status_i[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(32),
      I1 => \pc_status_i_reg[77]\(23),
      O => D(23)
    );
\pc_status_i[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(33),
      I1 => \pc_status_i_reg[77]\(24),
      O => D(24)
    );
\pc_status_i[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(34),
      I1 => \pc_status_i_reg[77]\(25),
      O => D(25)
    );
\pc_status_i[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(35),
      I1 => \pc_status_i_reg[77]\(26),
      O => D(26)
    );
\pc_status_i[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(37),
      I1 => \pc_status_i_reg[77]\(27),
      O => D(27)
    );
\pc_status_i[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(38),
      I1 => \pc_status_i_reg[77]\(28),
      O => D(28)
    );
\pc_status_i[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(39),
      I1 => \pc_status_i_reg[77]\(29),
      O => D(29)
    );
\pc_status_i[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(41),
      I1 => \pc_status_i_reg[77]\(30),
      O => D(30)
    );
\pc_status_i[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(42),
      I1 => \pc_status_i_reg[77]\(31),
      O => D(31)
    );
\pc_status_i[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(43),
      I1 => \pc_status_i_reg[77]\(32),
      O => D(32)
    );
\pc_status_i[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(44),
      I1 => \pc_status_i_reg[77]\(33),
      O => D(33)
    );
\pc_status_i[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(46),
      I1 => \pc_status_i_reg[77]\(34),
      O => D(34)
    );
\pc_status_i[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(47),
      I1 => \pc_status_i_reg[77]\(35),
      O => D(35)
    );
\pc_status_i[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(48),
      I1 => \pc_status_i_reg[77]\(36),
      O => D(36)
    );
\pc_status_i[49]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(49),
      I1 => \pc_status_i_reg[77]\(37),
      O => D(37)
    );
\pc_status_i[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(4),
      I1 => \pc_status_i_reg[77]\(3),
      O => D(3)
    );
\pc_status_i[50]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(50),
      I1 => \pc_status_i_reg[77]\(38),
      O => D(38)
    );
\pc_status_i[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(52),
      I1 => \pc_status_i_reg[77]\(39),
      O => D(39)
    );
\pc_status_i[53]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(53),
      I1 => \pc_status_i_reg[77]\(40),
      O => D(40)
    );
\pc_status_i[54]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(54),
      I1 => \pc_status_i_reg[77]\(41),
      O => D(41)
    );
\pc_status_i[55]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(55),
      I1 => \pc_status_i_reg[77]\(42),
      O => D(42)
    );
\pc_status_i[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(56),
      I1 => \pc_status_i_reg[77]\(43),
      O => D(43)
    );
\pc_status_i[58]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(58),
      I1 => \pc_status_i_reg[77]\(44),
      O => D(44)
    );
\pc_status_i[59]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(59),
      I1 => \pc_status_i_reg[77]\(45),
      O => D(45)
    );
\pc_status_i[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(5),
      I1 => \pc_status_i_reg[77]\(4),
      O => D(4)
    );
\pc_status_i[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(60),
      I1 => \pc_status_i_reg[77]\(46),
      O => D(46)
    );
\pc_status_i[62]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(62),
      I1 => \pc_status_i_reg[77]\(47),
      O => D(47)
    );
\pc_status_i[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(63),
      I1 => \pc_status_i_reg[77]\(48),
      O => D(48)
    );
\pc_status_i[64]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(64),
      I1 => \pc_status_i_reg[77]\(49),
      O => D(49)
    );
\pc_status_i[65]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(65),
      I1 => \pc_status_i_reg[77]\(50),
      O => D(50)
    );
\pc_status_i[66]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(66),
      I1 => \pc_status_i_reg[77]\(51),
      O => D(51)
    );
\pc_status_i[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(6),
      I1 => \pc_status_i_reg[77]\(5),
      O => D(5)
    );
\pc_status_i[73]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(73),
      I1 => \pc_status_i_reg[77]\(52),
      O => D(52)
    );
\pc_status_i[74]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(74),
      I1 => \pc_status_i_reg[77]\(53),
      O => D(53)
    );
\pc_status_i[75]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(75),
      I1 => \pc_status_i_reg[77]\(54),
      O => D(54)
    );
\pc_status_i[76]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(76),
      I1 => \pc_status_i_reg[77]\(55),
      O => D(55)
    );
\pc_status_i[77]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(77),
      I1 => \pc_status_i_reg[77]\(56),
      O => D(56)
    );
\pc_status_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(7),
      I1 => \pc_status_i_reg[77]\(6),
      O => D(6)
    );
\pc_status_i[81]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn_q,
      O => \^s101sq_reg[1]_0\
    );
\pc_status_i[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Axi4PC_asr_inline_out(9),
      I1 => \pc_status_i_reg[77]\(7),
      O => D(7)
    );
\s101sq[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => rready_q,
      I1 => rvalid_q,
      I2 => resetn_q,
      O => s_RDATA_s(4)
    );
\s101sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_RDATA_s(4),
      Q => p_0_in22_in,
      R => \^s101sq_reg[1]_0\
    );
\s11_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(11),
      Q => s11(0),
      R => '0'
    );
\s11_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(12),
      Q => s11(1),
      R => '0'
    );
\s14_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(3),
      Q => s14(0),
      R => '0'
    );
\s14_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(4),
      Q => s14(1),
      R => '0'
    );
\s14_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(5),
      Q => s14(2),
      R => '0'
    );
\s14_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(6),
      Q => s14(3),
      R => '0'
    );
\s14_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(7),
      Q => s14(4),
      R => '0'
    );
\s14_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(8),
      Q => s14(5),
      R => '0'
    );
\s14_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(9),
      Q => s14(6),
      R => '0'
    );
\s14_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(10),
      Q => s14(7),
      R => '0'
    );
\s20_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awprot_q_reg[2]\(0),
      Q => s20(0),
      R => '0'
    );
\s20_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awprot_q_reg[2]\(1),
      Q => s20(1),
      R => '0'
    );
\s20_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awprot_q_reg[2]\(2),
      Q => s20(2),
      R => '0'
    );
\s23_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(0),
      Q => s23(0),
      R => '0'
    );
\s23_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(1),
      Q => s23(1),
      R => '0'
    );
\s23_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => data_in(2),
      Q => s23(2),
      R => '0'
    );
\s26_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awqos_q_reg[3]\(0),
      Q => s26(0),
      R => '0'
    );
\s26_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awqos_q_reg[3]\(1),
      Q => s26(1),
      R => '0'
    );
\s26_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awqos_q_reg[3]\(2),
      Q => s26(2),
      R => '0'
    );
\s26_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awqos_q_reg[3]\(3),
      Q => s26(3),
      R => '0'
    );
\s29_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awregion_q_reg[3]\(0),
      Q => s29(0),
      R => '0'
    );
\s29_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awregion_q_reg[3]\(1),
      Q => s29(1),
      R => '0'
    );
\s29_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awregion_q_reg[3]\(2),
      Q => s29(2),
      R => '0'
    );
\s29_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awregion_q_reg[3]\(3),
      Q => s29(3),
      R => '0'
    );
\s32sq[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => awvalid_q,
      I1 => resetn_q,
      I2 => awready_q,
      O => s_AWADDR_s(4)
    );
\s32sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_AWADDR_s(4),
      Q => p_0_in85_in,
      R => \^s101sq_reg[1]_0\
    );
s38_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wlast_q,
      Q => s38,
      R => '0'
    );
\s44sq[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => wvalid_q,
      I1 => resetn_q,
      I2 => wready_q,
      O => s_WDATA_s(4)
    );
\s44sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_WDATA_s(4),
      Q => p_0_in72_in,
      R => \^s101sq_reg[1]_0\
    );
\s47_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bid_q_reg[1]\(0),
      Q => s47(0),
      R => '0'
    );
\s47_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bid_q_reg[1]\(1),
      Q => s47(1),
      R => '0'
    );
\s50_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bresp_q_reg[1]\(0),
      Q => s50(0),
      R => '0'
    );
\s50_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \bresp_q_reg[1]\(1),
      Q => s50(1),
      R => '0'
    );
\s53sq[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => bvalid_q,
      I1 => resetn_q,
      I2 => bready_q,
      O => s_BUSER_s(4)
    );
\s53sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_BUSER_s(4),
      Q => p_0_in65_in,
      R => \^s101sq_reg[1]_0\
    );
\s59_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arburst_q_reg[1]\(0),
      Q => s59(0),
      R => '0'
    );
\s59_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arburst_q_reg[1]\(1),
      Q => s59(1),
      R => '0'
    );
\s5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awburst_q_reg[1]\(0),
      Q => s5(0),
      R => '0'
    );
\s5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awburst_q_reg[1]\(1),
      Q => s5(1),
      R => '0'
    );
\s62_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arcache_q_reg[3]\(0),
      Q => s62(0),
      R => '0'
    );
\s62_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arcache_q_reg[3]\(1),
      Q => s62(1),
      R => '0'
    );
\s62_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arcache_q_reg[3]\(2),
      Q => s62(2),
      R => '0'
    );
\s62_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arcache_q_reg[3]\(3),
      Q => s62(3),
      R => '0'
    );
\s65_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arid_q_reg[1]\(0),
      Q => s65(0),
      R => '0'
    );
\s65_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arid_q_reg[1]\(1),
      Q => s65(1),
      R => '0'
    );
\s68_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(0),
      Q => s68(0),
      R => '0'
    );
\s68_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(1),
      Q => s68(1),
      R => '0'
    );
\s68_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(2),
      Q => s68(2),
      R => '0'
    );
\s68_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(3),
      Q => s68(3),
      R => '0'
    );
\s68_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(4),
      Q => s68(4),
      R => '0'
    );
\s68_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(5),
      Q => s68(5),
      R => '0'
    );
\s68_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(6),
      Q => s68(6),
      R => '0'
    );
\s68_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arlen_q_reg[7]\(7),
      Q => s68(7),
      R => '0'
    );
\s74_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arprot_q_reg[2]\(0),
      Q => s74(0),
      R => '0'
    );
\s74_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arprot_q_reg[2]\(1),
      Q => s74(1),
      R => '0'
    );
\s74_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arprot_q_reg[2]\(2),
      Q => s74(2),
      R => '0'
    );
\s77_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arsize_q_reg[2]\(0),
      Q => s77(0),
      R => '0'
    );
\s77_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arsize_q_reg[2]\(1),
      Q => s77(1),
      R => '0'
    );
\s77_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arsize_q_reg[2]\(2),
      Q => s77(2),
      R => '0'
    );
\s80_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arqos_q_reg[3]\(0),
      Q => s80(0),
      R => '0'
    );
\s80_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arqos_q_reg[3]\(1),
      Q => s80(1),
      R => '0'
    );
\s80_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arqos_q_reg[3]\(2),
      Q => s80(2),
      R => '0'
    );
\s80_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arqos_q_reg[3]\(3),
      Q => s80(3),
      R => '0'
    );
\s83_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arregion_q_reg[3]\(0),
      Q => s83(0),
      R => '0'
    );
\s83_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arregion_q_reg[3]\(1),
      Q => s83(1),
      R => '0'
    );
\s83_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arregion_q_reg[3]\(2),
      Q => s83(2),
      R => '0'
    );
\s83_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \arregion_q_reg[3]\(3),
      Q => s83(3),
      R => '0'
    );
\s86sq[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => arvalid_q,
      I1 => resetn_q,
      I2 => arready_q,
      O => s_ARADDR_s(4)
    );
\s86sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ARADDR_s(4),
      Q => p_0_in41_in,
      R => \^s101sq_reg[1]_0\
    );
\s8_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awcache_q_reg[3]\(0),
      Q => s8(0),
      R => '0'
    );
\s8_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awcache_q_reg[3]\(1),
      Q => s8(1),
      R => '0'
    );
\s8_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awcache_q_reg[3]\(2),
      Q => s8(2),
      R => '0'
    );
\s8_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \awcache_q_reg[3]\(3),
      Q => s8(3),
      R => '0'
    );
\s92_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rid_q_reg[1]\(0),
      Q => s92(0),
      R => '0'
    );
\s92_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rid_q_reg[1]\(1),
      Q => s92(1),
      R => '0'
    );
s95_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => rlast_q,
      Q => s95,
      R => '0'
    );
\s98_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rresp_q_reg[1]\(0),
      Q => s98(0),
      R => '0'
    );
\s98_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rresp_q_reg[1]\(1),
      Q => s98(1),
      R => '0'
    );
\s_ARUSER_sq[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => p_0_in41_in,
      O => s_ARUSER_s04_out
    );
\s_ARUSER_sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ARUSER_sq_reg_n_0_[2]\,
      Q => p_0_in2_in,
      R => \^s101sq_reg[1]_0\
    );
\s_ARUSER_sq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ARUSER_sq_reg_n_0_[3]\,
      Q => \s_ARUSER_sq_reg_n_0_[2]\,
      R => \^s101sq_reg[1]_0\
    );
\s_ARUSER_sq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_ARUSER_s04_out,
      Q => \s_ARUSER_sq_reg_n_0_[3]\,
      R => \^s101sq_reg[1]_0\
    );
\s_AWUSER_sq[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => p_0_in85_in,
      O => s_AWUSER_s013_out
    );
\s_AWUSER_sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_AWUSER_sq_reg_n_0_[2]\,
      Q => p_0_in11_in,
      R => \^s101sq_reg[1]_0\
    );
\s_AWUSER_sq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_AWUSER_sq_reg_n_0_[3]\,
      Q => \s_AWUSER_sq_reg_n_0_[2]\,
      R => \^s101sq_reg[1]_0\
    );
\s_AWUSER_sq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_AWUSER_s013_out,
      Q => \s_AWUSER_sq_reg_n_0_[3]\,
      R => \^s101sq_reg[1]_0\
    );
\s_BUSER_sq[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => p_0_in65_in,
      O => s_BUSER_s(3)
    );
\s_BUSER_sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_BUSER_s__0\(1),
      Q => p_0_in5_in,
      R => \^s101sq_reg[1]_0\
    );
\s_BUSER_sq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_BUSER_s__0\(2),
      Q => \s_BUSER_s__0\(1),
      R => \^s101sq_reg[1]_0\
    );
\s_BUSER_sq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_BUSER_s(3),
      Q => \s_BUSER_s__0\(2),
      R => \^s101sq_reg[1]_0\
    );
\s_RUSER_sq[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => p_0_in22_in,
      O => s_RUSER_s01_out
    );
\s_RUSER_sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_RUSER_sq_reg_n_0_[2]\,
      Q => \s_RUSER_sq_reg_n_0_[1]\,
      R => \^s101sq_reg[1]_0\
    );
\s_RUSER_sq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_RUSER_sq_reg_n_0_[3]\,
      Q => \s_RUSER_sq_reg_n_0_[2]\,
      R => \^s101sq_reg[1]_0\
    );
\s_RUSER_sq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_RUSER_s01_out,
      Q => \s_RUSER_sq_reg_n_0_[3]\,
      R => \^s101sq_reg[1]_0\
    );
\s_WUSER_sq[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => resetn_q,
      I1 => p_0_in72_in,
      O => s_WUSER_s010_out
    );
\s_WUSER_sq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_WUSER_sq_reg_n_0_[2]\,
      Q => p_0_in8_in,
      R => \^s101sq_reg[1]_0\
    );
\s_WUSER_sq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_WUSER_sq_reg_n_0_[3]\,
      Q => \s_WUSER_sq_reg_n_0_[2]\,
      R => \^s101sq_reg[1]_0\
    );
\s_WUSER_sq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_WUSER_s010_out,
      Q => \s_WUSER_sq_reg_n_0_[3]\,
      R => \^s101sq_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_reporter is
  port (
    pc_status : in STD_LOGIC_VECTOR ( 60 downto 0 );
    aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_reporter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_reporter is
  signal PC_00_AXI_ERRM_AWADDR_BOUNDARY : STD_LOGIC;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of PC_00_AXI_ERRM_AWADDR_BOUNDARY : signal is std.standard.true;
  signal PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN : STD_LOGIC;
  attribute MARK_DEBUG of PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN : signal is std.standard.true;
  signal PC_02_AXI_ERRM_AWBURST : STD_LOGIC;
  attribute MARK_DEBUG of PC_02_AXI_ERRM_AWBURST : signal is std.standard.true;
  signal PC_03_AXI_ERRM_AWLEN_LOCK : STD_LOGIC;
  attribute MARK_DEBUG of PC_03_AXI_ERRM_AWLEN_LOCK : signal is std.standard.true;
  signal PC_04_AXI_ERRM_AWCACHE : STD_LOGIC;
  attribute MARK_DEBUG of PC_04_AXI_ERRM_AWCACHE : signal is std.standard.true;
  signal PC_05_AXI_ERRM_AWLEN_FIXED : STD_LOGIC;
  attribute MARK_DEBUG of PC_05_AXI_ERRM_AWLEN_FIXED : signal is std.standard.true;
  signal PC_06_AXI_ERRM_AWLEN_WRAP : STD_LOGIC;
  attribute MARK_DEBUG of PC_06_AXI_ERRM_AWLEN_WRAP : signal is std.standard.true;
  signal PC_07_AXI_ERRM_AWSIZE : STD_LOGIC;
  attribute MARK_DEBUG of PC_07_AXI_ERRM_AWSIZE : signal is std.standard.true;
  signal PC_08_AXI_ERRM_AWVALID_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_08_AXI_ERRM_AWVALID_RESET : signal is std.standard.true;
  signal PC_09_AXI_ERRM_AWADDR_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_09_AXI_ERRM_AWADDR_STABLE : signal is std.standard.true;
  signal PC_10_AXI_ERRM_AWBURST_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_10_AXI_ERRM_AWBURST_STABLE : signal is std.standard.true;
  signal PC_11_AXI_ERRM_AWCACHE_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_11_AXI_ERRM_AWCACHE_STABLE : signal is std.standard.true;
  signal PC_12_AXI_ERRM_AWID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_12_AXI_ERRM_AWID_STABLE : signal is std.standard.true;
  signal PC_13_AXI_ERRM_AWLEN_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_13_AXI_ERRM_AWLEN_STABLE : signal is std.standard.true;
  signal PC_14_AXI_ERRM_AWLOCK_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_14_AXI_ERRM_AWLOCK_STABLE : signal is std.standard.true;
  signal PC_15_AXI_ERRM_AWPROT_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_15_AXI_ERRM_AWPROT_STABLE : signal is std.standard.true;
  signal PC_16_AXI_ERRM_AWSIZE_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_16_AXI_ERRM_AWSIZE_STABLE : signal is std.standard.true;
  signal PC_17_AXI_ERRM_AWQOS_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_17_AXI_ERRM_AWQOS_STABLE : signal is std.standard.true;
  signal PC_18_AXI_ERRM_AWREGION_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_18_AXI_ERRM_AWREGION_STABLE : signal is std.standard.true;
  signal PC_19_AXI_ERRM_AWVALID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_19_AXI_ERRM_AWVALID_STABLE : signal is std.standard.true;
  signal PC_20_AXI_RECS_AWREADY_MAX_WAIT : STD_LOGIC;
  attribute MARK_DEBUG of PC_20_AXI_RECS_AWREADY_MAX_WAIT : signal is std.standard.true;
  signal PC_21_AXI_ERRM_WDATA_NUM : STD_LOGIC;
  attribute MARK_DEBUG of PC_21_AXI_ERRM_WDATA_NUM : signal is std.standard.true;
  signal PC_22_AXI_ERRM_WSTRB : STD_LOGIC;
  attribute MARK_DEBUG of PC_22_AXI_ERRM_WSTRB : signal is std.standard.true;
  signal PC_23_AXI_ERRM_WVALID_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_23_AXI_ERRM_WVALID_RESET : signal is std.standard.true;
  signal PC_24_AXI_ERRM_WDATA_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_24_AXI_ERRM_WDATA_STABLE : signal is std.standard.true;
  signal PC_25_AXI_ERRM_WLAST_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_25_AXI_ERRM_WLAST_STABLE : signal is std.standard.true;
  signal PC_26_AXI_ERRM_WSTRB_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_26_AXI_ERRM_WSTRB_STABLE : signal is std.standard.true;
  signal PC_27_AXI_ERRM_WVALID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_27_AXI_ERRM_WVALID_STABLE : signal is std.standard.true;
  signal PC_28_AXI_RECS_WREADY_MAX_WAIT : STD_LOGIC;
  attribute MARK_DEBUG of PC_28_AXI_RECS_WREADY_MAX_WAIT : signal is std.standard.true;
  signal PC_29_AXI_ERRS_BRESP_WLAST : STD_LOGIC;
  attribute MARK_DEBUG of PC_29_AXI_ERRS_BRESP_WLAST : signal is std.standard.true;
  signal PC_30_AXI_ERRS_BRESP_EXOKAY : STD_LOGIC;
  attribute MARK_DEBUG of PC_30_AXI_ERRS_BRESP_EXOKAY : signal is std.standard.true;
  signal PC_31_AXI_ERRS_BVALID_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_31_AXI_ERRS_BVALID_RESET : signal is std.standard.true;
  signal PC_32_AXI_ERRS_BRESP_AW : STD_LOGIC;
  attribute MARK_DEBUG of PC_32_AXI_ERRS_BRESP_AW : signal is std.standard.true;
  signal PC_33_AXI_ERRS_BID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_33_AXI_ERRS_BID_STABLE : signal is std.standard.true;
  signal PC_34_AXI_ERRS_BRESP_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_34_AXI_ERRS_BRESP_STABLE : signal is std.standard.true;
  signal PC_35_AXI_ERRS_BVALID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_35_AXI_ERRS_BVALID_STABLE : signal is std.standard.true;
  signal PC_36_AXI_RECM_BREADY_MAX_WAIT : STD_LOGIC;
  attribute MARK_DEBUG of PC_36_AXI_RECM_BREADY_MAX_WAIT : signal is std.standard.true;
  signal PC_37_AXI_ERRM_ARADDR_BOUNDARY : STD_LOGIC;
  attribute MARK_DEBUG of PC_37_AXI_ERRM_ARADDR_BOUNDARY : signal is std.standard.true;
  signal PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN : STD_LOGIC;
  attribute MARK_DEBUG of PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN : signal is std.standard.true;
  signal PC_39_AXI_ERRM_ARBURST : STD_LOGIC;
  attribute MARK_DEBUG of PC_39_AXI_ERRM_ARBURST : signal is std.standard.true;
  signal PC_40_AXI_ERRM_ARLEN_LOCK : STD_LOGIC;
  attribute MARK_DEBUG of PC_40_AXI_ERRM_ARLEN_LOCK : signal is std.standard.true;
  signal PC_41_AXI_ERRM_ARCACHE : STD_LOGIC;
  attribute MARK_DEBUG of PC_41_AXI_ERRM_ARCACHE : signal is std.standard.true;
  signal PC_42_AXI_ERRM_ARLEN_FIXED : STD_LOGIC;
  attribute MARK_DEBUG of PC_42_AXI_ERRM_ARLEN_FIXED : signal is std.standard.true;
  signal PC_43_AXI_ERRM_ARLEN_WRAP : STD_LOGIC;
  attribute MARK_DEBUG of PC_43_AXI_ERRM_ARLEN_WRAP : signal is std.standard.true;
  signal PC_44_AXI_ERRM_ARSIZE : STD_LOGIC;
  attribute MARK_DEBUG of PC_44_AXI_ERRM_ARSIZE : signal is std.standard.true;
  signal PC_45_AXI_ERRM_ARVALID_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_45_AXI_ERRM_ARVALID_RESET : signal is std.standard.true;
  signal PC_46_AXI_ERRM_ARADDR_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_46_AXI_ERRM_ARADDR_STABLE : signal is std.standard.true;
  signal PC_47_AXI_ERRM_ARBURST_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_47_AXI_ERRM_ARBURST_STABLE : signal is std.standard.true;
  signal PC_48_AXI_ERRM_ARCACHE_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_48_AXI_ERRM_ARCACHE_STABLE : signal is std.standard.true;
  signal PC_49_AXI_ERRM_ARID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_49_AXI_ERRM_ARID_STABLE : signal is std.standard.true;
  signal PC_50_AXI_ERRM_ARLEN_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_50_AXI_ERRM_ARLEN_STABLE : signal is std.standard.true;
  signal PC_51_AXI_ERRM_ARLOCK_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_51_AXI_ERRM_ARLOCK_STABLE : signal is std.standard.true;
  signal PC_52_AXI_ERRM_ARPROT_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_52_AXI_ERRM_ARPROT_STABLE : signal is std.standard.true;
  signal PC_53_AXI_ERRM_ARSIZE_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_53_AXI_ERRM_ARSIZE_STABLE : signal is std.standard.true;
  signal PC_54_AXI_ERRM_ARQOS_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_54_AXI_ERRM_ARQOS_STABLE : signal is std.standard.true;
  signal PC_55_AXI_ERRM_ARREGION_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_55_AXI_ERRM_ARREGION_STABLE : signal is std.standard.true;
  signal PC_56_AXI_ERRM_ARVALID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_56_AXI_ERRM_ARVALID_STABLE : signal is std.standard.true;
  signal PC_57_AXI_RECS_ARREADY_MAX_WAIT : STD_LOGIC;
  attribute MARK_DEBUG of PC_57_AXI_RECS_ARREADY_MAX_WAIT : signal is std.standard.true;
  signal PC_58_AXI_ERRS_RDATA_NUM : STD_LOGIC;
  attribute MARK_DEBUG of PC_58_AXI_ERRS_RDATA_NUM : signal is std.standard.true;
  signal PC_59_AXI_ERRS_RID : STD_LOGIC;
  attribute MARK_DEBUG of PC_59_AXI_ERRS_RID : signal is std.standard.true;
  signal PC_60_AXI_ERRS_RRESP_EXOKAY : STD_LOGIC;
  attribute MARK_DEBUG of PC_60_AXI_ERRS_RRESP_EXOKAY : signal is std.standard.true;
  signal PC_61_AXI_ERRS_RVALID_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_61_AXI_ERRS_RVALID_RESET : signal is std.standard.true;
  signal PC_62_AXI_ERRS_RDATA_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_62_AXI_ERRS_RDATA_STABLE : signal is std.standard.true;
  signal PC_63_AXI_ERRS_RID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_63_AXI_ERRS_RID_STABLE : signal is std.standard.true;
  signal PC_64_AXI_ERRS_RLAST_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_64_AXI_ERRS_RLAST_STABLE : signal is std.standard.true;
  signal PC_65_AXI_ERRS_RRESP_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_65_AXI_ERRS_RRESP_STABLE : signal is std.standard.true;
  signal PC_66_AXI_ERRS_RVALID_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_66_AXI_ERRS_RVALID_STABLE : signal is std.standard.true;
  signal PC_67_AXI_RECM_RREADY_MAX_WAIT : STD_LOGIC;
  attribute MARK_DEBUG of PC_67_AXI_RECM_RREADY_MAX_WAIT : signal is std.standard.true;
  signal PC_68_AXI_ERRM_EXCL_ALIGN : STD_LOGIC;
  attribute MARK_DEBUG of PC_68_AXI_ERRM_EXCL_ALIGN : signal is std.standard.true;
  signal PC_69_AXI_ERRM_EXCL_LEN : STD_LOGIC;
  attribute MARK_DEBUG of PC_69_AXI_ERRM_EXCL_LEN : signal is std.standard.true;
  signal PC_70_AXI_RECM_EXCL_MATCH : STD_LOGIC;
  attribute MARK_DEBUG of PC_70_AXI_RECM_EXCL_MATCH : signal is std.standard.true;
  signal PC_71_AXI_ERRM_EXCL_MAX : STD_LOGIC;
  attribute MARK_DEBUG of PC_71_AXI_ERRM_EXCL_MAX : signal is std.standard.true;
  signal PC_72_AXI_RECM_EXCL_PAIR : STD_LOGIC;
  attribute MARK_DEBUG of PC_72_AXI_RECM_EXCL_PAIR : signal is std.standard.true;
  signal PC_73_AXI_ERRM_AWUSER_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_73_AXI_ERRM_AWUSER_STABLE : signal is std.standard.true;
  signal PC_74_AXI_ERRM_WUSER_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_74_AXI_ERRM_WUSER_STABLE : signal is std.standard.true;
  signal PC_75_AXI_ERRS_BUSER_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_75_AXI_ERRS_BUSER_STABLE : signal is std.standard.true;
  signal PC_76_AXI_ERRM_ARUSER_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_76_AXI_ERRM_ARUSER_STABLE : signal is std.standard.true;
  signal PC_77_AXI_ERRS_RUSER_STABLE : STD_LOGIC;
  attribute MARK_DEBUG of PC_77_AXI_ERRS_RUSER_STABLE : signal is std.standard.true;
  signal PC_78_AXI_AUXM_RCAM_OVERFLOW : STD_LOGIC;
  attribute MARK_DEBUG of PC_78_AXI_AUXM_RCAM_OVERFLOW : signal is std.standard.true;
  signal PC_79_AXI_AUXM_RCAM_UNDERFLOW : STD_LOGIC;
  attribute MARK_DEBUG of PC_79_AXI_AUXM_RCAM_UNDERFLOW : signal is std.standard.true;
  signal PC_80_AXI_AUXM_WCAM_OVERFLOW : STD_LOGIC;
  attribute MARK_DEBUG of PC_80_AXI_AUXM_WCAM_OVERFLOW : signal is std.standard.true;
  signal PC_81_AXI_AUXM_WCAM_UNDERFLOW : STD_LOGIC;
  attribute MARK_DEBUG of PC_81_AXI_AUXM_WCAM_UNDERFLOW : signal is std.standard.true;
  signal PC_82_AXI_AUXM_EXCL_OVERFLOW : STD_LOGIC;
  attribute MARK_DEBUG of PC_82_AXI_AUXM_EXCL_OVERFLOW : signal is std.standard.true;
  signal PC_83_AXI4LITE_ERRS_BRESP_EXOKAY : STD_LOGIC;
  attribute MARK_DEBUG of PC_83_AXI4LITE_ERRS_BRESP_EXOKAY : signal is std.standard.true;
  signal PC_84_AXI4LITE_ERRS_RRESP_EXOKAY : STD_LOGIC;
  attribute MARK_DEBUG of PC_84_AXI4LITE_ERRS_RRESP_EXOKAY : signal is std.standard.true;
  signal PC_85_AXI4LITE_AUXM_DATA_WIDTH : STD_LOGIC;
  attribute MARK_DEBUG of PC_85_AXI4LITE_AUXM_DATA_WIDTH : signal is std.standard.true;
  signal PC_86_XILINX_AW_SUPPORTS_NARROW_BURST : STD_LOGIC;
  attribute MARK_DEBUG of PC_86_XILINX_AW_SUPPORTS_NARROW_BURST : signal is std.standard.true;
  signal PC_87_XILINX_AR_SUPPORTS_NARROW_BURST : STD_LOGIC;
  attribute MARK_DEBUG of PC_87_XILINX_AR_SUPPORTS_NARROW_BURST : signal is std.standard.true;
  signal PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE : STD_LOGIC;
  attribute MARK_DEBUG of PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE : signal is std.standard.true;
  signal PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE : STD_LOGIC;
  attribute MARK_DEBUG of PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE : signal is std.standard.true;
  signal PC_90_XILINX_AW_MAX_BURST : STD_LOGIC;
  attribute MARK_DEBUG of PC_90_XILINX_AW_MAX_BURST : signal is std.standard.true;
  signal PC_91_XILINX_AR_MAX_BURST : STD_LOGIC;
  attribute MARK_DEBUG of PC_91_XILINX_AR_MAX_BURST : signal is std.standard.true;
  signal PC_92_XILINX_AWREADY_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_92_XILINX_AWREADY_RESET : signal is std.standard.true;
  signal PC_93_XILINX_WREADY_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_93_XILINX_WREADY_RESET : signal is std.standard.true;
  signal PC_94_XILINX_BREADY_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_94_XILINX_BREADY_RESET : signal is std.standard.true;
  signal PC_95_XILINX_ARREADY_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_95_XILINX_ARREADY_RESET : signal is std.standard.true;
  signal PC_96_XILINX_RREADY_RESET : STD_LOGIC;
  attribute MARK_DEBUG of PC_96_XILINX_RREADY_RESET : signal is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of PC_00_AXI_ERRM_AWADDR_BOUNDARY_reg : label is "yes";
  attribute KEEP of PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN_reg : label is "yes";
  attribute KEEP of PC_02_AXI_ERRM_AWBURST_reg : label is "yes";
  attribute KEEP of PC_03_AXI_ERRM_AWLEN_LOCK_reg : label is "yes";
  attribute KEEP of PC_04_AXI_ERRM_AWCACHE_reg : label is "yes";
  attribute KEEP of PC_05_AXI_ERRM_AWLEN_FIXED_reg : label is "yes";
  attribute KEEP of PC_06_AXI_ERRM_AWLEN_WRAP_reg : label is "yes";
  attribute KEEP of PC_07_AXI_ERRM_AWSIZE_reg : label is "yes";
  attribute KEEP of PC_08_AXI_ERRM_AWVALID_RESET_reg : label is "yes";
  attribute KEEP of PC_09_AXI_ERRM_AWADDR_STABLE_reg : label is "yes";
  attribute KEEP of PC_10_AXI_ERRM_AWBURST_STABLE_reg : label is "yes";
  attribute KEEP of PC_11_AXI_ERRM_AWCACHE_STABLE_reg : label is "yes";
  attribute KEEP of PC_12_AXI_ERRM_AWID_STABLE_reg : label is "yes";
  attribute KEEP of PC_13_AXI_ERRM_AWLEN_STABLE_reg : label is "yes";
  attribute KEEP of PC_14_AXI_ERRM_AWLOCK_STABLE_reg : label is "yes";
  attribute KEEP of PC_15_AXI_ERRM_AWPROT_STABLE_reg : label is "yes";
  attribute KEEP of PC_16_AXI_ERRM_AWSIZE_STABLE_reg : label is "yes";
  attribute KEEP of PC_17_AXI_ERRM_AWQOS_STABLE_reg : label is "yes";
  attribute KEEP of PC_18_AXI_ERRM_AWREGION_STABLE_reg : label is "yes";
  attribute KEEP of PC_19_AXI_ERRM_AWVALID_STABLE_reg : label is "yes";
  attribute KEEP of PC_20_AXI_RECS_AWREADY_MAX_WAIT_reg : label is "yes";
  attribute KEEP of PC_21_AXI_ERRM_WDATA_NUM_reg : label is "yes";
  attribute KEEP of PC_22_AXI_ERRM_WSTRB_reg : label is "yes";
  attribute KEEP of PC_23_AXI_ERRM_WVALID_RESET_reg : label is "yes";
  attribute KEEP of PC_24_AXI_ERRM_WDATA_STABLE_reg : label is "yes";
  attribute KEEP of PC_25_AXI_ERRM_WLAST_STABLE_reg : label is "yes";
  attribute KEEP of PC_26_AXI_ERRM_WSTRB_STABLE_reg : label is "yes";
  attribute KEEP of PC_27_AXI_ERRM_WVALID_STABLE_reg : label is "yes";
  attribute KEEP of PC_28_AXI_RECS_WREADY_MAX_WAIT_reg : label is "yes";
  attribute KEEP of PC_29_AXI_ERRS_BRESP_WLAST_reg : label is "yes";
  attribute KEEP of PC_30_AXI_ERRS_BRESP_EXOKAY_reg : label is "yes";
  attribute KEEP of PC_31_AXI_ERRS_BVALID_RESET_reg : label is "yes";
  attribute KEEP of PC_32_AXI_ERRS_BRESP_AW_reg : label is "yes";
  attribute KEEP of PC_33_AXI_ERRS_BID_STABLE_reg : label is "yes";
  attribute KEEP of PC_34_AXI_ERRS_BRESP_STABLE_reg : label is "yes";
  attribute KEEP of PC_35_AXI_ERRS_BVALID_STABLE_reg : label is "yes";
  attribute KEEP of PC_36_AXI_RECM_BREADY_MAX_WAIT_reg : label is "yes";
  attribute KEEP of PC_37_AXI_ERRM_ARADDR_BOUNDARY_reg : label is "yes";
  attribute KEEP of PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN_reg : label is "yes";
  attribute KEEP of PC_39_AXI_ERRM_ARBURST_reg : label is "yes";
  attribute KEEP of PC_40_AXI_ERRM_ARLEN_LOCK_reg : label is "yes";
  attribute KEEP of PC_41_AXI_ERRM_ARCACHE_reg : label is "yes";
  attribute KEEP of PC_42_AXI_ERRM_ARLEN_FIXED_reg : label is "yes";
  attribute KEEP of PC_43_AXI_ERRM_ARLEN_WRAP_reg : label is "yes";
  attribute KEEP of PC_44_AXI_ERRM_ARSIZE_reg : label is "yes";
  attribute KEEP of PC_45_AXI_ERRM_ARVALID_RESET_reg : label is "yes";
  attribute KEEP of PC_46_AXI_ERRM_ARADDR_STABLE_reg : label is "yes";
  attribute KEEP of PC_47_AXI_ERRM_ARBURST_STABLE_reg : label is "yes";
  attribute KEEP of PC_48_AXI_ERRM_ARCACHE_STABLE_reg : label is "yes";
  attribute KEEP of PC_49_AXI_ERRM_ARID_STABLE_reg : label is "yes";
  attribute KEEP of PC_50_AXI_ERRM_ARLEN_STABLE_reg : label is "yes";
  attribute KEEP of PC_51_AXI_ERRM_ARLOCK_STABLE_reg : label is "yes";
  attribute KEEP of PC_52_AXI_ERRM_ARPROT_STABLE_reg : label is "yes";
  attribute KEEP of PC_53_AXI_ERRM_ARSIZE_STABLE_reg : label is "yes";
  attribute KEEP of PC_54_AXI_ERRM_ARQOS_STABLE_reg : label is "yes";
  attribute KEEP of PC_55_AXI_ERRM_ARREGION_STABLE_reg : label is "yes";
  attribute KEEP of PC_56_AXI_ERRM_ARVALID_STABLE_reg : label is "yes";
  attribute KEEP of PC_57_AXI_RECS_ARREADY_MAX_WAIT_reg : label is "yes";
  attribute KEEP of PC_58_AXI_ERRS_RDATA_NUM_reg : label is "yes";
  attribute KEEP of PC_59_AXI_ERRS_RID_reg : label is "yes";
  attribute KEEP of PC_60_AXI_ERRS_RRESP_EXOKAY_reg : label is "yes";
  attribute KEEP of PC_61_AXI_ERRS_RVALID_RESET_reg : label is "yes";
  attribute KEEP of PC_62_AXI_ERRS_RDATA_STABLE_reg : label is "yes";
  attribute KEEP of PC_63_AXI_ERRS_RID_STABLE_reg : label is "yes";
  attribute KEEP of PC_64_AXI_ERRS_RLAST_STABLE_reg : label is "yes";
  attribute KEEP of PC_65_AXI_ERRS_RRESP_STABLE_reg : label is "yes";
  attribute KEEP of PC_66_AXI_ERRS_RVALID_STABLE_reg : label is "yes";
  attribute KEEP of PC_67_AXI_RECM_RREADY_MAX_WAIT_reg : label is "yes";
  attribute KEEP of PC_68_AXI_ERRM_EXCL_ALIGN_reg : label is "yes";
  attribute KEEP of PC_69_AXI_ERRM_EXCL_LEN_reg : label is "yes";
  attribute KEEP of PC_70_AXI_RECM_EXCL_MATCH_reg : label is "yes";
  attribute KEEP of PC_71_AXI_ERRM_EXCL_MAX_reg : label is "yes";
  attribute KEEP of PC_72_AXI_RECM_EXCL_PAIR_reg : label is "yes";
  attribute KEEP of PC_73_AXI_ERRM_AWUSER_STABLE_reg : label is "yes";
  attribute KEEP of PC_74_AXI_ERRM_WUSER_STABLE_reg : label is "yes";
  attribute KEEP of PC_75_AXI_ERRS_BUSER_STABLE_reg : label is "yes";
  attribute KEEP of PC_76_AXI_ERRM_ARUSER_STABLE_reg : label is "yes";
  attribute KEEP of PC_77_AXI_ERRS_RUSER_STABLE_reg : label is "yes";
  attribute KEEP of PC_78_AXI_AUXM_RCAM_OVERFLOW_reg : label is "yes";
  attribute KEEP of PC_79_AXI_AUXM_RCAM_UNDERFLOW_reg : label is "yes";
  attribute KEEP of PC_80_AXI_AUXM_WCAM_OVERFLOW_reg : label is "yes";
  attribute KEEP of PC_81_AXI_AUXM_WCAM_UNDERFLOW_reg : label is "yes";
  attribute KEEP of PC_82_AXI_AUXM_EXCL_OVERFLOW_reg : label is "yes";
  attribute KEEP of PC_83_AXI4LITE_ERRS_BRESP_EXOKAY_reg : label is "yes";
  attribute KEEP of PC_84_AXI4LITE_ERRS_RRESP_EXOKAY_reg : label is "yes";
  attribute KEEP of PC_85_AXI4LITE_AUXM_DATA_WIDTH_reg : label is "yes";
  attribute KEEP of PC_86_XILINX_AW_SUPPORTS_NARROW_BURST_reg : label is "yes";
  attribute KEEP of PC_87_XILINX_AR_SUPPORTS_NARROW_BURST_reg : label is "yes";
  attribute KEEP of PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE_reg : label is "yes";
  attribute KEEP of PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE_reg : label is "yes";
  attribute KEEP of PC_90_XILINX_AW_MAX_BURST_reg : label is "yes";
  attribute KEEP of PC_91_XILINX_AR_MAX_BURST_reg : label is "yes";
  attribute KEEP of PC_92_XILINX_AWREADY_RESET_reg : label is "yes";
  attribute KEEP of PC_93_XILINX_WREADY_RESET_reg : label is "yes";
  attribute KEEP of PC_94_XILINX_BREADY_RESET_reg : label is "yes";
  attribute KEEP of PC_95_XILINX_ARREADY_RESET_reg : label is "yes";
  attribute KEEP of PC_96_XILINX_RREADY_RESET_reg : label is "yes";
begin
PC_00_AXI_ERRM_AWADDR_BOUNDARY_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(0),
      Q => PC_00_AXI_ERRM_AWADDR_BOUNDARY,
      R => '0'
    );
PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(1),
      Q => PC_01_AXI_ERRM_AWADDR_WRAP_ALIGN,
      R => '0'
    );
PC_02_AXI_ERRM_AWBURST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(2),
      Q => PC_02_AXI_ERRM_AWBURST,
      R => '0'
    );
PC_03_AXI_ERRM_AWLEN_LOCK_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_03_AXI_ERRM_AWLEN_LOCK,
      R => '0'
    );
PC_04_AXI_ERRM_AWCACHE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(3),
      Q => PC_04_AXI_ERRM_AWCACHE,
      R => '0'
    );
PC_05_AXI_ERRM_AWLEN_FIXED_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(4),
      Q => PC_05_AXI_ERRM_AWLEN_FIXED,
      R => '0'
    );
PC_06_AXI_ERRM_AWLEN_WRAP_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(5),
      Q => PC_06_AXI_ERRM_AWLEN_WRAP,
      R => '0'
    );
PC_07_AXI_ERRM_AWSIZE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(6),
      Q => PC_07_AXI_ERRM_AWSIZE,
      R => '0'
    );
PC_08_AXI_ERRM_AWVALID_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_08_AXI_ERRM_AWVALID_RESET,
      R => '0'
    );
PC_09_AXI_ERRM_AWADDR_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(7),
      Q => PC_09_AXI_ERRM_AWADDR_STABLE,
      R => '0'
    );
PC_10_AXI_ERRM_AWBURST_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(8),
      Q => PC_10_AXI_ERRM_AWBURST_STABLE,
      R => '0'
    );
PC_11_AXI_ERRM_AWCACHE_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(9),
      Q => PC_11_AXI_ERRM_AWCACHE_STABLE,
      R => '0'
    );
PC_12_AXI_ERRM_AWID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(10),
      Q => PC_12_AXI_ERRM_AWID_STABLE,
      R => '0'
    );
PC_13_AXI_ERRM_AWLEN_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(11),
      Q => PC_13_AXI_ERRM_AWLEN_STABLE,
      R => '0'
    );
PC_14_AXI_ERRM_AWLOCK_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_14_AXI_ERRM_AWLOCK_STABLE,
      R => '0'
    );
PC_15_AXI_ERRM_AWPROT_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(12),
      Q => PC_15_AXI_ERRM_AWPROT_STABLE,
      R => '0'
    );
PC_16_AXI_ERRM_AWSIZE_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(13),
      Q => PC_16_AXI_ERRM_AWSIZE_STABLE,
      R => '0'
    );
PC_17_AXI_ERRM_AWQOS_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(14),
      Q => PC_17_AXI_ERRM_AWQOS_STABLE,
      R => '0'
    );
PC_18_AXI_ERRM_AWREGION_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(15),
      Q => PC_18_AXI_ERRM_AWREGION_STABLE,
      R => '0'
    );
PC_19_AXI_ERRM_AWVALID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(16),
      Q => PC_19_AXI_ERRM_AWVALID_STABLE,
      R => '0'
    );
PC_20_AXI_RECS_AWREADY_MAX_WAIT_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_20_AXI_RECS_AWREADY_MAX_WAIT,
      R => '0'
    );
PC_21_AXI_ERRM_WDATA_NUM_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(17),
      Q => PC_21_AXI_ERRM_WDATA_NUM,
      R => '0'
    );
PC_22_AXI_ERRM_WSTRB_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(18),
      Q => PC_22_AXI_ERRM_WSTRB,
      R => '0'
    );
PC_23_AXI_ERRM_WVALID_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_23_AXI_ERRM_WVALID_RESET,
      R => '0'
    );
PC_24_AXI_ERRM_WDATA_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(19),
      Q => PC_24_AXI_ERRM_WDATA_STABLE,
      R => '0'
    );
PC_25_AXI_ERRM_WLAST_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(20),
      Q => PC_25_AXI_ERRM_WLAST_STABLE,
      R => '0'
    );
PC_26_AXI_ERRM_WSTRB_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(21),
      Q => PC_26_AXI_ERRM_WSTRB_STABLE,
      R => '0'
    );
PC_27_AXI_ERRM_WVALID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(22),
      Q => PC_27_AXI_ERRM_WVALID_STABLE,
      R => '0'
    );
PC_28_AXI_RECS_WREADY_MAX_WAIT_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_28_AXI_RECS_WREADY_MAX_WAIT,
      R => '0'
    );
PC_29_AXI_ERRS_BRESP_WLAST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_29_AXI_ERRS_BRESP_WLAST,
      R => '0'
    );
PC_30_AXI_ERRS_BRESP_EXOKAY_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_30_AXI_ERRS_BRESP_EXOKAY,
      R => '0'
    );
PC_31_AXI_ERRS_BVALID_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_31_AXI_ERRS_BVALID_RESET,
      R => '0'
    );
PC_32_AXI_ERRS_BRESP_AW_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(23),
      Q => PC_32_AXI_ERRS_BRESP_AW,
      R => '0'
    );
PC_33_AXI_ERRS_BID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(24),
      Q => PC_33_AXI_ERRS_BID_STABLE,
      R => '0'
    );
PC_34_AXI_ERRS_BRESP_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(25),
      Q => PC_34_AXI_ERRS_BRESP_STABLE,
      R => '0'
    );
PC_35_AXI_ERRS_BVALID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(26),
      Q => PC_35_AXI_ERRS_BVALID_STABLE,
      R => '0'
    );
PC_36_AXI_RECM_BREADY_MAX_WAIT_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_36_AXI_RECM_BREADY_MAX_WAIT,
      R => '0'
    );
PC_37_AXI_ERRM_ARADDR_BOUNDARY_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(27),
      Q => PC_37_AXI_ERRM_ARADDR_BOUNDARY,
      R => '0'
    );
PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(28),
      Q => PC_38_AXI_ERRM_ARADDR_WRAP_ALIGN,
      R => '0'
    );
PC_39_AXI_ERRM_ARBURST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(29),
      Q => PC_39_AXI_ERRM_ARBURST,
      R => '0'
    );
PC_40_AXI_ERRM_ARLEN_LOCK_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_40_AXI_ERRM_ARLEN_LOCK,
      R => '0'
    );
PC_41_AXI_ERRM_ARCACHE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(30),
      Q => PC_41_AXI_ERRM_ARCACHE,
      R => '0'
    );
PC_42_AXI_ERRM_ARLEN_FIXED_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(31),
      Q => PC_42_AXI_ERRM_ARLEN_FIXED,
      R => '0'
    );
PC_43_AXI_ERRM_ARLEN_WRAP_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(32),
      Q => PC_43_AXI_ERRM_ARLEN_WRAP,
      R => '0'
    );
PC_44_AXI_ERRM_ARSIZE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(33),
      Q => PC_44_AXI_ERRM_ARSIZE,
      R => '0'
    );
PC_45_AXI_ERRM_ARVALID_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_45_AXI_ERRM_ARVALID_RESET,
      R => '0'
    );
PC_46_AXI_ERRM_ARADDR_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(34),
      Q => PC_46_AXI_ERRM_ARADDR_STABLE,
      R => '0'
    );
PC_47_AXI_ERRM_ARBURST_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(35),
      Q => PC_47_AXI_ERRM_ARBURST_STABLE,
      R => '0'
    );
PC_48_AXI_ERRM_ARCACHE_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(36),
      Q => PC_48_AXI_ERRM_ARCACHE_STABLE,
      R => '0'
    );
PC_49_AXI_ERRM_ARID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(37),
      Q => PC_49_AXI_ERRM_ARID_STABLE,
      R => '0'
    );
PC_50_AXI_ERRM_ARLEN_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(38),
      Q => PC_50_AXI_ERRM_ARLEN_STABLE,
      R => '0'
    );
PC_51_AXI_ERRM_ARLOCK_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_51_AXI_ERRM_ARLOCK_STABLE,
      R => '0'
    );
PC_52_AXI_ERRM_ARPROT_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(39),
      Q => PC_52_AXI_ERRM_ARPROT_STABLE,
      R => '0'
    );
PC_53_AXI_ERRM_ARSIZE_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(40),
      Q => PC_53_AXI_ERRM_ARSIZE_STABLE,
      R => '0'
    );
PC_54_AXI_ERRM_ARQOS_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(41),
      Q => PC_54_AXI_ERRM_ARQOS_STABLE,
      R => '0'
    );
PC_55_AXI_ERRM_ARREGION_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(42),
      Q => PC_55_AXI_ERRM_ARREGION_STABLE,
      R => '0'
    );
PC_56_AXI_ERRM_ARVALID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(43),
      Q => PC_56_AXI_ERRM_ARVALID_STABLE,
      R => '0'
    );
PC_57_AXI_RECS_ARREADY_MAX_WAIT_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_57_AXI_RECS_ARREADY_MAX_WAIT,
      R => '0'
    );
PC_58_AXI_ERRS_RDATA_NUM_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(44),
      Q => PC_58_AXI_ERRS_RDATA_NUM,
      R => '0'
    );
PC_59_AXI_ERRS_RID_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(45),
      Q => PC_59_AXI_ERRS_RID,
      R => '0'
    );
PC_60_AXI_ERRS_RRESP_EXOKAY_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(46),
      Q => PC_60_AXI_ERRS_RRESP_EXOKAY,
      R => '0'
    );
PC_61_AXI_ERRS_RVALID_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_61_AXI_ERRS_RVALID_RESET,
      R => '0'
    );
PC_62_AXI_ERRS_RDATA_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(47),
      Q => PC_62_AXI_ERRS_RDATA_STABLE,
      R => '0'
    );
PC_63_AXI_ERRS_RID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(48),
      Q => PC_63_AXI_ERRS_RID_STABLE,
      R => '0'
    );
PC_64_AXI_ERRS_RLAST_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(49),
      Q => PC_64_AXI_ERRS_RLAST_STABLE,
      R => '0'
    );
PC_65_AXI_ERRS_RRESP_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(50),
      Q => PC_65_AXI_ERRS_RRESP_STABLE,
      R => '0'
    );
PC_66_AXI_ERRS_RVALID_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(51),
      Q => PC_66_AXI_ERRS_RVALID_STABLE,
      R => '0'
    );
PC_67_AXI_RECM_RREADY_MAX_WAIT_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_67_AXI_RECM_RREADY_MAX_WAIT,
      R => '0'
    );
PC_68_AXI_ERRM_EXCL_ALIGN_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_68_AXI_ERRM_EXCL_ALIGN,
      R => '0'
    );
PC_69_AXI_ERRM_EXCL_LEN_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_69_AXI_ERRM_EXCL_LEN,
      R => '0'
    );
PC_70_AXI_RECM_EXCL_MATCH_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_70_AXI_RECM_EXCL_MATCH,
      R => '0'
    );
PC_71_AXI_ERRM_EXCL_MAX_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_71_AXI_ERRM_EXCL_MAX,
      R => '0'
    );
PC_72_AXI_RECM_EXCL_PAIR_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_72_AXI_RECM_EXCL_PAIR,
      R => '0'
    );
PC_73_AXI_ERRM_AWUSER_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(52),
      Q => PC_73_AXI_ERRM_AWUSER_STABLE,
      R => '0'
    );
PC_74_AXI_ERRM_WUSER_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(53),
      Q => PC_74_AXI_ERRM_WUSER_STABLE,
      R => '0'
    );
PC_75_AXI_ERRS_BUSER_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(54),
      Q => PC_75_AXI_ERRS_BUSER_STABLE,
      R => '0'
    );
PC_76_AXI_ERRM_ARUSER_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(55),
      Q => PC_76_AXI_ERRM_ARUSER_STABLE,
      R => '0'
    );
PC_77_AXI_ERRS_RUSER_STABLE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(56),
      Q => PC_77_AXI_ERRS_RUSER_STABLE,
      R => '0'
    );
PC_78_AXI_AUXM_RCAM_OVERFLOW_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(57),
      Q => PC_78_AXI_AUXM_RCAM_OVERFLOW,
      R => '0'
    );
PC_79_AXI_AUXM_RCAM_UNDERFLOW_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(58),
      Q => PC_79_AXI_AUXM_RCAM_UNDERFLOW,
      R => '0'
    );
PC_80_AXI_AUXM_WCAM_OVERFLOW_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(59),
      Q => PC_80_AXI_AUXM_WCAM_OVERFLOW,
      R => '0'
    );
PC_81_AXI_AUXM_WCAM_UNDERFLOW_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_status(60),
      Q => PC_81_AXI_AUXM_WCAM_UNDERFLOW,
      R => '0'
    );
PC_82_AXI_AUXM_EXCL_OVERFLOW_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_82_AXI_AUXM_EXCL_OVERFLOW,
      R => '0'
    );
PC_83_AXI4LITE_ERRS_BRESP_EXOKAY_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_83_AXI4LITE_ERRS_BRESP_EXOKAY,
      R => '0'
    );
PC_84_AXI4LITE_ERRS_RRESP_EXOKAY_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_84_AXI4LITE_ERRS_RRESP_EXOKAY,
      R => '0'
    );
PC_85_AXI4LITE_AUXM_DATA_WIDTH_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_85_AXI4LITE_AUXM_DATA_WIDTH,
      R => '0'
    );
PC_86_XILINX_AW_SUPPORTS_NARROW_BURST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_86_XILINX_AW_SUPPORTS_NARROW_BURST,
      R => '0'
    );
PC_87_XILINX_AR_SUPPORTS_NARROW_BURST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_87_XILINX_AR_SUPPORTS_NARROW_BURST,
      R => '0'
    );
PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_88_XILINX_AW_SUPPORTS_NARROW_CACHE,
      R => '0'
    );
PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_89_XILINX_AR_SUPPORTS_NARROW_CACHE,
      R => '0'
    );
PC_90_XILINX_AW_MAX_BURST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_90_XILINX_AW_MAX_BURST,
      R => '0'
    );
PC_91_XILINX_AR_MAX_BURST_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_91_XILINX_AR_MAX_BURST,
      R => '0'
    );
PC_92_XILINX_AWREADY_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_92_XILINX_AWREADY_RESET,
      R => '0'
    );
PC_93_XILINX_WREADY_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_93_XILINX_WREADY_RESET,
      R => '0'
    );
PC_94_XILINX_BREADY_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_94_XILINX_BREADY_RESET,
      R => '0'
    );
PC_95_XILINX_ARREADY_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_95_XILINX_ARREADY_RESET,
      R => '0'
    );
PC_96_XILINX_RREADY_RESET_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '0',
      Q => PC_96_XILINX_RREADY_RESET,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo is
  port (
    \cnt_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cmd_pop_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ASR_610 : out STD_LOGIC;
    \cnt_reg[1]_1\ : out STD_LOGIC;
    \cnt_reg[1]_2\ : out STD_LOGIC;
    ASR_59_reg : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ASR_59_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_q_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    rready_q : in STD_LOGIC;
    rvalid_q : in STD_LOGIC;
    rlast_q : in STD_LOGIC;
    \gen_thread_loop[0].active_id_reg_1__s_port_]\ : in STD_LOGIC;
    \pc_status_i_reg[79]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cmd_pop_1 : in STD_LOGIC;
    \cnt_reg[0]_0\ : in STD_LOGIC;
    resetn_q : in STD_LOGIC;
    \gen_thread_loop[1].active_id_reg[3]\ : in STD_LOGIC;
    \gen_thread_loop[1].RCount_reg[1][2]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    data_out : in STD_LOGIC_VECTOR ( 2 downto 0 );
    resetn_q_reg_0 : in STD_LOGIC;
    \gen_thread_loop[1].RCount_reg[1][3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_thread_loop[1].RCount_reg[1][5]\ : in STD_LOGIC;
    \cnt_reg[0]_1\ : in STD_LOGIC;
    p_11_in : in STD_LOGIC;
    arready_q : in STD_LOGIC;
    arvalid_q : in STD_LOGIC;
    active_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_thread_loop[0].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_thread_loop[1].active_id_reg\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_thread_loop[1].RCount_reg[1][6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo is
  signal A : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ASR_59_i_12_n_0 : STD_LOGIC;
  signal ASR_59_i_13_n_0 : STD_LOGIC;
  signal ASR_59_i_15_n_0 : STD_LOGIC;
  signal ASR_59_i_16_n_0 : STD_LOGIC;
  signal ASR_59_i_5_n_0 : STD_LOGIC;
  signal ASR_59_i_6_n_0 : STD_LOGIC;
  signal ASR_59_i_8_n_0 : STD_LOGIC;
  signal ASR_59_i_9_n_0 : STD_LOGIC;
  signal ASR_59_reg_i_2_n_2 : STD_LOGIC;
  signal ASR_59_reg_i_2_n_3 : STD_LOGIC;
  signal ASR_59_reg_i_3_n_2 : STD_LOGIC;
  signal ASR_59_reg_i_3_n_3 : STD_LOGIC;
  signal \^cmd_pop_0\ : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_1\ : STD_LOGIC;
  signal \^cnt_reg[1]_2\ : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_1 : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_2 : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_3 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_1 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_2 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_3 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_4 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_5 : STD_LOGIC;
  signal \gen_thread_loop[0].active_id_reg_1__s_net_1\ : STD_LOGIC;
  signal p_20_in : STD_LOGIC;
  signal \pc_status_i[78]_i_2_n_0\ : STD_LOGIC;
  signal \pc_status_i[79]_i_3_n_0\ : STD_LOGIC;
  signal rd_ptr : STD_LOGIC;
  signal \rd_ptr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal wr_ptr : STD_LOGIC;
  signal \wr_ptr[0]_i_1__2_n_0\ : STD_LOGIC;
  signal NLW_ASR_59_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ASR_59_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ASR_59_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ASR_59_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_12_15 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_6_11 : label is "";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].RCount[0][8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pc_status_i[78]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pc_status_i[79]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1__2\ : label is "soft_lutpair7";
begin
  cmd_pop_0 <= \^cmd_pop_0\;
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
  \cnt_reg[1]_1\ <= \^cnt_reg[1]_1\;
  \cnt_reg[1]_2\ <= \^cnt_reg[1]_2\;
  \gen_thread_loop[0].active_id_reg_1__s_net_1\ <= \gen_thread_loop[0].active_id_reg_1__s_port_]\;
ASR_59_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => Q(6),
      I1 => data_ram_reg_0_1_12_15_n_3,
      I2 => Q(8),
      I3 => data_ram_reg_0_1_12_15_n_2,
      I4 => Q(7),
      O => ASR_59_reg
    );
ASR_59_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000FF9F9F9F9F"
    )
        port map (
      I0 => Q(3),
      I1 => data_ram_reg_0_1_6_11_n_4,
      I2 => \gen_thread_loop[0].active_id_reg_1__s_net_1\,
      I3 => \gen_thread_loop[1].RCount_reg[1][3]\(1),
      I4 => data_out(2),
      I5 => \gen_thread_loop[1].active_id_reg[3]\,
      O => ASR_59_i_12_n_0
    );
ASR_59_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28AAAA28"
    )
        port map (
      I0 => \gen_thread_loop[0].active_id_reg_1__s_net_1\,
      I1 => Q(4),
      I2 => data_ram_reg_0_1_12_15_n_1,
      I3 => Q(5),
      I4 => data_ram_reg_0_1_12_15_n_0,
      O => ASR_59_i_13_n_0
    );
ASR_59_i_15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF9F009F009FFF9F"
    )
        port map (
      I0 => Q(0),
      I1 => data_ram_reg_0_1_6_11_n_3,
      I2 => \gen_thread_loop[0].active_id_reg_1__s_net_1\,
      I3 => \gen_thread_loop[1].active_id_reg[3]\,
      I4 => data_out(1),
      I5 => \gen_thread_loop[1].RCount_reg[1][3]\(0),
      O => ASR_59_i_15_n_0
    );
ASR_59_i_16: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28AAAA28"
    )
        port map (
      I0 => \gen_thread_loop[0].active_id_reg_1__s_net_1\,
      I1 => Q(1),
      I2 => data_ram_reg_0_1_6_11_n_2,
      I3 => Q(2),
      I4 => data_ram_reg_0_1_6_11_n_5,
      O => ASR_59_i_16_n_0
    );
ASR_59_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => ASR_59_i_12_n_0,
      I1 => ASR_59_i_13_n_0,
      I2 => \gen_thread_loop[1].active_id_reg[3]\,
      I3 => \gen_thread_loop[1].RCount_reg[1][5]\,
      O => ASR_59_i_5_n_0
    );
ASR_59_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => ASR_59_i_15_n_0,
      I1 => ASR_59_i_16_n_0,
      I2 => \gen_thread_loop[1].active_id_reg[3]\,
      I3 => \gen_thread_loop[1].RCount_reg[1][2]\,
      O => ASR_59_i_6_n_0
    );
ASR_59_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => ASR_59_i_12_n_0,
      I1 => ASR_59_i_13_n_0,
      I2 => \gen_thread_loop[1].active_id_reg[3]\,
      I3 => \gen_thread_loop[1].RCount_reg[1][5]\,
      O => ASR_59_i_8_n_0
    );
ASR_59_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => ASR_59_i_15_n_0,
      I1 => ASR_59_i_16_n_0,
      I2 => \gen_thread_loop[1].active_id_reg[3]\,
      I3 => \gen_thread_loop[1].RCount_reg[1][2]\,
      O => ASR_59_i_9_n_0
    );
ASR_59_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_ASR_59_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => ASR_59_reg_0(0),
      CO(1) => ASR_59_reg_i_2_n_2,
      CO(0) => ASR_59_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => NLW_ASR_59_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => \gen_thread_loop[1].RCount_reg[1][6]\(0),
      S(1) => ASR_59_i_5_n_0,
      S(0) => ASR_59_i_6_n_0
    );
ASR_59_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_ASR_59_reg_i_3_CO_UNCONNECTED(3),
      CO(2) => CO(0),
      CO(1) => ASR_59_reg_i_3_n_2,
      CO(0) => ASR_59_reg_i_3_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_ASR_59_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => S(0),
      S(1) => ASR_59_i_8_n_0,
      S(0) => ASR_59_i_9_n_0
    );
ASR_61_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000F77"
    )
        port map (
      I0 => data_ram_reg_0_1_6_11_n_0,
      I1 => \gen_thread_loop[0].active_id_reg_1__s_net_1\,
      I2 => data_out(0),
      I3 => \gen_thread_loop[1].active_id_reg[3]\,
      I4 => resetn_q_reg_0,
      O => ASR_610
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C81"
    )
        port map (
      I0 => A(1),
      I1 => \^cmd_pop_0\,
      I2 => \^cnt_reg[1]_0\,
      I3 => A(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E710"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cmd_pop_0\,
      I2 => A(0),
      I3 => A(1),
      O => \cnt[1]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => A(0),
      R => resetn_q_reg
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => A(1),
      R => resetn_q_reg
    );
data_ram_reg_0_1_12_15: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1 downto 0) => data_in(6 downto 5),
      DIB(1 downto 0) => data_in(8 downto 7),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => data_ram_reg_0_1_12_15_n_0,
      DOA(0) => data_ram_reg_0_1_12_15_n_1,
      DOB(1) => data_ram_reg_0_1_12_15_n_2,
      DOB(0) => data_ram_reg_0_1_12_15_n_3,
      DOC(1 downto 0) => NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_20_in
    );
data_ram_reg_0_1_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1) => '0',
      DIA(0) => data_in(0),
      DIB(1 downto 0) => data_in(2 downto 1),
      DIC(1 downto 0) => data_in(4 downto 3),
      DID(1 downto 0) => B"00",
      DOA(1) => data_ram_reg_0_1_6_11_n_0,
      DOA(0) => data_ram_reg_0_1_6_11_n_1,
      DOB(1) => data_ram_reg_0_1_6_11_n_2,
      DOB(0) => data_ram_reg_0_1_6_11_n_3,
      DOC(1) => data_ram_reg_0_1_6_11_n_4,
      DOC(0) => data_ram_reg_0_1_6_11_n_5,
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => p_20_in
    );
\data_ram_reg_0_1_6_11_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      O => p_20_in
    );
data_ram_reg_0_1_6_11_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gen_thread_loop[0].active_id_reg\(1),
      I1 => \arid_q_reg[1]\(1),
      I2 => \gen_thread_loop[0].active_id_reg\(0),
      I3 => \arid_q_reg[1]\(0),
      O => \^cnt_reg[1]_1\
    );
data_ram_reg_0_1_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF66FF66FF6FFFF"
    )
        port map (
      I0 => \gen_thread_loop[1].active_id_reg\(1),
      I1 => \arid_q_reg[1]\(1),
      I2 => \arid_q_reg[1]\(0),
      I3 => \gen_thread_loop[1].active_id_reg\(0),
      I4 => active_cnt(2),
      I5 => active_cnt(3),
      O => \^cnt_reg[1]_2\
    );
\gen_thread_loop[0].RCount[0][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF01FF"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => A(0),
      I2 => A(1),
      I3 => resetn_q,
      I4 => \^cmd_pop_0\,
      O => SR(0)
    );
\pc_status_i[78]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFABABAAAAAAAA"
    )
        port map (
      I0 => \pc_status_i_reg[79]\(0),
      I1 => \pc_status_i[78]_i_2_n_0\,
      I2 => \^cnt_reg[1]_0\,
      I3 => \cnt_reg[0]_1\,
      I4 => p_11_in,
      I5 => resetn_q,
      O => D(0)
    );
\pc_status_i[78]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      O => \pc_status_i[78]_i_2_n_0\
    );
\pc_status_i[78]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F777F7F7FFF"
    )
        port map (
      I0 => arready_q,
      I1 => arvalid_q,
      I2 => \^cnt_reg[1]_1\,
      I3 => active_cnt(1),
      I4 => active_cnt(0),
      I5 => \^cnt_reg[1]_2\,
      O => \^cnt_reg[1]_0\
    );
\pc_status_i[79]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \pc_status_i_reg[79]\(1),
      I1 => \^cmd_pop_0\,
      I2 => \pc_status_i[79]_i_3_n_0\,
      I3 => cmd_pop_1,
      I4 => \cnt_reg[0]_0\,
      I5 => resetn_q,
      O => D(1)
    );
\pc_status_i[79]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_thread_loop[0].active_id_reg_1__s_net_1\,
      I1 => rlast_q,
      I2 => rvalid_q,
      I3 => rready_q,
      O => \^cmd_pop_0\
    );
\pc_status_i[79]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(0),
      I1 => A(1),
      O => \pc_status_i[79]_i_3_n_0\
    );
\rd_ptr[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rready_q,
      I1 => rvalid_q,
      I2 => rlast_q,
      I3 => \gen_thread_loop[0].active_id_reg_1__s_net_1\,
      I4 => rd_ptr,
      O => \rd_ptr[0]_i_1__2_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_ptr[0]_i_1__2_n_0\,
      Q => rd_ptr,
      R => resetn_q_reg
    );
\wr_ptr[0]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => wr_ptr,
      O => \wr_ptr[0]_i_1__2_n_0\
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wr_ptr[0]_i_1__2_n_0\,
      Q => wr_ptr,
      R => resetn_q_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo_0 is
  port (
    p_11_in : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_pop_1 : out STD_LOGIC;
    ASR_59_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    \pc_status_i_reg[78]\ : out STD_LOGIC;
    \pc_status_i_reg[79]\ : out STD_LOGIC;
    ASR_59_reg_0 : out STD_LOGIC;
    ASR_59_reg_1 : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    resetn_q_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    rready_q : in STD_LOGIC;
    rvalid_q : in STD_LOGIC;
    rlast_q : in STD_LOGIC;
    \gen_thread_loop[1].active_id_reg[3]\ : in STD_LOGIC;
    resetn_q : in STD_LOGIC;
    \gen_thread_loop[0].active_id_reg[1]\ : in STD_LOGIC;
    \gen_thread_loop[0].RCount_reg[0][6]\ : in STD_LOGIC;
    arready_q : in STD_LOGIC;
    arvalid_q : in STD_LOGIC;
    \gen_thread_loop[0].active_id_reg[1]_0\ : in STD_LOGIC;
    \gen_thread_loop[1].active_id_reg[3]_0\ : in STD_LOGIC;
    active_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo_0 : entity is "axi_protocol_checker_v1_1_12_syn_fifo";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo_0 is
  signal ASR_59_i_10_n_0 : STD_LOGIC;
  signal \^cmd_pop_1\ : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_1 : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_2 : STD_LOGIC;
  signal data_ram_reg_0_1_12_15_n_3 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_i_3_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_i_4_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_1 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_2 : STD_LOGIC;
  signal data_ram_reg_0_1_6_11_n_5 : STD_LOGIC;
  signal \^p_11_in\ : STD_LOGIC;
  signal rd_ptr : STD_LOGIC;
  signal \rd_ptr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal wr_ptr : STD_LOGIC;
  signal \wr_ptr[0]_i_1__1_n_0\ : STD_LOGIC;
  signal NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair10";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_12_15 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_6_11 : label is "";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].RCount[1][8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \pc_status_i[78]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \pc_status_i[79]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1__1\ : label is "soft_lutpair9";
begin
  cmd_pop_1 <= \^cmd_pop_1\;
  p_11_in <= \^p_11_in\;
ASR_59_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009009"
    )
        port map (
      I0 => data_ram_reg_0_1_12_15_n_3,
      I1 => Q(4),
      I2 => Q(5),
      I3 => data_ram_reg_0_1_12_15_n_2,
      I4 => Q(6),
      O => ASR_59_i_10_n_0
    );
ASR_59_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => data_ram_reg_0_1_12_15_n_0,
      I1 => Q(3),
      I2 => data_ram_reg_0_1_12_15_n_1,
      I3 => Q(2),
      O => ASR_59_reg_0
    );
ASR_59_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6FF6"
    )
        port map (
      I0 => data_ram_reg_0_1_6_11_n_5,
      I1 => Q(1),
      I2 => data_ram_reg_0_1_6_11_n_2,
      I3 => Q(0),
      O => ASR_59_reg_1
    );
ASR_59_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BBB"
    )
        port map (
      I0 => ASR_59_i_10_n_0,
      I1 => \gen_thread_loop[1].active_id_reg[3]\,
      I2 => \gen_thread_loop[0].active_id_reg[1]\,
      I3 => \gen_thread_loop[0].RCount_reg[0][6]\,
      O => ASR_59_reg(0)
    );
ASR_59_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BBB"
    )
        port map (
      I0 => ASR_59_i_10_n_0,
      I1 => \gen_thread_loop[1].active_id_reg[3]\,
      I2 => \gen_thread_loop[0].active_id_reg[1]\,
      I3 => \gen_thread_loop[0].RCount_reg[0][6]\,
      O => S(0)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C324"
    )
        port map (
      I0 => \cnt_reg_n_0_[1]\,
      I1 => \^p_11_in\,
      I2 => \^cmd_pop_1\,
      I3 => \cnt_reg_n_0_[0]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD40"
    )
        port map (
      I0 => \^cmd_pop_1\,
      I1 => \^p_11_in\,
      I2 => \cnt_reg_n_0_[0]\,
      I3 => \cnt_reg_n_0_[1]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg_n_0_[0]\,
      R => resetn_q_reg
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \cnt_reg_n_0_[1]\,
      R => resetn_q_reg
    );
data_ram_reg_0_1_12_15: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1 downto 0) => data_in(6 downto 5),
      DIB(1 downto 0) => data_in(8 downto 7),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => data_ram_reg_0_1_12_15_n_0,
      DOA(0) => data_ram_reg_0_1_12_15_n_1,
      DOB(1) => data_ram_reg_0_1_12_15_n_2,
      DOB(0) => data_ram_reg_0_1_12_15_n_3,
      DOC(1 downto 0) => NLW_data_ram_reg_0_1_12_15_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_12_15_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => \^p_11_in\
    );
data_ram_reg_0_1_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1) => '0',
      DIA(0) => data_in(0),
      DIB(1 downto 0) => data_in(2 downto 1),
      DIC(1 downto 0) => data_in(4 downto 3),
      DID(1 downto 0) => B"00",
      DOA(1) => data_out(0),
      DOA(0) => data_ram_reg_0_1_6_11_n_1,
      DOB(1) => data_ram_reg_0_1_6_11_n_2,
      DOB(0) => data_out(1),
      DOC(1) => data_out(2),
      DOC(0) => data_ram_reg_0_1_6_11_n_5,
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => \^p_11_in\
    );
data_ram_reg_0_1_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080088888888"
    )
        port map (
      I0 => arready_q,
      I1 => arvalid_q,
      I2 => \gen_thread_loop[0].active_id_reg[1]_0\,
      I3 => data_ram_reg_0_1_6_11_i_3_n_0,
      I4 => data_ram_reg_0_1_6_11_i_4_n_0,
      I5 => \gen_thread_loop[1].active_id_reg[3]_0\,
      O => \^p_11_in\
    );
data_ram_reg_0_1_6_11_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active_cnt(2),
      I1 => active_cnt(3),
      O => data_ram_reg_0_1_6_11_i_3_n_0
    );
data_ram_reg_0_1_6_11_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => active_cnt(0),
      I1 => active_cnt(1),
      O => data_ram_reg_0_1_6_11_i_4_n_0
    );
\gen_thread_loop[1].RCount[1][8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF02FF"
    )
        port map (
      I0 => \^p_11_in\,
      I1 => \cnt_reg_n_0_[0]\,
      I2 => \cnt_reg_n_0_[1]\,
      I3 => resetn_q,
      I4 => \^cmd_pop_1\,
      O => SR(0)
    );
\pc_status_i[78]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \pc_status_i_reg[78]\
    );
\pc_status_i[79]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \gen_thread_loop[1].active_id_reg[3]\,
      I1 => rlast_q,
      I2 => rvalid_q,
      I3 => rready_q,
      O => \^cmd_pop_1\
    );
\pc_status_i[79]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg_n_0_[0]\,
      I1 => \cnt_reg_n_0_[1]\,
      O => \pc_status_i_reg[79]\
    );
\rd_ptr[0]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rready_q,
      I1 => rvalid_q,
      I2 => rlast_q,
      I3 => \gen_thread_loop[1].active_id_reg[3]\,
      I4 => rd_ptr,
      O => \rd_ptr[0]_i_1__1_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_ptr[0]_i_1__1_n_0\,
      Q => rd_ptr,
      R => resetn_q_reg
    );
\wr_ptr[0]_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^p_11_in\,
      I1 => wr_ptr,
      O => \wr_ptr[0]_i_1__1_n_0\
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wr_ptr[0]_i_1__1_n_0\,
      Q => wr_ptr,
      R => resetn_q_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized0\ is
  port (
    cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    \StrbMask_q1_reg[6]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BrespErrorLead4_out : out STD_LOGIC;
    \AWXferCount_reg[2][1]\ : out STD_LOGIC;
    \AWXferCount_reg[2][0]\ : out STD_LOGIC;
    \AWXferCount_reg[1][1]\ : out STD_LOGIC;
    \AWXferCount_reg[1][0]\ : out STD_LOGIC;
    \AWXferCount_reg[0][1]\ : out STD_LOGIC;
    \AWXferCount_reg[0][0]\ : out STD_LOGIC;
    \AWXferCount_reg[3][1]\ : out STD_LOGIC;
    \AWXferCount_reg[3][0]\ : out STD_LOGIC;
    \pc_status_i_reg[80]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    AWXferCountOverflow2_out : out STD_LOGIC;
    wcheckPop : out STD_LOGIC;
    resetn_q_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    awready_q : in STD_LOGIC;
    awvalid_q : in STD_LOGIC;
    cnt_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \AWXferCount_reg[3][0]_0\ : in STD_LOGIC;
    \AWXferCount_reg[3][1]_0\ : in STD_LOGIC;
    bvalid_q : in STD_LOGIC;
    bready_q : in STD_LOGIC;
    \AWXferCount_reg[3][0]_1\ : in STD_LOGIC;
    \bid_q_reg[0]\ : in STD_LOGIC;
    \AWXferCount_reg[2][1]_0\ : in STD_LOGIC;
    \bid_q_reg[0]_0\ : in STD_LOGIC;
    \AWXferCount_reg[2][0]_0\ : in STD_LOGIC;
    \bid_q_reg[0]_1\ : in STD_LOGIC;
    \AWXferCount_reg[1][1]_0\ : in STD_LOGIC;
    \AWXferCount_reg[1][0]_0\ : in STD_LOGIC;
    \bid_q_reg[0]_2\ : in STD_LOGIC;
    \AWXferCount_reg[0][1]_0\ : in STD_LOGIC;
    \AWXferCount_reg[0][0]_0\ : in STD_LOGIC;
    bvalid_q_reg : in STD_LOGIC;
    \AWXferCount_reg[3][1]_1\ : in STD_LOGIC;
    \AWXferCount_reg[3][0]_2\ : in STD_LOGIC;
    \pc_status_i_reg[80]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AWXferCountOverflow_reg : in STD_LOGIC;
    resetn_q : in STD_LOGIC;
    \cnt_reg[1]_0\ : in STD_LOGIC;
    \bid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bvalid_q_reg_0 : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 19 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized0\ : entity is "axi_protocol_checker_v1_1_12_syn_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized0\ is
  signal AWIDOut : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal AWPush : STD_LOGIC;
  signal AWXferCountOverflow_i_2_n_0 : STD_LOGIC;
  signal AWXferCountOverflow_i_3_n_0 : STD_LOGIC;
  signal \AWXferCount[0][1]_i_2_n_0\ : STD_LOGIC;
  signal \AWXferCount[1][1]_i_3_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][0]_i_3_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][1]_i_3_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][1]_i_4_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][1]_i_6_n_0\ : STD_LOGIC;
  signal \AWXferCount[3][1]_i_3_n_0\ : STD_LOGIC;
  signal \^cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal rd_ptr : STD_LOGIC;
  signal \rd_ptr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal wr_ptr : STD_LOGIC;
  signal \wr_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_18_19_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_18_19_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_18_19_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AWXferCountOverflow_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \AWXferCount[2][1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \StrbMask_q1[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \StrbMask_q1[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \StrbMask_q1[6]_i_1\ : label is "soft_lutpair4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_18_19 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_6_11 : label is "";
  attribute SOFT_HLUTNM of \mask_shift_stage_2[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \mask_shift_stage_2[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mask_shift_stage_2[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_i_1\ : label is "soft_lutpair0";
begin
  cnt(1 downto 0) <= \^cnt\(1 downto 0);
  data_out(17 downto 0) <= \^data_out\(17 downto 0);
AWXferCountOverflow_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \AWXferCount[2][1]_i_4_n_0\,
      I1 => \cnt_reg[1]_0\,
      I2 => AWXferCountOverflow_i_2_n_0,
      I3 => AWXferCountOverflow_i_3_n_0,
      O => AWXferCountOverflow2_out
    );
AWXferCountOverflow_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AWXferCount_reg[3][1]_1\,
      I1 => \AWXferCount_reg[1][1]_0\,
      I2 => AWIDOut(0),
      I3 => \AWXferCount_reg[2][1]_0\,
      I4 => AWIDOut(1),
      I5 => \AWXferCount_reg[0][1]_0\,
      O => AWXferCountOverflow_i_2_n_0
    );
AWXferCountOverflow_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF000AACCAACC"
    )
        port map (
      I0 => \AWXferCount_reg[2][0]_0\,
      I1 => \AWXferCount_reg[0][0]_0\,
      I2 => \AWXferCount_reg[3][0]_2\,
      I3 => AWIDOut(1),
      I4 => \AWXferCount_reg[1][0]_0\,
      I5 => AWIDOut(0),
      O => AWXferCountOverflow_i_3_n_0
    );
\AWXferCount[0][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFCFF0A0A0C00"
    )
        port map (
      I0 => \bid_q_reg[0]_0\,
      I1 => \AWXferCount[2][0]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => \AWXferCount[0][1]_i_2_n_0\,
      I4 => \bid_q_reg[0]_2\,
      I5 => \AWXferCount_reg[0][0]_0\,
      O => \AWXferCount_reg[0][0]\
    );
\AWXferCount[0][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFCFF0A0A0C00"
    )
        port map (
      I0 => \AWXferCount_reg[3][0]_1\,
      I1 => \AWXferCount[2][1]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => \AWXferCount[0][1]_i_2_n_0\,
      I4 => \bid_q_reg[0]_2\,
      I5 => \AWXferCount_reg[0][1]_0\,
      O => \AWXferCount_reg[0][1]\
    );
\AWXferCount[0][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110111011100000"
    )
        port map (
      I0 => AWIDOut(1),
      I1 => AWIDOut(0),
      I2 => \^cnt\(0),
      I3 => \^cnt\(1),
      I4 => cnt_0(0),
      I5 => cnt_0(1),
      O => \AWXferCount[0][1]_i_2_n_0\
    );
\AWXferCount[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFAFC0A000A0C"
    )
        port map (
      I0 => \bid_q_reg[0]_0\,
      I1 => \AWXferCount[2][0]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => \bid_q_reg[0]_1\,
      I4 => \AWXferCount[1][1]_i_3_n_0\,
      I5 => \AWXferCount_reg[1][0]_0\,
      O => \AWXferCount_reg[1][0]\
    );
\AWXferCount[1][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFAFC0A000A0C"
    )
        port map (
      I0 => \AWXferCount_reg[3][0]_1\,
      I1 => \AWXferCount[2][1]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => \bid_q_reg[0]_1\,
      I4 => \AWXferCount[1][1]_i_3_n_0\,
      I5 => \AWXferCount_reg[1][1]_0\,
      O => \AWXferCount_reg[1][1]\
    );
\AWXferCount[1][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF111FFFFF"
    )
        port map (
      I0 => \^cnt\(0),
      I1 => \^cnt\(1),
      I2 => cnt_0(0),
      I3 => cnt_0(1),
      I4 => AWIDOut(0),
      I5 => AWIDOut(1),
      O => \AWXferCount[1][1]_i_3_n_0\
    );
\AWXferCount[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFAFC0A000A0C"
    )
        port map (
      I0 => \bid_q_reg[0]_0\,
      I1 => \AWXferCount[2][0]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => \bid_q_reg[0]\,
      I4 => \AWXferCount[2][1]_i_6_n_0\,
      I5 => \AWXferCount_reg[2][0]_0\,
      O => \AWXferCount_reg[2][0]\
    );
\AWXferCount[2][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02A207A752F257F7"
    )
        port map (
      I0 => AWIDOut(0),
      I1 => \AWXferCount_reg[1][0]_0\,
      I2 => AWIDOut(1),
      I3 => \AWXferCount_reg[3][0]_2\,
      I4 => \AWXferCount_reg[0][0]_0\,
      I5 => \AWXferCount_reg[2][0]_0\,
      O => \AWXferCount[2][0]_i_3_n_0\
    );
\AWXferCount[2][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFAFC0A000A0C"
    )
        port map (
      I0 => \AWXferCount_reg[3][0]_1\,
      I1 => \AWXferCount[2][1]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => \bid_q_reg[0]\,
      I4 => \AWXferCount[2][1]_i_6_n_0\,
      I5 => \AWXferCount_reg[2][1]_0\,
      O => \AWXferCount_reg[2][1]\
    );
\AWXferCount[2][1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => AWXferCountOverflow_i_2_n_0,
      I1 => AWXferCountOverflow_i_3_n_0,
      O => \AWXferCount[2][1]_i_3_n_0\
    );
\AWXferCount[2][1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000090000090"
    )
        port map (
      I0 => AWIDOut(0),
      I1 => \bid_q_reg[1]\(0),
      I2 => bvalid_q_reg_0,
      I3 => AWIDOut(1),
      I4 => \bid_q_reg[1]\(1),
      I5 => \cnt_reg[1]_0\,
      O => \AWXferCount[2][1]_i_4_n_0\
    );
\AWXferCount[2][1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF111FFFFF"
    )
        port map (
      I0 => \^cnt\(0),
      I1 => \^cnt\(1),
      I2 => cnt_0(0),
      I3 => cnt_0(1),
      I4 => AWIDOut(1),
      I5 => AWIDOut(0),
      O => \AWXferCount[2][1]_i_6_n_0\
    );
\AWXferCount[3][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFAFC0A000A0C"
    )
        port map (
      I0 => \bid_q_reg[0]_0\,
      I1 => \AWXferCount[2][0]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => bvalid_q_reg,
      I4 => \AWXferCount[3][1]_i_3_n_0\,
      I5 => \AWXferCount_reg[3][0]_2\,
      O => \AWXferCount_reg[3][0]\
    );
\AWXferCount[3][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFFAFC0A000A0C"
    )
        port map (
      I0 => \AWXferCount_reg[3][0]_1\,
      I1 => \AWXferCount[2][1]_i_3_n_0\,
      I2 => \AWXferCount[2][1]_i_4_n_0\,
      I3 => bvalid_q_reg,
      I4 => \AWXferCount[3][1]_i_3_n_0\,
      I5 => \AWXferCount_reg[3][1]_1\,
      O => \AWXferCount_reg[3][1]\
    );
\AWXferCount[3][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111FFFFFFFFFFFFF"
    )
        port map (
      I0 => \^cnt\(0),
      I1 => \^cnt\(1),
      I2 => cnt_0(0),
      I3 => cnt_0(1),
      I4 => AWIDOut(1),
      I5 => AWIDOut(0),
      O => \AWXferCount[3][1]_i_3_n_0\
    );
BrespErrorLead_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \AWXferCount_reg[3][0]_0\,
      I1 => \AWXferCount_reg[3][1]_0\,
      I2 => bvalid_q,
      I3 => bready_q,
      I4 => \AWXferCount[2][1]_i_4_n_0\,
      O => BrespErrorLead4_out
    );
\StrbMask_q1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^data_out\(7),
      I1 => \^data_out\(8),
      I2 => \^data_out\(9),
      O => \StrbMask_q1_reg[6]\(0)
    );
\StrbMask_q1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^data_out\(8),
      I1 => \^data_out\(9),
      O => \StrbMask_q1_reg[6]\(1)
    );
\StrbMask_q1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^data_out\(7),
      I1 => \^data_out\(8),
      I2 => \^data_out\(9),
      O => \StrbMask_q1_reg[6]\(2)
    );
\StrbMask_q1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^data_out\(8),
      I1 => \^data_out\(7),
      I2 => \^data_out\(9),
      O => \StrbMask_q1_reg[6]\(3)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE1111110FE0E0E0"
    )
        port map (
      I0 => cnt_0(0),
      I1 => cnt_0(1),
      I2 => \^cnt\(1),
      I3 => awvalid_q,
      I4 => awready_q,
      I5 => \^cnt\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800F800F8007F80"
    )
        port map (
      I0 => awready_q,
      I1 => awvalid_q,
      I2 => \^cnt\(0),
      I3 => \^cnt\(1),
      I4 => cnt_0(1),
      I5 => cnt_0(0),
      O => \cnt[1]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt\(0),
      R => resetn_q_reg
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \^cnt\(1),
      R => resetn_q_reg
    );
data_ram_reg_0_1_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1 downto 0) => data_in(1 downto 0),
      DIB(1 downto 0) => data_in(3 downto 2),
      DIC(1 downto 0) => data_in(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^data_out\(1 downto 0),
      DOB(1 downto 0) => \^data_out\(3 downto 2),
      DOC(1 downto 0) => \^data_out\(5 downto 4),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => AWPush
    );
data_ram_reg_0_1_0_5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => awvalid_q,
      I1 => awready_q,
      O => AWPush
    );
data_ram_reg_0_1_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1 downto 0) => data_in(13 downto 12),
      DIB(1 downto 0) => data_in(15 downto 14),
      DIC(1 downto 0) => data_in(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^data_out\(13 downto 12),
      DOB(1 downto 0) => \^data_out\(15 downto 14),
      DOC(1 downto 0) => \^data_out\(17 downto 16),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => AWPush
    );
data_ram_reg_0_1_18_19: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1 downto 0) => data_in(19 downto 18),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => AWIDOut(1 downto 0),
      DOB(1 downto 0) => NLW_data_ram_reg_0_1_18_19_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_data_ram_reg_0_1_18_19_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_18_19_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => AWPush
    );
data_ram_reg_0_1_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1 downto 0) => data_in(7 downto 6),
      DIB(1 downto 0) => data_in(9 downto 8),
      DIC(1 downto 0) => data_in(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \^data_out\(7 downto 6),
      DOB(1 downto 0) => \^data_out\(9 downto 8),
      DOC(1 downto 0) => \^data_out\(11 downto 10),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => AWPush
    );
\mask_shift_stage_2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^data_out\(0),
      I1 => \^data_out\(9),
      I2 => \^data_out\(8),
      I3 => \^data_out\(7),
      O => D(0)
    );
\mask_shift_stage_2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^data_out\(1),
      I1 => \^data_out\(8),
      I2 => \^data_out\(9),
      O => D(1)
    );
\mask_shift_stage_2[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => \^data_out\(2),
      I1 => \^data_out\(9),
      I2 => \^data_out\(8),
      I3 => \^data_out\(7),
      O => D(2)
    );
\pc_status_i[80]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAEAAAAAAAAAA"
    )
        port map (
      I0 => \pc_status_i_reg[80]_0\(0),
      I1 => \^cnt\(1),
      I2 => \^cnt\(0),
      I3 => AWPush,
      I4 => AWXferCountOverflow_reg,
      I5 => resetn_q,
      O => \pc_status_i_reg[80]\(0)
    );
\rd_ptr[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"111FEEE0"
    )
        port map (
      I0 => cnt_0(1),
      I1 => cnt_0(0),
      I2 => \^cnt\(1),
      I3 => \^cnt\(0),
      I4 => rd_ptr,
      O => \rd_ptr[0]_i_1__0_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_ptr[0]_i_1__0_n_0\,
      Q => rd_ptr,
      R => resetn_q_reg
    );
\wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => \^cnt\(0),
      I1 => \^cnt\(1),
      I2 => cnt_0(0),
      I3 => cnt_0(1),
      O => wcheckPop
    );
\wr_ptr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => awready_q,
      I1 => awvalid_q,
      I2 => wr_ptr,
      O => \wr_ptr[0]_i_1_n_0\
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wr_ptr[0]_i_1_n_0\,
      Q => wr_ptr,
      R => resetn_q_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized1\ is
  port (
    WDataNumError1_reg : out STD_LOGIC;
    cnt : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \cnt_reg[1]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    resetn_q_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    resetn_q : in STD_LOGIC;
    cnt_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    wvalid_q : in STD_LOGIC;
    wready_q : in STD_LOGIC;
    wlast_q : in STD_LOGIC;
    \pc_status_i_reg[81]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \wstrb_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    first_strb : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \WCountIn_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized1\ : entity is "axi_protocol_checker_v1_1_12_syn_fifo";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized1\ is
  signal WLastPush : STD_LOGIC;
  signal \^cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \^cnt_reg[1]_0\ : STD_LOGIC;
  signal data_ram_reg_0_1_0_5_i_2_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_0_5_i_3_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_0_5_i_4_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_0_5_i_5_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_0_5_i_6_n_0 : STD_LOGIC;
  signal data_ram_reg_0_1_0_5_i_7_n_0 : STD_LOGIC;
  signal \data_ram_reg_0_1_6_11_i_1__1_n_0\ : STD_LOGIC;
  signal \data_ram_reg_0_1_6_11_i_2__0_n_0\ : STD_LOGIC;
  signal rd_ptr : STD_LOGIC;
  signal \rd_ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal wr_ptr : STD_LOGIC;
  signal \wr_ptr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_12_16_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_data_ram_reg_0_1_12_16_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_2\ : label is "soft_lutpair5";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_12_16 : label is "";
  attribute METHODOLOGY_DRC_VIOS of data_ram_reg_0_1_6_11 : label is "";
  attribute SOFT_HLUTNM of \rd_ptr[0]_i_1\ : label is "soft_lutpair5";
begin
  cnt(1 downto 0) <= \^cnt\(1 downto 0);
  \cnt_reg[1]_0\ <= \^cnt_reg[1]_0\;
WDataNumError1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880888088800000"
    )
        port map (
      I0 => p_1_in,
      I1 => resetn_q,
      I2 => \^cnt\(1),
      I3 => \^cnt\(0),
      I4 => cnt_0(1),
      I5 => cnt_0(0),
      O => WDataNumError1_reg
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAAAAAA25555555"
    )
        port map (
      I0 => \^cnt_reg[1]_0\,
      I1 => \^cnt\(1),
      I2 => wlast_q,
      I3 => wready_q,
      I4 => wvalid_q,
      I5 => \^cnt\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF8000FF80007F"
    )
        port map (
      I0 => wvalid_q,
      I1 => wready_q,
      I2 => wlast_q,
      I3 => \^cnt\(0),
      I4 => \^cnt\(1),
      I5 => \^cnt_reg[1]_0\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => \^cnt\(1),
      I1 => \^cnt\(0),
      I2 => cnt_0(1),
      I3 => cnt_0(0),
      O => \^cnt_reg[1]_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \^cnt\(0),
      R => resetn_q_reg
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => \^cnt\(1),
      R => resetn_q_reg
    );
data_ram_reg_0_1_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1) => data_ram_reg_0_1_0_5_i_2_n_0,
      DIA(0) => data_ram_reg_0_1_0_5_i_3_n_0,
      DIB(1) => data_ram_reg_0_1_0_5_i_4_n_0,
      DIB(0) => data_ram_reg_0_1_0_5_i_5_n_0,
      DIC(1) => data_ram_reg_0_1_0_5_i_6_n_0,
      DIC(0) => data_ram_reg_0_1_0_5_i_7_n_0,
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data_out(1 downto 0),
      DOB(1 downto 0) => data_out(3 downto 2),
      DOC(1 downto 0) => data_out(5 downto 4),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => WLastPush
    );
\data_ram_reg_0_1_0_5_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => wlast_q,
      I1 => wready_q,
      I2 => wvalid_q,
      O => WLastPush
    );
data_ram_reg_0_1_0_5_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(1),
      I1 => first_strb,
      I2 => Q(1),
      O => data_ram_reg_0_1_0_5_i_2_n_0
    );
data_ram_reg_0_1_0_5_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(0),
      I1 => first_strb,
      I2 => Q(0),
      O => data_ram_reg_0_1_0_5_i_3_n_0
    );
data_ram_reg_0_1_0_5_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(3),
      I1 => first_strb,
      I2 => Q(3),
      O => data_ram_reg_0_1_0_5_i_4_n_0
    );
data_ram_reg_0_1_0_5_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(2),
      I1 => first_strb,
      I2 => Q(2),
      O => data_ram_reg_0_1_0_5_i_5_n_0
    );
data_ram_reg_0_1_0_5_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(5),
      I1 => first_strb,
      I2 => Q(5),
      O => data_ram_reg_0_1_0_5_i_6_n_0
    );
data_ram_reg_0_1_0_5_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(4),
      I1 => first_strb,
      I2 => Q(4),
      O => data_ram_reg_0_1_0_5_i_7_n_0
    );
data_ram_reg_0_1_12_16: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1 downto 0) => \WCountIn_reg[8]\(5 downto 4),
      DIB(1 downto 0) => \WCountIn_reg[8]\(7 downto 6),
      DIC(1) => '0',
      DIC(0) => \WCountIn_reg[8]\(8),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data_out(13 downto 12),
      DOB(1 downto 0) => data_out(15 downto 14),
      DOC(1) => NLW_data_ram_reg_0_1_12_16_DOC_UNCONNECTED(1),
      DOC(0) => data_out(16),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_12_16_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => WLastPush
    );
data_ram_reg_0_1_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 1) => B"0000",
      ADDRA(0) => rd_ptr,
      ADDRB(4 downto 1) => B"0000",
      ADDRB(0) => rd_ptr,
      ADDRC(4 downto 1) => B"0000",
      ADDRC(0) => rd_ptr,
      ADDRD(4 downto 1) => B"0000",
      ADDRD(0) => wr_ptr,
      DIA(1) => \data_ram_reg_0_1_6_11_i_1__1_n_0\,
      DIA(0) => \data_ram_reg_0_1_6_11_i_2__0_n_0\,
      DIB(1 downto 0) => \WCountIn_reg[8]\(1 downto 0),
      DIC(1 downto 0) => \WCountIn_reg[8]\(3 downto 2),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => data_out(7 downto 6),
      DOB(1 downto 0) => data_out(9 downto 8),
      DOC(1 downto 0) => data_out(11 downto 10),
      DOD(1 downto 0) => NLW_data_ram_reg_0_1_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => aclk,
      WE => WLastPush
    );
\data_ram_reg_0_1_6_11_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(7),
      I1 => first_strb,
      I2 => Q(7),
      O => \data_ram_reg_0_1_6_11_i_1__1_n_0\
    );
\data_ram_reg_0_1_6_11_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \wstrb_q_reg[7]\(6),
      I1 => first_strb,
      I2 => Q(6),
      O => \data_ram_reg_0_1_6_11_i_2__0_n_0\
    );
\pc_status_i[81]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAAAAAA"
    )
        port map (
      I0 => \pc_status_i_reg[81]\(0),
      I1 => resetn_q,
      I2 => \^cnt\(0),
      I3 => \^cnt\(1),
      I4 => WLastPush,
      O => D(0)
    );
\rd_ptr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"111FEEE0"
    )
        port map (
      I0 => \^cnt\(1),
      I1 => \^cnt\(0),
      I2 => cnt_0(1),
      I3 => cnt_0(0),
      I4 => rd_ptr,
      O => \rd_ptr[0]_i_1_n_0\
    );
\rd_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \rd_ptr[0]_i_1_n_0\,
      Q => rd_ptr,
      R => resetn_q_reg
    );
\wr_ptr[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wvalid_q,
      I1 => wready_q,
      I2 => wlast_q,
      I3 => wr_ptr,
      O => \wr_ptr[0]_i_1__0_n_0\
    );
\wr_ptr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wr_ptr[0]_i_1__0_n_0\,
      Q => wr_ptr,
      R => resetn_q_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_core is
  port (
    \pc_status[81]\ : out STD_LOGIC_VECTOR ( 60 downto 0 );
    pc_asserted_i_reg : out STD_LOGIC;
    aclk : in STD_LOGIC;
    wlast_q : in STD_LOGIC;
    rlast_q : in STD_LOGIC;
    awuser_q : in STD_LOGIC;
    wuser_q : in STD_LOGIC;
    buser_q : in STD_LOGIC;
    aruser_q : in STD_LOGIC;
    ruser_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \araddr_q_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    resetn_q : in STD_LOGIC;
    awready_q : in STD_LOGIC;
    awvalid_q : in STD_LOGIC;
    wvalid_q : in STD_LOGIC;
    wready_q : in STD_LOGIC;
    rready_q : in STD_LOGIC;
    rvalid_q : in STD_LOGIC;
    \awlen_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \awsize_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \arlen_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \arsize_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bvalid_q : in STD_LOGIC;
    bready_q : in STD_LOGIC;
    \awburst_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \awcache_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \awid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \awprot_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \awqos_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \awregion_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \wdata_q_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \wstrb_q_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \bresp_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arburst_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arcache_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \arprot_q_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \arqos_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \arregion_q_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rdata_q_reg[63]\ : in STD_LOGIC_VECTOR ( 63 downto 0 );
    \rid_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rresp_q_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arready_q : in STD_LOGIC;
    arvalid_q : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_core;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_core is
  signal ASR_59436_in : STD_LOGIC;
  signal ASR_59437_in : STD_LOGIC;
  signal ASR_610 : STD_LOGIC;
  signal AWCMD_n_16 : STD_LOGIC;
  signal AWCMD_n_17 : STD_LOGIC;
  signal AWCMD_n_18 : STD_LOGIC;
  signal AWCMD_n_19 : STD_LOGIC;
  signal AWCMD_n_2 : STD_LOGIC;
  signal AWCMD_n_20 : STD_LOGIC;
  signal AWCMD_n_21 : STD_LOGIC;
  signal AWCMD_n_22 : STD_LOGIC;
  signal AWCMD_n_23 : STD_LOGIC;
  signal AWCMD_n_24 : STD_LOGIC;
  signal AWCMD_n_25 : STD_LOGIC;
  signal AWCMD_n_26 : STD_LOGIC;
  signal AWCMD_n_28 : STD_LOGIC;
  signal AWCMD_n_29 : STD_LOGIC;
  signal AWCMD_n_3 : STD_LOGIC;
  signal AWCMD_n_30 : STD_LOGIC;
  signal AWCMD_n_31 : STD_LOGIC;
  signal AWCMD_n_32 : STD_LOGIC;
  signal AWCMD_n_33 : STD_LOGIC;
  signal AWCMD_n_34 : STD_LOGIC;
  signal AWCMD_n_35 : STD_LOGIC;
  signal AWCMD_n_36 : STD_LOGIC;
  signal AWCMD_n_4 : STD_LOGIC;
  signal AWStrbsizeOut : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal AWXferCountOverflow2_out : STD_LOGIC;
  signal AWXferCountOverflow_reg_n_0 : STD_LOGIC;
  signal \AWXferCount[0][1]_i_3_n_0\ : STD_LOGIC;
  signal \AWXferCount[1][1]_i_2_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][0]_i_2_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][1]_i_2_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][1]_i_5_n_0\ : STD_LOGIC;
  signal \AWXferCount[2][1]_i_7_n_0\ : STD_LOGIC;
  signal \AWXferCount[3][1]_i_2_n_0\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \AWXferCount_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_10_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_11_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_14_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_15_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_16_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_17_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_23_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_24_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_25_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_26_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_4_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_5_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_6_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_8_n_0\ : STD_LOGIC;
  signal \ArAddrIncr_q1[3]_i_9_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_10_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_11_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_14_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_15_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_16_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_17_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_23_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_24_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_25_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_26_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_4_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_5_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_6_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_8_n_0\ : STD_LOGIC;
  signal \AwAddrIncr_q1[3]_i_9_n_0\ : STD_LOGIC;
  signal BStrbError : STD_LOGIC;
  signal BStrbError_i_1_n_0 : STD_LOGIC;
  signal BrespErrorLead4_out : STD_LOGIC;
  signal BrespErrorLead_i_2_n_0 : STD_LOGIC;
  signal BrespErrorLead_i_3_n_0 : STD_LOGIC;
  signal BrespErrorLead_reg_n_0 : STD_LOGIC;
  signal CHKSTRB_eq : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CHKSTRB_eq0 : STD_LOGIC;
  signal \CHKSTRB_eq[0]_i_2_n_0\ : STD_LOGIC;
  signal \CHKSTRB_eq[1]_i_2_n_0\ : STD_LOGIC;
  signal CHKSTRB_stage_1_eq : STD_LOGIC;
  signal \CHKSTRB_stage_1_eq[0]_i_1_n_0\ : STD_LOGIC;
  signal CHKSTRB_stage_2_eq : STD_LOGIC;
  signal CheckStrbAssert : STD_LOGIC;
  signal StrbMask_q1 : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal StrbMask_q2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \StrbMask_q2[0]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[1]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[2]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[2]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[3]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[4]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[4]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[5]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[5]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[6]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[6]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[7]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[7]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[7]_i_3_n_0\ : STD_LOGIC;
  signal \StrbMask_q2[7]_i_4_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[2]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[3]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[3]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[4]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[5]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[5]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[6]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[6]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[7]_i_1_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[7]_i_2_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n[7]_i_3_n_0\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[0]\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[1]\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[2]\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[3]\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[4]\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[5]\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[6]\ : STD_LOGIC;
  signal \StrbMask_q3_n_reg_n_0_[7]\ : STD_LOGIC;
  signal \Strb_q2_reg[0]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q2_reg[1]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q2_reg[2]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q2_reg[3]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q2_reg[4]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q2_reg[5]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q2_reg[6]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q2_reg[7]_srl2_n_0\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[0]\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[1]\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[2]\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[3]\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[4]\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[5]\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[6]\ : STD_LOGIC;
  signal \Strb_q3_reg_n_0_[7]\ : STD_LOGIC;
  signal WCHECK_n_0 : STD_LOGIC;
  signal WCHECK_n_14 : STD_LOGIC;
  signal WCHECK_n_15 : STD_LOGIC;
  signal WCHECK_n_16 : STD_LOGIC;
  signal WCHECK_n_17 : STD_LOGIC;
  signal WCHECK_n_18 : STD_LOGIC;
  signal WCHECK_n_19 : STD_LOGIC;
  signal WCHECK_n_20 : STD_LOGIC;
  signal WCHECK_n_21 : STD_LOGIC;
  signal WCHECK_n_3 : STD_LOGIC;
  signal WCHECK_n_4 : STD_LOGIC;
  signal WCheckCountOut : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \WCountIn[8]_i_3_n_0\ : STD_LOGIC;
  signal \WCountIn_reg__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal WDataNumError1 : STD_LOGIC;
  signal WDataNumError1_i_3_n_0 : STD_LOGIC;
  signal WDataNumError1_i_4_n_0 : STD_LOGIC;
  signal WDataNumError1_i_5_n_0 : STD_LOGIC;
  signal WDataNumError1_reg_i_2_n_1 : STD_LOGIC;
  signal WDataNumError1_reg_i_2_n_2 : STD_LOGIC;
  signal WDataNumError1_reg_i_2_n_3 : STD_LOGIC;
  signal WSTRBq : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal WSTRBq0 : STD_LOGIC;
  signal active_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal cmd_pop_0 : STD_LOGIC;
  signal cmd_pop_1 : STD_LOGIC;
  signal cnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cnt_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_strb : STD_LOGIC;
  signal first_strb_i_1_n_0 : STD_LOGIC;
  signal \gen_thread_loop[0].RCount[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].RCount[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].RCount[0][8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].RCount[0][8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].RCount_reg[0]_1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_thread_loop[0].RDCAM_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].RDCAM_n_1\ : STD_LOGIC;
  signal \gen_thread_loop[0].RDCAM_n_2\ : STD_LOGIC;
  signal \gen_thread_loop[0].RDCAM_n_4\ : STD_LOGIC;
  signal \gen_thread_loop[0].RDCAM_n_6\ : STD_LOGIC;
  signal \gen_thread_loop[0].RDCAM_n_7\ : STD_LOGIC;
  signal \gen_thread_loop[0].RDCAM_n_8\ : STD_LOGIC;
  signal \gen_thread_loop[0].active_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].active_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].active_id[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].active_id[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[0].active_id_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_thread_loop[1].RCount[1][3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].RCount[1][6]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].RCount[1][8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].RCount[1][8]_i_4_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].RCount_reg[1]_2\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gen_thread_loop[1].RDCAM_n_1\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_10\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_11\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_3\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_4\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_5\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_6\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_7\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_8\ : STD_LOGIC;
  signal \gen_thread_loop[1].RDCAM_n_9\ : STD_LOGIC;
  signal \gen_thread_loop[1].active_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].active_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].active_id[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].active_id[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_thread_loop[1].active_id_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i_Axi4PC_asr_inline_n_0 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_1 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_10 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_11 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_12 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_13 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_14 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_15 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_16 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_17 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_18 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_19 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_2 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_20 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_21 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_22 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_23 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_24 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_25 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_26 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_27 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_28 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_29 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_3 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_30 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_31 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_32 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_33 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_34 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_35 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_36 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_37 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_38 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_39 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_4 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_40 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_41 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_42 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_43 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_44 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_45 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_46 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_47 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_48 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_49 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_5 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_50 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_51 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_52 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_53 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_54 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_55 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_56 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_57 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_58 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_59 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_6 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_60 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_61 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_62 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_63 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_64 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_65 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_66 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_67 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_68 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_69 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_7 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_70 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_71 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_72 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_73 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_74 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_75 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_76 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_77 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_78 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_8 : STD_LOGIC;
  signal i_Axi4PC_asr_inline_n_9 : STD_LOGIC;
  signal mask_shift_stage_1 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \mask_shift_stage_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \mask_shift_stage_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \mask_shift_stage_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \mask_shift_stage_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \mask_shift_stage_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \mask_shift_stage_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \mask_shift_stage_1[6]_i_1_n_0\ : STD_LOGIC;
  signal mask_shift_stage_2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mask_shift_stage_2_q1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_11_in : STD_LOGIC;
  signal pc_asserted_i_i_10_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_11_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_12_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_13_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_14_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_15_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_16_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_2_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_3_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_4_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_5_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_6_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_7_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_8_n_0 : STD_LOGIC;
  signal pc_asserted_i_i_9_n_0 : STD_LOGIC;
  signal \^pc_status[81]\ : STD_LOGIC_VECTOR ( 60 downto 0 );
  signal sel : STD_LOGIC;
  signal wchechPop_shift : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0\ : STD_LOGIC;
  signal \wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0\ : STD_LOGIC;
  signal wchechPop_shift_reg_gate_n_0 : STD_LOGIC;
  signal wchechPop_shift_reg_r_0_n_0 : STD_LOGIC;
  signal wchechPop_shift_reg_r_1_n_0 : STD_LOGIC;
  signal wchechPop_shift_reg_r_2_n_0 : STD_LOGIC;
  signal wchechPop_shift_reg_r_3_n_0 : STD_LOGIC;
  signal wchechPop_shift_reg_r_4_n_0 : STD_LOGIC;
  signal wchechPop_shift_reg_r_n_0 : STD_LOGIC;
  signal wcheckPop : STD_LOGIC;
  signal NLW_WDataNumError1_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_WDataNumError1_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \StrbMask_q2[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \StrbMask_q2[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \StrbMask_q2[4]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \StrbMask_q2[5]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \StrbMask_q2[6]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \StrbMask_q2[7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \StrbMask_q3_n[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \StrbMask_q3_n[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \StrbMask_q3_n[3]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \StrbMask_q3_n[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \StrbMask_q3_n[6]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \StrbMask_q3_n[7]_i_1\ : label is "soft_lutpair51";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \Strb_q2_reg[0]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name : string;
  attribute srl_name of \Strb_q2_reg[0]_srl2\ : label is "inst/\CORE/Strb_q2_reg[0]_srl2 ";
  attribute srl_bus_name of \Strb_q2_reg[1]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name of \Strb_q2_reg[1]_srl2\ : label is "inst/\CORE/Strb_q2_reg[1]_srl2 ";
  attribute srl_bus_name of \Strb_q2_reg[2]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name of \Strb_q2_reg[2]_srl2\ : label is "inst/\CORE/Strb_q2_reg[2]_srl2 ";
  attribute srl_bus_name of \Strb_q2_reg[3]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name of \Strb_q2_reg[3]_srl2\ : label is "inst/\CORE/Strb_q2_reg[3]_srl2 ";
  attribute srl_bus_name of \Strb_q2_reg[4]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name of \Strb_q2_reg[4]_srl2\ : label is "inst/\CORE/Strb_q2_reg[4]_srl2 ";
  attribute srl_bus_name of \Strb_q2_reg[5]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name of \Strb_q2_reg[5]_srl2\ : label is "inst/\CORE/Strb_q2_reg[5]_srl2 ";
  attribute srl_bus_name of \Strb_q2_reg[6]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name of \Strb_q2_reg[6]_srl2\ : label is "inst/\CORE/Strb_q2_reg[6]_srl2 ";
  attribute srl_bus_name of \Strb_q2_reg[7]_srl2\ : label is "inst/\CORE/Strb_q2_reg ";
  attribute srl_name of \Strb_q2_reg[7]_srl2\ : label is "inst/\CORE/Strb_q2_reg[7]_srl2 ";
  attribute SOFT_HLUTNM of \WCountIn[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \WCountIn[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \WCountIn[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \WCountIn[4]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \WCountIn[7]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \WCountIn[8]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].RCount[0][1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].RCount[0][2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].RCount[0][3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].RCount[0][4]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].RCount[0][7]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].RCount[0][8]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].active_id[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_thread_loop[0].active_id[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].RCount[1][1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].RCount[1][2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].RCount[1][3]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].RCount[1][4]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].RCount[1][7]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].RCount[1][8]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].active_id[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \gen_thread_loop[1].active_id[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \mask_shift_stage_1[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mask_shift_stage_1[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mask_shift_stage_1[2]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \mask_shift_stage_1[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \mask_shift_stage_1[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \mask_shift_stage_1[6]_i_1\ : label is "soft_lutpair46";
  attribute srl_bus_name of \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3\ : label is "inst/\CORE/wchechPop_shift_reg ";
  attribute srl_name of \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3\ : label is "inst/\CORE/wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3 ";
begin
  \pc_status[81]\(60 downto 0) <= \^pc_status[81]\(60 downto 0);
AWCMD: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized0\
     port map (
      AWXferCountOverflow2_out => AWXferCountOverflow2_out,
      AWXferCountOverflow_reg => AWXferCountOverflow_reg_n_0,
      \AWXferCount_reg[0][0]\ => AWCMD_n_33,
      \AWXferCount_reg[0][0]_0\ => \AWXferCount_reg_n_0_[0][0]\,
      \AWXferCount_reg[0][1]\ => AWCMD_n_32,
      \AWXferCount_reg[0][1]_0\ => \AWXferCount_reg_n_0_[0][1]\,
      \AWXferCount_reg[1][0]\ => AWCMD_n_31,
      \AWXferCount_reg[1][0]_0\ => \AWXferCount_reg_n_0_[1][0]\,
      \AWXferCount_reg[1][1]\ => AWCMD_n_30,
      \AWXferCount_reg[1][1]_0\ => \AWXferCount_reg_n_0_[1][1]\,
      \AWXferCount_reg[2][0]\ => AWCMD_n_29,
      \AWXferCount_reg[2][0]_0\ => \AWXferCount_reg_n_0_[2][0]\,
      \AWXferCount_reg[2][1]\ => AWCMD_n_28,
      \AWXferCount_reg[2][1]_0\ => \AWXferCount_reg_n_0_[2][1]\,
      \AWXferCount_reg[3][0]\ => AWCMD_n_35,
      \AWXferCount_reg[3][0]_0\ => BrespErrorLead_i_2_n_0,
      \AWXferCount_reg[3][0]_1\ => \AWXferCount[2][1]_i_2_n_0\,
      \AWXferCount_reg[3][0]_2\ => \AWXferCount_reg_n_0_[3][0]\,
      \AWXferCount_reg[3][1]\ => AWCMD_n_34,
      \AWXferCount_reg[3][1]_0\ => BrespErrorLead_i_3_n_0,
      \AWXferCount_reg[3][1]_1\ => \AWXferCount_reg_n_0_[3][1]\,
      BrespErrorLead4_out => BrespErrorLead4_out,
      D(2) => AWCMD_n_2,
      D(1) => AWCMD_n_3,
      D(0) => AWCMD_n_4,
      \StrbMask_q1_reg[6]\(3) => AWCMD_n_23,
      \StrbMask_q1_reg[6]\(2) => AWCMD_n_24,
      \StrbMask_q1_reg[6]\(1) => AWCMD_n_25,
      \StrbMask_q1_reg[6]\(0) => AWCMD_n_26,
      aclk => aclk,
      awready_q => awready_q,
      awvalid_q => awvalid_q,
      \bid_q_reg[0]\ => \AWXferCount[2][1]_i_5_n_0\,
      \bid_q_reg[0]_0\ => \AWXferCount[2][0]_i_2_n_0\,
      \bid_q_reg[0]_1\ => \AWXferCount[1][1]_i_2_n_0\,
      \bid_q_reg[0]_2\ => \AWXferCount[0][1]_i_3_n_0\,
      \bid_q_reg[1]\(1 downto 0) => \bid_q_reg[1]\(1 downto 0),
      bready_q => bready_q,
      bvalid_q => bvalid_q,
      bvalid_q_reg => \AWXferCount[3][1]_i_2_n_0\,
      bvalid_q_reg_0 => \AWXferCount[2][1]_i_7_n_0\,
      cnt(1 downto 0) => cnt(1 downto 0),
      cnt_0(1 downto 0) => cnt_0(1 downto 0),
      \cnt_reg[1]_0\ => WCHECK_n_3,
      data_in(19 downto 18) => \awid_q_reg[1]\(1 downto 0),
      data_in(17 downto 10) => \awlen_q_reg[7]\(7 downto 0),
      data_in(9 downto 7) => \awsize_q_reg[2]\(2 downto 0),
      data_in(6 downto 0) => Q(6 downto 0),
      data_out(17 downto 10) => p_0_in_0(7 downto 0),
      data_out(9 downto 7) => AWStrbsizeOut(2 downto 0),
      data_out(6) => AWCMD_n_16,
      data_out(5) => AWCMD_n_17,
      data_out(4) => AWCMD_n_18,
      data_out(3) => AWCMD_n_19,
      data_out(2) => AWCMD_n_20,
      data_out(1) => AWCMD_n_21,
      data_out(0) => AWCMD_n_22,
      \pc_status_i_reg[80]\(0) => AWCMD_n_36,
      \pc_status_i_reg[80]_0\(0) => \^pc_status[81]\(59),
      resetn_q => resetn_q,
      resetn_q_reg => i_Axi4PC_asr_inline_n_0,
      wcheckPop => wcheckPop
    );
AWXferCountOverflow_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWXferCountOverflow2_out,
      Q => AWXferCountOverflow_reg_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount[0][1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000E000000"
    )
        port map (
      I0 => BrespErrorLead_i_2_n_0,
      I1 => BrespErrorLead_i_3_n_0,
      I2 => \bid_q_reg[1]\(0),
      I3 => bvalid_q,
      I4 => bready_q,
      I5 => \bid_q_reg[1]\(1),
      O => \AWXferCount[0][1]_i_3_n_0\
    );
\AWXferCount[1][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8000000"
    )
        port map (
      I0 => \bid_q_reg[1]\(0),
      I1 => BrespErrorLead_i_2_n_0,
      I2 => BrespErrorLead_i_3_n_0,
      I3 => bvalid_q,
      I4 => bready_q,
      I5 => \bid_q_reg[1]\(1),
      O => \AWXferCount[1][1]_i_2_n_0\
    );
\AWXferCount[2][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01510B5BA1F1ABFB"
    )
        port map (
      I0 => \bid_q_reg[1]\(0),
      I1 => \AWXferCount_reg_n_0_[0][0]\,
      I2 => \bid_q_reg[1]\(1),
      I3 => \AWXferCount_reg_n_0_[2][0]\,
      I4 => \AWXferCount_reg_n_0_[1][0]\,
      I5 => \AWXferCount_reg_n_0_[3][0]\,
      O => \AWXferCount[2][0]_i_2_n_0\
    );
\AWXferCount[2][1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BrespErrorLead_i_2_n_0,
      I1 => BrespErrorLead_i_3_n_0,
      O => \AWXferCount[2][1]_i_2_n_0\
    );
\AWXferCount[2][1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E00000000000000"
    )
        port map (
      I0 => BrespErrorLead_i_2_n_0,
      I1 => BrespErrorLead_i_3_n_0,
      I2 => \bid_q_reg[1]\(0),
      I3 => bvalid_q,
      I4 => bready_q,
      I5 => \bid_q_reg[1]\(1),
      O => \AWXferCount[2][1]_i_5_n_0\
    );
\AWXferCount[2][1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => bvalid_q,
      I1 => bready_q,
      O => \AWXferCount[2][1]_i_7_n_0\
    );
\AWXferCount[3][1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080000000"
    )
        port map (
      I0 => bvalid_q,
      I1 => bready_q,
      I2 => \bid_q_reg[1]\(1),
      I3 => \bid_q_reg[1]\(0),
      I4 => BrespErrorLead_i_2_n_0,
      I5 => BrespErrorLead_i_3_n_0,
      O => \AWXferCount[3][1]_i_2_n_0\
    );
\AWXferCount_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_33,
      Q => \AWXferCount_reg_n_0_[0][0]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_32,
      Q => \AWXferCount_reg_n_0_[0][1]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_31,
      Q => \AWXferCount_reg_n_0_[1][0]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_30,
      Q => \AWXferCount_reg_n_0_[1][1]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_29,
      Q => \AWXferCount_reg_n_0_[2][0]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_28,
      Q => \AWXferCount_reg_n_0_[2][1]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_35,
      Q => \AWXferCount_reg_n_0_[3][0]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\AWXferCount_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_34,
      Q => \AWXferCount_reg_n_0_[3][1]\,
      R => i_Axi4PC_asr_inline_n_0
    );
\ArAddrIncr_q1[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(9),
      I1 => i_Axi4PC_asr_inline_n_2,
      I2 => \arsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_74,
      O => \ArAddrIncr_q1[3]_i_10_n_0\
    );
\ArAddrIncr_q1[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(8),
      I1 => i_Axi4PC_asr_inline_n_71,
      I2 => \arsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_75,
      O => \ArAddrIncr_q1[3]_i_11_n_0\
    );
\ArAddrIncr_q1[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(7),
      I1 => i_Axi4PC_asr_inline_n_72,
      I2 => \arsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_76,
      O => \ArAddrIncr_q1[3]_i_14_n_0\
    );
\ArAddrIncr_q1[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(6),
      I1 => i_Axi4PC_asr_inline_n_73,
      I2 => \arsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_77,
      O => \ArAddrIncr_q1[3]_i_15_n_0\
    );
\ArAddrIncr_q1[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656A6A6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(5),
      I1 => i_Axi4PC_asr_inline_n_74,
      I2 => \arsize_q_reg[2]\(2),
      I3 => \arsize_q_reg[2]\(1),
      I4 => i_Axi4PC_asr_inline_n_78,
      O => \ArAddrIncr_q1[3]_i_16_n_0\
    );
\ArAddrIncr_q1[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A6A656A6A6A6A6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(4),
      I1 => i_Axi4PC_asr_inline_n_75,
      I2 => \arsize_q_reg[2]\(2),
      I3 => \arsize_q_reg[2]\(0),
      I4 => \arsize_q_reg[2]\(1),
      I5 => \arlen_q_reg[7]\(0),
      O => \ArAddrIncr_q1[3]_i_17_n_0\
    );
\ArAddrIncr_q1[3]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \araddr_q_reg[31]\(3),
      I1 => \arsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_76,
      O => \ArAddrIncr_q1[3]_i_23_n_0\
    );
\ArAddrIncr_q1[3]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \araddr_q_reg[31]\(2),
      I1 => \arsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_77,
      O => \ArAddrIncr_q1[3]_i_24_n_0\
    );
\ArAddrIncr_q1[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA656A"
    )
        port map (
      I0 => \araddr_q_reg[31]\(1),
      I1 => \arlen_q_reg[7]\(0),
      I2 => \arsize_q_reg[2]\(0),
      I3 => \arlen_q_reg[7]\(1),
      I4 => \arsize_q_reg[2]\(1),
      I5 => \arsize_q_reg[2]\(2),
      O => \ArAddrIncr_q1[3]_i_25_n_0\
    );
\ArAddrIncr_q1[3]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA6"
    )
        port map (
      I0 => \araddr_q_reg[31]\(0),
      I1 => \arlen_q_reg[7]\(0),
      I2 => \arsize_q_reg[2]\(0),
      I3 => \arsize_q_reg[2]\(1),
      I4 => \arsize_q_reg[2]\(2),
      O => \ArAddrIncr_q1[3]_i_26_n_0\
    );
\ArAddrIncr_q1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \araddr_q_reg[31]\(14),
      I1 => \arsize_q_reg[2]\(2),
      I2 => \arsize_q_reg[2]\(0),
      I3 => \arlen_q_reg[7]\(7),
      I4 => \arsize_q_reg[2]\(1),
      O => \ArAddrIncr_q1[3]_i_4_n_0\
    );
\ArAddrIncr_q1[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666AAA6AAAAAAAAA"
    )
        port map (
      I0 => \araddr_q_reg[31]\(13),
      I1 => \arsize_q_reg[2]\(2),
      I2 => \arlen_q_reg[7]\(7),
      I3 => \arsize_q_reg[2]\(0),
      I4 => \arlen_q_reg[7]\(6),
      I5 => \arsize_q_reg[2]\(1),
      O => \ArAddrIncr_q1[3]_i_5_n_0\
    );
\ArAddrIncr_q1[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \araddr_q_reg[31]\(12),
      I1 => \arsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_71,
      O => \ArAddrIncr_q1[3]_i_6_n_0\
    );
\ArAddrIncr_q1[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \araddr_q_reg[31]\(11),
      I1 => \arsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_72,
      O => \ArAddrIncr_q1[3]_i_8_n_0\
    );
\ArAddrIncr_q1[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556AAAAAAA6AAA"
    )
        port map (
      I0 => \araddr_q_reg[31]\(10),
      I1 => \arsize_q_reg[2]\(1),
      I2 => \arlen_q_reg[7]\(7),
      I3 => \arsize_q_reg[2]\(0),
      I4 => \arsize_q_reg[2]\(2),
      I5 => i_Axi4PC_asr_inline_n_73,
      O => \ArAddrIncr_q1[3]_i_9_n_0\
    );
\AwAddrIncr_q1[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(9),
      I1 => i_Axi4PC_asr_inline_n_1,
      I2 => \awsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_66,
      O => \AwAddrIncr_q1[3]_i_10_n_0\
    );
\AwAddrIncr_q1[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(8),
      I1 => i_Axi4PC_asr_inline_n_63,
      I2 => \awsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_67,
      O => \AwAddrIncr_q1[3]_i_11_n_0\
    );
\AwAddrIncr_q1[3]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(7),
      I1 => i_Axi4PC_asr_inline_n_64,
      I2 => \awsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_68,
      O => \AwAddrIncr_q1[3]_i_14_n_0\
    );
\AwAddrIncr_q1[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => Q(6),
      I1 => i_Axi4PC_asr_inline_n_65,
      I2 => \awsize_q_reg[2]\(2),
      I3 => i_Axi4PC_asr_inline_n_69,
      O => \AwAddrIncr_q1[3]_i_15_n_0\
    );
\AwAddrIncr_q1[3]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A656A6A6"
    )
        port map (
      I0 => Q(5),
      I1 => i_Axi4PC_asr_inline_n_66,
      I2 => \awsize_q_reg[2]\(2),
      I3 => \awsize_q_reg[2]\(1),
      I4 => i_Axi4PC_asr_inline_n_70,
      O => \AwAddrIncr_q1[3]_i_16_n_0\
    );
\AwAddrIncr_q1[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6A6A656A6A6A6A6"
    )
        port map (
      I0 => Q(4),
      I1 => i_Axi4PC_asr_inline_n_67,
      I2 => \awsize_q_reg[2]\(2),
      I3 => \awsize_q_reg[2]\(0),
      I4 => \awsize_q_reg[2]\(1),
      I5 => \awlen_q_reg[7]\(0),
      O => \AwAddrIncr_q1[3]_i_17_n_0\
    );
\AwAddrIncr_q1[3]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(3),
      I1 => \awsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_68,
      O => \AwAddrIncr_q1[3]_i_23_n_0\
    );
\AwAddrIncr_q1[3]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => Q(2),
      I1 => \awsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_69,
      O => \AwAddrIncr_q1[3]_i_24_n_0\
    );
\AwAddrIncr_q1[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA656A"
    )
        port map (
      I0 => Q(1),
      I1 => \awlen_q_reg[7]\(0),
      I2 => \awsize_q_reg[2]\(0),
      I3 => \awlen_q_reg[7]\(1),
      I4 => \awsize_q_reg[2]\(1),
      I5 => \awsize_q_reg[2]\(2),
      O => \AwAddrIncr_q1[3]_i_25_n_0\
    );
\AwAddrIncr_q1[3]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA6"
    )
        port map (
      I0 => Q(0),
      I1 => \awlen_q_reg[7]\(0),
      I2 => \awsize_q_reg[2]\(0),
      I3 => \awsize_q_reg[2]\(1),
      I4 => \awsize_q_reg[2]\(2),
      O => \AwAddrIncr_q1[3]_i_26_n_0\
    );
\AwAddrIncr_q1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => Q(14),
      I1 => \awsize_q_reg[2]\(2),
      I2 => \awsize_q_reg[2]\(0),
      I3 => \awlen_q_reg[7]\(7),
      I4 => \awsize_q_reg[2]\(1),
      O => \AwAddrIncr_q1[3]_i_4_n_0\
    );
\AwAddrIncr_q1[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666AAA6AAAAAAAAA"
    )
        port map (
      I0 => Q(13),
      I1 => \awsize_q_reg[2]\(2),
      I2 => \awlen_q_reg[7]\(7),
      I3 => \awsize_q_reg[2]\(0),
      I4 => \awlen_q_reg[7]\(6),
      I5 => \awsize_q_reg[2]\(1),
      O => \AwAddrIncr_q1[3]_i_5_n_0\
    );
\AwAddrIncr_q1[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Q(12),
      I1 => \awsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_63,
      O => \AwAddrIncr_q1[3]_i_6_n_0\
    );
\AwAddrIncr_q1[3]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => Q(11),
      I1 => \awsize_q_reg[2]\(2),
      I2 => i_Axi4PC_asr_inline_n_64,
      O => \AwAddrIncr_q1[3]_i_8_n_0\
    );
\AwAddrIncr_q1[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55556AAAAAAA6AAA"
    )
        port map (
      I0 => Q(10),
      I1 => \awsize_q_reg[2]\(1),
      I2 => \awlen_q_reg[7]\(7),
      I3 => \awsize_q_reg[2]\(0),
      I4 => \awsize_q_reg[2]\(2),
      I5 => i_Axi4PC_asr_inline_n_65,
      O => \AwAddrIncr_q1[3]_i_9_n_0\
    );
BStrbError_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wchechPop_shift(6),
      I1 => CheckStrbAssert,
      O => BStrbError_i_1_n_0
    );
BStrbError_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => BStrbError_i_1_n_0,
      Q => BStrbError,
      R => i_Axi4PC_asr_inline_n_0
    );
BrespErrorLead_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACCAACCF0FFF000"
    )
        port map (
      I0 => \AWXferCount_reg_n_0_[3][0]\,
      I1 => \AWXferCount_reg_n_0_[1][0]\,
      I2 => \AWXferCount_reg_n_0_[2][0]\,
      I3 => \bid_q_reg[1]\(1),
      I4 => \AWXferCount_reg_n_0_[0][0]\,
      I5 => \bid_q_reg[1]\(0),
      O => BrespErrorLead_i_2_n_0
    );
BrespErrorLead_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \AWXferCount_reg_n_0_[3][1]\,
      I1 => \AWXferCount_reg_n_0_[1][1]\,
      I2 => \bid_q_reg[1]\(0),
      I3 => \AWXferCount_reg_n_0_[2][1]\,
      I4 => \bid_q_reg[1]\(1),
      I5 => \AWXferCount_reg_n_0_[0][1]\,
      O => BrespErrorLead_i_3_n_0
    );
BrespErrorLead_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => BrespErrorLead4_out,
      Q => BrespErrorLead_reg_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
\CHKSTRB_eq[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888FFFF"
    )
        port map (
      I0 => \Strb_q3_reg_n_0_[1]\,
      I1 => \StrbMask_q3_n_reg_n_0_[1]\,
      I2 => \Strb_q3_reg_n_0_[0]\,
      I3 => \StrbMask_q3_n_reg_n_0_[0]\,
      I4 => \CHKSTRB_eq[0]_i_2_n_0\,
      O => p_0_out(0)
    );
\CHKSTRB_eq[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \StrbMask_q3_n_reg_n_0_[3]\,
      I1 => \Strb_q3_reg_n_0_[3]\,
      I2 => \StrbMask_q3_n_reg_n_0_[2]\,
      I3 => \Strb_q3_reg_n_0_[2]\,
      O => \CHKSTRB_eq[0]_i_2_n_0\
    );
\CHKSTRB_eq[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888FFFF"
    )
        port map (
      I0 => \Strb_q3_reg_n_0_[5]\,
      I1 => \StrbMask_q3_n_reg_n_0_[5]\,
      I2 => \Strb_q3_reg_n_0_[4]\,
      I3 => \StrbMask_q3_n_reg_n_0_[4]\,
      I4 => \CHKSTRB_eq[1]_i_2_n_0\,
      O => CHKSTRB_eq0
    );
\CHKSTRB_eq[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \StrbMask_q3_n_reg_n_0_[7]\,
      I1 => \Strb_q3_reg_n_0_[7]\,
      I2 => \StrbMask_q3_n_reg_n_0_[6]\,
      I3 => \Strb_q3_reg_n_0_[6]\,
      O => \CHKSTRB_eq[1]_i_2_n_0\
    );
\CHKSTRB_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_out(0),
      Q => CHKSTRB_eq(0),
      R => '0'
    );
\CHKSTRB_eq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => CHKSTRB_eq0,
      Q => CHKSTRB_eq(1),
      R => '0'
    );
\CHKSTRB_stage_1_eq[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CHKSTRB_eq(0),
      I1 => CHKSTRB_eq(1),
      O => \CHKSTRB_stage_1_eq[0]_i_1_n_0\
    );
\CHKSTRB_stage_1_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \CHKSTRB_stage_1_eq[0]_i_1_n_0\,
      Q => CHKSTRB_stage_1_eq,
      R => '0'
    );
\CHKSTRB_stage_2_eq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => CHKSTRB_stage_1_eq,
      Q => CHKSTRB_stage_2_eq,
      R => '0'
    );
CheckStrbAssert_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => CHKSTRB_stage_2_eq,
      Q => CheckStrbAssert,
      R => i_Axi4PC_asr_inline_n_0
    );
\StrbMask_q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_26,
      Q => StrbMask_q1(1),
      R => '0'
    );
\StrbMask_q1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_25,
      Q => StrbMask_q1(3),
      R => '0'
    );
\StrbMask_q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_24,
      Q => StrbMask_q1(5),
      R => '0'
    );
\StrbMask_q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_23,
      Q => StrbMask_q1(6),
      R => '0'
    );
\StrbMask_q2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => mask_shift_stage_1(1),
      I1 => mask_shift_stage_1(2),
      I2 => mask_shift_stage_1(0),
      I3 => \StrbMask_q2[7]_i_4_n_0\,
      O => \StrbMask_q2[0]_i_1_n_0\
    );
\StrbMask_q2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => mask_shift_stage_1(2),
      I1 => StrbMask_q1(1),
      I2 => mask_shift_stage_1(1),
      I3 => \StrbMask_q2[7]_i_4_n_0\,
      O => \StrbMask_q2[1]_i_1_n_0\
    );
\StrbMask_q2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => StrbMask_q1(3),
      I1 => \StrbMask_q2[2]_i_2_n_0\,
      I2 => mask_shift_stage_1(5),
      I3 => mask_shift_stage_1(6),
      I4 => mask_shift_stage_1(3),
      I5 => mask_shift_stage_1(4),
      O => \StrbMask_q2[2]_i_1_n_0\
    );
\StrbMask_q2[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003B38"
    )
        port map (
      I0 => StrbMask_q1(1),
      I1 => mask_shift_stage_1(0),
      I2 => mask_shift_stage_1(1),
      I3 => StrbMask_q1(3),
      I4 => mask_shift_stage_1(2),
      O => \StrbMask_q2[2]_i_2_n_0\
    );
\StrbMask_q2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A200000"
    )
        port map (
      I0 => StrbMask_q1(3),
      I1 => mask_shift_stage_1(2),
      I2 => mask_shift_stage_1(0),
      I3 => \StrbMask_q2[4]_i_2_n_0\,
      I4 => \StrbMask_q2[7]_i_4_n_0\,
      O => \StrbMask_q2[3]_i_1_n_0\
    );
\StrbMask_q2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => StrbMask_q1(5),
      I1 => \StrbMask_q2[4]_i_2_n_0\,
      I2 => mask_shift_stage_1(0),
      I3 => \StrbMask_q2[5]_i_2_n_0\,
      I4 => \StrbMask_q2[7]_i_4_n_0\,
      O => \StrbMask_q2[4]_i_1_n_0\
    );
\StrbMask_q2[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => StrbMask_q1(1),
      I1 => mask_shift_stage_1(1),
      I2 => StrbMask_q1(3),
      I3 => mask_shift_stage_1(2),
      O => \StrbMask_q2[4]_i_2_n_0\
    );
\StrbMask_q2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => StrbMask_q1(5),
      I1 => \StrbMask_q2[5]_i_2_n_0\,
      I2 => mask_shift_stage_1(0),
      I3 => \StrbMask_q2[6]_i_2_n_0\,
      I4 => \StrbMask_q2[7]_i_4_n_0\,
      O => \StrbMask_q2[5]_i_1_n_0\
    );
\StrbMask_q2[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3B38"
    )
        port map (
      I0 => StrbMask_q1(3),
      I1 => mask_shift_stage_1(1),
      I2 => mask_shift_stage_1(2),
      I3 => StrbMask_q1(5),
      O => \StrbMask_q2[5]_i_2_n_0\
    );
\StrbMask_q2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => StrbMask_q1(6),
      I1 => \StrbMask_q2[6]_i_2_n_0\,
      I2 => mask_shift_stage_1(0),
      I3 => \StrbMask_q2[7]_i_2_n_0\,
      I4 => \StrbMask_q2[7]_i_4_n_0\,
      O => \StrbMask_q2[6]_i_1_n_0\
    );
\StrbMask_q2[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => StrbMask_q1(3),
      I1 => mask_shift_stage_1(1),
      I2 => StrbMask_q1(1),
      I3 => mask_shift_stage_1(2),
      I4 => StrbMask_q1(5),
      O => \StrbMask_q2[6]_i_2_n_0\
    );
\StrbMask_q2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => StrbMask_q1(5),
      I1 => \StrbMask_q2[7]_i_2_n_0\,
      I2 => mask_shift_stage_1(0),
      I3 => \StrbMask_q2[7]_i_3_n_0\,
      I4 => \StrbMask_q2[7]_i_4_n_0\,
      O => \StrbMask_q2[7]_i_1_n_0\
    );
\StrbMask_q2[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => StrbMask_q1(5),
      I1 => mask_shift_stage_1(1),
      I2 => StrbMask_q1(3),
      I3 => mask_shift_stage_1(2),
      I4 => StrbMask_q1(6),
      O => \StrbMask_q2[7]_i_2_n_0\
    );
\StrbMask_q2[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => StrbMask_q1(1),
      I1 => StrbMask_q1(5),
      I2 => mask_shift_stage_1(1),
      I3 => StrbMask_q1(3),
      I4 => mask_shift_stage_1(2),
      I5 => StrbMask_q1(5),
      O => \StrbMask_q2[7]_i_3_n_0\
    );
\StrbMask_q2[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => mask_shift_stage_1(5),
      I1 => mask_shift_stage_1(6),
      I2 => mask_shift_stage_1(3),
      I3 => mask_shift_stage_1(4),
      O => \StrbMask_q2[7]_i_4_n_0\
    );
\StrbMask_q2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[0]_i_1_n_0\,
      Q => StrbMask_q2(0),
      R => '0'
    );
\StrbMask_q2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[1]_i_1_n_0\,
      Q => StrbMask_q2(1),
      R => '0'
    );
\StrbMask_q2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[2]_i_1_n_0\,
      Q => StrbMask_q2(2),
      R => '0'
    );
\StrbMask_q2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[3]_i_1_n_0\,
      Q => StrbMask_q2(3),
      R => '0'
    );
\StrbMask_q2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[4]_i_1_n_0\,
      Q => StrbMask_q2(4),
      R => '0'
    );
\StrbMask_q2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[5]_i_1_n_0\,
      Q => StrbMask_q2(5),
      R => '0'
    );
\StrbMask_q2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[6]_i_1_n_0\,
      Q => StrbMask_q2(6),
      R => '0'
    );
\StrbMask_q2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q2[7]_i_1_n_0\,
      Q => StrbMask_q2(7),
      R => '0'
    );
\StrbMask_q3_n[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => mask_shift_stage_2_q1(0),
      I1 => mask_shift_stage_2_q1(1),
      I2 => StrbMask_q2(0),
      I3 => mask_shift_stage_2_q1(2),
      O => \StrbMask_q3_n[0]_i_1_n_0\
    );
\StrbMask_q3_n[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFBFFFB"
    )
        port map (
      I0 => mask_shift_stage_2_q1(1),
      I1 => StrbMask_q2(1),
      I2 => mask_shift_stage_2_q1(2),
      I3 => mask_shift_stage_2_q1(0),
      I4 => StrbMask_q2(0),
      O => \StrbMask_q3_n[1]_i_1_n_0\
    );
\StrbMask_q3_n[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAABFBFFFFABFB"
    )
        port map (
      I0 => mask_shift_stage_2_q1(2),
      I1 => StrbMask_q2(2),
      I2 => mask_shift_stage_2_q1(1),
      I3 => StrbMask_q2(0),
      I4 => mask_shift_stage_2_q1(0),
      I5 => StrbMask_q2(1),
      O => \StrbMask_q3_n[2]_i_1_n_0\
    );
\StrbMask_q3_n[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D1D1D1DDDDDDD1DD"
    )
        port map (
      I0 => \StrbMask_q3_n[3]_i_2_n_0\,
      I1 => mask_shift_stage_2_q1(0),
      I2 => mask_shift_stage_2_q1(2),
      I3 => StrbMask_q2(2),
      I4 => mask_shift_stage_2_q1(1),
      I5 => StrbMask_q2(0),
      O => \StrbMask_q3_n[3]_i_1_n_0\
    );
\StrbMask_q3_n[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => StrbMask_q2(1),
      I1 => mask_shift_stage_2_q1(1),
      I2 => StrbMask_q2(3),
      I3 => mask_shift_stage_2_q1(2),
      O => \StrbMask_q3_n[3]_i_2_n_0\
    );
\StrbMask_q3_n[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D1D1D1DDDDDDD1DD"
    )
        port map (
      I0 => \StrbMask_q3_n[5]_i_2_n_0\,
      I1 => mask_shift_stage_2_q1(0),
      I2 => mask_shift_stage_2_q1(2),
      I3 => StrbMask_q2(3),
      I4 => mask_shift_stage_2_q1(1),
      I5 => StrbMask_q2(1),
      O => \StrbMask_q3_n[4]_i_1_n_0\
    );
\StrbMask_q3_n[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \StrbMask_q3_n[6]_i_2_n_0\,
      I1 => mask_shift_stage_2_q1(0),
      I2 => \StrbMask_q3_n[5]_i_2_n_0\,
      O => \StrbMask_q3_n[5]_i_1_n_0\
    );
\StrbMask_q3_n[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => StrbMask_q2(2),
      I1 => mask_shift_stage_2_q1(1),
      I2 => StrbMask_q2(0),
      I3 => mask_shift_stage_2_q1(2),
      I4 => StrbMask_q2(4),
      O => \StrbMask_q3_n[5]_i_2_n_0\
    );
\StrbMask_q3_n[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \StrbMask_q3_n[7]_i_3_n_0\,
      I1 => mask_shift_stage_2_q1(0),
      I2 => \StrbMask_q3_n[6]_i_2_n_0\,
      O => \StrbMask_q3_n[6]_i_1_n_0\
    );
\StrbMask_q3_n[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => StrbMask_q2(3),
      I1 => mask_shift_stage_2_q1(1),
      I2 => StrbMask_q2(1),
      I3 => mask_shift_stage_2_q1(2),
      I4 => StrbMask_q2(5),
      O => \StrbMask_q3_n[6]_i_2_n_0\
    );
\StrbMask_q3_n[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \StrbMask_q3_n[7]_i_2_n_0\,
      I1 => mask_shift_stage_2_q1(0),
      I2 => \StrbMask_q3_n[7]_i_3_n_0\,
      O => \StrbMask_q3_n[7]_i_1_n_0\
    );
\StrbMask_q3_n[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => StrbMask_q2(1),
      I1 => StrbMask_q2(5),
      I2 => mask_shift_stage_2_q1(1),
      I3 => StrbMask_q2(3),
      I4 => mask_shift_stage_2_q1(2),
      I5 => StrbMask_q2(7),
      O => \StrbMask_q3_n[7]_i_2_n_0\
    );
\StrbMask_q3_n[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => StrbMask_q2(0),
      I1 => StrbMask_q2(4),
      I2 => mask_shift_stage_2_q1(1),
      I3 => StrbMask_q2(2),
      I4 => mask_shift_stage_2_q1(2),
      I5 => StrbMask_q2(6),
      O => \StrbMask_q3_n[7]_i_3_n_0\
    );
\StrbMask_q3_n_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[0]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[0]\,
      R => '0'
    );
\StrbMask_q3_n_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[1]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[1]\,
      R => '0'
    );
\StrbMask_q3_n_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[2]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[2]\,
      R => '0'
    );
\StrbMask_q3_n_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[3]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[3]\,
      R => '0'
    );
\StrbMask_q3_n_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[4]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[4]\,
      R => '0'
    );
\StrbMask_q3_n_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[5]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[5]\,
      R => '0'
    );
\StrbMask_q3_n_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[6]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[6]\,
      R => '0'
    );
\StrbMask_q3_n_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \StrbMask_q3_n[7]_i_1_n_0\,
      Q => \StrbMask_q3_n_reg_n_0_[7]\,
      R => '0'
    );
\Strb_q2_reg[0]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_21,
      Q => \Strb_q2_reg[0]_srl2_n_0\
    );
\Strb_q2_reg[1]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_20,
      Q => \Strb_q2_reg[1]_srl2_n_0\
    );
\Strb_q2_reg[2]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_19,
      Q => \Strb_q2_reg[2]_srl2_n_0\
    );
\Strb_q2_reg[3]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_18,
      Q => \Strb_q2_reg[3]_srl2_n_0\
    );
\Strb_q2_reg[4]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_17,
      Q => \Strb_q2_reg[4]_srl2_n_0\
    );
\Strb_q2_reg[5]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_16,
      Q => \Strb_q2_reg[5]_srl2_n_0\
    );
\Strb_q2_reg[6]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_15,
      Q => \Strb_q2_reg[6]_srl2_n_0\
    );
\Strb_q2_reg[7]_srl2\: unisim.vcomponents.SRL16E
     port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => WCHECK_n_14,
      Q => \Strb_q2_reg[7]_srl2_n_0\
    );
\Strb_q3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[0]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[0]\,
      R => '0'
    );
\Strb_q3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[1]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[1]\,
      R => '0'
    );
\Strb_q3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[2]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[2]\,
      R => '0'
    );
\Strb_q3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[3]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[3]\,
      R => '0'
    );
\Strb_q3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[4]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[4]\,
      R => '0'
    );
\Strb_q3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[5]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[5]\,
      R => '0'
    );
\Strb_q3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[6]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[6]\,
      R => '0'
    );
\Strb_q3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \Strb_q2_reg[7]_srl2_n_0\,
      Q => \Strb_q3_reg_n_0_[7]\,
      R => '0'
    );
WCHECK: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo__parameterized1\
     port map (
      D(0) => WCHECK_n_4,
      Q(7 downto 0) => WSTRBq(7 downto 0),
      \WCountIn_reg[8]\(8 downto 0) => \WCountIn_reg__0\(8 downto 0),
      WDataNumError1_reg => WCHECK_n_0,
      aclk => aclk,
      cnt(1 downto 0) => cnt_0(1 downto 0),
      cnt_0(1 downto 0) => cnt(1 downto 0),
      \cnt_reg[1]_0\ => WCHECK_n_3,
      data_out(16 downto 8) => WCheckCountOut(8 downto 0),
      data_out(7) => WCHECK_n_14,
      data_out(6) => WCHECK_n_15,
      data_out(5) => WCHECK_n_16,
      data_out(4) => WCHECK_n_17,
      data_out(3) => WCHECK_n_18,
      data_out(2) => WCHECK_n_19,
      data_out(1) => WCHECK_n_20,
      data_out(0) => WCHECK_n_21,
      first_strb => first_strb,
      p_1_in => WDataNumError1_reg_i_2_n_1,
      \pc_status_i_reg[81]\(0) => \^pc_status[81]\(60),
      resetn_q => resetn_q,
      resetn_q_reg => i_Axi4PC_asr_inline_n_0,
      wlast_q => wlast_q,
      wready_q => wready_q,
      \wstrb_q_reg[7]\(7 downto 0) => \wstrb_q_reg[7]\(7 downto 0),
      wvalid_q => wvalid_q
    );
\WCountIn[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \WCountIn_reg__0\(0),
      O => p_0_in(0)
    );
\WCountIn[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WCountIn_reg__0\(0),
      I1 => \WCountIn_reg__0\(1),
      O => p_0_in(1)
    );
\WCountIn[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \WCountIn_reg__0\(2),
      I1 => \WCountIn_reg__0\(0),
      I2 => \WCountIn_reg__0\(1),
      O => p_0_in(2)
    );
\WCountIn[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \WCountIn_reg__0\(3),
      I1 => \WCountIn_reg__0\(1),
      I2 => \WCountIn_reg__0\(0),
      I3 => \WCountIn_reg__0\(2),
      O => p_0_in(3)
    );
\WCountIn[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \WCountIn_reg__0\(4),
      I1 => \WCountIn_reg__0\(2),
      I2 => \WCountIn_reg__0\(0),
      I3 => \WCountIn_reg__0\(1),
      I4 => \WCountIn_reg__0\(3),
      O => p_0_in(4)
    );
\WCountIn[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \WCountIn_reg__0\(3),
      I1 => \WCountIn_reg__0\(1),
      I2 => \WCountIn_reg__0\(0),
      I3 => \WCountIn_reg__0\(2),
      I4 => \WCountIn_reg__0\(4),
      I5 => \WCountIn_reg__0\(5),
      O => p_0_in(5)
    );
\WCountIn[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \WCountIn_reg__0\(6),
      I1 => \WCountIn[8]_i_3_n_0\,
      O => p_0_in(6)
    );
\WCountIn[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \WCountIn_reg__0\(7),
      I1 => \WCountIn[8]_i_3_n_0\,
      I2 => \WCountIn_reg__0\(6),
      O => p_0_in(7)
    );
\WCountIn[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => wlast_q,
      I1 => wready_q,
      I2 => wvalid_q,
      O => sel
    );
\WCountIn[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \WCountIn_reg__0\(8),
      I1 => \WCountIn_reg__0\(6),
      I2 => \WCountIn[8]_i_3_n_0\,
      I3 => \WCountIn_reg__0\(7),
      O => p_0_in(8)
    );
\WCountIn[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \WCountIn_reg__0\(5),
      I1 => \WCountIn_reg__0\(4),
      I2 => \WCountIn_reg__0\(2),
      I3 => \WCountIn_reg__0\(0),
      I4 => \WCountIn_reg__0\(1),
      I5 => \WCountIn_reg__0\(3),
      O => \WCountIn[8]_i_3_n_0\
    );
\WCountIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(0),
      Q => \WCountIn_reg__0\(0),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(1),
      Q => \WCountIn_reg__0\(1),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(2),
      Q => \WCountIn_reg__0\(2),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(3),
      Q => \WCountIn_reg__0\(3),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(4),
      Q => \WCountIn_reg__0\(4),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(5),
      Q => \WCountIn_reg__0\(5),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(6),
      Q => \WCountIn_reg__0\(6),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(7),
      Q => \WCountIn_reg__0\(7),
      R => first_strb_i_1_n_0
    );
\WCountIn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => sel,
      D => p_0_in(8),
      Q => \WCountIn_reg__0\(8),
      R => first_strb_i_1_n_0
    );
WDataNumError1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09000009"
    )
        port map (
      I0 => WCheckCountOut(6),
      I1 => p_0_in_0(6),
      I2 => WCheckCountOut(8),
      I3 => p_0_in_0(7),
      I4 => WCheckCountOut(7),
      O => WDataNumError1_i_3_n_0
    );
WDataNumError1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => WCheckCountOut(3),
      I1 => p_0_in_0(3),
      I2 => p_0_in_0(5),
      I3 => WCheckCountOut(5),
      I4 => p_0_in_0(4),
      I5 => WCheckCountOut(4),
      O => WDataNumError1_i_4_n_0
    );
WDataNumError1_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => WCheckCountOut(0),
      I1 => p_0_in_0(0),
      I2 => p_0_in_0(2),
      I3 => WCheckCountOut(2),
      I4 => p_0_in_0(1),
      I5 => WCheckCountOut(1),
      O => WDataNumError1_i_5_n_0
    );
WDataNumError1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WCHECK_n_0,
      Q => WDataNumError1,
      R => '0'
    );
WDataNumError1_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_WDataNumError1_reg_i_2_CO_UNCONNECTED(3),
      CO(2) => WDataNumError1_reg_i_2_n_1,
      CO(1) => WDataNumError1_reg_i_2_n_2,
      CO(0) => WDataNumError1_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => NLW_WDataNumError1_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => WDataNumError1_i_3_n_0,
      S(1) => WDataNumError1_i_4_n_0,
      S(0) => WDataNumError1_i_5_n_0
    );
\WSTRBq_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(0),
      Q => WSTRBq(0),
      R => first_strb_i_1_n_0
    );
\WSTRBq_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(1),
      Q => WSTRBq(1),
      R => first_strb_i_1_n_0
    );
\WSTRBq_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(2),
      Q => WSTRBq(2),
      R => first_strb_i_1_n_0
    );
\WSTRBq_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(3),
      Q => WSTRBq(3),
      R => first_strb_i_1_n_0
    );
\WSTRBq_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(4),
      Q => WSTRBq(4),
      R => first_strb_i_1_n_0
    );
\WSTRBq_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(5),
      Q => WSTRBq(5),
      R => first_strb_i_1_n_0
    );
\WSTRBq_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(6),
      Q => WSTRBq(6),
      R => first_strb_i_1_n_0
    );
\WSTRBq_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => \wstrb_q_reg[7]\(7),
      Q => WSTRBq(7),
      R => first_strb_i_1_n_0
    );
first_strb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => wvalid_q,
      I1 => wready_q,
      I2 => wlast_q,
      I3 => resetn_q,
      O => first_strb_i_1_n_0
    );
first_strb_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => first_strb,
      I1 => wready_q,
      I2 => wvalid_q,
      O => WSTRBq0
    );
first_strb_reg: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => WSTRBq0,
      D => '0',
      Q => first_strb,
      S => first_strb_i_1_n_0
    );
\gen_thread_loop[0].RCount[0][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      O => \gen_thread_loop[0].RCount[0][0]_i_1_n_0\
    );
\gen_thread_loop[0].RCount[0][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(1),
      I1 => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      O => \p_0_in__0\(1)
    );
\gen_thread_loop[0].RCount[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(2),
      I1 => \gen_thread_loop[0].RCount_reg[0]_1\(1),
      I2 => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      O => \p_0_in__0\(2)
    );
\gen_thread_loop[0].RCount[0][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(3),
      I1 => \gen_thread_loop[0].RCount_reg[0]_1\(2),
      I2 => \gen_thread_loop[0].RCount_reg[0]_1\(1),
      I3 => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      O => \gen_thread_loop[0].RCount[0][3]_i_1_n_0\
    );
\gen_thread_loop[0].RCount[0][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(4),
      I1 => \gen_thread_loop[0].RCount_reg[0]_1\(2),
      I2 => \gen_thread_loop[0].RCount_reg[0]_1\(1),
      I3 => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      I4 => \gen_thread_loop[0].RCount_reg[0]_1\(3),
      O => \p_0_in__0\(4)
    );
\gen_thread_loop[0].RCount[0][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(3),
      I1 => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      I2 => \gen_thread_loop[0].RCount_reg[0]_1\(1),
      I3 => \gen_thread_loop[0].RCount_reg[0]_1\(2),
      I4 => \gen_thread_loop[0].RCount_reg[0]_1\(4),
      I5 => \gen_thread_loop[0].RCount_reg[0]_1\(5),
      O => \p_0_in__0\(5)
    );
\gen_thread_loop[0].RCount[0][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(6),
      I1 => \gen_thread_loop[0].RCount[0][8]_i_4_n_0\,
      O => \p_0_in__0\(6)
    );
\gen_thread_loop[0].RCount[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(7),
      I1 => \gen_thread_loop[0].RCount[0][8]_i_4_n_0\,
      I2 => \gen_thread_loop[0].RCount_reg[0]_1\(6),
      O => \p_0_in__0\(7)
    );
\gen_thread_loop[0].RCount[0][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => i_Axi4PC_asr_inline_n_4,
      I1 => rvalid_q,
      I2 => rready_q,
      I3 => rlast_q,
      O => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\
    );
\gen_thread_loop[0].RCount[0][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(8),
      I1 => \gen_thread_loop[0].RCount_reg[0]_1\(7),
      I2 => \gen_thread_loop[0].RCount_reg[0]_1\(6),
      I3 => \gen_thread_loop[0].RCount[0][8]_i_4_n_0\,
      O => \p_0_in__0\(8)
    );
\gen_thread_loop[0].RCount[0][8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \gen_thread_loop[0].RCount_reg[0]_1\(5),
      I1 => \gen_thread_loop[0].RCount_reg[0]_1\(4),
      I2 => \gen_thread_loop[0].RCount_reg[0]_1\(2),
      I3 => \gen_thread_loop[0].RCount_reg[0]_1\(1),
      I4 => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      I5 => \gen_thread_loop[0].RCount_reg[0]_1\(3),
      O => \gen_thread_loop[0].RCount[0][8]_i_4_n_0\
    );
\gen_thread_loop[0].RCount_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \gen_thread_loop[0].RCount[0][0]_i_1_n_0\,
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(0),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(1),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(2),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \gen_thread_loop[0].RCount[0][3]_i_1_n_0\,
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(3),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \p_0_in__0\(4),
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(4),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \p_0_in__0\(5),
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(5),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \p_0_in__0\(6),
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(6),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \p_0_in__0\(7),
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(7),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RCount_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[0].RCount[0][8]_i_2_n_0\,
      D => \p_0_in__0\(8),
      Q => \gen_thread_loop[0].RCount_reg[0]_1\(8),
      R => \gen_thread_loop[0].RDCAM_n_4\
    );
\gen_thread_loop[0].RDCAM\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo
     port map (
      ASR_59_reg => \gen_thread_loop[0].RDCAM_n_8\,
      ASR_59_reg_0(0) => ASR_59436_in,
      ASR_610 => ASR_610,
      CO(0) => ASR_59437_in,
      D(1) => \gen_thread_loop[0].RDCAM_n_1\,
      D(0) => \gen_thread_loop[0].RDCAM_n_2\,
      Q(8 downto 0) => \gen_thread_loop[0].RCount_reg[0]_1\(8 downto 0),
      S(0) => \gen_thread_loop[1].RDCAM_n_8\,
      SR(0) => \gen_thread_loop[0].RDCAM_n_4\,
      aclk => aclk,
      active_cnt(3 downto 2) => active_cnt(9 downto 8),
      active_cnt(1 downto 0) => active_cnt(1 downto 0),
      \arid_q_reg[1]\(1 downto 0) => \arid_q_reg[1]\(1 downto 0),
      arready_q => arready_q,
      arvalid_q => arvalid_q,
      cmd_pop_0 => cmd_pop_0,
      cmd_pop_1 => cmd_pop_1,
      \cnt_reg[0]_0\ => \gen_thread_loop[1].RDCAM_n_5\,
      \cnt_reg[0]_1\ => \gen_thread_loop[1].RDCAM_n_4\,
      \cnt_reg[1]_0\ => \gen_thread_loop[0].RDCAM_n_0\,
      \cnt_reg[1]_1\ => \gen_thread_loop[0].RDCAM_n_6\,
      \cnt_reg[1]_2\ => \gen_thread_loop[0].RDCAM_n_7\,
      data_in(8 downto 1) => \arlen_q_reg[7]\(7 downto 0),
      data_in(0) => \araddr_q_reg[31]\(6),
      data_out(2) => \gen_thread_loop[1].RDCAM_n_9\,
      data_out(1) => \gen_thread_loop[1].RDCAM_n_10\,
      data_out(0) => \gen_thread_loop[1].RDCAM_n_11\,
      \gen_thread_loop[0].active_id_reg\(1 downto 0) => \gen_thread_loop[0].active_id_reg__0\(1 downto 0),
      \gen_thread_loop[0].active_id_reg_1__s_port_]\ => i_Axi4PC_asr_inline_n_4,
      \gen_thread_loop[1].RCount_reg[1][2]\ => \gen_thread_loop[1].RDCAM_n_7\,
      \gen_thread_loop[1].RCount_reg[1][3]\(1) => \gen_thread_loop[1].RCount_reg[1]_2\(3),
      \gen_thread_loop[1].RCount_reg[1][3]\(0) => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      \gen_thread_loop[1].RCount_reg[1][5]\ => \gen_thread_loop[1].RDCAM_n_6\,
      \gen_thread_loop[1].RCount_reg[1][6]\(0) => \gen_thread_loop[1].RDCAM_n_3\,
      \gen_thread_loop[1].active_id_reg\(1 downto 0) => \gen_thread_loop[1].active_id_reg__0\(1 downto 0),
      \gen_thread_loop[1].active_id_reg[3]\ => i_Axi4PC_asr_inline_n_3,
      p_11_in => p_11_in,
      \pc_status_i_reg[79]\(1 downto 0) => \^pc_status[81]\(58 downto 57),
      resetn_q => resetn_q,
      resetn_q_reg => i_Axi4PC_asr_inline_n_0,
      resetn_q_reg_0 => i_Axi4PC_asr_inline_n_5,
      rlast_q => rlast_q,
      rready_q => rready_q,
      rvalid_q => rvalid_q
    );
\gen_thread_loop[0].active_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800080007FFF"
    )
        port map (
      I0 => i_Axi4PC_asr_inline_n_4,
      I1 => rlast_q,
      I2 => rvalid_q,
      I3 => rready_q,
      I4 => \gen_thread_loop[0].RDCAM_n_0\,
      I5 => active_cnt(0),
      O => \gen_thread_loop[0].active_cnt[0]_i_1_n_0\
    );
\gen_thread_loop[0].active_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD42"
    )
        port map (
      I0 => active_cnt(0),
      I1 => \gen_thread_loop[0].RDCAM_n_0\,
      I2 => cmd_pop_0,
      I3 => active_cnt(1),
      O => \gen_thread_loop[0].active_cnt[1]_i_1_n_0\
    );
\gen_thread_loop[0].active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[0].active_cnt[0]_i_1_n_0\,
      Q => active_cnt(0),
      R => i_Axi4PC_asr_inline_n_0
    );
\gen_thread_loop[0].active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[0].active_cnt[1]_i_1_n_0\,
      Q => active_cnt(1),
      R => i_Axi4PC_asr_inline_n_0
    );
\gen_thread_loop[0].active_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \arid_q_reg[1]\(0),
      I1 => \gen_thread_loop[0].RDCAM_n_0\,
      I2 => \gen_thread_loop[0].active_id_reg__0\(0),
      O => \gen_thread_loop[0].active_id[0]_i_1_n_0\
    );
\gen_thread_loop[0].active_id[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \arid_q_reg[1]\(1),
      I1 => \gen_thread_loop[0].RDCAM_n_0\,
      I2 => \gen_thread_loop[0].active_id_reg__0\(1),
      O => \gen_thread_loop[0].active_id[1]_i_1_n_0\
    );
\gen_thread_loop[0].active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[0].active_id[0]_i_1_n_0\,
      Q => \gen_thread_loop[0].active_id_reg__0\(0),
      R => i_Axi4PC_asr_inline_n_0
    );
\gen_thread_loop[0].active_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[0].active_id[1]_i_1_n_0\,
      Q => \gen_thread_loop[0].active_id_reg__0\(1),
      R => i_Axi4PC_asr_inline_n_0
    );
\gen_thread_loop[1].RCount[1][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      O => \p_0_in__1\(0)
    );
\gen_thread_loop[1].RCount[1][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      I1 => \gen_thread_loop[1].RCount_reg[1]_2\(1),
      O => \p_0_in__1\(1)
    );
\gen_thread_loop[1].RCount[1][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(2),
      I1 => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      I2 => \gen_thread_loop[1].RCount_reg[1]_2\(1),
      O => \p_0_in__1\(2)
    );
\gen_thread_loop[1].RCount[1][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(3),
      I1 => \gen_thread_loop[1].RCount_reg[1]_2\(2),
      I2 => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      I3 => \gen_thread_loop[1].RCount_reg[1]_2\(1),
      O => \gen_thread_loop[1].RCount[1][3]_i_1_n_0\
    );
\gen_thread_loop[1].RCount[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(4),
      I1 => \gen_thread_loop[1].RCount_reg[1]_2\(2),
      I2 => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      I3 => \gen_thread_loop[1].RCount_reg[1]_2\(1),
      I4 => \gen_thread_loop[1].RCount_reg[1]_2\(3),
      O => \p_0_in__1\(4)
    );
\gen_thread_loop[1].RCount[1][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(5),
      I1 => \gen_thread_loop[1].RCount_reg[1]_2\(3),
      I2 => \gen_thread_loop[1].RCount_reg[1]_2\(1),
      I3 => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      I4 => \gen_thread_loop[1].RCount_reg[1]_2\(2),
      I5 => \gen_thread_loop[1].RCount_reg[1]_2\(4),
      O => \p_0_in__1\(5)
    );
\gen_thread_loop[1].RCount[1][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(6),
      I1 => \gen_thread_loop[1].RCount[1][8]_i_4_n_0\,
      O => \gen_thread_loop[1].RCount[1][6]_i_1_n_0\
    );
\gen_thread_loop[1].RCount[1][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(7),
      I1 => \gen_thread_loop[1].RCount[1][8]_i_4_n_0\,
      I2 => \gen_thread_loop[1].RCount_reg[1]_2\(6),
      O => \p_0_in__1\(7)
    );
\gen_thread_loop[1].RCount[1][8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => i_Axi4PC_asr_inline_n_3,
      I1 => rvalid_q,
      I2 => rready_q,
      I3 => rlast_q,
      O => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\
    );
\gen_thread_loop[1].RCount[1][8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(8),
      I1 => \gen_thread_loop[1].RCount_reg[1]_2\(6),
      I2 => \gen_thread_loop[1].RCount[1][8]_i_4_n_0\,
      I3 => \gen_thread_loop[1].RCount_reg[1]_2\(7),
      O => \p_0_in__1\(8)
    );
\gen_thread_loop[1].RCount[1][8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \gen_thread_loop[1].RCount_reg[1]_2\(4),
      I1 => \gen_thread_loop[1].RCount_reg[1]_2\(2),
      I2 => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      I3 => \gen_thread_loop[1].RCount_reg[1]_2\(1),
      I4 => \gen_thread_loop[1].RCount_reg[1]_2\(3),
      I5 => \gen_thread_loop[1].RCount_reg[1]_2\(5),
      O => \gen_thread_loop[1].RCount[1][8]_i_4_n_0\
    );
\gen_thread_loop[1].RCount_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(0),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \p_0_in__1\(1),
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(1),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(2),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \gen_thread_loop[1].RCount[1][3]_i_1_n_0\,
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(3),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \p_0_in__1\(4),
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(4),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \p_0_in__1\(5),
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(5),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \gen_thread_loop[1].RCount[1][6]_i_1_n_0\,
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(6),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \p_0_in__1\(7),
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(7),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RCount_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_thread_loop[1].RCount[1][8]_i_2_n_0\,
      D => \p_0_in__1\(8),
      Q => \gen_thread_loop[1].RCount_reg[1]_2\(8),
      R => \gen_thread_loop[1].RDCAM_n_1\
    );
\gen_thread_loop[1].RDCAM\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_syn_fifo_0
     port map (
      ASR_59_reg(0) => \gen_thread_loop[1].RDCAM_n_3\,
      ASR_59_reg_0 => \gen_thread_loop[1].RDCAM_n_6\,
      ASR_59_reg_1 => \gen_thread_loop[1].RDCAM_n_7\,
      Q(6 downto 2) => \gen_thread_loop[1].RCount_reg[1]_2\(8 downto 4),
      Q(1 downto 0) => \gen_thread_loop[1].RCount_reg[1]_2\(2 downto 1),
      S(0) => \gen_thread_loop[1].RDCAM_n_8\,
      SR(0) => \gen_thread_loop[1].RDCAM_n_1\,
      aclk => aclk,
      active_cnt(3 downto 2) => active_cnt(9 downto 8),
      active_cnt(1 downto 0) => active_cnt(1 downto 0),
      arready_q => arready_q,
      arvalid_q => arvalid_q,
      cmd_pop_1 => cmd_pop_1,
      data_in(8 downto 1) => \arlen_q_reg[7]\(7 downto 0),
      data_in(0) => \araddr_q_reg[31]\(6),
      data_out(2) => \gen_thread_loop[1].RDCAM_n_9\,
      data_out(1) => \gen_thread_loop[1].RDCAM_n_10\,
      data_out(0) => \gen_thread_loop[1].RDCAM_n_11\,
      \gen_thread_loop[0].RCount_reg[0][6]\ => \gen_thread_loop[0].RDCAM_n_8\,
      \gen_thread_loop[0].active_id_reg[1]\ => i_Axi4PC_asr_inline_n_4,
      \gen_thread_loop[0].active_id_reg[1]_0\ => \gen_thread_loop[0].RDCAM_n_6\,
      \gen_thread_loop[1].active_id_reg[3]\ => i_Axi4PC_asr_inline_n_3,
      \gen_thread_loop[1].active_id_reg[3]_0\ => \gen_thread_loop[0].RDCAM_n_7\,
      p_11_in => p_11_in,
      \pc_status_i_reg[78]\ => \gen_thread_loop[1].RDCAM_n_4\,
      \pc_status_i_reg[79]\ => \gen_thread_loop[1].RDCAM_n_5\,
      resetn_q => resetn_q,
      resetn_q_reg => i_Axi4PC_asr_inline_n_0,
      rlast_q => rlast_q,
      rready_q => rready_q,
      rvalid_q => rvalid_q
    );
\gen_thread_loop[1].active_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80007FFF7FFF8000"
    )
        port map (
      I0 => i_Axi4PC_asr_inline_n_3,
      I1 => rlast_q,
      I2 => rvalid_q,
      I3 => rready_q,
      I4 => p_11_in,
      I5 => active_cnt(8),
      O => \gen_thread_loop[1].active_cnt[8]_i_1_n_0\
    );
\gen_thread_loop[1].active_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => active_cnt(8),
      I1 => p_11_in,
      I2 => cmd_pop_1,
      I3 => active_cnt(9),
      O => \gen_thread_loop[1].active_cnt[9]_i_1_n_0\
    );
\gen_thread_loop[1].active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[1].active_cnt[8]_i_1_n_0\,
      Q => active_cnt(8),
      R => i_Axi4PC_asr_inline_n_0
    );
\gen_thread_loop[1].active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[1].active_cnt[9]_i_1_n_0\,
      Q => active_cnt(9),
      R => i_Axi4PC_asr_inline_n_0
    );
\gen_thread_loop[1].active_id[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \arid_q_reg[1]\(0),
      I1 => p_11_in,
      I2 => \gen_thread_loop[1].active_id_reg__0\(0),
      O => \gen_thread_loop[1].active_id[2]_i_1_n_0\
    );
\gen_thread_loop[1].active_id[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \arid_q_reg[1]\(1),
      I1 => p_11_in,
      I2 => \gen_thread_loop[1].active_id_reg__0\(1),
      O => \gen_thread_loop[1].active_id[3]_i_1_n_0\
    );
\gen_thread_loop[1].active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[1].active_id[2]_i_1_n_0\,
      Q => \gen_thread_loop[1].active_id_reg__0\(0),
      R => i_Axi4PC_asr_inline_n_0
    );
\gen_thread_loop[1].active_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[1].active_id[3]_i_1_n_0\,
      Q => \gen_thread_loop[1].active_id_reg__0\(1),
      R => i_Axi4PC_asr_inline_n_0
    );
i_Axi4PC_asr_inline: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_axi4pc_asr_inline
     port map (
      ASR_60_reg_0 => i_Axi4PC_asr_inline_n_3,
      ASR_60_reg_1 => i_Axi4PC_asr_inline_n_4,
      ASR_610 => ASR_610,
      ASR_61_reg_0 => i_Axi4PC_asr_inline_n_5,
      \ArAddrIncr_q1_reg[3]_0\ => i_Axi4PC_asr_inline_n_2,
      \ArAddrIncr_q1_reg[3]_1\ => i_Axi4PC_asr_inline_n_71,
      \ArAddrIncr_q1_reg[3]_2\ => i_Axi4PC_asr_inline_n_72,
      \ArAddrIncr_q1_reg[3]_3\ => i_Axi4PC_asr_inline_n_73,
      \ArAddrIncr_q1_reg[3]_4\ => i_Axi4PC_asr_inline_n_74,
      \ArAddrIncr_q1_reg[3]_5\ => i_Axi4PC_asr_inline_n_75,
      \ArAddrIncr_q1_reg[3]_6\ => i_Axi4PC_asr_inline_n_76,
      \ArAddrIncr_q1_reg[3]_7\ => i_Axi4PC_asr_inline_n_77,
      \ArAddrIncr_q1_reg[3]_8\ => i_Axi4PC_asr_inline_n_78,
      \AwAddrIncr_q1_reg[3]_0\ => i_Axi4PC_asr_inline_n_1,
      \AwAddrIncr_q1_reg[3]_1\ => i_Axi4PC_asr_inline_n_63,
      \AwAddrIncr_q1_reg[3]_2\ => i_Axi4PC_asr_inline_n_64,
      \AwAddrIncr_q1_reg[3]_3\ => i_Axi4PC_asr_inline_n_65,
      \AwAddrIncr_q1_reg[3]_4\ => i_Axi4PC_asr_inline_n_66,
      \AwAddrIncr_q1_reg[3]_5\ => i_Axi4PC_asr_inline_n_67,
      \AwAddrIncr_q1_reg[3]_6\ => i_Axi4PC_asr_inline_n_68,
      \AwAddrIncr_q1_reg[3]_7\ => i_Axi4PC_asr_inline_n_69,
      \AwAddrIncr_q1_reg[3]_8\ => i_Axi4PC_asr_inline_n_70,
      BStrbError => BStrbError,
      BrespErrorLead_reg => BrespErrorLead_reg_n_0,
      CO(0) => ASR_59437_in,
      D(56) => i_Axi4PC_asr_inline_n_6,
      D(55) => i_Axi4PC_asr_inline_n_7,
      D(54) => i_Axi4PC_asr_inline_n_8,
      D(53) => i_Axi4PC_asr_inline_n_9,
      D(52) => i_Axi4PC_asr_inline_n_10,
      D(51) => i_Axi4PC_asr_inline_n_11,
      D(50) => i_Axi4PC_asr_inline_n_12,
      D(49) => i_Axi4PC_asr_inline_n_13,
      D(48) => i_Axi4PC_asr_inline_n_14,
      D(47) => i_Axi4PC_asr_inline_n_15,
      D(46) => i_Axi4PC_asr_inline_n_16,
      D(45) => i_Axi4PC_asr_inline_n_17,
      D(44) => i_Axi4PC_asr_inline_n_18,
      D(43) => i_Axi4PC_asr_inline_n_19,
      D(42) => i_Axi4PC_asr_inline_n_20,
      D(41) => i_Axi4PC_asr_inline_n_21,
      D(40) => i_Axi4PC_asr_inline_n_22,
      D(39) => i_Axi4PC_asr_inline_n_23,
      D(38) => i_Axi4PC_asr_inline_n_24,
      D(37) => i_Axi4PC_asr_inline_n_25,
      D(36) => i_Axi4PC_asr_inline_n_26,
      D(35) => i_Axi4PC_asr_inline_n_27,
      D(34) => i_Axi4PC_asr_inline_n_28,
      D(33) => i_Axi4PC_asr_inline_n_29,
      D(32) => i_Axi4PC_asr_inline_n_30,
      D(31) => i_Axi4PC_asr_inline_n_31,
      D(30) => i_Axi4PC_asr_inline_n_32,
      D(29) => i_Axi4PC_asr_inline_n_33,
      D(28) => i_Axi4PC_asr_inline_n_34,
      D(27) => i_Axi4PC_asr_inline_n_35,
      D(26) => i_Axi4PC_asr_inline_n_36,
      D(25) => i_Axi4PC_asr_inline_n_37,
      D(24) => i_Axi4PC_asr_inline_n_38,
      D(23) => i_Axi4PC_asr_inline_n_39,
      D(22) => i_Axi4PC_asr_inline_n_40,
      D(21) => i_Axi4PC_asr_inline_n_41,
      D(20) => i_Axi4PC_asr_inline_n_42,
      D(19) => i_Axi4PC_asr_inline_n_43,
      D(18) => i_Axi4PC_asr_inline_n_44,
      D(17) => i_Axi4PC_asr_inline_n_45,
      D(16) => i_Axi4PC_asr_inline_n_46,
      D(15) => i_Axi4PC_asr_inline_n_47,
      D(14) => i_Axi4PC_asr_inline_n_48,
      D(13) => i_Axi4PC_asr_inline_n_49,
      D(12) => i_Axi4PC_asr_inline_n_50,
      D(11) => i_Axi4PC_asr_inline_n_51,
      D(10) => i_Axi4PC_asr_inline_n_52,
      D(9) => i_Axi4PC_asr_inline_n_53,
      D(8) => i_Axi4PC_asr_inline_n_54,
      D(7) => i_Axi4PC_asr_inline_n_55,
      D(6) => i_Axi4PC_asr_inline_n_56,
      D(5) => i_Axi4PC_asr_inline_n_57,
      D(4) => i_Axi4PC_asr_inline_n_58,
      D(3) => i_Axi4PC_asr_inline_n_59,
      D(2) => i_Axi4PC_asr_inline_n_60,
      D(1) => i_Axi4PC_asr_inline_n_61,
      D(0) => i_Axi4PC_asr_inline_n_62,
      Q(31 downto 0) => Q(31 downto 0),
      S(3) => \AwAddrIncr_q1[3]_i_23_n_0\,
      S(2) => \AwAddrIncr_q1[3]_i_24_n_0\,
      S(1) => \AwAddrIncr_q1[3]_i_25_n_0\,
      S(0) => \AwAddrIncr_q1[3]_i_26_n_0\,
      WDataNumError1 => WDataNumError1,
      aclk => aclk,
      active_cnt(3 downto 2) => active_cnt(9 downto 8),
      active_cnt(1 downto 0) => active_cnt(1 downto 0),
      \araddr_q_reg[11]\(3) => \ArAddrIncr_q1[3]_i_8_n_0\,
      \araddr_q_reg[11]\(2) => \ArAddrIncr_q1[3]_i_9_n_0\,
      \araddr_q_reg[11]\(1) => \ArAddrIncr_q1[3]_i_10_n_0\,
      \araddr_q_reg[11]\(0) => \ArAddrIncr_q1[3]_i_11_n_0\,
      \araddr_q_reg[14]\(2) => \ArAddrIncr_q1[3]_i_4_n_0\,
      \araddr_q_reg[14]\(1) => \ArAddrIncr_q1[3]_i_5_n_0\,
      \araddr_q_reg[14]\(0) => \ArAddrIncr_q1[3]_i_6_n_0\,
      \araddr_q_reg[31]\(31 downto 0) => \araddr_q_reg[31]\(31 downto 0),
      \araddr_q_reg[3]\(3) => \ArAddrIncr_q1[3]_i_23_n_0\,
      \araddr_q_reg[3]\(2) => \ArAddrIncr_q1[3]_i_24_n_0\,
      \araddr_q_reg[3]\(1) => \ArAddrIncr_q1[3]_i_25_n_0\,
      \araddr_q_reg[3]\(0) => \ArAddrIncr_q1[3]_i_26_n_0\,
      \araddr_q_reg[7]\(3) => \ArAddrIncr_q1[3]_i_14_n_0\,
      \araddr_q_reg[7]\(2) => \ArAddrIncr_q1[3]_i_15_n_0\,
      \araddr_q_reg[7]\(1) => \ArAddrIncr_q1[3]_i_16_n_0\,
      \araddr_q_reg[7]\(0) => \ArAddrIncr_q1[3]_i_17_n_0\,
      \arburst_q_reg[1]\(1 downto 0) => \arburst_q_reg[1]\(1 downto 0),
      \arcache_q_reg[3]\(3 downto 0) => \arcache_q_reg[3]\(3 downto 0),
      \arid_q_reg[1]\(1 downto 0) => \arid_q_reg[1]\(1 downto 0),
      \arlen_q_reg[7]\(7 downto 0) => \arlen_q_reg[7]\(7 downto 0),
      \arprot_q_reg[2]\(2 downto 0) => \arprot_q_reg[2]\(2 downto 0),
      \arqos_q_reg[3]\(3 downto 0) => \arqos_q_reg[3]\(3 downto 0),
      arready_q => arready_q,
      \arregion_q_reg[3]\(3 downto 0) => \arregion_q_reg[3]\(3 downto 0),
      \arsize_q_reg[2]\(2 downto 0) => \arsize_q_reg[2]\(2 downto 0),
      aruser_q => aruser_q,
      arvalid_q => arvalid_q,
      \awaddr_q_reg[11]\(3) => \AwAddrIncr_q1[3]_i_8_n_0\,
      \awaddr_q_reg[11]\(2) => \AwAddrIncr_q1[3]_i_9_n_0\,
      \awaddr_q_reg[11]\(1) => \AwAddrIncr_q1[3]_i_10_n_0\,
      \awaddr_q_reg[11]\(0) => \AwAddrIncr_q1[3]_i_11_n_0\,
      \awaddr_q_reg[14]\(2) => \AwAddrIncr_q1[3]_i_4_n_0\,
      \awaddr_q_reg[14]\(1) => \AwAddrIncr_q1[3]_i_5_n_0\,
      \awaddr_q_reg[14]\(0) => \AwAddrIncr_q1[3]_i_6_n_0\,
      \awaddr_q_reg[7]\(3) => \AwAddrIncr_q1[3]_i_14_n_0\,
      \awaddr_q_reg[7]\(2) => \AwAddrIncr_q1[3]_i_15_n_0\,
      \awaddr_q_reg[7]\(1) => \AwAddrIncr_q1[3]_i_16_n_0\,
      \awaddr_q_reg[7]\(0) => \AwAddrIncr_q1[3]_i_17_n_0\,
      \awburst_q_reg[1]\(1 downto 0) => \awburst_q_reg[1]\(1 downto 0),
      \awcache_q_reg[3]\(3 downto 0) => \awcache_q_reg[3]\(3 downto 0),
      \awprot_q_reg[2]\(2 downto 0) => \awprot_q_reg[2]\(2 downto 0),
      \awqos_q_reg[3]\(3 downto 0) => \awqos_q_reg[3]\(3 downto 0),
      awready_q => awready_q,
      \awregion_q_reg[3]\(3 downto 0) => \awregion_q_reg[3]\(3 downto 0),
      awuser_q => awuser_q,
      awvalid_q => awvalid_q,
      \bid_q_reg[1]\(1 downto 0) => \bid_q_reg[1]\(1 downto 0),
      bready_q => bready_q,
      \bresp_q_reg[1]\(1 downto 0) => \bresp_q_reg[1]\(1 downto 0),
      buser_q => buser_q,
      bvalid_q => bvalid_q,
      data_in(12 downto 11) => \awid_q_reg[1]\(1 downto 0),
      data_in(10 downto 3) => \awlen_q_reg[7]\(7 downto 0),
      data_in(2 downto 0) => \awsize_q_reg[2]\(2 downto 0),
      \gen_thread_loop[0].active_id_reg\(1 downto 0) => \gen_thread_loop[0].active_id_reg__0\(1 downto 0),
      \gen_thread_loop[1].RCount_reg[1][6]\(0) => ASR_59436_in,
      \gen_thread_loop[1].active_id_reg\(1 downto 0) => \gen_thread_loop[1].active_id_reg__0\(1 downto 0),
      \pc_status_i_reg[77]\(56 downto 0) => \^pc_status[81]\(56 downto 0),
      \rdata_q_reg[63]\(63 downto 0) => \rdata_q_reg[63]\(63 downto 0),
      resetn_q => resetn_q,
      \rid_q_reg[1]\(1 downto 0) => \rid_q_reg[1]\(1 downto 0),
      rlast_q => rlast_q,
      rready_q => rready_q,
      \rresp_q_reg[1]\(1 downto 0) => \rresp_q_reg[1]\(1 downto 0),
      ruser_q => ruser_q,
      rvalid_q => rvalid_q,
      \s101sq_reg[1]_0\ => i_Axi4PC_asr_inline_n_0,
      \wdata_q_reg[63]\(63 downto 0) => \wdata_q_reg[63]\(63 downto 0),
      wlast_q => wlast_q,
      wready_q => wready_q,
      \wstrb_q_reg[7]\(7 downto 0) => \wstrb_q_reg[7]\(7 downto 0),
      wuser_q => wuser_q,
      wvalid_q => wvalid_q
    );
\mask_shift_stage_1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => AWCMD_n_22,
      I1 => AWStrbsizeOut(0),
      I2 => AWStrbsizeOut(1),
      I3 => AWStrbsizeOut(2),
      O => \mask_shift_stage_1[0]_i_1_n_0\
    );
\mask_shift_stage_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => AWCMD_n_21,
      I1 => AWStrbsizeOut(2),
      I2 => AWStrbsizeOut(1),
      O => \mask_shift_stage_1[1]_i_1_n_0\
    );
\mask_shift_stage_1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => AWCMD_n_20,
      I1 => AWStrbsizeOut(2),
      I2 => AWStrbsizeOut(1),
      I3 => AWStrbsizeOut(0),
      O => \mask_shift_stage_1[2]_i_1_n_0\
    );
\mask_shift_stage_1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => AWCMD_n_19,
      I1 => AWStrbsizeOut(2),
      O => \mask_shift_stage_1[3]_i_1_n_0\
    );
\mask_shift_stage_1[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => AWCMD_n_18,
      I1 => AWStrbsizeOut(2),
      I2 => AWStrbsizeOut(1),
      I3 => AWStrbsizeOut(0),
      O => \mask_shift_stage_1[4]_i_1_n_0\
    );
\mask_shift_stage_1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => AWCMD_n_17,
      I1 => AWStrbsizeOut(2),
      I2 => AWStrbsizeOut(1),
      O => \mask_shift_stage_1[5]_i_1_n_0\
    );
\mask_shift_stage_1[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => AWCMD_n_16,
      I1 => AWStrbsizeOut(2),
      I2 => AWStrbsizeOut(1),
      I3 => AWStrbsizeOut(0),
      O => \mask_shift_stage_1[6]_i_1_n_0\
    );
\mask_shift_stage_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mask_shift_stage_1[0]_i_1_n_0\,
      Q => mask_shift_stage_1(0),
      R => '0'
    );
\mask_shift_stage_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mask_shift_stage_1[1]_i_1_n_0\,
      Q => mask_shift_stage_1(1),
      R => '0'
    );
\mask_shift_stage_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mask_shift_stage_1[2]_i_1_n_0\,
      Q => mask_shift_stage_1(2),
      R => '0'
    );
\mask_shift_stage_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mask_shift_stage_1[3]_i_1_n_0\,
      Q => mask_shift_stage_1(3),
      R => '0'
    );
\mask_shift_stage_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mask_shift_stage_1[4]_i_1_n_0\,
      Q => mask_shift_stage_1(4),
      R => '0'
    );
\mask_shift_stage_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mask_shift_stage_1[5]_i_1_n_0\,
      Q => mask_shift_stage_1(5),
      R => '0'
    );
\mask_shift_stage_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \mask_shift_stage_1[6]_i_1_n_0\,
      Q => mask_shift_stage_1(6),
      R => '0'
    );
\mask_shift_stage_2_q1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mask_shift_stage_2(0),
      Q => mask_shift_stage_2_q1(0),
      R => '0'
    );
\mask_shift_stage_2_q1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mask_shift_stage_2(1),
      Q => mask_shift_stage_2_q1(1),
      R => '0'
    );
\mask_shift_stage_2_q1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => mask_shift_stage_2(2),
      Q => mask_shift_stage_2_q1(2),
      R => '0'
    );
\mask_shift_stage_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_4,
      Q => mask_shift_stage_2(0),
      R => '0'
    );
\mask_shift_stage_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_3,
      Q => mask_shift_stage_2(1),
      R => '0'
    );
\mask_shift_stage_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_2,
      Q => mask_shift_stage_2(2),
      R => '0'
    );
pc_asserted_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pc_asserted_i_i_2_n_0,
      I1 => pc_asserted_i_i_3_n_0,
      I2 => pc_asserted_i_i_4_n_0,
      I3 => pc_asserted_i_i_5_n_0,
      I4 => pc_asserted_i_i_6_n_0,
      I5 => pc_asserted_i_i_7_n_0,
      O => pc_asserted_i_reg
    );
pc_asserted_i_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(41),
      I1 => \^pc_status[81]\(24),
      I2 => \^pc_status[81]\(48),
      I3 => \^pc_status[81]\(31),
      O => pc_asserted_i_i_10_n_0
    );
pc_asserted_i_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(22),
      I1 => \^pc_status[81]\(13),
      I2 => \^pc_status[81]\(57),
      I3 => \^pc_status[81]\(56),
      O => pc_asserted_i_i_11_n_0
    );
pc_asserted_i_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(59),
      I1 => \^pc_status[81]\(19),
      I2 => \^pc_status[81]\(51),
      I3 => \^pc_status[81]\(5),
      O => pc_asserted_i_i_12_n_0
    );
pc_asserted_i_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(27),
      I1 => \^pc_status[81]\(9),
      I2 => \^pc_status[81]\(49),
      I3 => \^pc_status[81]\(23),
      O => pc_asserted_i_i_13_n_0
    );
pc_asserted_i_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(38),
      I1 => \^pc_status[81]\(35),
      I2 => \^pc_status[81]\(39),
      I3 => \^pc_status[81]\(17),
      O => pc_asserted_i_i_14_n_0
    );
pc_asserted_i_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(36),
      I1 => \^pc_status[81]\(28),
      I2 => \^pc_status[81]\(53),
      I3 => \^pc_status[81]\(37),
      O => pc_asserted_i_i_15_n_0
    );
pc_asserted_i_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(34),
      I1 => \^pc_status[81]\(30),
      I2 => \^pc_status[81]\(18),
      I3 => \^pc_status[81]\(16),
      O => pc_asserted_i_i_16_n_0
    );
pc_asserted_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pc_asserted_i_i_8_n_0,
      I1 => pc_asserted_i_i_9_n_0,
      I2 => \^pc_status[81]\(46),
      I3 => \^pc_status[81]\(44),
      I4 => \^pc_status[81]\(45),
      I5 => \^pc_status[81]\(12),
      O => pc_asserted_i_i_2_n_0
    );
pc_asserted_i_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^pc_status[81]\(50),
      I1 => \^pc_status[81]\(54),
      I2 => \^pc_status[81]\(32),
      I3 => \^pc_status[81]\(40),
      I4 => pc_asserted_i_i_10_n_0,
      O => pc_asserted_i_i_3_n_0
    );
pc_asserted_i_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^pc_status[81]\(20),
      I1 => \^pc_status[81]\(55),
      I2 => \^pc_status[81]\(33),
      I3 => \^pc_status[81]\(58),
      I4 => pc_asserted_i_i_11_n_0,
      O => pc_asserted_i_i_4_n_0
    );
pc_asserted_i_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^pc_status[81]\(7),
      I1 => \^pc_status[81]\(10),
      I2 => \^pc_status[81]\(4),
      I3 => \^pc_status[81]\(47),
      I4 => pc_asserted_i_i_12_n_0,
      O => pc_asserted_i_i_5_n_0
    );
pc_asserted_i_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^pc_status[81]\(26),
      I1 => \^pc_status[81]\(43),
      I2 => \^pc_status[81]\(2),
      I3 => \^pc_status[81]\(6),
      I4 => pc_asserted_i_i_13_n_0,
      O => pc_asserted_i_i_6_n_0
    );
pc_asserted_i_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pc_asserted_i_i_14_n_0,
      I1 => pc_asserted_i_i_15_n_0,
      I2 => pc_asserted_i_i_16_n_0,
      I3 => \^pc_status[81]\(0),
      I4 => \^pc_status[81]\(15),
      I5 => \^pc_status[81]\(1),
      O => pc_asserted_i_i_7_n_0
    );
pc_asserted_i_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \^pc_status[81]\(60),
      I1 => \^pc_status[81]\(52),
      I2 => \^pc_status[81]\(11),
      I3 => \^pc_status[81]\(42),
      I4 => \^pc_status[81]\(3),
      I5 => \^pc_status[81]\(21),
      O => pc_asserted_i_i_8_n_0
    );
pc_asserted_i_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^pc_status[81]\(25),
      I1 => \^pc_status[81]\(14),
      I2 => \^pc_status[81]\(29),
      I3 => \^pc_status[81]\(8),
      O => pc_asserted_i_i_9_n_0
    );
\pc_status_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_62,
      Q => \^pc_status[81]\(0),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_54,
      Q => \^pc_status[81]\(8),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_53,
      Q => \^pc_status[81]\(9),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_52,
      Q => \^pc_status[81]\(10),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_51,
      Q => \^pc_status[81]\(11),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_50,
      Q => \^pc_status[81]\(12),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_49,
      Q => \^pc_status[81]\(13),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_48,
      Q => \^pc_status[81]\(14),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_47,
      Q => \^pc_status[81]\(15),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_46,
      Q => \^pc_status[81]\(16),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_61,
      Q => \^pc_status[81]\(1),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_45,
      Q => \^pc_status[81]\(17),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_44,
      Q => \^pc_status[81]\(18),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_43,
      Q => \^pc_status[81]\(19),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_42,
      Q => \^pc_status[81]\(20),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_41,
      Q => \^pc_status[81]\(21),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_40,
      Q => \^pc_status[81]\(22),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_60,
      Q => \^pc_status[81]\(2),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_39,
      Q => \^pc_status[81]\(23),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_38,
      Q => \^pc_status[81]\(24),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_37,
      Q => \^pc_status[81]\(25),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_36,
      Q => \^pc_status[81]\(26),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_35,
      Q => \^pc_status[81]\(27),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_34,
      Q => \^pc_status[81]\(28),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_33,
      Q => \^pc_status[81]\(29),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_32,
      Q => \^pc_status[81]\(30),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_31,
      Q => \^pc_status[81]\(31),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_30,
      Q => \^pc_status[81]\(32),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_29,
      Q => \^pc_status[81]\(33),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_28,
      Q => \^pc_status[81]\(34),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_27,
      Q => \^pc_status[81]\(35),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_26,
      Q => \^pc_status[81]\(36),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_25,
      Q => \^pc_status[81]\(37),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_59,
      Q => \^pc_status[81]\(3),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_24,
      Q => \^pc_status[81]\(38),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_23,
      Q => \^pc_status[81]\(39),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_22,
      Q => \^pc_status[81]\(40),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_21,
      Q => \^pc_status[81]\(41),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_20,
      Q => \^pc_status[81]\(42),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_19,
      Q => \^pc_status[81]\(43),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_18,
      Q => \^pc_status[81]\(44),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_17,
      Q => \^pc_status[81]\(45),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_58,
      Q => \^pc_status[81]\(4),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_16,
      Q => \^pc_status[81]\(46),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_15,
      Q => \^pc_status[81]\(47),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_14,
      Q => \^pc_status[81]\(48),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_13,
      Q => \^pc_status[81]\(49),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_12,
      Q => \^pc_status[81]\(50),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_11,
      Q => \^pc_status[81]\(51),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_57,
      Q => \^pc_status[81]\(5),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_10,
      Q => \^pc_status[81]\(52),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_9,
      Q => \^pc_status[81]\(53),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_8,
      Q => \^pc_status[81]\(54),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_7,
      Q => \^pc_status[81]\(55),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_6,
      Q => \^pc_status[81]\(56),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[0].RDCAM_n_2\,
      Q => \^pc_status[81]\(57),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_thread_loop[0].RDCAM_n_1\,
      Q => \^pc_status[81]\(58),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_56,
      Q => \^pc_status[81]\(6),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => AWCMD_n_36,
      Q => \^pc_status[81]\(59),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => WCHECK_n_4,
      Q => \^pc_status[81]\(60),
      R => i_Axi4PC_asr_inline_n_0
    );
\pc_status_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => i_Axi4PC_asr_inline_n_55,
      Q => \^pc_status[81]\(7),
      R => i_Axi4PC_asr_inline_n_0
    );
\wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3\: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => aclk,
      D => wcheckPop,
      Q => \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0\
    );
\wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \wchechPop_shift_reg[4]_srl5___CORE_wchechPop_shift_reg_r_3_n_0\,
      Q => \wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0\,
      R => '0'
    );
\wchechPop_shift_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wchechPop_shift_reg_gate_n_0,
      Q => wchechPop_shift(6),
      R => i_Axi4PC_asr_inline_n_0
    );
wchechPop_shift_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \wchechPop_shift_reg[5]_CORE_wchechPop_shift_reg_r_4_n_0\,
      I1 => wchechPop_shift_reg_r_4_n_0,
      O => wchechPop_shift_reg_gate_n_0
    );
wchechPop_shift_reg_r: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => '1',
      Q => wchechPop_shift_reg_r_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
wchechPop_shift_reg_r_0: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wchechPop_shift_reg_r_n_0,
      Q => wchechPop_shift_reg_r_0_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
wchechPop_shift_reg_r_1: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wchechPop_shift_reg_r_0_n_0,
      Q => wchechPop_shift_reg_r_1_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
wchechPop_shift_reg_r_2: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wchechPop_shift_reg_r_1_n_0,
      Q => wchechPop_shift_reg_r_2_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
wchechPop_shift_reg_r_3: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wchechPop_shift_reg_r_2_n_0,
      Q => wchechPop_shift_reg_r_3_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
wchechPop_shift_reg_r_4: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => wchechPop_shift_reg_r_3_n_0,
      Q => wchechPop_shift_reg_r_4_n_0,
      R => i_Axi4PC_asr_inline_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top is
  port (
    pc_status : out STD_LOGIC_VECTOR ( 96 downto 0 );
    pc_asserted : out STD_LOGIC;
    system_resetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    pc_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_awvalid : in STD_LOGIC;
    pc_axi_awready : in STD_LOGIC;
    pc_axi_wid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_wlast : in STD_LOGIC;
    pc_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    pc_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_wvalid : in STD_LOGIC;
    pc_axi_wready : in STD_LOGIC;
    pc_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_bvalid : in STD_LOGIC;
    pc_axi_bready : in STD_LOGIC;
    pc_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_arvalid : in STD_LOGIC;
    pc_axi_arready : in STD_LOGIC;
    pc_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_rlast : in STD_LOGIC;
    pc_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    pc_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_rvalid : in STD_LOGIC;
    pc_axi_rready : in STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 1;
  attribute C_PC_AR_MAXWAITS : integer;
  attribute C_PC_AR_MAXWAITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute C_PC_AW_MAXWAITS : integer;
  attribute C_PC_AW_MAXWAITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute C_PC_B_MAXWAITS : integer;
  attribute C_PC_B_MAXWAITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute C_PC_EXMON_WIDTH : integer;
  attribute C_PC_EXMON_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute C_PC_HAS_SYSTEM_RESET : integer;
  attribute C_PC_HAS_SYSTEM_RESET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute C_PC_MAXRBURSTS : integer;
  attribute C_PC_MAXRBURSTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 2;
  attribute C_PC_MAXWBURSTS : integer;
  attribute C_PC_MAXWBURSTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 2;
  attribute C_PC_MAX_BURST_LENGTH : integer;
  attribute C_PC_MAX_BURST_LENGTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 256;
  attribute C_PC_MESSAGE_LEVEL : integer;
  attribute C_PC_MESSAGE_LEVEL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 2;
  attribute C_PC_R_MAXWAITS : integer;
  attribute C_PC_R_MAXWAITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute C_PC_STATUS_WIDTH : integer;
  attribute C_PC_STATUS_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 97;
  attribute C_PC_SUPPORTS_NARROW_BURST : integer;
  attribute C_PC_SUPPORTS_NARROW_BURST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 1;
  attribute C_PC_W_MAXWAITS : integer;
  attribute C_PC_W_MAXWAITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is "yes";
  attribute LP_AXI_SIZE : string;
  attribute LP_AXI_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top : entity is "3'b011";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top is
  signal \<const0>\ : STD_LOGIC;
  signal araddr_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal arburst_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal arcache_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arid_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal arlen_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arprot_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal arqos_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arready_q : STD_LOGIC;
  signal arregion_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal arsize_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aruser_q : STD_LOGIC;
  signal arvalid_q : STD_LOGIC;
  signal awaddr_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal awburst_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal awcache_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal awid_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal awlen_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal awprot_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal awqos_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal awready_q : STD_LOGIC;
  signal awregion_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal awsize_q : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal awuser_q : STD_LOGIC;
  signal awvalid_q : STD_LOGIC;
  signal bid_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal bready_q : STD_LOGIC;
  signal bresp_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal buser_q : STD_LOGIC;
  signal bvalid_q : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^pc_status\ : STD_LOGIC_VECTOR ( 81 downto 0 );
  signal rdata_q : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal resetn_q : STD_LOGIC;
  signal rid_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rlast_q : STD_LOGIC;
  signal rready_q : STD_LOGIC;
  signal rresp_q : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ruser_q : STD_LOGIC;
  signal rvalid_q : STD_LOGIC;
  signal wdata_q : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal wlast_q : STD_LOGIC;
  signal wready_q : STD_LOGIC;
  signal wstrb_q : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wuser_q : STD_LOGIC;
  signal wvalid_q : STD_LOGIC;
begin
  pc_status(96) <= \<const0>\;
  pc_status(95) <= \<const0>\;
  pc_status(94) <= \<const0>\;
  pc_status(93) <= \<const0>\;
  pc_status(92) <= \<const0>\;
  pc_status(91) <= \<const0>\;
  pc_status(90) <= \<const0>\;
  pc_status(89) <= \<const0>\;
  pc_status(88) <= \<const0>\;
  pc_status(87) <= \<const0>\;
  pc_status(86) <= \<const0>\;
  pc_status(85) <= \<const0>\;
  pc_status(84) <= \<const0>\;
  pc_status(83) <= \<const0>\;
  pc_status(82) <= \<const0>\;
  pc_status(81 downto 73) <= \^pc_status\(81 downto 73);
  pc_status(72) <= \<const0>\;
  pc_status(71) <= \<const0>\;
  pc_status(70) <= \<const0>\;
  pc_status(69) <= \<const0>\;
  pc_status(68) <= \<const0>\;
  pc_status(67) <= \<const0>\;
  pc_status(66 downto 62) <= \^pc_status\(66 downto 62);
  pc_status(61) <= \<const0>\;
  pc_status(60 downto 58) <= \^pc_status\(60 downto 58);
  pc_status(57) <= \<const0>\;
  pc_status(56 downto 52) <= \^pc_status\(56 downto 52);
  pc_status(51) <= \<const0>\;
  pc_status(50 downto 46) <= \^pc_status\(50 downto 46);
  pc_status(45) <= \<const0>\;
  pc_status(44 downto 41) <= \^pc_status\(44 downto 41);
  pc_status(40) <= \<const0>\;
  pc_status(39 downto 37) <= \^pc_status\(39 downto 37);
  pc_status(36) <= \<const0>\;
  pc_status(35 downto 32) <= \^pc_status\(35 downto 32);
  pc_status(31) <= \<const0>\;
  pc_status(30) <= \<const0>\;
  pc_status(29) <= \<const0>\;
  pc_status(28) <= \<const0>\;
  pc_status(27 downto 24) <= \^pc_status\(27 downto 24);
  pc_status(23) <= \<const0>\;
  pc_status(22 downto 21) <= \^pc_status\(22 downto 21);
  pc_status(20) <= \<const0>\;
  pc_status(19 downto 15) <= \^pc_status\(19 downto 15);
  pc_status(14) <= \<const0>\;
  pc_status(13 downto 9) <= \^pc_status\(13 downto 9);
  pc_status(8) <= \<const0>\;
  pc_status(7 downto 4) <= \^pc_status\(7 downto 4);
  pc_status(3) <= \<const0>\;
  pc_status(2 downto 0) <= \^pc_status\(2 downto 0);
CORE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_core
     port map (
      Q(31 downto 0) => awaddr_q(31 downto 0),
      aclk => aclk,
      \araddr_q_reg[31]\(31 downto 0) => araddr_q(31 downto 0),
      \arburst_q_reg[1]\(1 downto 0) => arburst_q(1 downto 0),
      \arcache_q_reg[3]\(3 downto 0) => arcache_q(3 downto 0),
      \arid_q_reg[1]\(1 downto 0) => arid_q(1 downto 0),
      \arlen_q_reg[7]\(7 downto 0) => arlen_q(7 downto 0),
      \arprot_q_reg[2]\(2 downto 0) => arprot_q(2 downto 0),
      \arqos_q_reg[3]\(3 downto 0) => arqos_q(3 downto 0),
      arready_q => arready_q,
      \arregion_q_reg[3]\(3 downto 0) => arregion_q(3 downto 0),
      \arsize_q_reg[2]\(2 downto 0) => arsize_q(2 downto 0),
      aruser_q => aruser_q,
      arvalid_q => arvalid_q,
      \awburst_q_reg[1]\(1 downto 0) => awburst_q(1 downto 0),
      \awcache_q_reg[3]\(3 downto 0) => awcache_q(3 downto 0),
      \awid_q_reg[1]\(1 downto 0) => awid_q(1 downto 0),
      \awlen_q_reg[7]\(7 downto 0) => awlen_q(7 downto 0),
      \awprot_q_reg[2]\(2 downto 0) => awprot_q(2 downto 0),
      \awqos_q_reg[3]\(3 downto 0) => awqos_q(3 downto 0),
      awready_q => awready_q,
      \awregion_q_reg[3]\(3 downto 0) => awregion_q(3 downto 0),
      \awsize_q_reg[2]\(2 downto 0) => awsize_q(2 downto 0),
      awuser_q => awuser_q,
      awvalid_q => awvalid_q,
      \bid_q_reg[1]\(1 downto 0) => bid_q(1 downto 0),
      bready_q => bready_q,
      \bresp_q_reg[1]\(1 downto 0) => bresp_q(1 downto 0),
      buser_q => buser_q,
      bvalid_q => bvalid_q,
      pc_asserted_i_reg => p_0_in,
      \pc_status[81]\(60 downto 52) => \^pc_status\(81 downto 73),
      \pc_status[81]\(51 downto 47) => \^pc_status\(66 downto 62),
      \pc_status[81]\(46 downto 44) => \^pc_status\(60 downto 58),
      \pc_status[81]\(43 downto 39) => \^pc_status\(56 downto 52),
      \pc_status[81]\(38 downto 34) => \^pc_status\(50 downto 46),
      \pc_status[81]\(33 downto 30) => \^pc_status\(44 downto 41),
      \pc_status[81]\(29 downto 27) => \^pc_status\(39 downto 37),
      \pc_status[81]\(26 downto 23) => \^pc_status\(35 downto 32),
      \pc_status[81]\(22 downto 19) => \^pc_status\(27 downto 24),
      \pc_status[81]\(18 downto 17) => \^pc_status\(22 downto 21),
      \pc_status[81]\(16 downto 12) => \^pc_status\(19 downto 15),
      \pc_status[81]\(11 downto 7) => \^pc_status\(13 downto 9),
      \pc_status[81]\(6 downto 3) => \^pc_status\(7 downto 4),
      \pc_status[81]\(2 downto 0) => \^pc_status\(2 downto 0),
      \rdata_q_reg[63]\(63 downto 0) => rdata_q(63 downto 0),
      resetn_q => resetn_q,
      \rid_q_reg[1]\(1 downto 0) => rid_q(1 downto 0),
      rlast_q => rlast_q,
      rready_q => rready_q,
      \rresp_q_reg[1]\(1 downto 0) => rresp_q(1 downto 0),
      ruser_q => ruser_q,
      rvalid_q => rvalid_q,
      \wdata_q_reg[63]\(63 downto 0) => wdata_q(63 downto 0),
      wlast_q => wlast_q,
      wready_q => wready_q,
      \wstrb_q_reg[7]\(7 downto 0) => wstrb_q(7 downto 0),
      wuser_q => wuser_q,
      wvalid_q => wvalid_q
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
REP: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_reporter
     port map (
      aclk => aclk,
      pc_status(60 downto 52) => \^pc_status\(81 downto 73),
      pc_status(51 downto 47) => \^pc_status\(66 downto 62),
      pc_status(46 downto 44) => \^pc_status\(60 downto 58),
      pc_status(43 downto 39) => \^pc_status\(56 downto 52),
      pc_status(38 downto 34) => \^pc_status\(50 downto 46),
      pc_status(33 downto 30) => \^pc_status\(44 downto 41),
      pc_status(29 downto 27) => \^pc_status\(39 downto 37),
      pc_status(26 downto 23) => \^pc_status\(35 downto 32),
      pc_status(22 downto 19) => \^pc_status\(27 downto 24),
      pc_status(18 downto 17) => \^pc_status\(22 downto 21),
      pc_status(16 downto 12) => \^pc_status\(19 downto 15),
      pc_status(11 downto 7) => \^pc_status\(13 downto 9),
      pc_status(6 downto 3) => \^pc_status\(7 downto 4),
      pc_status(2 downto 0) => \^pc_status\(2 downto 0)
    );
\araddr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(0),
      Q => araddr_q(0),
      R => '0'
    );
\araddr_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(10),
      Q => araddr_q(10),
      R => '0'
    );
\araddr_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(11),
      Q => araddr_q(11),
      R => '0'
    );
\araddr_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(12),
      Q => araddr_q(12),
      R => '0'
    );
\araddr_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(13),
      Q => araddr_q(13),
      R => '0'
    );
\araddr_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(14),
      Q => araddr_q(14),
      R => '0'
    );
\araddr_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(15),
      Q => araddr_q(15),
      R => '0'
    );
\araddr_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(16),
      Q => araddr_q(16),
      R => '0'
    );
\araddr_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(17),
      Q => araddr_q(17),
      R => '0'
    );
\araddr_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(18),
      Q => araddr_q(18),
      R => '0'
    );
\araddr_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(19),
      Q => araddr_q(19),
      R => '0'
    );
\araddr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(1),
      Q => araddr_q(1),
      R => '0'
    );
\araddr_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(20),
      Q => araddr_q(20),
      R => '0'
    );
\araddr_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(21),
      Q => araddr_q(21),
      R => '0'
    );
\araddr_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(22),
      Q => araddr_q(22),
      R => '0'
    );
\araddr_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(23),
      Q => araddr_q(23),
      R => '0'
    );
\araddr_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(24),
      Q => araddr_q(24),
      R => '0'
    );
\araddr_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(25),
      Q => araddr_q(25),
      R => '0'
    );
\araddr_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(26),
      Q => araddr_q(26),
      R => '0'
    );
\araddr_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(27),
      Q => araddr_q(27),
      R => '0'
    );
\araddr_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(28),
      Q => araddr_q(28),
      R => '0'
    );
\araddr_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(29),
      Q => araddr_q(29),
      R => '0'
    );
\araddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(2),
      Q => araddr_q(2),
      R => '0'
    );
\araddr_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(30),
      Q => araddr_q(30),
      R => '0'
    );
\araddr_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(31),
      Q => araddr_q(31),
      R => '0'
    );
\araddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(3),
      Q => araddr_q(3),
      R => '0'
    );
\araddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(4),
      Q => araddr_q(4),
      R => '0'
    );
\araddr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(5),
      Q => araddr_q(5),
      R => '0'
    );
\araddr_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(6),
      Q => araddr_q(6),
      R => '0'
    );
\araddr_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(7),
      Q => araddr_q(7),
      R => '0'
    );
\araddr_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(8),
      Q => araddr_q(8),
      R => '0'
    );
\araddr_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_araddr(9),
      Q => araddr_q(9),
      R => '0'
    );
\arburst_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arburst(0),
      Q => arburst_q(0),
      R => '0'
    );
\arburst_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arburst(1),
      Q => arburst_q(1),
      R => '0'
    );
\arcache_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arcache(0),
      Q => arcache_q(0),
      R => '0'
    );
\arcache_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arcache(1),
      Q => arcache_q(1),
      R => '0'
    );
\arcache_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arcache(2),
      Q => arcache_q(2),
      R => '0'
    );
\arcache_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arcache(3),
      Q => arcache_q(3),
      R => '0'
    );
\arid_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arid(0),
      Q => arid_q(0),
      R => '0'
    );
\arid_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arid(1),
      Q => arid_q(1),
      R => '0'
    );
\arlen_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(0),
      Q => arlen_q(0),
      R => '0'
    );
\arlen_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(1),
      Q => arlen_q(1),
      R => '0'
    );
\arlen_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(2),
      Q => arlen_q(2),
      R => '0'
    );
\arlen_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(3),
      Q => arlen_q(3),
      R => '0'
    );
\arlen_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(4),
      Q => arlen_q(4),
      R => '0'
    );
\arlen_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(5),
      Q => arlen_q(5),
      R => '0'
    );
\arlen_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(6),
      Q => arlen_q(6),
      R => '0'
    );
\arlen_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arlen(7),
      Q => arlen_q(7),
      R => '0'
    );
\arprot_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arprot(0),
      Q => arprot_q(0),
      R => '0'
    );
\arprot_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arprot(1),
      Q => arprot_q(1),
      R => '0'
    );
\arprot_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arprot(2),
      Q => arprot_q(2),
      R => '0'
    );
\arqos_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arqos(0),
      Q => arqos_q(0),
      R => '0'
    );
\arqos_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arqos(1),
      Q => arqos_q(1),
      R => '0'
    );
\arqos_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arqos(2),
      Q => arqos_q(2),
      R => '0'
    );
\arqos_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arqos(3),
      Q => arqos_q(3),
      R => '0'
    );
arready_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arready,
      Q => arready_q,
      R => '0'
    );
\arregion_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arregion(0),
      Q => arregion_q(0),
      R => '0'
    );
\arregion_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arregion(1),
      Q => arregion_q(1),
      R => '0'
    );
\arregion_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arregion(2),
      Q => arregion_q(2),
      R => '0'
    );
\arregion_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arregion(3),
      Q => arregion_q(3),
      R => '0'
    );
\arsize_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arsize(0),
      Q => arsize_q(0),
      R => '0'
    );
\arsize_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arsize(1),
      Q => arsize_q(1),
      R => '0'
    );
\arsize_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arsize(2),
      Q => arsize_q(2),
      R => '0'
    );
\aruser_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_aruser(0),
      Q => aruser_q,
      R => '0'
    );
arvalid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_arvalid,
      Q => arvalid_q,
      R => '0'
    );
\awaddr_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(0),
      Q => awaddr_q(0),
      R => '0'
    );
\awaddr_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(10),
      Q => awaddr_q(10),
      R => '0'
    );
\awaddr_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(11),
      Q => awaddr_q(11),
      R => '0'
    );
\awaddr_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(12),
      Q => awaddr_q(12),
      R => '0'
    );
\awaddr_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(13),
      Q => awaddr_q(13),
      R => '0'
    );
\awaddr_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(14),
      Q => awaddr_q(14),
      R => '0'
    );
\awaddr_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(15),
      Q => awaddr_q(15),
      R => '0'
    );
\awaddr_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(16),
      Q => awaddr_q(16),
      R => '0'
    );
\awaddr_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(17),
      Q => awaddr_q(17),
      R => '0'
    );
\awaddr_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(18),
      Q => awaddr_q(18),
      R => '0'
    );
\awaddr_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(19),
      Q => awaddr_q(19),
      R => '0'
    );
\awaddr_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(1),
      Q => awaddr_q(1),
      R => '0'
    );
\awaddr_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(20),
      Q => awaddr_q(20),
      R => '0'
    );
\awaddr_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(21),
      Q => awaddr_q(21),
      R => '0'
    );
\awaddr_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(22),
      Q => awaddr_q(22),
      R => '0'
    );
\awaddr_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(23),
      Q => awaddr_q(23),
      R => '0'
    );
\awaddr_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(24),
      Q => awaddr_q(24),
      R => '0'
    );
\awaddr_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(25),
      Q => awaddr_q(25),
      R => '0'
    );
\awaddr_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(26),
      Q => awaddr_q(26),
      R => '0'
    );
\awaddr_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(27),
      Q => awaddr_q(27),
      R => '0'
    );
\awaddr_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(28),
      Q => awaddr_q(28),
      R => '0'
    );
\awaddr_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(29),
      Q => awaddr_q(29),
      R => '0'
    );
\awaddr_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(2),
      Q => awaddr_q(2),
      R => '0'
    );
\awaddr_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(30),
      Q => awaddr_q(30),
      R => '0'
    );
\awaddr_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(31),
      Q => awaddr_q(31),
      R => '0'
    );
\awaddr_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(3),
      Q => awaddr_q(3),
      R => '0'
    );
\awaddr_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(4),
      Q => awaddr_q(4),
      R => '0'
    );
\awaddr_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(5),
      Q => awaddr_q(5),
      R => '0'
    );
\awaddr_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(6),
      Q => awaddr_q(6),
      R => '0'
    );
\awaddr_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(7),
      Q => awaddr_q(7),
      R => '0'
    );
\awaddr_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(8),
      Q => awaddr_q(8),
      R => '0'
    );
\awaddr_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awaddr(9),
      Q => awaddr_q(9),
      R => '0'
    );
\awburst_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awburst(0),
      Q => awburst_q(0),
      R => '0'
    );
\awburst_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awburst(1),
      Q => awburst_q(1),
      R => '0'
    );
\awcache_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awcache(0),
      Q => awcache_q(0),
      R => '0'
    );
\awcache_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awcache(1),
      Q => awcache_q(1),
      R => '0'
    );
\awcache_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awcache(2),
      Q => awcache_q(2),
      R => '0'
    );
\awcache_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awcache(3),
      Q => awcache_q(3),
      R => '0'
    );
\awid_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awid(0),
      Q => awid_q(0),
      R => '0'
    );
\awid_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awid(1),
      Q => awid_q(1),
      R => '0'
    );
\awlen_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(0),
      Q => awlen_q(0),
      R => '0'
    );
\awlen_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(1),
      Q => awlen_q(1),
      R => '0'
    );
\awlen_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(2),
      Q => awlen_q(2),
      R => '0'
    );
\awlen_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(3),
      Q => awlen_q(3),
      R => '0'
    );
\awlen_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(4),
      Q => awlen_q(4),
      R => '0'
    );
\awlen_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(5),
      Q => awlen_q(5),
      R => '0'
    );
\awlen_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(6),
      Q => awlen_q(6),
      R => '0'
    );
\awlen_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awlen(7),
      Q => awlen_q(7),
      R => '0'
    );
\awprot_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awprot(0),
      Q => awprot_q(0),
      R => '0'
    );
\awprot_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awprot(1),
      Q => awprot_q(1),
      R => '0'
    );
\awprot_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awprot(2),
      Q => awprot_q(2),
      R => '0'
    );
\awqos_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awqos(0),
      Q => awqos_q(0),
      R => '0'
    );
\awqos_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awqos(1),
      Q => awqos_q(1),
      R => '0'
    );
\awqos_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awqos(2),
      Q => awqos_q(2),
      R => '0'
    );
\awqos_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awqos(3),
      Q => awqos_q(3),
      R => '0'
    );
awready_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awready,
      Q => awready_q,
      R => '0'
    );
\awregion_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awregion(0),
      Q => awregion_q(0),
      R => '0'
    );
\awregion_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awregion(1),
      Q => awregion_q(1),
      R => '0'
    );
\awregion_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awregion(2),
      Q => awregion_q(2),
      R => '0'
    );
\awregion_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awregion(3),
      Q => awregion_q(3),
      R => '0'
    );
\awsize_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awsize(0),
      Q => awsize_q(0),
      R => '0'
    );
\awsize_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awsize(1),
      Q => awsize_q(1),
      R => '0'
    );
\awsize_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awsize(2),
      Q => awsize_q(2),
      R => '0'
    );
\awuser_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awuser(0),
      Q => awuser_q,
      R => '0'
    );
awvalid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_awvalid,
      Q => awvalid_q,
      R => '0'
    );
\bid_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_bid(0),
      Q => bid_q(0),
      R => '0'
    );
\bid_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_bid(1),
      Q => bid_q(1),
      R => '0'
    );
bready_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_bready,
      Q => bready_q,
      R => '0'
    );
\bresp_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_bresp(0),
      Q => bresp_q(0),
      R => '0'
    );
\bresp_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_bresp(1),
      Q => bresp_q(1),
      R => '0'
    );
\buser_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_buser(0),
      Q => buser_q,
      R => '0'
    );
bvalid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_bvalid,
      Q => bvalid_q,
      R => '0'
    );
pc_asserted_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => p_0_in,
      Q => pc_asserted,
      R => '0'
    );
\rdata_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(0),
      Q => rdata_q(0),
      R => '0'
    );
\rdata_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(10),
      Q => rdata_q(10),
      R => '0'
    );
\rdata_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(11),
      Q => rdata_q(11),
      R => '0'
    );
\rdata_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(12),
      Q => rdata_q(12),
      R => '0'
    );
\rdata_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(13),
      Q => rdata_q(13),
      R => '0'
    );
\rdata_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(14),
      Q => rdata_q(14),
      R => '0'
    );
\rdata_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(15),
      Q => rdata_q(15),
      R => '0'
    );
\rdata_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(16),
      Q => rdata_q(16),
      R => '0'
    );
\rdata_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(17),
      Q => rdata_q(17),
      R => '0'
    );
\rdata_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(18),
      Q => rdata_q(18),
      R => '0'
    );
\rdata_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(19),
      Q => rdata_q(19),
      R => '0'
    );
\rdata_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(1),
      Q => rdata_q(1),
      R => '0'
    );
\rdata_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(20),
      Q => rdata_q(20),
      R => '0'
    );
\rdata_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(21),
      Q => rdata_q(21),
      R => '0'
    );
\rdata_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(22),
      Q => rdata_q(22),
      R => '0'
    );
\rdata_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(23),
      Q => rdata_q(23),
      R => '0'
    );
\rdata_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(24),
      Q => rdata_q(24),
      R => '0'
    );
\rdata_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(25),
      Q => rdata_q(25),
      R => '0'
    );
\rdata_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(26),
      Q => rdata_q(26),
      R => '0'
    );
\rdata_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(27),
      Q => rdata_q(27),
      R => '0'
    );
\rdata_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(28),
      Q => rdata_q(28),
      R => '0'
    );
\rdata_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(29),
      Q => rdata_q(29),
      R => '0'
    );
\rdata_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(2),
      Q => rdata_q(2),
      R => '0'
    );
\rdata_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(30),
      Q => rdata_q(30),
      R => '0'
    );
\rdata_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(31),
      Q => rdata_q(31),
      R => '0'
    );
\rdata_q_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(32),
      Q => rdata_q(32),
      R => '0'
    );
\rdata_q_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(33),
      Q => rdata_q(33),
      R => '0'
    );
\rdata_q_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(34),
      Q => rdata_q(34),
      R => '0'
    );
\rdata_q_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(35),
      Q => rdata_q(35),
      R => '0'
    );
\rdata_q_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(36),
      Q => rdata_q(36),
      R => '0'
    );
\rdata_q_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(37),
      Q => rdata_q(37),
      R => '0'
    );
\rdata_q_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(38),
      Q => rdata_q(38),
      R => '0'
    );
\rdata_q_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(39),
      Q => rdata_q(39),
      R => '0'
    );
\rdata_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(3),
      Q => rdata_q(3),
      R => '0'
    );
\rdata_q_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(40),
      Q => rdata_q(40),
      R => '0'
    );
\rdata_q_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(41),
      Q => rdata_q(41),
      R => '0'
    );
\rdata_q_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(42),
      Q => rdata_q(42),
      R => '0'
    );
\rdata_q_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(43),
      Q => rdata_q(43),
      R => '0'
    );
\rdata_q_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(44),
      Q => rdata_q(44),
      R => '0'
    );
\rdata_q_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(45),
      Q => rdata_q(45),
      R => '0'
    );
\rdata_q_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(46),
      Q => rdata_q(46),
      R => '0'
    );
\rdata_q_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(47),
      Q => rdata_q(47),
      R => '0'
    );
\rdata_q_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(48),
      Q => rdata_q(48),
      R => '0'
    );
\rdata_q_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(49),
      Q => rdata_q(49),
      R => '0'
    );
\rdata_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(4),
      Q => rdata_q(4),
      R => '0'
    );
\rdata_q_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(50),
      Q => rdata_q(50),
      R => '0'
    );
\rdata_q_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(51),
      Q => rdata_q(51),
      R => '0'
    );
\rdata_q_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(52),
      Q => rdata_q(52),
      R => '0'
    );
\rdata_q_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(53),
      Q => rdata_q(53),
      R => '0'
    );
\rdata_q_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(54),
      Q => rdata_q(54),
      R => '0'
    );
\rdata_q_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(55),
      Q => rdata_q(55),
      R => '0'
    );
\rdata_q_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(56),
      Q => rdata_q(56),
      R => '0'
    );
\rdata_q_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(57),
      Q => rdata_q(57),
      R => '0'
    );
\rdata_q_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(58),
      Q => rdata_q(58),
      R => '0'
    );
\rdata_q_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(59),
      Q => rdata_q(59),
      R => '0'
    );
\rdata_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(5),
      Q => rdata_q(5),
      R => '0'
    );
\rdata_q_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(60),
      Q => rdata_q(60),
      R => '0'
    );
\rdata_q_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(61),
      Q => rdata_q(61),
      R => '0'
    );
\rdata_q_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(62),
      Q => rdata_q(62),
      R => '0'
    );
\rdata_q_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(63),
      Q => rdata_q(63),
      R => '0'
    );
\rdata_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(6),
      Q => rdata_q(6),
      R => '0'
    );
\rdata_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(7),
      Q => rdata_q(7),
      R => '0'
    );
\rdata_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(8),
      Q => rdata_q(8),
      R => '0'
    );
\rdata_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rdata(9),
      Q => rdata_q(9),
      R => '0'
    );
resetn_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => resetn_q,
      R => '0'
    );
\rid_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rid(0),
      Q => rid_q(0),
      R => '0'
    );
\rid_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rid(1),
      Q => rid_q(1),
      R => '0'
    );
rlast_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rlast,
      Q => rlast_q,
      R => '0'
    );
rready_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rready,
      Q => rready_q,
      R => '0'
    );
\rresp_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rresp(0),
      Q => rresp_q(0),
      R => '0'
    );
\rresp_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rresp(1),
      Q => rresp_q(1),
      R => '0'
    );
\ruser_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_ruser(0),
      Q => ruser_q,
      R => '0'
    );
rvalid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_rvalid,
      Q => rvalid_q,
      R => '0'
    );
\wdata_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(0),
      Q => wdata_q(0),
      R => '0'
    );
\wdata_q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(10),
      Q => wdata_q(10),
      R => '0'
    );
\wdata_q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(11),
      Q => wdata_q(11),
      R => '0'
    );
\wdata_q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(12),
      Q => wdata_q(12),
      R => '0'
    );
\wdata_q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(13),
      Q => wdata_q(13),
      R => '0'
    );
\wdata_q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(14),
      Q => wdata_q(14),
      R => '0'
    );
\wdata_q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(15),
      Q => wdata_q(15),
      R => '0'
    );
\wdata_q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(16),
      Q => wdata_q(16),
      R => '0'
    );
\wdata_q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(17),
      Q => wdata_q(17),
      R => '0'
    );
\wdata_q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(18),
      Q => wdata_q(18),
      R => '0'
    );
\wdata_q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(19),
      Q => wdata_q(19),
      R => '0'
    );
\wdata_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(1),
      Q => wdata_q(1),
      R => '0'
    );
\wdata_q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(20),
      Q => wdata_q(20),
      R => '0'
    );
\wdata_q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(21),
      Q => wdata_q(21),
      R => '0'
    );
\wdata_q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(22),
      Q => wdata_q(22),
      R => '0'
    );
\wdata_q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(23),
      Q => wdata_q(23),
      R => '0'
    );
\wdata_q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(24),
      Q => wdata_q(24),
      R => '0'
    );
\wdata_q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(25),
      Q => wdata_q(25),
      R => '0'
    );
\wdata_q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(26),
      Q => wdata_q(26),
      R => '0'
    );
\wdata_q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(27),
      Q => wdata_q(27),
      R => '0'
    );
\wdata_q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(28),
      Q => wdata_q(28),
      R => '0'
    );
\wdata_q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(29),
      Q => wdata_q(29),
      R => '0'
    );
\wdata_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(2),
      Q => wdata_q(2),
      R => '0'
    );
\wdata_q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(30),
      Q => wdata_q(30),
      R => '0'
    );
\wdata_q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(31),
      Q => wdata_q(31),
      R => '0'
    );
\wdata_q_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(32),
      Q => wdata_q(32),
      R => '0'
    );
\wdata_q_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(33),
      Q => wdata_q(33),
      R => '0'
    );
\wdata_q_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(34),
      Q => wdata_q(34),
      R => '0'
    );
\wdata_q_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(35),
      Q => wdata_q(35),
      R => '0'
    );
\wdata_q_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(36),
      Q => wdata_q(36),
      R => '0'
    );
\wdata_q_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(37),
      Q => wdata_q(37),
      R => '0'
    );
\wdata_q_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(38),
      Q => wdata_q(38),
      R => '0'
    );
\wdata_q_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(39),
      Q => wdata_q(39),
      R => '0'
    );
\wdata_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(3),
      Q => wdata_q(3),
      R => '0'
    );
\wdata_q_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(40),
      Q => wdata_q(40),
      R => '0'
    );
\wdata_q_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(41),
      Q => wdata_q(41),
      R => '0'
    );
\wdata_q_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(42),
      Q => wdata_q(42),
      R => '0'
    );
\wdata_q_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(43),
      Q => wdata_q(43),
      R => '0'
    );
\wdata_q_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(44),
      Q => wdata_q(44),
      R => '0'
    );
\wdata_q_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(45),
      Q => wdata_q(45),
      R => '0'
    );
\wdata_q_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(46),
      Q => wdata_q(46),
      R => '0'
    );
\wdata_q_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(47),
      Q => wdata_q(47),
      R => '0'
    );
\wdata_q_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(48),
      Q => wdata_q(48),
      R => '0'
    );
\wdata_q_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(49),
      Q => wdata_q(49),
      R => '0'
    );
\wdata_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(4),
      Q => wdata_q(4),
      R => '0'
    );
\wdata_q_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(50),
      Q => wdata_q(50),
      R => '0'
    );
\wdata_q_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(51),
      Q => wdata_q(51),
      R => '0'
    );
\wdata_q_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(52),
      Q => wdata_q(52),
      R => '0'
    );
\wdata_q_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(53),
      Q => wdata_q(53),
      R => '0'
    );
\wdata_q_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(54),
      Q => wdata_q(54),
      R => '0'
    );
\wdata_q_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(55),
      Q => wdata_q(55),
      R => '0'
    );
\wdata_q_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(56),
      Q => wdata_q(56),
      R => '0'
    );
\wdata_q_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(57),
      Q => wdata_q(57),
      R => '0'
    );
\wdata_q_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(58),
      Q => wdata_q(58),
      R => '0'
    );
\wdata_q_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(59),
      Q => wdata_q(59),
      R => '0'
    );
\wdata_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(5),
      Q => wdata_q(5),
      R => '0'
    );
\wdata_q_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(60),
      Q => wdata_q(60),
      R => '0'
    );
\wdata_q_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(61),
      Q => wdata_q(61),
      R => '0'
    );
\wdata_q_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(62),
      Q => wdata_q(62),
      R => '0'
    );
\wdata_q_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(63),
      Q => wdata_q(63),
      R => '0'
    );
\wdata_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(6),
      Q => wdata_q(6),
      R => '0'
    );
\wdata_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(7),
      Q => wdata_q(7),
      R => '0'
    );
\wdata_q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(8),
      Q => wdata_q(8),
      R => '0'
    );
\wdata_q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wdata(9),
      Q => wdata_q(9),
      R => '0'
    );
wlast_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wlast,
      Q => wlast_q,
      R => '0'
    );
wready_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wready,
      Q => wready_q,
      R => '0'
    );
\wstrb_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(0),
      Q => wstrb_q(0),
      R => '0'
    );
\wstrb_q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(1),
      Q => wstrb_q(1),
      R => '0'
    );
\wstrb_q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(2),
      Q => wstrb_q(2),
      R => '0'
    );
\wstrb_q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(3),
      Q => wstrb_q(3),
      R => '0'
    );
\wstrb_q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(4),
      Q => wstrb_q(4),
      R => '0'
    );
\wstrb_q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(5),
      Q => wstrb_q(5),
      R => '0'
    );
\wstrb_q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(6),
      Q => wstrb_q(6),
      R => '0'
    );
\wstrb_q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wstrb(7),
      Q => wstrb_q(7),
      R => '0'
    );
\wuser_q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wuser(0),
      Q => wuser_q,
      R => '0'
    );
wvalid_q_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => pc_axi_wvalid,
      Q => wvalid_q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pc_status : out STD_LOGIC_VECTOR ( 96 downto 0 );
    pc_asserted : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    pc_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_awvalid : in STD_LOGIC;
    pc_axi_awready : in STD_LOGIC;
    pc_axi_wlast : in STD_LOGIC;
    pc_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    pc_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axi_wvalid : in STD_LOGIC;
    pc_axi_wready : in STD_LOGIC;
    pc_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_bvalid : in STD_LOGIC;
    pc_axi_bready : in STD_LOGIC;
    pc_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pc_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    pc_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pc_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_axi_arvalid : in STD_LOGIC;
    pc_axi_arready : in STD_LOGIC;
    pc_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_rlast : in STD_LOGIC;
    pc_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    pc_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pc_axi_rvalid : in STD_LOGIC;
    pc_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_s02_pchk_0,axi_protocol_checker_v1_1_12_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_protocol_checker_v1_1_12_top,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 2;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_PC_AR_MAXWAITS : integer;
  attribute C_PC_AR_MAXWAITS of inst : label is 0;
  attribute C_PC_AW_MAXWAITS : integer;
  attribute C_PC_AW_MAXWAITS of inst : label is 0;
  attribute C_PC_B_MAXWAITS : integer;
  attribute C_PC_B_MAXWAITS of inst : label is 0;
  attribute C_PC_EXMON_WIDTH : integer;
  attribute C_PC_EXMON_WIDTH of inst : label is 0;
  attribute C_PC_HAS_SYSTEM_RESET : integer;
  attribute C_PC_HAS_SYSTEM_RESET of inst : label is 0;
  attribute C_PC_MAXRBURSTS : integer;
  attribute C_PC_MAXRBURSTS of inst : label is 2;
  attribute C_PC_MAXWBURSTS : integer;
  attribute C_PC_MAXWBURSTS of inst : label is 2;
  attribute C_PC_MAX_BURST_LENGTH : integer;
  attribute C_PC_MAX_BURST_LENGTH of inst : label is 256;
  attribute C_PC_MESSAGE_LEVEL : integer;
  attribute C_PC_MESSAGE_LEVEL of inst : label is 2;
  attribute C_PC_R_MAXWAITS : integer;
  attribute C_PC_R_MAXWAITS of inst : label is 0;
  attribute C_PC_STATUS_WIDTH : integer;
  attribute C_PC_STATUS_WIDTH of inst : label is 97;
  attribute C_PC_SUPPORTS_NARROW_BURST : integer;
  attribute C_PC_SUPPORTS_NARROW_BURST of inst : label is 1;
  attribute C_PC_W_MAXWAITS : integer;
  attribute C_PC_W_MAXWAITS of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute LP_AXI_SIZE : string;
  attribute LP_AXI_SIZE of inst : label is "3'b011";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_protocol_checker_v1_1_12_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      pc_asserted => pc_asserted,
      pc_axi_araddr(31 downto 0) => pc_axi_araddr(31 downto 0),
      pc_axi_arburst(1 downto 0) => pc_axi_arburst(1 downto 0),
      pc_axi_arcache(3 downto 0) => pc_axi_arcache(3 downto 0),
      pc_axi_arid(1 downto 0) => pc_axi_arid(1 downto 0),
      pc_axi_arlen(7 downto 0) => pc_axi_arlen(7 downto 0),
      pc_axi_arlock(0) => pc_axi_arlock(0),
      pc_axi_arprot(2 downto 0) => pc_axi_arprot(2 downto 0),
      pc_axi_arqos(3 downto 0) => pc_axi_arqos(3 downto 0),
      pc_axi_arready => pc_axi_arready,
      pc_axi_arregion(3 downto 0) => pc_axi_arregion(3 downto 0),
      pc_axi_arsize(2 downto 0) => pc_axi_arsize(2 downto 0),
      pc_axi_aruser(0) => '0',
      pc_axi_arvalid => pc_axi_arvalid,
      pc_axi_awaddr(31 downto 0) => pc_axi_awaddr(31 downto 0),
      pc_axi_awburst(1 downto 0) => pc_axi_awburst(1 downto 0),
      pc_axi_awcache(3 downto 0) => pc_axi_awcache(3 downto 0),
      pc_axi_awid(1 downto 0) => pc_axi_awid(1 downto 0),
      pc_axi_awlen(7 downto 0) => pc_axi_awlen(7 downto 0),
      pc_axi_awlock(0) => pc_axi_awlock(0),
      pc_axi_awprot(2 downto 0) => pc_axi_awprot(2 downto 0),
      pc_axi_awqos(3 downto 0) => pc_axi_awqos(3 downto 0),
      pc_axi_awready => pc_axi_awready,
      pc_axi_awregion(3 downto 0) => pc_axi_awregion(3 downto 0),
      pc_axi_awsize(2 downto 0) => pc_axi_awsize(2 downto 0),
      pc_axi_awuser(0) => '0',
      pc_axi_awvalid => pc_axi_awvalid,
      pc_axi_bid(1 downto 0) => pc_axi_bid(1 downto 0),
      pc_axi_bready => pc_axi_bready,
      pc_axi_bresp(1 downto 0) => pc_axi_bresp(1 downto 0),
      pc_axi_buser(0) => '0',
      pc_axi_bvalid => pc_axi_bvalid,
      pc_axi_rdata(63 downto 0) => pc_axi_rdata(63 downto 0),
      pc_axi_rid(1 downto 0) => pc_axi_rid(1 downto 0),
      pc_axi_rlast => pc_axi_rlast,
      pc_axi_rready => pc_axi_rready,
      pc_axi_rresp(1 downto 0) => pc_axi_rresp(1 downto 0),
      pc_axi_ruser(0) => '0',
      pc_axi_rvalid => pc_axi_rvalid,
      pc_axi_wdata(63 downto 0) => pc_axi_wdata(63 downto 0),
      pc_axi_wid(1 downto 0) => B"00",
      pc_axi_wlast => pc_axi_wlast,
      pc_axi_wready => pc_axi_wready,
      pc_axi_wstrb(7 downto 0) => pc_axi_wstrb(7 downto 0),
      pc_axi_wuser(0) => '0',
      pc_axi_wvalid => pc_axi_wvalid,
      pc_status(96 downto 0) => pc_status(96 downto 0),
      system_resetn => '1'
    );
end STRUCTURE;
