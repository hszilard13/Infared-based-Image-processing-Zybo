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


module fifo2frame#(
  parameter DATA_WIDTH = 24
)(
  input                       clk                   , // Syste clock
  input                       rst_n                 , // Asynchronous reset active low
  input                       sw_rst                ,
//------------------------- Configuration interface ----------------------------------------------
  input  [15:0]               cfg_img_w             , // Image width
  input  [15:0]               cfg_img_h             , // Image width
//------------------------- FIFO RD interface -------------------------------------------------
  output reg                  fifo_pop              , // Start of frame 
  input     [DATA_WIDTH-1:0]  fifo_popdata          , // Slave has valid data to be transferred
  input                       fifo_empty            , // End of frame
  input                       fifo_full             , // Data transferred from slave to master
  input                       fifo_almost_empty     ,
  input                       fifo_almost_full      ,
// ------------------------------ Frame Interface ------------------------------------------------
  output reg                  s_frm_val             , // Master has valid data to be transferred
  input                       s_frm_rdy             , // Slave is ready to receive the data
  output     [DATA_WIDTH-1:0] s_frm_data            , // Data transferred from master to slave
  output reg                  s_frm_sof             , // Start of Frame
  output reg                  s_frm_eof             , // End of Frame
  output reg                  s_frm_sol             , // Start of Line
  output reg                  s_frm_eol               // End of Line
);

reg [11:0] pix_cnt ;
reg [11:0] line_cnt;

wire fifo_rst_state;

assign fifo_rst_state = (~((~fifo_full) & (~fifo_empty)));

wire outvalrdy;

assign outvalrdy = s_frm_rdy & s_frm_val;

reg fifo_loaded;

always@(posedge clk or negedge rst_n)
if(~rst_n                        ) fifo_loaded <= 1'b0; else
if(sw_rst                        ) fifo_loaded <= 1'b0; else
if(fifo_rst_state &(~fifo_loaded)) fifo_loaded <= 1'b0; else
if(fifo_almost_full              ) fifo_loaded <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                                   ) pix_cnt <= 11'd0         ; else
if(pix_cnt == (cfg_img_w - 1'd1) & outvalrdy) pix_cnt <= 11'd0         ; else
if(outvalrdy & fifo_loaded                  ) pix_cnt <= pix_cnt + 1'd1;
  
always@(posedge clk or negedge rst_n)
if(~rst_n                                                                        ) line_cnt <= 11'd0          ; else
if((line_cnt == (cfg_img_h - 1'd1)) & (pix_cnt == (cfg_img_w - 1'd1)) & outvalrdy) line_cnt <= 11'd0          ; else
if((pix_cnt == (cfg_img_w - 1'd1)) & outvalrdy & fifo_loaded                     ) line_cnt <= line_cnt + 1'd1;  
  

always@(posedge clk or negedge rst_n)
if(~rst_n                                                                        ) s_frm_sol <= 1'b0; else
if(outvalrdy & s_frm_sol                                                         ) s_frm_sol <= 1'b0; else
if(~fifo_rst_state & ~fifo_loaded & fifo_almost_full                             ) s_frm_sol <= 1'b1; else
if((line_cnt == (cfg_img_h - 1'd1)) & (pix_cnt == (cfg_img_w - 1'd1)) & outvalrdy) s_frm_sol <= 1'b1; else
if(outvalrdy & s_frm_eol & (~s_frm_eof)                                          ) s_frm_sol <= 1'b1; 
				
always@(posedge clk or negedge rst_n)
if(~rst_n                                                                         ) s_frm_eof <= 1'b0; else
if(outvalrdy & s_frm_eof                                                          ) s_frm_eof <= 1'b0; else
if((line_cnt == (cfg_img_h - 1'd1))  & (pix_cnt == (cfg_img_w - 2'd2)) & outvalrdy) s_frm_eof <= 1'b1; 
  
always@(posedge clk or negedge rst_n)
if(~rst_n                             ) s_frm_val <= 1'b0; else
if(s_frm_rdy & s_frm_val & (~fifo_pop)) s_frm_val <= 1'b0; else
if(s_frm_rdy & fifo_loaded            ) s_frm_val <= 1'b1; 
		   
always@(posedge clk or negedge rst_n)
if(~rst_n                                     ) s_frm_eol <= 1'b0; else
if(outvalrdy & s_frm_eol                      ) s_frm_eol <= 1'b0; else
if((pix_cnt == (cfg_img_w - 2'd2)) & outvalrdy) s_frm_eol <= 1'b1;
			 
always@(posedge clk or negedge rst_n)
if(~rst_n                                                                        ) s_frm_sof <= 1'b0; else
if(outvalrdy & s_frm_sof                                                         ) s_frm_sof <= 1'b0; else
if(~fifo_rst_state & ~fifo_loaded & fifo_almost_full                             ) s_frm_sof <= 1'b1; else
if((line_cnt == (cfg_img_h - 1'd1)) & (pix_cnt == (cfg_img_w - 1'd1)) & outvalrdy) s_frm_sof <= 1'b1;
  
always@(posedge clk or negedge rst_n)
if(~rst_n                                               ) fifo_pop <= 1'd0                 ; else
if(fifo_almost_empty & fifo_pop                         ) fifo_pop <= 1'd0                 ; else
if(fifo_almost_full & (~fifo_loaded) & (~fifo_rst_state)) fifo_pop <= 1'd1                 ; else
if(fifo_loaded                                          ) fifo_pop <= s_frm_rdy & s_frm_val;
			  
assign s_frm_data = fifo_popdata;
  			 
endmodule //axi_stream2Frame