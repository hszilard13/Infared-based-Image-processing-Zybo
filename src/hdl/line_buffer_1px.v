//--------------------------------------------------------------------------------------------------
// Project     : ir_filters
// Module Name : line_buffer
// Author      : Szilard Hegedus
// Created     : 09/28/2018
//--------------------------------------------------------------------------------------------------
// Description : // Description : Creates 3x6 matrix for 3x3 4px per cycle filter modules
//               frame input: 4 pixels/cycle
//               frame output: 3x6 pixels window/cycle
//               output image size is equal to the input image size.
//               The input image is considered to be bordered with cfg_bkg color
//                               ____                 ____             ____ 
//                              |    |               |    |           |    |
//frm_data -------------------->|    |----1pixel---->|    |--1pixel-->|    |--1pixel-->
//                              |>   | |             |>   |           |>   |   
//                              |____| |             |____|           |____|   
//                                     |                                          
//          ---------------------------|
//          |    ____________     ____                 ____             ____ 
//          |   |            |   |    |               |    |           |    |
//          |-->|   FIFO     |-->|    |----1pixel---->|    |--1pixel-->|    |--1pixel-->    
//              |____________| | |>   |               |>   |           |>   |           
//                             | |____|               |____|           |____|   
//                             |                                                   
//          -------------------|
//          |    ____________     ____                 ____             ____ 
//          |   |            |   |    |               |    |           |    |
//          |-->|   FIFO     |-->|    |----1pixel---->|    |--1pixel-->|    |--1pixel-->     
//              |____________|   |>   |               |>   |           |>   |        
//                               |____|               |____|           |____|
//
//--------------------------------------------------------------------------------------------------
// Modification history :
// 09/28/2018 (SH): Initial version
// 11/19/2018 (SH): Added configurable background value
// 01/28/2019 (SH): Rewrite to output 3x3 matrix instead of 3x6, removed 4 px per cycle feature
//--------------------------------------------------------------------------------------------------

module line_buffer#(
  parameter DATA_WIDTH = 8 ,
  parameter USEDW_BITS = 10    // Number of bits for address inside FIFO (depth = 2^USEDW_BITS)

)(
  input                            clk           , // System clock
  input                            rst_n         , // Asynchronous reset active low
  input                            sw_rst        , // Software reset
//-------------------------------Configuration------------------------------------------------------  
  input      [DATA_WIDTH-1:0]      cfg_bkg       , // Background border value 
//--------------------------------Input frame interface---------------------------------------------
  input                            frm_val       , // Master has valid data to be transferred
  output reg                       frm_rdy       , // Slave is ready to receive the data
  input      [DATA_WIDTH-1:0]      frm_data      , // Data transferred from master to slave
  input                            frm_sof       , // Start of Frame
  input                            frm_eof       , // End of Frame
  input                            frm_sol       , // Start of line
  input                            frm_eol       , // End of line

//--------------------------------Output frame interface---------------------------------------------   
  output reg                      win_val    , // Master has valid data to be transferred      
  input                           win_rdy    , // Slave is ready to receive the data           
  output reg [9*DATA_WIDTH-1:0]   win_data   , // Data transferred from master to slave        
  output reg                      win_sof    , // Start of Frame                               
  output reg                      win_eof    , // End of Frame                                 
  output reg                      win_sol    , // Start of line                                
  output reg                      win_eol    , // End of line                                  

//-----------------------------------FIFO interface-------------------------------------------------
  output reg                      fifo_push     , // Master pushes data frm to FIFO
  output reg [2*DATA_WIDTH-1:0]   fifo_pushdata , // Data stored into FIFO
  input                           fifo_full     , // FIFO full
  output reg                      fifo_pop      , // Master pops data from FIFO
  input      [2*DATA_WIDTH-1:0]   fifo_popdata  , // Data retrieved from FIFO
  input                           fifo_empty    , // FIFO empty
  input      [USEDW_BITS-1  :0]   fifo_usedwords, // Used words frm FIFO
  output reg                      fifo_clr        // Clear Fifo
);

