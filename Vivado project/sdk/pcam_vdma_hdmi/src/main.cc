
#include "defines.h"

using namespace digilent;

bool test_en;

void pipeline_mode_change(AXI_VDMA<ScuGicInterruptController>& vdma_driver0 , AXI_VDMA<ScuGicInterruptController>& vdma_driver1,
		OV5647& cam, VideoOutput& vid, Resolution res, OV5647_cfg::mode_t mode)
{
	//Bring up input pipeline back-to-front
	{
		vdma_driver0.resetWrite();
		vdma_driver1.resetWrite();
		if(test_en)
		{
			cam.stop();
			disable_test();
			enable_test();
		}
		MIPI_CSI_2_RX_mWriteReg(XPAR_MIPI_CSI_2_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, (CR_RESET_MASK & ~CR_ENABLE_MASK));
		MIPI_D_PHY_RX_mWriteReg(XPAR_MIPI_D_PHY_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, (CR_RESET_MASK & ~CR_ENABLE_MASK));
		cam.reset();

	}

	{
		vdma_driver0.configureWrite(timing[static_cast<int>(res)].h_active, timing[static_cast<int>(res)].v_active);
		vdma_driver1.configureWrite(timing[static_cast<int>(res)].h_active, timing[static_cast<int>(res)].v_active);
	}

	{
		vdma_driver0.enableWrite();
		vdma_driver1.enableWrite();
		MIPI_CSI_2_RX_mWriteReg(XPAR_MIPI_CSI_2_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, CR_ENABLE_MASK);
		MIPI_D_PHY_RX_mWriteReg(XPAR_MIPI_D_PHY_RX_0_S_AXI_LITE_BASEADDR, CR_OFFSET, CR_ENABLE_MASK);
		cam.set_mode(mode);
	}

	//Bring up output pipeline back-to-front
	{
		vid.reset();
		vdma_driver0.resetRead();
		vdma_driver1.resetRead();
	}

	{
		vid.configure(res);
		vdma_driver0.configureRead(timing[static_cast<int>(res)].h_active, timing[static_cast<int>(res)].v_active);
		vdma_driver1.configureRead(timing[static_cast<int>(res)].h_active, timing[static_cast<int>(res)].v_active);
	}

	{
		vid.enable();
		vdma_driver0.enableRead();
		vdma_driver1.enableRead();
	}
}

ScuGicInterruptController irpt_ctl(IRPT_CTL_DEVID);

void VDMA_crop_handler(void* drv_inst)
{
	//Set and reset interrupt ACK
	Xil_Out32(APB_BASE_ADDR + CFG_EOF_INTR_ACK_ADDR, 1);
	Xil_Out32(APB_BASE_ADDR + CFG_EOF_INTR_ACK_ADDR, 0);

	irpt_ctl.disableInterrupt(EOF_INTR_ID);

	// Park DMA at current frame while processing
	u32 wr_frm_cnt = XAxiVdma_CurrFrameStore((XAxiVdma*) drv_inst, XAXIVDMA_WRITE);
	u32 rd_frm_cnt = XAxiVdma_CurrFrameStore((XAxiVdma*) drv_inst, XAXIVDMA_READ);

	u32 cpy_frm = (rd_frm_cnt+1) % 5;

	XAxiVdma_StartParking((XAxiVdma*) drv_inst, (rd_frm_cnt+1)%5, XAXIVDMA_READ);
	XAxiVdma_StartParking((XAxiVdma*) drv_inst, (wr_frm_cnt+1)%5, XAXIVDMA_WRITE);

	int source_addr = VDMA1_BASE_ADDR + (cpy_frm * VDMA_FRM_ADDR_INCR);
	int dest_addr   = VDMA0_BASE_ADDR + (cpy_frm * VDMA_FRM_ADDR_INCR);

	if(cpy_frm == 4)
	{
		Xil_DCacheInvalidateRange(VDMA0_BASE_ADDR, 3 * IMG_W * IMG_H);
		Xil_DCacheInvalidateRange(VDMA1_BASE_ADDR, 3 * IMG_W * IMG_H);
	}
	Xil_DCacheInvalidateRange(dest_addr  , 3 * IMG_W * IMG_H/2);
	Xil_DCacheInvalidateRange(source_addr, 3 * IMG_W * IMG_H/2);

	//Copy half of the input image to the filtered image
	int line_nr;
	for(int i = 0; i < IMG_H; ++i)
	{
		line_nr = i * IMG_W * 3;

		memcpy((void*)(dest_addr + line_nr),(void*)(source_addr + line_nr), IMG_W*3/2);
	}
	irpt_ctl.enableInterrupt(EOF_INTR_ID);
}

