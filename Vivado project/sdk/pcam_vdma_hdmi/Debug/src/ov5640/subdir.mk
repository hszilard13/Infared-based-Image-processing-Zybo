################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ov5640/delay.c \
../src/ov5640/i2c.c 

CPP_SRCS += \
../src/ov5640/OV5647.cpp 

OBJS += \
./src/ov5640/OV5647.o \
./src/ov5640/delay.o \
./src/ov5640/i2c.o 

C_DEPS += \
./src/ov5640/delay.d \
./src/ov5640/i2c.d 

CPP_DEPS += \
./src/ov5640/OV5647.d 


# Each subdirectory must supply rules for building sources it contributes
src/ov5640/%.o: ../src/ov5640/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -Wall -O0 -g3 -std=c++11 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/ov5640/%.o: ../src/ov5640/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 g++ compiler'
	arm-none-eabi-g++ -Wall -O0 -g3 -std=c++11 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../standalone_bsp_0/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


