
module zybo_top#(
  parameter DATA_WIDTH = 8, 
  parameter USEDW_BITS = 11
)
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
output [2:0]  hdmi_tx_data_p      
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


wire        laplace_lb_fifo_push      ;
wire  [47:0]laplace_lb_fifo_pushdata  ;
wire        laplace_lb_fifo_full      ;
wire        laplace_lb_fifo_pop       ;
wire  [47:0]laplace_lb_fifo_popdata   ;
wire        laplace_lb_fifo_empty     ;
wire [10:0] laplace_lb_fifo_usedwords ;
wire        smooth_lb_fifo_push      ;
wire  [47:0]smooth_lb_fifo_pushdata  ;
wire        smooth_lb_fifo_full      ;
wire        smooth_lb_fifo_pop       ;
wire  [47:0]smooth_lb_fifo_popdata   ;
wire        smooth_lb_fifo_empty     ;
wire [10:0] smooth_lb_fifo_usedwords ;
wire        sharp_lb_fifo_push      ;
wire  [47:0]sharp_lb_fifo_pushdata  ;
wire        sharp_lb_fifo_full      ;
wire        sharp_lb_fifo_pop       ;
wire  [47:0]sharp_lb_fifo_popdata   ;
wire        sharp_lb_fifo_empty     ;
wire [10:0] sharp_lb_fifo_usedwords ;
wire        median_lb_fifo_push      ;
wire  [47:0]median_lb_fifo_pushdata  ;
wire        median_lb_fifo_full      ;
wire        median_lb_fifo_pop       ;
wire  [47:0]median_lb_fifo_popdata   ;
wire        median_lb_fifo_empty     ;
wire [10:0] median_lb_fifo_usedwords ;
wire        pix_corr_lb_fifo_push      ;
wire  [47:0]pix_corr_lb_fifo_pushdata  ;
wire        pix_corr_lb_fifo_full      ;
wire        pix_corr_lb_fifo_pop       ;
wire  [47:0]pix_corr_lb_fifo_popdata   ;
wire        pix_corr_lb_fifo_empty     ;
wire [10:0] pix_corr_lb_fifo_usedwords ;

wire       frm_val ; 
wire       frm_rdy ;
wire [23:0]frm_data;
wire       frm_sof ;
wire       frm_eof ;
wire       frm_sol ;
wire       frm_eol ;

wire       test_frm_val ; 
wire       test_frm_rdy ;
wire [23:0]test_frm_data;
wire       test_frm_sof ;
wire       test_frm_eof ;
wire       test_frm_sol ;
wire       test_frm_eol ;

wire clk;

wire [23:0] S_AXIS_S2MM_tdata ;
wire        S_AXIS_S2MM_tlast ;
wire        S_AXIS_S2MM_tready;
wire [0:0]  S_AXIS_S2MM_tuser ;
wire        S_AXIS_S2MM_tvalid;


wire [31:0] APB_M_paddr  ;
wire        APB_M_penable;
wire [31:0] APB_M_prdata ;
wire  [0:0] APB_M_pready ;
wire  [0:0] APB_M_psel   ;
wire  [0:0] APB_M_pslverr;
wire [31:0] APB_M_pwdata ;
wire        APB_M_pwrite ;


wire [15:0] cfg_img_width      ;   // Image width
wire [15:0] cfg_img_height     ;   // Image height
wire [10:0] cfg_stride         ;   // Stride
wire [31:0] cfg_map0_ba        ;   // Map 0 base address
wire [31:0] cfg_map1_ba        ;   // Map 1 base address
wire [31:0] cfg_map2_ba        ;   // Map 2 base address
wire [0:0] cfg_map0_en         ;   // Map 0 enable
wire [0:0] cfg_map1_en         ;   // Map 1 enable
wire [0:0] cfg_map2_en         ;   // Map 2 enaBle
wire [7:0] cfg_max_burst_length;   // Maximum burst length
wire [0:0] cfg_reverse_byte    ;   // Data in big/little endian
wire [0:0] cfg_blk_en          ;   // Block enable
wire [0:0] cfg_int_ack         ;   // Interrupt acknowledge
wire [7:0] cfg_pix_corr_sel    ;   // Pixel correction input select
wire [7:0] cfg_sharp_sel       ;   // Image sharpening select
wire [7:0] cfg_median_sel      ;   // Median filter input select
wire [7:0] cfg_smooth_sel      ;   // Smooth filter input select
wire [7:0] cfg_laplace_sel     ;   // Laplace filter input select
wire [7:0] cfg_output_sel      ;   // Output selection
wire [7:0] cfg_pix_corr_thr    ;   // Pixel correction threshold
wire [7:0] cfg_sharp_coef      ;   // Sharpening filter coeficient
wire [0:0] cfg_test_mode_en    ;
wire [23:0] cfg_bkg;
wire        sw_rst;         

wire [31:0]S00_AXI_araddr ;
wire [1 :0]S00_AXI_arburst;
wire [3 :0]S00_AXI_arcache;
wire [7 :0]S00_AXI_arlen  ;
wire [0 :0]S00_AXI_arlock ;
wire [2 :0]S00_AXI_arprot ;
wire [3 :0]S00_AXI_arqos  ;
wire       S00_AXI_arready;
wire [2:0] S00_AXI_arsize ;
wire       S00_AXI_arvalid;
wire [31:0]S00_AXI_awaddrc;
wire [1 :0]S00_AXI_awburst;
wire [3 :0]S00_AXI_awcache;
wire [7 :0]S00_AXI_awlen  ;
wire [0 :0]S00_AXI_awlock ;
wire [2 :0]S00_AXI_awprot ;
wire [3 :0]S00_AXI_awqos  ;
wire       S00_AXI_awready;
wire [2 :0]S00_AXI_awsize ;
wire       S00_AXI_awvalid;
wire       S00_AXI_bready ;
wire [1:0] S00_AXI_bresp  ;
wire       S00_AXI_bvalid ;
wire [63:0]S00_AXI_rdata  ;
wire       S00_AXI_rlast  ;
wire       S00_AXI_rready ;
wire [1:0] S00_AXI_rresp  ;
wire       S00_AXI_rvalid ;
wire[31:0] S00_AXI_wdata  ;
wire       S00_AXI_wlast  ;
wire       S00_AXI_wready ;
wire[3:0]  S00_AXI_wstrb  ;
wire       S00_AXI_wvalid ;
wire[31:0] S00_AXI_awaddr;

