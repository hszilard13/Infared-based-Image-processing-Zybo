// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Tue Apr 30 14:44:21 2019
// Host        : shegedus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Projects/2018/Infa-red-based-Image-processing-Zybo/src/bd/system/ip/system_AXI_BayerToRGB_1_0/system_AXI_BayerToRGB_1_0_stub.v
// Design      : system_AXI_BayerToRGB_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_BayerToRGB,Vivado 2016.4" *)
module system_AXI_BayerToRGB_1_0(StreamClk, sStreamReset_n, 
  s_axis_video_tready, s_axis_video_tdata, s_axis_video_tvalid, s_axis_video_tuser, 
  s_axis_video_tlast, m_axis_video_tready, m_axis_video_tdata, m_axis_video_tvalid, 
  m_axis_video_tuser, m_axis_video_tlast)
/* synthesis syn_black_box black_box_pad_pin="StreamClk,sStreamReset_n,s_axis_video_tready,s_axis_video_tdata[39:0],s_axis_video_tvalid,s_axis_video_tuser,s_axis_video_tlast,m_axis_video_tready,m_axis_video_tdata[31:0],m_axis_video_tvalid,m_axis_video_tuser,m_axis_video_tlast" */;
  input StreamClk;
  input sStreamReset_n;
  output s_axis_video_tready;
  input [39:0]s_axis_video_tdata;
  input s_axis_video_tvalid;
  input s_axis_video_tuser;
  input s_axis_video_tlast;
  input m_axis_video_tready;
  output [31:0]m_axis_video_tdata;
  output m_axis_video_tvalid;
  output m_axis_video_tuser;
  output m_axis_video_tlast;
endmodule
