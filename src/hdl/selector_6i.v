//--------------------------------------------------------------------------------------------------
// Project     : IR_filters
// Module Name : selector_2i 
// Author      : SZILARD HEGEDUS
// Created     : 10/29/2018
//--------------------------------------------------------------------------------------------------
// Description : Provide input signals for all filters
//--------------------------------------------------------------------------------------------------
// Modification history :
// 01/28/2019 (SH):Initial version
//--------------------------------------------------------------------------------------------------

module selector_6i#(
  parameter DATA_WIDTH    = 8 
)(
  input                      clk         , // System clock
  input                      rst_n       , // Asynchronous reset active low
  input     [7:0]            sel         , // Mux selection bit
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
  
  input                      in2_frm_val , // Master has valid data to be transferred
  output                     in2_frm_rdy , // Slave is ready to receive the data
  input     [DATA_WIDTH-1:0] in2_frm_data, // Data transferred from master to slave
  input                      in2_frm_sof , // Start of Frame
  input                      in2_frm_eof , // End of Frame
  input                      in2_frm_sol , // Start of Line
  input                      in2_frm_eol , // End of Line
  
  input                      in3_frm_val , // Master has valid data to be transferred
  output                     in3_frm_rdy , // Slave is ready to receive the data
  input     [DATA_WIDTH-1:0] in3_frm_data, // Data transferred from master to slave
  input                      in3_frm_sof , // Start of Frame
  input                      in3_frm_eof , // End of Frame
  input                      in3_frm_sol , // Start of Line
  input                      in3_frm_eol , // End of Line
  
  input                      in4_frm_val , // Master has valid data to be transferred
  output                     in4_frm_rdy , // Slave is ready to receive the data
  input     [DATA_WIDTH-1:0] in4_frm_data, // Data transferred from master to slave
  input                      in4_frm_sof , // Start of Frame
  input                      in4_frm_eof , // End of Frame
  input                      in4_frm_sol , // Start of Line
  input                      in4_frm_eol , // End of Line

  input                      in5_frm_val , // Master has valid data to be transferred
  output                     in5_frm_rdy , // Slave is ready to receive the data
  input     [DATA_WIDTH-1:0] in5_frm_data, // Data transferred from master to slave
  input                      in5_frm_sof , // Start of Frame
  input                      in5_frm_eof , // End of Frame
  input                      in5_frm_sol , // Start of Line
  input                      in5_frm_eol , // End of Line
    
//--------------------------------Output frame interface---------------------------------------------   
  output                     out_frm_val , // Master has valid data to be transferred      
  input                      out_frm_rdy , // Slave is ready to receive the data           
  output  [DATA_WIDTH-1:0]   out_frm_data, // Data transferred from master to slave        
  output                     out_frm_sof , // Start of Frame                               
  output                     out_frm_eof , // End of Frame                                 
  output                     out_frm_sol , // Start of Line                                
  output                     out_frm_eol   // End of Line      
);

  wire                 out0_frm_val ; // Master has valid data to be transferred      
  wire                 out0_frm_rdy ; // Slave is ready to receive the data           
  wire[DATA_WIDTH-1:0] out0_frm_data; // Data transferred from master to slave        
  wire                 out0_frm_sof ; // Start of Frame                               
  wire                 out0_frm_eof ; // End of Frame                                 
  wire                 out0_frm_sol ; // Start of Line                                
  wire                 out0_frm_eol ; // End of Line      

  wire                 out1_frm_val ; // Master has valid data to be transferred      
  wire                 out1_frm_rdy ; // Slave is ready to receive the data           
  wire[DATA_WIDTH-1:0] out1_frm_data; // Data transferred from master to slave        
  wire                 out1_frm_sof ; // Start of Frame                               
  wire                 out1_frm_eof ; // End of Frame                                 
  wire                 out1_frm_sol ; // Start of Line                                
  wire                 out1_frm_eol ; // End of Line    

  wire                 out2_frm_val ; // Master has valid data to be transferred      
  wire                 out2_frm_rdy ; // Slave is ready to receive the data           
  wire[DATA_WIDTH-1:0] out2_frm_data; // Data transferred from master to slave        
  wire                 out2_frm_sof ; // Start of Frame                               
  wire                 out2_frm_eof ; // End of Frame                                 
  wire                 out2_frm_sol ; // Start of Line                                
  wire                 out2_frm_eol ; // End of Line    

  wire                 out3_frm_val ; // Master has valid data to be transferred      
  wire                 out3_frm_rdy ; // Slave is ready to receive the data           
  wire[DATA_WIDTH-1:0] out3_frm_data; // Data transferred from master to slave        
  wire                 out3_frm_sof ; // Start of Frame                               
  wire                 out3_frm_eof ; // End of Frame                                 
  wire                 out3_frm_sol ; // Start of Line                                
  wire                 out3_frm_eol ; // End of Line    