wire [31:0]S01_AXI_araddr;
wire [1:0] S01_AXI_arburst;
wire [3:0] S01_AXI_arcache;
wire [1:0] S01_AXI_arid;
wire [7:0] S01_AXI_arlen;
wire [0:0] S01_AXI_arlock;
wire [2:0] S01_AXI_arprot;
wire [3:0] S01_AXI_arqos;
wire       S01_AXI_arready;
wire [2:0] S01_AXI_arsize;
wire       S01_AXI_arvalid;
wire [31:0]S01_AXI_awaddr;
wire [1:0] S01_AXI_awburst;
wire [3:0] S01_AXI_awcache;
wire [1:0] S01_AXI_awid;
wire [7:0] S01_AXI_awlen;
wire [0:0] S01_AXI_awlock;
wire [2:0] S01_AXI_awprot;
wire [3:0] S01_AXI_awqos;
wire       S01_AXI_awready;
wire [2:0] S01_AXI_awsize;
wire       S01_AXI_awvalid;
wire  [1:0]S01_AXI_bid;
wire       S01_AXI_bready;
wire  [1:0]S01_AXI_bresp;
wire       S01_AXI_bvalid;
wire [63:0]S01_AXI_rdata;
wire [1:0] S01_AXI_rid;
wire       S01_AXI_rlast;
wire       S01_AXI_rready;
wire [1:0] S01_AXI_rresp;
wire       S01_AXI_rvalid;
wire [31:0]S01_AXI_wdata;
wire       S01_AXI_wlast;
wire       S01_AXI_wready;
wire [3:0] S01_AXI_wstrb;
wire       S01_AXI_wvalid;

wire [31:0]S02_AXI_araddr;
wire [1:0] S02_AXI_arburst;
wire [3:0] S02_AXI_arcache;
wire [1:0] S02_AXI_arid;
wire [7:0] S02_AXI_arlen;
wire [0:0] S02_AXI_arlock;
wire [2:0] S02_AXI_arprot;
wire [3:0] S02_AXI_arqos;
wire       S02_AXI_arready;
wire [2:0] S02_AXI_arsize;
wire       S02_AXI_arvalid;
wire [31:0]S02_AXI_awaddr;
wire [1:0] S02_AXI_awburst;
wire [3:0] S02_AXI_awcache;
wire [1:0] S02_AXI_awid;
wire [7:0] S02_AXI_awlen;
wire [0:0] S02_AXI_awlock;
wire [2:0] S02_AXI_awprot;
wire [3:0] S02_AXI_awqos;
wire       S02_AXI_awready;
wire [2:0] S02_AXI_awsize;
wire       S02_AXI_awvalid;
wire  [1:0]S02_AXI_bid;
wire       S02_AXI_bready;
wire  [1:0]S02_AXI_bresp;
wire       S02_AXI_bvalid;
wire [63:0]S02_AXI_rdata;
wire [1:0] S02_AXI_rid;
wire       S02_AXI_rlast;
wire       S02_AXI_rready;
wire  [1:0]S02_AXI_rresp;
wire       S02_AXI_rvalid;
wire [31:0]S02_AXI_wdata;
wire       S02_AXI_wlast;
wire       S02_AXI_wready;
wire [3:0] S02_AXI_wstrb;
wire       S02_AXI_wvalid; 

wire         fifo_ch0_empty  ;
wire         fifo_ch1_empty  ;
wire         fifo_ch2_empty  ;
wire [63:0]  fifo_data0      ;
wire [63:0]  fifo_data1      ;
wire [63:0]  fifo_data2      ;
wire         fifo_ch0_pop    ;
wire         fifo_ch1_pop    ;
wire         fifo_ch2_pop    ;
wire [63:0]  fifo_ch0_data   ;
wire [63:0]  fifo_ch1_data   ;
wire [63:0]  fifo_ch2_data   ;
wire [10:0]  fifo_words_used0;
wire [10:0]  fifo_words_used1;
wire [10:0]  fifo_words_used2;
wire         fifo_push0      ;
wire         fifo_push1      ;
wire         fifo_push2      ;
wire         fifo_full0      ;
wire         fifo_full1      ;
wire         fifo_full2      ;
 
wire                   int_fifo_push        ; // Master pushes data into FIFO
wire [3*DATA_WIDTH-1:0]int_fifo_pushdata    ; // Data stored into FIFO
wire                   int_fifo_full        ; // FIFO full
wire                   int_fifo_almost_full ; // FIFO full
wire                   int_fifo_pop         ; // Master pops data from FIFO
wire [3*DATA_WIDTH-1:0]int_fifo_popdata     ; // Data retrived from FIFO
wire                   int_fifo_empty       ; // FIFO empty
wire                   int_fifo_almost_empty; // FIFO empty

wire        filt_val ; // Master has valid data to be transferred      
wire        filt_rdy ; // Slave is ready to receive the data           
wire [23:0] filt_data; // Data transferred from master to slave        
wire        filt_sof ; // Start of Frame                               
wire        filt_eof ; // End of Frame                                 
wire        filt_sol ; // Start of Line                                
wire        filt_eol ; // End of Line         

wire laplace_lb_fifo_clr ;
wire sharp_lb_fifo_clr   ;
wire smooth_lb_fifo_clr  ;
wire median_lb_fifo_clr  ;
wire pix_corr_lb_fifo_clr;

               
assign S00_AXI_arcache = 4'd0;
assign S00_AXI_arlock = 1'd0; 
assign S00_AXI_arprot = 3'd0;
assign S00_AXI_arqos = 3'd0  ;
assign S00_AXI_awaddrc = 32'd0;
assign S00_AXI_awburst = 2'd0;
assign S00_AXI_awcache = 4'b0;
assign S00_AXI_awlen  = 8'b0;
assign S00_AXI_awlock = 1'd0;
assign S00_AXI_awprot = 3'd0;
assign S00_AXI_awqos  = 4'd0;
assign S00_AXI_awready= 1'd0;
assign S00_AXI_awsize = 3'd0;
assign S00_AXI_awvalid= 3'd0;
assign S00_AXI_bready = 1'd0;
assign S00_AXI_wdata = 32'd0;
assign S00_AXI_wlast = 1'd0;
assign S00_AXI_wstrb = 4'd0;
assign S00_AXI_wvalid= 1'd0 ;
assign S00_AXI_awaddr = 32'd0;

