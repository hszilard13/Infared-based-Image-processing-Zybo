/*
 * OV5640.cpp
 *
 *  Created on: May 26, 2016
 *      Author: Elod
 *
 * Modification history: Jan 7, 2019
 *      Modified by: Szilard Hegedus
 *         - Removed all OV5640 configuration, added initialization config for OV5647
 *         - Replaced I2C driver
 */

#include "../ov5647/OV5647.h"

namespace digilent {

void OV5647::init()
{
	uint8_t id_h, id_l;
	InitializeIICdriver();

	readReg(REG_ID_H, id_h);
	readReg(REG_ID_L, id_l);

	if (id_h != DEV_ID_H || id_l != DEV_ID_L)
	{
		char msg[100];
		xil_printf("Got %02x %02x. Expected %02x %02x\r\n", id_h, id_l, DEV_ID_H, DEV_ID_L);
		throw HardwareError(HardwareError::WRONG_ID, msg);
	}

	usleep(1000000);

	size_t i;
	for (i=0;i<sizeof(OV5647_cfg::cfg_1080p)/sizeof(OV5647_cfg::cfg_1080p[0]); ++i)
	{
		writeReg(OV5647_cfg::cfg_1080p[i].addr, OV5647_cfg::cfg_1080p[i].data);
	}
}

Errc OV5647::reset()
{
	gpio_.clearBit(gpio_.Bits::CAM_GPIO0);
	gpio_.clearBit(gpio_.Bits::CAM_GPIO1);
	usleep(1000000);
	gpio_.setBit(gpio_.Bits::CAM_GPIO0);
	gpio_.setBit(gpio_.Bits::CAM_GPIO1);
	usleep(1000000);

	return OK;
}

Errc OV5647::stop()
{
	gpio_.clearBit(gpio_.Bits::CAM_GPIO0);
	gpio_.clearBit(gpio_.Bits::CAM_GPIO1);
	return OK;
}

//Errc OV5647::set_mode(OV5647_cfg::mode_t mode)
//{
//	if (mode >= OV5647_cfg::mode_t::MODE_END)
//		return ERR_LOGICAL;
//
//	auto cfg_mode = &OV5647_cfg::modes[mode];
//	writeConfig(cfg_mode->cfg, cfg_mode->cfg_size);
//
//	return OK;
//}

void OV5647::set_test(OV5647_cfg::test_t test)
{
	switch(test)
	{
		case OV5647_cfg::test_t::TEST_DISABLED:
			writeReg(OV5647_cfg::OV5647_REG_PRE_ISP_TEST_SET1, 0x00);
			break;
		case OV5647_cfg::test_t::TEST_EIGHT_COLOR_BAR:
			writeReg(OV5647_cfg::OV5647_REG_PRE_ISP_TEST_SET1, 0x80);
			break;
		default:
			break;
	}
}
void OV5647::readReg(uint16_t reg_addr, uint8_t& buf)
{
	xil_i2c_read16(I2C_ADDR,reg_addr, &buf, 1);
}

void OV5647::writeReg(uint16_t reg_addr, uint8_t const reg_data)
{
	xil_i2c_write_A16_D8(I2C_ADDR, reg_addr, reg_data);
}

void OV5647::usleep(uint32_t time)
{
	for (uint32_t i=0; i<time; i++) ;
}

//void OV5647::writeConfig(OV5647_cfg::config_word_t const* cfg, size_t cfg_size)
//{
//	for (size_t i=0; i<cfg_size; ++i)
//	{
//		xil_i2c_write_A16_D8(I2C_ADDR, cfg[i].addr, cfg[i].data);
//	}
//}
} /* namespace digilent */
