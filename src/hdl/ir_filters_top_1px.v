//--------------------------------------------------------------------------------------------------
// The material in this file is property of FotoNation
// Project     : IR_filters
// Module Name : ir_filters_top
// Author      : SZILARD HEGEDUS
// Created     : 10/29/2018
//--------------------------------------------------------------------------------------------------
// Description : IR_filters top module
//--------------------------------------------------------------------------------------------------
// Modification history :
// 10/29/2018 (SH):Initial version
//--------------------------------------------------------------------------------------------------

module ir_filters_top_1px#(
  parameter USEDW_BITS    = 10 ,
  parameter DATA_WIDTH    = 8  
)(
  input                      clk                     , // System clock
  input                      rst_n                   , // Asynchronous reset active low
  input                      sw_rst                  ,
//------------------------------- Configuration interface -----------------------------------------
  input  [3*DATA_WIDTH-1:0]  cfg_bkg                 ,
  input  [             7:0]  cfg_pix_corr_in_sel     ,
  input  [             7:0]  cfg_smooth_in_sel       ,
  input  [             7:0]  cfg_sharp_in_sel        ,
  input  [             7:0]  cfg_laplace_in_sel      ,
  input  [             7:0]  cfg_median_in_sel       ,
  input  [             7:0]  cfg_pix_corr_thr        ,
  input  [             7:0]  cfg_sharp_coef          ,
  input  [             7:0]  cfg_out_sel             ,
//--------------------------------Input frame interface---------------------------------------------
  input                      frm_val                 , // Master has valid data to be transferred
  output                     frm_rdy                 , // Slave is ready to receive the data
  input  [3*DATA_WIDTH-1:0]  frm_data                , // Data transferred from master to slave
  input                      frm_sof                 , // Start of Frame
  input                      frm_eof                 , // End of Frame
  input                      frm_sol                 , // Start of Line
  input                      frm_eol                 , // End of Line
//--------------------------------Output frame interface---------------------------------------------   
  output                     filt_val                , // Master has valid data to be transferred      
  input                      filt_rdy                , // Slave is ready to receive the data           
  output [3*DATA_WIDTH-1:0]  filt_data               , // Data transferred from master to slave        
  output                     filt_sof                , // Start of Frame                               
  output                     filt_eof                , // End of Frame                                 
  output                     filt_sol                , // Start of Line                                
  output                     filt_eol                , // End of Line                                  
//-----------------------------------FIFO interface-------------------------------------------------
  output                     smooth_lb_fifo_push     , // Master pushes data into FIFO
  output [3*2*DATA_WIDTH-1:0]smooth_lb_fifo_pushdata , // Data stored into FIFO
  input                      smooth_lb_fifo_full     , // FIFO full
  output                     smooth_lb_fifo_pop      , // Master pops data from FIFO
  input  [3*2*DATA_WIDTH-1:0]smooth_lb_fifo_popdata  , // Data retrived from FIFO
  input                      smooth_lb_fifo_empty    , // FIFO empty
  input  [   USEDW_BITS-1:0] smooth_lb_fifo_usedwords, // Used words in FIFO 
  output                     laplace_lb_fifo_push     , // Master pushes data into FIFO
  output [3*2*DATA_WIDTH-1:0]laplace_lb_fifo_pushdata , // Data stored into FIFO
  input                      laplace_lb_fifo_full     , // FIFO full
  output                     laplace_lb_fifo_pop      , // Master pops data from FIFO
  input  [3*2*DATA_WIDTH-1:0]laplace_lb_fifo_popdata  , // Data retrived from FIFO
  input                      laplace_lb_fifo_empty    , // FIFO empty
  input  [   USEDW_BITS-1:0] laplace_lb_fifo_usedwords, // Used words in FIFO 
  output                     sharp_lb_fifo_push       , // Master pushes data into FIFO
  output [3*2*DATA_WIDTH-1:0]sharp_lb_fifo_pushdata   , // Data stored into FIFO
  input                      sharp_lb_fifo_full       , // FIFO full
  output                     sharp_lb_fifo_pop        , // Master pops data from FIFO
  input  [3*2*DATA_WIDTH-1:0]sharp_lb_fifo_popdata    , // Data retrived from FIFO
  input                      sharp_lb_fifo_empty      , // FIFO empty
  input  [   USEDW_BITS-1:0] sharp_lb_fifo_usedwords  , // Used words in FIFO 
  output                     pix_corr_lb_fifo_push     , // Master pushes data into FIFO
  output [3*2*DATA_WIDTH-1:0]pix_corr_lb_fifo_pushdata , // Data stored into FIFO
  input                      pix_corr_lb_fifo_full     , // FIFO full
  output                     pix_corr_lb_fifo_pop      , // Master pops data from FIFO
  input  [3*2*DATA_WIDTH-1:0]pix_corr_lb_fifo_popdata  , // Data retrived from FIFO
  input                      pix_corr_lb_fifo_empty    , // FIFO empty
  input  [   USEDW_BITS-1:0] pix_corr_lb_fifo_usedwords, // Used words in FIFO
  output                     median_lb_fifo_push       , // Master pushes data into FIFO
  output [3*2*DATA_WIDTH-1:0]median_lb_fifo_pushdata   , // Data stored into FIFO
  input                      median_lb_fifo_full       , // FIFO full
  output                     median_lb_fifo_pop        , // Master pops data from FIFO
  input  [3*2*DATA_WIDTH-1:0]median_lb_fifo_popdata    , // Data retrived from FIFO
  input                      median_lb_fifo_empty      , // FIFO empty
  input  [   USEDW_BITS-1:0] median_lb_fifo_usedwords  , // Used words in FIFO
  
  output                    smooth_lb_fifo_clr         ,
  output                    sharp_lb_fifo_clr          ,
  output                    median_lb_fifo_clr         ,
  output                    laplace_lb_fifo_clr        ,
  output                    pix_corr_lb_fifo_clr      
 
);

wire                   smooth_lb_in_frm_val ;
wire                   smooth_lb_in_frm_rdy ;
wire [3*DATA_WIDTH-1:0]smooth_lb_in_frm_data;
wire                   smooth_lb_in_frm_sof ;
wire                   smooth_lb_in_frm_eof ;
wire                   smooth_lb_in_frm_sol ;
wire                   smooth_lb_in_frm_eol ;

wire                   smooth_frm_val ;
wire                   smooth_frm_rdy ;
wire [3*DATA_WIDTH-1:0]smooth_frm_data;
wire                   smooth_frm_sof ;
wire                   smooth_frm_eof ;
wire                   smooth_frm_sol ;
wire                   smooth_frm_eol ;

wire                     smooth_lb_out_val ;
wire                     smooth_lb_out_rdy ;
wire [9*3*DATA_WIDTH-1:0]smooth_lb_out_data;
wire                     smooth_lb_out_sof ;
wire                     smooth_lb_out_eof ;
wire                     smooth_lb_out_sol ;
wire                     smooth_lb_out_eol ;

wire [9*DATA_WIDTH-1:0] smooth_lb_out_data_ch0;
wire [9*DATA_WIDTH-1:0] smooth_lb_out_data_ch1;
wire [9*DATA_WIDTH-1:0] smooth_lb_out_data_ch2;

 wire                   laplace_frm_val ;
 wire                   laplace_frm_rdy ;
 wire [3*DATA_WIDTH-1:0]laplace_frm_data;
 wire                   laplace_frm_sof ;
 wire                   laplace_frm_eof ;
 wire                   laplace_frm_sol ;
 wire                   laplace_frm_eol ;


 wire                   laplace_lb_in_frm_val ;
 wire                   laplace_lb_in_frm_rdy ;
 wire [3*DATA_WIDTH-1:0]laplace_lb_in_frm_data;
 wire                   laplace_lb_in_frm_sof ;
 wire                   laplace_lb_in_frm_eof ;
 wire                   laplace_lb_in_frm_sol ;
 wire                   laplace_lb_in_frm_eol ;


 wire                     laplace_lb_out_val ;
 wire                     laplace_lb_out_rdy ;
 wire [9*3*DATA_WIDTH-1:0]laplace_lb_out_data;
 wire                     laplace_lb_out_sof ;
 wire                     laplace_lb_out_eof ;
 wire                     laplace_lb_out_sol ;
 wire                     laplace_lb_out_eol ;

wire [9*DATA_WIDTH-1:0] laplace_lb_out_data_ch0;
wire [9*DATA_WIDTH-1:0] laplace_lb_out_data_ch1;
wire [9*DATA_WIDTH-1:0] laplace_lb_out_data_ch2;

wire                   sharp_frm_val ;
wire                   sharp_frm_rdy ;
wire [3*DATA_WIDTH-1:0]sharp_frm_data;
wire                   sharp_frm_sof ;
wire                   sharp_frm_eof ;
wire                   sharp_frm_sol ;
wire                   sharp_frm_eol ;

wire                   sharp_lb_in_frm_val ;
wire                   sharp_lb_in_frm_rdy ;
wire [3*DATA_WIDTH-1:0]sharp_lb_in_frm_data;
wire                   sharp_lb_in_frm_sof ;
wire                   sharp_lb_in_frm_eof ;
wire                   sharp_lb_in_frm_sol ;
wire                   sharp_lb_in_frm_eol ;

wire                     sharp_lb_out_val ;
wire                     sharp_lb_out_rdy  ;
wire [9*3*DATA_WIDTH-1:0]sharp_lb_out_data;
wire                     sharp_lb_out_sof ;
wire                     sharp_lb_out_eof ;
wire                     sharp_lb_out_sol ;
wire                     sharp_lb_out_eol ;

wire [9*DATA_WIDTH-1:0] sharp_lb_out_data_ch0;
wire [9*DATA_WIDTH-1:0] sharp_lb_out_data_ch1;
wire [9*DATA_WIDTH-1:0] sharp_lb_out_data_ch2;

wire                   pix_corr_frm_val ;
wire                   pix_corr_frm_rdy ;
wire [3*DATA_WIDTH-1:0]pix_corr_frm_data;
wire                   pix_corr_frm_sof ;
wire                   pix_corr_frm_eof ;
wire                   pix_corr_frm_sol ;
wire                   pix_corr_frm_eol ;

