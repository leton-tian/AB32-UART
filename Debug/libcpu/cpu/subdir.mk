################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libcpu/cpu/cpuport.c \
../libcpu/cpu/interrupt.c 

S_UPPER_SRCS += \
../libcpu/cpu/context_gcc.S 

OBJS += \
./libcpu/cpu/context_gcc.o \
./libcpu/cpu/cpuport.o \
./libcpu/cpu/interrupt.o 

S_UPPER_DEPS += \
./libcpu/cpu/context_gcc.d 

C_DEPS += \
./libcpu/cpu/cpuport.d \
./libcpu/cpu/interrupt.d 


# Each subdirectory must supply rules for building sources it contributes
libcpu/cpu/%.o: ../libcpu/cpu/%.S
	riscv64-unknown-elf-gcc -x assembler-with-cpp -I"D:\RT-ThreadStudio\workspace\test-uart\libraries\hal_libraries\bmsis\include" -c -mcmodel=medany -march=rv32imc -mabi=ilp32 -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
libcpu/cpu/%.o: ../libcpu/cpu/%.c
	riscv64-unknown-elf-gcc  -DDEBUG -I"D:\RT-ThreadStudio\workspace\test-uart\rt-thread\include\libc" -I"D:\RT-ThreadStudio\workspace\test-uart" -I"D:\RT-ThreadStudio\workspace\test-uart\applications" -I"D:\RT-ThreadStudio\workspace\test-uart\board" -I"D:\RT-ThreadStudio\workspace\test-uart\libcpu\cpu" -I"D:\RT-ThreadStudio\workspace\test-uart\libraries\hal_drivers\config" -I"D:\RT-ThreadStudio\workspace\test-uart\libraries\hal_drivers" -I"D:\RT-ThreadStudio\workspace\test-uart\libraries\hal_libraries\ab32vg1_hal\include" -I"D:\RT-ThreadStudio\workspace\test-uart\libraries\hal_libraries\ab32vg1_hal" -I"D:\RT-ThreadStudio\workspace\test-uart\libraries\hal_libraries\bmsis\include" -I"D:\RT-ThreadStudio\workspace\test-uart\libraries\hal_libraries\bmsis" -I"D:\RT-ThreadStudio\workspace\test-uart\rt-thread\components\drivers\include" -I"D:\RT-ThreadStudio\workspace\test-uart\rt-thread\components\finsh" -I"D:\RT-ThreadStudio\workspace\test-uart\rt-thread\components\libc\compilers\common" -I"D:\RT-ThreadStudio\workspace\test-uart\rt-thread\components\libc\compilers\newlib" -I"D:\RT-ThreadStudio\workspace\test-uart\rt-thread\include" -isystem"D:\RT-ThreadStudio\workspace\test-uart" -include"D:\RT-ThreadStudio\workspace\test-uart\rtconfig_preinc.h" -std=gnu11 -c -mcmodel=medany -march=rv32imc -mabi=ilp32 -Os -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

