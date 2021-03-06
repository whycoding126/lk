LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

STM32_CHIP := stm32f407

PLATFORM := stm32f4xx

GLOBAL_DEFINES += \
	ENABLE_UART2=1 \
	ENABLE_UART3=1 \
	HSE_VALUE=8000000 \
	PLL_M_VALUE=8 \
	PLL_N_VALUE=336 \
	PLL_P_VALUE=2 \
    PKTBUF_POOL_SIZE=16

MODULE_SRCS += \
	$(LOCAL_DIR)/init.c \
	$(LOCAL_DIR)/m4display.c

MODULE_DEPS += \
    lib/gfx

include make/module.mk

