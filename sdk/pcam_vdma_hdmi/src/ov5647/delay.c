#include "xbasic_types.h"



void delay_ms(u32 ms_count) {
  u32 count;
  for (count = 0; count < ((ms_count * 10000) + 1); count++) {
    asm("nop");
  }
}