//-------------------------------- Internal registers/signals -----------------------------------------------
//Registers for the 3x6 window 
reg [DATA_WIDTH-1:0] line0_mid     ;
reg [DATA_WIDTH-1:0] line1_mid     ;
reg [DATA_WIDTH-1:0] line2_mid     ;  
reg [DATA_WIDTH-1:0] line0_left    ;
reg [DATA_WIDTH-1:0] line1_left    ;
reg [DATA_WIDTH-1:0] line2_left    ; 
reg                    frm_first_line; // First line flag 
reg                    last_line     ; // Last line flag
reg                    win_first_line; // First line flag
reg [  USEDW_BITS-1:0] window_cnt    ; // Count number of windows inputed frm row  
reg                    in_frm        ;
reg [  USEDW_BITS-1:0] pix_in_line   ;
reg [             1:0] valrdy_cnt    ;
reg                    win_last_line ; // last line received from input
reg [             1:0] frm_sof_d     ;
reg                    mask_sol      ; // Mask data window right side
reg                    mask_eol      ; // Mask data window left side
reg                    last_push     ;
  
wire                    frmvalrdy    ; // input valrdy
wire                    winvalrdy    ; // output valrdy
wire                    pipe_en      ; // Pipe enable
wire                    set_eol      ;
wire                    set_sol      ;
reg                     set_initial_pop  ;
wire                    initial_pop  ;
reg                     set_eof      ;
reg                     fifo_in_rst;
//--------------------------------------------------------------------------------------------------
//                                          Code
//-------------------------------------------------------------------------------------------------- 

assign frmvalrdy = frm_val & frm_rdy                ; // input valid ready
assign winvalrdy = win_rdy & win_val                ; // output valid ready
assign pipe_en   = frmvalrdy | (last_line & win_rdy); // Enable pipe at input valrdy and at last line when data is recieved 

assign set_eol = winvalrdy & (~frm_first_line)  & (window_cnt == 1);
assign set_sol = winvalrdy & (~|window_cnt) & ~fifo_empty & ~frm_first_line;

always@(posedge clk or negedge rst_n)
if(~rst_n                          ) set_initial_pop <= 1'b0; else
if(set_initial_pop & fifo_usedwords) set_initial_pop <= 1'b0; else
if(frmvalrdy & frm_sof             ) set_initial_pop <= 1'b1;
  
assign initial_pop = set_initial_pop | (frmvalrdy & frm_eol & frm_first_line & (~last_line));

//------------------------------ Intermediate registers ---------------------------------- 	

// Flag indicating the first input line, where no action is taken at the output 
always@(posedge clk or negedge rst_n)
if(~rst_n   ) frm_sof_d <= 2'd0                  ; else
if(frmvalrdy) frm_sof_d <= {frm_sof_d[0],frm_sof};      // Reset first line flag after first valid eol

always@(posedge clk or negedge rst_n)
if(~rst_n                   ) fifo_in_rst <= 1'd0; else
if(~(fifo_empty & fifo_full)) fifo_in_rst <= 1'd0; else
if(fifo_clr                 ) fifo_in_rst <= 1'd1;      // Reset first line flag after first valid eol

always@(posedge clk or negedge rst_n)
if(~rst_n                          ) frm_first_line <= 1'b1; else
if(sw_rst                          ) frm_first_line <= 1'b1; else
if(frmvalrdy & frm_sol & (~frm_sof)) frm_first_line <= 1'b0; else // Reset first line flag after first valid eol
if(winvalrdy & win_eof             ) frm_first_line <= 1'b1; else
if(frmvalrdy & frm_sof             ) frm_first_line <= 1'b1;      // Set start of frame flag at valid sof
  
always@(posedge clk or negedge rst_n)
if(~rst_n                          ) set_eof <= 1'b0; else
if(sw_rst                          ) set_eof <= 1'b0; else
if(win_eof & winvalrdy             ) set_eof <= 1'b0; else
if(last_line & winvalrdy & win_eol ) set_eof <= 1'b1; 

