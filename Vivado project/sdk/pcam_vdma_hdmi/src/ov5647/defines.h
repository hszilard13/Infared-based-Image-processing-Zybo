#pragma once

#ifndef __DEFINES_H__
#define __DEFINES_H__

#include "xiicps.h"
#include "xscugic.h"
#include "xparameters.h"


//#define DEBUG1
//#define DEBUG2
//#define DEBUG3
//#define USE_STATIC_IMG


    typedef unsigned char UINT8;
    typedef signed char INT8;
    typedef unsigned short UINT16;
    typedef signed short INT16;
    typedef signed int INT32;
    typedef unsigned int UINT32;
    typedef unsigned long long int UINT64;
    typedef long long int INT64;
    typedef unsigned int UINT;
    typedef INT32 FIXED32;
    typedef int BOOL;
    typedef UINT8 BYTE;

    // Convert to and from floating point
    #define FIXI32(d,q)       ((FIXED32)((d) * (1<<(q))))                // for integers
    #define FIX32(d,q)        (((FIXED32)((d) * (1<<(q+1)) + 1)) >> 1)   // for floating point





#define MIN(x, y)				(x < y ? x : y)

//#define DISP_IMG_H (MIN(MONITOR_H,720))

#define ADV7511_I2C_MUX_CHANNEL 0x1
#define ADV_7511_ID             0x39
#define IIC_BASEADDR            0xE0004000
#define IIC_MUX_ADDRESS         0x70
#define IIC_MUX_ADDRESS_ADAPTOR 0x71

#define INTC_DEVICE_ID         XPAR_SCUGIC_SINGLE_DEVICE_ID
#define IIC_INTR_ID            XPAR_XIICPS_0_INTR
#define IIC_SCLK_RATE          100000



//I2C Slave Addr definition
//Right Imager I2C Addr
#define IIC_RSLAVE_ADDR		0x4C //0x48 //swapped//

//Left Imager I2C Addr
#define IIC_LSLAVE_ADDR		0x48 //0x4C //swapped//

//I2C Clock Rate
#define IIC_SCLK_RATE		100000

/*
 * The following constant controls the length of the buffers to be sent
 * and received with the IIC.
 */
//I2C Buffer Array size
//Write buffer
#define WRITE_BUFFER_SIZE	3
//Read addr control buffer
#define READ_ADDR_SIZE      1
//read data buffer
#define READ_BUFFER_SIZE	2

#define F2M_GPIO_INPORT0      0x00
#define F2M_GPIO_INPORT1      0x01
#define F2M_GPIO_OUTPORT0     0x02
#define F2M_GPIO_OUTPORT1     0x03
#define F2M_GPIO_POLPORT0     0x04
#define F2M_GPIO_POLPORT1     0x05
#define F2M_GPIO_CFGPORT0     0x06
#define F2M_GPIO_CFGPORT1     0x07
#define BIT0                  0x01
#define BIT1                  0x02
#define BIT2                  0x04
#define BIT3                  0x08
#define BIT4                  0x10
#define BIT5                  0x20
#define BIT6                  0x40
#define BIT7                  0x80




typedef u8 AddressType;
#define CHUNK_SIZE   2048





#endif
