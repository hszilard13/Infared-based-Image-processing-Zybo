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



//#define PW_PRINT_ON
//#define DESER_PRINT_ON
#define SENS_OV8858_PRINT_ON
#define SENS_OV5645_PRINT_ON


#define MIN(x, y)				(x < y ? x : y)
//#define DISP_IMG_W (1280)
//#define DISP_IMG_H (720)



//#define DISP_IMG_H (MIN(MONITOR_H,720))





#define AXI_FREQ_HZ (100 * 1000000)

//select frame resolution
//#define HD_RESOLUTION
//#ifndef HD_RESOLUTION
// #define VGA_RESOLUTION
//#endif


//the maximum number of faces found for which the data is stored
#define MAX_FACE_NUM   200
#define FACE_SIZE 22

//statistics shown on serial
#define DISPLAY_STATISTICS
//#define INJECTOR_BADDR 0x42000000
//#define FPGA_WRP_BADDR 0x44000000
//average samples number for statistics measurement
#define AHFD_AVG_SAMPLES 20


//filtering multiple face detections
//#define CUBE_FILTERING_ENABLE
#define FILTERING_THR 44

#define ADV7511_I2C_MUX_CHANNEL 0x1
#define ADV_7511_ID             0x39
#define IIC_BASEADDR            0xE0004000
#define IIC_MUX_ADDRESS         0x70
#define IIC_MUX_ADDRESS_ADAPTOR 0x71

#define INTC_DEVICE_ID         XPAR_SCUGIC_SINGLE_DEVICE_ID
#define IIC_INTR_ID            XPAR_XIICPS_0_INTR
#define IIC_SCLK_RATE          100000

#define MPUREG_WHOAMI 0x75

#define SPI_DEVICE_ID XPAR_PS7_SPI_0_DEVICE_ID
#define GPIO_DEVICE_ID XPAR_PS7_GPIO_0_DEVICE_ID

//clock defines

#define FPGA0_CLK_CTRL   0XF8000170 //AXI
#define FPGA1_CLK_CTRL   0XF8000180 //hdmi and vita
#define FPGA2_CLK_CTRL   0XF8000190 //200 MHZ vita
#define FPGA3_CLK_CTRL   0XF80001A0 //not used

#define APB_BADDR 0x41000000

#define DISPLAY_W 1280
#define DISPLAY_H 720
//#define DISPLAY_W 1920
//#define DISPLAY_H 1070
#define CAM_422 0
#define COLOR_SENS 0

#define RGB_IN_DDR 0

 #define DISP0_422 0 //G / Y
 #define DISP1_422 CAM_422 //B / Cb
 #define DISP2_422 CAM_422 //R / Cr

 //in case of 422 the map size is only half
 #define DISP0_MAP_SIZE (DISPLAY_W * DISPLAY_H/(DISP0_422+1))
 #define DISP1_MAP_SIZE (DISPLAY_W * DISPLAY_H/(DISP1_422+1))
 #define DISP2_MAP_SIZE (DISPLAY_W * DISPLAY_H/(DISP2_422+1))

//-------------------------------------------------------------------------------------
#define CROP_START_LINE ((1080-DISPLAY_H) /2)
#define CROP_END_LINE   (CROP_START_LINE+DISPLAY_H-1)
#define CROP_START_PIX ((1920-DISPLAY_W) /2)
#define CROP_END_PIX   (CROP_START_PIX+DISPLAY_W-1)


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

#define A_Channel             0
#define B_Channel             1
#define F2M_A_GPIO_SLV_ADDR   0x20 // 7 bit addr
#define F2M_B_GPIO_SLV_ADDR   0x21 // 7 bit addr

#define TDELAY                1000
#define TOS_DSER_DEV_ADDR     0x07 // 7 bit addr

#define DSER_FORCE_RGB888       0x0031
#define DSER_FORCE_RAW10        0x0011
#define DSER_FORCE_RAW8         0x0001
#define DSER_FORCE_YUV422_8bit  0x0061
#define DSER_FORCE_YUV422_10bit 0x0091
//#define DSER_DTFMT              DSER_FORCE_YUV422_8bit // for baycat
#define DSER_DTFMT              DSER_FORCE_RAW8     // for iris sens

