//--------------------------------------------------------------------------------------------------
// The material in this file is property of FotoNation
// Project     : AXI2FRAME
// Module Name : FIFO2FRM_3MAP
// Author      : SZILARD HEGEDUS
// Created     : 05/02/2018
//--------------------------------------------------------------------------------------------------
// Description : Converts 3 channel input into single channel output on FI
//--------------------------------------------------------------------------------------------------
// Modification history :
// 05/02/2018 (SH): Initial version
//--------------------------------------------------------------------------------------------------

 module fifo2frm_3map#(
   parameter FIFO_DATA_WIDTH = 64
 )(
//------------------------------System IF-----------------------------------------------------------
   input                           clk             , // System clock
   input                           rst_n           , // Asynchronous reset active low
//------------------------------FIFO inputs---------------------------------------------------------
   input                           fifo_ch0_empty  , // FIFO empty
   input                           fifo_ch1_empty  , // FIFO empty
   input                           fifo_ch2_empty  , // FIFO empty
   input      [FIFO_DATA_WIDTH-1:0]fifo_ch0_popdata, // FIFO data
   input      [FIFO_DATA_WIDTH-1:0]fifo_ch1_popdata, // FIFO data
   input      [FIFO_DATA_WIDTH-1:0]fifo_ch2_popdata, // FIFO data
//-----------------------------Configuration IF inputs----------------------------------------------
   input                           cfg_blk_en      , // Block enable
   input                           cfg_map0_en     , // Channel 0 enable
   input                           cfg_map1_en     , // Channel 1 enable
   input                           cfg_map2_en     , // Channel 2 enable
   input                     [10:0]cfg_img_width   , // Image width
   input                     [10:0]cfg_img_height  , // Image height
//-----------------------------Frame IF inputs------------------------------------------------------
   input                           frm_rdy         , // Frame ready
//-----------------------------FIFO outputs---------------------------------------------------------
  output reg                      fifo_ch0_pop     , // FIFO pop
  output reg                      fifo_ch1_pop     , // FIFO pop
  output reg                      fifo_ch2_pop     , // FIFO pop
//------------------------------Frame IF outputs----------------------------------------------------
  output reg                      frm_val          , // Frame data valid
  output                    [23:0]frm_data         , // Frame data
  output reg                      frm_sof          , // Frame start of frame
  output reg                      frm_eof          , // Frame end of frame
  output reg                      frm_sol          , // Frame start of line
  output reg                      frm_eol            // Frame end of line  
 );

reg [FIFO_DATA_WIDTH-1:0]data0        ; // Axi channle 0 data 
reg [FIFO_DATA_WIDTH-1:0]data1        ; // Axi channle 1 data
reg [FIFO_DATA_WIDTH-1:0]data2        ; // Axi channle 2 data
reg                [10:0]pixel_cnt    ; // Pixel counter
reg                [10:0]line_cnt     ; // Line counter
wire                     start        ; // Start on posedge enable
wire                     cfg_map_en   ; // Maps are enabled
wire                     pop_en       ; // Enable pop
reg                      cfg_blk_en_d ; // Delay block enable
reg                      fifo_ch_pop_d; // Delay pop
reg                [3:0] nr_byte      ; // Count revieved bytes from input
wire                     frm_valrdy   ; // val & rdy
reg                      sts_frm_done ; // Indicates frame sent
 
assign start      = cfg_blk_en & (~cfg_blk_en_d)         ; // Start on posedge enable
assign frm_valrdy = frm_val & frm_rdy                    ;
assign cfg_map_en = (cfg_map0_en|cfg_map1_en|cfg_map2_en); // Enable block when at least one of the maps is enabled
assign pop_en     = (fifo_ch0_empty ^ cfg_map0_en) & (fifo_ch1_empty ^ cfg_map1_en) & (fifo_ch2_empty ^ cfg_map2_en) // Pop when enabled fifos are not empty
                     & (nr_byte < 2) & (~sts_frm_done)   ; // And frame not done and last byte was recieved from input     
assign frm_data   = {data2[7:0],data1[7:0],data0[7:0]}   ; // Combine 3 channel data
 
