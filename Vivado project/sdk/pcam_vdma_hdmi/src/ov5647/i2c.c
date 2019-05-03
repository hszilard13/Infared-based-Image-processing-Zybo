/*
 * i2c.c
 *
 *  Created on: Oct 3, 2016
 *      Author: ddragut
 */
#include "xparameters.h"
#include "xil_io.h"
#include "../ov5647/defines.h"
#include "../tools.h"



u8 WriteBuffer[sizeof(AddressType) + CHUNK_SIZE];
#define PAGE_SIZE             4096
u8 ReadBuffer[PAGE_SIZE];     /* Read buffer for reading a page.           */
static u8 *fw = (u8*) 0x3f000000;
u8 tmp[64];
char inbyte(void);
XIicPs_Config *Config;
XIicPs IicInstance;           /* The instance of the IIC device.           */
XScuGic InterruptController;  /* The instance of the Interrupt Controller. */
volatile u8 TransmitComplete; /* Flag to check completion of Transmission  */
volatile u8 ReceiveComplete;  /* Flag to check completion of Reception     */
volatile u32 TotalErrorCount;

void Handler(void *CallBackRef, u32 Event)
{
  /*
   * All of the data transfer has been finished.
   */
  if (0 != (Event & XIICPS_EVENT_COMPLETE_RECV)){
    ReceiveComplete = TRUE;
  } else if (0 != (Event & XIICPS_EVENT_COMPLETE_SEND)) {
    TransmitComplete = TRUE;
  } else if (0 == (Event & XIICPS_EVENT_SLAVE_RDY)){
    /*
     * If it is other interrupt but not slave ready interrupt, it is
     * an error.
     * Data was received with an error.
     */
	xil_printf("Slave not ready: %s\n\r", __func__);
    TotalErrorCount++;
  }
}
static int SetupInterruptSystem(XIicPs *IicPsPtr)
{
  int Status;
  XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */
  Xil_ExceptionInit();
  /*
   * Initialize the interrupt controller driver so that it is ready to
   * use.
   */
  IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
  if (NULL == IntcConfig) {
    return XST_FAILURE;
  }
  Status = XScuGic_CfgInitialize(&InterruptController, IntcConfig,
          IntcConfig->CpuBaseAddress);
  if (Status != XST_SUCCESS) {
    return XST_FAILURE;
  }
  /*
   * Connect the interrupt controller interrupt handler to the hardware
   * interrupt handling logic in the processor.
   */
  Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
        (Xil_ExceptionHandler)XScuGic_InterruptHandler,
        &InterruptController);
  /*
   * Connect the device driver handler that will be called when an
   * interrupt for the device occurs, the handler defined above performs
   * the specific interrupt processing for the device.
   */
  Status = XScuGic_Connect(&InterruptController, IIC_INTR_ID,
      (Xil_InterruptHandler)XIicPs_MasterInterruptHandler,
      (void *)IicPsPtr);
  if (Status != XST_SUCCESS) {
    return Status;
  }
  /*
   * Enable the interrupt for the Iic device.
   */
  XScuGic_Enable(&InterruptController, IIC_INTR_ID);
  /*
   * Enable interrupts in the Processor.
   */
  Xil_ExceptionEnable();
  return XST_SUCCESS;
}

void InitializeIICdriver()
{
  int Status=0;
  /*
  * Initialize the IIC driver so that it's ready to use
  * Look up the configuration in the config table, then initialize it.
  */
  Config = XIicPs_LookupConfig(XPAR_PS7_I2C_0_DEVICE_ID);
  if (NULL != Config) {
#ifdef DESER_PRINT_ON
	  printf(" PASS IIC config\n\r");
#endif
  }
  Status = XIicPs_CfgInitialize(&IicInstance, Config, Config->BaseAddress);
  if (Status == XST_SUCCESS) {
#ifdef DESER_PRINT_ON
    printf(" PASS IIC initialize\n\r");
#endif
  }

  XIicPs_Reset(&IicInstance);

  Status = SetupInterruptSystem(&IicInstance);
  if (Status == XST_SUCCESS) {
#ifdef DESER_PRINT_ON
	  printf(" PASS IIC interrupt\n\r");
#endif
  }
  /*
   * Perform a self-test.
   */
  Status = XIicPs_SelfTest(&IicInstance);
  if (Status == XST_SUCCESS) {
#ifdef DESER_PRINT_ON
	  printf(" PASS IIC self test\n\r");
#endif
  }
  /*
   * Setup the handlers for the IIC that will be called from the
   * interrupt context when data has been sent and received, specify a
   * pointer to the IIC driver instance as the callback reference so
   * the handlers are able to access the instance data.
   */
  XIicPs_SetStatusHandler(&IicInstance, (void *) &IicInstance, Handler);
  /*
   * Set the IIC serial clock rate.
   */
  XIicPs_SetSClk(&IicInstance, IIC_SCLK_RATE);
}