assign S01_AXI_arcache = 4'd0;
assign S01_AXI_arlock = 1'd0; 
assign S01_AXI_arprot = 3'd0;
assign S01_AXI_arqos = 3'd0  ;
assign S01_AXI_awburst = 2'd0;
assign S01_AXI_awcache = 4'b0;
assign S01_AXI_awlen  = 8'b0;
assign S01_AXI_awlock = 1'd0;
assign S01_AXI_awprot = 3'd0;
assign S01_AXI_awqos  = 4'd0;
assign S01_AXI_awready= 1'd0;
assign S01_AXI_awsize = 3'd0;
assign S01_AXI_awvalid= 3'd0;
assign S01_AXI_bready = 1'd0;
assign S01_AXI_wdata = 32'd0;
assign S01_AXI_wlast = 1'd0;
assign S01_AXI_wstrb = 4'd0;
assign S01_AXI_wvalid= 1'd0 ;

assign S02_AXI_arcache = 4'd0;
assign S02_AXI_arlock = 1'd0; 
assign S02_AXI_arprot = 3'd0;
assign S02_AXI_arqos = 3'd0 ;
assign S02_AXI_awburst = 2'd0;
assign S02_AXI_awcache = 4'b0;
assign S02_AXI_awlen  = 8'b0;
assign S02_AXI_awlock = 1'd0;
assign S02_AXI_awprot = 3'd0;
assign S02_AXI_awqos  = 4'd0;
assign S02_AXI_awready= 1'd0;
assign S02_AXI_awsize = 3'd0;
assign S02_AXI_awvalid= 3'd0;
assign S02_AXI_bready = 1'd0;
assign S02_AXI_wdata = 32'd0;
assign S02_AXI_wlast = 1'd0;
assign S02_AXI_wstrb = 4'd0;
assign S02_AXI_wvalid= 1'd0 ;

