/*
 * pl_gpio.c
 *
 *  Created on: Apr 16, 2019
 *      Author: Szilard
 */

#include "pl_gpio.h"

void pl_gpio_init(XGpio* pl_gpio)
{
	XGpio_Initialize(pl_gpio, GPIO_DEV_ID);
	XGpio_SetDataDirection(pl_gpio, 1, 0x000000FF);
	XGpio_InterruptEnable(pl_gpio, 0x000000FF);
	XGpio_InterruptGlobalEnable(pl_gpio);
	if(XGpio_SelfTest(pl_gpio) != XST_SUCCESS)
	{
		xil_printf("Self test failed");
	}
}

int pl_gpio_read(XGpio *InstancePtr)
{
	return XGpio_DiscreteRead(InstancePtr, 1);
}


