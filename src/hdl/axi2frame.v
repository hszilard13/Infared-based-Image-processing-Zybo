//--------------------------------------------------------------------------------------------------
// The material in this file is property of FotoNation
// Project     : AXI2FRAME
// Module Name : AXI2FRAME
// Author      : SZILARD HEGEDUS
// Created     : 05/02/2018
//--------------------------------------------------------------------------------------------------
// Description : Read 3 maps on AXI and output on single channel Frame IF
//--------------------------------------------------------------------------------------------------
// Modification history :
// 05/02/2018 (SH): Initial version
// 26/02/2019 (SH): Made FIFO external
//--------------------------------------------------------------------------------------------------

 module axi2frame#(
  parameter MEM_WIDTH    = 64, 
  parameter ADDR_WIDTH   = 6 
)(
// -------------------------------------------- System IF -------------------------------------------
input                        clk               , // System clock
input                        rst_n             , // Asynchronous reset active low
input                        axi0_arready      , // Channel 0 Address ready
input        [MEM_WIDTH-1:0] axi0_rdata        , // Channel 0 Read data
input                        axi0_rlast        , // Channel 0 Last data beat in transfer
input                        axi0_rvalid       , // Channel 0 Valid 
input                  [1:0] axi0_rresp        , // Channel 0 AXI response
output                [31:0] axi0_araddr       , // Channel 0 Address
output                 [7:0] axi0_arlen        , // Channel 0 Burst length 
output                 [1:0] axi0_arburst      , // Channel 0 Burst type
output                 [2:0] axi0_arsize       , // Channel 0 Number of bytes in each transfer
output                       axi0_arvalid      , // Channel 0 Address valid 
output                       axi0_rready       , // Channel 0 Read ready
// ----------------------------------------- AXI Channel 1 ---------------------------------------------
input                        axi1_arready      , // Channel 1 Address ready
input        [MEM_WIDTH-1:0] axi1_rdata        , // Channel 1 Read data
input                        axi1_rlast        , // Channel 1 Last data beat in transfer
input                        axi1_rvalid       , // Channel 1 Valid data
input                  [1:0] axi1_rresp        , // Channel 1 AXI response
output                [31:0] axi1_araddr       , // Channel 1 Address
output                 [7:0] axi1_arlen        , // Channel 1 Burst length 
output                 [1:0] axi1_arburst      , // Channel 1 Burst type
output                 [2:0] axi1_arsize       , // Channel 1 Number of bytes in each transfer
output                       axi1_arvalid      , // Channel 1 Address valid 
output                       axi1_rready       , // Channel 1 Read ready
// ----------------------------------------- AXI Channel 2 ---------------------------------------------
input                        axi2_arready      , // Channel 2 Address ready
input        [MEM_WIDTH-1:0] axi2_rdata        , // Channel 2 Read data
input                        axi2_rlast        , // Channel 2 Last data beat in transfer
input                        axi2_rvalid       , // Channel 2 Valid data
input                  [1:0] axi2_rresp        , // Channel 2 AXI response
output                [31:0] axi2_araddr       , // Channel 2 Address
output                 [7:0] axi2_arlen        , // Channel 2 Burst length 
output                 [1:0] axi2_arburst      , // Channel 2 Burst type
output                 [2:0] axi2_arsize       , // Channel 2 Number of bytes in each transfer
output                       axi2_arvalid      , // Channel 2 Address valid 
output                       axi2_rready       , // Channel 2 Read ready
// ------------------------------------ Configuration Interface inputs -------------------------------
input                         cfg_blk_en          , // Block enable
input                  [10:0] cfg_img_width       , // Image width
input                  [10:0] cfg_img_height      , // Image height
input                  [10:0] cfg_stride          , // The address distance between the first address of successive â€œhorizontalâ€? reads
input                  [31:0] cfg_map0_ba         , // Channel 0 base address
input                  [31:0] cfg_map1_ba         , // Channel 1 base address
input                  [31:0] cfg_map2_ba         , // Channel 2 base address
input                         cfg_map0_en         , // Channel 0 enable
input                         cfg_map1_en         , // Channel 1 enable
input                         cfg_map2_en         , // Channel 2 enable
input                   [7:0] cfg_max_burst_length, // Maximum burst length
input                         cfg_reverse_byte    , // Data is is big/small endian
input                         cfg_int_ack         , // Interrupt acknowledge
//-------------------------------------  FIFO Interface---------------------------------------------
input                        fifo_ch0_empty       ,
input [MEM_WIDTH-1:0]        fifo_ch0_popdata     ,
output                       fifo_ch0_pop         ,
output [MEM_WIDTH-1:0]       fifo_ch0_pushdata    ,
input [ADDR_WIDTH-1:0]       fifo_ch0_usedwords   ,
output                       fifo_ch0_push        ,
input                        fifo_ch0_full        ,
input                        fifo_ch1_empty       ,
input [MEM_WIDTH-1:0]        fifo_ch1_popdata     ,
output                       fifo_ch1_pop         ,
output [MEM_WIDTH-1:0]       fifo_ch1_pushdata    ,
input [ADDR_WIDTH-1:0]       fifo_ch1_usedwords   ,
output                       fifo_ch1_push        ,
input                        fifo_ch1_full        ,
input                        fifo_ch2_empty       ,
input [MEM_WIDTH-1:0]        fifo_ch2_popdata     ,
output                       fifo_ch2_pop         ,
output [MEM_WIDTH-1:0]       fifo_ch2_pushdata    ,
input [ADDR_WIDTH-1:0]       fifo_ch2_usedwords   ,
output                       fifo_ch2_push        ,
input                        fifo_ch2_full        ,
// ------------------------------------ Status IF outputs -------------------------------------------
output                      sts_axi_error         , // Axi error
output                      sts_read_done         , // Read done interrupt
output  reg                 sts_idle              , // Module in idle state
output  reg                 sts_frm_int           , // Interrupt 
//------------------------------Frame IF----------------------------------------------------
output                      frm_val               , // Frame data valid
output                [23:0]frm_data              , // Frame data
output                      frm_sof               , // Frame start of frame
output                      frm_eof               , // Frame end of frame
output                      frm_sol               , // Frame start of line
output                      frm_eol               , // Frame end of line
input                       frm_rdy                                                
 );
 
