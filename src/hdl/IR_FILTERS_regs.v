/*
* !!! DO NOT EDIT THIS FILE MANUALLY !!!
* Generated by apb_slave_gen.pl on 05.03.19; 12:12
*    based on CSV reg. file: IR_FILTERS_regs.csv
*/

//---------------------------------------------------------------------
// The material in this file is proprietary of Fotonation Inc.
// Title: apb slave template used by ../script/apb_slave_gen.pl
// File: $Id: apb_slave_template.v,v 1.1.1.1 2014/05/26 14:14:35 liviua Exp $
// Author: Mihai Munteanu
// Created: 25/11/2008
// Last Modified: $Date: 2014/05/26 14:14:35 $
//----------------------------------------------------------------------
// Description : 
//               
//               
//----------------------------------------------------------------------
// Modification history :
// $Log: apb_slave_template.v,v $
// Revision 1.1.1.1  2014/05/26 14:14:35  liviua
// no message
//
// Revision 1.1.1.1  2014/03/27 10:54:35  liviua
// no message
//
// Revision 1.1.1.1  2013/05/14 09:36:26  liviua
// no message
//
// Revision 1.1.1.1  2011/06/22 13:34:53  liviua
// no message
//
//
//----------------------------------------------------------------------

//`include "timescale.v"

module IR_FILTERS_regs (

    sw_rst,

    // Register input/outputs
// BEGIN of automatically generated block of code
    cfg_img_width,
    cfg_img_height,
    cfg_stride,
    cfg_map0_ba,
    cfg_map1_ba,
    cfg_map2_ba,
    cfg_map0_en,
    cfg_map1_en,
    cfg_map2_en,
    cfg_max_burst_length,
    cfg_reverse_byte,
    cfg_blk_en,
    cfg_int_ack,
    cfg_pix_corr_sel,
    cfg_sharp_sel,
    cfg_median_sel,
    cfg_smooth_sel,
    cfg_laplace_sel,
    cfg_output_sel,
    cfg_pix_corr_thr,
    cfg_sharp_coef,
    cfg_test_mode_en,
    cfg_bkg,
// END of automatically generated block of code 


// BEGIN of automatically generated block of code
// END of automatically generated block of code 


// BEGIN of automatically generated block of code
// END of automatically generated block of code 



    // APB interface
    PCLK,
    PRESETn,
    PADDR,
    PENABLE,
    PWRITE,
    PWDATA,
    PSEL,
    PREADY,
    PRDATA,
    PSLVERR
);

// Parameters

parameter APB_ADDR_WIDTH = 32;
parameter TP             = 0;  // Propagation time

// Register offsets
// BEGIN of automatically generated block of code
parameter CFG_IMG_WIDTH_ADDR = 32'h0000;
parameter CFG_IMG_HEIGHT_ADDR = 32'h0004;
parameter CFG_STRIDE_ADDR = 32'h0008;
parameter CFG_MAP0_BA_ADDR = 32'h000C;
parameter CFG_MAP1_BA_ADDR = 32'h0010;
parameter CFG_MAP2_BA_ADDR = 32'h0014;
parameter CFG_MAP0_EN_ADDR = 32'h0018;
parameter CFG_MAP1_EN_ADDR = 32'h001C;
parameter CFG_MAP2_EN_ADDR = 32'h0020;
parameter CFG_MAX_BURST_LENGTH_ADDR = 32'h0024;
parameter CFG_REVERSE_BYTE_ADDR = 32'h0028;
parameter CFG_BLK_EN_ADDR = 32'h002C;
parameter CFG_INT_ACK_ADDR = 32'h0030;
parameter CFG_PIX_CORR_SEL_ADDR = 32'h0034;
parameter CFG_SHARP_SEL_ADDR = 32'h0038;
parameter CFG_MEDIAN_SEL_ADDR = 32'h003C;
parameter CFG_SMOOTH_SEL_ADDR = 32'h0040;
parameter CFG_LAPLACE_SEL_ADDR = 32'h0044;
parameter CFG_OUTPUT_SEL_ADDR = 32'h0048;
parameter CFG_PIX_CORR_THR_ADDR = 32'h004C;
parameter CFG_SHARP_COEF_ADDR = 32'h0050;
parameter CFG_TEST_MODE_EN_ADDR = 32'h0054;
parameter CFG_BKG_ADDR = 32'h0058;
// END of automatically generated block of code 