//Extract last byte from data
always@(posedge clk or negedge rst_n)
  if(~rst_n)         data0 <= 'd0                              ;else // Set data 0 on reset
  if(~cfg_map0_en)   data0 <= 'd0                              ;else // Set data 0 on reset
  if(fifo_ch_pop_d ) data0 <= fifo_ch0_popdata                       ;else // Load data from fifo after pop 
  if(frm_valrdy)     data0 <= {8'd0,data0[FIFO_DATA_WIDTH-1:8]};     // Get last byte from data
					  
always@(posedge clk or negedge rst_n)
   if(~rst_n)        data1 <= 'd0                              ;else // Set data 0 on reset
   if(~cfg_map1_en)  data1 <= 'd0                              ;else // Set data 0 on reset
   if(fifo_ch_pop_d) data1 <= fifo_ch1_popdata                       ;else // Load data from fifo after pop 
   if(frm_valrdy)    data1 <= {8'd0,data1[FIFO_DATA_WIDTH-1:8]};     // Get last byte from data
					  
always@(posedge clk or negedge rst_n)
   if(~rst_n)        data2 <= 'd0                              ;else // Set data 0 on reset
   if(~cfg_map2_en)  data2 <= 'd0                              ;else // Set data 0 on reset
   if(fifo_ch_pop_d) data2 <= fifo_ch2_popdata                       ;else // Load data from fifo after pop 
   if(frm_valrdy)    data2 <= {8'd0,data2[FIFO_DATA_WIDTH-1:8]};     // Get last byte from data

//------------------------------------------------ Pop signal --------------------------------------------------------- 
always@(posedge clk or negedge rst_n)
  if(~rst_n)       fifo_ch0_pop <= 1'b0       ;else
  if(fifo_ch0_pop) fifo_ch0_pop <= 1'b0       ;else // Reset pop after 1 cycle
  if(pop_en)       fifo_ch0_pop <= cfg_map0_en;     // Set on block and pop enable
             
always@(posedge clk or negedge rst_n)
  if(~rst_n)      fifo_ch1_pop <= 1'b0       ;else
  if(fifo_ch1_pop)fifo_ch1_pop <= 1'b0       ;else // Reset pop after 1 cycle
  if(pop_en)      fifo_ch1_pop <= cfg_map1_en;     // Set on block and pop enable

always@(posedge clk or negedge rst_n)
  if(~rst_n)       fifo_ch2_pop <= 1'b0       ;else
  if(fifo_ch2_pop) fifo_ch2_pop <= 1'b0       ;else // Reset pop after 1 cycle
  if(pop_en)       fifo_ch2_pop <= cfg_map2_en;     // Set on block and pop enable  
  
//------------------------------------- Internal registers -------------------------------------------
always@(posedge clk or negedge rst_n)
  if(~rst_n)  sts_frm_done <= 1'b0      ;else
  if(start)   sts_frm_done <= 1'b0      ;else // Reset on posedge enable
  if(frm_eof) sts_frm_done <= cfg_map_en;     // Set at end of frame
  
	
always@(posedge clk or negedge rst_n)
  if(~rst_n)                          frm_sol <= 1'b0      ;else 
  if(frm_sol & frm_valrdy)            frm_sol <= 1'b0      ;else // Reset after 1 cycle
  if((frm_eol & frm_valrdy) | start)  frm_sol <= cfg_map_en;     // Set at posedge enbble
                                   
always@(posedge clk or negedge rst_n)
  if(~rst_n)     frm_sof <= 1'b0      ;else 
  if(frm_valrdy) frm_sof <= 1'b0      ;else // Reset on val&rdy
  if(start)      frm_sof <= cfg_map_en;     // Set on posedge enable                                  
  
always@(posedge clk or negedge rst_n)
  if(~rst_n)                        frm_eol <= 1'b0      ;else 
  if(frm_eol & frm_valrdy)          frm_eol <= 1'b0      ;else // Reset after 1 cycle
  if((pixel_cnt == 2) & frm_valrdy) frm_eol <= cfg_map_en;     // Set when at last pixel
  
  
always@(posedge clk or negedge rst_n)
  if(~rst_n)                                          frm_eof <= 1'b0       ;else // Set default 0
  if((frm_eof & frm_valrdy) | start)                  frm_eof <= 1'b0       ;else // Reset on
  if((line_cnt == 1) & (pixel_cnt == 2) & frm_valrdy) frm_eof <= cfg_map_en;      // Set  

// Line counter 
always@(posedge clk or negedge rst_n)
  if(~rst_n)                               line_cnt <= 11'd0           ;else // Set default 0
  if(start )                               line_cnt <= cfg_img_height  ;else // Load image height on start, posedge enalbe
  if(frm_valrdy & frm_eol & ~sts_frm_done) line_cnt <= line_cnt - 1'd1 ;           // Decrement on val&rdy 

//Pixel counter 
always@(posedge clk or negedge rst_n)
  if(~rst_n)                         pixel_cnt <= 11'd0           ;else // Set default value to 0
  if(start | (frm_eol & frm_valrdy)) pixel_cnt <= cfg_img_width   ;else // Load image width on posedge enalbe or end of line
  if(frm_valrdy & ~sts_frm_done)     pixel_cnt <= pixel_cnt - 1'd1;     // Decrement on val&rdy
  
// Number the bytes separated from data
 always@(posedge clk or negedge rst_n)
  if(~rst_n)      nr_byte <= 4'd1          ;else // Set default value to 0
  if(fifo_ch0_pop)nr_byte <= 4'd8          ;else // Load image width on start or end of line
  if(frm_valrdy)  nr_byte <= nr_byte - 1'd1;     // Decrement otherwise
   

 
//-------------------------------------------------- Frame interface signals --------------------------------------------- 
always@(posedge clk or negedge rst_n)
  if(~rst_n)                  frm_val <= 1'd0;else 
  if((nr_byte == 1) & frm_rdy)frm_val <= 1'd0;else // Reset valid on ready and after last byte was separated in the shift register
  if(fifo_ch_pop_d)           frm_val <= 1'd1;     // First valid data 1 cicle after pop
  
//Delay enable 
always@(posedge clk or negedge rst_n)
  if(~rst_n) cfg_blk_en_d <= 1'd0      ;else  
             cfg_blk_en_d <= cfg_blk_en;

//Delay pop			 
always@(posedge clk or negedge rst_n)
  if(~rst_n) fifo_ch_pop_d <= 1'd0        ;else  
             fifo_ch_pop_d <= fifo_ch0_pop;
    								
  
endmodule
 