system_wrapper i_system_wrapper
(
  .APB_M_paddr              (APB_M_paddr              ),
  .APB_M_penable            (APB_M_penable            ),
  .APB_M_prdata             (APB_M_prdata             ),
  .APB_M_pready             (APB_M_pready             ),
  .APB_M_psel               (APB_M_psel               ),
  .APB_M_pslverr            (APB_M_pslverr            ),
  .APB_M_pwdata             (APB_M_pwdata             ),
  .APB_M_pwrite             (APB_M_pwrite             ),
  .DDR_addr                 (DDR_addr                 ),
  .DDR_ba                   (DDR_ba                   ),
  .DDR_cas_n                (DDR_cas_n                ),
  .DDR_ck_n                 (DDR_ck_n                 ),
  .DDR_ck_p                 (DDR_ck_p                 ),
  .DDR_cke                  (DDR_cke                  ),
  .DDR_cs_n                 (DDR_cs_n                 ),
  .DDR_dm                   (DDR_dm                   ),
  .DDR_dq                   (DDR_dq                   ),
  .DDR_dqs_n                (DDR_dqs_n                ),
  .DDR_dqs_p                (DDR_dqs_p                ),
  .DDR_odt                  (DDR_odt                  ),
  .DDR_ras_n                (DDR_ras_n                ),
  .DDR_reset_n              (DDR_reset_n              ),
  .DDR_we_n                 (DDR_we_n                 ),
  .FIFO_READ_empty          (laplace_lb_fifo_empty    ),
  .FIFO_READ_rd_data        (laplace_lb_fifo_popdata  ),
  .FIFO_READ_rd_en          (laplace_lb_fifo_pop      ),
  .FIFO_WRITE_full          (laplace_lb_fifo_full     ),
  .FIFO_WRITE_wr_data       (laplace_lb_fifo_pushdata ),
  .FIFO_WRITE_wr_en         (laplace_lb_fifo_push     ),
  .FIFO_READ_1_empty        (sharp_lb_fifo_empty      ),
  .FIFO_READ_1_rd_data      (sharp_lb_fifo_popdata    ),
  .FIFO_READ_1_rd_en        (sharp_lb_fifo_pop        ),
  .FIFO_WRITE_1_full        (sharp_lb_fifo_full       ),
  .FIFO_WRITE_1_wr_data     (sharp_lb_fifo_pushdata   ),
  .FIFO_WRITE_1_wr_en       (sharp_lb_fifo_push       ),
  .FIFO_READ_2_empty        (smooth_lb_fifo_empty     ),
  .FIFO_READ_2_rd_data      (smooth_lb_fifo_popdata   ),
  .FIFO_READ_2_rd_en        (smooth_lb_fifo_pop       ),
  .FIFO_WRITE_2_full        (smooth_lb_fifo_full      ),
  .FIFO_WRITE_2_wr_data     (smooth_lb_fifo_pushdata  ),
  .FIFO_WRITE_2_wr_en       (smooth_lb_fifo_push      ),
  .FIFO_READ_3_empty        (median_lb_fifo_empty     ),
  .FIFO_READ_3_rd_data      (median_lb_fifo_popdata   ),
  .FIFO_READ_3_rd_en        (median_lb_fifo_pop       ),
  .FIFO_WRITE_3_full        (median_lb_fifo_full      ),
  .FIFO_WRITE_3_wr_data     (median_lb_fifo_pushdata  ),
  .FIFO_WRITE_3_wr_en       (median_lb_fifo_push      ),
  .FIFO_READ_4_empty        (pix_corr_lb_fifo_empty   ),
  .FIFO_READ_4_rd_data      (pix_corr_lb_fifo_popdata ),
  .FIFO_READ_4_rd_en        (pix_corr_lb_fifo_pop     ),
  .FIFO_WRITE_4_full        (pix_corr_lb_fifo_full    ),
  .FIFO_WRITE_4_wr_data     (pix_corr_lb_fifo_pushdata),
  .FIFO_WRITE_4_wr_en       (pix_corr_lb_fifo_push    ),
  .FIFO_READ_5_empty        (fifo_ch0_empty           ),
  .FIFO_READ_5_rd_data      (fifo_ch0_popdata         ),
  .FIFO_READ_5_rd_en        (fifo_ch0_pop             ),
  .FIFO_WRITE_5_full        (fifo_ch0_full            ),
  .FIFO_WRITE_5_wr_data     (fifo_ch0_pushdata        ),
  .FIFO_WRITE_5_wr_en       (fifo_ch0_push            ),
  .FIFO_READ_6_empty        (fifo_ch1_empty           ),
  .FIFO_READ_6_rd_data      (fifo_ch1_popdata         ),
  .FIFO_READ_6_rd_en        (fifo_ch1_pop             ),
  .FIFO_WRITE_6_full        (fifo_ch1_full            ),
  .FIFO_WRITE_6_wr_data     (fifo_ch1_pushdata        ),
  .FIFO_WRITE_6_wr_en       (fifo_ch1_push            ),
  .FIFO_READ_7_empty        (fifo_ch2_empty           ),
  .FIFO_READ_7_rd_data      (fifo_ch2_popdata         ),
  .FIFO_READ_7_rd_en        (fifo_ch2_pop             ),
  .FIFO_WRITE_7_full        (fifo_ch2_full            ),
  .FIFO_WRITE_7_wr_data     (fifo_ch2_pushdata        ),
  .FIFO_WRITE_7_wr_en       (fifo_ch2_push            ),
  .FIXED_IO_ddr_vrn         (FIXED_IO_ddr_vrn         ),
  .FIXED_IO_ddr_vrp         (FIXED_IO_ddr_vrp         ),
  .FIXED_IO_mio             (FIXED_IO_mio             ),
  .FIXED_IO_ps_clk          (FIXED_IO_ps_clk          ),
  .FIXED_IO_ps_porb         (FIXED_IO_ps_porb         ),
  .FIXED_IO_ps_srstb        (FIXED_IO_ps_srstb        ),
  .M_AXIS_MM2S_tdata        (AXI_Stream_Master_tdata  ), 
  .M_AXIS_MM2S_tkeep        (                         ), 
  .M_AXIS_MM2S_tlast        (AXI_Stream_Master_tlast  ), 
  .M_AXIS_MM2S_tready       (AXI_Stream_Master_tready ),
  .M_AXIS_MM2S_tuser        (AXI_Stream_Master_tuser  ),
  .M_AXIS_MM2S_tvalid       (AXI_Stream_Master_tvalid ),
  .S_AXIS_S2MM_tdata        (S_AXIS_S2MM_tdata        ),
  .S_AXIS_S2MM_tkeep        (3'b111                   ),
  .S_AXIS_S2MM_tlast        (S_AXIS_S2MM_tlast        ),
  .S_AXIS_S2MM_tready       (S_AXIS_S2MM_tready       ),
  .S_AXIS_S2MM_tuser        (S_AXIS_S2MM_tuser        ),
  .S_AXIS_S2MM_tvalid       (S_AXIS_S2MM_tvalid       ),
  .axi_clk_0                (clk                      ),
  .axi_clk_1                (clk                      ),
  .axi_clk_2                (clk                      ),
  .axi_rst_0                (rst_n                    ),
  .axi_rst_1                (rst_n                    ),
  .axi_rst_2                (rst_n                    ),
  .cam_gpio_tri_io          (cam_gpio_tri_io          ),
  .cam_iic_scl_io           (cam_iic_scl_io           ),
  .cam_iic_sda_io           (cam_iic_sda_io           ),
  .clk                      (clk                      ),
  .clk_1                    (clk                      ),
  .clk_2                    (clk                      ),
  .clk_3                    (clk                      ),
  .clk_4                    (clk                      ),
  .clk_5                    (clk                      ),
  .clk_axi                  (clk_axi                  ),
  .data_count               (laplace_lb_fifo_usedwords),
  .data_count_1             (sharp_lb_fifo_usedwords  ),
  .data_count_2             (smooth_lb_fifo_usedwords ),
  .data_count_3             (median_lb_fifo_usedwords ),
  .data_count_4             (pix_corr_lb_fifo_usedwords),
  .data_count_5             (fifo_ch0_usedwords       ),
  .data_count_6             (fifo_ch1_usedwords       ),
  .data_count_7             (fifo_ch2_usedwords       ),
  .dphy_clk_lp_n            (dphy_clk_lp_n            ),
  .dphy_clk_lp_p            (dphy_clk_lp_p            ),
  .dphy_data_hs_n           (dphy_data_hs_n           ),
  .dphy_data_hs_p           (dphy_data_hs_p           ),
  .dphy_data_lp_n           (dphy_data_lp_n           ),
  .dphy_data_lp_p           (dphy_data_lp_p           ),
  .dphy_hs_clock_clk_n      (dphy_hs_clock_clk_n      ),
  .dphy_hs_clock_clk_p      (dphy_hs_clock_clk_p      ),
  .hdmi_tx_clk_n            (hdmi_tx_clk_n            ),
  .hdmi_tx_clk_p            (hdmi_tx_clk_p            ),
  .hdmi_tx_data_n           (hdmi_tx_data_n           ),
  .hdmi_tx_data_p           (hdmi_tx_data_p           ),
  .rst                      (~rst_n | sharp_lb_fifo_clr   ),
  .rst_1                    (~rst_n | laplace_lb_fifo_clr ),
  .rst_2                    (~rst_n | smooth_lb_fifo_clr  ),
  .rst_3                    (~rst_n | median_lb_fifo_clr  ),
  .rst_4                    (~rst_n | pix_corr_lb_fifo_clr),
  .rst_n                    (rst_n                    ),
  .S00_AXI_araddr           (S00_AXI_araddr           ),
  .S00_AXI_arburst          (S00_AXI_arburst          ),
  .S00_AXI_arcache          (S00_AXI_arcache          ),
  .S00_AXI_arlen            (S00_AXI_arlen            ),
  .S00_AXI_arlock           (S00_AXI_arlock           ),
  .S00_AXI_arprot           (S00_AXI_arprot           ),
  .S00_AXI_arqos            (S00_AXI_arqos            ),
  .S00_AXI_arready          (S00_AXI_arready          ),
  .S00_AXI_arsize           (S00_AXI_arsize           ),
  .S00_AXI_arvalid          (S00_AXI_arvalid          ),
  .S00_AXI_awaddr           (S00_AXI_awaddr           ),
  .S00_AXI_awburst          (S00_AXI_awburst          ),
  .S00_AXI_awcache          (S00_AXI_awcache          ),
  .S00_AXI_awlen            (S00_AXI_awlen            ),
  .S00_AXI_awlock           (S00_AXI_awlock           ),
  .S00_AXI_awprot           (S00_AXI_awprot           ),
  .S00_AXI_awqos            (S00_AXI_awqos            ),
  .S00_AXI_awready          (S00_AXI_awready          ),
  .S00_AXI_awsize           (S00_AXI_awsize           ),
  .S00_AXI_awvalid          (S00_AXI_awvalid          ),
  .S00_AXI_bready           (S00_AXI_bready           ),
  .S00_AXI_bresp            (S00_AXI_bresp            ),
  .S00_AXI_bvalid           (S00_AXI_bvalid           ),
  .S00_AXI_rdata            (S00_AXI_rdata            ),
  .S00_AXI_rlast            (S00_AXI_rlast            ),
  .S00_AXI_rready           (S00_AXI_rready           ),
  .S00_AXI_rresp            (S00_AXI_rresp            ),
  .S00_AXI_rvalid           (S00_AXI_rvalid           ),
  .S00_AXI_wdata            (S00_AXI_wdata            ),
  .S00_AXI_wlast            (S00_AXI_wlast            ),
  .S00_AXI_wready           (S00_AXI_wready           ),
  .S00_AXI_wstrb            (S00_AXI_wstrb            ),
  .S00_AXI_wvalid           (S00_AXI_wvalid           ), 
  .S01_AXI_araddr           (S01_AXI_araddr           ),
  .S01_AXI_arburst          (S01_AXI_arburst          ),
  .S01_AXI_arcache          (S01_AXI_arcache          ),
  .S01_AXI_arid             (S01_AXI_arid             ),
  .S01_AXI_arlen            (S01_AXI_arlen            ),
  .S01_AXI_arlock           (S01_AXI_arlock           ),
  .S01_AXI_arprot           (S01_AXI_arprot           ),
  .S01_AXI_arqos            (S01_AXI_arqos            ),
  .S01_AXI_arready          (S01_AXI_arready          ),
  .S01_AXI_arsize           (S01_AXI_arsize           ),
  .S01_AXI_arvalid          (S01_AXI_arvalid          ),
  .S01_AXI_awaddr           (S01_AXI_awaddr           ),
  .S01_AXI_awburst          (S01_AXI_awburst          ),
  .S01_AXI_awcache          (S01_AXI_awcache          ),
  .S01_AXI_awid             (S01_AXI_awid             ),
  .S01_AXI_awlen            (S01_AXI_awlen            ),
  .S01_AXI_awlock           (S01_AXI_awlock           ),
  .S01_AXI_awprot           (S01_AXI_awprot           ),
  .S01_AXI_awqos            (S01_AXI_awqos            ),
  .S01_AXI_awready          (S01_AXI_awready          ),
  .S01_AXI_awsize           (S01_AXI_awsize           ),
  .S01_AXI_awvalid          (S01_AXI_awvalid          ),
  .S01_AXI_bid              (S01_AXI_bid              ),
  .S01_AXI_bready           (S01_AXI_bready           ),
  .S01_AXI_bresp            (S01_AXI_bresp            ),
  .S01_AXI_bvalid           (S01_AXI_bvalid           ),
  .S01_AXI_rdata            (S01_AXI_rdata            ),
  .S01_AXI_rid              (S01_AXI_rid              ),
  .S01_AXI_rlast            (S01_AXI_rlast            ),
  .S01_AXI_rready           (S01_AXI_rready           ),
  .S01_AXI_rresp            (S01_AXI_rresp            ),
  .S01_AXI_rvalid           (S01_AXI_rvalid           ),
  .S01_AXI_wdata            (S01_AXI_wdata            ),
  .S01_AXI_wlast            (S01_AXI_wlast            ),
  .S01_AXI_wready           (S01_AXI_wready           ),
  .S01_AXI_wstrb            (S01_AXI_wstrb            ),
  .S01_AXI_wvalid           (S01_AXI_wvalid           ),
  .S02_AXI_araddr           (S02_AXI_araddr           ),
  .S02_AXI_arburst          (S02_AXI_arburst          ),
  .S02_AXI_arcache          (S02_AXI_arcache          ),
  .S02_AXI_arid             (S02_AXI_arid             ),
  .S02_AXI_arlen            (S02_AXI_arlen            ),
  .S02_AXI_arlock           (S02_AXI_arlock           ),
  .S02_AXI_arprot           (S02_AXI_arprot           ),
  .S02_AXI_arqos            (S02_AXI_arqos            ),
  .S02_AXI_arready          (S02_AXI_arready          ),
  .S02_AXI_arsize           (S02_AXI_arsize           ),
  .S02_AXI_arvalid          (S02_AXI_arvalid          ),
  .S02_AXI_awaddr           (S02_AXI_awaddr           ),
  .S02_AXI_awburst          (S02_AXI_awburst          ),
  .S02_AXI_awcache          (S02_AXI_awcache          ),
  .S02_AXI_awid             (S02_AXI_awid             ),
  .S02_AXI_awlen            (S02_AXI_awlen            ),
  .S02_AXI_awlock           (S02_AXI_awlock           ),
  .S02_AXI_awprot           (S02_AXI_awprot           ),
  .S02_AXI_awqos            (S02_AXI_awqos            ),
  .S02_AXI_awready          (S02_AXI_awready          ),
  .S02_AXI_awsize           (S02_AXI_awsize           ),
  .S02_AXI_awvalid          (S02_AXI_awvalid          ),
  .S02_AXI_bid              (S02_AXI_bid              ),
  .S02_AXI_bready           (S02_AXI_bready           ),
  .S02_AXI_bresp            (S02_AXI_bresp            ),
  .S02_AXI_bvalid           (S02_AXI_bvalid           ),
  .S02_AXI_rdata            (S02_AXI_rdata            ),
  .S02_AXI_rid              (S02_AXI_rid              ),
  .S02_AXI_rlast            (S02_AXI_rlast            ),
  .S02_AXI_rready           (S02_AXI_rready           ),
  .S02_AXI_rresp            (S02_AXI_rresp            ),
  .S02_AXI_rvalid           (S02_AXI_rvalid           ),
  .S02_AXI_wdata            (S02_AXI_wdata            ),
  .S02_AXI_wlast            (S02_AXI_wlast            ),
  .S02_AXI_wready           (S02_AXI_wready           ),
  .S02_AXI_wstrb            (S02_AXI_wstrb            ),
  .S02_AXI_wvalid           (S02_AXI_wvalid           )
  );
    
IR_FILTERS_regs regs(
    .sw_rst              (                    ),
    .cfg_img_width       (cfg_img_width       ),
    .cfg_img_height      (cfg_img_height      ),
    .cfg_stride          (cfg_stride          ),
    .cfg_map0_ba         (cfg_map0_ba         ),
    .cfg_map1_ba         (cfg_map1_ba         ),
    .cfg_map2_ba         (cfg_map2_ba         ),
    .cfg_map0_en         (cfg_map0_en         ),
    .cfg_map1_en         (cfg_map1_en         ),
    .cfg_map2_en         (cfg_map2_en         ),
    .cfg_max_burst_length(cfg_max_burst_length),
    .cfg_reverse_byte    (cfg_reverse_byte    ),
    .cfg_blk_en          (cfg_blk_en          ),
    .cfg_int_ack         (cfg_int_ack         ),
    .cfg_pix_corr_sel    (cfg_pix_corr_sel    ),
    .cfg_sharp_sel       (cfg_sharp_sel       ),
    .cfg_median_sel      (cfg_median_sel      ),
    .cfg_smooth_sel      (cfg_smooth_sel      ),
    .cfg_laplace_sel     (cfg_laplace_sel     ),
    .cfg_output_sel      (cfg_output_sel      ),
    .cfg_pix_corr_thr    (cfg_pix_corr_thr    ),
    .cfg_sharp_coef      (cfg_sharp_coef      ),
	.cfg_test_mode_en    (cfg_test_mode_en    ),
	.cfg_bkg             (cfg_bkg             ),
    .PCLK                (clk_axi             ),
    .PRESETn             (rst_n               ), 
    .PADDR               (APB_M_paddr[15:0]   ),  
    .PENABLE             (APB_M_penable       ),  
    .PWRITE              (APB_M_pwrite        ),  
    .PWDATA              (APB_M_pwdata        ),  
    .PSEL                (APB_M_psel          ),  
    .PREADY              (APB_M_pready        ),  
    .PRDATA              (APB_M_prdata        ),  
    .PSLVERR             (APB_M_pslverr       )  
); 

 
 
axi_stream2frame#(
  .DATA_WIDTH(3*DATA_WIDTH)
)interface_conv(
  .clk                (clk                     ), // System clock
  .rst_n              (rst_n                   ), // Asynchronous reset active low
  .cfg_img_w          (cfg_img_width[11:0]     ), // Image width
  .cfg_img_h          (cfg_img_height[11:0]    ), // Image height
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


ir_filters_top_1px#(
  .USEDW_BITS   (USEDW_BITS) ,
  .DATA_WIDTH   (DATA_WIDTH)  
)ir_filters(
  .clk                       (clk                       ), // System clock
  .rst_n                     (rst_n                     ), // Asynchronous reset active low
  .sw_rst                    (sw_rst                    ), 
  .cfg_bkg                   (cfg_bkg                   ), 
  .cfg_pix_corr_in_sel       (cfg_pix_corr_sel          ), // Pixel correction input select
  .cfg_smooth_in_sel         (cfg_smooth_sel            ), // Image sharpening select
  .cfg_sharp_in_sel          (cfg_sharp_sel             ), // Median filter input select
  .cfg_laplace_in_sel        (cfg_laplace_sel           ), // Smooth filter input select
  .cfg_median_in_sel         (cfg_median_sel            ), // Laplace filter input select
  .cfg_pix_corr_thr          (cfg_pix_corr_thr          ), // Output selection
  .cfg_sharp_coef            (cfg_sharp_coef            ), // Pixel correction threshold
  .cfg_out_sel               (cfg_output_sel            ),  // Sharpening filter coeficient  
  .frm_val                   (frm_val                   ), // Master has valid data to be transferred
  .frm_rdy                   (frm_rdy                   ), // Slave is ready to receive the data
  .frm_data                  (frm_data                  ), // Data transferred from master to slave
  .frm_sof                   (frm_sof                   ), // Start of Frame
  .frm_eof                   (frm_eof                   ), // End of Frame
  .frm_sol                   (frm_sol                   ), // Start of Line
  .frm_eol                   (frm_eol                   ), // End of Line  
  .filt_val                  (S_AXIS_S2MM_tvalid        ), // Master has valid data to be transferred      
  .filt_rdy                  (S_AXIS_S2MM_tready        ), // Slave is ready to receive the data           
  .filt_data                 (S_AXIS_S2MM_tdata         ), // Data transferred from master to slave        
  .filt_sof                  (S_AXIS_S2MM_tuser         ), // Start of Frame                               
  .filt_eof                  (                          ), // End of Frame                                 
  .filt_sol                  (                          ), // Start of Line                                
  .filt_eol                  (S_AXIS_S2MM_tlast         ), // End of Line                            
  .laplace_lb_fifo_push      (laplace_lb_fifo_push      ), // Master pushes data into FIFO
  .laplace_lb_fifo_pushdata  (laplace_lb_fifo_pushdata  ), // Data stored into FIFO
  .laplace_lb_fifo_full      (laplace_lb_fifo_full      ), // FIFO full
  .laplace_lb_fifo_pop       (laplace_lb_fifo_pop       ), // Master pops data from FIFO
  .laplace_lb_fifo_popdata   (laplace_lb_fifo_popdata   ), // Data retrived from FIFO
  .laplace_lb_fifo_empty     (laplace_lb_fifo_empty     ), // FIFO empty
  .laplace_lb_fifo_usedwords (laplace_lb_fifo_usedwords ), // Used words in FIFO
  .smooth_lb_fifo_push       (smooth_lb_fifo_push       ), // Master pushes data into FIFO
  .smooth_lb_fifo_pushdata   (smooth_lb_fifo_pushdata   ), // Data stored into FIFO
  .smooth_lb_fifo_full       (smooth_lb_fifo_full       ), // FIFO full
  .smooth_lb_fifo_pop        (smooth_lb_fifo_pop        ), // Master pops data from FIFO
  .smooth_lb_fifo_popdata    (smooth_lb_fifo_popdata    ), // Data retrived from FIFO
  .smooth_lb_fifo_empty      (smooth_lb_fifo_empty      ), // FIFO empty
  .smooth_lb_fifo_usedwords  (smooth_lb_fifo_usedwords  ), // Used words in FIFO
  .sharp_lb_fifo_push        (sharp_lb_fifo_push        ), // Master pushes data into FIFO
  .sharp_lb_fifo_pushdata    (sharp_lb_fifo_pushdata    ), // Data stored into FIFO
  .sharp_lb_fifo_full        (sharp_lb_fifo_full        ), // FIFO full
  .sharp_lb_fifo_pop         (sharp_lb_fifo_pop         ), // Master pops data from FIFO
  .sharp_lb_fifo_popdata     (sharp_lb_fifo_popdata     ), // Data retrived from FIFO
  .sharp_lb_fifo_empty       (sharp_lb_fifo_empty       ), // FIFO empty
  .sharp_lb_fifo_usedwords   (sharp_lb_fifo_usedwords   ), // Used words in FIFO
  .median_lb_fifo_push       (median_lb_fifo_push       ), // Master pushes data into FIFO
  .median_lb_fifo_pushdata   (median_lb_fifo_pushdata   ), // Data stored into FIFO
  .median_lb_fifo_full       (median_lb_fifo_full       ), // FIFO full
  .median_lb_fifo_pop        (median_lb_fifo_pop        ), // Master pops data from FIFO
  .median_lb_fifo_popdata    (median_lb_fifo_popdata    ), // Data retrived from FIFO
  .median_lb_fifo_empty      (median_lb_fifo_empty      ), // FIFO empty
  .median_lb_fifo_usedwords  (median_lb_fifo_usedwords  ), // Used words in FIFO
  .pix_corr_lb_fifo_push     (pix_corr_lb_fifo_push     ), // Master pushes data into FIFO
  .pix_corr_lb_fifo_pushdata (pix_corr_lb_fifo_pushdata ), // Data stored into FIFO
  .pix_corr_lb_fifo_full     (pix_corr_lb_fifo_full     ), // FIFO full
  .pix_corr_lb_fifo_pop      (pix_corr_lb_fifo_pop      ), // Master pops data from FIFO
  .pix_corr_lb_fifo_popdata  (pix_corr_lb_fifo_popdata  ), // Data retrived from FIFO
  .pix_corr_lb_fifo_empty    (pix_corr_lb_fifo_empty    ), // FIFO empty
  .pix_corr_lb_fifo_usedwords(pix_corr_lb_fifo_usedwords), // Used words in FIFO
  .laplace_lb_fifo_clr       (laplace_lb_fifo_clr       ),
  .sharp_lb_fifo_clr         (sharp_lb_fifo_clr         ),
  .smooth_lb_fifo_clr        (smooth_lb_fifo_clr        ),
  .median_lb_fifo_clr        (median_lb_fifo_clr        ),
  .pix_corr_lb_fifo_clr      (pix_corr_lb_fifo_clr      )
  
);

