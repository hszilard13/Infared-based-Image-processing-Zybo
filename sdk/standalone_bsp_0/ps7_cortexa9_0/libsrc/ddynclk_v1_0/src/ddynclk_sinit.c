/*
 * ddynclk_sinit.c
 *
 *  Created on: Dec 5, 2017
 *      Author: ROGyorgE
 */

#include "ddynclk.h"
#include "xparameters.h"

/************************** Constant Definitions *****************************/

#ifndef XPAR_AXI_DYNCLK_NUM_INSTANCES
#define XPAR_AXI_DYNCLK_NUM_INSTANCES 0
#endif

DDynClk_Config* DDynClk_LookupConfig(u16 DeviceId)
{
	extern DDynClk_Config DDynClk_ConfigTable[];
	DDynClk_Config *CfgPtr = NULL;
	int i;

	/* Checking for device id for which instance it is matching */
	for (i = 0; i < XPAR_AXI_DYNCLK_NUM_INSTANCES; i++) {
		/* Assigning address of config table if both device ids
		 * are matched
		 */
		if (DDynClk_ConfigTable[i].DeviceId == DeviceId) {
			CfgPtr = &DDynClk_ConfigTable[i];
			break;
		}
	}

	return CfgPtr;
}

