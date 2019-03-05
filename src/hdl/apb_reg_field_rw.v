//---------------------------------------------------------------------
// The material in this file is proprietary of Fotonation Inc.
// Title: Simple RW register field
// File: $Id: apb_reg_field_rw.v,v 1.2 2014/06/03 11:10:42 liviua Exp $
// Author: Mihai Munteanu
// Created: 25/11/2008
// Last Modified: $Date: 2014/06/03 11:10:42 $
//----------------------------------------------------------------------
// Description: Simple APB RW (configuration) register field. 
//              Address decoding must be done at a higher level
//----------------------------------------------------------------------
// Modification history :
// $Log: apb_reg_field_rw.v,v $
// Revision 1.2  2014/06/03 11:10:42  liviua
// Modified macros to use `define in order to know if to compile a macro or not
//
// Revision 1.1.1.1  2014/05/26 14:14:35  liviua
// no message
//
// Revision 1.1.1.1  2013/05/14 09:36:27  liviua
// no message
//
//
//
//
//----------------------------------------------------------------------

//`include "timescale.v"

`ifndef FN_APB_REG_FIELD_RW_COMPILED

`define FN_APB_REG_FIELD_RW_COMPILED

module apb_reg_field_rw (
    PCLK    ,
    PRESETn ,
    PWRITE  ,
    PWDATA  ,
    PRDATA  ,

    enable  ,
    sw_rst  ,

    data_out
);

parameter WIDTH          = 8;       // Field width in bits
parameter RESET_VALUE    = 8'h00;   // Field reset value
parameter TP             = 0;       // Propagation time


 input              PCLK    ; // APB bus PCLK    
 input              PRESETn ; // APB bus PRESETn 
 input              PWRITE  ; // APB bus PWRITE  
 input  [WIDTH-1:0] PWDATA  ; // APB bus PWDATA  
output  [WIDTH-1:0] PRDATA  ; // APB bus PRDATA  
 input              enable  ; // Combination of PSEL and PADDR
 input              sw_rst  ; // Software reset. Active high
output  [WIDTH-1:0] data_out; // Reg Output towards the IP

   reg  [WIDTH-1:0] data_reg;

// Write operation
always @( posedge PCLK or negedge PRESETn )
    if(!PRESETn)
        data_reg <= #TP RESET_VALUE;
    else if(sw_rst)
        data_reg <= #TP RESET_VALUE;
    else if( PWRITE && enable )
        data_reg <= #TP PWDATA;


// Read operation - put read data on the bus
assign PRDATA = ( enable && !PWRITE ) ? data_reg : {WIDTH{1'b0}};

assign data_out = data_reg;

endmodule
`endif
