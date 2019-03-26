// Project     : ir_filters
// Module Name : smooth_filter_1px
// Author      : Szilard Hegedus
// Created     : 10/26/2018
//--------------------------------------------------------------------------------------------------
// Description : Applies 3x3 smoothing filter
//               ____________
//              |   |   |   |
//              | 1 | 2 | 1 |
//              |___|___|___|
//          1   |   |   |   |
//         -- x | 2 | 4 | 2 |
//         16   |___|___|___|
//              |   |   |   |
//              | 1 | 2 | 1 |
//              |___|___|___|
//
//--------------------------------------------------------------------------------------------------
// Modification history :
// 10/26/2018 (SH): Initial version
// 02/04/2019 (SH): Replaced 4 pixel/cycle to 1 pixel/cycle to integrate into Pcam5c_demo reference design 
//--------------------------------------------------------------------------------------------------

module smooth_filter_1px#(
parameter DATA_WIDTH = 8
)(
input                         clk       ,
input                         rst_n     ,
input                         in3x3_val , // Master has valid data to be transferred
output                        in3x3_rdy , // Slave is ready to receive the data
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

wire [DATA_WIDTH+4:0] sum;

wire invalrdy;

assign invalrdy =  in3x3_rdy & in3x3_val;
assign in3x3_rdy = out_rdy;

assign p00 = in3x3_data[9*DATA_WIDTH-1:8*DATA_WIDTH];
assign p01 = in3x3_data[8*DATA_WIDTH-1:7*DATA_WIDTH];
assign p02 = in3x3_data[7*DATA_WIDTH-1:6*DATA_WIDTH];
assign p10 = in3x3_data[6*DATA_WIDTH-1:5*DATA_WIDTH];
assign p11 = in3x3_data[5*DATA_WIDTH-1:4*DATA_WIDTH];
assign p12 = in3x3_data[4*DATA_WIDTH-1:3*DATA_WIDTH];
assign p20 = in3x3_data[3*DATA_WIDTH-1:2*DATA_WIDTH];
assign p21 = in3x3_data[2*DATA_WIDTH-1:1*DATA_WIDTH];
assign p22 = in3x3_data[1*DATA_WIDTH-1:0*DATA_WIDTH];

assign sum =  p00        + {p01, 1'd0} + p02         +
             {p10, 1'b0} + {p11, 2'b0} + {p12, 1'b0} +
			  p20        + {p21, 1'b0} + p22;
  
always@(posedge clk or negedge rst_n)
if(~rst_n               ) out_data <= 8'd0                                      ; else
if(in3x3_val & in3x3_rdy) out_data <= (sum[12:4] > 8'd255) ?  8'd255 : sum[11:4];      // Recieve only the top 8 pixels, that will be the result of division by 16

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
if(~rst_n                ) out_val <= 1'b0; else
if(out_rdy & (~in3x3_val)) out_val <= 1'b0; else
if(invalrdy              ) out_val <= 1'b1; 

endmodule