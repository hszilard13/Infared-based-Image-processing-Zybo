/*
 * AXI_GPIO.h
 *
 *  Created on: Jun 7, 2016
 *      Author: Elod
 *
 * Modification history: Jan 7, 2019
 *      Modified by: Szilard Hegedus
 *         - Added second GPIO for LED_EN pin
 */

#ifndef PS_GPIO_H_
#define PS_GPIO_H_

#include <stdexcept>

#include "xgpiops.h"
#include "../ov5647/GPIO_Client.h"

namespace digilent {

template <typename IrptCtl>
class PS_GPIO : public GPIO_Client
{
public:
	PS_GPIO(uint16_t dev_id, IrptCtl& irpt_ctl, uint16_t irpt_id) :
		drv_inst_(), irpt_ctl_(irpt_ctl)
	{
		XGpioPs_Config* config = XGpioPs_LookupConfig(dev_id);
		if (config == NULL) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		XStatus Status;
		//Initialize the GPIO driver
		Status = XGpioPs_CfgInitialize(&drv_inst_, config, config->BaseAddr);
		if (Status != XST_SUCCESS) {
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		if (XGpioPs_SelfTest(&drv_inst_) != XST_SUCCESS)
		{
			throw std::runtime_error(__FILE__ ":" LINE_STRING);
		}

		// Set GPIO 0 as output
		XGpioPs_SetOutputEnablePin(&drv_inst_, CAM_EN_PIN, 0);
		XGpioPs_SetDirectionPin(&drv_inst_, CAM_EN_PIN, 1);
	    XGpioPs_WritePin(&drv_inst_, CAM_EN_PIN, 1);
		XGpioPs_SetOutputEnablePin(&drv_inst_, CAM_EN_PIN, 1);

		// Set GPIO 1 as output
		XGpioPs_SetOutputEnablePin(&drv_inst_, CAM_LED_EN_PIN, 0);
		XGpioPs_SetDirectionPin(&drv_inst_, CAM_LED_EN_PIN, 1);
	    XGpioPs_WritePin(&drv_inst_, CAM_LED_EN_PIN, 1);
		XGpioPs_SetOutputEnablePin(&drv_inst_, CAM_LED_EN_PIN, 1);

	}
	virtual void setBit(Bits bits)
	{
		switch (bits)
		{
		case Bits::CAM_GPIO0:
			XGpioPs_WritePin(&drv_inst_, CAM_EN_PIN, 1);
			break;
		case Bits::CAM_GPIO1:
			XGpioPs_WritePin(&drv_inst_, CAM_LED_EN_PIN, 1);
			break;
		}
	}
	virtual void clearBit(Bits bits)
	{
		switch (bits)
		{
		case Bits::CAM_GPIO0:
			XGpioPs_WritePin(&drv_inst_, CAM_EN_PIN, 0);
			break;
		case Bits::CAM_GPIO1:
			XGpioPs_WritePin(&drv_inst_, CAM_LED_EN_PIN, 0);
			break;
		}
	}
	virtual void commit()
	{

	}
private:
	XGpioPs drv_inst_;
	IrptCtl irpt_ctl_;
	u32 const CAM_EN_PIN = 54;
	u32 const CAM_LED_EN_PIN = 55;
};

}


#endif /* PS_GPIO_H_ */