axi2frame#(
  .MEM_WIDTH (64  ), 
  .ADDR_WIDTH(10  )
)test_mode(
  .clk                 (clk                 ), // System clock
  .rst_n               (rst_n               ), // Asynchronous reset active low
  .axi0_araddr         (S00_AXI_araddr      ), // Channel 0 Address
  .axi0_arlen          (S00_AXI_arlen       ), // Channel 0 Burst length 
  .axi0_arburst        (S00_AXI_arburst     ), // Channel 0 Burst type
  .axi0_arsize         (S00_AXI_arsize      ), // Channel 0 Number of bytes in each transfer
  .axi0_arvalid        (S00_AXI_arvalid     ), // Channel 0 Address valid 
  .axi0_rready         (S00_AXI_rready      ), // Channel 0 Read ready
  .axi0_arready        (S00_AXI_arready     ), // Channel 0 Address ready
  .axi0_rdata          (S00_AXI_rdata       ), // Channel 0 Read data
  .axi0_rlast          (S00_AXI_rlast       ), // Channel 0 Last data beat in transfer
  .axi0_rvalid         (S00_AXI_rvalid      ), // Channel 0 Valid 
  .axi0_rresp          (S00_AXI_rresp       ), // Channel 0 AXI response
  .axi1_araddr         (S01_AXI_araddr      ), // Channel 1 Address
  .axi1_arlen          (S01_AXI_arlen       ), // Channel 1 Burst length 
  .axi1_arburst        (S01_AXI_arburst     ), // Channel 1 Burst type
  .axi1_arsize         (S01_AXI_arsize      ), // Channel 1 Number of bytes in each transfer
  .axi1_arvalid        (S01_AXI_arvalid     ), // Channel 1 Address valid 
  .axi1_rready         (S01_AXI_rready      ), // Channel 1 Read ready
  .axi1_arready        (S01_AXI_arready     ), // Channel 1 Address ready
  .axi1_rdata          (S01_AXI_rdata       ), // Channel 1 Read data
  .axi1_rlast          (S01_AXI_rlast       ), // Channel 1 Last data beat in transfer
  .axi1_rvalid         (S01_AXI_rvalid      ), // Channel 1 Valid data
  .axi1_rresp          (S01_AXI_rresp       ), // Channel 1 AXI response
  .axi2_araddr         (S02_AXI_araddr      ), // Channel 2 Address
  .axi2_arlen          (S02_AXI_arlen       ), // Channel 2 Burst length 
  .axi2_arburst        (S02_AXI_arburst     ), // Channel 2 Burst type
  .axi2_arsize         (S02_AXI_arsize      ), // Channel 2 Number of bytes in each transfer
  .axi2_arvalid        (S02_AXI_arvalid     ), // Channel 2 Address valid 
  .axi2_rready         (S02_AXI_rready      ), // Channel 2 Read ready
  .axi2_arready        (S02_AXI_arready     ), // Channel 2 Address ready
  .axi2_rdata          (S02_AXI_rdata       ), // Channel 2 Read data
  .axi2_rlast          (S02_AXI_rlast       ), // Channel 2 Last data beat in transfer
  .axi2_rvalid         (S02_AXI_rvalid      ), // Channel 2 Valid data
  .axi2_rresp          (S02_AXI_rresp       ), // Channel 2 AXI response
  .cfg_blk_en          (cfg_blk_en          ), // Block enable
  .cfg_img_width       (cfg_img_width       ), // Image width
  .cfg_img_height      (cfg_img_height      ), // Image height
  .cfg_stride          (cfg_stride          ), // The address distance between the first address of successive â€œhorizontalâ€? reads
  .cfg_map0_ba         (cfg_map0_ba         ), // Channel 0 base address
  .cfg_map1_ba         (cfg_map1_ba         ), // Channel 1 base address
  .cfg_map2_ba         (cfg_map2_ba         ), // Channel 2 base address
  .cfg_map0_en         (cfg_map0_en         ), // Channel 0 enable
  .cfg_map1_en         (cfg_map1_en         ), // Channel 1 enable
  .cfg_map2_en         (cfg_map2_en         ), // Channel 2 enable
  .cfg_max_burst_length(cfg_max_burst_length), // Maximum burst length
  .cfg_reverse_byte    (cfg_reverse_byte    ), // Data is is big/small endian
  .cfg_int_ack         (cfg_int_ack         ), // Interrupt acknowledge
  .fifo_ch0_empty      (fifo_ch0_empty      ),
  .fifo_ch0_popdata    (fifo_ch0_popdata    ),
  .fifo_ch0_pop        (fifo_ch0_pop        ),
  .fifo_ch0_pushdata   (fifo_ch0_pushdata   ),
  .fifo_ch0_usedwords  (fifo_ch0_usedwords  ),
  .fifo_ch0_push       (fifo_ch0_push       ),
  .fifo_ch0_full       (fifo_ch0_full       ),
  .fifo_ch1_empty      (fifo_ch1_empty      ),
  .fifo_ch1_popdata    (fifo_ch1_popdata    ),
  .fifo_ch1_pop        (fifo_ch1_pop        ),
  .fifo_ch1_pushdata   (fifo_ch1_pushdata   ),
  .fifo_ch1_usedwords  (fifo_ch1_usedwords  ),
  .fifo_ch1_push       (fifo_ch1_push       ),
  .fifo_ch1_full       (fifo_ch1_full       ),
  .fifo_ch2_empty      (fifo_ch2_empty      ),
  .fifo_ch2_popdata    (fifo_ch2_popdata    ),
  .fifo_ch2_pop        (fifo_ch2_pop        ),
  .fifo_ch2_pushdata   (fifo_ch2_pushdata   ),
  .fifo_ch2_usedwords  (fifo_ch2_usedwords  ),
  .fifo_ch2_push       (fifo_ch2_push       ),
  .fifo_ch2_full       (fifo_ch2_full       ),
  .sts_axi_error       (sts_axi_error       ), // Axi error
  .sts_read_done       (sts_read_done       ), // Read done interrupt
  .sts_idle            (sts_idle            ), // Module in idle state
  .sts_frm_int         (                    ), // Interrupt 
  .frm_val             (test_frm_val        ), // Frame data valid
  .frm_data            (test_frm_data       ), // Frame data
  .frm_sof             (test_frm_sof        ), // Frame start of frame
  .frm_eof             (test_frm_eof        ), // Frame end of frame
  .frm_sol             (test_frm_sol        ), // Frame start of line
  .frm_eol             (test_frm_eol        ), // Frame end of line
  .frm_rdy             (test_frm_rdy        ),
  .vga_rst_rd          ()
 );
 