wire                   pix_corr_lb_in_frm_val ;
wire                   pix_corr_lb_in_frm_rdy ;
wire [3*DATA_WIDTH-1:0]pix_corr_lb_in_frm_data;
wire                   pix_corr_lb_in_frm_sof ;
wire                   pix_corr_lb_in_frm_eof ;
wire                   pix_corr_lb_in_frm_sol ;
wire                   pix_corr_lb_in_frm_eol ;

wire                     pix_corr_lb_out_val ;
wire                     pix_corr_lb_out_rdy ;
wire [9*3*DATA_WIDTH-1:0]pix_corr_lb_out_data;
wire                     pix_corr_lb_out_sof ;
wire                     pix_corr_lb_out_eof ;
wire                     pix_corr_lb_out_sol ;
wire                     pix_corr_lb_out_eol ;

wire [9*DATA_WIDTH-1:0] pix_corr_lb_out_data_ch0;
wire [9*DATA_WIDTH-1:0] pix_corr_lb_out_data_ch1;
wire [9*DATA_WIDTH-1:0] pix_corr_lb_out_data_ch2;

wire                   median_frm_val ;
wire                   median_frm_rdy ;
wire [3*DATA_WIDTH-1:0]median_frm_data;
wire                   median_frm_sof ;
wire                   median_frm_eof ;
wire                   median_frm_sol ;
wire                   median_frm_eol ;

wire                   median_lb_in_frm_val ;
wire                   median_lb_in_frm_rdy ;
wire [3*DATA_WIDTH-1:0]median_lb_in_frm_data;
wire                   median_lb_in_frm_sof ;
wire                   median_lb_in_frm_eof ;
wire                   median_lb_in_frm_sol ;
wire                   median_lb_in_frm_eol ;

wire                     median_lb_out_val ;
wire                     median_lb_out_rdy  ;
wire [9*3*DATA_WIDTH-1:0]median_lb_out_data;
wire                     median_lb_out_sof ;
wire                     median_lb_out_eof ;
wire                     median_lb_out_sol ;
wire                     median_lb_out_eol ;

wire [9*DATA_WIDTH-1:0] median_lb_out_data_ch0;
wire [9*DATA_WIDTH-1:0] median_lb_out_data_ch1;
wire [9*DATA_WIDTH-1:0] median_lb_out_data_ch2;


wire pix_corr0_frm_rdy;
wire pix_corr2_frm_rdy;
wire pix_corr3_frm_rdy;
wire pix_corr4_frm_rdy;
wire pix_corr5_frm_rdy;
wire median1_frm_rdy;
wire median2_frm_rdy;
wire median3_frm_rdy;
wire median4_frm_rdy;
wire median5_frm_rdy;
wire laplace0_frm_rdy;
wire laplace1_frm_rdy;
wire laplace3_frm_rdy;
wire laplace4_frm_rdy;
wire laplace5_frm_rdy;
wire smooth0_frm_rdy;
wire smooth1_frm_rdy;
wire smooth2_frm_rdy;
wire smooth3_frm_rdy;
wire smooth5_frm_rdy;
wire sharp0_frm_rdy;
wire sharp1_frm_rdy;
wire sharp2_frm_rdy;
wire sharp4_frm_rdy;
wire sharp5_frm_rdy;
wire frm0_rdy;
wire frm1_rdy;
wire frm2_rdy;
wire frm3_rdy;
wire frm4_rdy;
wire frm5_rdy;

wire [DATA_WIDTH-1:0] pix_corr_ch2_frm_data;
wire [DATA_WIDTH-1:0] pix_corr_ch1_frm_data;
wire [DATA_WIDTH-1:0] pix_corr_ch0_frm_data;
wire [DATA_WIDTH-1:0] laplace_ch1_frm_data ;
wire [DATA_WIDTH-1:0] laplace_ch2_frm_data ;
wire [DATA_WIDTH-1:0] laplace_ch0_frm_data ;
wire [DATA_WIDTH-1:0] sharp_ch2_frm_data   ;
wire [DATA_WIDTH-1:0] sharp_ch1_frm_data   ;
wire [DATA_WIDTH-1:0] sharp_ch0_frm_data   ;
wire [DATA_WIDTH-1:0] smooth_ch2_frm_data  ;
wire [DATA_WIDTH-1:0] smooth_ch1_frm_data  ;
wire [DATA_WIDTH-1:0] smooth_ch0_frm_data  ;
wire [DATA_WIDTH-1:0] median_ch2_frm_data  ;
wire [DATA_WIDTH-1:0] median_ch1_frm_data  ;
wire [DATA_WIDTH-1:0] median_ch0_frm_data  ;
 
assign sharp_lb_out_data_ch2 = {sharp_lb_out_data[27*DATA_WIDTH-1:26*DATA_WIDTH],sharp_lb_out_data[24*DATA_WIDTH-1:23*DATA_WIDTH],sharp_lb_out_data[21*DATA_WIDTH-1:20*DATA_WIDTH],
                                sharp_lb_out_data[18*DATA_WIDTH-1:17*DATA_WIDTH],sharp_lb_out_data[15*DATA_WIDTH-1:14*DATA_WIDTH],sharp_lb_out_data[12*DATA_WIDTH-1:11*DATA_WIDTH],
                                sharp_lb_out_data[ 9*DATA_WIDTH-1: 8*DATA_WIDTH],sharp_lb_out_data[ 6*DATA_WIDTH-1: 5*DATA_WIDTH],sharp_lb_out_data[ 3*DATA_WIDTH-1: 2*DATA_WIDTH]};
assign sharp_lb_out_data_ch1 = {sharp_lb_out_data[26*DATA_WIDTH-1:25*DATA_WIDTH],sharp_lb_out_data[23*DATA_WIDTH-1:22*DATA_WIDTH],sharp_lb_out_data[20*DATA_WIDTH-1:19*DATA_WIDTH],
                                sharp_lb_out_data[17*DATA_WIDTH-1:16*DATA_WIDTH],sharp_lb_out_data[14*DATA_WIDTH-1:13*DATA_WIDTH],sharp_lb_out_data[11*DATA_WIDTH-1:10*DATA_WIDTH],
                                sharp_lb_out_data[ 8*DATA_WIDTH-1: 7*DATA_WIDTH],sharp_lb_out_data[ 5*DATA_WIDTH-1: 4*DATA_WIDTH],sharp_lb_out_data[ 2*DATA_WIDTH-1:   DATA_WIDTH]}; 
assign sharp_lb_out_data_ch0 = {sharp_lb_out_data[25*DATA_WIDTH-1:24*DATA_WIDTH],sharp_lb_out_data[22*DATA_WIDTH-1:21*DATA_WIDTH],sharp_lb_out_data[19*DATA_WIDTH-1:18*DATA_WIDTH],
                                sharp_lb_out_data[16*DATA_WIDTH-1:15*DATA_WIDTH],sharp_lb_out_data[13*DATA_WIDTH-1:12*DATA_WIDTH],sharp_lb_out_data[10*DATA_WIDTH-1: 9*DATA_WIDTH],
                                sharp_lb_out_data[7 *DATA_WIDTH-1: 6*DATA_WIDTH],sharp_lb_out_data[ 4*DATA_WIDTH-1: 3*DATA_WIDTH],sharp_lb_out_data[   DATA_WIDTH-1:            0]};
								
assign pix_corr_lb_out_data_ch2 = {pix_corr_lb_out_data[27*DATA_WIDTH-1:26*DATA_WIDTH],pix_corr_lb_out_data[24*DATA_WIDTH-1:23*DATA_WIDTH],pix_corr_lb_out_data[21*DATA_WIDTH-1:20*DATA_WIDTH],
                                   pix_corr_lb_out_data[18*DATA_WIDTH-1:17*DATA_WIDTH],pix_corr_lb_out_data[15*DATA_WIDTH-1:14*DATA_WIDTH],pix_corr_lb_out_data[12*DATA_WIDTH-1:11*DATA_WIDTH],
                                   pix_corr_lb_out_data[ 9*DATA_WIDTH-1: 8*DATA_WIDTH],pix_corr_lb_out_data[ 6*DATA_WIDTH-1: 5*DATA_WIDTH],pix_corr_lb_out_data[ 3*DATA_WIDTH-1: 2*DATA_WIDTH]};
assign pix_corr_lb_out_data_ch1 = {pix_corr_lb_out_data[26*DATA_WIDTH-1:25*DATA_WIDTH],pix_corr_lb_out_data[23*DATA_WIDTH-1:22*DATA_WIDTH],pix_corr_lb_out_data[20*DATA_WIDTH-1:19*DATA_WIDTH],
                                   pix_corr_lb_out_data[17*DATA_WIDTH-1:16*DATA_WIDTH],pix_corr_lb_out_data[14*DATA_WIDTH-1:13*DATA_WIDTH],pix_corr_lb_out_data[11*DATA_WIDTH-1:10*DATA_WIDTH],
                                   pix_corr_lb_out_data[ 8*DATA_WIDTH-1: 7*DATA_WIDTH],pix_corr_lb_out_data[ 5*DATA_WIDTH-1: 4*DATA_WIDTH],pix_corr_lb_out_data[ 2*DATA_WIDTH-1:   DATA_WIDTH]}; 
assign pix_corr_lb_out_data_ch0 = {pix_corr_lb_out_data[25*DATA_WIDTH-1:24*DATA_WIDTH],pix_corr_lb_out_data[22*DATA_WIDTH-1:21*DATA_WIDTH],pix_corr_lb_out_data[19*DATA_WIDTH-1:18*DATA_WIDTH],
                                   pix_corr_lb_out_data[16*DATA_WIDTH-1:15*DATA_WIDTH],pix_corr_lb_out_data[13*DATA_WIDTH-1:12*DATA_WIDTH],pix_corr_lb_out_data[10*DATA_WIDTH-1: 9*DATA_WIDTH],
                                   pix_corr_lb_out_data[7 *DATA_WIDTH-1: 6*DATA_WIDTH],pix_corr_lb_out_data[ 4*DATA_WIDTH-1: 3*DATA_WIDTH],pix_corr_lb_out_data[   DATA_WIDTH-1:            0]};
							
