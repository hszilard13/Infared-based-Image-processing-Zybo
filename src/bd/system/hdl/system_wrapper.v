//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Tue Apr 30 15:26:29 2019
//Host        : shegedus running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (APB_M_paddr,
    APB_M_penable,
    APB_M_prdata,
    APB_M_pready,
    APB_M_psel,
    APB_M_pslverr,
    APB_M_pwdata,
    APB_M_pwrite,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIFO_READ_1_empty,
    FIFO_READ_1_rd_data,
    FIFO_READ_1_rd_en,
    FIFO_READ_2_empty,
    FIFO_READ_2_rd_data,
    FIFO_READ_2_rd_en,
    FIFO_READ_3_empty,
    FIFO_READ_3_rd_data,
    FIFO_READ_3_rd_en,
    FIFO_READ_4_empty,
    FIFO_READ_4_rd_data,
    FIFO_READ_4_rd_en,
    FIFO_READ_5_empty,
    FIFO_READ_5_rd_data,
    FIFO_READ_5_rd_en,
    FIFO_READ_6_empty,
    FIFO_READ_6_rd_data,
    FIFO_READ_6_rd_en,
    FIFO_READ_7_empty,
    FIFO_READ_7_rd_data,
    FIFO_READ_7_rd_en,
    FIFO_READ_empty,
    FIFO_READ_rd_data,
    FIFO_READ_rd_en,
    FIFO_WRITE_1_full,
    FIFO_WRITE_1_wr_data,
    FIFO_WRITE_1_wr_en,
    FIFO_WRITE_2_full,
    FIFO_WRITE_2_wr_data,
    FIFO_WRITE_2_wr_en,
    FIFO_WRITE_3_full,
    FIFO_WRITE_3_wr_data,
    FIFO_WRITE_3_wr_en,
    FIFO_WRITE_4_full,
    FIFO_WRITE_4_wr_data,
    FIFO_WRITE_4_wr_en,
    FIFO_WRITE_5_full,
    FIFO_WRITE_5_wr_data,
    FIFO_WRITE_5_wr_en,
    FIFO_WRITE_6_full,
    FIFO_WRITE_6_wr_data,
    FIFO_WRITE_6_wr_en,
    FIFO_WRITE_7_full,
    FIFO_WRITE_7_wr_data,
    FIFO_WRITE_7_wr_en,
    FIFO_WRITE_full,
    FIFO_WRITE_wr_data,
    FIFO_WRITE_wr_en,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    M_AXIS_MM2S_tdata,
    M_AXIS_MM2S_tkeep,
    M_AXIS_MM2S_tlast,
    M_AXIS_MM2S_tready,
    M_AXIS_MM2S_tuser,
    M_AXIS_MM2S_tvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arsize,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awsize,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S_AXIS_S2MM_tdata,
    S_AXIS_S2MM_tkeep,
    S_AXIS_S2MM_tlast,
    S_AXIS_S2MM_tready,
    S_AXIS_S2MM_tuser,
    S_AXIS_S2MM_tvalid,
    axi_clk_0,
    axi_clk_1,
    axi_clk_2,
    axi_rst_0,
    axi_rst_1,
    axi_rst_2,
    cam_gpio_tri_io,
    cam_iic_scl_io,
    cam_iic_sda_io,
    clk,
    clk_1,
    clk_2,
    clk_3,
    clk_4,
    clk_5,
    data_count,
    data_count_1,
    data_count_2,
    data_count_3,
    data_count_4,
    data_count_5,
    data_count_6,
    data_count_7,
    dphy_clk_lp_n,
    dphy_clk_lp_p,
    dphy_data_hs_n,
    dphy_data_hs_p,
    dphy_data_lp_n,
    dphy_data_lp_p,
    dphy_hs_clock_clk_n,
    dphy_hs_clock_clk_p,
    gpio_tri_i,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_data_n,
    hdmi_tx_data_p,
    rd_eof_intr,
    rst,
    rst_1,
    rst_2,
    rst_3,
    rst_4,
    rst_n,
    wr_eof_intr);
  output [31:0]APB_M_paddr;
  output APB_M_penable;
  input [31:0]APB_M_prdata;
  input [0:0]APB_M_pready;
  output [0:0]APB_M_psel;
  input [0:0]APB_M_pslverr;
  output [31:0]APB_M_pwdata;
  output APB_M_pwrite;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FIFO_READ_1_empty;
  output [47:0]FIFO_READ_1_rd_data;
  input FIFO_READ_1_rd_en;
  output FIFO_READ_2_empty;
  output [47:0]FIFO_READ_2_rd_data;
  input FIFO_READ_2_rd_en;
  output FIFO_READ_3_empty;
  output [47:0]FIFO_READ_3_rd_data;
  input FIFO_READ_3_rd_en;
  output FIFO_READ_4_empty;
  output [47:0]FIFO_READ_4_rd_data;
  input FIFO_READ_4_rd_en;
  output FIFO_READ_5_empty;
  output [63:0]FIFO_READ_5_rd_data;
  input FIFO_READ_5_rd_en;
  output FIFO_READ_6_empty;
  output [63:0]FIFO_READ_6_rd_data;
  input FIFO_READ_6_rd_en;
  output FIFO_READ_7_empty;
  output [63:0]FIFO_READ_7_rd_data;
  input FIFO_READ_7_rd_en;
  output FIFO_READ_empty;
  output [47:0]FIFO_READ_rd_data;
  input FIFO_READ_rd_en;
  output FIFO_WRITE_1_full;
  input [47:0]FIFO_WRITE_1_wr_data;
  input FIFO_WRITE_1_wr_en;
  output FIFO_WRITE_2_full;
  input [47:0]FIFO_WRITE_2_wr_data;
  input FIFO_WRITE_2_wr_en;
  output FIFO_WRITE_3_full;
  input [47:0]FIFO_WRITE_3_wr_data;
  input FIFO_WRITE_3_wr_en;
  output FIFO_WRITE_4_full;
  input [47:0]FIFO_WRITE_4_wr_data;
  input FIFO_WRITE_4_wr_en;
  output FIFO_WRITE_5_full;
  input [63:0]FIFO_WRITE_5_wr_data;
  input FIFO_WRITE_5_wr_en;
  output FIFO_WRITE_6_full;
  input [63:0]FIFO_WRITE_6_wr_data;
  input FIFO_WRITE_6_wr_en;
  output FIFO_WRITE_7_full;
  input [63:0]FIFO_WRITE_7_wr_data;
  input FIFO_WRITE_7_wr_en;
  output FIFO_WRITE_full;
  input [47:0]FIFO_WRITE_wr_data;
  input FIFO_WRITE_wr_en;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [23:0]M_AXIS_MM2S_tdata;
  output [2:0]M_AXIS_MM2S_tkeep;
  output M_AXIS_MM2S_tlast;
  input M_AXIS_MM2S_tready;
  output [0:0]M_AXIS_MM2S_tuser;
  output M_AXIS_MM2S_tvalid;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output [0:0]S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output [0:0]S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [0:0]S00_AXI_awvalid;
  output [3:0]S00_AXI_bid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [63:0]S00_AXI_rdata;
  output [3:0]S00_AXI_rid;
  output [0:0]S00_AXI_rlast;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [63:0]S00_AXI_wdata;
  input [0:0]S00_AXI_wlast;
  output [0:0]S00_AXI_wready;
  input [7:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [3:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input [0:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output [0:0]S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input [0:0]S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [3:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input [0:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output [0:0]S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input [0:0]S01_AXI_awvalid;
  output [3:0]S01_AXI_bid;
  input [0:0]S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  output [63:0]S01_AXI_rdata;
  output [3:0]S01_AXI_rid;
  output [0:0]S01_AXI_rlast;
  input [0:0]S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rvalid;
  input [63:0]S01_AXI_wdata;
  input [0:0]S01_AXI_wlast;
  output [0:0]S01_AXI_wready;
  input [7:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wvalid;
  input [31:0]S02_AXI_araddr;
  input [1:0]S02_AXI_arburst;
  input [3:0]S02_AXI_arcache;
  input [3:0]S02_AXI_arid;
  input [7:0]S02_AXI_arlen;
  input [0:0]S02_AXI_arlock;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arqos;
  output [0:0]S02_AXI_arready;
  input [2:0]S02_AXI_arsize;
  input [0:0]S02_AXI_arvalid;
  input [31:0]S02_AXI_awaddr;
  input [1:0]S02_AXI_awburst;
  input [3:0]S02_AXI_awcache;
  input [3:0]S02_AXI_awid;
  input [7:0]S02_AXI_awlen;
  input [0:0]S02_AXI_awlock;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awqos;
  output [0:0]S02_AXI_awready;
  input [2:0]S02_AXI_awsize;
  input [0:0]S02_AXI_awvalid;
  output [3:0]S02_AXI_bid;
  input [0:0]S02_AXI_bready;
  output [1:0]S02_AXI_bresp;
  output [0:0]S02_AXI_bvalid;
  output [63:0]S02_AXI_rdata;
  output [3:0]S02_AXI_rid;
  output [0:0]S02_AXI_rlast;
  input [0:0]S02_AXI_rready;
  output [1:0]S02_AXI_rresp;
  output [0:0]S02_AXI_rvalid;
  input [63:0]S02_AXI_wdata;
  input [0:0]S02_AXI_wlast;
  output [0:0]S02_AXI_wready;
  input [7:0]S02_AXI_wstrb;
  input [0:0]S02_AXI_wvalid;
  input [23:0]S_AXIS_S2MM_tdata;
  input [2:0]S_AXIS_S2MM_tkeep;
  input S_AXIS_S2MM_tlast;
  output S_AXIS_S2MM_tready;
  input [0:0]S_AXIS_S2MM_tuser;
  input S_AXIS_S2MM_tvalid;
  input axi_clk_0;
  input axi_clk_1;
  input axi_clk_2;
  input axi_rst_0;
  input axi_rst_1;
  input axi_rst_2;
  inout [1:0]cam_gpio_tri_io;
  inout cam_iic_scl_io;
  inout cam_iic_sda_io;
  output clk;
  input clk_1;
  input clk_2;
  input clk_3;
  input clk_4;
  input clk_5;
  output [10:0]data_count;
  output [10:0]data_count_1;
  output [10:0]data_count_2;
  output [10:0]data_count_3;
  output [10:0]data_count_4;
  output [10:0]data_count_5;
  output [10:0]data_count_6;
  output [10:0]data_count_7;
  input dphy_clk_lp_n;
  input dphy_clk_lp_p;
  input [1:0]dphy_data_hs_n;
  input [1:0]dphy_data_hs_p;
  input [1:0]dphy_data_lp_n;
  input [1:0]dphy_data_lp_p;
  input dphy_hs_clock_clk_n;
  input dphy_hs_clock_clk_p;
  input [7:0]gpio_tri_i;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_data_n;
  output [2:0]hdmi_tx_data_p;
  input rd_eof_intr;
  input rst;
  input rst_1;
  input rst_2;
  input rst_3;
  input rst_4;
  output [0:0]rst_n;
  input wr_eof_intr;

  wire [31:0]APB_M_paddr;
  wire APB_M_penable;
  wire [31:0]APB_M_prdata;
  wire [0:0]APB_M_pready;
  wire [0:0]APB_M_psel;
  wire [0:0]APB_M_pslverr;
  wire [31:0]APB_M_pwdata;
  wire APB_M_pwrite;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIFO_READ_1_empty;
  wire [47:0]FIFO_READ_1_rd_data;
  wire FIFO_READ_1_rd_en;
  wire FIFO_READ_2_empty;
  wire [47:0]FIFO_READ_2_rd_data;
  wire FIFO_READ_2_rd_en;
  wire FIFO_READ_3_empty;
  wire [47:0]FIFO_READ_3_rd_data;
  wire FIFO_READ_3_rd_en;
  wire FIFO_READ_4_empty;
  wire [47:0]FIFO_READ_4_rd_data;
  wire FIFO_READ_4_rd_en;
  wire FIFO_READ_5_empty;
  wire [63:0]FIFO_READ_5_rd_data;
  wire FIFO_READ_5_rd_en;
  wire FIFO_READ_6_empty;
  wire [63:0]FIFO_READ_6_rd_data;
  wire FIFO_READ_6_rd_en;
  wire FIFO_READ_7_empty;
  wire [63:0]FIFO_READ_7_rd_data;
  wire FIFO_READ_7_rd_en;
  wire FIFO_READ_empty;
  wire [47:0]FIFO_READ_rd_data;
  wire FIFO_READ_rd_en;
  wire FIFO_WRITE_1_full;
  wire [47:0]FIFO_WRITE_1_wr_data;
  wire FIFO_WRITE_1_wr_en;
  wire FIFO_WRITE_2_full;
  wire [47:0]FIFO_WRITE_2_wr_data;
  wire FIFO_WRITE_2_wr_en;
  wire FIFO_WRITE_3_full;
  wire [47:0]FIFO_WRITE_3_wr_data;
  wire FIFO_WRITE_3_wr_en;
  wire FIFO_WRITE_4_full;
  wire [47:0]FIFO_WRITE_4_wr_data;
  wire FIFO_WRITE_4_wr_en;
  wire FIFO_WRITE_5_full;
  wire [63:0]FIFO_WRITE_5_wr_data;
  wire FIFO_WRITE_5_wr_en;
  wire FIFO_WRITE_6_full;
  wire [63:0]FIFO_WRITE_6_wr_data;
  wire FIFO_WRITE_6_wr_en;
  wire FIFO_WRITE_7_full;
  wire [63:0]FIFO_WRITE_7_wr_data;
  wire FIFO_WRITE_7_wr_en;
  wire FIFO_WRITE_full;
  wire [47:0]FIFO_WRITE_wr_data;
  wire FIFO_WRITE_wr_en;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [23:0]M_AXIS_MM2S_tdata;
  wire [2:0]M_AXIS_MM2S_tkeep;
  wire M_AXIS_MM2S_tlast;
  wire M_AXIS_MM2S_tready;
  wire [0:0]M_AXIS_MM2S_tuser;
  wire M_AXIS_MM2S_tvalid;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [3:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_arvalid;
  wire [31:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [3:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awvalid;
  wire [3:0]S00_AXI_bid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [63:0]S00_AXI_rdata;
  wire [3:0]S00_AXI_rid;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [63:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [7:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [31:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire [0:0]S01_AXI_arready;
  wire [2:0]S01_AXI_arsize;
  wire [0:0]S01_AXI_arvalid;
  wire [31:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire [0:0]S01_AXI_awready;
  wire [2:0]S01_AXI_awsize;
  wire [0:0]S01_AXI_awvalid;
  wire [3:0]S01_AXI_bid;
  wire [0:0]S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire [0:0]S01_AXI_bvalid;
  wire [63:0]S01_AXI_rdata;
  wire [3:0]S01_AXI_rid;
  wire [0:0]S01_AXI_rlast;
  wire [0:0]S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire [0:0]S01_AXI_rvalid;
  wire [63:0]S01_AXI_wdata;
  wire [0:0]S01_AXI_wlast;
  wire [0:0]S01_AXI_wready;
  wire [7:0]S01_AXI_wstrb;
  wire [0:0]S01_AXI_wvalid;
  wire [31:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [3:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire [0:0]S02_AXI_arready;
  wire [2:0]S02_AXI_arsize;
  wire [0:0]S02_AXI_arvalid;
  wire [31:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [3:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire [0:0]S02_AXI_awready;
  wire [2:0]S02_AXI_awsize;
  wire [0:0]S02_AXI_awvalid;
  wire [3:0]S02_AXI_bid;
  wire [0:0]S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire [0:0]S02_AXI_bvalid;
  wire [63:0]S02_AXI_rdata;
  wire [3:0]S02_AXI_rid;
  wire [0:0]S02_AXI_rlast;
  wire [0:0]S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire [0:0]S02_AXI_rvalid;
  wire [63:0]S02_AXI_wdata;
  wire [0:0]S02_AXI_wlast;
  wire [0:0]S02_AXI_wready;
  wire [7:0]S02_AXI_wstrb;
  wire [0:0]S02_AXI_wvalid;
  wire [23:0]S_AXIS_S2MM_tdata;
  wire [2:0]S_AXIS_S2MM_tkeep;
  wire S_AXIS_S2MM_tlast;
  wire S_AXIS_S2MM_tready;
  wire [0:0]S_AXIS_S2MM_tuser;
  wire S_AXIS_S2MM_tvalid;
  wire axi_clk_0;
  wire axi_clk_1;
  wire axi_clk_2;
  wire axi_rst_0;
  wire axi_rst_1;
  wire axi_rst_2;
  wire [0:0]cam_gpio_tri_i_0;
  wire [1:1]cam_gpio_tri_i_1;
  wire [0:0]cam_gpio_tri_io_0;
  wire [1:1]cam_gpio_tri_io_1;
  wire [0:0]cam_gpio_tri_o_0;
  wire [1:1]cam_gpio_tri_o_1;
  wire [0:0]cam_gpio_tri_t_0;
  wire [1:1]cam_gpio_tri_t_1;
  wire cam_iic_scl_i;
  wire cam_iic_scl_io;
  wire cam_iic_scl_o;
  wire cam_iic_scl_t;
  wire cam_iic_sda_i;
  wire cam_iic_sda_io;
  wire cam_iic_sda_o;
  wire cam_iic_sda_t;
  wire clk;
  wire clk_1;
  wire clk_2;
  wire clk_3;
  wire clk_4;
  wire clk_5;
  wire [10:0]data_count;
  wire [10:0]data_count_1;
  wire [10:0]data_count_2;
  wire [10:0]data_count_3;
  wire [10:0]data_count_4;
  wire [10:0]data_count_5;
  wire [10:0]data_count_6;
  wire [10:0]data_count_7;
  wire dphy_clk_lp_n;
  wire dphy_clk_lp_p;
  wire [1:0]dphy_data_hs_n;
  wire [1:0]dphy_data_hs_p;
  wire [1:0]dphy_data_lp_n;
  wire [1:0]dphy_data_lp_p;
  wire dphy_hs_clock_clk_n;
  wire dphy_hs_clock_clk_p;
  wire [7:0]gpio_tri_i;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_data_n;
  wire [2:0]hdmi_tx_data_p;
  wire rd_eof_intr;
  wire rst;
  wire rst_1;
  wire rst_2;
  wire rst_3;
  wire rst_4;
  wire [0:0]rst_n;
  wire wr_eof_intr;

  IOBUF cam_gpio_tri_iobuf_0
       (.I(cam_gpio_tri_o_0),
        .IO(cam_gpio_tri_io[0]),
        .O(cam_gpio_tri_i_0),
        .T(cam_gpio_tri_t_0));
  IOBUF cam_gpio_tri_iobuf_1
       (.I(cam_gpio_tri_o_1),
        .IO(cam_gpio_tri_io[1]),
        .O(cam_gpio_tri_i_1),
        .T(cam_gpio_tri_t_1));
  IOBUF cam_iic_scl_iobuf
       (.I(cam_iic_scl_o),
        .IO(cam_iic_scl_io),
        .O(cam_iic_scl_i),
        .T(cam_iic_scl_t));
  IOBUF cam_iic_sda_iobuf
       (.I(cam_iic_sda_o),
        .IO(cam_iic_sda_io),
        .O(cam_iic_sda_i),
        .T(cam_iic_sda_t));
  system system_i
       (.APB_M_paddr(APB_M_paddr),
        .APB_M_penable(APB_M_penable),
        .APB_M_prdata(APB_M_prdata),
        .APB_M_pready(APB_M_pready),
        .APB_M_psel(APB_M_psel),
        .APB_M_pslverr(APB_M_pslverr),
        .APB_M_pwdata(APB_M_pwdata),
        .APB_M_pwrite(APB_M_pwrite),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIFO_READ_1_empty(FIFO_READ_1_empty),
        .FIFO_READ_1_rd_data(FIFO_READ_1_rd_data),
        .FIFO_READ_1_rd_en(FIFO_READ_1_rd_en),
        .FIFO_READ_2_empty(FIFO_READ_2_empty),
        .FIFO_READ_2_rd_data(FIFO_READ_2_rd_data),
        .FIFO_READ_2_rd_en(FIFO_READ_2_rd_en),
        .FIFO_READ_3_empty(FIFO_READ_3_empty),
        .FIFO_READ_3_rd_data(FIFO_READ_3_rd_data),
        .FIFO_READ_3_rd_en(FIFO_READ_3_rd_en),
        .FIFO_READ_4_empty(FIFO_READ_4_empty),
        .FIFO_READ_4_rd_data(FIFO_READ_4_rd_data),
        .FIFO_READ_4_rd_en(FIFO_READ_4_rd_en),
        .FIFO_READ_5_empty(FIFO_READ_5_empty),
        .FIFO_READ_5_rd_data(FIFO_READ_5_rd_data),
        .FIFO_READ_5_rd_en(FIFO_READ_5_rd_en),
        .FIFO_READ_6_empty(FIFO_READ_6_empty),
        .FIFO_READ_6_rd_data(FIFO_READ_6_rd_data),
        .FIFO_READ_6_rd_en(FIFO_READ_6_rd_en),
        .FIFO_READ_7_empty(FIFO_READ_7_empty),
        .FIFO_READ_7_rd_data(FIFO_READ_7_rd_data),
        .FIFO_READ_7_rd_en(FIFO_READ_7_rd_en),
        .FIFO_READ_empty(FIFO_READ_empty),
        .FIFO_READ_rd_data(FIFO_READ_rd_data),
        .FIFO_READ_rd_en(FIFO_READ_rd_en),
        .FIFO_WRITE_1_full(FIFO_WRITE_1_full),
        .FIFO_WRITE_1_wr_data(FIFO_WRITE_1_wr_data),
        .FIFO_WRITE_1_wr_en(FIFO_WRITE_1_wr_en),
        .FIFO_WRITE_2_full(FIFO_WRITE_2_full),
        .FIFO_WRITE_2_wr_data(FIFO_WRITE_2_wr_data),
        .FIFO_WRITE_2_wr_en(FIFO_WRITE_2_wr_en),
        .FIFO_WRITE_3_full(FIFO_WRITE_3_full),
        .FIFO_WRITE_3_wr_data(FIFO_WRITE_3_wr_data),
        .FIFO_WRITE_3_wr_en(FIFO_WRITE_3_wr_en),
        .FIFO_WRITE_4_full(FIFO_WRITE_4_full),
        .FIFO_WRITE_4_wr_data(FIFO_WRITE_4_wr_data),
        .FIFO_WRITE_4_wr_en(FIFO_WRITE_4_wr_en),
        .FIFO_WRITE_5_full(FIFO_WRITE_5_full),
        .FIFO_WRITE_5_wr_data(FIFO_WRITE_5_wr_data),
        .FIFO_WRITE_5_wr_en(FIFO_WRITE_5_wr_en),
        .FIFO_WRITE_6_full(FIFO_WRITE_6_full),
        .FIFO_WRITE_6_wr_data(FIFO_WRITE_6_wr_data),
        .FIFO_WRITE_6_wr_en(FIFO_WRITE_6_wr_en),
        .FIFO_WRITE_7_full(FIFO_WRITE_7_full),
        .FIFO_WRITE_7_wr_data(FIFO_WRITE_7_wr_data),
        .FIFO_WRITE_7_wr_en(FIFO_WRITE_7_wr_en),
        .FIFO_WRITE_full(FIFO_WRITE_full),
        .FIFO_WRITE_wr_data(FIFO_WRITE_wr_data),
        .FIFO_WRITE_wr_en(FIFO_WRITE_wr_en),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO_tri_i(gpio_tri_i),
        .M_AXIS_MM2S_tdata(M_AXIS_MM2S_tdata),
        .M_AXIS_MM2S_tkeep(M_AXIS_MM2S_tkeep),
        .M_AXIS_MM2S_tlast(M_AXIS_MM2S_tlast),
        .M_AXIS_MM2S_tready(M_AXIS_MM2S_tready),
        .M_AXIS_MM2S_tuser(M_AXIS_MM2S_tuser),
        .M_AXIS_MM2S_tvalid(M_AXIS_MM2S_tvalid),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arsize(S01_AXI_arsize),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awsize(S01_AXI_awsize),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bid(S01_AXI_bid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rid(S01_AXI_rid),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arid(S02_AXI_arid),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arsize(S02_AXI_arsize),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awid(S02_AXI_awid),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awsize(S02_AXI_awsize),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bid(S02_AXI_bid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rid(S02_AXI_rid),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .S_AXIS_S2MM_tdata(S_AXIS_S2MM_tdata),
        .S_AXIS_S2MM_tkeep(S_AXIS_S2MM_tkeep),
        .S_AXIS_S2MM_tlast(S_AXIS_S2MM_tlast),
        .S_AXIS_S2MM_tready(S_AXIS_S2MM_tready),
        .S_AXIS_S2MM_tuser(S_AXIS_S2MM_tuser),
        .S_AXIS_S2MM_tvalid(S_AXIS_S2MM_tvalid),
        .axi_clk_0(axi_clk_0),
        .axi_clk_1(axi_clk_1),
        .axi_clk_2(axi_clk_2),
        .axi_rst_0(axi_rst_0),
        .axi_rst_1(axi_rst_1),
        .axi_rst_2(axi_rst_2),
        .cam_gpio_tri_i({cam_gpio_tri_i_1,cam_gpio_tri_i_0}),
        .cam_gpio_tri_o({cam_gpio_tri_o_1,cam_gpio_tri_o_0}),
        .cam_gpio_tri_t({cam_gpio_tri_t_1,cam_gpio_tri_t_0}),
        .cam_iic_scl_i(cam_iic_scl_i),
        .cam_iic_scl_o(cam_iic_scl_o),
        .cam_iic_scl_t(cam_iic_scl_t),
        .cam_iic_sda_i(cam_iic_sda_i),
        .cam_iic_sda_o(cam_iic_sda_o),
        .cam_iic_sda_t(cam_iic_sda_t),
        .clk(clk),
        .clk_1(clk_1),
        .clk_2(clk_2),
        .clk_3(clk_3),
        .clk_4(clk_4),
        .clk_5(clk_5),
        .data_count(data_count),
        .data_count_1(data_count_1),
        .data_count_2(data_count_2),
        .data_count_3(data_count_3),
        .data_count_4(data_count_4),
        .data_count_5(data_count_5),
        .data_count_6(data_count_6),
        .data_count_7(data_count_7),
        .dphy_clk_lp_n(dphy_clk_lp_n),
        .dphy_clk_lp_p(dphy_clk_lp_p),
        .dphy_data_hs_n(dphy_data_hs_n),
        .dphy_data_hs_p(dphy_data_hs_p),
        .dphy_data_lp_n(dphy_data_lp_n),
        .dphy_data_lp_p(dphy_data_lp_p),
        .dphy_hs_clock_clk_n(dphy_hs_clock_clk_n),
        .dphy_hs_clock_clk_p(dphy_hs_clock_clk_p),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_data_n(hdmi_tx_data_n),
        .hdmi_tx_data_p(hdmi_tx_data_p),
        .rd_eof_intr(rd_eof_intr),
        .rst(rst),
        .rst_1(rst_1),
        .rst_2(rst_2),
        .rst_3(rst_3),
        .rst_4(rst_4),
        .rst_n(rst_n),
        .wr_eof_intr(wr_eof_intr));
endmodule
