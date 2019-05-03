/*
 * i2c.h
 *
 *  Created on: Nov 21, 2016
 *      Author: ddragut
 */

#ifndef SRC_I2C_H_
#define SRC_I2C_H_

#include "xbasic_types.h"

int xil_i2c_write(u16 DevAddress, u16 ByteCount);
int xil_i2c_write_A8_D8(u16 DevAddress, u8 reg_addr, u8 wdata);
int xil_i2c_write_A8_D16(u16 DevAddress, u8 reg_addr, u16 wdata);
int xil_i2c_write_A16_D8(u16 DevAddress, u16 reg_addr, u8 wdata);
int xil_i2c_write_A16_D16(u16 DevAddress, u16 reg_addr, u16 wdata);

int xil_i2c_read16(u16 DevAddress, u16 RegAddress,u8 *BufferPtr, u16 ByteCount);
int xil_i2c_read8(u16 DevAddress, u8 RegAddress,u8 *BufferPtr, u16 ByteCount);
void InitializeIICdriver();

#endif /* SRC_I2C_H_ */