assign smooth_lb_out_data_ch2 = {smooth_lb_out_data[27*DATA_WIDTH-1:26*DATA_WIDTH],smooth_lb_out_data[24*DATA_WIDTH-1:23*DATA_WIDTH],smooth_lb_out_data[21*DATA_WIDTH-1:20*DATA_WIDTH],
                                 smooth_lb_out_data[18*DATA_WIDTH-1:17*DATA_WIDTH],smooth_lb_out_data[15*DATA_WIDTH-1:14*DATA_WIDTH],smooth_lb_out_data[12*DATA_WIDTH-1:11*DATA_WIDTH],
                                 smooth_lb_out_data[ 9*DATA_WIDTH-1: 8*DATA_WIDTH],smooth_lb_out_data[ 6*DATA_WIDTH-1: 5*DATA_WIDTH],smooth_lb_out_data[ 3*DATA_WIDTH-1: 2*DATA_WIDTH]};
assign smooth_lb_out_data_ch1 = {smooth_lb_out_data[26*DATA_WIDTH-1:25*DATA_WIDTH],smooth_lb_out_data[23*DATA_WIDTH-1:22*DATA_WIDTH],smooth_lb_out_data[20*DATA_WIDTH-1:19*DATA_WIDTH],
                                 smooth_lb_out_data[17*DATA_WIDTH-1:16*DATA_WIDTH],smooth_lb_out_data[14*DATA_WIDTH-1:13*DATA_WIDTH],smooth_lb_out_data[11*DATA_WIDTH-1:10*DATA_WIDTH],
                                 smooth_lb_out_data[ 8*DATA_WIDTH-1: 7*DATA_WIDTH],smooth_lb_out_data[ 5*DATA_WIDTH-1: 4*DATA_WIDTH],smooth_lb_out_data[ 2*DATA_WIDTH-1:   DATA_WIDTH]}; 
assign smooth_lb_out_data_ch0 = {smooth_lb_out_data[25*DATA_WIDTH-1:24*DATA_WIDTH],smooth_lb_out_data[22*DATA_WIDTH-1:21*DATA_WIDTH],smooth_lb_out_data[19*DATA_WIDTH-1:18*DATA_WIDTH],
                                 smooth_lb_out_data[16*DATA_WIDTH-1:15*DATA_WIDTH],smooth_lb_out_data[13*DATA_WIDTH-1:12*DATA_WIDTH],smooth_lb_out_data[10*DATA_WIDTH-1: 9*DATA_WIDTH],
                                 smooth_lb_out_data[7 *DATA_WIDTH-1: 6*DATA_WIDTH],smooth_lb_out_data[ 4*DATA_WIDTH-1: 3*DATA_WIDTH],smooth_lb_out_data[   DATA_WIDTH-1:            0]};
								
assign laplace_lb_out_data_ch2 = {laplace_lb_out_data[27*DATA_WIDTH-1:26*DATA_WIDTH],laplace_lb_out_data[24*DATA_WIDTH-1:23*DATA_WIDTH],laplace_lb_out_data[21*DATA_WIDTH-1:20*DATA_WIDTH],
                                  laplace_lb_out_data[18*DATA_WIDTH-1:17*DATA_WIDTH],laplace_lb_out_data[15*DATA_WIDTH-1:14*DATA_WIDTH],laplace_lb_out_data[12*DATA_WIDTH-1:11*DATA_WIDTH],
                                  laplace_lb_out_data[ 9*DATA_WIDTH-1: 8*DATA_WIDTH],laplace_lb_out_data[ 6*DATA_WIDTH-1: 5*DATA_WIDTH],laplace_lb_out_data[ 3*DATA_WIDTH-1: 2*DATA_WIDTH]};
assign laplace_lb_out_data_ch1 = {laplace_lb_out_data[26*DATA_WIDTH-1:25*DATA_WIDTH],laplace_lb_out_data[23*DATA_WIDTH-1:22*DATA_WIDTH],laplace_lb_out_data[20*DATA_WIDTH-1:19*DATA_WIDTH],
                                  laplace_lb_out_data[17*DATA_WIDTH-1:16*DATA_WIDTH],laplace_lb_out_data[14*DATA_WIDTH-1:13*DATA_WIDTH],laplace_lb_out_data[11*DATA_WIDTH-1:10*DATA_WIDTH],
                                  laplace_lb_out_data[ 8*DATA_WIDTH-1: 7*DATA_WIDTH],laplace_lb_out_data[ 5*DATA_WIDTH-1: 4*DATA_WIDTH],laplace_lb_out_data[ 2*DATA_WIDTH-1:   DATA_WIDTH]}; 
assign laplace_lb_out_data_ch0 = {laplace_lb_out_data[25*DATA_WIDTH-1:24*DATA_WIDTH],laplace_lb_out_data[22*DATA_WIDTH-1:21*DATA_WIDTH],laplace_lb_out_data[19*DATA_WIDTH-1:18*DATA_WIDTH],
                                  laplace_lb_out_data[16*DATA_WIDTH-1:15*DATA_WIDTH],laplace_lb_out_data[13*DATA_WIDTH-1:12*DATA_WIDTH],laplace_lb_out_data[10*DATA_WIDTH-1: 9*DATA_WIDTH],
                                  laplace_lb_out_data[7 *DATA_WIDTH-1: 6*DATA_WIDTH],laplace_lb_out_data[ 4*DATA_WIDTH-1: 3*DATA_WIDTH],laplace_lb_out_data[   DATA_WIDTH-1:            0]};
								
assign median_lb_out_data_ch2 = {median_lb_out_data[27*DATA_WIDTH-1:26*DATA_WIDTH],median_lb_out_data[24*DATA_WIDTH-1:23*DATA_WIDTH],median_lb_out_data[21*DATA_WIDTH-1:20*DATA_WIDTH],
                                 median_lb_out_data[18*DATA_WIDTH-1:17*DATA_WIDTH],median_lb_out_data[15*DATA_WIDTH-1:14*DATA_WIDTH],median_lb_out_data[12*DATA_WIDTH-1:11*DATA_WIDTH],
                                 median_lb_out_data[ 9*DATA_WIDTH-1: 8*DATA_WIDTH],median_lb_out_data[ 6*DATA_WIDTH-1: 5*DATA_WIDTH],median_lb_out_data[ 3*DATA_WIDTH-1: 2*DATA_WIDTH]};
assign median_lb_out_data_ch1 = {median_lb_out_data[26*DATA_WIDTH-1:25*DATA_WIDTH],median_lb_out_data[23*DATA_WIDTH-1:22*DATA_WIDTH],median_lb_out_data[20*DATA_WIDTH-1:19*DATA_WIDTH],
                                 median_lb_out_data[17*DATA_WIDTH-1:16*DATA_WIDTH],median_lb_out_data[14*DATA_WIDTH-1:13*DATA_WIDTH],median_lb_out_data[11*DATA_WIDTH-1:10*DATA_WIDTH],
                                 median_lb_out_data[ 8*DATA_WIDTH-1: 7*DATA_WIDTH],median_lb_out_data[ 5*DATA_WIDTH-1: 4*DATA_WIDTH],median_lb_out_data[ 2*DATA_WIDTH-1:   DATA_WIDTH]}; 
assign median_lb_out_data_ch0 = {median_lb_out_data[25*DATA_WIDTH-1:24*DATA_WIDTH],median_lb_out_data[22*DATA_WIDTH-1:21*DATA_WIDTH],median_lb_out_data[19*DATA_WIDTH-1:18*DATA_WIDTH],
                                 median_lb_out_data[16*DATA_WIDTH-1:15*DATA_WIDTH],median_lb_out_data[13*DATA_WIDTH-1:12*DATA_WIDTH],median_lb_out_data[10*DATA_WIDTH-1: 9*DATA_WIDTH],
                                 median_lb_out_data[7 *DATA_WIDTH-1: 6*DATA_WIDTH],median_lb_out_data[ 4*DATA_WIDTH-1: 3*DATA_WIDTH],median_lb_out_data[   DATA_WIDTH-1:            0]};



assign pix_corr_frm_rdy = pix_corr0_frm_rdy | pix_corr2_frm_rdy | pix_corr3_frm_rdy | pix_corr4_frm_rdy | pix_corr5_frm_rdy;
assign median_frm_rdy   = median1_frm_rdy | median2_frm_rdy | median3_frm_rdy | median4_frm_rdy | median5_frm_rdy;
assign laplace_frm_rdy  = laplace0_frm_rdy | laplace1_frm_rdy | laplace3_frm_rdy | laplace4_frm_rdy | laplace5_frm_rdy;
assign smooth_frm_rdy   = smooth0_frm_rdy | smooth1_frm_rdy | smooth2_frm_rdy | smooth3_frm_rdy | smooth5_frm_rdy;
assign sharp_frm_rdy    = sharp0_frm_rdy | sharp1_frm_rdy | sharp2_frm_rdy | sharp4_frm_rdy | sharp5_frm_rdy;
assign frm_rdy          = frm0_rdy | frm1_rdy  | frm2_rdy | frm3_rdy | frm4_rdy | frm5_rdy;	

