//--------------------------------------------------------------------------------------------------
// Project     : AXI2FRAME
// Module Name : AXI2FIFO
// Author      : SZILARD HEGEDUS
// Created     : 03/02/2018
//--------------------------------------------------------------------------------------------------
// Description : Reads data on AXI interface and pushes it to FIFO
//--------------------------------------------------------------------------------------------------
// Modification history :
// 03/02/2018 (SH): Initial version
//--------------------------------------------------------------------------------------------------

module axi2fifo#(
  parameter ADDR_WIDTH = 32,
  parameter USEDW_BITS = 11
)(
// -------------------------------------------- System IF -------------------------------------------
  input                        clk                 , // System clock
  input                        rst_n               , // Asynchronous reset active low
// ----------------------------------------- AXI inputs ---------------------------------------------
  input                        arready             , // Address ready
  input                 [63:0] rdata               , // Read data
  input                        rlast               , // Last data beat in transfer
  input                        rvalid              , // Valid data
  output reg  [ADDR_WIDTH-1:0] araddr              , // Address
  output reg             [7:0] arlen               , // Burst length 
  output                 [1:0] arburst             , // Burst type
  output                 [2:0] arsize              , // Number of bytes in each transfer
  output reg                   arvalid             , // Address valid 
  output reg                   rready              , // Read ready
// ------------------------------------ Configuration Interface inputs -------------------------------
  input                        cfg_blk_en          , // Block enable
  input                 [15:0] cfg_img_width       , // Image width
  input                 [15:0] cfg_img_height      , // Image height
  input                 [15:0] cfg_stride          , // The address distance between the first address of successive â€œhorizontalâ€? reads
  input       [ADDR_WIDTH-1:0] cfg_map_ba          , // Channel base address
  input                  [7:0] cfg_max_burst_length, // Maximum burst length
  input                        cfg_reverse_pixel   , // Data is is big/small endian
// ------------------------------------ FIFO inputs --------------------------------------------------
  input       [USEDW_BITS-1:0] fifo_words_used     , // Used word in FIFO
  input                        fifo_full           , // Full indicator
  input                        fifo_empty          , // Empty indicator
// ------------------------------------- FIFO outputs ------------------------------------------------
  output reg                    fifo_push          , // Push
  output reg             [63:0] fifo_data          , // Output data
// ------------------------------------ Status IF outputs -------------------------------------------
  output reg                    sts_done             // Done interrupt
 );
 
reg [15:0] line_cnt     ;//count the number of lines
reg [15:0] pix_cnt      ;//count the number of pixels for a line
reg        cfg_blk_en_d ;

wire               start            ; // Start at posedge enable
wire [15:0]        stride_incr      ; // Addres increment at last line
wire [USEDW_BITS:0]fifo_cnt         ; // Words in fifo
wire               lastreq_from_line; // Last request

reg                req_in_progress  ; // Request in progree
wire               fifo_rdy         ; // Fifo ready
wire               fifo_in_rst      ;

//data requested only when enough space available in fifo to store

assign lastreq_from_line = (pix_cnt < cfg_max_burst_length) & (|pix_cnt)                  ; // Last request form line
assign fifo_cnt          = {fifo_full, fifo_words_used}                                   ; // Number of words in fifo
assign start             = cfg_blk_en & (~cfg_blk_en_d)                                   ; //Start at posedge enable                                                                    
assign stride_incr       = lastreq_from_line ?  (cfg_stride - cfg_img_width) : 16'd0      ; // Increment or jump stride positions
assign arsize            = 2'd3                                                           ; // Size is bus 8 for AXI 64 
assign arburst           = 2'd1                                                           ; // Set burst to incremental
assign fifo_rdy          = fifo_cnt < (({1'b1,{USEDW_BITS{1'b0}}}) - cfg_max_burst_length - 1'b1); // Fifo ready if more than a burst space is vailable

assign fifo_in_rst       = fifo_empty & fifo_full;

always@(posedge clk or negedge rst_n)
if(~rst_n) rready <= 1'b0                       ; else
           rready <= cfg_blk_en & (~fifo_in_rst);    

