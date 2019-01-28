
module zybo_top
(
inout [14:0]  DDR_addr            ,
inout [2:0]   DDR_ba              ,
inout         DDR_cas_n           ,
inout         DDR_ck_n            ,
inout         DDR_ck_p            ,
inout         DDR_cke             ,
inout         DDR_cs_n            ,
inout [3:0]   DDR_dm              ,
inout [31:0]  DDR_dq              ,
inout [3:0]   DDR_dqs_n           ,
inout [3:0]   DDR_dqs_p           ,
inout         DDR_odt             ,
inout         DDR_ras_n           ,
inout         DDR_reset_n         ,
inout         DDR_we_n            ,
inout         FIXED_IO_ddr_vrn    ,
inout         FIXED_IO_ddr_vrp    ,
inout [53:0]  FIXED_IO_mio        ,
inout         FIXED_IO_ps_clk     ,
inout         FIXED_IO_ps_porb    ,
inout         FIXED_IO_ps_srstb   ,
inout [1:0]   cam_gpio_tri_io     ,
inout         cam_iic_scl_io      ,
inout         cam_iic_sda_io      ,
input         dphy_clk_lp_n       ,
input         dphy_clk_lp_p       ,
input [1:0]   dphy_data_hs_n      ,
input [1:0]   dphy_data_hs_p      ,
input [1:0]   dphy_data_lp_n      ,
input [1:0]   dphy_data_lp_p      ,
input         dphy_hs_clock_clk_n ,
input         dphy_hs_clock_clk_p ,
output        hdmi_tx_clk_n       ,
output        hdmi_tx_clk_p       ,
output [2:0]  hdmi_tx_data_n      ,
output [2:0]  hdmi_tx_data_p      ,
input         cfg_negate     
);
  
wire [23:0] AXI_Stream_Master_tdata ;
wire        AXI_Stream_Master_tlast ;
wire        AXI_Stream_Master_tready;
wire [0:0]  AXI_Stream_Master_tuser ;
wire        AXI_Stream_Master_tvalid;
wire [0:0]  rst_n              ;
wire        s_axil_clk_50      ;
wire[23:0]  video_in_tdata     ;
wire        video_in_tlast     ;
wire        video_in_tready    ;
wire        video_in_tuser     ;
wire        video_in_tvalid    ;  
  
wire        s_frm_val ;  
wire        s_frm_rdy ;  
wire [23:0] s_frm_data;  
wire        s_frm_sof ;  
wire        s_frm_eof ;  
wire        s_frm_sol ;  
wire        s_frm_eol ;

wire cfg_negate;