assign pix_corr_frm_data = {pix_corr_ch2_frm_data, pix_corr_ch1_frm_data, pix_corr_ch0_frm_data};
assign laplace_frm_data  = {laplace_ch2_frm_data, laplace_ch1_frm_data, laplace_ch0_frm_data}   ; 
assign sharp_frm_data    = {sharp_ch2_frm_data, sharp_ch1_frm_data, sharp_ch0_frm_data}         ; 
assign smooth_frm_data   = {smooth_ch2_frm_data, smooth_ch1_frm_data, smooth_ch0_frm_data}      ; 
assign median_frm_data   = {median_ch2_frm_data, median_ch1_frm_data, median_ch0_frm_data}      ; 
							 
							 
line_buffer#(
  .DATA_WIDTH(3*DATA_WIDTH),
  .USEDW_BITS(USEDW_BITS   )  // Number of bits for address inside FIFO (depth = 2^USEDW_BITS)

)smooth_filter_lb(
  .clk           (clk                     ), // System clock
  .rst_n         (rst_n                   ), // Asynchronous reset active low
  .cfg_bkg       (cfg_bkg                 ),
  .sw_rst        (sw_rst                  ), 
  .frm_val       (smooth_lb_in_frm_val    ), // Master has valid data to be transferred
  .frm_rdy       (smooth_lb_in_frm_rdy    ), // Slave is ready to receive the data
  .frm_data      (smooth_lb_in_frm_data   ), // Data transferred from master to slave
  .frm_sof       (smooth_lb_in_frm_sof    ), // Start of Frame
  .frm_eof       (smooth_lb_in_frm_eof    ), // End of Frame
  .frm_sol       (smooth_lb_in_frm_sol    ), // Start of Line
  .frm_eol       (smooth_lb_in_frm_eol    ), // End of Line  
  .win_val       (smooth_lb_out_val       ), // Master has valid data to be transferred      
  .win_rdy       (smooth_lb_out_rdy       ), // Slave is ready to receive the data           
  .win_data      (smooth_lb_out_data      ), // Data transferred from master to slave        
  .win_sof       (smooth_lb_out_sof       ), // Start of Frame                               
  .win_eof       (smooth_lb_out_eof       ), // End of Frame                                 
  .win_sol       (smooth_lb_out_sol       ), // Start of Line                                
  .win_eol       (smooth_lb_out_eol       ), // End of Line                                  
  .fifo_push     (smooth_lb_fifo_push     ), // Master pushes data into FIFO
  .fifo_pushdata (smooth_lb_fifo_pushdata ), // Data stored into FIFO
  .fifo_full     (smooth_lb_fifo_full     ), // FIFO full
  .fifo_pop      (smooth_lb_fifo_pop      ), // Master pops data from FIFO
  .fifo_popdata  (smooth_lb_fifo_popdata  ), // Data retrived from FIFO
  .fifo_empty    (smooth_lb_fifo_empty    ), // FIFO empty
  .fifo_usedwords(smooth_lb_fifo_usedwords), // Used words in FIFO
  .fifo_clr      (smooth_lb_fifo_clr      )
);

line_buffer#(
  .DATA_WIDTH(3*DATA_WIDTH ),
  .USEDW_BITS(USEDW_BITS   )  // Number of bits for address inside FIFO (depth = 2^USEDW_BITS)

)sharp_filter_lb(
  .clk           (clk                    ), // System clock
  .rst_n         (rst_n                  ), // Asynchronous reset active low
  .sw_rst        (sw_rst                  ), 
  .cfg_bkg       (cfg_bkg                ),
  .frm_val       (sharp_lb_in_frm_val    ), // Master has valid data to be transferred
  .frm_rdy       (sharp_lb_in_frm_rdy    ), // Slave is ready to receive the data
  .frm_data      (sharp_lb_in_frm_data   ), // Data transferred from master to slave
  .frm_sof       (sharp_lb_in_frm_sof    ), // Start of Frame
  .frm_eof       (sharp_lb_in_frm_eof    ), // End of Frame
  .frm_sol       (sharp_lb_in_frm_sol    ), // Start of Line
  .frm_eol       (sharp_lb_in_frm_eol    ), // End of Line  
  .win_val       (sharp_lb_out_val       ), // Master has valid data to be transferred      
  .win_rdy       (sharp_lb_out_rdy       ), // Slave is ready to receive the data           
  .win_data      (sharp_lb_out_data      ), // Data transferred from master to slave        
  .win_sof       (sharp_lb_out_sof       ), // Start of Frame                               
  .win_eof       (sharp_lb_out_eof       ), // End of Frame                                 
  .win_sol       (sharp_lb_out_sol       ), // Start of Line                                
  .win_eol       (sharp_lb_out_eol       ), // End of Line                                  
  .fifo_push     (sharp_lb_fifo_push     ), // Master pushes data into FIFO
  .fifo_pushdata (sharp_lb_fifo_pushdata ), // Data stored into FIFO
  .fifo_full     (sharp_lb_fifo_full     ), // FIFO full
  .fifo_pop      (sharp_lb_fifo_pop      ), // Master pops data from FIFO
  .fifo_popdata  (sharp_lb_fifo_popdata  ), // Data retrived from FIFO
  .fifo_empty    (sharp_lb_fifo_empty    ), // FIFO empty
  .fifo_usedwords(sharp_lb_fifo_usedwords), // Used words in FIFO
  .fifo_clr      (sharp_lb_fifo_clr      )
);

line_buffer#(
  .DATA_WIDTH(3*DATA_WIDTH ),
  .USEDW_BITS(USEDW_BITS   )  // Number of bits for address inside FIFO (depth = 2^USEDW_BITS)

)laplace_filter_lb(
  .clk           (clk                      ), // System clock
  .rst_n         (rst_n                    ), // Asynchronous reset active low
  .sw_rst        (sw_rst                   ), 
  .cfg_bkg       (cfg_bkg                  ),
  .frm_val       (laplace_lb_in_frm_val    ), // Master has valid data to be transferred
  .frm_rdy       (laplace_lb_in_frm_rdy    ), // Slave is ready to receive the data
  .frm_data      (laplace_lb_in_frm_data   ), // Data transferred from master to slave
  .frm_sof       (laplace_lb_in_frm_sof    ), // Start of Frame
  .frm_eof       (laplace_lb_in_frm_eof    ), // End of Frame
  .frm_sol       (laplace_lb_in_frm_sol    ), // Start of Line
  .frm_eol       (laplace_lb_in_frm_eol    ), // End of Line  
  .win_val       (laplace_lb_out_val       ), // Master has valid data to be transferred      
  .win_rdy       (laplace_lb_out_rdy       ), // Slave is ready to receive the data           
  .win_data      (laplace_lb_out_data      ), // Data transferred from master to slave        
  .win_sof       (laplace_lb_out_sof       ), // Start of Frame                               
  .win_eof       (laplace_lb_out_eof       ), // End of Frame                                 
  .win_sol       (laplace_lb_out_sol       ), // Start of Line                                
  .win_eol       (laplace_lb_out_eol       ), // End of Line                                  
  .fifo_push     (laplace_lb_fifo_push     ), // Master pushes data into FIFO
  .fifo_pushdata (laplace_lb_fifo_pushdata ), // Data stored into FIFO
  .fifo_full     (laplace_lb_fifo_full     ), // FIFO full
  .fifo_pop      (laplace_lb_fifo_pop      ), // Master pops data from FIFO
  .fifo_popdata  (laplace_lb_fifo_popdata  ), // Data retrived from FIFO
  .fifo_empty    (laplace_lb_fifo_empty    ), // FIFO empty
  .fifo_usedwords(laplace_lb_fifo_usedwords), // Used words in FIFO
  .fifo_clr      (laplace_lb_fifo_clr      )
);

line_buffer#(
  .DATA_WIDTH(3*DATA_WIDTH),
  .USEDW_BITS(USEDW_BITS   )  // Number of bits for address inside FIFO (depth = 2^USEDW_BITS)

)pix_corr_filter_lb(
  .clk           (clk                       ), // System clock
  .rst_n         (rst_n                     ), // Asynchronous reset active low
  .sw_rst        (sw_rst                    ), 
  .cfg_bkg       (cfg_bkg                   ),
  .frm_val       (pix_corr_lb_in_frm_val    ), // Master has valid data to be transferred
  .frm_rdy       (pix_corr_lb_in_frm_rdy    ), // Slave is ready to receive the data
  .frm_data      (pix_corr_lb_in_frm_data   ), // Data transferred from master to slave
  .frm_sof       (pix_corr_lb_in_frm_sof    ), // Start of Frame
  .frm_eof       (pix_corr_lb_in_frm_eof    ), // End of Frame
  .frm_sol       (pix_corr_lb_in_frm_sol    ), // Start of Line
  .frm_eol       (pix_corr_lb_in_frm_eol    ), // End of Line  
  .win_val       (pix_corr_lb_out_val       ), // Master has valid data to be transferred      
  .win_rdy       (pix_corr_lb_out_rdy       ), // Slave is ready to receive the data           
  .win_data      (pix_corr_lb_out_data      ), // Data transferred from master to slave        
  .win_sof       (pix_corr_lb_out_sof       ), // Start of Frame                               
  .win_eof       (pix_corr_lb_out_eof       ), // End of Frame                                 
  .win_sol       (pix_corr_lb_out_sol       ), // Start of Line                                
  .win_eol       (pix_corr_lb_out_eol       ), // End of Line                                  
  .fifo_push     (pix_corr_lb_fifo_push     ), // Master pushes data into FIFO
  .fifo_pushdata (pix_corr_lb_fifo_pushdata ), // Data stored into FIFO
  .fifo_full     (pix_corr_lb_fifo_full     ), // FIFO full
  .fifo_pop      (pix_corr_lb_fifo_pop      ), // Master pops data from FIFO
  .fifo_popdata  (pix_corr_lb_fifo_popdata  ), // Data retrived from FIFO
  .fifo_empty    (pix_corr_lb_fifo_empty    ), // FIFO empty
  .fifo_usedwords(pix_corr_lb_fifo_usedwords), // Used words in FIFO
  .fifo_clr      (pix_corr_lb_fifo_clr      )
);

line_buffer#(
  .DATA_WIDTH(3*DATA_WIDTH),
  .USEDW_BITS(USEDW_BITS   )  // Number of bits for address inside FIFO (depth = 2^USEDW_BITS)

)median_filter_lb(
  .clk           (clk                     ), // System clock
  .rst_n         (rst_n                   ), // Asynchronous reset active low
  .sw_rst        (sw_rst                  ), 
  .cfg_bkg       (cfg_bkg                 ),
  .frm_val       (median_lb_in_frm_val    ), // Master has valid data to be transferred
  .frm_rdy       (median_lb_in_frm_rdy    ), // Slave is ready to receive the data
  .frm_data      (median_lb_in_frm_data   ), // Data transferred from master to slave
  .frm_sof       (median_lb_in_frm_sof    ), // Start of Frame
  .frm_eof       (median_lb_in_frm_eof    ), // End of Frame
  .frm_sol       (median_lb_in_frm_sol    ), // Start of Line
  .frm_eol       (median_lb_in_frm_eol    ), // End of Line  
  .win_val       (median_lb_out_val       ), // Master has valid data to be transferred      
  .win_rdy       (median_lb_out_rdy       ), // Slave is ready to receive the data           
  .win_data      (median_lb_out_data      ), // Data transferred from master to slave        
  .win_sof       (median_lb_out_sof       ), // Start of Frame                               
  .win_eof       (median_lb_out_eof       ), // End of Frame                                 
  .win_sol       (median_lb_out_sol       ), // Start of Line                                
  .win_eol       (median_lb_out_eol       ), // End of Line                                  
  .fifo_push     (median_lb_fifo_push     ), // Master pushes data into FIFO
  .fifo_pushdata (median_lb_fifo_pushdata ), // Data stored into FIFO
  .fifo_full     (median_lb_fifo_full     ), // FIFO full
  .fifo_pop      (median_lb_fifo_pop      ), // Master pops data from FIFO
  .fifo_popdata  (median_lb_fifo_popdata  ), // Data retrived from FIFO
  .fifo_empty    (median_lb_fifo_empty    ), // FIFO empty
  .fifo_usedwords(median_lb_fifo_usedwords),  // Used words in FIFO
  .fifo_clr      (median_lb_fifo_clr      )
);