wire                  sts_done0         ;
wire                  sts_done1         ;
wire                  sts_done2         ;

wire start;
reg cfg_blk_en_d;
wire vga_rst_rd;
reg frm_eof_d;

assign vga_rst_rd = frm_eof_d & (~frm_eof); // Self-reset on negedge eof

 assign sts_axi_error = (cfg_map0_en&(axi0_rresp!=0))|(cfg_map1_en&(axi1_rresp!=0))|(cfg_map2_en&(axi2_rresp!=0)); // Error if response not 0
 assign sts_read_done = (sts_done0|(~cfg_map0_en))&(sts_done1|(~cfg_map1_en))&(sts_done2|(~cfg_map2_en))         ; // Read done when all sts_done is 1
 assign start         = cfg_blk_en & (~cfg_blk_en_d)                                                             ; //Start at posedge enable
 
 //Read done interrupt
 always@(posedge clk or negedge rst_n)
   if(~rst_n)                   sts_frm_int <= 1'b0      ;else 
   if(cfg_int_ack | vga_rst_rd) sts_frm_int <= 1'b0      ;else // Reset on interrupt ack or vga read reset
   if(sts_read_done & frm_eof ) sts_frm_int <= cfg_blk_en;     // Set when done reading memory and frame sent last pixel
   
 always@(posedge clk or negedge rst_n)
   if(~rst_n)                  sts_idle <= 1'b0;else
   if(start)                   sts_idle <= 1'b0;else // Reset on posedge enalbe
   if(sts_read_done & frm_eof) sts_idle <= 1'b1;     // Set on done reading memory and and frame sent last pixel
   
   
 //Delay enable
 always@(posedge clk or negedge rst_n)
   if(~rst_n) cfg_blk_en_d <= 1'b0      ;else
              cfg_blk_en_d <= cfg_blk_en;
              