system_wrapper i_system_wrapper
(
.DDR_addr                (DDR_addr               ),//inout [14:0]  
.DDR_ba                  (DDR_ba                 ),//inout [2:0]   
.DDR_cas_n               (DDR_cas_n              ),//inout         
.DDR_ck_n                (DDR_ck_n               ),//inout         
.DDR_ck_p                (DDR_ck_p               ),//inout         
.DDR_cke                 (DDR_cke                ),//inout         
.DDR_cs_n                (DDR_cs_n               ),//inout         
.DDR_dm                  (DDR_dm                 ),//inout [3:0]   
.DDR_dq                  (DDR_dq                 ),//inout [31:0]  
.DDR_dqs_n               (DDR_dqs_n              ),//inout [3:0]   
.DDR_dqs_p               (DDR_dqs_p              ),//inout [3:0]   
.DDR_odt                 (DDR_odt                ),//inout         
.DDR_ras_n               (DDR_ras_n              ),//inout         
.DDR_reset_n             (DDR_reset_n            ),//inout         
.DDR_we_n                (DDR_we_n               ),//inout         
.FIXED_IO_ddr_vrn        (FIXED_IO_ddr_vrn       ),//inout         
.FIXED_IO_ddr_vrp        (FIXED_IO_ddr_vrp       ),//inout         
.FIXED_IO_mio            (FIXED_IO_mio           ),//inout [53:0]  
.FIXED_IO_ps_clk         (FIXED_IO_ps_clk        ),//inout         
.FIXED_IO_ps_porb        (FIXED_IO_ps_porb       ),//inout         
.FIXED_IO_ps_srstb       (FIXED_IO_ps_srstb      ),//inout         
.cam_gpio_tri_io         (cam_gpio_tri_io        ),//inout [0:0]   
.cam_iic_scl_io          (cam_iic_scl_io         ),//inout         
.cam_iic_sda_io          (cam_iic_sda_io         ),//inout         
.dphy_clk_lp_n           (dphy_clk_lp_n          ),//input         
.dphy_clk_lp_p           (dphy_clk_lp_p          ),//input         
.dphy_data_hs_n          (dphy_data_hs_n         ),//input [1:0]   
.dphy_data_hs_p          (dphy_data_hs_p         ),//input [1:0]   
.dphy_data_lp_n          (dphy_data_lp_n         ),//input [1:0]   
.dphy_data_lp_p          (dphy_data_lp_p         ),//input [1:0]   
.dphy_hs_clock_clk_n     (dphy_hs_clock_clk_n    ),//input         
.dphy_hs_clock_clk_p     (dphy_hs_clock_clk_p    ),//input         
.hdmi_tx_clk_n           (hdmi_tx_clk_n          ),//output        
.hdmi_tx_clk_p           (hdmi_tx_clk_p          ),//output        
.hdmi_tx_data_n          (hdmi_tx_data_n         ),//output [2:0]  
.hdmi_tx_data_p          (hdmi_tx_data_p         ),//output [2:0]  
.AXI_Stream_Master_tdata (AXI_Stream_Master_tdata ),//output [39:0] 
.AXI_Stream_Master_tlast (AXI_Stream_Master_tlast ),//output        
.AXI_Stream_Master_tready(AXI_Stream_Master_tready),//input         
.AXI_Stream_Master_tuser (AXI_Stream_Master_tuser ),//output [0:0]  
.AXI_Stream_Master_tvalid(AXI_Stream_Master_tvalid),//output   
.rst_n                   (rst_n                  ),//output [0:0]  
.clk                     (clk                    ),//output        
.S_AXIS_S2MM_tdata       (video_in_tdata         ),//input [23:0]  
.S_AXIS_S2MM_tlast       (video_in_tlast         ),//input         
.S_AXIS_S2MM_tready      (video_in_tready        ),//output        
.S_AXIS_S2MM_tuser       (video_in_tuser         ),//input         
.S_AXIS_S2MM_tvalid      (video_in_tvalid        ),//input  
.S_AXIS_S2MM_tkeep       (3'b111                 )       
  );
  
  
axi_stream2frame#(
  .DATA_WIDTH(24)
)interface_conv(
  .clk                (clk                     ), // Syste clock
  .rst_n              (rst_n                   ), // Asynchronous reset active low
  .cfg_img_w          (11'd1920                ), // Image width
  .m_axi_stream_tdata (AXI_Stream_Master_tdata ), // Start of frame 
  .m_axi_stream_tlast (AXI_Stream_Master_tlast ), // Slave has valid data to be transferred
  .m_axi_stream_tready(AXI_Stream_Master_tready), // End of frame
  .m_axi_stream_tuser (AXI_Stream_Master_tuser ), // Data transferred from slave to master
  .m_axi_stream_tvalid(AXI_Stream_Master_tvalid), // Master is ready to receive the data
  .s_frm_val          (s_frm_val               ), // Master has valid data to be transferred
  .s_frm_rdy          (s_frm_rdy               ), // Slave is ready to receive the data
  .s_frm_data         (s_frm_data              ), // Data transferred from master to slave
  .s_frm_sof          (s_frm_sof               ), // Start of Frame
  .s_frm_eof          (s_frm_eof               ), // End of Frame
  .s_frm_sol          (s_frm_sol               ), // Start of Line
  .s_frm_eol          (s_frm_eol               )  // End of Line
);


inv_image inv
(
  .clk       (clk            ), // Syste clock
  .rst_n     (rst_n          ), // Asynchronous reset active low
  .cfg_img_w (11'd1920       ), // Image width
  .m_frm_val (s_frm_val      ), // Master has valid data to be transferred
  .m_frm_rdy (s_frm_rdy      ), // Slave is ready to receive the data
  .m_frm_data(s_frm_data     ), // Data transferred from master to slave
  .m_frm_sof (s_frm_sof      ), // Start of Frame
  .m_frm_eof (s_frm_eof      ), // End of Frame
  .m_frm_sol (s_frm_sol      ), // Start of Line
  .m_frm_eol (s_frm_eol      ), // End of Line
  .s_frm_val (video_in_tvalid), // Master has valid data to be transferred
  .s_frm_rdy (video_in_tready), // Slave is ready to receive the data
  .s_frm_data(video_in_tdata ), // Data transferred from master to slave
  .s_frm_sof (video_in_tuser ), // Start of Frame
  .s_frm_eof (video_in_tlast ), // End of Frame
  .s_frm_sol (), // Start of Line
  .s_frm_eol (),  // End of Line
  .cfg_negate(cfg_negate)
);

endmodule

