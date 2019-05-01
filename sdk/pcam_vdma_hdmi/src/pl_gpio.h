/*
 * pl_gpio.h
 *
 *  Created on: Apr 16, 2019
 *      Author: Szilard
 */

#ifndef SRC_PL_GPIO_H_
#define SRC_PL_GPIO_H_

#include "xgpio.h"

#define GPIO_BA     XPAR_AXI_GPIO_0_BASEADDR
#define GPIO_DEV_ID XPAR_AXI_GPIO_0_DEVICE_ID
#define GPIO_INTR_MASK      0x000000FF

void pl_gpio_init(XGpio *pl_gpio);
int pl_gpio_read(XGpio *InstancePtr);

#endif /* SRC_PL_GPIO_H_ */
