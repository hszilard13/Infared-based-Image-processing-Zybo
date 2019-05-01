/*
 * configs.h
 *
 *  Created on: Apr 26, 2019
 *      Author: Szilard
 */

#ifndef SRC_CONFIGS_H_
#define SRC_CONFIGS_H_

#include "xparameters.h"
#include "xil_io.h"

#include "IR_FILTERS_regs.h"

#define IMG_W 1920
#define IMG_H 1080

#define TEST_IMG_R_ADDR 0x1A000000
#define TEST_IMG_G_ADDR 0x1B000000
#define TEST_IMG_B_ADDR 0x1C000000

#define FRM_INPUT_CODE 0x00
#define PIX_CORR_IN_CODE 0x01
#define MEDIAN_IN_CODE 0x02
#define LAPLACE_IN_CODE 0x04
#define SHARP_IN_CODE 0x08
#define SMOOTH_IN_CODE 0x10

#define APB_BASE_ADDR   XPAR_APB_M_BASEADDR

void axi_rd_cfg();
void filter_cfg();

void enable_test();
void disable_test();

void transparent_cfg();
void pix_corr_cfg();
void smooth_cfg();
void laplace_cfg();
void median_cfg();
void sharp_cfg();

void smooth_laplace();
void smooth_sharp_laplace();

void switch_cfg(u8);


#endif /* SRC_CONFIGS_H_ */
