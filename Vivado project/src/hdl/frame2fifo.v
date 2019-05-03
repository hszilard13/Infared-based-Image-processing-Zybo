//--------------------------------------------------------------------------------------------------
// Project     : 
// Module Name : frame2fifo
// Author      : Szilard Hegedus
// Created     : 03/27/2018
//--------------------------------------------------------------------------------------------------
// Description : Converts frame interface to push/pop interface
//--------------------------------------------------------------------------------------------------
// Modification history :
// 03/27/2018 (SH): Initial version

module frame2fifo#(
  parameter DATA_WIDTH = 24
)(
  input                      clk             ,
  input                      rst_n           ,
  input                      sw_rst          ,
  input                      frm_val         , // Frame data valid
  input      [DATA_WIDTH-1:0]frm_data        , // Frame data
  input                      frm_sof         , // Frame start of frame
  input                      frm_eof         , // Frame end of frame
  input                      frm_sol         , // Frame start of line
  input                      frm_eol         , // Frame end of line
  output reg                 frm_rdy         , // Frame ready
  input                      fifo_full       ,
  input                      fifo_empty      ,
  input                      fifo_almost_full,
  output reg [DATA_WIDTH-1:0]fifo_pushdata   ,
  output reg                 fifo_push
);

reg fifo_loaded;

always@(posedge clk or negedge rst_n)
if(~rst_n                                         ) fifo_loaded <= 1'b0; else
if(~((~fifo_full) & (~fifo_empty)) &(~fifo_loaded)) fifo_loaded <= 1'b0; else
if(sw_rst                                         ) fifo_loaded <= 1'b0; else
if(fifo_almost_full                               ) fifo_loaded <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n) fifo_push <= 1'b0             ; else
           fifo_push <= frm_rdy & frm_val;

always@(posedge clk or negedge rst_n)
if(~rst_n      ) frm_rdy <= 1'b0             ; else
if(~fifo_loaded) frm_rdy <= 1'b1             ; else
if(fifo_loaded ) frm_rdy <= ~fifo_almost_full;

always@(posedge clk or negedge rst_n)
if(~rst_n) fifo_push <= 1'b0             ; else
           fifo_push <= frm_rdy & frm_val;

always@(posedge clk or negedge rst_n)
if(~rst_n         ) fifo_pushdata <= {DATA_WIDTH{1'b0}}; else
if(frm_val&frm_rdy) fifo_pushdata <= frm_data          ;
		   
endmodule