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
  input  [11:0]               cfg_img_w             , // Image width
  input  [11:0]               cfg_img_h             , // Image width
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

reg [11:0] pix_cnt ;
reg [11:0] line_cnt;

wire invalrdy;
wire outvalrdy;

wire set_eof;

assign invalrdy = m_axi_stream_tvalid & m_axi_stream_tready;
assign outvalrdy = s_frm_rdy & s_frm_val;
assign m_axi_stream_tready = s_frm_rdy;
assign set_eof = (line_cnt == (cfg_img_h - 1'd1)) & m_axi_stream_tlast & invalrdy;

always@(posedge clk or negedge rst_n)
if(~rst_n                        ) pix_cnt <= 11'd0         ; else
if(m_axi_stream_tuser & invalrdy ) pix_cnt <= 11'd0         ; else // Reset at start of frame
if(m_axi_stream_tlast & invalrdy ) pix_cnt <= 11'd0         ; else // Reset at end of frame
if(invalrdy                      ) pix_cnt <= pix_cnt + 1'd1;      // Increment at each pixel
  
always@(posedge clk or negedge rst_n)
if(~rst_n                       ) line_cnt <= 11'd0          ; else
if(m_axi_stream_tuser & invalrdy) line_cnt <= 11'd0          ; else // Reset at start of frame
if(m_axi_stream_tlast & invalrdy) line_cnt <= line_cnt + 1'd1;      // Increment at each pixel

always@(posedge clk or negedge rst_n)
if(~rst_n                              ) s_frm_sol <= 1'b0; else
if(outvalrdy & s_frm_sol               ) s_frm_sol <= 1'b0; else // Reset start of line after it is transmitted
if(m_axi_stream_tuser & invalrdy       ) s_frm_sol <= 1'b1; else // Set start of line after last pixel of line is transmitted
if(outvalrdy & s_frm_eol & (~s_frm_eof)) s_frm_sol <= 1'b1;      // Set at start of frame
				
always@(posedge clk or negedge rst_n)
if(~rst_n               ) s_frm_eof <= 1'b0; else
if(outvalrdy & s_frm_eof) s_frm_eof <= 1'b0; else // Reset after end of frame is transmitted
if(set_eof              ) s_frm_eof <= 1'b1;      // Set when last pixel is received
  
always@(posedge clk or negedge rst_n)
if(~rst_n                            ) s_frm_val <= 1'b0; else
if(s_frm_rdy & (~m_axi_stream_tvalid)) s_frm_val <= 1'b0; else // Reset when ready and no valid data at the input
if(invalrdy                          ) s_frm_val <= 1'b1;      // Set if data is received
			 
always@(posedge clk or negedge rst_n)
if(~rst_n                       ) s_frm_eol <= 1'b0; else
if(outvalrdy & s_frm_eol        ) s_frm_eol <= 1'b0; else // Reset after end of line is transmitted
if(m_axi_stream_tlast & invalrdy) s_frm_eol <= 1'b1;      // Set when last pixel in a row is received
			 
always@(posedge clk or negedge rst_n)
if(~rst_n                        ) s_frm_sof <= 1'b0; else
if(outvalrdy & s_frm_sof         ) s_frm_sof <= 1'b0; else // Reset after start of frame is transmitted
if(m_axi_stream_tuser  & invalrdy) s_frm_sof <= 1'b1;      // Set when first pixel is received
			 			 
always@(posedge clk or negedge rst_n)
if(~rst_n  ) s_frm_data <= {(DATA_WIDTH){1'b0}}; else
if(invalrdy) s_frm_data <= m_axi_stream_tdata  ;
  			 
endmodule //axi_stream2Frame