selector_2i#(
  .DATA_WIDTH(DATA_WIDTH) 
)selector_2i_0(
  .clk         (clk          ), // System clock
  .rst_n       (rst_n        ), // Asynchronous reset active low
  .sel         (sel[0]       ), // Mux selection bit
  .in0_frm_val (in0_frm_val  ), // Master has valid data to be transferred
  .in0_frm_rdy (in0_frm_rdy  ), // Slave is ready to receive the data
  .in0_frm_data(in0_frm_data ), // Data transferred from master to slave
  .in0_frm_sof (in0_frm_sof  ), // Start of Frame
  .in0_frm_eof (in0_frm_eof  ), // End of Frame
  .in0_frm_sol (in0_frm_sol  ), // Start of Line
  .in0_frm_eol (in0_frm_eol  ), // End of Line
  .in1_frm_val (in1_frm_val  ), // Master has valid data to be transferred
  .in1_frm_rdy (in1_frm_rdy  ), // Slave is ready to receive the data
  .in1_frm_data(in1_frm_data ), // Data transferred from master to slave
  .in1_frm_sof (in1_frm_sof  ), // Start of Frame
  .in1_frm_eof (in1_frm_eof  ), // End of Frame
  .in1_frm_sol (in1_frm_sol  ), // Start of Line
  .in1_frm_eol (in1_frm_eol  ), // End of Line 
  .out_frm_val (out0_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (out0_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(out0_frm_data), // Data transferred from master to slave        
  .out_frm_sof (out0_frm_sof ), // Start of Frame                               
  .out_frm_eof (out0_frm_eof ), // End of Frame                                 
  .out_frm_sol (out0_frm_sol ), // Start of Line                                
  .out_frm_eol (out0_frm_eol )  // End of Line                                  
);

selector_2i#(
  .DATA_WIDTH(DATA_WIDTH) 
)selector_2i_1(
  .clk         (clk          ), // System clock
  .rst_n       (rst_n        ), // Asynchronous reset active low
  .sel         (sel[1]       ), // Mux selection bit
  .in0_frm_val (out0_frm_val ), // Master has valid data to be transferred
  .in0_frm_rdy (out0_frm_rdy ), // Slave is ready to receive the data
  .in0_frm_data(out0_frm_data), // Data transferred from master to slave
  .in0_frm_sof (out0_frm_sof ), // Start of Frame
  .in0_frm_eof (out0_frm_eof ), // End of Frame
  .in0_frm_sol (out0_frm_sol ), // Start of Line
  .in0_frm_eol (out0_frm_eol ), // End of Line
  .in1_frm_val (in2_frm_val  ), // Master has valid data to be transferred
  .in1_frm_rdy (in2_frm_rdy  ), // Slave is ready to receive the data
  .in1_frm_data(in2_frm_data ), // Data transferred from master to slave
  .in1_frm_sof (in2_frm_sof  ), // Start of Frame
  .in1_frm_eof (in2_frm_eof  ), // End of Frame
  .in1_frm_sol (in2_frm_sol  ), // Start of Line
  .in1_frm_eol (in2_frm_eol  ), // End of Line 
  .out_frm_val (out1_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (out1_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(out1_frm_data), // Data transferred from master to slave        
  .out_frm_sof (out1_frm_sof ), // Start of Frame                               
  .out_frm_eof (out1_frm_eof ), // End of Frame                                 
  .out_frm_sol (out1_frm_sol ), // Start of Line                                
  .out_frm_eol (out1_frm_eol )  // End of Line                                  
);

selector_2i#(
  .DATA_WIDTH(DATA_WIDTH) 
)selector_2i_2(
  .clk         (clk          ), // System clock
  .rst_n       (rst_n        ), // Asynchronous reset active low
  .sel         (sel[2]       ), // Mux selection bit
  .in0_frm_val (out1_frm_val ), // Master has valid data to be transferred
  .in0_frm_rdy (out1_frm_rdy ), // Slave is ready to receive the data
  .in0_frm_data(out1_frm_data), // Data transferred from master to slave
  .in0_frm_sof (out1_frm_sof ), // Start of Frame
  .in0_frm_eof (out1_frm_eof ), // End of Frame
  .in0_frm_sol (out1_frm_sol ), // Start of Line
  .in0_frm_eol (out1_frm_eol ), // End of Line
  .in1_frm_val (in3_frm_val  ), // Master has valid data to be transferred
  .in1_frm_rdy (in3_frm_rdy  ), // Slave is ready to receive the data
  .in1_frm_data(in3_frm_data ), // Data transferred from master to slave
  .in1_frm_sof (in3_frm_sof  ), // Start of Frame
  .in1_frm_eof (in3_frm_eof  ), // End of Frame
  .in1_frm_sol (in3_frm_sol  ), // Start of Line
  .in1_frm_eol (in3_frm_eol  ), // End of Line 
  .out_frm_val (out2_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (out2_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(out2_frm_data), // Data transferred from master to slave        
  .out_frm_sof (out2_frm_sof ), // Start of Frame                               
  .out_frm_eof (out2_frm_eof ), // End of Frame                                 
  .out_frm_sol (out2_frm_sol ), // Start of Line                                
  .out_frm_eol (out2_frm_eol )  // End of Line                                  
);

selector_2i#(
  .DATA_WIDTH(DATA_WIDTH) 
)selector_2i_3(
  .clk         (clk          ), // System clock
  .rst_n       (rst_n        ), // Asynchronous reset active low
  .sel         (sel[3]       ), // Mux selection bit
  .in0_frm_val (out2_frm_val ), // Master has valid data to be transferred
  .in0_frm_rdy (out2_frm_rdy ), // Slave is ready to receive the data
  .in0_frm_data(out2_frm_data), // Data transferred from master to slave
  .in0_frm_sof (out2_frm_sof ), // Start of Frame
  .in0_frm_eof (out2_frm_eof ), // End of Frame
  .in0_frm_sol (out2_frm_sol ), // Start of Line
  .in0_frm_eol (out2_frm_eol ), // End of Line
  .in1_frm_val (in4_frm_val  ), // Master has valid data to be transferred
  .in1_frm_rdy (in4_frm_rdy  ), // Slave is ready to receive the data
  .in1_frm_data(in4_frm_data ), // Data transferred from master to slave
  .in1_frm_sof (in4_frm_sof  ), // Start of Frame
  .in1_frm_eof (in4_frm_eof  ), // End of Frame
  .in1_frm_sol (in4_frm_sol  ), // Start of Line
  .in1_frm_eol (in4_frm_eol  ), // End of Line 
  .out_frm_val (out3_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (out3_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(out3_frm_data), // Data transferred from master to slave        
  .out_frm_sof (out3_frm_sof ), // Start of Frame                               
  .out_frm_eof (out3_frm_eof ), // End of Frame                                 
  .out_frm_sol (out3_frm_sol ), // Start of Line                                
  .out_frm_eol (out3_frm_eol )  // End of Line                                  
);

selector_2i#(
  .DATA_WIDTH(DATA_WIDTH) 
)selector_2i_4(
  .clk         (clk          ), // System clock
  .rst_n       (rst_n        ), // Asynchronous reset active low
  .sel         (sel[4]       ), // Mux selection bit
  .in0_frm_val (out3_frm_val ), // Master has valid data to be transferred
  .in0_frm_rdy (out3_frm_rdy ), // Slave is ready to receive the data
  .in0_frm_data(out3_frm_data), // Data transferred from master to slave
  .in0_frm_sof (out3_frm_sof ), // Start of Frame
  .in0_frm_eof (out3_frm_eof ), // End of Frame
  .in0_frm_sol (out3_frm_sol ), // Start of Line
  .in0_frm_eol (out3_frm_eol ), // End of Line
  .in1_frm_val (in5_frm_val  ), // Master has valid data to be transferred
  .in1_frm_rdy (in5_frm_rdy  ), // Slave is ready to receive the data
  .in1_frm_data(in5_frm_data ), // Data transferred from master to slave
  .in1_frm_sof (in5_frm_sof  ), // Start of Frame
  .in1_frm_eof (in5_frm_eof  ), // End of Frame
  .in1_frm_sol (in5_frm_sol  ), // Start of Line
  .in1_frm_eol (in5_frm_eol  ), // End of Line 
  .out_frm_val (out_frm_val ), // Master has valid data to be transferred      
  .out_frm_rdy (out_frm_rdy ), // Slave is ready to receive the data           
  .out_frm_data(out_frm_data), // Data transferred from master to slave        
  .out_frm_sof (out_frm_sof ), // Start of Frame                               
  .out_frm_eof (out_frm_eof ), // End of Frame                                 
  .out_frm_sol (out_frm_sol ), // Start of Line                                
  .out_frm_eol (out_frm_eol )  // End of Line                                  
);
endmodule //selector_5i