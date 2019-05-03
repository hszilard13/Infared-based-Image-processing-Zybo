#include "xil_io.h"
#include "sleep.h"
#include "xil_cache.h"

//own headers
#include "tools.h"


#define PRINT_CFG

//////////////////////////////////////////////////////////////////////////////
void print_mem(int baddr, int size)
{
	 xil_printf("\n\r");
int i;
Xil_DCacheInvalidateRange(baddr,size);
for(i = 0; i < size; i=i+4)
{
	 xil_printf("%08x",Xil_EndianSwap32(Xil_In32(baddr + i)));

}
xil_printf("\n\r");
}

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
void clr_mem(int baddr, int size)
{
memset((u8*)baddr, 0x00, size);
Xil_DCacheFlushRange(baddr,size);
}

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
void clr_mem_no_flush(int baddr, int size)
{
memset((u8*)baddr, 0x00, size);
}

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////
void write_mem(int baddr, int size, int data)
{

int i;

for(i = 0; i < size; i=i+4)
{

	 Xil_Out32(baddr + i, data);
}

Xil_DCacheFlushRange(baddr,size);

}


void crop_img(int inaddr, int crop_w, int crop_h, int x, int y, int outaddr, int in_w)
{
#ifdef DEBUG1
	xil_printf("\n\rCrop a region from an image...");
#endif
	int i;
	int offset_addr;
	offset_addr = inaddr + x + (y*in_w);


	//invalidate the DDR range for the crop region
	Xil_DCacheInvalidateRange(offset_addr, in_w * crop_h);

	for (i = 0; i<crop_h; i++)
	{
		memcpy((void*)(outaddr + (i*crop_w)),(void*) (offset_addr + (i*in_w)), crop_w);
	}

#ifdef DEBUG1
	xil_printf("done\n\r");
#endif


}



