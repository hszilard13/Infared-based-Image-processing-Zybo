// Project     : ir_filters
// Module Name : pix_corr_1px
// Author      : Szilard Hegedus
// Created     : 11/15/2018
//--------------------------------------------------------------------------------------------------
// Description : Corrects dead pixels in a 3x3 window
//
//--------------------------------------------------------------------------------------------------
// Modification history :
// 11/15/2018 (SH): Initial version
// 02/04/2019 (SH): Replaced 4 pixel/cycle to 1 pixel/cycle to integrate into Pcam5c_demo reference design 
//--------------------------------------------------------------------------------------------------

module pix_corr_1px#(
parameter DATA_WIDTH = 8
)(
input                         clk       ,
input                         rst_n     ,
input      [DATA_WIDTH-1:0]   cfg_thr   ,
input                         in3x3_val , // Master has valid data to be transferred
output reg                    in3x3_rdy , // Slave is ready to receive the data
input      [9*DATA_WIDTH-1:0] in3x3_data, // Data transferred from master to slave
input                         in3x3_sof , // Start of frame
input                         in3x3_sol , // Start of line
input                         in3x3_eol , // End of line
input                         in3x3_eof , // End of frame
//----------------------------Output Frame Interface-----------------------------------------
output reg                    out_val , // Master has valid data to be transferred
input                         out_rdy , // Slave is ready to receive the data
output reg [  DATA_WIDTH-1:0] out_data, // Data transferred from master to slave
output reg                    out_sof , // Start of frame
output reg                    out_sol , // Start of line
output reg                    out_eol , // End of line
output reg                    out_eof   // End of frame
);

//-----------------------------Internal signals----------------------------------------------
wire [DATA_WIDTH-1:0] p00; //Pixel in window
wire [DATA_WIDTH-1:0] p01; //Pixel in window
wire [DATA_WIDTH-1:0] p02; //Pixel in window
wire [DATA_WIDTH-1:0] p10; //Pixel in window
wire [DATA_WIDTH-1:0] p11; //Pixel in window
wire [DATA_WIDTH-1:0] p12; //Pixel in window
wire [DATA_WIDTH-1:0] p20; //Pixel in window
wire [DATA_WIDTH-1:0] p21; //Pixel in window
wire [DATA_WIDTH-1:0] p22; //Pixel in window

wire [DATA_WIDTH-1:0] max00;
wire [DATA_WIDTH-1:0] max01;
wire [DATA_WIDTH-1:0] max02;
wire [DATA_WIDTH-1:0] max10;
wire [DATA_WIDTH-1:0] max12;
wire [DATA_WIDTH-1:0] max20;
wire [DATA_WIDTH-1:0] max21;
wire [DATA_WIDTH-1:0] max22;

wire [DATA_WIDTH-1:0] min00;
wire [DATA_WIDTH-1:0] min01;
wire [DATA_WIDTH-1:0] min02;
wire [DATA_WIDTH-1:0] min10;
wire [DATA_WIDTH-1:0] min12;
wire [DATA_WIDTH-1:0] min20;
wire [DATA_WIDTH-1:0] min21;
wire [DATA_WIDTH-1:0] min22;

wire [DATA_WIDTH-1 : 0] diff00;
wire [DATA_WIDTH-1 : 0] diff01;
wire [DATA_WIDTH-1 : 0] diff02;
wire [DATA_WIDTH-1 : 0] diff10;
wire [DATA_WIDTH-1 : 0] diff12;
wire [DATA_WIDTH-1 : 0] diff20;
wire [DATA_WIDTH-1 : 0] diff21;
wire [DATA_WIDTH-1 : 0] diff22;

wire [DATA_WIDTH + 3:0] sum;
wire mux_sel;

