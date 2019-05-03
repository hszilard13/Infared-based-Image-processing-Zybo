#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"		/* SD device driver */
#include "xil_printf.h"
#include "ff.h"
#include "xil_cache.h"
#include "xplatform_info.h"


/************************** Variable Definitions *****************************/
static FIL fil;		/* File object */
static FATFS fatfs;

static char *SD_File;
u32 Platform;


#define USE_PRINT


///////////////////////////////////////////////////////////////////////////////////
//read .raw file
//returns file size if file exists, else returns -1
int mount_SD()
{

	FRESULT Res;
	u32 FileSize = (64*1024*1024);

	TCHAR *Path = "0:/";

	Platform = XGetPlatform_Info();
	/*
	 * Register volume work area, initialize device
	 */
	Res = f_mount(&fatfs, Path, 0);

	if (Res != FR_OK) {
		xil_printf("mount fail\r\n");
		return XST_FAILURE;
	}

}



///////////////////////////////////////////////////////////////////////////////////
//read .raw file
//returns file size if file exists, else returns -1
int read_raw_file(const char *file_name, const void *buffer)
{

#ifdef USE_PRINT
	xil_printf("Reading file: %s\r\n", file_name);
#endif

	FRESULT Res;
	UINT NumBytesRead;

	u32 FileSize = (256*1024*1024);

	 NumBytesRead = -1;


	/*
	 * Open file with required permissions.
	 * Here - Creating new file with read/write permissions. .
	 * To open file with write permissions, file system should not
	 * be in Read Only mode.
	 */
	SD_File = (char *)file_name;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res != FR_OK) {
	#ifdef USE_PRINT
		xil_printf("\n\rERROR: Failed to open file: %s\r\n", file_name);
	#endif
		return -1;
	}

//	/*
//	 * Pointer to beginning of file .
//	 */
//	Res = f_lseek(&fil, 0);
//	if (Res) {
//		return XST_FAILURE;
//	}
//	memset( (void*)buffer,0x0,FileSize);
	/*
	 * Read data from file.
	 */
	Res = f_read(&fil, (void*)buffer, FileSize,&NumBytesRead);
	if (Res != FR_OK) {
		xil_printf("Failed to read file: %s\r\n", file_name);
		return -1;
	}

	Res = f_close(&fil);
//flush the Data read to DDR
	Xil_DCacheFlushRange((INTPTR)buffer, NumBytesRead);
	#ifdef USE_PRINT
	xil_printf("...done\r\n");
	#endif

	return NumBytesRead;
}

u32 load_file (char file_path[255], u32 dest_addr )
{
char abs_path[255];
strcat(abs_path, file_path);
return read_raw_file(abs_path,(void*) dest_addr);
}