always@(posedge clk or negedge rst_n)
    if(~rst_n) frm_eof_d <= 1'b0   ;else
               frm_eof_d <= frm_eof;

 axi2fifo#(
  .ADDR_WIDTH  (ADDR_WIDTH  )
 )axi2fifo0(
   // -------------------------------------------- System IF -------------------------------------------
  .clk                 (clk                     ), // System clock
  .rst_n               (rst_n                   ), // Asynchronous reset active low
  // ----------------------------------------- AXI ---------------------------------------------
  .arready             (axi0_arready            ), // Address ready
  .rdata               (axi0_rdata              ), // Read data
  .rlast               (axi0_rlast              ), // Last data beat in transfer
  .rvalid              (axi0_rvalid             ), // Valid data
  .araddr              (axi0_araddr             ), // Address
  .arlen               (axi0_arlen              ), // Burst length 
  .arburst             (axi0_arburst            ), // Burst type
  .arsize              (axi0_arsize             ), // Number of bytes in each transfer
  .arvalid             (axi0_arvalid            ), // Address valid 
  .rready              (axi0_rready             ), // Read ready
  // ----------------------------------- Configuration Interface inputs -------------------------------
  .cfg_blk_en          (cfg_map0_en & cfg_blk_en), // Block enable
  .cfg_img_width       (cfg_img_width           ), // Image width
  .cfg_img_height      (cfg_img_height          ), // Image height
  .cfg_stride          (cfg_stride              ), // The address distance between the first address of successive â€œhorizontalâ€? reads
  .cfg_map_ba          (cfg_map0_ba             ), // Channel base address
  .cfg_max_burst_length(cfg_max_burst_length    ), // Maximum burst length
  .cfg_reverse_pixel   (cfg_reverse_byte        ), // Data is is big/little endian
  // ------------------------------------ FIFO inputs --------------------------------------------------
  .fifo_words_used     (fifo_ch0_usedwords      ), // Used word in FIFO
  .fifo_full           (fifo_ch0_full           ),
  .fifo_empty          (fifo_ch0_empty          ), // FIFO empty
  // ------------------------------------- FIFO outputs ------------------------------------------------
  .fifo_push           (fifo_ch0_push           ), // Push
  .fifo_data           (fifo_ch0_pushdata       ), // Output data
  // ------------------------------------ Status IF outputs -------------------------------------------
  .sts_done            (sts_done0               )  // Done interrupt
 );
 
  axi2fifo#(
  .ADDR_WIDTH  (ADDR_WIDTH  )
 )axi2fifo1(
// -------------------------------------------- System IF -------------------------------------------
  .clk                 (clk                     ), // System clock
  .rst_n               (rst_n                   ), // Asynchronous reset active low
// ----------------------------------------- AXI ---------------------------------------------
  .arready             (axi1_arready            ), // Address ready
  .rdata               (axi1_rdata              ), // Read data
  .rlast               (axi1_rlast              ), // Last data beat in transfer
  .rvalid              (axi1_rvalid             ), // Valid data
  .araddr              (axi1_araddr             ), // Address
  .arlen               (axi1_arlen              ), // Burst length 
  .arburst             (axi1_arburst            ), // Burst type
  .arsize              (axi1_arsize             ), // Number of bytes in each transfer
  .arvalid             (axi1_arvalid            ), // Address valid 
  .rready              (axi1_rready             ), // Read ready
// ------------------------------------ Configuration Interface inputs -------------------------------
  .cfg_blk_en          (cfg_map1_en & cfg_blk_en), // Block enable
  .cfg_img_width       (cfg_img_width           ), // Image width
  .cfg_img_height      (cfg_img_height          ), // Image height
  .cfg_stride          (cfg_stride              ), // The address distance between the first address of successive â€œhorizontalâ€? reads
  .cfg_map_ba          (cfg_map1_ba             ), // Channel base address
  .cfg_max_burst_length(cfg_max_burst_length    ), // Maximum burst length
  .cfg_reverse_pixel   (cfg_reverse_byte        ), // Data is is big/small endian
// ------------------------------------ FIFO inputs --------------------------------------------------
  .fifo_words_used     (fifo_ch1_usedwords      ), // Used word in FIFO
  .fifo_full           (fifo_ch1_full           ),
  .fifo_empty          (fifo_ch1_empty          ), // FIFO empty
// ------------------------------------- FIFO outputs ------------------------------------------------
  .fifo_push           (fifo_ch1_push           ), // Push
  .fifo_data           (fifo_ch1_pushdata       ), // Output data
// ------------------------------------ Status IF outputs -------------------------------------------
  .sts_done            (sts_done1               )  // Done interrupt
 );
 
 