// Flag for output last line, for emptying the fifo content
always@(posedge clk or negedge rst_n)
if(~rst_n             ) last_line <= 1'b0; else
if(sw_rst             ) last_line <= 1'b0; else
if(winvalrdy & win_eof) last_line <= 1'b0; else // Reset at sof
if(frmvalrdy & frm_eof) last_line <= 1'b1;      // Set at eof
  
always@(posedge clk or negedge rst_n)
if(~rst_n             ) win_last_line <= 1'b0; else
if(sw_rst             ) win_last_line <= 1'b0; else
if(winvalrdy & win_eof) win_last_line <= 1'b0; else // Reset at sof
if(last_line & set_eol) win_last_line <= 1'b1;      // Set at eof
 
always@(posedge clk or negedge rst_n)
if(~rst_n             ) win_first_line <= 1'b0; else
if(sw_rst             ) win_first_line <= 1'b0; else
if(winvalrdy & win_eol) win_first_line <= 1'b0; else // Reset at eol
if(frmvalrdy & win_sof) win_first_line <= 1'b1;      // Set at sof
 
always@(posedge clk or negedge rst_n)
if(~rst_n                                                ) pix_in_line <= {USEDW_BITS{1'd0}}               ; else
if(sw_rst                                                ) pix_in_line <= {USEDW_BITS{1'd0}}               ; else
if(frm_first_line & (~|pix_in_line) & frm_eol & frmvalrdy) pix_in_line <= fifo_usedwords + fifo_push + 2'd2;      // Number of pixels in a line, compensate the initial pop
  
always@(posedge clk or negedge rst_n)
if(~rst_n                              ) window_cnt <= 9'd0                             ; else
if(sw_rst                              ) window_cnt <= 9'd0                             ; else
if(frm_first_line & frm_eol & frmvalrdy) window_cnt <= fifo_usedwords + fifo_push + 2'd1; else // Load on first eol
if((~|window_cnt) & winvalrdy          ) window_cnt <= pix_in_line - 1'd1               ; else // Load when not frm first line and the counter is 0
if(winvalrdy | (last_line & win_rdy)   ) window_cnt <= window_cnt - 1'b1                ;      // Decrement at each valid output

always@(posedge clk or negedge rst_n)
if(~rst_n             ) in_frm <= 1'd0; else
if(sw_rst             ) in_frm <= 1'd0; else
if(frm_eof & frmvalrdy) in_frm <= 1'd0; else // Reset at eof
if(frm_sof            ) in_frm <= 1'd1;      // Set in current frame flag when at sof
 
always@(posedge clk or negedge rst_n)
if(~rst_n                          ) valrdy_cnt <= 2'd0                              ; else
if(sw_rst                          ) valrdy_cnt <= 2'd0                              ; else
if(frmvalrdy & frm_sof             ) valrdy_cnt <= 2'd0                              ; else
if(~|valrdy_cnt & winvalrdy        ) valrdy_cnt <= 2'd0                              ; else
if((~frm_first_line) & (~last_line)) valrdy_cnt <= valrdy_cnt + frmvalrdy - winvalrdy;      // Count the number of new elements in the 3 input registers, increment when pipe is enabled decrement when data recieved
             
//Direct line pipe  		      		 
always@(posedge clk or negedge rst_n)
if(~rst_n             ) line0_left <= {DATA_WIDTH{1'b0}}; else
if(sw_rst             ) line0_left <= {DATA_WIDTH{1'b0}}; else
if(win_eof & winvalrdy) line0_left <= cfg_bkg           ; else
if(pipe_en            ) line0_left <= frm_data          ;     // Delay input at pipe_en
   		      		 
always@(posedge clk or negedge rst_n)
if(~rst_n             ) line0_mid <= {DATA_WIDTH{1'b0}}; else
if(sw_rst             ) line0_mid <= {DATA_WIDTH{1'b0}}; else
if(win_eof & winvalrdy) line0_mid <= {DATA_WIDTH{1'b0}}; else
if(pipe_en            ) line0_mid <= line0_left        ;     // Delay input at pipe_en
  
//Second line pipe  
always@(posedge clk or negedge rst_n)
if(~rst_n             ) line1_left <= {DATA_WIDTH{1'b0}}          ; else
if(sw_rst             ) line1_left <= {DATA_WIDTH{1'b0}}          ; else
if(win_eof & winvalrdy) line1_left <= cfg_bkg                     ; else
if(pipe_en            ) line1_left <= fifo_popdata[DATA_WIDTH-1:0];   // Delay input at pipe_en
    
always@(posedge clk or negedge rst_n)
if(~rst_n             ) line1_mid <= {DATA_WIDTH{1'b0}}; else
if(sw_rst             ) line1_mid <= {DATA_WIDTH{1'b0}}; else
if(win_eof & winvalrdy) line1_mid <= {DATA_WIDTH{1'b0}}; else
if(pipe_en            ) line1_mid <= line1_left        ;      // Delay input at pipe_en
  
  //Third line pie
always@(posedge clk or negedge rst_n)
if(~rst_n             ) line2_left <= {DATA_WIDTH{1'b0}}                      ; else
if(sw_rst             ) line2_left <= {DATA_WIDTH{1'b0}}                      ; else
if(win_eof & winvalrdy) line2_left <= cfg_bkg                                 ; else
if(pipe_en            ) line2_left <= fifo_popdata[2*DATA_WIDTH-1: DATA_WIDTH];     // Delay input at pipe_en
 
always@(posedge clk or negedge rst_n)
if(~rst_n             ) line2_mid <= {DATA_WIDTH{1'b0}}; else
if(sw_rst             ) line2_mid <= {DATA_WIDTH{1'b0}}; else
if(win_eof & winvalrdy) line2_mid <= {DATA_WIDTH{1'b0}}; else
if(pipe_en            ) line2_mid <= line2_left        ;     // Delay input at pipe_en
  		  		  			  
//------------------------------ fifo interface logic ----------------------------------
always@(posedge clk or negedge rst_n)
if(~rst_n                                        ) last_push <= 1'b0; else       
if(sw_rst                                        ) last_push <= 1'b0; else       
if( win_eof                                      ) last_push <= 1'b0; else //Concatenate the middle register values
if((last_line & winvalrdy & (window_cnt == 2'd2))) last_push <= 1'b1;      //Concatenate the middle register values
 
always@(posedge clk or negedge rst_n)
if(~rst_n                                                    ) fifo_pushdata <= {(2*DATA_WIDTH){1'b0}}  ; else 
if(sw_rst                                                    ) fifo_pushdata <= {(2*DATA_WIDTH){1'b0}}  ; else 
if(frmvalrdy | (last_line & winvalrdy & (window_cnt == 2'd2))) fifo_pushdata <= {line1_left, line0_left}; //Concatenate the middle register values

// Pop signals 
always@(posedge clk or negedge rst_n)
if(~rst_n                    ) fifo_pop <= 1'b0                                           ; else
if(sw_rst                    ) fifo_pop <= 1'b0                                           ; else
if(fifo_empty                ) fifo_pop <= 1'b0                                           ; else // Reset when fifo is empty or is at the last element
if(~frm_first_line           ) fifo_pop <= frmvalrdy | initial_pop | (last_line & win_rdy);  //Pop at first eol and sol with no sof to prepare the data  
  						
always@(posedge clk or negedge rst_n)
if(~rst_n                ) fifo_push <= 1'b0     ; else
if(sw_rst                ) fifo_push <= 1'b0     ; else
if(~(frm_sof & frmvalrdy)) fifo_push <= frmvalrdy | (last_line & winvalrdy & (window_cnt == 2'd2) & (~win_last_line));
			   
always@(posedge clk or negedge rst_n)
if(~rst_n             ) fifo_clr <= 1'b0; else
if(fifo_clr           ) fifo_clr <= 1'b0; else
if(frm_sof & frmvalrdy) fifo_clr <= 1'b1;  
//----------------------------- Output frame interface control signal logic ---------------------------------  
//Valid signal
always@(posedge clk or negedge rst_n)
if(~rst_n                                ) win_val <= 1'b0                                      ; else
if(sw_rst                                ) win_val <= 1'b0                                      ; else
if(frm_first_line | (winvalrdy & win_eof)) win_val <= 1'b0                                      ; else
if(last_line & (~fifo_empty)             ) win_val <= 1'b1                                      ; else // Last line alway valid, no output dependence
                                           win_val <= (valrdy_cnt  + frmvalrdy - winvalrdy) >= 2;      // Valid when the input 3 registers have 3 elements
 
// RDY 
always@(posedge clk or negedge rst_n)
if(~rst_n                                           ) frm_rdy <= 1'b0                                    ; else  
if(fifo_in_rst | (frmvalrdy & frm_sof) | fifo_clr   ) frm_rdy <= 1'b0                                    ; else
if(last_line | (frmvalrdy & frm_eof)                ) frm_rdy <= 1'b0                                    ; else // Set start of frame flag at valid sof
if(~((~fifo_full) & (~fifo_empty))                  ) frm_rdy <= 1'b1                                    ; else //Ready when fifo is not in reset state 
if(frm_first_line & ~fifo_full                      ) frm_rdy <= 1'b1                                    ; else //Ready when fifo is not in reset state
if(winvalrdy & win_eof | (~in_frm & ~frm_first_line)) frm_rdy <= 1'b1                                    ; else  
                                                      frm_rdy <= (valrdy_cnt + frmvalrdy - winvalrdy) < 3; //Or the input registers are not populated
 
// SOL  
always@(posedge clk or negedge rst_n)
if(~rst_n                                                ) win_sol <= 1'b0; else 
if(sw_rst                                                ) win_sol <= 1'b0; else 
if(winvalrdy & win_sol                                   ) win_sol <= 1'b0; else // Reset after one valrdy 
if(frmvalrdy & frm_sof                                   ) win_sol <= 1'b1; else // Set at input sof
if(winvalrdy & win_eol & ((~frm_first_line) | (~win_eof))) win_sol <= 1'b1;      // Set at window counter reset

// EOL 
always@(posedge clk or negedge rst_n)
if(~rst_n                ) win_eol <= 1'b0; else 
if(sw_rst                ) win_eol <= 1'b0; else 
if(winvalrdy & win_eol   ) win_eol <= 1'b0; else // Reset after the one valrdy
if(set_eol               ) win_eol <= 1'b1;      // Set before window counter reset 
	 
// EOF  
always@(posedge clk or negedge rst_n)
if(~rst_n             ) win_eof <= 1'b0; else
if(sw_rst             ) win_eof <= 1'b0; else
if(winvalrdy & win_eof) win_eof <= 1'b0; else // Reset after the one valrdy 
if(set_eol & set_eof  ) win_eof <= 1'b1;      // Set at last line when fifo is empty 
 
// SOF  
always@(posedge clk or negedge rst_n)
if(~rst_n             ) win_sof <= 1'b0; else
if(sw_rst             ) win_sof <= 1'b0; else
if(winvalrdy & win_sof) win_sof <= 1'b0; else // Reset after sending last valid data 
if(frmvalrdy & frm_sof) win_sof <= 1'b1;      // Set at last line when fifo is empty
  
//----------------------------- output frame interface data --------------------------------- 
always@(posedge clk or negedge rst_n)
if(~rst_n            ) mask_sol <= 1'b0; else
if(sw_rst            ) mask_sol <= 1'b0; else
if(pipe_en & mask_sol) mask_sol <= 1'b0; else // Reset after the one valrdy 
if(set_sol | win_sof ) mask_sol <= 1'b1;      // Set at last line when fifo is empty 
 
always@(posedge clk or negedge rst_n)
if(~rst_n            ) mask_eol <= 1'b0; else
if(sw_rst            ) mask_eol <= 1'b0; else
if(pipe_en & mask_eol) mask_eol <= 1'b0; else // Reset after the one valrdy 
if(set_eol           ) mask_eol <= 1'b1;      // Set at last line when fifo is empty 

//
//   cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg 
//   cfg_bkg   data    data    data    data    data    data  cfg_bkg
//   cfg_bkg   data    data    data    data    data    data  cfg_bkg
//   cfg_bkg   data    data    data    data    data    data  cfg_bkg
//   cfg_bkg   data    data    data    data    data    data  cfg_bkg
//   cfg_bkg   data    data    data    data    data    data  cfg_bkg
//   cfg_bkg   data    data    data    data    data    data  cfg_bkg
//   cfg_bkg   data    data    data    data    data    data  cfg_bkg
//   cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg cfg_bkg
//
always@(posedge clk or negedge rst_n)
if(~rst_n             ) win_data <= {(9*DATA_WIDTH){1'b0}} ;else
if(sw_rst             ) win_data <= {(9*DATA_WIDTH){1'b0}} ;else
if(frm_sof & frmvalrdy) win_data <= {9{cfg_bkg}}           ;else
if(pipe_en            ) win_data <= {win_data[ 8*DATA_WIDTH-1:7*DATA_WIDTH], line2_mid, line2_left, // middle
                                     win_data[ 5*DATA_WIDTH-1:4*DATA_WIDTH], line1_mid, line1_left,
                                     win_data[ 2*DATA_WIDTH-1:  DATA_WIDTH], line0_mid, line0_left };          
//	if(win_last_line)begin 
//	  if(set_sol) win_data <= {cfg_bkg , line2_mid, line2_left, //left-down corner
//                               cfg_bkg , line1_mid, line1_left,
//                               {3{cfg_bkg}}                                                }; else
// 	  if(set_eol) win_data <= {win_data[8*DATA_WIDTH-1:7*DATA_WIDTH], line2_mid, cfg_bkg , //right-down corner
//                               win_data[5*DATA_WIDTH-1:4*DATA_WIDTH], line1_mid, cfg_bkg ,
//                              {3{cfg_bkg}}                                                 }; else
//							  
//			      win_data <= {win_data[8*DATA_WIDTH-1:7*DATA_WIDTH], line2_mid, line2_left, // down row
//                               win_data[5*DATA_WIDTH-1:4*DATA_WIDTH], line1_mid, line1_left,
//                               {3{cfg_bkg}}                                                  };
//	end else
//	if(mask_sol) win_data <= {cfg_bkg, line2_mid, line2_left, // left column
//                              cfg_bkg, line1_mid, line1_left,
//                              cfg_bkg, line0_mid, line0_left }; else
// //Mask right border								      
//    if(mask_eol) win_data <= {win_data[8*DATA_WIDTH-1:7*DATA_WIDTH], line2_mid, cfg_bkg,// right column
//                              win_data[5*DATA_WIDTH-1:4*DATA_WIDTH], line1_mid, cfg_bkg,
//                              win_data[2*DATA_WIDTH-1:  DATA_WIDTH], line0_mid, cfg_bkg }; else
//															
//                win_data <= {win_data[ 8*DATA_WIDTH-1:7*DATA_WIDTH], line2_mid, line2_left, // middle
//                             win_data[ 5*DATA_WIDTH-1:4*DATA_WIDTH], line1_mid, line1_left,
//                             win_data[ 2*DATA_WIDTH-1:  DATA_WIDTH], line0_mid, line0_left };
//	end

/////////////////////////////////////////////////////////////////////
// DEBUG BELOW //////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////	
`ifdef DEBUG_ON
  `include "line_buffer_debug.v"
`endif			   

endmodule // line_buffer