selector_2i#(
  .DATA_WIDTH(3*DATA_WIDTH) 
)input_sel(
  .clk         (clk             ), // System clock
  .rst_n       (rst_n           ), // Asynchronous reset active low
  .sel         (cfg_test_mode_en), // Mux selection bit
  .in0_frm_val (s_frm_val       ), // Master has valid data to be transferred
  .in0_frm_rdy (s_frm_rdy       ), // Slave is ready to receive the data
  .in0_frm_data(s_frm_data      ), // Data transferred from master to slave
  .in0_frm_sof (s_frm_sof       ), // Start of Frame
  .in0_frm_eof (s_frm_eof       ), // End of Frame
  .in0_frm_sol (s_frm_sol       ), // Start of Line
  .in0_frm_eol (s_frm_eol       ), // End of Line         
  .in1_frm_val (test_frm_val    ), // Master has valid data to be transferred
  .in1_frm_rdy (test_frm_rdy    ), // Slave is ready to receive the data
  .in1_frm_data(test_frm_data   ), // Data transferred from master to slave
  .in1_frm_sof (test_frm_sof    ), // Start of Frame
  .in1_frm_eof (test_frm_eof    ), // End of Frame
  .in1_frm_sol (test_frm_sol    ), // Start of Line
  .in1_frm_eol (test_frm_eol    ), // End of Line 
  .out_frm_val (frm_val         ), // Master has valid data to be transferred      
  .out_frm_rdy (frm_rdy         ), // Slave is ready to receive the data           
  .out_frm_data(frm_data        ), // Data transferred from master to slave        
  .out_frm_sof (frm_sof         ), // Start of Frame                               
  .out_frm_eof (frm_eof         ), // End of Frame                                 
  .out_frm_sol (frm_sol         ), // Start of Line                                
  .out_frm_eol (frm_eol         )  // End of Line                                  
);

endmodule