int xil_i2c_write(u16 DevAddress, u16 ByteCount)
{
  TransmitComplete = FALSE;
  // Send the Data
  XIicPs_MasterSend(&IicInstance, WriteBuffer,ByteCount, DevAddress); // Same address for A Ch or B ch, use different I2C bus in ZC702
  // Wait for the entire buffer to be sent, letting the interrupt
  while (TransmitComplete == FALSE) {
    if (0 != TotalErrorCount) {
    	xil_printf("file %s func %s line %d  - TotalErrorCount=%d \n\r",__FILE__, __func__, __LINE__ , TotalErrorCount);
    	return XST_FAILURE;
    }
  }
  //Wait until bus is idle to start another transfer.
  while (XIicPs_BusIsBusy(&IicInstance));
  //Wait for a bit of time to allow the programming to occur
//  usleep(200000);
  return XST_SUCCESS;
}
int xil_i2c_write_A8_D8(u16 DevAddress, u8 reg_addr, u8 wdata)
{
    WriteBuffer[0] = (reg_addr&0xFF);
    WriteBuffer[1] = (wdata&0xFF);
    TransmitComplete = FALSE;
     // Send the Data
     XIicPs_MasterSend(&IicInstance, WriteBuffer,2, DevAddress); // Same address for A Ch or B ch, use different I2C bus in ZC702
     // Wait for the entire buffer to be sent, letting the interrupt
     while (TransmitComplete == FALSE) {
       if (0 != TotalErrorCount) {
       	xil_printf("file %s func %s line %d  - TotalErrorCount=%d \n\r",__FILE__, __func__, __LINE__ , TotalErrorCount);
       	TransmitComplete = TRUE;
       	TotalErrorCount = 0;
       	return XST_FAILURE;
       }
     }
     //Wait until bus is idle to start another transfer.
     while (XIicPs_BusIsBusy(&IicInstance));
     //Wait for a bit of time to allow the programming to occur
//     usleep(200000);
     return XST_SUCCESS;
}



int xil_i2c_write_A8_D16(u16 DevAddress, u8 reg_addr, u16 wdata)
{
//  int Status;
    WriteBuffer[0] = (reg_addr&0xFF);
    WriteBuffer[1] = ((wdata >> 8)&0xFF);
    WriteBuffer[2] = (wdata&0xFF);
    TransmitComplete = FALSE;
     // Send the Data
     XIicPs_MasterSend(&IicInstance, WriteBuffer,3, DevAddress); // Same address for A Ch or B ch, use different I2C bus in ZC702
     // Wait for the entire buffer to be sent, letting the interrupt
     while (TransmitComplete == FALSE) {
       if (0 != TotalErrorCount) {
       	xil_printf("file %s func %s line %d  - TotalErrorCount=%d \n\r",__FILE__, __func__, __LINE__ , TotalErrorCount);
       	TransmitComplete = TRUE;
       	TotalErrorCount = 0;
       	return XST_FAILURE;
       }
     }
     //Wait until bus is idle to start another transfer.
     while (XIicPs_BusIsBusy(&IicInstance));
     //Wait for a bit of time to allow the programming to occur
//     usleep(200000);
     return XST_SUCCESS;
}

int xil_i2c_write_A16_D8(u16 DevAddress, u16 reg_addr, u8 wdata)
{
//  int Status;
    WriteBuffer[0] = ((reg_addr >> 8)&0xFF);
    WriteBuffer[1] = (reg_addr&0xFF);
    WriteBuffer[2] = (wdata&0xFF);
    TransmitComplete = FALSE;
     // Send the Data
     XIicPs_MasterSend(&IicInstance, WriteBuffer,3, DevAddress); // Same address for A Ch or B ch, use different I2C bus in ZC702
     // Wait for the entire buffer to be sent, letting the interrupt
     while (TransmitComplete == FALSE) {
       if (0 != TotalErrorCount) {
       	xil_printf("file %s func %s line %d  - TotalErrorCount=%d \n\r",__FILE__, __func__, __LINE__ , TotalErrorCount);
       	TransmitComplete = TRUE;
       	TotalErrorCount = 0;
       	return XST_FAILURE;
       }
     }
     //Wait until bus is idle to start another transfer.
     while (XIicPs_BusIsBusy(&IicInstance));
     //Wait for a bit of time to allow the programming to occur
//     usleep(200000);
     return XST_SUCCESS;
}

int xil_i2c_read16(u16 DevAddress, u16 RegAddress,u8 *BufferPtr, u16 ByteCount)
{
  int Status;
  // Position the Pointer in F2M DSER chip's register space.
  WriteBuffer[0] = (u8) (RegAddress >> 8); // upper byte
  WriteBuffer[1] = (u8) (RegAddress); // lower byte
  Status = xil_i2c_write(DevAddress, 2);
  if (Status != XST_SUCCESS) {
	  xil_printf("file %s func %s line %d  - xil_i2c_write failed \n\r",__FILE__, __func__, __LINE__);
	  return XST_FAILURE;
  }
  ReceiveComplete = FALSE;
  // Receive the Data.
  XIicPs_MasterRecv(&IicInstance, BufferPtr, ByteCount, DevAddress); // Same address for A Ch or B ch, use different I2C bus in ZC702
  while (ReceiveComplete == FALSE) {
	    if (0 != TotalErrorCount) {
	    	xil_printf("file %s func %s line %d  - TotalErrorCount=%d \n\r",__FILE__, __func__, __LINE__ , TotalErrorCount);
	    	return XST_FAILURE;
	    }

  }
  // Wait until bus is idle to start another transfer.
  while (XIicPs_BusIsBusy(&IicInstance));
  return XST_SUCCESS;
}