// Reset values 
// BEGIN of automatically generated block of code
parameter CFG_IMG_WIDTH_RST_VAL = 16'h0;
parameter CFG_IMG_HEIGHT_RST_VAL = 16'h0;
parameter CFG_STRIDE_RST_VAL = 16'h0;
parameter CFG_MAP0_BA_RST_VAL = 32'h0;
parameter CFG_MAP1_BA_RST_VAL = 32'h0;
parameter CFG_MAP2_BA_RST_VAL = 32'h0;
parameter CFG_MAP0_EN_RST_VAL = 1'h0;
parameter CFG_MAP1_EN_RST_VAL = 1'h0;
parameter CFG_MAP2_EN_RST_VAL = 1'h0;
parameter CFG_MAX_BURST_LENGTH_RST_VAL = 8'h0;
parameter CFG_REVERSE_BYTE_RST_VAL = 1'h0;
parameter CFG_BLK_EN_RST_VAL = 1'h0;
parameter CFG_INT_ACK_RST_VAL = 1'h0;
parameter CFG_PIX_CORR_SEL_RST_VAL = 8'h0;
parameter CFG_SHARP_SEL_RST_VAL = 8'h0;
parameter CFG_MEDIAN_SEL_RST_VAL = 8'h0;
parameter CFG_SMOOTH_SEL_RST_VAL = 8'h0;
parameter CFG_LAPLACE_SEL_RST_VAL = 8'h0;
parameter CFG_OUTPUT_SEL_RST_VAL = 8'h0;
parameter CFG_PIX_CORR_THR_RST_VAL = 8'h0;
parameter CFG_SHARP_COEF_RST_VAL = 8'h0;
parameter CFG_TEST_MODE_EN_RST_VAL = 1'h0;
parameter CFG_BKG_RST_VAL = 24'h0;
// END of automatically generated block of code 



 input                        sw_rst;

// APB interface

 input                        PCLK;
 input                        PRESETn;
 input [APB_ADDR_WIDTH-1 : 0] PADDR;
 input                        PENABLE;
 input                        PWRITE;
 input [31:0]                 PWDATA;

 input                        PSEL;
output                        PREADY;
output [31:0]                 PRDATA;
output                        PSLVERR;



// Register input/outputs

// BEGIN of automatically generated block of code
 output [15:0] cfg_img_width;    // Image width
 output [15:0] cfg_img_height;    // Image height
 output [15:0] cfg_stride;    // Stride
 output [31:0] cfg_map0_ba;    // Map 0 base address
 output [31:0] cfg_map1_ba;    // Map 1 base address
 output [31:0] cfg_map2_ba;    // Map 2 base address
 output [0:0] cfg_map0_en;    // Map 0 enable
 output [0:0] cfg_map1_en;    // Map 1 enable
 output [0:0] cfg_map2_en;    // Map 2 enalbe
 output [7:0] cfg_max_burst_length;    // Maximum burst length
 output [0:0] cfg_reverse_byte;    // Data in big/little endian
 output [0:0] cfg_blk_en;    // Block enable
 output [0:0] cfg_int_ack;    // Interrupt acknowledge
 output [7:0] cfg_pix_corr_sel;    // Pixel correction input select
 output [7:0] cfg_sharp_sel;    // Image shaprening select
 output [7:0] cfg_median_sel;    // Median filter input select
 output [7:0] cfg_smooth_sel;    // Smooth filter input select
 output [7:0] cfg_laplace_sel;    // Laplace filter input select
 output [7:0] cfg_output_sel;    // Output selection
 output [7:0] cfg_pix_corr_thr;    // Pixel correction threshold
 output [7:0] cfg_sharp_coef;    // Sharpening filter coeficient
 output [0:0] cfg_test_mode_en;    // Enable test mode
 output [23:0] cfg_bkg;    // Background value
// END of automatically generated block of code 


// BEGIN of automatically generated block of code
// END of automatically generated block of code 


// BEGIN of automatically generated block of code
// END of automatically generated block of code 


reg PREADY;

// BEGIN of automatically generated block of code
wire cfg_img_width_enable;
wire cfg_img_height_enable;
wire cfg_stride_enable;
wire cfg_map0_ba_enable;
wire cfg_map1_ba_enable;
wire cfg_map2_ba_enable;
wire cfg_map0_en_enable;
wire cfg_map1_en_enable;
wire cfg_map2_en_enable;
wire cfg_max_burst_length_enable;
wire cfg_reverse_byte_enable;
wire cfg_blk_en_enable;
wire cfg_int_ack_enable;
wire cfg_pix_corr_sel_enable;
wire cfg_sharp_sel_enable;
wire cfg_median_sel_enable;
wire cfg_smooth_sel_enable;
wire cfg_laplace_sel_enable;
wire cfg_output_sel_enable;
wire cfg_pix_corr_thr_enable;
wire cfg_sharp_coef_enable;
wire cfg_test_mode_en_enable;
wire cfg_bkg_enable;
// END of automatically generated block of code 


