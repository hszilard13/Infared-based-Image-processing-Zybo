// Project     : ir_filters
// Module Name : axi_stream2Frame
// Author      : Szilard Hegedus
// Created     : 01/21/2019
//--------------------------------------------------------------------------------------------------
// Description : Converts AXI4 Stream interface to Frame interface
//--------------------------------------------------------------------------------------------------
// Modification history :
// 11/15/2018 (SH): Initial version
//--------------------------------------------------------------------------------------------------


module axi_stream2frame#(
  parameter DATA_WIDTH = 24
)(
  input                       clk                   , // Syste clock
  input                       rst_n                 , // Asynchronous reset active low
//------------------------- Configuration interface ----------------------------------------------
  input  [10:0]               cfg_img_w             , // Image width
//------------------------- AXI-Stream interface -------------------------------------------------
  input                       m_axi_stream_tuser    , // Start of frame 
  input                       m_axi_stream_tvalid   , // Slave has valid data to be transferred
  input                       m_axi_stream_tlast    , // End of frame
  input     [DATA_WIDTH-1:0]  m_axi_stream_tdata    , // Data transferred from slave to master
  output                      m_axi_stream_tready   , // Master is ready to receive the data
// ------------------------------ Frame Interface ------------------------------------------------
  output reg                  s_frm_val             , // Master has valid data to be transferred
  input                       s_frm_rdy             , // Slave is ready to receive the data
  output reg [DATA_WIDTH-1:0] s_frm_data            , // Data transferred from master to slave
  output reg                  s_frm_sof             , // Start of Frame
  output reg                  s_frm_eof             , // End of Frame
  output reg                  s_frm_sol             , // Start of Line
  output reg                  s_frm_eol               // End of Line
);

reg [11:0] pix_cnt;

wire invalrdy;
assign invalrdy = m_axi_stream_tvalid & s_frm_rdy;
assign m_axi_stream_tready = s_frm_rdy; 

always@(posedge clk or negedge rst_n)
  if(~rst_n                       ) pix_cnt <= 11'd0         ; else
  if(pix_cnt == (cfg_img_w - 1'd1)) pix_cnt <= 11'd0         ; else
  if(invalrdy                     ) pix_cnt <= pix_cnt + 1'd1;

always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_sol <= 1'b0                         ; else
             s_frm_sol <= pix_cnt == (cfg_img_w - 1'd1); 
				
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_eol <= 1'b0                         ; else
             s_frm_eol <= pix_cnt == (cfg_img_w - 2'd2); 
  
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_val <= 1'b0               ; else
             s_frm_val <= m_axi_stream_tvalid;
			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_eof <= 1'b0              ; else
             s_frm_eof <= m_axi_stream_tlast;
			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_sof <= 1'b0              ; else
             s_frm_sof <= m_axi_stream_tuser;
			 			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_data <= {(DATA_WIDTH){1'b0}}; else
             s_frm_data <= m_axi_stream_tdata  ;
			 
endmodule //axi_stream2Frame