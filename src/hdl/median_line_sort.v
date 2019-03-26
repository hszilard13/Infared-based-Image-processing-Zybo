// Project     : ir_filters
// Module Name : median_line_sort
// Author      : Szilard Hegedus
// Created     : 11/21/2018
//--------------------------------------------------------------------------------------------------
// Description : Connects 4 pix_corr_1px modules to achieve 4px output
//--------------------------------------------------------------------------------------------------
//            ______                      ______
// pix0 ---->|      |------------------->|      |---sort_sort[23:16]---> 
//           | Comp |      ______        | Comp |
// pix1 ---->|______|---->|      |------>|______|---sort_sort[15: 8]--->   
//                        | Comp |
// pix2------------------>|______|------------------sort_sort[8 : 0]--->
//  
// 
// Modification history :
// 11/15/2018 (SH): Initial version
//--------------------------------------------------------------------------------------------------

module median_line_sort#(
parameter DATA_WIDTH =  8
)(
input                         clk      ,
input                         rst_n    , 
input      [DATA_WIDTH - 1:0] pix0     ,
input      [DATA_WIDTH - 1:0] pix1     ,
input      [DATA_WIDTH - 1:0] pix2     ,
input                         win_val  ,
output                        win_rdy  ,
input                         win_sol  ,
input                         win_eol  ,
input                         win_sof  ,
input                         win_eof  ,
output reg                    sort_val ,      
input                         sort_rdy ,  
output reg                    sort_sol ,
output reg                    sort_eol ,
output reg                    sort_sof ,
output reg                    sort_eof ,    
output reg [3*DATA_WIDTH-1:0] sort_data
);

wire invalrdy;

wire [DATA_WIDTH-1:0] comp0_max;
wire [DATA_WIDTH-1:0] comp1_max;
wire [DATA_WIDTH-1:0] comp2_max;

wire [DATA_WIDTH-1:0] comp0_min;
wire [DATA_WIDTH-1:0] comp1_min;
wire [DATA_WIDTH-1:0] comp2_min;

assign win_rdy = sort_rdy;

assign invalrdy = win_val & win_rdy;

// Assign maximum and minimum values
assign {comp0_max, comp0_min} = (pix0      > pix1     ) ? {pix0     , pix1     } : {pix1     , pix0      };
assign {comp1_max, comp1_min} = (comp0_max > pix2     ) ? {comp0_max, pix2     } : {pix2     , comp0_max };
assign {comp2_max, comp2_min} = (comp0_min > comp1_max) ? {comp0_min, comp1_max} : {comp0_min, comp1_max };

//Create data
always@(posedge clk or negedge rst_n)
  if(~rst_n  ) sort_data <= {DATA_WIDTH{1'b0}}               ; else
  if(invalrdy) sort_data <= {comp2_max, comp2_min, comp1_min};
  
//Control signals
always@(posedge clk or negedge rst_n)
if(~rst_n                        ) sort_eof <= 1'b0; else
if(sort_rdy & sort_val & sort_eof) sort_eof <= 1'b0; else
if(win_eof & win_val & win_rdy   ) sort_eof <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                        ) sort_sof <= 1'b0; else
if(sort_rdy & sort_val & sort_sof) sort_sof <= 1'b0; else
if(win_sof & win_val & win_rdy   ) sort_sof <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                        ) sort_eol <= 1'b0; else
if(sort_rdy & sort_val & sort_eol) sort_eol <= 1'b0; else
if(win_eol & win_val & win_rdy   ) sort_eol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                        ) sort_sol <= 1'b0; else
if(sort_rdy & sort_val & sort_sol) sort_sol <= 1'b0; else
if((win_sol & win_val & win_rdy) ) sort_sol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n               ) sort_val <= 1'b0; else
if(sort_rdy & (~win_val)) sort_val <= 1'b0; else
if(invalrdy             ) sort_val <= 1'b1; 

  
endmodule