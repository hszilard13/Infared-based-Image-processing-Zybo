// Project     : ir_outers
// Module Name : laplace_outer_4px
// Author      : Szilard Hegedus
// Created     : 11/15/2018
//--------------------------------------------------------------------------------------------------
// Description : Connects laplace_outer_1px modules and calculates sharpened image
//--------------------------------------------------------------------------------------------------
// Modification history :
// 11/15/2018 (SH): Initial version
// 02/04/2019 (SH): Replaced 4 pixel/cycle to 1 pixel/cycle to integrate into Pcam5c_demo reference design 
//--------------------------------------------------------------------------------------------------

module sharp_filter_1px#(
parameter DATA_WIDTH    = 8
)(
input                           clk       , // System clock
input                           rst_n     , // Asynchronous reset active low
input    [7:0]                  cfg_coef  ,
//----------------------------Input Frame Interface-----------------------------------------
input                           in3x3_val , // Master has valid data to be transferred
output                          in3x3_rdy , // Slave is ready to receive the data
input     [9*DATA_WIDTH-1:0]    in3x3_data, // Data transferred from master to slave
input                           in3x3_sof , // Start of Frame
input                           in3x3_eof , // End of Frame
input                           in3x3_sol , // Start of Line
input                           in3x3_eol , // End of Line
//----------------------------Output Frame Interface-----------------------------------------
output reg                      out_val  , // Master has valid data to be transferred
input                           out_rdy  , // Slave is ready to receive the data
output reg [  DATA_WIDTH-1:0]   out_data , // Data transferred from master to slave
output reg                      out_sof  , // Start of Frame
output reg                      out_eof  , // End of Frame
output reg                      out_sol  , // Start of Line
output reg                      out_eol    // End of Line
);

//-----------------------------Internal signals----------------------------------------------
reg [DATA_WIDTH-1:0] in_data_d;

wire                   lap_val ; 
wire [DATA_WIDTH-1:0]  lap_data;
wire                   lap_sof ;
wire                   lap_eof ;
wire                   lap_sol ;
wire                   lap_eol ;

wire lap_rdy;
wire lap_rdy_d;
wire invalrdy;
wire lap_valrdy;

reg  [DATA_WIDTH:0] out_data_temp;
wire [  DATA_WIDTH-1:0] norm_data;
wire [2*DATA_WIDTH-1:0] mult_data;

reg                   lap_val_d ; 
reg                   lap_sof_d ;
reg                   lap_eof_d ;
reg                   lap_sol_d ;
reg                   lap_eol_d ;


assign in3x3_rdy = out_rdy;

assign invalrdy = in3x3_rdy & in3x3_val;
assign lap_rdy  = out_rdy;
assign lap_rdy_d  = lap_rdy;

assign lap_valrdy = lap_val & lap_rdy;

assign lap_valrdy_d = lap_val_d & lap_rdy_d;

assign mult_data = lap_data * cfg_coef; // Multiply the data with the coeficcient

assign norm_data = (out_data_temp > {1'b0,{(DATA_WIDTH){1'd1}}}) ? {(DATA_WIDTH){1'd1}} : out_data_temp; // Normalize output data 

//------------------------------------------------- Pipe stage 0 --------------------------------------------------------------------
 
laplace_filter_1px#(
  .DATA_WIDTH(DATA_WIDTH) 
)laplace_out(
  .clk       (clk       ), // System clock
  .rst_n     (rst_n     ), // Asynchronous reset active low
  .in3x3_val (in3x3_val ), // Master has valid data to be transferred
  .in3x3_rdy (          ), // Slave is ready to receive the data
  .in3x3_data(in3x3_data), // Data transferred from master to slave
  .in3x3_sof (in3x3_sof ), // Start of Frame
  .in3x3_eof (in3x3_eof ), // End of Frame
  .in3x3_sol (in3x3_sol ), // Start of Line
  .in3x3_eol (in3x3_eol ), // End of Line
  .out_val   (lap_val   ), // Master has valid data to be transferred
  .out_rdy   (lap_rdy   ), // Slave is ready to receive the data
  .out_data  (lap_data  ), // Data transferred from master to slave
  .out_sof   (lap_sof   ), // Start of Frame
  .out_eof   (lap_eof   ), // End of Frame
  .out_sol   (lap_sol   ), // Start of Line
  .out_eol   (lap_eol   )  // End of Line
);

always@(posedge clk or negedge rst_n)
if(~rst_n               ) in_data_d <= {(DATA_WIDTH){1'd0}}                     ; else
if(in3x3_rdy & in3x3_val) in_data_d <= in3x3_data[5*DATA_WIDTH-1 : 4*DATA_WIDTH];      // Delay input data that will be added to the mask


//---------------------------------------------- Pipe stage 1 -----------------------------------------------------------------------
always@(posedge clk or negedge rst_n)
if(~rst_n              ) lap_val_d <= 1'b0; else
if(lap_rdy & (~lap_val)) lap_val_d <= 1'b0; else
if(lap_valrdy          ) lap_val_d <= 1'b1; 

always@(posedge clk or negedge rst_n)
if(~rst_n                       ) lap_sof_d <= 1'b0; else
if(out_rdy & out_val & lap_sof_d) lap_sof_d <= 1'b0; else
if(lap_valrdy & lap_sof         ) lap_sof_d <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                       ) lap_eof_d <= 1'b0; else
if(out_rdy & out_val & lap_eof_d) lap_eof_d <= 1'b0; else
if(lap_valrdy & lap_eof          ) lap_eof_d <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                       ) lap_sol_d <= 1'b0; else
if(out_rdy & out_val & lap_sol_d) lap_sol_d <= 1'b0; else
if(lap_valrdy & lap_sol         ) lap_sol_d <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                       ) lap_eol_d <= 1'b0; else
if(out_rdy & out_val & lap_eol_d) lap_eol_d <= 1'b0; else
if(lap_valrdy & lap_eol         ) lap_eol_d <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n    ) out_data_temp <= {(DATA_WIDTH + 1){1'b0}}                        ; else
if(lap_valrdy) out_data_temp <= mult_data[2*DATA_WIDTH-1:DATA_WIDTH] + in_data_d;

//------------------------------------------- Pipe stage 2 ------------------------------------------------------------------------
always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_eof <= 1'b0; else
if(out_rdy & out_val & out_eof) out_eof <= 1'b0; else
if(lap_eof_d & lap_valrdy_d   ) out_eof <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_sof <= 1'b0; else
if(out_rdy & out_val & out_sof) out_sof <= 1'b0; else
if(lap_sof_d & lap_valrdy_d   ) out_sof <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_eol <= 1'b0; else
if(out_rdy & out_val & out_eol) out_eol <= 1'b0; else
if(lap_eol_d & lap_valrdy_d   ) out_eol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_sol <= 1'b0; else
if(out_rdy & out_val & out_sol) out_sol <= 1'b0; else
if(lap_sol_d & lap_valrdy_d   ) out_sol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                ) out_val <= 1'b0; else
if(out_rdy & (~lap_val_d)) out_val <= 1'b0; else
if(lap_valrdy_d          ) out_val <= 1'b1; 
			 			 
always@(posedge clk or negedge rst_n)
if(~rst_n      ) out_data <= {(DATA_WIDTH){1'd0}}; else
if(lap_valrdy_d) out_data <= norm_data           ;
  
`ifdef DEBUG_ON
  `include "sharp_filter_debug.v"
`endif	
  

endmodule