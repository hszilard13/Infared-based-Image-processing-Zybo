// Project     : ir_filters
// Module Name : inv_image
// Author      : Szilard Hegedus
// Created     : 01/21/2019
//--------------------------------------------------------------------------------------------------
// Description : Converts AXI4 Stream interface to Frame interface
//--------------------------------------------------------------------------------------------------
// Modification history :
// 11/15/2018 (SH): Initial version
//--------------------------------------------------------------------------------------------------


module inv_image#(
  parameter DATA_WIDTH = 24
)(
  input                       clk       , // Syste clock
  input                       rst_n     , // Asynchronous reset active low
//------------------------- Configuration interface ----------------------------------------------
  input  [10:0]               cfg_img_w , // Image width
  input                       cfg_negate,
//------------------------------- Frame interface -------------------------------------------------
  input                       m_frm_val , // Master has valid data to be transferred
  output                      m_frm_rdy , // Slave is ready to receive the data
  input     [DATA_WIDTH-1:0]  m_frm_data, // Data transferred from master to slave
  input                       m_frm_sof , // Start of Frame
  input                       m_frm_eof , // End of Frame
  input                       m_frm_sol , // Start of Line
  input                       m_frm_eol , // End of Line
// ------------------------------ Frame Interface ------------------------------------------------
  output reg                  s_frm_val , // Master has valid data to be transferred
  input                       s_frm_rdy , // Slave is ready to receive the data
  output reg [DATA_WIDTH-1:0] s_frm_data, // Data transferred from master to slave
  output reg                  s_frm_sof , // Start of Frame
  output reg                  s_frm_eof , // End of Frame
  output reg                  s_frm_sol , // Start of Line
  output reg                  s_frm_eol   // End of Line
);

assign m_frm_rdy = s_frm_rdy;

always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_val <= 1'b0     ; else
             s_frm_val <= m_frm_val;
			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_sol <= 1'b0     ; else
             s_frm_sol <= m_frm_sol;
			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_sof <= 1'b0     ; else
             s_frm_sof <= m_frm_sof;
			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_eol <= 1'b0     ; else
             s_frm_eol <= m_frm_eol;
		
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_eof <= 1'b0     ; else
             s_frm_eof <= m_frm_eof;
			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) s_frm_data <= {(DATA_WIDTH){1'b0}}                                ; else
  if(m_frm_val & m_frm_rdy) s_frm_data <= cfg_negate ? ~m_frm_data : m_frm_data;
	 
endmodule //axi_stream2Frame