#define DSER_1_LANE           0x0040
//#define DSER_4_LANE           0x0143
//#define DSER_4_LANE           0x014B // inverted polarity of plck
//#define DSER_4_LANE           0x004B // inverted polarity of plck yuv unpacked on 8 bits ----- !!!!!BAYCAT!!!!!!
#define DSER_4_LANE           0x004B // IRIS
//#define DSER_4_LANE           0x014B
#define DSER_MLNS             DSER_4_LANE

#define ISP_DEV_ADDR          0x1f// 7 bit addr, if SID = 1, dev addr is 0x36 else it is 0x10 3/14/13 HK
#define OV8830_DEV_ADDR       0x36 // 7 bit addr, if SID = 1, dev addr is 0x36 else it is 0x10 3/14/13 HK
#define CHIP_ID_UB 0x300A
#define CHIP_ID_LB 0x300B
#define NUM_ADDR_VAL_PAIR     520

#define MIPI_4_Lane_Ctrl_Reg0 0x41
#define MIPI_4_Lane_Ctrl_Reg1 0x08
#define MLN0 MIPI_4_Lane_Ctrl_Reg0
#define MLN1 MIPI_4_Lane_Ctrl_Reg1

typedef u8 AddressType;
#define CHUNK_SIZE   2048
#define PAGE_SIZE             4096
#define SENSOR_YCC_MODE    1 // 1-unpaacked uyvy ; 0 packed uyvy into 16 bits per clock
#define SENSOR_WIDTH    1280
#define SENSOR_HEIGHT    720
//#define FUJITSU_ISP_MODE 0x21 // 720p
#define HDMI_MODE 1//0=1090p; 1=720p0

#define DISP_IMG_W (1280*3 / ((HDMI_MODE==1) ? 3 : 2))
#define DISP_IMG_H ( 720*3 / ((HDMI_MODE==1) ? 3 : 2))

#define CAM_DISP_W 800
#define CAM_DISP_H 600 - 20


#define FUJITSU_ISP_MODE ((HDMI_MODE==1) ? 0x21 : 0x25)  // 1080p

#define STATS_COLOR BLEND_RED

#define TDELAY                1000

#define CAM_BASEADDR          0x40000000
#define AXI2HDMI_ADDR         0x41000000

#define Y_BASEADDR            0x03000000
#define CB_BASEADDR           0x01000000
#define CR_BASEADDR           0x02000000


//#define DISP_Y_BASEADDR       Y_BASEADDR
//#define DISP_CB_BASEADDR      CB_BASEADDR
//#define DISP_CR_BASEADDR      CR_BASEADDR

//
#ifdef USE_STATIC_IMG

#define DISP_Y_BASEADDR       STATIC_IMG0
#define DISP_CB_BASEADDR      CB_BASEADDR
#define DISP_CR_BASEADDR      CR_BASEADDR

#endif

#ifndef USE_STATIC_IMG

#define DISP_Y_BASEADDR       Y_BASEADDR
#define DISP_CB_BASEADDR      CB_BASEADDR
#define DISP_CR_BASEADDR      CR_BASEADDR

#endif


#define BLEND_BASEADDR		  0x04000000

#define IPU_CFG_BASE_ADDR         0x42000000
#define CNN_BASE_ADDR             0x44000000

#define BLEND_RED   0xffff0000
#define BLEND_GREEN 0xff0000ff
#define BLEND_BLUE  0xff00ff00

#define SNS_ID  2 // SENSOR ID for configuration selection
				  // 0 baycat sensor
				  // 1 IRIS sensor


// DEFINES for M9M
#define IO_PLL_MHZ 1000
//DEFINE THE TEST TO RUN ON FPGA

//***********************************DEFINE_TEST***********************************

//#define AREA_TEST
//#define HRE_II_FII_TEST
//#define HRE_RIIH_RIIV_TEST
//#define PRE_TEST
//#define MIO_TEST
//#define SGDE_TEST
//#define NORM_TEST
#define TMEA_TEST
//#define TMER_TEST

//AHB base address og the IPU
#define IPU_BASE_ADDR 0x43CA0000

#define IPU_PRE_START_ADDR   ( 0x17034)
#define IPU_NORM_START_ADDR  ( 0x00016000)
#define IPU_NORM_STTS_ADDR   ( 0x16040)
#define IPU_INTR_CLR_ADDR    ( 0x17040)
#define IPU_INTR_STS_ADDR    ( 0x17044)
#define IPP_START_ADDR       ( 0x0001704C)
#define TMEA_CFG_EN          ( 0x0000012C)
#define TME_R_CFG_EN         ( 0x00023110)



#endif
