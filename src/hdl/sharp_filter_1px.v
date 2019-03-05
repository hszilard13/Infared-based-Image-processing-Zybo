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

reg lap_rdy;

// Output control signals are the delayed version of the input
	 
always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_eof <= 1'b0; else
if(out_rdy & out_val & out_eof) out_eof <= 1'b0; else
if(lap_eof & lap_val & lap_rdy) out_eof <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_sof <= 1'b0; else
if(out_rdy & out_val & out_sof) out_sof <= 1'b0; else
if(lap_sof & lap_val & lap_rdy) out_sof <= 1'b1;


always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_eol <= 1'b0; else
if(out_rdy & out_val & out_eol) out_eol <= 1'b0; else
if(lap_eol & lap_val & lap_rdy) out_eol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n                     ) out_sol <= 1'b0; else
if(out_rdy & out_val & out_sol) out_sol <= 1'b0; else
if(lap_sol & lap_val & lap_rdy) out_sol <= 1'b1;

always@(posedge clk or negedge rst_n)
if(~rst_n           ) lap_rdy <= 1'b1; else
if(out_rdy & out_val) lap_rdy <= 1'b1; else
if(lap_val          ) lap_rdy <= 1'b0; 
 
always@(posedge clk or negedge rst_n)
if(~rst_n           ) out_val <= 1'b0; else
if(out_rdy & out_val) out_val <= 1'b0; else
if(lap_val          ) out_val <= 1'b1; 
			 
always@(posedge clk or negedge rst_n)
  if(~rst_n               ) in_data_d <= {(DATA_WIDTH){1'd0}}                     ; else
  if(in3x3_rdy & in3x3_val) in_data_d <= in3x3_data[5*DATA_WIDTH-1 : 4*DATA_WIDTH];
			 
wire [DATA_WIDTH:0] out_data_temp;

wire [  DATA_WIDTH-1:0] norm_data;

wire [2*DATA_WIDTH-1:0] mult_data;

assign mult_data = lap_data * cfg_coef;

assign out_data_temp = mult_data[2*DATA_WIDTH-1:DATA_WIDTH] + in_data_d;
  
assign norm_data = (out_data_temp > {1'b0,{(DATA_WIDTH){1'd1}}}) ? {(DATA_WIDTH){1'd1}} : out_data_temp;

always@(posedge clk or negedge rst_n)
  if(~rst_n           ) out_data <= {(DATA_WIDTH){1'd0}}; else
  if(out_val & out_rdy) out_data <= norm_data           ;
  
laplace_filter_1px#(
  .DATA_WIDTH(DATA_WIDTH) 
)laplace_out(
  .clk       (clk       ), // System clock
  .rst_n     (rst_n     ), // Asynchronous reset active low
  .in3x3_val (in3x3_val ), // Master has valid data to be transferred
  .in3x3_rdy (in3x3_rdy ), // Slave is ready to receive the data
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

endmodule