bool enable_split;
u8  threshold;
u8 sw_config;

void GPIO_sw_handler(void* gpio_drv)
{
	XGpio_InterruptClear((XGpio*)gpio_drv, GPIO_INTR_MASK);
	u8 btn_config = pl_gpio_read((XGpio*)gpio_drv, BTN_CH);

	if(btn_config == 0x04)
	{
		enable_split = ~enable_split;
		if(enable_split)
		{
			//Enable DMA interrupt for splitting screen
			irpt_ctl.enableInterrupt(EOF_INTR_ID);
		}
		else
		{
			//Disable DMA interrupt for splitting screen
			irpt_ctl.disableInterrupt(EOF_INTR_ID);
		}
	}

	// Increase/decrease threshold only if pix_corr or sharp filter is configured
	if((sw_config == 0x01) || (sw_config == 0x05) || (sw_config == 0x07))
	{
		if(btn_config == 0x01)
		{
			threshold++;
			Xil_Out32(APB_BASE_ADDR + CFG_SHARP_COEF_ADDR, threshold);
			Xil_Out32(APB_BASE_ADDR + CFG_PIX_CORR_THR_ADDR, threshold);
		}
		if(btn_config == 0x02)
		{
			threshold--;
			Xil_Out32(APB_BASE_ADDR + CFG_SHARP_COEF_ADDR, threshold);
			Xil_Out32(APB_BASE_ADDR + CFG_PIX_CORR_THR_ADDR, threshold);
		}
	}
}

int main()
{
	init_platform();

	// Read test image and write it into the DDR
	mount_SD();
	read_raw_file("0:/test_img/test_fpga_R.raw",(void*) TEST_IMG_R_ADDR);
	read_raw_file("0:/test_img/test_fpga_G.raw",(void*) TEST_IMG_G_ADDR);
	read_raw_file("0:/test_img/test_fpga_B.raw",(void*) TEST_IMG_B_ADDR);

	XGpio gpio_drv;

	pl_gpio_init(&gpio_drv);


    //Read switch value and configure filters
	u8 config = pl_gpio_read(&gpio_drv, SW_CH);
	sw_config = config & 0x0f; // Mask upper byte
	switch_cfg(sw_config);

	threshold = 50;
	enable_split = false;

	if(sw_config & 8)
	{
		//Enable test_mode if sw3 is active
		test_en = true;
		enable_test();
	}
	else
	{
		test_en = false;
	}
	PS_GPIO<ScuGicInterruptController> gpio_driver(GPIO_DEVID, irpt_ctl, GPIO_IRPT_ID);

	OV5647 cam(gpio_driver);
	AXI_VDMA<ScuGicInterruptController> vdma_driver0(VDMA0_DEVID, VDMA0_BASE_ADDR, irpt_ctl,
			VDMA0_MM2S_IRPT_ID,
			VDMA0_S2MM_IRPT_ID);

	AXI_VDMA<ScuGicInterruptController> vdma_driver1(VDMA1_DEVID, VDMA1_BASE_ADDR, irpt_ctl,
				VDMA1_MM2S_IRPT_ID,
				VDMA1_S2MM_IRPT_ID);

	VideoOutput vid(XPAR_VTC_0_DEVICE_ID, XPAR_VIDEO_DYNCLK_DEVICE_ID);

	pipeline_mode_change(vdma_driver0,vdma_driver1, cam, vid, Resolution::R1920_1080_60_PP, OV5647_cfg::mode_t::MODE_1920x1080);

	if(test_en)
		cam.stop();

	XAxiVdma drv_inst0 = vdma_driver0.get_drv_inst();

	//irpt_ctl.registerHandler(EOF_INTR_ID, &VDMA_crop_handler, &drv_inst0);
	//irpt_ctl.disableInterrupt(EOF_INTR_ID);

	irpt_ctl.registerHandler(GPIO_INTR_SW, &GPIO_sw_handler, &gpio_drv);
	irpt_ctl.enableInterrupt(GPIO_INTR_SW);

	xil_printf("Video init done.\r\n");

	while (1)
	{

	}
	cleanup_platform();

	return 0;
}
