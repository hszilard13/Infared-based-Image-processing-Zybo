
#include "xparameters.h"

#include "platform/platform.h"
#include "ov5647/OV5647.h"

#include "IR_FILTERS_regs.h"

#include "MIPI_D_PHY_RX.h"
#include "MIPI_CSI_2_RX.h"
#include "ov5647/AXI_VDMA.h"
#include "ov5647/i2c.h"
#include "ov5647/PS_GPIO.h"
#include "ov5647/ScuGicInterruptController.h"

#include "xil_io.h"
#include "xil_printf.h"
#include "xil_cache.h"

#include <string.h>
#include "ov5647/defines.h"
#include "ov5647/ScuGicInterruptController.h"


#define IRPT_CTL_DEVID 		XPAR_PS7_SCUGIC_0_DEVICE_ID
#define GPIO_DEVID			XPAR_PS7_GPIO_0_DEVICE_ID
#define GPIO_IRPT_ID	    XPAR_PS7_GPIO_0_INTR
#define CAM_I2C_DEVID		XPAR_PS7_I2C_0_DEVICE_ID
#define CAM_I2C_IRPT_ID		XPAR_PS7_I2C_0_INTR
#define VDMA0_DEVID			XPAR_AXIVDMA_0_DEVICE_ID
#define VDMA1_DEVID			XPAR_AXIVDMA_1_DEVICE_ID
#define VDMA0_MM2S_IRPT_ID	XPAR_FABRIC_AXI_VDMA_0_MM2S_INTROUT_INTR
#define VDMA0_S2MM_IRPT_ID	XPAR_FABRIC_AXI_VDMA_0_S2MM_INTROUT_INTR
#define VDMA1_MM2S_IRPT_ID	XPAR_FABRIC_AXI_VDMA_1_MM2S_INTROUT_INTR
#define VDMA1_S2MM_IRPT_ID	XPAR_FABRIC_AXI_VDMA_1_S2MM_INTROUT_INTR
#define CAM_I2C_SCLK_RATE	100000
#define APB_BASE_ADDR       XPAR_APB_M_BASEADDR
#define DDR_BASE_ADDR		XPAR_DDR_MEM_BASEADDR
#define VDMA0_BASE_ADDR	   (DDR_BASE_ADDR + 0x0A000000)
#define VDMA1_BASE_ADDR	   (DDR_BASE_ADDR + 0x10000000)

#define FRM_INPU_CODE 0x00
#define PIX_CORR_IN_CODE 0x01
#define MEDIAN_IN_CODE 0x02
#define LAPLACE_IN_CODE 0x04
#define SHARP_IN_CODE 0x08
#define SMOOTH_IN_CODE 0x10

#define IMG_W 1920
#define IMG_H 1080


using namespace digilent;

void filter_cfg()
{
	Xil_Out32(APB_BASE_ADDR + CFG_IMG_WIDTH_ADDR, IMG_W);
	Xil_Out32(APB_BASE_ADDR + CFG_IMG_HEIGHT_ADDR, IMG_H);
	Xil_Out32(APB_BASE_ADDR + CFG_PIX_CORR_SEL_ADDR, 0);
	Xil_Out32(APB_BASE_ADDR + CFG_SHARP_SEL_ADDR, 0);
	Xil_Out32(APB_BASE_ADDR + CFG_SMOOTH_SEL_ADDR, SMOOTH_IN_CODE);
	Xil_Out32(APB_BASE_ADDR + CFG_MEDIAN_SEL_ADDR, 0);
	Xil_Out32(APB_BASE_ADDR + CFG_LAPLACE_SEL_ADDR, SMOOTH_IN_CODE);
	Xil_Out32(APB_BASE_ADDR + CFG_OUTPUT_SEL_ADDR, LAPLACE_IN_CODE);
	Xil_Out32(APB_BASE_ADDR + CFG_PIX_CORR_THR_ADDR, 0);
	Xil_Out32(APB_BASE_ADDR + CFG_SHARP_COEF_ADDR, 0);
	Xil_Out32(APB_BASE_ADDR + CFG_TEST_MODE_EN_ADDR, 0);
}

void pipeline_mode_change(AXI_VDMA<ScuGicInterruptController>& vdma_driver0 , AXI_VDMA<ScuGicInterruptController>& vdma_driver1,
		OV5647& cam, VideoOutput& vid, Resolution res, OV5647_cfg::mode_t mode)
{
	//Bring up input pipeline back-to-front
	{
		vdma_driver0.resetWrite();
		vdma_driver1.resetWrite();
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

Xil_InterruptHandler VDMA_frm_wr_handler()
{
	int addr_incr = IMG_W*IMG_H*3;
	crop_img(VDMA1_BASE_ADDR+(2*addr_incr), IMG_W*3/2, IMG_H*3, 0, 0, VDMA1_BASE_ADDR+(2*addr_incr), IMG_W*3);
	return XST_SUCCESS;
}

int main()
{
	XStatus Status;

	init_platform();

	filter_cfg();

	ScuGicInterruptController irpt_ctl(IRPT_CTL_DEVID);

	PS_GPIO<ScuGicInterruptController> gpio_driver(GPIO_DEVID, irpt_ctl, GPIO_IRPT_ID);

	OV5647 cam(gpio_driver);
	AXI_VDMA<ScuGicInterruptController> vdma_driver0(VDMA0_DEVID, VDMA0_BASE_ADDR, irpt_ctl,
			VDMA0_MM2S_IRPT_ID,
			VDMA0_S2MM_IRPT_ID);

	AXI_VDMA<ScuGicInterruptController> vdma_driver1(VDMA1_DEVID, VDMA1_BASE_ADDR, irpt_ctl,
				VDMA1_MM2S_IRPT_ID,
				VDMA1_S2MM_IRPT_ID);
	VideoOutput vid(XPAR_VTC_0_DEVICE_ID, XPAR_VIDEO_DYNCLK_DEVICE_ID);

	//Status = irpt_ctl.enableInterrupt(VDMA0_MM2S_IRPT_ID);

    //Status = irpt_ctl.registerHandler(VDMA0_MM2S_IRPT_ID, VDMA_frm_wr_handler(), nullptr);

    pipeline_mode_change(vdma_driver0,vdma_driver1, cam, vid, Resolution::R1920_1080_60_PP, OV5647_cfg::mode_t::MODE_1920x1080);

	xil_printf("Video init done.\r\n");

	while (1) {

	}
	cleanup_platform();

	return 0;
}