assign p00 = in3x3_data[9*DATA_WIDTH-1:8*DATA_WIDTH];
assign p01 = in3x3_data[8*DATA_WIDTH-1:7*DATA_WIDTH];
assign p02 = in3x3_data[7*DATA_WIDTH-1:6*DATA_WIDTH];
assign p10 = in3x3_data[6*DATA_WIDTH-1:5*DATA_WIDTH];
assign p11 = in3x3_data[5*DATA_WIDTH-1:4*DATA_WIDTH];
assign p12 = in3x3_data[4*DATA_WIDTH-1:3*DATA_WIDTH];
assign p20 = in3x3_data[3*DATA_WIDTH-1:2*DATA_WIDTH];
assign p21 = in3x3_data[2*DATA_WIDTH-1:1*DATA_WIDTH];
assign p22 = in3x3_data[1*DATA_WIDTH-1:0*DATA_WIDTH];

assign sum = p00 + p01 + p02 + p10 + p12 + p20 + p21 + p22;

assign {max00, min00} = (p00 > p11) ? {p00, p11} : {p11, p00};
assign {max01, min01} = (p01 > p11) ? {p01, p11} : {p11, p01};
assign {max02, min02} = (p02 > p11) ? {p02, p11} : {p11, p02};
assign {max10, min10} = (p10 > p11) ? {p10, p11} : {p11, p10};
assign {max12, min12} = (p12 > p11) ? {p12, p11} : {p11, p12};
assign {max20, min20} = (p20 > p11) ? {p20, p11} : {p11, p20};
assign {max21, min21} = (p21 > p11) ? {p21, p11} : {p11, p21};
assign {max22, min22} = (p22 > p11) ? {p22, p11} : {p11, p22};


assign diff00 = max00 - min00;
assign diff01 = max01 - min01;
assign diff02 = max02 - min02;
assign diff10 = max10 - min10;
assign diff12 = max12 - min12;
assign diff20 = max20 - min20;
assign diff21 = max21 - min21;
assign diff22 = max22 - min22; 

assign mux_sel = (diff00 > cfg_thr) & (diff01 > cfg_thr) & (diff02 > cfg_thr) & (diff10 > cfg_thr) & (diff12 > cfg_thr) & (diff20 > cfg_thr) & (diff21 > cfg_thr) & (diff22 > cfg_thr);

always@(posedge clk or negedge rst_n)
if(~rst_n               ) out_data <= 8'd0                               ; else
if(in3x3_val & in3x3_rdy) out_data <= mux_sel ? sum[DATA_WIDTH+2:3] : p11;      // Recieve only the top 8 pixels, that will be the result of division by 16
  
always@(posedge clk or negedge rst_n)
if(~rst_n                           ) out_eof <= 1'b0; else
if(out_rdy & out_val & out_eof      ) out_eof <= 1'b0; else
if(in3x3_eof & in3x3_val & in3x3_rdy) out_eof <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                           ) out_sof <= 1'b0; else
if(out_rdy & out_val & out_sof      ) out_sof <= 1'b0; else
if(in3x3_sof & in3x3_val & in3x3_rdy) out_sof <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                           ) out_eol <= 1'b0; else
if(out_rdy & out_val & out_eol      ) out_eol <= 1'b0; else
if(in3x3_eol & in3x3_val & in3x3_rdy) out_eol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                                                             ) out_sol <= 1'b0; else
if(out_rdy & out_val & out_sol                                        ) out_sol <= 1'b0; else
if((in3x3_sol & in3x3_val & in3x3_rdy) | (out_rdy & out_val & out_eol)) out_sol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n           ) in3x3_rdy <= 1'b1; else
if(out_rdy & out_val) in3x3_rdy <= 1'b1; else
if(in3x3_val        ) in3x3_rdy <= 1'b0; 
 
always@(posedge clk or negedge rst_n)
if(~rst_n           ) out_val <= 1'b0; else
if(out_rdy & out_val) out_val <= 1'b0; else
if(in3x3_val        ) out_val <= 1'b1; 
          		   


endmodule