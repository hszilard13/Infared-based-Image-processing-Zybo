//--------------------------------------------------------------------------------------------------
// Project     : IR_filters
// Module Name : selector_2i 
// Author      : SZILARD HEGEDUS
// Created     : 10/29/2018
//--------------------------------------------------------------------------------------------------
// Description : MUX2to1 with Frame interface input, and output
//--------------------------------------------------------------------------------------------------
// Modification history :
// 01/28/2019 (SH):Initial version
//--------------------------------------------------------------------------------------------------

module selector_2i#(
  parameter DATA_WIDTH    = 8 
)(
  input                      clk         , // System clock
  input                      rst_n       , // Asynchronous reset active low
  input                      sel         , // Mux selection bit
//--------------------------------Input frame interface---------------------------------------------
  input                      in0_frm_val , // Master has valid data to be transferred
  output                     in0_frm_rdy , // Slave is ready to receive the data
  input     [DATA_WIDTH-1:0] in0_frm_data, // Data transferred from master to slave
  input                      in0_frm_sof , // Start of Frame
  input                      in0_frm_eof , // End of Frame
  input                      in0_frm_sol , // Start of Line
  input                      in0_frm_eol , // End of Line
            
  input                      in1_frm_val , // Master has valid data to be transferred
  output                     in1_frm_rdy , // Slave is ready to receive the data
  input     [DATA_WIDTH-1:0] in1_frm_data, // Data transferred from master to slave
  input                      in1_frm_sof , // Start of Frame
  input                      in1_frm_eof , // End of Frame
  input                      in1_frm_sol , // Start of Line
  input                      in1_frm_eol , // End of Line
//--------------------------------Output frame interface---------------------------------------------   
  output                     out_frm_val , // Master has valid data to be transferred      
  input                      out_frm_rdy , // Slave is ready to receive the data           
  output [DATA_WIDTH-1:0]    out_frm_data, // Data transferred from master to slave        
  output                     out_frm_sof , // Start of Frame                               
  output                     out_frm_eof , // End of Frame                                 
  output                     out_frm_sol , // Start of Line                                
  output                     out_frm_eol   // End of Line                                  
);


assign out_frm_val  = sel ? in1_frm_val : in0_frm_val;			     
assign out_frm_sol  = sel ? in1_frm_sol : in0_frm_sol;
assign out_frm_eol  = sel ? in1_frm_eol : in0_frm_eol;
assign out_frm_sof  = sel ? in1_frm_sof : in0_frm_sof;
assign out_frm_eof  = sel ? in1_frm_eof : in0_frm_eof;
assign out_frm_data = sel ? in1_frm_data : in0_frm_data;
assign in0_frm_rdy  = sel ? 1'b0 : out_frm_rdy;
assign in1_frm_rdy  = ~sel ? 1'b0 : out_frm_rdy;
			 

endmodule //selector_2i