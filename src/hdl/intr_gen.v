// Project     : ir_filters
// Module Name : intr_gen
// Author      : Szilard Hegedus
// Created     : 01/21/2019
//--------------------------------------------------------------------------------------------------
// Description : Generates interrupt from input pulse stimulus
//--------------------------------------------------------------------------------------------------
// Modification history :
// 11/15/2018 (SH): Initial version
//--------------------------------------------------------------------------------------------------

module intr_gen(
  input      clk     , // System clock
  input      rst_n   , // Reset active low
  input      stimulus, // Input stimulus
  input      intr_ack, // Interrupt acknowledge
  output reg intr      // Interrupt
);

always@(posedge clk or negedge rst_n)
if(~rst_n  ) intr <= 1'b0; else // Reset at hardware reset
if(intr_ack) intr <= 1'b0; else // Reset at acknowledge
if(stimulus) intr <= 1'b1;      // Set at input stimulus


endmodule