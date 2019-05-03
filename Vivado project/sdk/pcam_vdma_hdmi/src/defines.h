/*
 * defines.h
 *
 *  Created on: Apr 23, 2019
 *      Author: Szilard
 */

#ifndef SRC_DEFINES_H_
#define SRC_DEFINES_H_


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
#include "xgpiops.h"

#include <string.h>
#include "ov5647/defines.h"
#include "ov5647/ScuGicInterruptController.h"

#include "pl_gpio.h"
#include "file_handling.h"
#include "configs.h"

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
#define DDR_BASE_ADDR		XPAR_DDR_MEM_BASEADDR
#define VDMA0_BASE_ADDR	   (DDR_BASE_ADDR + 0x0A000000)
#define VDMA1_BASE_ADDR	   (DDR_BASE_ADDR + 0x0D00000)
#define EOF_INTR_ID         XPAR_FABRIC_WR_EOF_INTR_INTR
#define SOF_INTR_ID         XPAR_FABRIC_RD_EOF_INTR_INTR
#define VDMA_FRM_ADDR_INCR  3*IMG_W*IMG_H
#define GPIO_DEV_ID         XPAR_AXI_GPIO_0_DEVICE_ID
#define GPIO_INTR_SW        XPAR_FABRIC_AXI_GPIO_0_IP2INTC_IRPT_INTR

#define SW_CH  1
#define BTN_CH 2

#endif /* SRC_DEFINES_H_ */
