// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Mar 19 12:02:19 2019
// Host        : shegedus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_system_ila_1_stub.v
// Design      : system_system_ila_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_c2c2,Vivado 2016.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, SLOT_0_FIFO_WRITE_wr_data, 
  SLOT_0_FIFO_WRITE_wr_en, SLOT_0_FIFO_WRITE_full, SLOT_1_FIFO_READ_rd_data, 
  SLOT_1_FIFO_READ_rd_en, SLOT_1_FIFO_READ_empty)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[10:0],SLOT_0_FIFO_WRITE_wr_data,SLOT_0_FIFO_WRITE_wr_en,SLOT_0_FIFO_WRITE_full,SLOT_1_FIFO_READ_rd_data,SLOT_1_FIFO_READ_rd_en,SLOT_1_FIFO_READ_empty" */;
  input clk;
  input [10:0]probe0;
  input SLOT_0_FIFO_WRITE_wr_data;
  input SLOT_0_FIFO_WRITE_wr_en;
  input SLOT_0_FIFO_WRITE_full;
  input SLOT_1_FIFO_READ_rd_data;
  input SLOT_1_FIFO_READ_rd_en;
  input SLOT_1_FIFO_READ_empty;
endmodule