// BEGIN of automatically generated block of code
wire [15:0] cfg_img_width_PRDATA;
wire [15:0] cfg_img_height_PRDATA;
wire [15:0] cfg_stride_PRDATA;
wire [31:0] cfg_map0_ba_PRDATA;
wire [31:0] cfg_map1_ba_PRDATA;
wire [31:0] cfg_map2_ba_PRDATA;
wire [0:0] cfg_map0_en_PRDATA;
wire [0:0] cfg_map1_en_PRDATA;
wire [0:0] cfg_map2_en_PRDATA;
wire [7:0] cfg_max_burst_length_PRDATA;
wire [0:0] cfg_reverse_byte_PRDATA;
wire [0:0] cfg_blk_en_PRDATA;
wire [0:0] cfg_int_ack_PRDATA;
wire [7:0] cfg_pix_corr_sel_PRDATA;
wire [7:0] cfg_sharp_sel_PRDATA;
wire [7:0] cfg_median_sel_PRDATA;
wire [7:0] cfg_smooth_sel_PRDATA;
wire [7:0] cfg_laplace_sel_PRDATA;
wire [7:0] cfg_output_sel_PRDATA;
wire [7:0] cfg_pix_corr_thr_PRDATA;
wire [7:0] cfg_sharp_coef_PRDATA;
wire [0:0] cfg_test_mode_en_PRDATA;
wire [23:0] cfg_bkg_PRDATA;
// END of automatically generated block of code 



// Address decoder

// RW Fields
// BEGIN of automatically generated block of code
assign cfg_img_width_enable =  PSEL && (PADDR == CFG_IMG_WIDTH_ADDR);
assign cfg_img_height_enable =  PSEL && (PADDR == CFG_IMG_HEIGHT_ADDR);
assign cfg_stride_enable =  PSEL && (PADDR == CFG_STRIDE_ADDR);
assign cfg_map0_ba_enable =  PSEL && (PADDR == CFG_MAP0_BA_ADDR);
assign cfg_map1_ba_enable =  PSEL && (PADDR == CFG_MAP1_BA_ADDR);
assign cfg_map2_ba_enable =  PSEL && (PADDR == CFG_MAP2_BA_ADDR);
assign cfg_map0_en_enable =  PSEL && (PADDR == CFG_MAP0_EN_ADDR);
assign cfg_map1_en_enable =  PSEL && (PADDR == CFG_MAP1_EN_ADDR);
assign cfg_map2_en_enable =  PSEL && (PADDR == CFG_MAP2_EN_ADDR);
assign cfg_max_burst_length_enable =  PSEL && (PADDR == CFG_MAX_BURST_LENGTH_ADDR);
assign cfg_reverse_byte_enable =  PSEL && (PADDR == CFG_REVERSE_BYTE_ADDR);
assign cfg_blk_en_enable =  PSEL && (PADDR == CFG_BLK_EN_ADDR);
assign cfg_int_ack_enable =  PSEL && (PADDR == CFG_INT_ACK_ADDR);
assign cfg_pix_corr_sel_enable =  PSEL && (PADDR == CFG_PIX_CORR_SEL_ADDR);
assign cfg_sharp_sel_enable =  PSEL && (PADDR == CFG_SHARP_SEL_ADDR);
assign cfg_median_sel_enable =  PSEL && (PADDR == CFG_MEDIAN_SEL_ADDR);
assign cfg_smooth_sel_enable =  PSEL && (PADDR == CFG_SMOOTH_SEL_ADDR);
assign cfg_laplace_sel_enable =  PSEL && (PADDR == CFG_LAPLACE_SEL_ADDR);
assign cfg_output_sel_enable =  PSEL && (PADDR == CFG_OUTPUT_SEL_ADDR);
assign cfg_pix_corr_thr_enable =  PSEL && (PADDR == CFG_PIX_CORR_THR_ADDR);
assign cfg_sharp_coef_enable =  PSEL && (PADDR == CFG_SHARP_COEF_ADDR);
assign cfg_test_mode_en_enable =  PSEL && (PADDR == CFG_TEST_MODE_EN_ADDR);
assign cfg_bkg_enable =  PSEL && (PADDR == CFG_BKG_ADDR);
// END of automatically generated block of code 


// RO Fields
// BEGIN of automatically generated block of code
// END of automatically generated block of code 




// Register Fields instances


// RW Fields

