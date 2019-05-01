// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 30 14:33:22 2019
// Host        : shegedus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_m00_pchk_0_stub.v
// Design      : system_m00_pchk_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_protocol_checker_v1_1_12_top,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(pc_status, pc_asserted, aclk, aresetn, 
  pc_axi_awid, pc_axi_awaddr, pc_axi_awlen, pc_axi_awsize, pc_axi_awburst, pc_axi_awlock, 
  pc_axi_awcache, pc_axi_awprot, pc_axi_awqos, pc_axi_awvalid, pc_axi_awready, pc_axi_wid, 
  pc_axi_wlast, pc_axi_wdata, pc_axi_wstrb, pc_axi_wvalid, pc_axi_wready, pc_axi_bid, 
  pc_axi_bresp, pc_axi_bvalid, pc_axi_bready, pc_axi_arid, pc_axi_araddr, pc_axi_arlen, 
  pc_axi_arsize, pc_axi_arburst, pc_axi_arlock, pc_axi_arcache, pc_axi_arprot, pc_axi_arqos, 
  pc_axi_arvalid, pc_axi_arready, pc_axi_rid, pc_axi_rlast, pc_axi_rdata, pc_axi_rresp, 
  pc_axi_rvalid, pc_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="pc_status[96:0],pc_asserted,aclk,aresetn,pc_axi_awid[3:0],pc_axi_awaddr[31:0],pc_axi_awlen[3:0],pc_axi_awsize[2:0],pc_axi_awburst[1:0],pc_axi_awlock[1:0],pc_axi_awcache[3:0],pc_axi_awprot[2:0],pc_axi_awqos[3:0],pc_axi_awvalid,pc_axi_awready,pc_axi_wid[3:0],pc_axi_wlast,pc_axi_wdata[63:0],pc_axi_wstrb[7:0],pc_axi_wvalid,pc_axi_wready,pc_axi_bid[3:0],pc_axi_bresp[1:0],pc_axi_bvalid,pc_axi_bready,pc_axi_arid[3:0],pc_axi_araddr[31:0],pc_axi_arlen[3:0],pc_axi_arsize[2:0],pc_axi_arburst[1:0],pc_axi_arlock[1:0],pc_axi_arcache[3:0],pc_axi_arprot[2:0],pc_axi_arqos[3:0],pc_axi_arvalid,pc_axi_arready,pc_axi_rid[3:0],pc_axi_rlast,pc_axi_rdata[63:0],pc_axi_rresp[1:0],pc_axi_rvalid,pc_axi_rready" */;
  output [96:0]pc_status;
  output pc_asserted;
  input aclk;
  input aresetn;
  input [3:0]pc_axi_awid;
  input [31:0]pc_axi_awaddr;
  input [3:0]pc_axi_awlen;
  input [2:0]pc_axi_awsize;
  input [1:0]pc_axi_awburst;
  input [1:0]pc_axi_awlock;
  input [3:0]pc_axi_awcache;
  input [2:0]pc_axi_awprot;
  input [3:0]pc_axi_awqos;
  input pc_axi_awvalid;
  input pc_axi_awready;
  input [3:0]pc_axi_wid;
  input pc_axi_wlast;
  input [63:0]pc_axi_wdata;
  input [7:0]pc_axi_wstrb;
  input pc_axi_wvalid;
  input pc_axi_wready;
  input [3:0]pc_axi_bid;
  input [1:0]pc_axi_bresp;
  input pc_axi_bvalid;
  input pc_axi_bready;
  input [3:0]pc_axi_arid;
  input [31:0]pc_axi_araddr;
  input [3:0]pc_axi_arlen;
  input [2:0]pc_axi_arsize;
  input [1:0]pc_axi_arburst;
  input [1:0]pc_axi_arlock;
  input [3:0]pc_axi_arcache;
  input [2:0]pc_axi_arprot;
  input [3:0]pc_axi_arqos;
  input pc_axi_arvalid;
  input pc_axi_arready;
  input [3:0]pc_axi_rid;
  input pc_axi_rlast;
  input [63:0]pc_axi_rdata;
  input [1:0]pc_axi_rresp;
  input pc_axi_rvalid;
  input pc_axi_rready;
endmodule