axi2fifo#(
  .ADDR_WIDTH  (ADDR_WIDTH                 )
 )axi2fifo2(
   // -------------------------------------------- System IF -------------------------------------------
  .clk                 (clk                     ), // System clock
  .rst_n               (rst_n                   ), // Asynchronous reset active low
  // ----------------------------------------- AXI inputs ---------------------------------------------
  .arready             (axi2_arready            ), // Address ready
  .rdata               (axi2_rdata              ), // Read data
  .rlast               (axi2_rlast              ), // Last data beat in transfer
  .rvalid              (axi2_rvalid             ), // Valid data
  .araddr              (axi2_araddr             ), // Address
  .arlen               (axi2_arlen              ), // Burst length 
  .arburst             (axi2_arburst            ), // Burst type
  .arsize              (axi2_arsize             ), // Number of bytes in each transfer
  .arvalid             (axi2_arvalid            ), // Address valid 
  .rready              (axi2_rready             ), // Read ready
  // ------------------------------------ Configuration Interface inputs -------------------------------
  .cfg_blk_en          (cfg_map2_en & cfg_blk_en), // Block enable
  .cfg_img_width       (cfg_img_width           ), // Image width
  .cfg_img_height      (cfg_img_height          ), // Image height
  .cfg_stride          (cfg_stride              ), // The address distance between the first address of successive â€œhorizontalâ€? reads
  .cfg_map_ba          (cfg_map2_ba             ), // Channel base address
  .cfg_max_burst_length(cfg_max_burst_length    ), // Maximum burst length
  .cfg_reverse_pixel   (cfg_reverse_byte        ), // Data is is big/little endian
  // ------------------------------------ FIFO inputs --------------------------------------------------
  .fifo_words_used     (fifo_ch2_usedwords      ), // Used word in FIFO
  .fifo_full           (fifo_ch2_full           ),
  .fifo_empty          (fifo_ch2_empty          ), // FIFO empty
  // ------------------------------------- FIFO outputs ------------------------------------------------
  .fifo_push           (fifo_ch2_push           ), // Push
  .fifo_data           (fifo_ch2_pushdata       ), // Output data
  // ------------------------------------ Status IF outputs -------------------------------------------
  .sts_done            (sts_done2               )  // Done interrupt
 );
 
 fifo2frm_3map#(
   .FIFO_DATA_WIDTH(MEM_WIDTH)
 )fifo2frm(
//------------------------------System IF-----------------------------------------------------------
   .clk             (clk           ), // System clock
   .rst_n           (rst_n         ), // Asynchronous reset active low
//------------------------------FIFO inputs---------------------------------------------------------
   .fifo_ch0_empty  (fifo_ch0_empty), // FIFO empty
   .fifo_ch1_empty  (fifo_ch1_empty), // FIFO empty
   .fifo_ch2_empty  (fifo_ch2_empty), // FIFO empty
   .fifo_ch0_popdata(fifo_ch0_popdata ), // FIFO data
   .fifo_ch1_popdata(fifo_ch1_popdata ), // FIFO data
   .fifo_ch2_popdata(fifo_ch2_popdata ), // FIFO data   
//-----------------------------Configuration IF inputs----------------------------------------------
   .cfg_blk_en    (cfg_blk_en    ),
   .cfg_map0_en   (cfg_map0_en   ), // Channel 0 enable
   .cfg_map1_en   (cfg_map1_en   ), // Channel 1 enable
   .cfg_map2_en   (cfg_map2_en   ), // Channel 2 enable
   .cfg_img_width (cfg_img_width ), // Image width
   .cfg_img_height(cfg_img_height), // Image height
//-----------------------------Frame IF inputs------------------------------------------------------
   .frm_rdy       (frm_rdy       ), // Frame ready
//-----------------------------FIFO outputs---------------------------------------------------------
   .fifo_ch0_pop  (fifo_ch0_pop  ), // FIFO pop
   .fifo_ch1_pop  (fifo_ch1_pop  ), // FIFO pop
   .fifo_ch2_pop  (fifo_ch2_pop  ), // FIFO pop
//------------------------------Frame IF outputs----------------------------------------------------
   .frm_val       (frm_val       ), // Frame data valid
   .frm_data      (frm_data      ), // Frame data
   .frm_sof       (frm_sof       ), // Frame start of frame
   .frm_eof       (frm_eof       ), // Frame end of frame
   .frm_sol       (frm_sol       ), // Frame start of line
   .frm_eol       (frm_eol       )  // Frame end of line
 );
 
 endmodule
 