// BEGIN of automatically generated block of code
apb_reg_field_rw
  #(.WIDTH      (16),
    .RESET_VALUE(CFG_IMG_WIDTH_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_img_width(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[15:0]),
    .PRDATA  (cfg_img_width_PRDATA),
    .enable  (cfg_img_width_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_img_width)
);

apb_reg_field_rw
  #(.WIDTH      (16),
    .RESET_VALUE(CFG_IMG_HEIGHT_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_img_height(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[15:0]),
    .PRDATA  (cfg_img_height_PRDATA),
    .enable  (cfg_img_height_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_img_height)
);

apb_reg_field_rw
  #(.WIDTH      (16),
    .RESET_VALUE(CFG_STRIDE_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_stride(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[15:0]),
    .PRDATA  (cfg_stride_PRDATA),
    .enable  (cfg_stride_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_stride)
);

apb_reg_field_rw
  #(.WIDTH      (32),
    .RESET_VALUE(CFG_MAP0_BA_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_map0_ba(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[31:0]),
    .PRDATA  (cfg_map0_ba_PRDATA),
    .enable  (cfg_map0_ba_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_map0_ba)
);

apb_reg_field_rw
  #(.WIDTH      (32),
    .RESET_VALUE(CFG_MAP1_BA_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_map1_ba(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[31:0]),
    .PRDATA  (cfg_map1_ba_PRDATA),
    .enable  (cfg_map1_ba_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_map1_ba)
);

apb_reg_field_rw
  #(.WIDTH      (32),
    .RESET_VALUE(CFG_MAP2_BA_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_map2_ba(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[31:0]),
    .PRDATA  (cfg_map2_ba_PRDATA),
    .enable  (cfg_map2_ba_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_map2_ba)
);

apb_reg_field_rw
  #(.WIDTH      (1),
    .RESET_VALUE(CFG_MAP0_EN_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_map0_en(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[0:0]),
    .PRDATA  (cfg_map0_en_PRDATA),
    .enable  (cfg_map0_en_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_map0_en)
);

apb_reg_field_rw
  #(.WIDTH      (1),
    .RESET_VALUE(CFG_MAP1_EN_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_map1_en(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[0:0]),
    .PRDATA  (cfg_map1_en_PRDATA),
    .enable  (cfg_map1_en_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_map1_en)
);

apb_reg_field_rw
  #(.WIDTH      (1),
    .RESET_VALUE(CFG_MAP2_EN_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_map2_en(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[0:0]),
    .PRDATA  (cfg_map2_en_PRDATA),
    .enable  (cfg_map2_en_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_map2_en)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_MAX_BURST_LENGTH_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_max_burst_length(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_max_burst_length_PRDATA),
    .enable  (cfg_max_burst_length_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_max_burst_length)
);

apb_reg_field_rw
  #(.WIDTH      (1),
    .RESET_VALUE(CFG_REVERSE_BYTE_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_reverse_byte(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[0:0]),
    .PRDATA  (cfg_reverse_byte_PRDATA),
    .enable  (cfg_reverse_byte_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_reverse_byte)
);

apb_reg_field_rw
  #(.WIDTH      (1),
    .RESET_VALUE(CFG_BLK_EN_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_blk_en(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[0:0]),
    .PRDATA  (cfg_blk_en_PRDATA),
    .enable  (cfg_blk_en_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_blk_en)
);

apb_reg_field_rw
  #(.WIDTH      (1),
    .RESET_VALUE(CFG_INT_ACK_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_int_ack(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[0:0]),
    .PRDATA  (cfg_int_ack_PRDATA),
    .enable  (cfg_int_ack_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_int_ack)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_PIX_CORR_SEL_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_pix_corr_sel(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_pix_corr_sel_PRDATA),
    .enable  (cfg_pix_corr_sel_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_pix_corr_sel)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_SHARP_SEL_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_sharp_sel(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_sharp_sel_PRDATA),
    .enable  (cfg_sharp_sel_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_sharp_sel)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_MEDIAN_SEL_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_median_sel(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_median_sel_PRDATA),
    .enable  (cfg_median_sel_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_median_sel)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_SMOOTH_SEL_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_smooth_sel(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_smooth_sel_PRDATA),
    .enable  (cfg_smooth_sel_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_smooth_sel)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_LAPLACE_SEL_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_laplace_sel(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_laplace_sel_PRDATA),
    .enable  (cfg_laplace_sel_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_laplace_sel)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_OUTPUT_SEL_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_output_sel(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_output_sel_PRDATA),
    .enable  (cfg_output_sel_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_output_sel)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_PIX_CORR_THR_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_pix_corr_thr(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_pix_corr_thr_PRDATA),
    .enable  (cfg_pix_corr_thr_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_pix_corr_thr)
);