always@(posedge clk or negedge rst_n)
if(~rst_n                  ) req_in_progress <= 1'd0;else
if(start | (rvalid & rlast)) req_in_progress <= 1'd0;else // Reset on start or last valid data in burst
if(arvalid                 ) req_in_progress <= 1'd1;     // Set on first valid data from burst
  
always@(posedge clk or negedge rst_n)
if(~rst_n                    ) sts_done <= 1'd0      ;else
if(start                     ) sts_done <= 1'd0      ;else // Reset done on start
if((~|pix_cnt) & (~|line_cnt)) sts_done <= cfg_blk_en;     // Set done when line and pixel cnt are 0

always@(posedge clk or negedge rst_n)
if(~rst_n   ) pix_cnt <= 16'd0          ; else // Set register 0 on reset
if(start    ) pix_cnt <= cfg_img_width  ; else // Load preloaded value on poesedge enable
if(~|pix_cnt) pix_cnt <= cfg_img_width  ; else // Load preloaded value when pixel counter is 0
if(rvalid   ) pix_cnt <= pix_cnt - 16'd8;      // Decrement on each valid data
  
//Verify image read   
always@(posedge clk or negedge rst_n)
if(~rst_n                     ) line_cnt <= 16'd0           ; else // Set register 0 on reset
if(start                      ) line_cnt <= cfg_img_height  ; else // Load preloaded value
if(rvalid & (pix_cnt == 16'd8)) line_cnt <= line_cnt - 16'd1;      // Decrement register on valid data when pix_cnt resets  
 
// Address generator
always@(posedge clk or negedge rst_n)
if(~rst_n                                   ) araddr <= 32'd0                                           ; else // Set register 0 on reset
if(start                                    ) araddr <= cfg_map_ba                                      ; else // Load preloaded value
if(cfg_blk_en & rvalid & rlast & (~sts_done)) araddr <= (araddr + ({(arlen + 1'd1),3'd0})) + stride_incr;     // Increment address
   
always@(posedge clk or negedge rst_n)
if(~rst_n                     ) arlen <= 8'd0                                                       ; else // Set register 0 on reset
if(start                      ) arlen <= cfg_max_burst_length - 1'd1                                ; else // Load preloaded value on posedge enable
if(rlast & rvalid & cfg_blk_en) arlen <= lastreq_from_line ? pix_cnt : (cfg_max_burst_length - 1'd1);      // Set lentgh to max burst size or remaining pixels number on last request   
  
//Delay enable    
always@(posedge clk or negedge rst_n)
if(~rst_n) cfg_blk_en_d <= 1'b0      ;else
           cfg_blk_en_d <= cfg_blk_en;

//Output data 
always@(posedge clk or negedge rst_n)
if(~rst_n) fifo_data <= 64'd0; else
//Reverse bytes on corresponding configuration
if(rvalid) fifo_data <= cfg_reverse_pixel ? {rdata[7:0],rdata[15:8],rdata[23:16],rdata[31:24],rdata[39:32],rdata[47:40],rdata[55:48],rdata[63:56]} : rdata;

 
// Generate push signal 
always@(posedge clk or negedge rst_n)
if(~rst_n                     ) fifo_push <= 1'b0  ; else
if(cfg_blk_en & (~fifo_in_rst)) fifo_push <= rvalid;    //Push each valid data

             
always@(posedge clk or negedge rst_n)
if(~rst_n                                                           ) arvalid <= 1'b0                  ;else // Set valid to 0 on reset
if(arvalid & arready                                                ) arvalid <= 1'b0                  ;else // Resewhen address was taken
if(start                                                            ) arvalid <= 1'b1                  ;else // Set on posedge enalbe
if(fifo_rdy & ((~req_in_progress) |                                                                          // Or fifo has enough space and there is no request in progress
     (rvalid & rlast & ~((pix_cnt == 16'd8) & (line_cnt == 16'd1))))) arvalid <= cfg_blk_en & ~sts_done;     // Or the last pixel is read
    
 endmodule
 