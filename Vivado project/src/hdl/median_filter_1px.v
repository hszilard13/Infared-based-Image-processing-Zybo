// Project     : ir_outers
// Module Name : median_outer_4px
// Author      : Szilard Hegedus
// Created     : 11/15/2018
//--------------------------------------------------------------------------------------------------
// Description : Connects Median outer for 3x3 window
//--------------------------------------------------------------------------------------------------
// Modification history :
// 11/15/2018 (SH): Initial version
// 02/04/2019 (SH): Replaced 4 pixel/cycle to 1 pixel/cycle to integrate into Pcam5c_demo reference design 
//--------------------------------------------------------------------------------------------------

module median_filter_1px#(
parameter DATA_WIDTH    = 8
)(
input                           clk       , // System clock
input                           rst_n     , // Asynchronous reset active low
//----------------------------Input Frame Interface-----------------------------------------
input                           in3x3_val , // Master has valid data to be transferred
output                          in3x3_rdy , // Slave is ready to receive the data
input      [3*3*DATA_WIDTH-1:0] in3x3_data, // Data transferred from master to slave
input                           in3x3_sof , // Start of Frame
input                           in3x3_eof , // End of Frame
input                           in3x3_sol , // Start of Line
input                           in3x3_eol , // End of Line
//----------------------------Output Frame Interface-----------------------------------------
output                          out_val   , // Master has valid data to be transferred
input                           out_rdy   , // Slave is ready to receive the data
output     [  DATA_WIDTH-1:0]   out_data  , // Data transferred from master to slave
output                          out_sof   , // Start of Frame
output                          out_eof   , // End of Frame
output                          out_sol   , // Start of Line
output                          out_eol     // End of Line
);

//-----------------------------Internal signals----------------------------------------------


wire hor_val ;
wire vert_val;

wire [3*DATA_WIDTH-1 : 0]vert0_data;
wire [3*DATA_WIDTH-1 : 0]vert1_data;
wire [3*DATA_WIDTH-1 : 0]vert2_data;

wire [3*DATA_WIDTH-1 : 0]hor00_data;
wire [3*DATA_WIDTH-1 : 0]hor01_data; 
wire [3*DATA_WIDTH-1 : 0]hor02_data;
     
    
wire [3*DATA_WIDTH-1 : 0]diag0_data;

wire vert0_rdy;
wire vert1_rdy;
wire vert2_rdy;
wire hor0_rdy;

wire win1_sol;
wire win1_eol;
wire win1_sof;
wire win1_eof;
wire win0_sol;
wire win0_eol;
wire win0_sof;
wire win0_eof;


assign out_data = diag0_data[2*DATA_WIDTH-1:DATA_WIDTH];
  
//Verical sort
median_line_sort#(
  .DATA_WIDTH(DATA_WIDTH)
)vert0(
  .clk      (clk                                     ),
  .rst_n    (rst_n                                   ), 
  .pix2     (in3x3_data[9*DATA_WIDTH-1: 8*DATA_WIDTH]),
  .pix1     (in3x3_data[6*DATA_WIDTH-1: 5*DATA_WIDTH]),
  .pix0     (in3x3_data[3*DATA_WIDTH-1: 2*DATA_WIDTH]),
  .win_val  (in3x3_val                               ),
  .win_rdy  (in3x3_rdy                               ),
  .win_sol  (in3x3_sol                               ),
  .win_eol  (in3x3_eol                               ),
  .win_sof  (in3x3_sof                               ),
  .win_eof  (in3x3_eof                               ),
  .sort_val (vert_val                                ),      
  .sort_rdy (vert2_rdy                               ),      
  .sort_data(vert2_data                              ),
  .sort_sol (win0_sol                                ),
  .sort_eol (win0_eol                                ),
  .sort_sof (win0_sof                                ),
  .sort_eof (win0_eof                                )
);

median_line_sort#(
  .DATA_WIDTH(DATA_WIDTH)
)vert1(
  .clk      (clk                                     ),
  .rst_n    (rst_n                                   ), 
  .pix2     (in3x3_data[8*DATA_WIDTH-1: 7*DATA_WIDTH]),
  .pix1     (in3x3_data[5*DATA_WIDTH-1: 4*DATA_WIDTH]),
  .pix0     (in3x3_data[2*DATA_WIDTH-1:   DATA_WIDTH]),
  .win_val  (in3x3_val                               ),
  .win_rdy  (                                        ),
  .win_sol  (in3x3_sol                               ),
  .win_eol  (in3x3_eol                               ),
  .win_sof  (in3x3_sof                               ),
  .win_eof  (in3x3_eof                               ),
  .sort_val (                                        ),      
  .sort_rdy (vert1_rdy                               ),      
  .sort_data(vert1_data                              ),
  .sort_sol (                                        ),
  .sort_eol (                                        ),
  .sort_sof (                                        ),
  .sort_eof (                                        )
);