apb_reg_field_rw
  #(.WIDTH      (8),
    .RESET_VALUE(CFG_SHARP_COEF_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_sharp_coef(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[7:0]),
    .PRDATA  (cfg_sharp_coef_PRDATA),
    .enable  (cfg_sharp_coef_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_sharp_coef)
);

apb_reg_field_rw
  #(.WIDTH      (1),
    .RESET_VALUE(CFG_TEST_MODE_EN_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_test_mode_en(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[0:0]),
    .PRDATA  (cfg_test_mode_en_PRDATA),
    .enable  (cfg_test_mode_en_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_test_mode_en)
);

apb_reg_field_rw
  #(.WIDTH      (24),
    .RESET_VALUE(CFG_BKG_RST_VAL),
    .TP         (TP)
  ) i_apb_reg_field_rw_cfg_bkg(
    .PCLK    (PCLK),
    .PRESETn (PRESETn),
    .PWRITE  (PWRITE),
    .PWDATA  (PWDATA[23:0]),
    .PRDATA  (cfg_bkg_PRDATA),
    .enable  (cfg_bkg_enable),
    .sw_rst  (sw_rst),
    .data_out(cfg_bkg)
);

// END of automatically generated block of code 



// RW_Autorst Fields

// BEGIN of automatically generated block of code
// END of automatically generated block of code 




// RO Fields

// BEGIN of automatically generated block of code
// END of automatically generated block of code 



// BEGIN of automatically generated block of code
// END of automatically generated block of code 





// RO Clear Fields

// BEGIN of automatically generated block of code
// END of automatically generated block of code 



// Generate PREADY
always @( posedge PCLK or negedge PRESETn )
    if(!PRESETn)
        PREADY <= 1'b0;
    else if(sw_rst)
        PREADY <= 1'b0;
    else if( PSEL )
        PREADY <= 1'b1;
    else
        PREADY <= 1'b0;

// Combine PRDATA from all registers 
assign PRDATA = 32'h00000000
// BEGIN of automatically generated block of code
              | ( cfg_img_width_PRDATA << 0)
              | ( cfg_img_height_PRDATA << 0)
              | ( cfg_stride_PRDATA << 0)
              | ( cfg_map0_ba_PRDATA << 0)
              | ( cfg_map1_ba_PRDATA << 0)
              | ( cfg_map2_ba_PRDATA << 0)
              | ( cfg_map0_en_PRDATA << 0)
              | ( cfg_map1_en_PRDATA << 0)
              | ( cfg_map2_en_PRDATA << 0)
              | ( cfg_max_burst_length_PRDATA << 0)
              | ( cfg_reverse_byte_PRDATA << 0)
              | ( cfg_blk_en_PRDATA << 0)
              | ( cfg_int_ack_PRDATA << 0)
              | ( cfg_pix_corr_sel_PRDATA << 0)
              | ( cfg_sharp_sel_PRDATA << 0)
              | ( cfg_median_sel_PRDATA << 0)
              | ( cfg_smooth_sel_PRDATA << 0)
              | ( cfg_laplace_sel_PRDATA << 0)
              | ( cfg_output_sel_PRDATA << 0)
              | ( cfg_pix_corr_thr_PRDATA << 0)
              | ( cfg_sharp_coef_PRDATA << 0)
              | ( cfg_test_mode_en_PRDATA << 0)
              | ( cfg_bkg_PRDATA << 0)
// END of automatically generated block of code 
;


// Error signal - if no correct address was decoded
assign PSLVERR = PREADY && !(
// BEGIN of automatically generated block of code
                cfg_img_width_enable ||
                cfg_img_height_enable ||
                cfg_stride_enable ||
                cfg_map0_ba_enable ||
                cfg_map1_ba_enable ||
                cfg_map2_ba_enable ||
                cfg_map0_en_enable ||
                cfg_map1_en_enable ||
                cfg_map2_en_enable ||
                cfg_max_burst_length_enable ||
                cfg_reverse_byte_enable ||
                cfg_blk_en_enable ||
                cfg_int_ack_enable ||
                cfg_pix_corr_sel_enable ||
                cfg_sharp_sel_enable ||
                cfg_median_sel_enable ||
                cfg_smooth_sel_enable ||
                cfg_laplace_sel_enable ||
                cfg_output_sel_enable ||
                cfg_pix_corr_thr_enable ||
                cfg_sharp_coef_enable ||
                cfg_test_mode_en_enable ||
                cfg_bkg_enable ||
// END of automatically generated block of code 

                1'b0);


endmodule