smooth_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)smooth_filter_ch0(
  .clk       (clk                   ), // System clock
  .rst_n     (rst_n                 ), // Asynchronous reset active low
  .in3x3_val (smooth_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (smooth_lb_out_rdy     ), // Slave is ready to receive the data
  .in3x3_data(smooth_lb_out_data_ch0), // Data transferred from master to slave
  .in3x3_sof (smooth_lb_out_sof     ), // Start of Frame
  .in3x3_eof (smooth_lb_out_eof     ), // End of Frame
  .in3x3_sol (smooth_lb_out_sol     ), // Start of Line
  .in3x3_eol (smooth_lb_out_eol     ), // End of Line
  .out_val   (smooth_frm_val        ), // Master has valid data to be transferred
  .out_rdy   (smooth_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (smooth_ch0_frm_data   ), // Data transferred from master to slave
  .out_sof   (smooth_frm_sof        ), // Start of Frame
  .out_eof   (smooth_frm_eof        ), // End of Frame
  .out_sol   (smooth_frm_sol        ), // Start of Line
  .out_eol   (smooth_frm_eol        )  // End of Line
);

smooth_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)smooth_filter_ch1(
  .clk       (clk                   ), // System clock
  .rst_n     (rst_n                 ), // Asynchronous reset active low
  .in3x3_val (smooth_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                      ), // Slave is ready to receive the data
  .in3x3_data(smooth_lb_out_data_ch1), // Data transferred from master to slave
  .in3x3_sof (smooth_lb_out_sof     ), // Start of Frame
  .in3x3_eof (smooth_lb_out_eof     ), // End of Frame
  .in3x3_sol (smooth_lb_out_sol     ), // Start of Line
  .in3x3_eol (smooth_lb_out_eol     ), // End of Line
  .out_val   (                      ), // Master has valid data to be transferred
  .out_rdy   (smooth_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (smooth_ch1_frm_data   ), // Data transferred from master to slave
  .out_sof   (                      ), // Start of Frame
  .out_eof   (                      ), // End of Frame
  .out_sol   (                      ), // Start of Line
  .out_eol   (                      )  // End of Line
);

smooth_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)smooth_filter_ch2(
  .clk       (clk                   ), // System clock
  .rst_n     (rst_n                 ), // Asynchronous reset active low
  .in3x3_val (smooth_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                      ), // Slave is ready to receive the data
  .in3x3_data(smooth_lb_out_data_ch2), // Data transferred from master to slave
  .in3x3_sof (smooth_lb_out_sof     ), // Start of Frame
  .in3x3_eof (smooth_lb_out_eof     ), // End of Frame
  .in3x3_sol (smooth_lb_out_sol     ), // Start of Line
  .in3x3_eol (smooth_lb_out_eol     ), // End of Line
  .out_val   (                      ), // Master has valid data to be transferred
  .out_rdy   (smooth_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (smooth_ch2_frm_data   ), // Data transferred from master to slave
  .out_sof   (                      ), // Start of Frame
  .out_eof   (                      ), // End of Frame
  .out_sol   (                      ), // Start of Line
  .out_eol   (                      )  // End of Line
);

laplace_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)laplace_filter_ch0(
  .clk       (clk                    ), // System clock
  .rst_n     (rst_n                  ), // Asynchronous reset active low
  .in3x3_val (laplace_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (laplace_lb_out_rdy     ), // Slave is ready to receive the data
  .in3x3_data(laplace_lb_out_data_ch0), // Data transferred from master to slave
  .in3x3_sof (laplace_lb_out_sof     ), // Start of Frame
  .in3x3_eof (laplace_lb_out_eof     ), // End of Frame
  .in3x3_sol (laplace_lb_out_sol     ), // Start of Line
  .in3x3_eol (laplace_lb_out_eol     ), // End of Line
  .out_val   (laplace_frm_val        ), // Master has valid data to be transferred
  .out_rdy   (laplace_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (laplace_ch0_frm_data   ), // Data transferred from master to slave
  .out_sof   (laplace_frm_sof        ), // Start of Frame
  .out_eof   (laplace_frm_eof        ), // End of Frame
  .out_sol   (laplace_frm_sol        ), // Start of Line
  .out_eol   (laplace_frm_eol        )  // End of Line
);

laplace_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)laplace_filter_ch1(
  .clk       (clk                    ), // System clock
  .rst_n     (rst_n                  ), // Asynchronous reset active low
  .in3x3_val (laplace_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                       ), // Slave is ready to receive the data
  .in3x3_data(laplace_lb_out_data_ch1), // Data transferred from master to slave
  .in3x3_sof (laplace_lb_out_sof     ), // Start of Frame
  .in3x3_eof (laplace_lb_out_eof     ), // End of Frame
  .in3x3_sol (laplace_lb_out_sol     ), // Start of Line
  .in3x3_eol (laplace_lb_out_eol     ), // End of Line
  .out_val   (                       ), // Master has valid data to be transferred
  .out_rdy   (laplace_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (laplace_ch1_frm_data   ), // Data transferred from master to slave
  .out_sof   (                       ), // Start of Frame
  .out_eof   (                       ), // End of Frame
  .out_sol   (                       ), // Start of Line
  .out_eol   (                       )  // End of Line
);

laplace_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)laplace_filter_ch2(
  .clk       (clk                    ), // System clock
  .rst_n     (rst_n                  ), // Asynchronous reset active low
  .in3x3_val (laplace_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                       ), // Slave is ready to receive the data
  .in3x3_data(laplace_lb_out_data_ch2), // Data transferred from master to slave
  .in3x3_sof (laplace_lb_out_sof     ), // Start of Frame
  .in3x3_eof (laplace_lb_out_eof     ), // End of Frame
  .in3x3_sol (laplace_lb_out_sol     ), // Start of Line
  .in3x3_eol (laplace_lb_out_eol     ), // End of Line
  .out_val   (                       ), // Master has valid data to be transferred
  .out_rdy   (laplace_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (laplace_ch2_frm_data   ), // Data transferred from master to slave
  .out_sof   (                       ), // Start of Frame
  .out_eof   (                       ), // End of Frame
  .out_sol   (                       ), // Start of Line
  .out_eol   (                       )  // End of Line
);

pix_corr_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)pix_corr_ch0(
  .clk       (clk                     ), // System clock
  .rst_n     (rst_n                   ), // Asynchronous reset active low
  .cfg_thr   (cfg_pix_corr_thr        ),
  .in3x3_val (pix_corr_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (pix_corr_lb_out_rdy     ), // Slave is ready to receive the data
  .in3x3_data(pix_corr_lb_out_data_ch0), // Data transferred from master to slave
  .in3x3_sof (pix_corr_lb_out_sof     ), // Start of Frame
  .in3x3_eof (pix_corr_lb_out_eof     ), // End of Frame
  .in3x3_sol (pix_corr_lb_out_sol     ), // Start of Line
  .in3x3_eol (pix_corr_lb_out_eol     ), // End of Line
  .out_val   (pix_corr_frm_val        ), // Master has valid data to be transferred
  .out_rdy   (pix_corr_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (pix_corr_ch0_frm_data   ), // Data transferred from master to slave
  .out_sof   (pix_corr_frm_sof        ), // Start of Frame
  .out_eof   (pix_corr_frm_eof        ), // End of Frame
  .out_sol   (pix_corr_frm_sol        ), // Start of Line
  .out_eol   (pix_corr_frm_eol        )  // End of Line
);

pix_corr_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)pix_corr_ch1(
  .clk       (clk                     ), // System clock
  .rst_n     (rst_n                   ), // Asynchronous reset active low
  .cfg_thr   (cfg_pix_corr_thr        ),
  .in3x3_val (pix_corr_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                        ), // Slave is ready to receive the data
  .in3x3_data(pix_corr_lb_out_data_ch1), // Data transferred from master to slave
  .in3x3_sof (pix_corr_lb_out_sof     ), // Start of Frame
  .in3x3_eof (pix_corr_lb_out_eof     ), // End of Frame
  .in3x3_sol (pix_corr_lb_out_sol     ), // Start of Line
  .in3x3_eol (pix_corr_lb_out_eol     ), // End of Line
  .out_val   (                        ), // Master has valid data to be transferred
  .out_rdy   (pix_corr_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (pix_corr_ch1_frm_data   ), // Data transferred from master to slave
  .out_sof   (                        ), // Start of Frame
  .out_eof   (                        ), // End of Frame
  .out_sol   (                        ), // Start of Line
  .out_eol   (                        )  // End of Line
);

pix_corr_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)pix_corr_ch2(
  .clk       (clk                     ), // System clock
  .rst_n     (rst_n                   ), // Asynchronous reset active low
  .cfg_thr   (cfg_pix_corr_thr        ),
  .in3x3_val (pix_corr_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                        ), // Slave is ready to receive the data
  .in3x3_data(pix_corr_lb_out_data_ch2), // Data transferred from master to slave
  .in3x3_sof (pix_corr_lb_out_sof     ), // Start of Frame
  .in3x3_eof (pix_corr_lb_out_eof     ), // End of Frame
  .in3x3_sol (pix_corr_lb_out_sol     ), // Start of Line
  .in3x3_eol (pix_corr_lb_out_eol     ), // End of Line
  .out_val   (                        ), // Master has valid data to be transferred
  .out_rdy   (pix_corr_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (pix_corr_ch2_frm_data   ), // Data transferred from master to slave
  .out_sof   (                        ), // Start of Frame
  .out_eof   (                        ), // End of Frame
  .out_sol   (                        ), // Start of Line
  .out_eol   (                        )  // End of Line
);

sharp_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)sharp_filter_ch0(
  .clk       (clk                  ), // System clock
  .rst_n     (rst_n                ), // Asynchronous reset active low
  .cfg_coef  (cfg_sharp_coef       ),
  .in3x3_val (sharp_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (sharp_lb_out_rdy     ), // Slave is ready to receive the data
  .in3x3_data(sharp_lb_out_data_ch0), // Data transferred from master to slave
  .in3x3_sof (sharp_lb_out_sof     ), // Start of Frame
  .in3x3_eof (sharp_lb_out_eof     ), // End of Frame
  .in3x3_sol (sharp_lb_out_sol     ), // Start of Line
  .in3x3_eol (sharp_lb_out_eol     ), // End of Line
  .out_val   (sharp_frm_val        ), // Master has valid data to be transferred
  .out_rdy   (sharp_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (sharp_ch0_frm_data   ), // Data transferred from master to slave
  .out_sof   (sharp_frm_sof        ), // Start of Frame
  .out_eof   (sharp_frm_eof        ), // End of Frame
  .out_sol   (sharp_frm_sol        ), // Start of Line
  .out_eol   (sharp_frm_eol        )  // End of Line
);

sharp_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)sharp_filter_ch1(
  .clk       (clk                  ), // System clock
  .rst_n     (rst_n                ), // Asynchronous reset active low
  .cfg_coef  (cfg_sharp_coef       ),
  .in3x3_val (sharp_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                     ), // Slave is ready to receive the data
  .in3x3_data(sharp_lb_out_data_ch1), // Data transferred from master to slave
  .in3x3_sof (sharp_lb_out_sof     ), // Start of Frame
  .in3x3_eof (sharp_lb_out_eof     ), // End of Frame
  .in3x3_sol (sharp_lb_out_sol     ), // Start of Line
  .in3x3_eol (sharp_lb_out_eol     ), // End of Line
  .out_val   (                     ), // Master has valid data to be transferred
  .out_rdy   (sharp_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (sharp_ch1_frm_data   ), // Data transferred from master to slave
  .out_sof   (                     ), // Start of Frame
  .out_eof   (                     ), // End of Frame
  .out_sol   (                     ), // Start of Line
  .out_eol   (                     )  // End of Line
);

sharp_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)sharp_filter_ch2(
  .clk       (clk                  ), // System clock
  .rst_n     (rst_n                ), // Asynchronous reset active low
  .cfg_coef  (cfg_sharp_coef       ),
  .in3x3_val (sharp_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                     ), // Slave is ready to receive the data
  .in3x3_data(sharp_lb_out_data_ch2), // Data transferred from master to slave
  .in3x3_sof (sharp_lb_out_sof     ), // Start of Frame
  .in3x3_eof (sharp_lb_out_eof     ), // End of Frame
  .in3x3_sol (sharp_lb_out_sol     ), // Start of Line
  .in3x3_eol (sharp_lb_out_eol     ), // End of Line
  .out_val   (                     ), // Master has valid data to be transferred
  .out_rdy   (sharp_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (sharp_ch2_frm_data   ), // Data transferred from master to slave
  .out_sof   (                     ), // Start of Frame
  .out_eof   (                     ), // End of Frame
  .out_sol   (                     ), // Start of Line
  .out_eol  (                     )  // End of Line
);

median_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)median_filter_ch0(
  .clk       (clk                   ), // System clock
  .rst_n     (rst_n                 ), // Asynchronous reset active low
  .in3x3_val (median_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (median_lb_out_rdy     ), // Slave is ready to receive the data
  .in3x3_data(median_lb_out_data_ch0), // Data transferred from master to slave
  .in3x3_sof (median_lb_out_sof     ), // Start of Frame
  .in3x3_eof (median_lb_out_eof     ), // End of Frame
  .in3x3_sol (median_lb_out_sol     ), // Start of Line
  .in3x3_eol (median_lb_out_eol     ), // End of Line
  .out_val   (median_frm_val        ), // Master has valid data to be transferred
  .out_rdy   (median_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (median_ch0_frm_data   ), // Data transferred from master to slave
  .out_sof   (median_frm_sof        ), // Start of Frame
  .out_eof   (median_frm_eof        ), // End of Frame
  .out_sol   (median_frm_sol        ), // Start of Line
  .out_eol   (median_frm_eol        )  // End of Line
);

median_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)median_filter_ch1(
  .clk       (clk                   ), // System clock
  .rst_n     (rst_n                 ), // Asynchronous reset active low
  .in3x3_val (median_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                      ), // Slave is ready to receive the data
  .in3x3_data(median_lb_out_data_ch1), // Data transferred from master to slave
  .in3x3_sof (median_lb_out_sof     ), // Start of Frame
  .in3x3_eof (median_lb_out_eof     ), // End of Frame
  .in3x3_sol (median_lb_out_sol     ), // Start of Line
  .in3x3_eol (median_lb_out_eol     ), // End of Line
  .out_val   (                      ), // Master has valid data to be transferred
  .out_rdy   (median_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (median_ch1_frm_data   ), // Data transferred from master to slave
  .out_sof   (                      ), // Start of Frame
  .out_eof   (                      ), // End of Frame
  .out_sol   (                      ), // Start of Line
  .out_eol   (                      )  // End of Line
);

median_filter_1px#(
  .DATA_WIDTH   (DATA_WIDTH   )
)median_filter_ch2(
  .clk       (clk                   ), // System clock
  .rst_n     (rst_n                 ), // Asynchronous reset active low
  .in3x3_val (median_lb_out_val     ), // Master has valid data to be transferred
  .in3x3_rdy (                      ), // Slave is ready to receive the data
  .in3x3_data(median_lb_out_data_ch2), // Data transferred from master to slave
  .in3x3_sof (median_lb_out_sof     ), // Start of Frame
  .in3x3_eof (median_lb_out_eof     ), // End of Frame
  .in3x3_sol (median_lb_out_sol     ), // Start of Line
  .in3x3_eol (median_lb_out_eol     ), // End of Line
  .out_val   (                      ), // Master has valid data to be transferred
  .out_rdy   (median_frm_rdy        ), // Slave is ready to receive the data
  .out_data  (median_ch2_frm_data   ), // Data transferred from master to slave
  .out_sof   (                      ), // Start of Frame
  .out_eof   (                      ), // End of Frame
  .out_sol   (                      ), // Start of Line
  .out_eol   (                      )  // End of Line
);
                                               
selector_6i#(
  .DATA_WIDTH(3*DATA_WIDTH) 
)median_sel(
  .clk         (clk                  ), // System clock
  .rst_n       (rst_n                ), // Asynchronous reset active low
  .sel         (cfg_median_in_sel    ), // Mux selection bit
  .in0_frm_val (1'd0                 ), // Master has valid data to be transferred
  .in0_frm_rdy (                     ), // Slave is ready to receive the data
  .in0_frm_data({(3*DATA_WIDTH){1'd0}}), // Data transferred from master to slave
  .in0_frm_sof (1'd0                 ), // Start of Frame
  .in0_frm_eof (1'd0                 ), // End of Frame
  .in0_frm_sol (1'd0                 ), // Start of Line
  .in0_frm_eol (1'd0                 ), // End of Line    
  .in1_frm_val (pix_corr_frm_val     ), // Master has valid data to be transferred
  .in1_frm_rdy (pix_corr0_frm_rdy    ), // Slave is ready to receive the data
  .in1_frm_data(pix_corr_frm_data    ), // Data transferred from master to slave
  .in1_frm_sof (pix_corr_frm_sof     ), // Start of Frame
  .in1_frm_eof (pix_corr_frm_eof     ), // End of Frame
  .in1_frm_sol (pix_corr_frm_sol     ), // Start of Line
  .in1_frm_eol (pix_corr_frm_eol     ), // End of Line        
  .in2_frm_val (frm_val              ), // Master has valid data to be transferred
  .in2_frm_rdy (frm0_rdy             ), // Slave is ready to receive the data
  .in2_frm_data(frm_data             ), // Data transferred from master to slave
  .in2_frm_sof (frm_sof              ), // Start of Frame
  .in2_frm_eof (frm_eof              ), // End of Frame
  .in2_frm_sol (frm_sol              ), // Start of Line
  .in2_frm_eol (frm_eol              ), // End of Line
  .in3_frm_val (laplace_frm_val      ), // Master has valid data to be transferred
  .in3_frm_rdy (laplace0_frm_rdy     ), // Slave is ready to receive the data
  .in3_frm_data(laplace_frm_data     ), // Data transferred from master to slave
  .in3_frm_sof (laplace_frm_sof      ), // Start of Frame
  .in3_frm_eof (laplace_frm_eof      ), // End of Frame
  .in3_frm_sol (laplace_frm_sol      ), // Start of Line
  .in3_frm_eol (laplace_frm_eol      ), // End of Line
  .in4_frm_val (sharp_frm_val        ), // Master has valid data to be transferred
  .in4_frm_rdy (sharp0_frm_rdy       ), // Slave is ready to receive the data
  .in4_frm_data(sharp_frm_data       ), // Data transferred from master to slave
  .in4_frm_sof (sharp_frm_sof        ), // Start of Frame
  .in4_frm_eof (sharp_frm_eof        ), // End of Frame
  .in4_frm_sol (sharp_frm_sol        ), // Start of Lines
  .in4_frm_eol (sharp_frm_eol        ), // End of Line
  .in5_frm_val (smooth_frm_val       ), // Master has valid data to be transferred
  .in5_frm_rdy (smooth0_frm_rdy      ), // Slave is ready to receive the data
  .in5_frm_data(smooth_frm_data      ), // Data transferred from master to slave
  .in5_frm_sof (smooth_frm_sof       ), // Start of Frame
  .in5_frm_eof (smooth_frm_eof       ), // End of Frame
  .in5_frm_sol (smooth_frm_sol       ), // Start of Line
  .in5_frm_eol (smooth_frm_eol       ), // End of Line
  .out_frm_val (median_lb_in_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (median_lb_in_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(median_lb_in_frm_data), // Data transferred from master to slave        
  .out_frm_sof (median_lb_in_frm_sof ), // Start of Frame                               
  .out_frm_eof (median_lb_in_frm_eof ), // End of Frame                                 
  .out_frm_sol (median_lb_in_frm_sol ), // Start of Line                                
  .out_frm_eol (median_lb_in_frm_eol )  // End of Line      
);

selector_6i#(
  .DATA_WIDTH(3*DATA_WIDTH) 
)pix_corr_sel(
  .clk         (clk                    ), // System clock
  .rst_n       (rst_n                  ), // Asynchronous reset active low
  .sel         (cfg_pix_corr_in_sel    ), // Mux selection bit
  .in0_frm_val (1'd0                   ), // Master has valid data to be transferred
  .in0_frm_rdy (                       ), // Slave is ready to receive the data
  .in0_frm_data({(3*DATA_WIDTH){1'd0}} ), // Data transferred from master to slave
  .in0_frm_sof (1'd0                   ), // Start of Frame
  .in0_frm_eof (1'd0                   ), // End of Frame
  .in0_frm_sol (1'd0                   ), // Start of Line
  .in0_frm_eol (1'd0                   ), // End of Line   
  .in1_frm_val (frm_val                ), // Master has valid data to be transferred
  .in1_frm_rdy (frm1_rdy               ), // Slave is ready to receive the data
  .in1_frm_data(frm_data               ), // Data transferred from master to slave
  .in1_frm_sof (frm_sof                ), // Start of Frame
  .in1_frm_eof (frm_eof                ), // End of Frame
  .in1_frm_sol (frm_sol                ), // Start of Line
  .in1_frm_eol (frm_eol                ), // End of Line        
  .in2_frm_val (median_frm_val         ), // Master has valid data to be transferred
  .in2_frm_rdy (median1_frm_rdy        ), // Slave is ready to receive the data
  .in2_frm_data(median_frm_data        ), // Data transferred from master to slave
  .in2_frm_sof (median_frm_sof         ), // Start of Frame
  .in2_frm_eof (median_frm_eof         ), // End of Frame
  .in2_frm_sol (median_frm_sol         ), // Start of Line
  .in2_frm_eol (median_frm_eol         ), // End of Line
  .in3_frm_val (laplace_frm_val        ), // Master has valid data to be transferred
  .in3_frm_rdy (laplace1_frm_rdy       ), // Slave is ready to receive the data
  .in3_frm_data(laplace_frm_data       ), // Data transferred from master to slave
  .in3_frm_sof (laplace_frm_sof        ), // Start of Frame
  .in3_frm_eof (laplace_frm_eof        ), // End of Frame
  .in3_frm_sol (laplace_frm_sol        ), // Start of Line
  .in3_frm_eol (laplace_frm_eol        ), // End of Line
  .in4_frm_val (sharp_frm_val          ), // Master has valid data to be transferred
  .in4_frm_rdy (sharp1_frm_rdy         ), // Slave is ready to receive the data
  .in4_frm_data(sharp_frm_data         ), // Data transferred from master to slave
  .in4_frm_sof (sharp_frm_sof          ), // Start of Frame
  .in4_frm_eof (sharp_frm_eof          ), // End of Frame
  .in4_frm_sol (sharp_frm_sol          ), // Start of Line
  .in4_frm_eol (sharp_frm_eol          ), // End of Line
  .in5_frm_val (smooth_frm_val         ), // Master has valid data to be transferred
  .in5_frm_rdy (smooth1_frm_rdy        ), // Slave is ready to receive the data
  .in5_frm_data(smooth_frm_data        ), // Data transferred from master to slave
  .in5_frm_sof (smooth_frm_sof         ), // Start of Frame
  .in5_frm_eof (smooth_frm_eof         ), // End of Frame
  .in5_frm_sol (smooth_frm_sol         ), // Start of Line
  .in5_frm_eol (smooth_frm_eol         ), // End of Line
  .out_frm_val (pix_corr_lb_in_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (pix_corr_lb_in_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(pix_corr_lb_in_frm_data), // Data transferred from master to slave        
  .out_frm_sof (pix_corr_lb_in_frm_sof ), // Start of Frame                               
  .out_frm_eof (pix_corr_lb_in_frm_eof ), // End of Frame                                 
  .out_frm_sol (pix_corr_lb_in_frm_sol ), // Start of Line                                
  .out_frm_eol (pix_corr_lb_in_frm_eol )  // End of Line      
);

selector_6i#(
  .DATA_WIDTH(3*DATA_WIDTH) 
)laplace_sel(
  .clk         (clk                   ), // System clock
  .rst_n       (rst_n                 ), // Asynchronous reset active low
  .sel         (cfg_laplace_in_sel    ), // Mux selection bit
  .in0_frm_val (1'd0                  ), // Master has valid data to be transferred
  .in0_frm_rdy (                      ), // Slave is ready to receive the data
  .in0_frm_data({(3*DATA_WIDTH){1'd0}}), // Data transferred from master to slave
  .in0_frm_sof (1'd0                  ), // Start of Frame
  .in0_frm_eof (1'd0                  ), // End of Frame
  .in0_frm_sol (1'd0                  ), // Start of Line
  .in0_frm_eol (1'd0                  ), // End of Line
  .in1_frm_val (pix_corr_frm_val      ), // Master has valid data to be transferred
  .in1_frm_rdy (pix_corr2_frm_rdy     ), // Slave is ready to receive the data
  .in1_frm_data(pix_corr_frm_data     ), // Data transferred from master to slave
  .in1_frm_sof (pix_corr_frm_sof      ), // Start of Frame
  .in1_frm_eof (pix_corr_frm_eof      ), // End of Frame
  .in1_frm_sol (pix_corr_frm_sol      ), // Start of Line
  .in1_frm_eol (pix_corr_frm_eol      ), // End of Line        
  .in2_frm_val (median_frm_val        ), // Master has valid data to be transferred
  .in2_frm_rdy (median2_frm_rdy       ), // Slave is ready to receive the data
  .in2_frm_data(median_frm_data       ), // Data transferred from master to slave
  .in2_frm_sof (median_frm_sof        ), // Start of Frame
  .in2_frm_eof (median_frm_eof        ), // End of Frame
  .in2_frm_sol (median_frm_sol        ), // Start of Line
  .in2_frm_eol (median_frm_eol        ), // End of Line
  .in3_frm_val (frm_val               ), // Master has valid data to be transferred
  .in3_frm_rdy (frm2_rdy              ), // Slave is ready to receive the data
  .in3_frm_data(frm_data              ), // Data transferred from master to slave
  .in3_frm_sof (frm_sof               ), // Start of Frame
  .in3_frm_eof (frm_eof               ), // End of Frame
  .in3_frm_sol (frm_sol               ), // Start of Line
  .in3_frm_eol (frm_eol               ), // End of Line
  .in4_frm_val (sharp_frm_val         ), // Master has valid data to be transferred
  .in4_frm_rdy (sharp2_frm_rdy        ), // Slave is ready to receive the data
  .in4_frm_data(sharp_frm_data        ), // Data transferred from master to slave
  .in4_frm_sof (sharp_frm_sof         ), // Start of Frame
  .in4_frm_eof (sharp_frm_eof         ), // End of Frame
  .in4_frm_sol (sharp_frm_sol         ), // Start of Line
  .in4_frm_eol (sharp_frm_eol         ), // End of Line
  .in5_frm_val (smooth_frm_val        ), // Master has valid data to be transferred
  .in5_frm_rdy (smooth2_frm_rdy       ), // Slave is ready to receive the data
  .in5_frm_data(smooth_frm_data       ), // Data transferred from master to slave
  .in5_frm_sof (smooth_frm_sof        ), // Start of Frame
  .in5_frm_eof (smooth_frm_eof        ), // End of Frame
  .in5_frm_sol (smooth_frm_sol        ), // Start of Line
  .in5_frm_eol (smooth_frm_eol        ), // End of Line
  .out_frm_val (laplace_lb_in_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (laplace_lb_in_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(laplace_lb_in_frm_data), // Data transferred from master to slave        
  .out_frm_sof (laplace_lb_in_frm_sof ), // Start of Frame                               
  .out_frm_eof (laplace_lb_in_frm_eof ), // End of Frame                                 
  .out_frm_sol (laplace_lb_in_frm_sol ), // Start of Line                                
  .out_frm_eol (laplace_lb_in_frm_eol )  // End of Line      
);

selector_6i#(
  .DATA_WIDTH(3*DATA_WIDTH) 
)sharp_sel(
  .clk         (clk                 ), // System clock
  .rst_n       (rst_n               ), // Asynchronous reset active low
  .sel         (cfg_sharp_in_sel    ), // Mux selection bit
  .in0_frm_val (1'd0                ), // Master has valid data to be transferred
  .in0_frm_rdy (                    ), // Slave is ready to receive the data
  .in0_frm_data({(3*DATA_WIDTH){1'd0}}), // Data transferred from master to slave
  .in0_frm_sof (1'd0                ), // Start of Frame
  .in0_frm_eof (1'd0                ), // End of Frame
  .in0_frm_sol (1'd0                ), // Start of Line
  .in0_frm_eol (1'd0                ), // End of Line 
  .in1_frm_val (pix_corr_frm_val    ), // Master has valid data to be transferred
  .in1_frm_rdy (pix_corr3_frm_rdy   ), // Slave is ready to receive the data
  .in1_frm_data(pix_corr_frm_data   ), // Data transferred from master to slave
  .in1_frm_sof (pix_corr_frm_sof    ), // Start of Frame
  .in1_frm_eof (pix_corr_frm_eof    ), // End of Frame
  .in1_frm_sol (pix_corr_frm_sol    ), // Start of Line
  .in1_frm_eol (pix_corr_frm_eol    ), // End of Line        
  .in2_frm_val (median_frm_val      ), // Master has valid data to be transferred
  .in2_frm_rdy (median3_frm_rdy     ), // Slave is ready to receive the data
  .in2_frm_data(median_frm_data     ), // Data transferred from master to slave
  .in2_frm_sof (median_frm_sof      ), // Start of Frame
  .in2_frm_eof (median_frm_eof      ), // End of Frame
  .in2_frm_sol (median_frm_sol      ), // Start of Line
  .in2_frm_eol (median_frm_eol      ), // End of Line
  .in3_frm_val (laplace_frm_val     ), // Master has valid data to be transferred
  .in3_frm_rdy (laplace3_frm_rdy    ), // Slave is ready to receive the data
  .in3_frm_data(laplace_frm_data    ), // Data transferred from master to slave
  .in3_frm_sof (laplace_frm_sof     ), // Start of Frame
  .in3_frm_eof (laplace_frm_eof     ), // End of Frame
  .in3_frm_sol (laplace_frm_sol     ), // Start of Line
  .in3_frm_eol (laplace_frm_eol     ), // End of Line
  .in4_frm_val (frm_val             ), // Master has valid data to be transferred
  .in4_frm_rdy (frm3_rdy            ), // Slave is ready to receive the data
  .in4_frm_data(frm_data            ), // Data transferred from master to slave
  .in4_frm_sof (frm_sof             ), // Start of Frame
  .in4_frm_eof (frm_eof             ), // End of Frame
  .in4_frm_sol (frm_sol             ), // Start of Line
  .in4_frm_eol (frm_eol             ), // End of Line
  .in5_frm_val (smooth_frm_val      ), // Master has valid data to be transferred
  .in5_frm_rdy (smooth3_frm_rdy     ), // Slave is ready to receive the data
  .in5_frm_data(smooth_frm_data     ), // Data transferred from master to slave
  .in5_frm_sof (smooth_frm_sof      ), // Start of Frame
  .in5_frm_eof (smooth_frm_eof      ), // End of Frame
  .in5_frm_sol (smooth_frm_sol      ), // Start of Line
  .in5_frm_eol (smooth_frm_eol      ), // End of Line
  .out_frm_val (sharp_lb_in_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (sharp_lb_in_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(sharp_lb_in_frm_data), // Data transferred from master to slave        
  .out_frm_sof (sharp_lb_in_frm_sof ), // Start of Frame                               
  .out_frm_eof (sharp_lb_in_frm_eof ), // End of Frame                                 
  .out_frm_sol (sharp_lb_in_frm_sol ), // Start of Line                                
  .out_frm_eol (sharp_lb_in_frm_eol )  // End of Line      
);

selector_6i#(
  .DATA_WIDTH(3*DATA_WIDTH) 
)smooth_sel(
  .clk         (clk                  ), // System clock
  .rst_n       (rst_n                ), // Asynchronous reset active low
  .sel         (cfg_smooth_in_sel    ), // Mux selection bit
  .in0_frm_val (1'd0                 ), // Master has valid data to be transferred
  .in0_frm_rdy (                     ), // Slave is ready to receive the data
  .in0_frm_data({(3*DATA_WIDTH){1'd0}}), // Data transferred from master to slave
  .in0_frm_sof (1'd0                 ), // Start of Frame
  .in0_frm_eof (1'd0                 ), // End of Frame
  .in0_frm_sol (1'd0                 ), // Start of Line
  .in0_frm_eol (1'd0                 ), // End of Line        
  .in1_frm_val (pix_corr_frm_val     ), // Master has valid data to be transferred
  .in1_frm_rdy (pix_corr4_frm_rdy    ), // Slave is ready to receive the data
  .in1_frm_data(pix_corr_frm_data    ), // Data transferred from master to slave
  .in1_frm_sof (pix_corr_frm_sof     ), // Start of Frame
  .in1_frm_eof (pix_corr_frm_eof     ), // End of Frame
  .in1_frm_sol (pix_corr_frm_sol     ), // Start of Line
  .in1_frm_eol (pix_corr_frm_eol     ), // End of Line        
  .in2_frm_val (median_frm_val       ), // Master has valid data to be transferred
  .in2_frm_rdy (median4_frm_rdy      ), // Slave is ready to receive the data
  .in2_frm_data(median_frm_data      ), // Data transferred from master to slave
  .in2_frm_sof (median_frm_sof       ), // Start of Frame
  .in2_frm_eof (median_frm_eof       ), // End of Frame
  .in2_frm_sol (median_frm_sol       ), // Start of Line
  .in2_frm_eol (median_frm_eol       ), // End of Line
  .in3_frm_val (laplace_frm_val      ), // Master has valid data to be transferred
  .in3_frm_rdy (laplace4_frm_rdy     ), // Slave is ready to receive the data
  .in3_frm_data(laplace_frm_data     ), // Data transferred from master to slave
  .in3_frm_sof (laplace_frm_sof      ), // Start of Frame
  .in3_frm_eof (laplace_frm_eof      ), // End of Frame
  .in3_frm_sol (laplace_frm_sol      ), // Start of Line
  .in3_frm_eol (laplace_frm_eol      ), // End of Line
  .in4_frm_val (sharp_frm_val        ), // Master has valid data to be transferred
  .in4_frm_rdy (sharp4_frm_rdy       ), // Slave is ready to receive the data
  .in4_frm_data(sharp_frm_data       ), // Data transferred from master to slave
  .in4_frm_sof (sharp_frm_sof        ), // Start of Frame
  .in4_frm_eof (sharp_frm_eof        ), // End of Frame
  .in4_frm_sol (sharp_frm_sol        ), // Start of Line
  .in4_frm_eol (sharp_frm_eol        ), // End of Line
  .in5_frm_val (frm_val              ), // Master has valid data to be transferred
  .in5_frm_rdy (frm4_rdy             ), // Slave is ready to receive the data
  .in5_frm_data(frm_data             ), // Data transferred from master to slave
  .in5_frm_sof (frm_sof              ), // Start of Frame
  .in5_frm_eof (frm_eof              ), // End of Frame
  .in5_frm_sol (frm_sol              ), // Start of Line
  .in5_frm_eol (frm_eol              ), // End of Line
  .out_frm_val (smooth_lb_in_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (smooth_lb_in_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(smooth_lb_in_frm_data), // Data transferred from master to slave        
  .out_frm_sof (smooth_lb_in_frm_sof ), // Start of Frame                               
  .out_frm_eof (smooth_lb_in_frm_eof ), // End of Frame                                 
  .out_frm_sol (smooth_lb_in_frm_sol ), // Start of Line                                
  .out_frm_eol (smooth_lb_in_frm_eol )  // End of Line      
);

selector_6i#(
  .DATA_WIDTH(3*DATA_WIDTH) 
)filt_output_sel(
  .clk         (clk              ), // System clock
  .rst_n       (rst_n            ), // Asynchronous reset active low
  .sel         (cfg_out_sel      ), // Mux selection bit
  .in0_frm_val (frm_val          ), // Master has valid data to be transferred
  .in0_frm_rdy (frm5_rdy         ), // Slave is ready to receive the data
  .in0_frm_data(frm_data         ), // Data transferred from master to slave
  .in0_frm_sof (frm_sof          ), // Start of Frame
  .in0_frm_eof (frm_eof          ), // End of Frame
  .in0_frm_sol (frm_sol          ), // Start of Line
  .in0_frm_eol (frm_eol          ), // End of Line
  .in1_frm_val (pix_corr_frm_val ), // Master has valid data to be transferred
  .in1_frm_rdy (pix_corr5_frm_rdy), // Slave is ready to receive the data
  .in1_frm_data(pix_corr_frm_data), // Data transferred from master to slave
  .in1_frm_sof (pix_corr_frm_sof ), // Start of Frame
  .in1_frm_eof (pix_corr_frm_eof ), // End of Frame
  .in1_frm_sol (pix_corr_frm_sol ), // Start of Line
  .in1_frm_eol (pix_corr_frm_eol ), // End of Line        
  .in2_frm_val (median_frm_val   ), // Master has valid data to be transferred
  .in2_frm_rdy (median5_frm_rdy  ), // Slave is ready to receive the data
  .in2_frm_data(median_frm_data  ), // Data transferred from master to slave
  .in2_frm_sof (median_frm_sof   ), // Start of Frame
  .in2_frm_eof (median_frm_eof   ), // End of Frame
  .in2_frm_sol (median_frm_sol   ), // Start of Line
  .in2_frm_eol (median_frm_eol   ), // End of Line
  .in3_frm_val (laplace_frm_val  ), // Master has valid data to be transferred
  .in3_frm_rdy (laplace5_frm_rdy ), // Slave is ready to receive the data
  .in3_frm_data(laplace_frm_data ), // Data transferred from master to slave
  .in3_frm_sof (laplace_frm_sof  ), // Start of Frame
  .in3_frm_eof (laplace_frm_eof  ), // End of Frame
  .in3_frm_sol (laplace_frm_sol  ), // Start of Line
  .in3_frm_eol (laplace_frm_eol  ), // End of Line
  .in4_frm_val (sharp_frm_val    ), // Master has valid data to be transferred
  .in4_frm_rdy (sharp5_frm_rdy   ), // Slave is ready to receive the data
  .in4_frm_data(sharp_frm_data   ), // Data transferred from master to slave
  .in4_frm_sof (sharp_frm_sof    ), // Start of Frame
  .in4_frm_eof (sharp_frm_eof    ), // End of Frame
  .in4_frm_sol (sharp_frm_sol    ), // Start of Line
  .in4_frm_eol (sharp_frm_eol    ), // End of Line
  .in5_frm_val (smooth_frm_val   ), // Master has valid data to be transferred
  .in5_frm_rdy (smooth5_frm_rdy  ), // Slave is ready to receive the data
  .in5_frm_data(smooth_frm_data  ), // Data transferred from master to slave
  .in5_frm_sof (smooth_frm_sof   ), // Start of Frame
  .in5_frm_eof (smooth_frm_eof   ), // End of Frame
  .in5_frm_sol (smooth_frm_sol   ), // Start of Line
  .in5_frm_eol (smooth_frm_eol   ), // End of Line
  .out_frm_val (filt_val         ), // Master has valid data to be transferred      
  .out_frm_rdy (filt_rdy         ), // Slave is ready to receive the data           
  .out_frm_data(filt_data        ), // Data transferred from master to slave        
  .out_frm_sof (filt_sof         ), // Start of Frame                               
  .out_frm_eof (filt_eof         ), // End of Frame                                 
  .out_frm_sol (filt_sol         ), // Start of Line                                
  .out_frm_eol (filt_eol         )  // End of Line      
);

endmodule