median_line_sort#(
  .DATA_WIDTH(DATA_WIDTH)
)vert2(
  .clk      (clk                                     ),
  .rst_n    (rst_n                                   ), 
  .pix2     (in3x3_data[7*DATA_WIDTH-1: 6*DATA_WIDTH]),
  .pix1     (in3x3_data[4*DATA_WIDTH-1: 3*DATA_WIDTH]),
  .pix0     (in3x3_data[  DATA_WIDTH-1:            0]),
  .win_val  (in3x3_val                               ),
  .win_rdy  (                                        ),
  .win_sol  (in3x3_sol                               ),
  .win_eol  (in3x3_eol                               ),
  .win_sof  (in3x3_sof                               ),
  .win_eof  (in3x3_eof                               ),
  .sort_val (                                        ),      
  .sort_rdy (vert0_rdy                               ),      
  .sort_data(vert0_data                              ),
  .sort_sol (                                        ),
  .sort_eol (                                        ),
  .sort_sof (                                        ),
  .sort_eof (                                        )
);

//Horizontal sort
median_line_sort#(
  .DATA_WIDTH(DATA_WIDTH)
)hor00(
  .clk      (clk                                    ),
  .rst_n    (rst_n                                  ), 
  .pix2     (vert0_data[3*DATA_WIDTH-1:2*DATA_WIDTH]),
  .pix1     (vert1_data[3*DATA_WIDTH-1:2*DATA_WIDTH]),
  .pix0     (vert2_data[3*DATA_WIDTH-1:2*DATA_WIDTH]),
  .win_val  (vert_val                               ),
  .win_rdy  (vert0_rdy                              ),
  .win_sol  (win0_sol                               ),
  .win_eol  (win0_eol                               ),
  .win_sof  (win0_sof                               ),
  .win_eof  (win0_eof                               ),
  .sort_val (hor_val                                ),      
  .sort_rdy (hor0_rdy                               ),      
  .sort_data(hor00_data                             ),
  .sort_sol (win1_sol                               ),
  .sort_eol (win1_eol                               ),
  .sort_sof (win1_sof                               ),
  .sort_eof (win1_eof                               )
);

median_line_sort#(
  .DATA_WIDTH(DATA_WIDTH)
)hor01(
  .clk      (clk                                  ),
  .rst_n    (rst_n                                ), 
  .pix0     (vert0_data[2*DATA_WIDTH-1:DATA_WIDTH]),
  .pix1     (vert1_data[2*DATA_WIDTH-1:DATA_WIDTH]),
  .pix2     (vert2_data[2*DATA_WIDTH-1:DATA_WIDTH]),
  .win_val  (vert_val                             ),
  .win_rdy  (vert1_rdy                            ),
  .win_sol  (win0_sol                             ),
  .win_eol  (win0_eol                             ),
  .win_sof  (win0_sof                             ),
  .win_eof  (win0_eof                             ),
  .sort_val (                                     ),
  .sort_rdy (hor0_rdy                             ),      
  .sort_data(hor01_data                           ),
  .sort_sol (                                     ),
  .sort_eol (                                     ),
  .sort_sof (                                     ),
  .sort_eof (                                     )
);

median_line_sort#(
  .DATA_WIDTH(DATA_WIDTH)
)hor02(
  .clk      (clk                       ),
  .rst_n    (rst_n                     ), 
  .pix0     (vert0_data[DATA_WIDTH-1:0]),
  .pix1     (vert1_data[DATA_WIDTH-1:0]),
  .pix2     (vert2_data[DATA_WIDTH-1:0]),
  .win_val  (vert_val                  ),
  .win_rdy  (vert2_rdy                 ),
  .win_sol  (win0_sol                  ),
  .win_eol  (win0_eol                  ),
  .win_sof  (win0_sof                  ),
  .win_eof  (win0_eof                  ),
  .sort_val (                          ),      
  .sort_rdy (hor0_rdy                  ),      
  .sort_data(hor02_data                ),
  .sort_sol (                          ),
  .sort_eol (                          ),
  .sort_sof (                          ),
  .sort_eof (                          )
);

// Diagonal sort
median_line_sort#(
  .DATA_WIDTH(DATA_WIDTH)
)diag0(
  .clk      (clk                                    ),
  .rst_n    (rst_n                                  ), 
  .pix2     (hor00_data[  DATA_WIDTH-1:           0]),
  .pix1     (hor01_data[2*DATA_WIDTH-1:  DATA_WIDTH]),
  .pix0     (hor02_data[3*DATA_WIDTH-1:2*DATA_WIDTH]),
  .win_val  (hor_val                                ),
  .win_rdy  (hor0_rdy                               ),
  .win_sol  (win1_sol                               ),
  .win_eol  (win1_eol                               ),
  .win_sof  (win1_sof                               ),
  .win_eof  (win1_eof                               ),
  .sort_val (out_val                                ),      
  .sort_rdy (out_rdy                                ),      
  .sort_data(diag0_data                             ),
  .sort_sol (out_sol                                ),
  .sort_eol (out_eol                                ),
  .sort_sof (out_sof                                ),
  .sort_eof (out_eof                                )
);

endmodule